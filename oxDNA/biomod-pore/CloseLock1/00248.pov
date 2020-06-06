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
	<24.531256, 35.133083, 34.759426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247986, 34.886482, 34.897072>,  <24.078024, 34.738522, 34.979660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247986, 34.886482, 34.897072>,  <24.531256, 35.133083, 34.759426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247986, 34.886482, 34.897072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018411, -0.503343, -0.863891,
		0.705797, -0.605450, 0.367805,
		-0.708175, -0.616503, 0.344111,
		24.035534, 34.701530, 35.000305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082460, 35.259033, 34.363544>,  <24.531256, 35.133083, 34.759426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082460, 35.259033, 34.363544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284363, 35.163097, 34.695255>,  <25.405504, 35.105534, 34.894279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284363, 35.163097, 34.695255>,  <25.082460, 35.259033, 34.363544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284363, 35.163097, 34.695255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652397, -0.523111, -0.548391,
		0.565331, 0.817820, -0.107570,
		0.504757, -0.239844, 0.829274,
		25.435789, 35.091145, 34.944038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802628, 35.131741, 34.140953>,  <25.082460, 35.259033, 34.363544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802628, 35.131741, 34.140953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777689, 34.929138, 34.484943>,  <25.762726, 34.807575, 34.691338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777689, 34.929138, 34.484943>,  <25.802628, 35.131741, 34.140953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777689, 34.929138, 34.484943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542239, -0.740586, -0.396875,
		0.837908, 0.441570, 0.320821,
		-0.062348, -0.506506, 0.859979,
		25.758986, 34.777187, 34.742939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278364, 34.536655, 33.731411>,  <25.802628, 35.131741, 34.140953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278364, 34.536655, 33.731411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231623, 34.206699, 33.510178>,  <26.203577, 34.008728, 33.377438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231623, 34.206699, 33.510178>,  <26.278364, 34.536655, 33.731411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231623, 34.206699, 33.510178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451512, 0.451898, -0.769366,
		0.884580, -0.339629, 0.319641,
		-0.116855, -0.824888, -0.553087,
		26.196566, 33.959232, 33.344250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934946, 34.189583, 33.503117>,  <26.278364, 34.536655, 33.731411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934946, 34.189583, 33.503117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652002, 34.089012, 33.238865>,  <26.482237, 34.028671, 33.080315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652002, 34.089012, 33.238865>,  <26.934946, 34.189583, 33.503117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652002, 34.089012, 33.238865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428524, 0.590741, -0.683661,
		0.562150, -0.766688, -0.310122,
		-0.707357, -0.251425, -0.660630,
		26.439795, 34.013584, 33.040676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650808, 34.442753, 33.747166>,  <26.934946, 34.189583, 33.503117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650808, 34.442753, 33.747166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032372, 34.542839, 33.813438>,  <28.261311, 34.602890, 33.853203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032372, 34.542839, 33.813438>,  <27.650808, 34.442753, 33.747166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032372, 34.542839, 33.813438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213523, 0.953847, -0.211151,
		-0.210869, 0.166042, 0.963309,
		0.953909, 0.250214, 0.165683,
		28.318544, 34.617905, 33.863144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723492, 35.132164, 34.120010>,  <27.650808, 34.442753, 33.747166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723492, 35.132164, 34.120010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086054, 35.083874, 33.958092>,  <28.303591, 35.054901, 33.860939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086054, 35.083874, 33.958092>,  <27.723492, 35.132164, 34.120010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086054, 35.083874, 33.958092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012546, 0.965563, -0.259866,
		0.422227, 0.230465, 0.876705,
		0.906404, -0.120722, -0.404795,
		28.357975, 35.047657, 33.836655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085335, 35.737091, 34.375038>,  <27.723492, 35.132164, 34.120010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085335, 35.737091, 34.375038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290106, 35.589245, 34.064861>,  <28.412968, 35.500538, 33.878754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290106, 35.589245, 34.064861>,  <28.085335, 35.737091, 34.375038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290106, 35.589245, 34.064861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283207, 0.924848, -0.253869,
		0.811003, -0.089648, 0.578133,
		0.511926, -0.369620, -0.775444,
		28.443684, 35.478359, 33.832230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835648, 36.038601, 34.313641>,  <28.085335, 35.737091, 34.375038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835648, 36.038601, 34.313641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704834, 35.933819, 33.950447>,  <28.626347, 35.870949, 33.732533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704834, 35.933819, 33.950447>,  <28.835648, 36.038601, 34.313641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704834, 35.933819, 33.950447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318331, 0.874125, -0.366839,
		0.889785, -0.409006, -0.202477,
		-0.327030, -0.261953, -0.907982,
		28.606724, 35.855232, 33.678051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259481, 36.353504, 33.858459>,  <28.835648, 36.038601, 34.313641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259481, 36.353504, 33.858459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979458, 36.257805, 33.589333>,  <28.811443, 36.200386, 33.427856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979458, 36.257805, 33.589333>,  <29.259481, 36.353504, 33.858459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979458, 36.257805, 33.589333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198843, 0.839624, -0.505464,
		0.685843, -0.487638, -0.540211,
		-0.700058, -0.239252, -0.672814,
		28.769442, 36.186028, 33.387489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606588, 36.456627, 33.134716>,  <29.259481, 36.353504, 33.858459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606588, 36.456627, 33.134716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207169, 36.475365, 33.145321>,  <28.967516, 36.486607, 33.151684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207169, 36.475365, 33.145321>,  <29.606588, 36.456627, 33.134716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207169, 36.475365, 33.145321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030464, 0.897892, -0.439161,
		-0.044382, -0.437716, -0.898017,
		-0.998550, 0.046848, 0.026516,
		28.907604, 36.489418, 33.153275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472250, 36.813171, 32.434177>,  <29.606588, 36.456627, 33.134716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472250, 36.813171, 32.434177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139194, 36.865196, 32.649506>,  <28.939362, 36.896412, 32.778702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139194, 36.865196, 32.649506>,  <29.472250, 36.813171, 32.434177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139194, 36.865196, 32.649506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118765, 0.907481, -0.402956,
		-0.540929, -0.399452, -0.740158,
		-0.832640, 0.130066, 0.538324,
		28.889402, 36.904217, 32.811001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110916, 37.243931, 32.000366>,  <29.472250, 36.813171, 32.434177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110916, 37.243931, 32.000366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903116, 37.269958, 32.341160>,  <28.778437, 37.285576, 32.545639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903116, 37.269958, 32.341160>,  <29.110916, 37.243931, 32.000366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903116, 37.269958, 32.341160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262383, 0.936775, -0.231532,
		-0.813187, -0.343829, -0.469583,
		-0.519501, 0.065068, 0.851989,
		28.747267, 37.289478, 32.596756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516287, 37.552837, 31.807819>,  <29.110916, 37.243931, 32.000366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516287, 37.552837, 31.807819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539881, 37.623249, 32.200867>,  <28.554037, 37.665497, 32.436695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539881, 37.623249, 32.200867>,  <28.516287, 37.552837, 31.807819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539881, 37.623249, 32.200867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336330, 0.930285, -0.146467,
		-0.939895, -0.321844, 0.114076,
		0.058983, 0.176031, 0.982616,
		28.557575, 37.676060, 32.495651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864126, 37.898476, 32.022537>,  <28.516287, 37.552837, 31.807819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864126, 37.898476, 32.022537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140848, 37.980774, 32.299397>,  <28.306881, 38.030155, 32.465511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140848, 37.980774, 32.299397>,  <27.864126, 37.898476, 32.022537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140848, 37.980774, 32.299397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293862, 0.955800, 0.009595,
		-0.659583, -0.210034, 0.721690,
		0.691806, 0.205749, 0.692150,
		28.348391, 38.042500, 32.507042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576553, 38.356133, 32.539650>,  <27.864126, 37.898476, 32.022537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576553, 38.356133, 32.539650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960741, 38.419807, 32.631001>,  <28.191254, 38.458012, 32.685810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960741, 38.419807, 32.631001>,  <27.576553, 38.356133, 32.539650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960741, 38.419807, 32.631001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185685, 0.977555, 0.099538,
		-0.207404, -0.138009, 0.968471,
		0.960471, 0.159186, 0.228375,
		28.248882, 38.467564, 32.699512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529388, 38.726269, 33.111397>,  <27.576553, 38.356133, 32.539650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529388, 38.726269, 33.111397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903452, 38.774220, 32.978062>,  <28.127890, 38.802990, 32.898060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903452, 38.774220, 32.978062>,  <27.529388, 38.726269, 33.111397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903452, 38.774220, 32.978062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108965, 0.992720, 0.051316,
		0.337059, -0.011666, 0.941411,
		0.935156, 0.119878, -0.333334,
		28.183998, 38.810184, 32.878059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729851, 39.340343, 33.549732>,  <27.529388, 38.726269, 33.111397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729851, 39.340343, 33.549732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001064, 39.294750, 33.259277>,  <28.163794, 39.267395, 33.085003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001064, 39.294750, 33.259277>,  <27.729851, 39.340343, 33.549732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001064, 39.294750, 33.259277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090508, 0.993332, -0.071409,
		0.729436, -0.017304, 0.683830,
		0.678035, -0.113980, -0.726139,
		28.204475, 39.260555, 33.041435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269119, 39.796448, 33.745186>,  <27.729851, 39.340343, 33.549732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269119, 39.796448, 33.745186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302410, 39.743553, 33.350098>,  <28.322386, 39.711815, 33.113045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302410, 39.743553, 33.350098>,  <28.269119, 39.796448, 33.745186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302410, 39.743553, 33.350098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307541, 0.946184, -0.100766,
		0.947888, -0.295377, 0.119419,
		0.083228, -0.132241, -0.987717,
		28.327379, 39.703880, 33.053783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838530, 40.022301, 33.665401>,  <28.269119, 39.796448, 33.745186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838530, 40.022301, 33.665401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720390, 40.028500, 33.283295>,  <28.649506, 40.032219, 33.054031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720390, 40.028500, 33.283295>,  <28.838530, 40.022301, 33.665401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720390, 40.028500, 33.283295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204026, 0.977826, -0.047219,
		0.933350, -0.208845, -0.291962,
		-0.295350, 0.015496, -0.955264,
		28.631786, 40.033150, 32.996716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365292, 40.399956, 33.228462>,  <28.838530, 40.022301, 33.665401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365292, 40.399956, 33.228462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020830, 40.433414, 33.027897>,  <28.814154, 40.453491, 32.907558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020830, 40.433414, 33.027897>,  <29.365292, 40.399956, 33.228462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020830, 40.433414, 33.027897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233489, 0.941252, -0.243985,
		0.451550, -0.327184, -0.830092,
		-0.861154, 0.083646, -0.501416,
		28.762484, 40.458508, 32.877472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531845, 40.782944, 32.612789>,  <29.365292, 40.399956, 33.228462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531845, 40.782944, 32.612789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135813, 40.831409, 32.641235>,  <28.898193, 40.860489, 32.658302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135813, 40.831409, 32.641235>,  <29.531845, 40.782944, 32.612789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135813, 40.831409, 32.641235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106130, 0.976709, -0.186485,
		-0.092054, -0.177088, -0.979881,
		-0.990082, 0.121161, 0.071115,
		28.838789, 40.867756, 32.662571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227114, 41.222618, 31.972265>,  <29.531845, 40.782944, 32.612789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227114, 41.222618, 31.972265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949961, 41.264931, 32.257565>,  <28.783669, 41.290318, 32.428745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949961, 41.264931, 32.257565>,  <29.227114, 41.222618, 31.972265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949961, 41.264931, 32.257565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001256, 0.989002, -0.147899,
		-0.721049, -0.103373, -0.685130,
		-0.692883, 0.105782, 0.713248,
		28.742096, 41.296665, 32.471539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648205, 41.744431, 31.786852>,  <29.227114, 41.222618, 31.972265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648205, 41.744431, 31.786852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565771, 41.745213, 32.178265>,  <28.516310, 41.745682, 32.413113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565771, 41.745213, 32.178265>,  <28.648205, 41.744431, 31.786852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565771, 41.745213, 32.178265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171377, 0.984470, -0.038064,
		-0.963410, -0.175542, -0.202549,
		-0.206085, 0.001959, 0.978532,
		28.503946, 41.745800, 32.471825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983143, 42.183189, 31.966633>,  <28.648205, 41.744431, 31.786852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983143, 42.183189, 31.966633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274698, 42.158016, 32.239326>,  <28.449631, 42.142910, 32.402943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274698, 42.158016, 32.239326>,  <27.983143, 42.183189, 31.966633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274698, 42.158016, 32.239326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092349, 0.995703, -0.006818,
		-0.678375, 0.067927, 0.731569,
		0.728889, -0.062935, 0.681733,
		28.493364, 42.139137, 32.443848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916674, 42.557304, 32.633659>,  <27.983143, 42.183189, 31.966633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916674, 42.557304, 32.633659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292322, 42.542339, 32.497040>,  <28.517712, 42.533360, 32.415070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292322, 42.542339, 32.497040>,  <27.916674, 42.557304, 32.633659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292322, 42.542339, 32.497040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025336, 0.998888, -0.039753,
		0.342653, 0.028679, 0.939024,
		0.939120, -0.037412, -0.341546,
		28.574059, 42.531116, 32.394577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301540, 43.048351, 33.011173>,  <27.916674, 42.557304, 32.633659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301540, 43.048351, 33.011173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426308, 42.967381, 32.639854>,  <28.501169, 42.918797, 32.417065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426308, 42.967381, 32.639854>,  <28.301540, 43.048351, 33.011173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426308, 42.967381, 32.639854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015365, 0.975837, -0.217956,
		0.949984, 0.082248, 0.301274,
		0.311921, -0.202426, -0.928294,
		28.519884, 42.906654, 32.361366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955355, 43.268852, 32.825710>,  <28.301540, 43.048351, 33.011173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955355, 43.268852, 32.825710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680075, 43.273701, 32.535542>,  <28.514906, 43.276611, 32.361443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680075, 43.273701, 32.535542>,  <28.955355, 43.268852, 32.825710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680075, 43.273701, 32.535542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053273, 0.996317, 0.067193,
		0.723563, 0.084888, -0.685019,
		-0.688199, 0.012125, -0.725420,
		28.473616, 43.277340, 32.317917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252312, 43.417992, 32.300129>,  <28.955355, 43.268852, 32.825710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252312, 43.417992, 32.300129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877512, 43.557587, 32.306248>,  <28.652632, 43.641346, 32.309917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877512, 43.557587, 32.306248>,  <29.252312, 43.417992, 32.300129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877512, 43.557587, 32.306248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347039, 0.924967, 0.154917,
		0.039918, 0.150466, -0.987809,
		-0.937001, 0.348992, 0.015295,
		28.596413, 43.662285, 32.310837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158367, 43.859425, 31.781687>,  <29.252312, 43.417992, 32.300129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158367, 43.859425, 31.781687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921026, 43.988159, 32.076809>,  <28.778622, 44.065399, 32.253883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921026, 43.988159, 32.076809>,  <29.158367, 43.859425, 31.781687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921026, 43.988159, 32.076809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362193, 0.925308, -0.112341,
		-0.718854, 0.200571, -0.665598,
		-0.593351, 0.321832, 0.737807,
		28.743021, 44.084709, 32.298149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252768, 43.278275, 31.353191>,  <29.158367, 43.859425, 31.781687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252768, 43.278275, 31.353191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365845, 43.271439, 30.969568>,  <29.433691, 43.267338, 30.739395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365845, 43.271439, 30.969568>,  <29.252768, 43.278275, 31.353191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365845, 43.271439, 30.969568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959081, 0.021447, 0.282319,
		0.015743, -0.999624, 0.022458,
		0.282695, -0.017095, -0.959058,
		29.450653, 43.266312, 30.681850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717695, 42.787365, 31.095703>,  <29.252768, 43.278275, 31.353191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717695, 42.787365, 31.095703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788748, 43.126461, 30.895790>,  <29.831379, 43.329918, 30.775843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788748, 43.126461, 30.895790>,  <29.717695, 42.787365, 31.095703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788748, 43.126461, 30.895790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813638, 0.159165, 0.559159,
		0.553571, -0.505964, -0.661483,
		0.177630, 0.847742, -0.499781,
		29.842037, 43.380783, 30.745855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496973, 42.958004, 31.033745>,  <29.717695, 42.787365, 31.095703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496973, 42.958004, 31.033745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326077, 43.315819, 30.981171>,  <30.223539, 43.530506, 30.949627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326077, 43.315819, 30.981171>,  <30.496973, 42.958004, 31.033745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326077, 43.315819, 30.981171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682420, 0.414405, 0.602139,
		0.593101, 0.167563, -0.787498,
		-0.427239, 0.894534, -0.131436,
		30.197905, 43.584179, 30.941740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476690, 43.038624, 31.737932>,  <30.496973, 42.958004, 31.033745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476690, 43.038624, 31.737932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447998, 43.041142, 32.136894>,  <30.430782, 43.042652, 32.376270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447998, 43.041142, 32.136894>,  <30.476690, 43.038624, 31.737932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447998, 43.041142, 32.136894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441893, -0.896286, 0.037432,
		0.894195, 0.443431, 0.061510,
		-0.071729, 0.006291, 0.997404,
		30.426479, 43.043030, 32.436115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280296, 42.971668, 32.066231>,  <30.476690, 43.038624, 31.737932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280296, 42.971668, 32.066231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942661, 42.824955, 32.222687>,  <30.740080, 42.736927, 32.316559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942661, 42.824955, 32.222687>,  <31.280296, 42.971668, 32.066231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942661, 42.824955, 32.222687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448359, -0.882874, 0.139671,
		0.294094, 0.293264, 0.909673,
		-0.844087, -0.366783, 0.391136,
		30.689436, 42.714920, 32.340027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461843, 42.672714, 32.600235>,  <31.280296, 42.971668, 32.066231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461843, 42.672714, 32.600235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112150, 42.498627, 32.514164>,  <30.902334, 42.394176, 32.462521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112150, 42.498627, 32.514164>,  <31.461843, 42.672714, 32.600235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112150, 42.498627, 32.514164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434024, -0.899200, 0.055339,
		-0.217571, -0.045013, 0.975006,
		-0.874234, -0.435216, -0.215177,
		30.849880, 42.368061, 32.449612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308594, 42.371769, 33.216667>,  <31.461843, 42.672714, 32.600235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308594, 42.371769, 33.216667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149763, 42.174866, 32.906826>,  <31.054464, 42.056725, 32.720921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149763, 42.174866, 32.906826>,  <31.308594, 42.371769, 33.216667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149763, 42.174866, 32.906826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311274, -0.866199, 0.390905,
		-0.863388, -0.085895, 0.497175,
		-0.397076, -0.492260, -0.774604,
		31.030640, 42.027187, 32.674446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960049, 41.750923, 33.487522>,  <31.308594, 42.371769, 33.216667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960049, 41.750923, 33.487522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032408, 41.660660, 33.104618>,  <31.075823, 41.606503, 32.874874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032408, 41.660660, 33.104618>,  <30.960049, 41.750923, 33.487522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032408, 41.660660, 33.104618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226405, -0.937626, 0.263816,
		-0.957088, -0.264452, -0.118521,
		0.180895, -0.225661, -0.957264,
		31.086678, 41.592960, 32.817440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673553, 40.996731, 33.369324>,  <30.960049, 41.750923, 33.487522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673553, 40.996731, 33.369324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902927, 41.044525, 33.045128>,  <31.040552, 41.073200, 32.850609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902927, 41.044525, 33.045128>,  <30.673553, 40.996731, 33.369324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902927, 41.044525, 33.045128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226782, -0.973799, 0.016895,
		-0.787236, -0.193492, -0.585508,
		0.573436, 0.119483, -0.810490,
		31.074959, 41.080368, 32.801979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441017, 40.521255, 33.005646>,  <30.673553, 40.996731, 33.369324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441017, 40.521255, 33.005646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804745, 40.615292, 32.868317>,  <31.022982, 40.671715, 32.785919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804745, 40.615292, 32.868317>,  <30.441017, 40.521255, 33.005646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804745, 40.615292, 32.868317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190238, -0.968700, -0.159466,
		-0.370067, 0.079692, -0.925581,
		0.909318, 0.235094, -0.343324,
		31.077539, 40.685822, 32.765320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446634, 40.135250, 32.418125>,  <30.441017, 40.521255, 33.005646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446634, 40.135250, 32.418125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823627, 40.214737, 32.525635>,  <31.049824, 40.262428, 32.590141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823627, 40.214737, 32.525635>,  <30.446634, 40.135250, 32.418125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823627, 40.214737, 32.525635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195049, -0.979954, 0.040577,
		0.271445, 0.014180, -0.962349,
		0.942483, 0.198719, 0.268769,
		31.106373, 40.274353, 32.606266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803122, 39.611057, 32.178719>,  <30.446634, 40.135250, 32.418125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803122, 39.611057, 32.178719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061617, 39.746449, 32.452305>,  <31.216715, 39.827682, 32.616455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061617, 39.746449, 32.452305>,  <30.803122, 39.611057, 32.178719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061617, 39.746449, 32.452305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166944, -0.937252, 0.306085,
		0.744650, -0.083621, -0.662196,
		0.646240, 0.338476, 0.683965,
		31.255489, 39.847992, 32.657494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431450, 39.237030, 32.143761>,  <30.803122, 39.611057, 32.178719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431450, 39.237030, 32.143761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457155, 39.385269, 32.514389>,  <31.472578, 39.474213, 32.736767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457155, 39.385269, 32.514389>,  <31.431450, 39.237030, 32.143761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457155, 39.385269, 32.514389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309698, -0.890049, 0.334515,
		0.948661, 0.265458, -0.171974,
		0.064266, 0.370601, 0.926566,
		31.476435, 39.496449, 32.792358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133118, 39.172161, 32.357132>,  <31.431450, 39.237030, 32.143761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133118, 39.172161, 32.357132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915192, 39.199341, 32.691452>,  <31.784437, 39.215649, 32.892044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915192, 39.199341, 32.691452>,  <32.133118, 39.172161, 32.357132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915192, 39.199341, 32.691452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252788, -0.937037, 0.240956,
		0.799548, 0.342556, 0.493334,
		-0.544813, 0.067946, 0.835800,
		31.751747, 39.219727, 32.942192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567364, 38.914062, 32.832623>,  <32.133118, 39.172161, 32.357132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567364, 38.914062, 32.832623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199341, 38.881470, 32.985909>,  <31.978527, 38.861916, 33.077881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199341, 38.881470, 32.985909>,  <32.567364, 38.914062, 32.832623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199341, 38.881470, 32.985909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148836, -0.977494, 0.149509,
		0.362406, 0.194593, 0.911480,
		-0.920059, -0.081478, 0.383213,
		31.923323, 38.857025, 33.100872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611095, 38.558262, 33.428566>,  <32.567364, 38.914062, 32.832623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611095, 38.558262, 33.428566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235184, 38.494797, 33.307480>,  <32.009636, 38.456718, 33.234829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235184, 38.494797, 33.307480>,  <32.611095, 38.558262, 33.428566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235184, 38.494797, 33.307480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128253, -0.984703, 0.117943,
		-0.316796, 0.072016, 0.945756,
		-0.939783, -0.158660, -0.302714,
		31.953249, 38.447197, 33.216667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500484, 38.061604, 33.816566>,  <32.611095, 38.558262, 33.428566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500484, 38.061604, 33.816566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178524, 38.034145, 33.580799>,  <31.985346, 38.017670, 33.439339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178524, 38.034145, 33.580799>,  <32.500484, 38.061604, 33.816566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178524, 38.034145, 33.580799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048393, -0.982384, 0.180501,
		-0.591427, 0.173810, 0.787404,
		-0.804905, -0.068649, -0.589419,
		31.937052, 38.013550, 33.403973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206169, 37.658699, 34.234245>,  <32.500484, 38.061604, 33.816566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206169, 37.658699, 34.234245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989494, 37.630512, 33.899197>,  <31.859488, 37.613602, 33.698170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989494, 37.630512, 33.899197>,  <32.206169, 37.658699, 34.234245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989494, 37.630512, 33.899197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152963, -0.971579, 0.180657,
		-0.826543, 0.225985, 0.515517,
		-0.541692, -0.070466, -0.837619,
		31.826986, 37.609371, 33.647911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623293, 37.275673, 34.391335>,  <32.206169, 37.658699, 34.234245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623293, 37.275673, 34.391335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608988, 37.243164, 33.992916>,  <31.600405, 37.223660, 33.753864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608988, 37.243164, 33.992916>,  <31.623293, 37.275673, 34.391335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608988, 37.243164, 33.992916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341866, -0.935562, 0.088608,
		-0.939068, 0.343685, 0.005675,
		-0.035762, -0.081269, -0.996050,
		31.598259, 37.218784, 33.694099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028772, 36.839127, 34.253334>,  <31.623293, 37.275673, 34.391335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028772, 36.839127, 34.253334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252079, 36.815876, 33.922283>,  <31.386063, 36.801926, 33.723652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252079, 36.815876, 33.922283>,  <31.028772, 36.839127, 34.253334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252079, 36.815876, 33.922283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128886, -0.991508, -0.017303,
		-0.819590, 0.116329, -0.561017,
		0.558266, -0.058126, -0.827624,
		31.419559, 36.798439, 33.673996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726631, 36.453068, 33.693035>,  <31.028772, 36.839127, 34.253334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726631, 36.453068, 33.693035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119703, 36.434147, 33.621368>,  <31.355547, 36.422794, 33.578369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119703, 36.434147, 33.621368>,  <30.726631, 36.453068, 33.693035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119703, 36.434147, 33.621368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012226, -0.981315, 0.192018,
		-0.184898, -0.186502, -0.964899,
		0.982681, -0.047300, -0.179164,
		31.414507, 36.419956, 33.567619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785261, 35.901783, 33.235882>,  <30.726631, 36.453068, 33.693035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785261, 35.901783, 33.235882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145203, 35.960365, 33.400230>,  <31.361168, 35.995514, 33.498840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145203, 35.960365, 33.400230>,  <30.785261, 35.901783, 33.235882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145203, 35.960365, 33.400230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068897, -0.977848, 0.197654,
		0.430720, -0.149552, -0.890008,
		0.899852, 0.146452, 0.410875,
		31.415157, 36.004299, 33.523495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147543, 35.370224, 33.029732>,  <30.785261, 35.901783, 33.235882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147543, 35.370224, 33.029732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355928, 35.479908, 33.353065>,  <31.480959, 35.545719, 33.547066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355928, 35.479908, 33.353065>,  <31.147543, 35.370224, 33.029732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355928, 35.479908, 33.353065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137345, -0.907730, 0.396439,
		0.842458, -0.317550, -0.435232,
		0.520962, 0.274206, 0.808338,
		31.512217, 35.562168, 33.595566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604445, 34.817478, 33.161808>,  <31.147543, 35.370224, 33.029732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604445, 34.817478, 33.161808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576563, 35.004570, 33.514256>,  <31.559834, 35.116825, 33.725723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576563, 35.004570, 33.514256>,  <31.604445, 34.817478, 33.161808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576563, 35.004570, 33.514256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066933, -0.883468, 0.463685,
		0.995320, -0.026656, 0.092887,
		-0.069702, 0.467732, 0.881117,
		31.555653, 35.144890, 33.778591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068035, 34.494480, 33.592564>,  <31.604445, 34.817478, 33.161808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068035, 34.494480, 33.592564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810291, 34.682167, 33.834103>,  <31.655643, 34.794777, 33.979027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810291, 34.682167, 33.834103>,  <32.068035, 34.494480, 33.592564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810291, 34.682167, 33.834103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100761, -0.834845, 0.541186,
		0.758052, 0.287876, 0.585221,
		-0.644363, 0.469214, 0.603849,
		31.616982, 34.822933, 34.015259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259499, 34.339478, 34.230263>,  <32.068035, 34.494480, 33.592564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259499, 34.339478, 34.230263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877392, 34.449726, 34.273151>,  <31.648127, 34.515873, 34.298885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877392, 34.449726, 34.273151>,  <32.259499, 34.339478, 34.230263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877392, 34.449726, 34.273151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213054, -0.892810, 0.396860,
		0.205107, 0.356265, 0.911596,
		-0.955269, 0.275617, 0.107218,
		31.590811, 34.532410, 34.305317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133282, 34.184479, 34.898876>,  <32.259499, 34.339478, 34.230263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133282, 34.184479, 34.898876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771940, 34.220764, 34.731201>,  <31.555136, 34.242535, 34.630596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771940, 34.220764, 34.731201>,  <32.133282, 34.184479, 34.898876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771940, 34.220764, 34.731201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308427, -0.816561, 0.487956,
		-0.298032, 0.570087, 0.765622,
		-0.903355, 0.090712, -0.419191,
		31.500935, 34.247978, 34.605442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845913, 34.286186, 35.003658>,  <32.133282, 34.184479, 34.898876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845913, 34.286186, 35.003658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889332, 34.190540, 35.389622>,  <32.915382, 34.133152, 35.621201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889332, 34.190540, 35.389622>,  <32.845913, 34.286186, 35.003658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889332, 34.190540, 35.389622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966557, 0.252252, -0.046220,
		-0.232348, 0.937653, 0.258500,
		0.108546, -0.239116, 0.964905,
		32.921894, 34.118805, 35.679092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072151, 34.794617, 35.529713>,  <32.845913, 34.286186, 35.003658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072151, 34.794617, 35.529713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205978, 34.418217, 35.550018>,  <33.286274, 34.192375, 35.562202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205978, 34.418217, 35.550018>,  <33.072151, 34.794617, 35.529713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205978, 34.418217, 35.550018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884610, 0.295034, -0.361137,
		0.324855, 0.165729, 0.931130,
		0.334566, -0.941004, 0.050762,
		33.306347, 34.135914, 35.565247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738438, 34.542000, 35.290192>,  <33.072151, 34.794617, 35.529713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738438, 34.542000, 35.290192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045094, 34.710667, 35.096508>,  <34.229088, 34.811867, 34.980297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045094, 34.710667, 35.096508>,  <33.738438, 34.542000, 35.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045094, 34.710667, 35.096508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162857, 0.601764, 0.781894,
		0.621080, -0.678288, 0.392664,
		0.766640, 0.421670, -0.484208,
		34.275085, 34.837170, 34.951244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278152, 34.706215, 35.668575>,  <33.738438, 34.542000, 35.290192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278152, 34.706215, 35.668575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233349, 34.965042, 35.366909>,  <34.206467, 35.120338, 35.185909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233349, 34.965042, 35.366909>,  <34.278152, 34.706215, 35.668575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233349, 34.965042, 35.366909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057768, 0.753414, 0.655004,
		0.992027, 0.116931, -0.047007,
		-0.112006, 0.647066, -0.754162,
		34.199745, 35.159161, 35.140659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816925, 35.272812, 35.574368>,  <34.278152, 34.706215, 35.668575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816925, 35.272812, 35.574368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450001, 35.394459, 35.471558>,  <34.229847, 35.467445, 35.409874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450001, 35.394459, 35.471558>,  <34.816925, 35.272812, 35.574368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450001, 35.394459, 35.471558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007950, 0.659355, 0.751790,
		0.398098, 0.687580, -0.607249,
		-0.917308, 0.304114, -0.257022,
		34.174809, 35.485691, 35.394451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709358, 36.014656, 35.504929>,  <34.816925, 35.272812, 35.574368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709358, 36.014656, 35.504929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370384, 35.848793, 35.637543>,  <34.167000, 35.749275, 35.717113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370384, 35.848793, 35.637543>,  <34.709358, 36.014656, 35.504929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370384, 35.848793, 35.637543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000930, 0.623313, 0.781972,
		-0.530906, 0.662975, -0.527829,
		-0.847430, -0.414662, 0.331537,
		34.116154, 35.724396, 35.737003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168701, 36.486553, 35.425137>,  <34.709358, 36.014656, 35.504929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168701, 36.486553, 35.425137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102837, 36.236343, 35.730190>,  <34.063316, 36.086216, 35.913223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102837, 36.236343, 35.730190>,  <34.168701, 36.486553, 35.425137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102837, 36.236343, 35.730190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028149, 0.769889, 0.637556,
		-0.985949, 0.126448, -0.109163,
		-0.164661, -0.625525, 0.762631,
		34.053440, 36.048687, 35.958981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526649, 36.623207, 35.720600>,  <34.168701, 36.486553, 35.425137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526649, 36.623207, 35.720600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757126, 36.461170, 36.004543>,  <33.895412, 36.363949, 36.174911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757126, 36.461170, 36.004543>,  <33.526649, 36.623207, 35.720600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757126, 36.461170, 36.004543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153930, 0.799200, 0.581020,
		-0.802688, -0.444048, 0.398137,
		0.576192, -0.405092, 0.709861,
		33.929985, 36.339642, 36.217503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155277, 36.827820, 36.308781>,  <33.526649, 36.623207, 35.720600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155277, 36.827820, 36.308781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526062, 36.740494, 36.430813>,  <33.748535, 36.688099, 36.504032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526062, 36.740494, 36.430813>,  <33.155277, 36.827820, 36.308781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526062, 36.740494, 36.430813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078801, 0.681763, 0.727317,
		-0.366778, -0.698238, 0.614766,
		0.926965, -0.218320, 0.305078,
		33.804150, 36.674999, 36.522335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121967, 36.498791, 37.063370>,  <33.155277, 36.827820, 36.308781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121967, 36.498791, 37.063370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482307, 36.661678, 37.003178>,  <33.698509, 36.759411, 36.967064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482307, 36.661678, 37.003178>,  <33.121967, 36.498791, 37.063370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482307, 36.661678, 37.003178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135709, 0.593391, 0.793392,
		0.412377, -0.694304, 0.589819,
		0.900848, 0.407220, -0.150478,
		33.752563, 36.783844, 36.958035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381836, 36.672520, 37.808407>,  <33.121967, 36.498791, 37.063370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381836, 36.672520, 37.808407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625961, 36.848709, 37.545044>,  <33.772438, 36.954422, 37.387028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625961, 36.848709, 37.545044>,  <33.381836, 36.672520, 37.808407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625961, 36.848709, 37.545044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002315, 0.832143, 0.554556,
		0.792154, -0.336930, 0.508891,
		0.610317, 0.440472, -0.658406,
		33.809055, 36.980850, 37.347523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973484, 36.890816, 38.213543>,  <33.381836, 36.672520, 37.808407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973484, 36.890816, 38.213543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962341, 37.117245, 37.883987>,  <33.955654, 37.253101, 37.686256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962341, 37.117245, 37.883987>,  <33.973484, 36.890816, 38.213543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962341, 37.117245, 37.883987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264584, 0.798986, 0.540015,
		0.963960, -0.202944, -0.172029,
		-0.027856, 0.566069, -0.823887,
		33.953983, 37.287067, 37.636822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556362, 37.304634, 38.248466>,  <33.973484, 36.890816, 38.213543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556362, 37.304634, 38.248466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323566, 37.506783, 37.993629>,  <34.183887, 37.628071, 37.840729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323566, 37.506783, 37.993629>,  <34.556362, 37.304634, 38.248466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323566, 37.506783, 37.993629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230275, 0.853793, 0.466916,
		0.779910, 0.125035, -0.613275,
		-0.581991, 0.505374, -0.637090,
		34.148968, 37.658394, 37.802502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943645, 37.859360, 37.982342>,  <34.556362, 37.304634, 38.248466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943645, 37.859360, 37.982342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555824, 37.944618, 37.934120>,  <34.323132, 37.995773, 37.905186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555824, 37.944618, 37.934120>,  <34.943645, 37.859360, 37.982342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555824, 37.944618, 37.934120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147524, 0.901357, 0.407175,
		0.195450, 0.376993, -0.905359,
		-0.969554, 0.213145, -0.120555,
		34.264957, 38.008560, 37.897953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910000, 38.484150, 37.728809>,  <34.943645, 37.859360, 37.982342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910000, 38.484150, 37.728809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536106, 38.435112, 37.862225>,  <34.311771, 38.405689, 37.942272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536106, 38.435112, 37.862225>,  <34.910000, 38.484150, 37.728809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536106, 38.435112, 37.862225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041693, 0.894282, 0.445557,
		-0.352901, 0.430382, -0.830802,
		-0.934731, -0.122599, 0.333537,
		34.255688, 38.398331, 37.962284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786598, 39.143017, 37.858276>,  <34.910000, 38.484150, 37.728809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786598, 39.143017, 37.858276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506424, 38.934853, 38.053650>,  <34.338322, 38.809952, 38.170876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506424, 38.934853, 38.053650>,  <34.786598, 39.143017, 37.858276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506424, 38.934853, 38.053650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031848, 0.660877, 0.749818,
		-0.713009, 0.540751, -0.446325,
		-0.700431, -0.520413, 0.488433,
		34.296295, 38.778728, 38.200180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214237, 39.630913, 38.103935>,  <34.786598, 39.143017, 37.858276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214237, 39.630913, 38.103935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229683, 39.295994, 38.322090>,  <34.238949, 39.095043, 38.452984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229683, 39.295994, 38.322090>,  <34.214237, 39.630913, 38.103935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229683, 39.295994, 38.322090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013987, 0.545285, 0.838134,
		-0.999156, -0.039991, 0.009344,
		0.038613, -0.837296, 0.545385,
		34.241268, 39.044804, 38.485706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722347, 39.848881, 38.606544>,  <34.214237, 39.630913, 38.103935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722347, 39.848881, 38.606544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935993, 39.544025, 38.752892>,  <34.064182, 39.361111, 38.840698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935993, 39.544025, 38.752892>,  <33.722347, 39.848881, 38.606544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935993, 39.544025, 38.752892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037389, 0.453642, 0.890400,
		-0.844584, -0.461898, 0.270793,
		0.534117, -0.762142, 0.365868,
		34.096230, 39.315384, 38.862652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426174, 39.698059, 39.189140>,  <33.722347, 39.848881, 38.606544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426174, 39.698059, 39.189140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788116, 39.530788, 39.221035>,  <34.005283, 39.430424, 39.240173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788116, 39.530788, 39.221035>,  <33.426174, 39.698059, 39.189140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788116, 39.530788, 39.221035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073128, 0.337196, 0.938590,
		-0.419387, -0.843459, 0.335695,
		0.904857, -0.418181, 0.079735,
		34.059574, 39.405334, 39.244957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377831, 39.255798, 39.717716>,  <33.426174, 39.698059, 39.189140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377831, 39.255798, 39.717716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772602, 39.317162, 39.698006>,  <34.009464, 39.353981, 39.686180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772602, 39.317162, 39.698006>,  <33.377831, 39.255798, 39.717716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772602, 39.317162, 39.698006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032883, 0.107641, 0.993646,
		0.157747, -0.982281, 0.101189,
		0.986932, 0.153417, -0.049280,
		34.068684, 39.363186, 39.683220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649227, 39.000877, 40.302044>,  <33.377831, 39.255798, 39.717716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649227, 39.000877, 40.302044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966160, 39.207066, 40.171501>,  <34.156319, 39.330780, 40.093178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966160, 39.207066, 40.171501>,  <33.649227, 39.000877, 40.302044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966160, 39.207066, 40.171501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144739, 0.360833, 0.921331,
		0.592677, -0.777232, 0.211290,
		0.792329, 0.515470, -0.326354,
		34.203857, 39.361706, 40.073597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233181, 38.865196, 40.725636>,  <33.649227, 39.000877, 40.302044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233181, 38.865196, 40.725636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291893, 39.230034, 40.572517>,  <34.327122, 39.448936, 40.480648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291893, 39.230034, 40.572517>,  <34.233181, 38.865196, 40.725636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291893, 39.230034, 40.572517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042967, 0.380744, 0.923682,
		0.988236, -0.152025, 0.016695,
		0.146779, 0.912098, -0.382796,
		34.335926, 39.503662, 40.457680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753601, 39.298428, 41.182480>,  <34.233181, 38.865196, 40.725636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753601, 39.298428, 41.182480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557980, 39.579170, 40.975319>,  <34.440605, 39.747616, 40.851025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557980, 39.579170, 40.975319>,  <34.753601, 39.298428, 41.182480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557980, 39.579170, 40.975319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109121, 0.539853, 0.834656,
		0.865401, 0.464705, -0.187430,
		-0.489054, 0.701860, -0.517899,
		34.411263, 39.789730, 40.819950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062538, 39.958527, 41.382217>,  <34.753601, 39.298428, 41.182480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062538, 39.958527, 41.382217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702587, 40.042263, 41.229172>,  <34.486614, 40.092506, 41.137344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702587, 40.042263, 41.229172>,  <35.062538, 39.958527, 41.382217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702587, 40.042263, 41.229172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169071, 0.641226, 0.748495,
		0.402033, 0.738244, -0.541632,
		-0.899880, 0.209345, -0.382610,
		34.432625, 40.105068, 41.114388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015003, 40.737160, 41.415783>,  <35.062538, 39.958527, 41.382217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015003, 40.737160, 41.415783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641991, 40.598061, 41.376869>,  <34.418182, 40.514603, 41.353519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641991, 40.598061, 41.376869>,  <35.015003, 40.737160, 41.415783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641991, 40.598061, 41.376869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276141, 0.513166, 0.812654,
		-0.232673, 0.784688, -0.574568,
		-0.932528, -0.347745, -0.097285,
		34.362232, 40.493736, 41.347683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563240, 41.370071, 41.548523>,  <35.015003, 40.737160, 41.415783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563240, 41.370071, 41.548523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332230, 41.048775, 41.606857>,  <34.193623, 40.855995, 41.641857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332230, 41.048775, 41.606857>,  <34.563240, 41.370071, 41.548523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332230, 41.048775, 41.606857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512889, 0.495975, 0.700681,
		-0.635147, 0.329863, -0.698411,
		-0.577523, -0.803243, 0.145834,
		34.158974, 40.807800, 41.650608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907154, 41.707420, 41.651005>,  <34.563240, 41.370071, 41.548523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907154, 41.707420, 41.651005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904217, 41.334694, 41.796146>,  <33.902454, 41.111057, 41.883232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904217, 41.334694, 41.796146>,  <33.907154, 41.707420, 41.651005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904217, 41.334694, 41.796146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538516, 0.309439, 0.783739,
		-0.842583, -0.189645, -0.504072,
		-0.007347, -0.931816, 0.362855,
		33.902012, 41.055149, 41.905003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230675, 41.652252, 41.865578>,  <33.907154, 41.707420, 41.651005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230675, 41.652252, 41.865578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447098, 41.373375, 42.053692>,  <33.576954, 41.206047, 42.166561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447098, 41.373375, 42.053692>,  <33.230675, 41.652252, 41.865578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447098, 41.373375, 42.053692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408711, 0.270735, 0.871583,
		-0.734988, -0.663791, -0.138468,
		0.541061, -0.697197, 0.470286,
		33.609417, 41.164215, 42.194778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710831, 41.261715, 42.293846>,  <33.230675, 41.652252, 41.865578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710831, 41.261715, 42.293846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076118, 41.185085, 42.437695>,  <33.295292, 41.139107, 42.524002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076118, 41.185085, 42.437695>,  <32.710831, 41.261715, 42.293846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076118, 41.185085, 42.437695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270756, 0.374236, 0.886927,
		-0.304497, -0.907329, 0.289889,
		0.913221, -0.191578, 0.359619,
		33.350086, 41.127613, 42.545582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619087, 40.796246, 42.911480>,  <32.710831, 41.261715, 42.293846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619087, 40.796246, 42.911480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972656, 40.980675, 42.942719>,  <33.184795, 41.091331, 42.961460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972656, 40.980675, 42.942719>,  <32.619087, 40.796246, 42.911480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972656, 40.980675, 42.942719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230918, 0.285127, 0.930257,
		0.406648, -0.840307, 0.358500,
		0.883920, 0.461072, 0.078096,
		33.237831, 41.118996, 42.966148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886353, 40.538254, 43.464104>,  <32.619087, 40.796246, 42.911480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886353, 40.538254, 43.464104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113312, 40.866295, 43.434475>,  <33.249489, 41.063122, 43.416698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113312, 40.866295, 43.434475>,  <32.886353, 40.538254, 43.464104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113312, 40.866295, 43.434475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092539, 0.152891, 0.983901,
		0.818227, -0.551409, 0.162642,
		0.567398, 0.820105, -0.074073,
		33.283531, 41.112328, 43.412254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325768, 40.555317, 44.084045>,  <32.886353, 40.538254, 43.464104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325768, 40.555317, 44.084045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301342, 40.923359, 43.929291>,  <33.286686, 41.144184, 43.836437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301342, 40.923359, 43.929291>,  <33.325768, 40.555317, 44.084045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301342, 40.923359, 43.929291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229237, 0.364325, 0.902617,
		0.971453, 0.143806, 0.188675,
		-0.061063, 0.920102, -0.386891,
		33.283024, 41.199390, 43.813225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622986, 41.014740, 44.572727>,  <33.325768, 40.555317, 44.084045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622986, 41.014740, 44.572727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438755, 41.300407, 44.361889>,  <33.328217, 41.471809, 44.235386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438755, 41.300407, 44.361889>,  <33.622986, 41.014740, 44.572727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438755, 41.300407, 44.361889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169111, 0.512352, 0.841960,
		0.871360, 0.476927, -0.115205,
		-0.460579, 0.714168, -0.527097,
		33.300583, 41.514656, 44.203758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984444, 41.657692, 44.642227>,  <33.622986, 41.014740, 44.572727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984444, 41.657692, 44.642227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612755, 41.762211, 44.537712>,  <33.389740, 41.824921, 44.475002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612755, 41.762211, 44.537712>,  <33.984444, 41.657692, 44.642227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612755, 41.762211, 44.537712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033119, 0.645356, 0.763164,
		0.368035, 0.717802, -0.591024,
		-0.929222, 0.261297, -0.261287,
		33.333988, 41.840599, 44.459328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019707, 42.331268, 44.602985>,  <33.984444, 41.657692, 44.642227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019707, 42.331268, 44.602985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636478, 42.240234, 44.672611>,  <33.406540, 42.185616, 44.714386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636478, 42.240234, 44.672611>,  <34.019707, 42.331268, 44.602985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636478, 42.240234, 44.672611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008226, 0.585421, 0.810687,
		-0.286404, 0.778130, -0.559005,
		-0.958074, -0.227586, 0.174068,
		33.349056, 42.171959, 44.724831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767963, 42.999763, 44.853100>,  <34.019707, 42.331268, 44.602985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767963, 42.999763, 44.853100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529114, 42.690468, 44.938461>,  <33.385803, 42.504890, 44.989677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529114, 42.690468, 44.938461>,  <33.767963, 42.999763, 44.853100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529114, 42.690468, 44.938461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170875, 0.382550, 0.907996,
		-0.783738, 0.505720, -0.360557,
		-0.597124, -0.773241, 0.213405,
		33.349976, 42.458496, 45.002483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256252, 43.292118, 45.135334>,  <33.767963, 42.999763, 44.853100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256252, 43.292118, 45.135334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253590, 42.912636, 45.261776>,  <33.251991, 42.684948, 45.337639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253590, 42.912636, 45.261776>,  <33.256252, 43.292118, 45.135334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253590, 42.912636, 45.261776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062313, 0.315889, 0.946748,
		-0.998034, -0.013394, -0.061219,
		-0.006657, -0.948702, 0.316103,
		33.251591, 42.628025, 45.356606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653847, 43.142574, 45.634007>,  <33.256252, 43.292118, 45.135334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653847, 43.142574, 45.634007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920620, 42.848633, 45.683289>,  <33.080685, 42.672268, 45.712856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920620, 42.848633, 45.683289>,  <32.653847, 43.142574, 45.634007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920620, 42.848633, 45.683289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096855, 0.078450, 0.992202,
		-0.738792, -0.673669, -0.018853,
		0.666937, -0.734857, 0.123207,
		33.120701, 42.628174, 45.720249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623127, 42.920052, 46.287651>,  <32.653847, 43.142574, 45.634007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623127, 42.920052, 46.287651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962769, 42.721916, 46.214252>,  <33.166553, 42.603035, 46.170216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962769, 42.721916, 46.214252>,  <32.623127, 42.920052, 46.287651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962769, 42.721916, 46.214252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278742, 0.125088, 0.952185,
		-0.448697, -0.859649, 0.244283,
		0.849102, -0.495334, -0.183494,
		33.217499, 42.573315, 46.159203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651180, 42.367794, 46.772709>,  <32.623127, 42.920052, 46.287651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651180, 42.367794, 46.772709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029121, 42.455307, 46.675228>,  <33.255886, 42.507816, 46.616737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029121, 42.455307, 46.675228>,  <32.651180, 42.367794, 46.772709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029121, 42.455307, 46.675228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261949, -0.058216, 0.963324,
		0.196571, -0.974035, -0.112316,
		0.944850, 0.218783, -0.243704,
		33.312576, 42.520943, 46.602116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115665, 42.014317, 47.277252>,  <32.651180, 42.367794, 46.772709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115665, 42.014317, 47.277252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360172, 42.285156, 47.113354>,  <33.506878, 42.447659, 47.015015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360172, 42.285156, 47.113354>,  <33.115665, 42.014317, 47.277252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360172, 42.285156, 47.113354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459729, 0.117636, 0.880233,
		0.644205, -0.726429, -0.239376,
		0.611268, 0.677099, -0.409742,
		33.543552, 42.488285, 46.990433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726658, 41.896889, 47.503120>,  <33.115665, 42.014317, 47.277252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726658, 41.896889, 47.503120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797905, 42.272034, 47.383999>,  <33.840652, 42.497120, 47.312527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797905, 42.272034, 47.383999>,  <33.726658, 41.896889, 47.503120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797905, 42.272034, 47.383999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447098, 0.192460, 0.873534,
		0.876571, -0.288738, -0.385037,
		0.178118, 0.937864, -0.297799,
		33.851341, 42.553394, 47.294659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405167, 42.086823, 47.820259>,  <33.726658, 41.896889, 47.503120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405167, 42.086823, 47.820259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177990, 42.409840, 47.756626>,  <34.041683, 42.603649, 47.718445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177990, 42.409840, 47.756626>,  <34.405167, 42.086823, 47.820259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177990, 42.409840, 47.756626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371488, 0.423979, 0.825978,
		0.734463, 0.410012, -0.540790,
		-0.567944, 0.807547, -0.159082,
		34.007607, 42.652103, 47.708900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805542, 42.497864, 48.151962>,  <34.405167, 42.086823, 47.820259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805542, 42.497864, 48.151962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484421, 42.712914, 48.048836>,  <34.291748, 42.841942, 47.986961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484421, 42.712914, 48.048836>,  <34.805542, 42.497864, 48.151962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484421, 42.712914, 48.048836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274364, 0.716991, 0.640818,
		0.529372, 0.443714, -0.723107,
		-0.802801, 0.537626, -0.257816,
		34.243580, 42.874203, 47.971493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024937, 43.235188, 48.122520>,  <34.805542, 42.497864, 48.151962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024937, 43.235188, 48.122520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630417, 43.253922, 48.185799>,  <34.393707, 43.265163, 48.223766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630417, 43.253922, 48.185799>,  <35.024937, 43.235188, 48.122520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630417, 43.253922, 48.185799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145484, 0.699147, 0.700020,
		-0.077816, 0.713442, -0.696380,
		-0.986296, 0.046840, 0.158200,
		34.334530, 43.267975, 48.233257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884789, 43.915356, 48.440174>,  <35.024937, 43.235188, 48.122520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884789, 43.915356, 48.440174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560528, 43.689739, 48.503025>,  <34.365971, 43.554367, 48.540737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560528, 43.689739, 48.503025>,  <34.884789, 43.915356, 48.440174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560528, 43.689739, 48.503025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162721, 0.474812, 0.864914,
		-0.562458, 0.675579, -0.476691,
		-0.810656, -0.564045, 0.157131,
		34.317329, 43.520527, 48.550163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356628, 44.347095, 48.563465>,  <34.884789, 43.915356, 48.440174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356628, 44.347095, 48.563465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233299, 43.999828, 48.719017>,  <34.159302, 43.791470, 48.812347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233299, 43.999828, 48.719017>,  <34.356628, 44.347095, 48.563465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233299, 43.999828, 48.719017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189440, 0.456642, 0.869247,
		-0.932227, 0.194342, -0.305260,
		-0.308326, -0.868164, 0.388878,
		34.140800, 43.739380, 48.835682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739712, 44.334564, 48.774952>,  <34.356628, 44.347095, 48.563465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739712, 44.334564, 48.774952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948143, 44.095547, 49.018726>,  <34.073200, 43.952137, 49.164993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948143, 44.095547, 49.018726>,  <33.739712, 44.334564, 48.774952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948143, 44.095547, 49.018726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374136, 0.481866, 0.792356,
		-0.767136, -0.640893, 0.027527,
		0.521079, -0.597546, 0.609438,
		34.104465, 43.916283, 49.201557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274525, 44.048355, 49.274578>,  <33.739712, 44.334564, 48.774952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274525, 44.048355, 49.274578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639362, 44.103725, 49.428944>,  <33.858265, 44.136948, 49.521561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639362, 44.103725, 49.428944>,  <33.274525, 44.048355, 49.274578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639362, 44.103725, 49.428944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382445, 0.626431, 0.679206,
		-0.147728, -0.767088, 0.624302,
		0.912092, 0.138424, 0.385910,
		33.912991, 44.145252, 49.544716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264080, 44.111073, 50.055790>,  <33.274525, 44.048355, 49.274578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264080, 44.111073, 50.055790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593185, 44.284012, 49.908199>,  <33.790649, 44.387775, 49.819645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593185, 44.284012, 49.908199>,  <33.264080, 44.111073, 50.055790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593185, 44.284012, 49.908199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272702, 0.869828, 0.411137,
		0.498697, -0.237647, 0.833562,
		0.822761, 0.432346, -0.368973,
		33.840015, 44.413715, 49.797508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711639, 44.413994, 50.609020>,  <33.264080, 44.111073, 50.055790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711639, 44.413994, 50.609020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784000, 44.611057, 50.268536>,  <33.827415, 44.729298, 50.064243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784000, 44.611057, 50.268536>,  <33.711639, 44.413994, 50.609020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784000, 44.611057, 50.268536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067751, 0.869677, 0.488950,
		0.981165, -0.030779, 0.190701,
		0.180898, 0.492661, -0.851212,
		33.838268, 44.758854, 50.013172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719452, 43.673771, 50.941200>,  <33.711639, 44.413994, 50.609020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719452, 43.673771, 50.941200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929329, 43.358433, 51.069706>,  <34.055256, 43.169228, 51.146809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929329, 43.358433, 51.069706>,  <33.719452, 43.673771, 50.941200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929329, 43.358433, 51.069706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594297, 0.609407, 0.524818,
		-0.609519, -0.084441, 0.788262,
		0.524688, -0.788348, 0.321262,
		34.086735, 43.121929, 51.166084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831493, 43.814011, 51.705799>,  <33.719452, 43.673771, 50.941200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831493, 43.814011, 51.705799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137596, 43.586567, 51.585091>,  <34.321259, 43.450100, 51.512665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137596, 43.586567, 51.585091>,  <33.831493, 43.814011, 51.705799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137596, 43.586567, 51.585091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643643, 0.668416, 0.372751,
		-0.010243, -0.479482, 0.877492,
		0.765257, -0.568610, -0.301769,
		34.367172, 43.415985, 51.494560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405643, 43.819103, 52.226360>,  <33.831493, 43.814011, 51.705799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405643, 43.819103, 52.226360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554207, 43.728054, 51.866306>,  <34.643345, 43.673424, 51.650272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554207, 43.728054, 51.866306>,  <34.405643, 43.819103, 52.226360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554207, 43.728054, 51.866306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807995, 0.556828, 0.192581,
		0.457385, -0.798831, 0.390727,
		0.371408, -0.227622, -0.900136,
		34.665630, 43.659767, 51.596264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921234, 43.220192, 52.289143>,  <34.405643, 43.819103, 52.226360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921234, 43.220192, 52.289143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258846, 43.198364, 52.075737>,  <35.461414, 43.185268, 51.947693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258846, 43.198364, 52.075737>,  <34.921234, 43.220192, 52.289143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258846, 43.198364, 52.075737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108155, -0.957053, 0.268984,
		-0.525283, -0.284732, -0.801877,
		0.844027, -0.054566, -0.533518,
		35.512054, 43.181995, 51.915680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914162, 42.606846, 51.840088>,  <34.921234, 43.220192, 52.289143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914162, 42.606846, 51.840088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291058, 42.722862, 51.907093>,  <35.517197, 42.792473, 51.947296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291058, 42.722862, 51.907093>,  <34.914162, 42.606846, 51.840088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291058, 42.722862, 51.907093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241702, -0.935030, 0.259421,
		0.231872, -0.203948, -0.951126,
		0.942240, 0.290041, 0.167513,
		35.573730, 42.809875, 51.957348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417362, 42.051075, 51.584846>,  <34.914162, 42.606846, 51.840088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417362, 42.051075, 51.584846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581501, 42.224537, 51.905735>,  <35.679985, 42.328613, 52.098270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581501, 42.224537, 51.905735>,  <35.417362, 42.051075, 51.584846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581501, 42.224537, 51.905735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280002, -0.897118, 0.341728,
		0.867881, 0.084399, -0.489550,
		0.410343, 0.433654, 0.802224,
		35.704605, 42.354633, 52.146400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808155, 41.804283, 52.027798>,  <35.417362, 42.051075, 51.584846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808155, 41.804283, 52.027798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450809, 41.981686, 51.998962>,  <34.236401, 42.088127, 51.981663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450809, 41.981686, 51.998962>,  <34.808155, 41.804283, 52.027798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450809, 41.981686, 51.998962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279719, -0.674496, -0.683236,
		-0.351643, -0.590216, 0.726630,
		-0.893367, 0.443508, -0.072087,
		34.182800, 42.114738, 51.977337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189301, 41.341686, 52.047375>,  <34.808155, 41.804283, 52.027798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189301, 41.341686, 52.047375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080574, 41.658821, 51.829193>,  <34.015339, 41.849102, 51.698284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080574, 41.658821, 51.829193>,  <34.189301, 41.341686, 52.047375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080574, 41.658821, 51.829193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140588, -0.593427, -0.792515,
		-0.952025, -0.138733, 0.272766,
		-0.271814, 0.792841, -0.545453,
		33.999031, 41.896675, 51.665558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638813, 41.124130, 51.637466>,  <34.189301, 41.341686, 52.047375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638813, 41.124130, 51.637466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717148, 41.473301, 51.458736>,  <33.764149, 41.682804, 51.351498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717148, 41.473301, 51.458736>,  <33.638813, 41.124130, 51.637466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717148, 41.473301, 51.458736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185661, -0.414398, -0.890957,
		-0.962900, 0.257443, 0.080912,
		0.195841, 0.872925, -0.446820,
		33.775902, 41.735180, 51.324692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082329, 41.315998, 51.289200>,  <33.638813, 41.124130, 51.637466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082329, 41.315998, 51.289200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389801, 41.478172, 51.091309>,  <33.574284, 41.575478, 50.972576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389801, 41.478172, 51.091309>,  <33.082329, 41.315998, 51.289200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389801, 41.478172, 51.091309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156825, -0.630387, -0.760275,
		-0.620110, 0.661994, -0.420984,
		0.768681, 0.405433, -0.494726,
		33.620407, 41.599804, 50.942890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844131, 41.295181, 50.561550>,  <33.082329, 41.315998, 51.289200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844131, 41.295181, 50.561550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242367, 41.331593, 50.570637>,  <33.481308, 41.353439, 50.576088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242367, 41.331593, 50.570637>,  <32.844131, 41.295181, 50.561550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242367, 41.331593, 50.570637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067370, -0.525185, -0.848317,
		-0.065288, 0.846106, -0.529001,
		0.995590, 0.091024, 0.022714,
		33.541042, 41.358898, 50.577450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034554, 41.547562, 49.909397>,  <32.844131, 41.295181, 50.561550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034554, 41.547562, 49.909397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352428, 41.357193, 50.060112>,  <33.543156, 41.242973, 50.150539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352428, 41.357193, 50.060112>,  <33.034554, 41.547562, 49.909397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352428, 41.357193, 50.060112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086508, -0.525588, -0.846330,
		0.600818, 0.705166, -0.376510,
		0.794691, -0.475919, 0.376785,
		33.590836, 41.214417, 50.173149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486832, 41.531452, 49.343651>,  <33.034554, 41.547562, 49.909397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486832, 41.531452, 49.343651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595665, 41.232143, 49.585663>,  <33.660965, 41.052559, 49.730869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595665, 41.232143, 49.585663>,  <33.486832, 41.531452, 49.343651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595665, 41.232143, 49.585663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182970, -0.577055, -0.795946,
		0.944719, 0.327265, -0.020095,
		0.272081, -0.748268, 0.605035,
		33.677288, 41.007664, 49.767174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147392, 41.213104, 49.124836>,  <33.486832, 41.531452, 49.343651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147392, 41.213104, 49.124836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035992, 40.904716, 49.353939>,  <33.969151, 40.719685, 49.491402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035992, 40.904716, 49.353939>,  <34.147392, 41.213104, 49.124836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035992, 40.904716, 49.353939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100306, -0.616433, -0.780992,
		0.955185, -0.160053, 0.249008,
		-0.278497, -0.770969, 0.572753,
		33.952442, 40.673428, 49.525764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707500, 40.667999, 48.998283>,  <34.147392, 41.213104, 49.124836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707500, 40.667999, 48.998283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384464, 40.496433, 49.160187>,  <34.190643, 40.393494, 49.257328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384464, 40.496433, 49.160187>,  <34.707500, 40.667999, 48.998283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384464, 40.496433, 49.160187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033735, -0.718805, -0.694393,
		0.588778, -0.547130, 0.594970,
		-0.807590, -0.428915, 0.404759,
		34.142185, 40.367760, 49.281616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815384, 39.915398, 49.007755>,  <34.707500, 40.667999, 48.998283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815384, 39.915398, 49.007755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419609, 39.958664, 49.046360>,  <34.182144, 39.984623, 49.069523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419609, 39.958664, 49.046360>,  <34.815384, 39.915398, 49.007755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419609, 39.958664, 49.046360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143617, -0.640993, -0.753991,
		-0.019693, -0.759887, 0.649756,
		-0.989437, 0.108165, 0.096510,
		34.122776, 39.991112, 49.075314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589661, 39.212391, 48.979557>,  <34.815384, 39.915398, 49.007755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589661, 39.212391, 48.979557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292961, 39.462372, 48.882198>,  <34.114941, 39.612362, 48.823784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292961, 39.462372, 48.882198>,  <34.589661, 39.212391, 48.979557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292961, 39.462372, 48.882198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200127, -0.552624, -0.809046,
		-0.640126, -0.551396, 0.534977,
		-0.741747, 0.624955, -0.243400,
		34.070438, 39.649857, 48.809177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129715, 38.771763, 48.884232>,  <34.589661, 39.212391, 48.979557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129715, 38.771763, 48.884232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996159, 39.096874, 48.693268>,  <33.916027, 39.291939, 48.578690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996159, 39.096874, 48.693268>,  <34.129715, 38.771763, 48.884232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996159, 39.096874, 48.693268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175496, -0.551216, -0.815697,
		-0.926132, -0.188567, 0.326682,
		-0.333886, 0.812775, -0.477407,
		33.895992, 39.340706, 48.550045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501522, 38.569023, 48.513832>,  <34.129715, 38.771763, 48.884232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501522, 38.569023, 48.513832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611328, 38.901093, 48.319736>,  <33.677212, 39.100334, 48.203278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611328, 38.901093, 48.319736>,  <33.501522, 38.569023, 48.513832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611328, 38.901093, 48.319736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092072, -0.479615, -0.872636,
		-0.957165, 0.284228, -0.055225,
		0.274514, 0.830171, -0.485240,
		33.693684, 39.150143, 48.174164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169678, 38.509636, 47.904854>,  <33.501522, 38.569023, 48.513832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169678, 38.509636, 47.904854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460320, 38.776165, 47.837852>,  <33.634705, 38.936085, 47.797649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460320, 38.776165, 47.837852>,  <33.169678, 38.509636, 47.904854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460320, 38.776165, 47.837852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082488, -0.326644, -0.941541,
		-0.682088, 0.670309, -0.292304,
		0.726603, 0.666326, -0.167508,
		33.678299, 38.976063, 47.787601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883160, 38.898956, 47.347572>,  <33.169678, 38.509636, 47.904854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883160, 38.898956, 47.347572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247814, 39.062847, 47.334610>,  <33.466606, 39.161182, 47.326832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247814, 39.062847, 47.334610>,  <32.883160, 38.898956, 47.347572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247814, 39.062847, 47.334610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040965, -0.169041, -0.984757,
		-0.408957, 0.896411, -0.170888,
		0.911634, 0.409723, -0.032409,
		33.521305, 39.185764, 47.324886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904198, 39.511120, 46.826687>,  <32.883160, 38.898956, 47.347572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904198, 39.511120, 46.826687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257275, 39.330162, 46.877586>,  <33.469120, 39.221588, 46.908127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257275, 39.330162, 46.877586>,  <32.904198, 39.511120, 46.826687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257275, 39.330162, 46.877586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013237, -0.246734, -0.968993,
		0.469761, 0.857009, -0.211802,
		0.882694, -0.452391, 0.127250,
		33.522083, 39.194443, 46.915760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130428, 39.596409, 46.225178>,  <32.904198, 39.511120, 46.826687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130428, 39.596409, 46.225178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375641, 39.304512, 46.346283>,  <33.522766, 39.129372, 46.418945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375641, 39.304512, 46.346283>,  <33.130428, 39.596409, 46.225178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375641, 39.304512, 46.346283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002179, -0.381653, -0.924303,
		0.790058, 0.567284, -0.232374,
		0.613028, -0.729747, 0.302764,
		33.559551, 39.085587, 46.437111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668324, 39.596283, 45.705368>,  <33.130428, 39.596409, 46.225178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668324, 39.596283, 45.705368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649403, 39.243511, 45.892971>,  <33.638050, 39.031849, 46.005535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649403, 39.243511, 45.892971>,  <33.668324, 39.596283, 45.705368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649403, 39.243511, 45.892971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035069, -0.467781, -0.883148,
		0.998265, -0.058219, -0.008803,
		-0.047298, -0.881925, 0.469011,
		33.635212, 38.978935, 46.033676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367455, 39.092873, 45.616451>,  <33.668324, 39.596283, 45.705368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367455, 39.092873, 45.616451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050957, 38.860390, 45.692486>,  <33.861057, 38.720901, 45.738106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050957, 38.860390, 45.692486>,  <34.367455, 39.092873, 45.616451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050957, 38.860390, 45.692486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135240, -0.469481, -0.872524,
		0.596358, -0.664671, 0.450076,
		-0.791244, -0.581205, 0.190089,
		33.813583, 38.686028, 45.749512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472672, 38.569679, 45.187954>,  <34.367455, 39.092873, 45.616451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472672, 38.569679, 45.187954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112175, 38.480717, 45.336716>,  <33.895878, 38.427341, 45.425972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112175, 38.480717, 45.336716>,  <34.472672, 38.569679, 45.187954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112175, 38.480717, 45.336716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132829, -0.675140, -0.725632,
		0.412467, -0.703366, 0.578919,
		-0.901236, -0.222402, 0.371901,
		33.841805, 38.413998, 45.448284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433922, 37.884296, 45.290482>,  <34.472672, 38.569679, 45.187954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433922, 37.884296, 45.290482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064262, 38.022881, 45.226086>,  <33.842468, 38.106030, 45.187447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064262, 38.022881, 45.226086>,  <34.433922, 37.884296, 45.290482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064262, 38.022881, 45.226086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063403, -0.554645, -0.829668,
		-0.376740, -0.756528, 0.534540,
		-0.924147, 0.346461, -0.160991,
		33.787018, 38.126820, 45.177788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195679, 37.342979, 45.127396>,  <34.433922, 37.884296, 45.290482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195679, 37.342979, 45.127396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907368, 37.596909, 45.016052>,  <33.734383, 37.749268, 44.949245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907368, 37.596909, 45.016052>,  <34.195679, 37.342979, 45.127396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907368, 37.596909, 45.016052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188095, -0.565625, -0.802925,
		-0.667163, -0.526369, 0.527095,
		-0.720773, 0.634825, -0.278357,
		33.691135, 37.787357, 44.932545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682461, 36.913498, 44.939434>,  <34.195679, 37.342979, 45.127396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682461, 36.913498, 44.939434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639267, 37.262833, 44.749432>,  <33.613350, 37.472431, 44.635429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639267, 37.262833, 44.749432>,  <33.682461, 36.913498, 44.939434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639267, 37.262833, 44.749432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306742, -0.483755, -0.819689,
		-0.945647, 0.057191, 0.320125,
		-0.107984, 0.873333, -0.475004,
		33.606873, 37.524834, 44.606930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063206, 36.881531, 44.712807>,  <33.682461, 36.913498, 44.939434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063206, 36.881531, 44.712807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243156, 37.159428, 44.488327>,  <33.351128, 37.326164, 44.353638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243156, 37.159428, 44.488327>,  <33.063206, 36.881531, 44.712807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243156, 37.159428, 44.488327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108601, -0.581159, -0.806511,
		-0.886463, 0.423777, -0.186000,
		0.449877, 0.694742, -0.561199,
		33.378120, 37.367851, 44.319969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709476, 36.892578, 44.130554>,  <33.063206, 36.881531, 44.712807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709476, 36.892578, 44.130554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052433, 37.060570, 44.011559>,  <33.258205, 37.161366, 43.940163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052433, 37.060570, 44.011559>,  <32.709476, 36.892578, 44.130554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052433, 37.060570, 44.011559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039894, -0.522051, -0.851981,
		-0.513116, 0.742349, -0.430848,
		0.857391, 0.419977, -0.297488,
		33.309650, 37.186562, 43.922314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592171, 37.198902, 43.416557>,  <32.709476, 36.892578, 44.130554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592171, 37.198902, 43.416557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985722, 37.139065, 43.455753>,  <33.221851, 37.103165, 43.479271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985722, 37.139065, 43.455753>,  <32.592171, 37.198902, 43.416557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985722, 37.139065, 43.455753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011318, -0.494770, -0.868950,
		0.178467, 0.856052, -0.485102,
		0.983881, -0.149589, 0.097989,
		33.280888, 37.094189, 43.485149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846455, 37.282406, 42.761139>,  <32.592171, 37.198902, 43.416557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846455, 37.282406, 42.761139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113777, 37.065796, 42.965145>,  <33.274170, 36.935829, 43.087551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113777, 37.065796, 42.965145>,  <32.846455, 37.282406, 42.761139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113777, 37.065796, 42.965145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219441, -0.511589, -0.830736,
		0.710783, 0.667105, -0.223066,
		0.668306, -0.541523, 0.510019,
		33.314270, 36.903339, 43.118153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409355, 37.267986, 42.303310>,  <32.846455, 37.282406, 42.761139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409355, 37.267986, 42.303310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482483, 36.985241, 42.576637>,  <33.526360, 36.815594, 42.740631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482483, 36.985241, 42.576637>,  <33.409355, 37.267986, 42.303310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482483, 36.985241, 42.576637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146380, -0.667710, -0.729888,
		0.972187, 0.233465, -0.018602,
		0.182824, -0.706865, 0.683314,
		33.537331, 36.773182, 42.781631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129471, 37.031731, 42.197643>,  <33.409355, 37.267986, 42.303310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129471, 37.031731, 42.197643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925354, 36.744865, 42.387497>,  <33.802883, 36.572746, 42.501411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925354, 36.744865, 42.387497>,  <34.129471, 37.031731, 42.197643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925354, 36.744865, 42.387497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003666, -0.550087, -0.835099,
		0.859992, -0.427887, 0.278077,
		-0.510295, -0.717159, 0.474639,
		33.772266, 36.529716, 42.529888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525284, 36.379162, 42.125832>,  <34.129471, 37.031731, 42.197643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525284, 36.379162, 42.125832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139694, 36.299065, 42.195869>,  <33.908340, 36.251007, 42.237892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139694, 36.299065, 42.195869>,  <34.525284, 36.379162, 42.125832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139694, 36.299065, 42.195869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025379, -0.724494, -0.688814,
		0.264782, -0.659555, 0.703475,
		-0.963974, -0.200239, 0.175094,
		33.850502, 36.238995, 42.248398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472214, 35.677998, 41.995766>,  <34.525284, 36.379162, 42.125832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472214, 35.677998, 41.995766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087730, 35.785149, 41.969448>,  <33.857040, 35.849438, 41.953655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087730, 35.785149, 41.969448>,  <34.472214, 35.677998, 41.995766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087730, 35.785149, 41.969448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134468, -0.663318, -0.736157,
		-0.240842, -0.698749, 0.673605,
		-0.961204, 0.267876, -0.065795,
		33.799370, 35.865513, 41.949711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179062, 35.042736, 41.894634>,  <34.472214, 35.677998, 41.995766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179062, 35.042736, 41.894634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927048, 35.329056, 41.774181>,  <33.775837, 35.500847, 41.701912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927048, 35.329056, 41.774181>,  <34.179062, 35.042736, 41.894634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927048, 35.329056, 41.774181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216827, -0.534499, -0.816883,
		-0.745679, -0.449375, 0.491960,
		-0.630039, 0.715802, -0.301128,
		33.738037, 35.543797, 41.683842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706161, 34.730114, 41.484470>,  <34.179062, 35.042736, 41.894634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706161, 34.730114, 41.484470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635860, 35.112885, 41.392040>,  <33.593681, 35.342548, 41.336582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635860, 35.112885, 41.392040>,  <33.706161, 34.730114, 41.484470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635860, 35.112885, 41.392040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227566, -0.267864, -0.936195,
		-0.957771, -0.111949, 0.264842,
		-0.175748, 0.956930, -0.231077,
		33.583138, 35.399963, 41.322716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118416, 34.754444, 41.070213>,  <33.706161, 34.730114, 41.484470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118416, 34.754444, 41.070213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252384, 35.115368, 40.961643>,  <33.332764, 35.331921, 40.896503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252384, 35.115368, 40.961643>,  <33.118416, 34.754444, 41.070213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252384, 35.115368, 40.961643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174937, -0.223505, -0.958875,
		-0.925865, 0.368628, 0.082991,
		0.334919, 0.902308, -0.271422,
		33.352859, 35.386059, 40.880219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603828, 35.006622, 40.605839>,  <33.118416, 34.754444, 41.070213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603828, 35.006622, 40.605839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950974, 35.183502, 40.515259>,  <33.159260, 35.289631, 40.460911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950974, 35.183502, 40.515259>,  <32.603828, 35.006622, 40.605839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950974, 35.183502, 40.515259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123870, -0.248824, -0.960595,
		-0.481122, 0.861711, -0.161169,
		0.867859, 0.442199, -0.226455,
		33.211330, 35.316162, 40.447323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497368, 35.301426, 39.962090>,  <32.603828, 35.006622, 40.605839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497368, 35.301426, 39.962090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895489, 35.314453, 39.998558>,  <33.134361, 35.322269, 40.020439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895489, 35.314453, 39.998558>,  <32.497368, 35.301426, 39.962090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895489, 35.314453, 39.998558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093938, -0.096987, -0.990843,
		-0.023430, 0.994753, -0.099591,
		0.995302, 0.032570, 0.091172,
		33.194080, 35.324223, 40.025909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767921, 35.838848, 39.394089>,  <32.497368, 35.301426, 39.962090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767921, 35.838848, 39.394089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079662, 35.601269, 39.473923>,  <33.266708, 35.458721, 39.521824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079662, 35.601269, 39.473923>,  <32.767921, 35.838848, 39.394089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079662, 35.601269, 39.473923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184515, -0.086850, -0.978985,
		0.598799, 0.799802, 0.041905,
		0.779355, -0.593948, 0.199581,
		33.313469, 35.423084, 39.533798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295704, 35.983757, 38.887177>,  <32.767921, 35.838848, 39.394089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295704, 35.983757, 38.887177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395542, 35.626392, 39.036591>,  <33.455444, 35.411976, 39.126240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395542, 35.626392, 39.036591>,  <33.295704, 35.983757, 38.887177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395542, 35.626392, 39.036591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207052, -0.327580, -0.921857,
		0.945956, 0.307429, 0.103221,
		0.249593, -0.893408, 0.373531,
		33.470421, 35.358372, 39.148651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894222, 35.805485, 38.538082>,  <33.295704, 35.983757, 38.887177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894222, 35.805485, 38.538082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745865, 35.452888, 38.654980>,  <33.656849, 35.241329, 38.725121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745865, 35.452888, 38.654980>,  <33.894222, 35.805485, 38.538082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745865, 35.452888, 38.654980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263022, -0.401517, -0.877271,
		0.890648, -0.248511, 0.380773,
		-0.370898, -0.881491, 0.292246,
		33.634594, 35.188442, 38.742653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379211, 35.334087, 38.319347>,  <33.894222, 35.805485, 38.538082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379211, 35.334087, 38.319347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065269, 35.099052, 38.398087>,  <33.876904, 34.958031, 38.445332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065269, 35.099052, 38.398087>,  <34.379211, 35.334087, 38.319347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065269, 35.099052, 38.398087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277007, -0.616829, -0.736742,
		0.554323, -0.523704, 0.646885,
		-0.784852, -0.587585, 0.196853,
		33.829815, 34.922775, 38.457142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597897, 34.634621, 38.335587>,  <34.379211, 35.334087, 38.319347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597897, 34.634621, 38.335587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209255, 34.631168, 38.241005>,  <33.976070, 34.629097, 38.184258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209255, 34.631168, 38.241005>,  <34.597897, 34.634621, 38.335587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209255, 34.631168, 38.241005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198570, -0.573138, -0.795037,
		-0.128661, -0.819414, 0.558576,
		-0.971605, -0.008627, -0.236452,
		33.917774, 34.628582, 38.170071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740486, 34.683578, 39.076748>,  <34.597897, 34.634621, 38.335587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740486, 34.683578, 39.076748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074951, 34.557735, 38.897038>,  <35.275631, 34.482231, 38.789211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074951, 34.557735, 38.897038>,  <34.740486, 34.683578, 39.076748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074951, 34.557735, 38.897038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418527, -0.163436, 0.893378,
		-0.354493, -0.935045, -0.004987,
		0.836164, -0.314609, -0.449279,
		35.325802, 34.463352, 38.762253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905460, 33.940323, 39.121105>,  <34.740486, 34.683578, 39.076748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905460, 33.940323, 39.121105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238838, 34.160530, 39.101910>,  <35.438866, 34.292652, 39.090393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238838, 34.160530, 39.101910>,  <34.905460, 33.940323, 39.121105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238838, 34.160530, 39.101910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166426, -0.167252, 0.971766,
		0.526945, -0.817900, -0.231015,
		0.833445, 0.550514, -0.047988,
		35.488873, 34.325684, 39.087513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375736, 33.549778, 39.534233>,  <34.905460, 33.940323, 39.121105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375736, 33.549778, 39.534233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557129, 33.906040, 39.521019>,  <35.665966, 34.119797, 39.513088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557129, 33.906040, 39.521019>,  <35.375736, 33.549778, 39.534233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557129, 33.906040, 39.521019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200201, -0.065671, 0.977552,
		0.868488, -0.449919, -0.208090,
		0.453485, 0.890651, -0.033040,
		35.693176, 34.173237, 39.511108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021641, 33.397358, 39.945831>,  <35.375736, 33.549778, 39.534233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021641, 33.397358, 39.945831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993839, 33.795883, 39.925747>,  <35.977158, 34.035000, 39.913696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993839, 33.795883, 39.925747>,  <36.021641, 33.397358, 39.945831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993839, 33.795883, 39.925747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163447, 0.061027, 0.984663,
		0.984101, 0.060231, -0.167087,
		-0.069504, 0.996317, -0.050212,
		35.972988, 34.094780, 39.910683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576027, 33.625549, 40.416218>,  <36.021641, 33.397358, 39.945831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576027, 33.625549, 40.416218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331375, 33.935139, 40.350636>,  <36.184586, 34.120892, 40.311287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331375, 33.935139, 40.350636>,  <36.576027, 33.625549, 40.416218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331375, 33.935139, 40.350636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171141, 0.331769, 0.927707,
		0.772413, 0.539353, -0.335377,
		-0.611629, 0.773969, -0.163957,
		36.147888, 34.167328, 40.301449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932980, 34.142822, 40.733261>,  <36.576027, 33.625549, 40.416218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932980, 34.142822, 40.733261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541931, 34.226727, 40.726933>,  <36.307301, 34.277069, 40.723133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541931, 34.226727, 40.726933>,  <36.932980, 34.142822, 40.733261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541931, 34.226727, 40.726933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073995, 0.413344, 0.907563,
		0.196911, 0.886086, -0.419617,
		-0.977625, 0.209759, -0.015826,
		36.248642, 34.289654, 40.722183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859276, 34.828556, 41.109581>,  <36.932980, 34.142822, 40.733261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859276, 34.828556, 41.109581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483730, 34.691051, 41.117176>,  <36.258404, 34.608547, 41.121731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483730, 34.691051, 41.117176>,  <36.859276, 34.828556, 41.109581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483730, 34.691051, 41.117176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102772, 0.332462, 0.937500,
		-0.328591, 0.878234, -0.347466,
		-0.938864, -0.343764, 0.018986,
		36.202072, 34.587921, 41.122871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510277, 35.330688, 41.472614>,  <36.859276, 34.828556, 41.109581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510277, 35.330688, 41.472614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252815, 35.025196, 41.492268>,  <36.098339, 34.841900, 41.504059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252815, 35.025196, 41.492268>,  <36.510277, 35.330688, 41.472614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252815, 35.025196, 41.492268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260396, 0.278920, 0.924336,
		-0.719652, 0.582161, -0.378403,
		-0.643657, -0.763735, 0.049133,
		36.059719, 34.796074, 41.507008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857700, 35.596069, 41.663593>,  <36.510277, 35.330688, 41.472614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857700, 35.596069, 41.663593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862358, 35.213062, 41.778851>,  <35.865154, 34.983257, 41.848007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862358, 35.213062, 41.778851>,  <35.857700, 35.596069, 41.663593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862358, 35.213062, 41.778851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393613, 0.260509, 0.881592,
		-0.919202, -0.123686, -0.373857,
		0.011647, -0.957516, 0.288145,
		35.865852, 34.925808, 41.865295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447823, 35.583427, 42.112217>,  <35.857700, 35.596069, 41.663593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447823, 35.583427, 42.112217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600636, 35.224255, 42.199646>,  <35.692322, 35.008751, 42.252106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600636, 35.224255, 42.199646>,  <35.447823, 35.583427, 42.112217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600636, 35.224255, 42.199646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249695, 0.127426, 0.959904,
		-0.889777, -0.421292, -0.175527,
		0.382033, -0.897929, 0.218575,
		35.715244, 34.954876, 42.265217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951008, 35.202579, 42.499538>,  <35.447823, 35.583427, 42.112217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951008, 35.202579, 42.499538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308708, 35.044968, 42.584438>,  <35.523331, 34.950401, 42.635380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308708, 35.044968, 42.584438>,  <34.951008, 35.202579, 42.499538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308708, 35.044968, 42.584438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150395, 0.182105, 0.971709,
		-0.421534, -0.900876, 0.103588,
		0.894254, -0.394030, 0.212251,
		35.576984, 34.926758, 42.648113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870010, 34.761017, 43.112228>,  <34.951008, 35.202579, 42.499538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870010, 34.761017, 43.112228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257080, 34.858131, 43.084942>,  <35.489323, 34.916401, 43.068569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257080, 34.858131, 43.084942>,  <34.870010, 34.761017, 43.112228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257080, 34.858131, 43.084942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012320, 0.224646, 0.974362,
		0.251894, -0.943708, 0.214394,
		0.967676, 0.242795, -0.068214,
		35.547382, 34.930965, 43.064480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243763, 34.330177, 43.617287>,  <34.870010, 34.761017, 43.112228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243763, 34.330177, 43.617287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493935, 34.632870, 43.541191>,  <35.644039, 34.814487, 43.495533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493935, 34.632870, 43.541191>,  <35.243763, 34.330177, 43.617287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493935, 34.632870, 43.541191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030388, 0.267246, 0.963149,
		0.779689, -0.596601, 0.190139,
		0.625430, 0.756734, -0.190240,
		35.681564, 34.859890, 43.484119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704575, 34.307850, 44.173611>,  <35.243763, 34.330177, 43.617287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704575, 34.307850, 44.173611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750130, 34.680912, 44.036678>,  <35.777462, 34.904747, 43.954517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750130, 34.680912, 44.036678>,  <35.704575, 34.307850, 44.173611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750130, 34.680912, 44.036678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042544, 0.348835, 0.936218,
		0.992583, -0.092056, 0.079405,
		0.113884, 0.932652, -0.342331,
		35.784294, 34.960709, 43.933979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987156, 34.518791, 44.726681>,  <35.704575, 34.307850, 44.173611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987156, 34.518791, 44.726681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890961, 34.841057, 44.510136>,  <35.833244, 35.034416, 44.380207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890961, 34.841057, 44.510136>,  <35.987156, 34.518791, 44.726681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890961, 34.841057, 44.510136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268390, 0.480795, 0.834747,
		0.932810, 0.346041, 0.100608,
		-0.240485, 0.805662, -0.541364,
		35.818817, 35.082756, 44.347725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337448, 35.047447, 45.014542>,  <35.987156, 34.518791, 44.726681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337448, 35.047447, 45.014542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024918, 35.219204, 44.833370>,  <35.837399, 35.322258, 44.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024918, 35.219204, 44.833370>,  <36.337448, 35.047447, 45.014542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024918, 35.219204, 44.833370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332360, 0.327994, 0.884283,
		0.528260, 0.841454, -0.113560,
		-0.781331, 0.429389, -0.452932,
		35.790520, 35.348022, 44.697491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292229, 35.599964, 45.319534>,  <36.337448, 35.047447, 45.014542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292229, 35.599964, 45.319534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932583, 35.615791, 45.145168>,  <35.716793, 35.625290, 45.040550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932583, 35.615791, 45.145168>,  <36.292229, 35.599964, 45.319534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932583, 35.615791, 45.145168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341895, 0.558340, 0.755886,
		0.273299, 0.828668, -0.488485,
		-0.899119, 0.039572, -0.435911,
		35.662846, 35.627663, 45.014397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104061, 36.240036, 45.025406>,  <36.292229, 35.599964, 45.319534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104061, 36.240036, 45.025406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756924, 36.066143, 45.121616>,  <35.548641, 35.961807, 45.179340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756924, 36.066143, 45.121616>,  <36.104061, 36.240036, 45.025406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756924, 36.066143, 45.121616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162228, 0.705525, 0.689868,
		-0.469605, 0.559678, -0.682811,
		-0.867844, -0.434736, 0.240523,
		35.496571, 35.935722, 45.193771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671841, 36.794731, 45.131115>,  <36.104061, 36.240036, 45.025406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671841, 36.794731, 45.131115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506786, 36.497982, 45.342533>,  <35.407753, 36.319935, 45.469383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506786, 36.497982, 45.342533>,  <35.671841, 36.794731, 45.131115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506786, 36.497982, 45.342533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120226, 0.619529, 0.775713,
		-0.902928, 0.256540, -0.344831,
		-0.412634, -0.741870, 0.528547,
		35.382996, 36.275421, 45.501099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969177, 37.023495, 45.401371>,  <35.671841, 36.794731, 45.131115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969177, 37.023495, 45.401371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068485, 36.715240, 45.636139>,  <35.128071, 36.530289, 45.777000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068485, 36.715240, 45.636139>,  <34.969177, 37.023495, 45.401371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068485, 36.715240, 45.636139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149042, 0.568291, 0.809217,
		-0.957156, -0.288381, 0.026232,
		0.248270, -0.770637, 0.586924,
		35.142967, 36.484051, 45.812218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524792, 37.180725, 45.886360>,  <34.969177, 37.023495, 45.401371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524792, 37.180725, 45.886360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792976, 36.928032, 46.041992>,  <34.953888, 36.776417, 46.135372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792976, 36.928032, 46.041992>,  <34.524792, 37.180725, 45.886360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792976, 36.928032, 46.041992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062619, 0.570722, 0.818753,
		-0.739294, -0.524581, 0.422208,
		0.670465, -0.631737, 0.389082,
		34.994118, 36.738510, 46.158718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344303, 37.081680, 46.645531>,  <34.524792, 37.180725, 45.886360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344303, 37.081680, 46.645531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724995, 36.964531, 46.608807>,  <34.953411, 36.894241, 46.586773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724995, 36.964531, 46.608807>,  <34.344303, 37.081680, 46.645531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724995, 36.964531, 46.608807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261768, 0.618333, 0.741041,
		-0.160262, -0.729306, 0.665153,
		0.951732, -0.292876, -0.091814,
		35.010513, 36.876667, 46.581261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533134, 37.088139, 47.415356>,  <34.344303, 37.081680, 46.645531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533134, 37.088139, 47.415356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868355, 37.075401, 47.197495>,  <35.069489, 37.067760, 47.066776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868355, 37.075401, 47.197495>,  <34.533134, 37.088139, 47.415356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868355, 37.075401, 47.197495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465413, 0.562658, 0.683232,
		0.284699, -0.826076, 0.486359,
		0.838056, -0.031843, -0.544655,
		35.119770, 37.065849, 47.034100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104263, 36.910000, 47.886520>,  <34.533134, 37.088139, 47.415356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104263, 36.910000, 47.886520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289436, 37.073780, 47.572056>,  <35.400539, 37.172050, 47.383377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289436, 37.073780, 47.572056>,  <35.104263, 36.910000, 47.886520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289436, 37.073780, 47.572056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508127, 0.604136, 0.613862,
		0.726293, -0.683644, 0.071620,
		0.462931, 0.409452, -0.786158,
		35.428314, 37.196617, 47.336208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636589, 37.283337, 48.171780>,  <35.104263, 36.910000, 47.886520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636589, 37.283337, 48.171780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736034, 37.421646, 47.809868>,  <35.795704, 37.504631, 47.592720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736034, 37.421646, 47.809868>,  <35.636589, 37.283337, 48.171780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736034, 37.421646, 47.809868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398674, 0.814788, 0.420927,
		0.882750, -0.465363, 0.064721,
		0.248618, 0.345771, -0.904783,
		35.810619, 37.525379, 47.538433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416428, 37.506168, 48.151947>,  <35.636589, 37.283337, 48.171780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416428, 37.506168, 48.151947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230282, 37.694130, 47.851913>,  <36.118595, 37.806908, 47.671894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230282, 37.694130, 47.851913>,  <36.416428, 37.506168, 48.151947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230282, 37.694130, 47.851913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412844, 0.864845, 0.285661,
		0.782939, -0.176730, -0.596467,
		-0.465367, 0.469903, -0.750083,
		36.090672, 37.835102, 47.626888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960873, 37.877224, 47.827908>,  <36.416428, 37.506168, 48.151947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960873, 37.877224, 47.827908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597782, 38.038963, 47.783142>,  <36.379929, 38.136009, 47.756283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597782, 38.038963, 47.783142>,  <36.960873, 37.877224, 47.827908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597782, 38.038963, 47.783142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307909, 0.823232, 0.476949,
		0.284988, 0.398481, -0.871776,
		-0.907730, 0.404352, -0.111916,
		36.325462, 38.160271, 47.749569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207821, 38.561031, 47.622639>,  <36.960873, 37.877224, 47.827908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207821, 38.561031, 47.622639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822147, 38.567150, 47.728558>,  <36.590744, 38.570824, 47.792110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822147, 38.567150, 47.728558>,  <37.207821, 38.561031, 47.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822147, 38.567150, 47.728558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150443, 0.853761, 0.498457,
		-0.218450, 0.520441, -0.825482,
		-0.964182, 0.015300, 0.264801,
		36.532894, 38.571739, 47.807999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970230, 39.199677, 47.467751>,  <37.207821, 38.561031, 47.622639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970230, 39.199677, 47.467751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724045, 39.073639, 47.756729>,  <36.576336, 38.998016, 47.930115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724045, 39.073639, 47.756729>,  <36.970230, 39.199677, 47.467751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724045, 39.073639, 47.756729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049324, 0.899416, 0.434303,
		-0.786622, 0.302930, -0.538014,
		-0.615461, -0.315095, 0.722442,
		36.539406, 38.979111, 47.973461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579475, 39.832283, 47.651493>,  <36.970230, 39.199677, 47.467751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579475, 39.832283, 47.651493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505413, 39.581741, 47.954384>,  <36.460976, 39.431416, 48.136120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505413, 39.581741, 47.954384>,  <36.579475, 39.832283, 47.651493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505413, 39.581741, 47.954384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123942, 0.749514, 0.650282,
		-0.974862, 0.214255, -0.061144,
		-0.185155, -0.626357, 0.757228,
		36.449867, 39.393833, 48.181553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164589, 40.236637, 48.090031>,  <36.579475, 39.832283, 47.651493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164589, 40.236637, 48.090031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316246, 39.933830, 48.302887>,  <36.407242, 39.752148, 48.430599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316246, 39.933830, 48.302887>,  <36.164589, 40.236637, 48.090031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316246, 39.933830, 48.302887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232996, 0.634650, 0.736839,
		-0.895523, -0.155382, 0.417006,
		0.379145, -0.757017, 0.532141,
		36.429989, 39.706726, 48.462528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958828, 40.322235, 48.798492>,  <36.164589, 40.236637, 48.090031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958828, 40.322235, 48.798492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267597, 40.070728, 48.835987>,  <36.452858, 39.919823, 48.858482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267597, 40.070728, 48.835987>,  <35.958828, 40.322235, 48.798492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267597, 40.070728, 48.835987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279457, 0.468063, 0.838344,
		-0.570998, -0.620942, 0.537022,
		0.771923, -0.628767, 0.093737,
		36.499176, 39.882099, 48.864109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012447, 40.288307, 49.483257>,  <35.958828, 40.322235, 48.798492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012447, 40.288307, 49.483257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368832, 40.152493, 49.362652>,  <36.582661, 40.071003, 49.290291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368832, 40.152493, 49.362652>,  <36.012447, 40.288307, 49.483257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368832, 40.152493, 49.362652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425130, 0.390418, 0.816601,
		-0.159547, -0.855740, 0.492193,
		0.890960, -0.339533, -0.301511,
		36.636120, 40.050632, 49.272198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314438, 39.920460, 50.045864>,  <36.012447, 40.288307, 49.483257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314438, 39.920460, 50.045864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597412, 40.063480, 49.801998>,  <36.767197, 40.149292, 49.655678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597412, 40.063480, 49.801998>,  <36.314438, 39.920460, 50.045864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597412, 40.063480, 49.801998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432373, 0.463419, 0.773496,
		0.559098, -0.810800, 0.173241,
		0.707434, 0.357555, -0.609665,
		36.809643, 40.170746, 49.619099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921295, 39.868610, 50.443237>,  <36.314438, 39.920460, 50.045864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921295, 39.868610, 50.443237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000309, 40.135254, 50.155731>,  <37.047718, 40.295238, 49.983231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000309, 40.135254, 50.155731>,  <36.921295, 39.868610, 50.443237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000309, 40.135254, 50.155731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315219, 0.651075, 0.690462,
		0.928233, -0.362959, -0.081515,
		0.197538, 0.666605, -0.718760,
		37.059570, 40.335236, 49.940102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614590, 40.178246, 50.689285>,  <36.921295, 39.868610, 50.443237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614590, 40.178246, 50.689285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437939, 40.415516, 50.420033>,  <37.331947, 40.557880, 50.258480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437939, 40.415516, 50.420033>,  <37.614590, 40.178246, 50.689285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437939, 40.415516, 50.420033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161708, 0.790595, 0.590601,
		0.882504, 0.151977, -0.445073,
		-0.441630, 0.593180, -0.673127,
		37.305450, 40.593472, 50.218094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932629, 40.842243, 50.688259>,  <37.614590, 40.178246, 50.689285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932629, 40.842243, 50.688259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605785, 40.954803, 50.487000>,  <37.409679, 41.022339, 50.366245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605785, 40.954803, 50.487000>,  <37.932629, 40.842243, 50.688259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605785, 40.954803, 50.487000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054528, 0.831136, 0.553389,
		0.573904, 0.479612, -0.663781,
		-0.817105, 0.281398, -0.503145,
		37.360653, 41.039223, 50.336056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053925, 41.612602, 50.633549>,  <37.932629, 40.842243, 50.688259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053925, 41.612602, 50.633549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671902, 41.498013, 50.603092>,  <37.442688, 41.429260, 50.584816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671902, 41.498013, 50.603092>,  <38.053925, 41.612602, 50.633549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671902, 41.498013, 50.603092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276201, 0.766803, 0.579419,
		-0.107598, 0.574410, -0.811465,
		-0.955058, -0.286471, -0.076146,
		37.385384, 41.412071, 50.580250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377674, 42.287075, 50.750797>,  <38.053925, 41.612602, 50.633549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377674, 42.287075, 50.750797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672062, 42.535034, 50.641926>,  <38.848694, 42.683807, 50.576603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672062, 42.535034, 50.641926>,  <38.377674, 42.287075, 50.750797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672062, 42.535034, 50.641926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155900, -0.546396, -0.822889,
		-0.658820, 0.563189, -0.498773,
		0.735969, 0.619895, -0.272176,
		38.892853, 42.721001, 50.560272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209518, 42.583889, 50.126820>,  <38.377674, 42.287075, 50.750797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209518, 42.583889, 50.126820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609051, 42.592457, 50.144157>,  <38.848770, 42.597599, 50.154560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609051, 42.592457, 50.144157>,  <38.209518, 42.583889, 50.126820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609051, 42.592457, 50.144157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048283, -0.488938, -0.870982,
		0.002536, 0.872056, -0.489400,
		0.998831, 0.021421, 0.043346,
		38.908699, 42.598885, 50.157162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385128, 42.627380, 49.454124>,  <38.209518, 42.583889, 50.126820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385128, 42.627380, 49.454124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736214, 42.510204, 49.605812>,  <38.946865, 42.439899, 49.696823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736214, 42.510204, 49.605812>,  <38.385128, 42.627380, 49.454124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736214, 42.510204, 49.605812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197166, -0.500505, -0.842983,
		0.436746, 0.814665, -0.381541,
		0.877712, -0.292942, 0.379218,
		38.999527, 42.422321, 49.719578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859627, 42.902622, 48.978138>,  <38.385128, 42.627380, 49.454124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859627, 42.902622, 48.978138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045609, 42.604603, 49.169434>,  <39.157196, 42.425789, 49.284210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045609, 42.604603, 49.169434>,  <38.859627, 42.902622, 48.978138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045609, 42.604603, 49.169434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038450, -0.522677, -0.851663,
		0.884499, 0.414374, -0.214375,
		0.464956, -0.745052, 0.478240,
		39.185097, 42.381088, 49.312904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453072, 42.728878, 48.626480>,  <38.859627, 42.902622, 48.978138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453072, 42.728878, 48.626480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398232, 42.400650, 48.848423>,  <39.365326, 42.203712, 48.981586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398232, 42.400650, 48.848423>,  <39.453072, 42.728878, 48.626480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398232, 42.400650, 48.848423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164640, -0.571231, -0.804108,
		0.976779, -0.018894, 0.213416,
		-0.137102, -0.820572, 0.554855,
		39.357101, 42.154480, 49.014881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021000, 42.229198, 48.456791>,  <39.453072, 42.728878, 48.626480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021000, 42.229198, 48.456791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706314, 42.042049, 48.617874>,  <39.517502, 41.929760, 48.714523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706314, 42.042049, 48.617874>,  <40.021000, 42.229198, 48.456791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706314, 42.042049, 48.617874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014266, -0.665957, -0.745853,
		0.617149, -0.581031, 0.530595,
		-0.786717, -0.467872, 0.402705,
		39.470299, 41.901688, 48.738686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077713, 41.596954, 48.081612>,  <40.021000, 42.229198, 48.456791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077713, 41.596954, 48.081612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721321, 41.550053, 48.257065>,  <39.507484, 41.521912, 48.362339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721321, 41.550053, 48.257065>,  <40.077713, 41.596954, 48.081612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721321, 41.550053, 48.257065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258696, -0.662831, -0.702660,
		0.373128, -0.739532, 0.560239,
		-0.890983, -0.117251, 0.438635,
		39.454025, 41.514877, 48.388657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995823, 40.856144, 48.141533>,  <40.077713, 41.596954, 48.081612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995823, 40.856144, 48.141533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631989, 41.021976, 48.152695>,  <39.413689, 41.121475, 48.159393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631989, 41.021976, 48.152695>,  <39.995823, 40.856144, 48.141533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631989, 41.021976, 48.152695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324403, -0.666558, -0.671166,
		-0.259650, -0.619535, 0.740782,
		-0.909585, 0.414580, 0.027907,
		39.359112, 41.146351, 48.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492592, 40.342548, 48.189079>,  <39.995823, 40.856144, 48.141533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492592, 40.342548, 48.189079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253647, 40.628273, 48.043247>,  <39.110279, 40.799709, 47.955750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253647, 40.628273, 48.043247>,  <39.492592, 40.342548, 48.189079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253647, 40.628273, 48.043247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396780, -0.658305, -0.639687,
		-0.696940, -0.237468, 0.676671,
		-0.597361, 0.714313, -0.364576,
		39.074440, 40.842567, 47.933876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827347, 40.016582, 48.087059>,  <39.492592, 40.342548, 48.189079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827347, 40.016582, 48.087059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819237, 40.337063, 47.847839>,  <38.814369, 40.529350, 47.704308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819237, 40.337063, 47.847839>,  <38.827347, 40.016582, 48.087059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819237, 40.337063, 47.847839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429367, -0.547182, -0.718495,
		-0.902902, 0.242215, 0.355104,
		-0.020276, 0.801201, -0.598051,
		38.813152, 40.577423, 47.668423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165756, 40.049694, 47.857155>,  <38.827347, 40.016582, 48.087059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165756, 40.049694, 47.857155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346104, 40.310993, 47.613850>,  <38.454311, 40.467773, 47.467869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346104, 40.310993, 47.613850>,  <38.165756, 40.049694, 47.857155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346104, 40.310993, 47.613850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456534, -0.416804, -0.786035,
		-0.767002, 0.632092, 0.110306,
		0.450871, 0.653249, -0.608261,
		38.481365, 40.506969, 47.431370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603432, 40.237537, 47.363319>,  <38.165756, 40.049694, 47.857155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603432, 40.237537, 47.363319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969028, 40.297867, 47.212654>,  <38.188385, 40.334064, 47.122253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969028, 40.297867, 47.212654>,  <37.603432, 40.237537, 47.363319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969028, 40.297867, 47.212654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280965, -0.434475, -0.855739,
		-0.292722, 0.887965, -0.354728,
		0.913987, 0.150827, -0.376668,
		38.243225, 40.343117, 47.099655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333557, 40.398811, 46.739685>,  <37.603432, 40.237537, 47.363319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333557, 40.398811, 46.739685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714928, 40.285362, 46.698616>,  <37.943748, 40.217293, 46.673973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714928, 40.285362, 46.698616>,  <37.333557, 40.398811, 46.739685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714928, 40.285362, 46.698616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223113, -0.434046, -0.872826,
		0.202991, 0.855080, -0.477110,
		0.953423, -0.283625, -0.102672,
		38.000954, 40.200275, 46.667816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615829, 40.467884, 46.040680>,  <37.333557, 40.398811, 46.739685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615829, 40.467884, 46.040680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821507, 40.178326, 46.224674>,  <37.944912, 40.004593, 46.335072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821507, 40.178326, 46.224674>,  <37.615829, 40.467884, 46.040680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821507, 40.178326, 46.224674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156203, -0.448309, -0.880125,
		0.843333, 0.524402, -0.117441,
		0.514189, -0.723893, 0.459987,
		37.975761, 39.961159, 46.362671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078285, 40.281033, 45.495956>,  <37.615829, 40.467884, 46.040680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078285, 40.281033, 45.495956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106274, 39.970394, 45.746395>,  <38.123066, 39.784012, 45.896660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106274, 39.970394, 45.746395>,  <38.078285, 40.281033, 45.495956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106274, 39.970394, 45.746395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066887, -0.622573, -0.779698,
		0.995304, 0.096433, 0.008383,
		0.069970, -0.776597, 0.626100,
		38.127266, 39.737415, 45.934223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606182, 39.849827, 45.214001>,  <38.078285, 40.281033, 45.495956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606182, 39.849827, 45.214001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367744, 39.613884, 45.431896>,  <38.224682, 39.472321, 45.562634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367744, 39.613884, 45.431896>,  <38.606182, 39.849827, 45.214001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367744, 39.613884, 45.431896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049874, -0.704343, -0.708106,
		0.801361, -0.394932, 0.449276,
		-0.596098, -0.589856, 0.544736,
		38.188915, 39.436928, 45.595318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837196, 39.223434, 44.979225>,  <38.606182, 39.849827, 45.214001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837196, 39.223434, 44.979225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497559, 39.152596, 45.178295>,  <38.293777, 39.110092, 45.297737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497559, 39.152596, 45.178295>,  <38.837196, 39.223434, 44.979225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497559, 39.152596, 45.178295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274456, -0.657092, -0.702071,
		0.451354, -0.732712, 0.509325,
		-0.849090, -0.177095, 0.497679,
		38.242832, 39.099468, 45.327599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762596, 38.491238, 45.122257>,  <38.837196, 39.223434, 44.979225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762596, 38.491238, 45.122257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388615, 38.633118, 45.125244>,  <38.164227, 38.718246, 45.127037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388615, 38.633118, 45.125244>,  <38.762596, 38.491238, 45.122257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388615, 38.633118, 45.125244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296053, -0.768430, -0.567334,
		-0.195495, -0.532640, 0.823454,
		-0.934952, 0.354697, 0.007465,
		38.108128, 38.739529, 45.127483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421936, 37.928871, 45.357330>,  <38.762596, 38.491238, 45.122257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421936, 37.928871, 45.357330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141655, 38.158375, 45.187706>,  <37.973488, 38.296078, 45.085930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141655, 38.158375, 45.187706>,  <38.421936, 37.928871, 45.357330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141655, 38.158375, 45.187706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223961, -0.741215, -0.632805,
		-0.677394, -0.348433, 0.647867,
		-0.700699, 0.573755, -0.424059,
		37.931446, 38.330502, 45.060490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018242, 37.436131, 45.126640>,  <38.421936, 37.928871, 45.357330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018242, 37.436131, 45.126640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900314, 37.744946, 44.901413>,  <37.829559, 37.930233, 44.766277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900314, 37.744946, 44.901413>,  <38.018242, 37.436131, 45.126640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900314, 37.744946, 44.901413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362748, -0.635574, -0.681513,
		-0.884022, 0.003330, 0.467433,
		-0.294819, 0.772033, -0.563069,
		37.811867, 37.976555, 44.732491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367134, 37.276512, 44.948021>,  <38.018242, 37.436131, 45.126640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367134, 37.276512, 44.948021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475773, 37.551083, 44.678188>,  <37.540955, 37.715824, 44.516289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475773, 37.551083, 44.678188>,  <37.367134, 37.276512, 44.948021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475773, 37.551083, 44.678188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428983, -0.541097, -0.723317,
		-0.861516, 0.485831, 0.147507,
		0.271594, 0.686427, -0.674577,
		37.557251, 37.757011, 44.475815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817627, 37.176968, 44.556389>,  <37.367134, 37.276512, 44.948021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817627, 37.176968, 44.556389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066868, 37.392078, 44.329216>,  <37.216412, 37.521145, 44.192913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066868, 37.392078, 44.329216>,  <36.817627, 37.176968, 44.556389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066868, 37.392078, 44.329216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227904, -0.569772, -0.789569,
		-0.748202, 0.621413, -0.232463,
		0.623100, 0.537778, -0.567927,
		37.253799, 37.553413, 44.158836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411964, 37.371338, 43.813709>,  <36.817627, 37.176968, 44.556389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411964, 37.371338, 43.813709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807026, 37.395607, 43.755928>,  <37.044064, 37.410168, 43.721260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807026, 37.395607, 43.755928>,  <36.411964, 37.371338, 43.813709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807026, 37.395607, 43.755928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111822, -0.372857, -0.921126,
		-0.109747, 0.925903, -0.361467,
		0.987649, 0.060671, -0.144456,
		37.103321, 37.413807, 43.712589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544819, 37.619820, 43.197277>,  <36.411964, 37.371338, 43.813709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544819, 37.619820, 43.197277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890110, 37.429359, 43.264351>,  <37.097286, 37.315083, 43.304596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890110, 37.429359, 43.264351>,  <36.544819, 37.619820, 43.197277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890110, 37.429359, 43.264351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025988, -0.289806, -0.956733,
		0.504142, 0.830238, -0.237795,
		0.863230, -0.476149, 0.167680,
		37.149078, 37.286514, 43.314655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873482, 37.703060, 42.662361>,  <36.544819, 37.619820, 43.197277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873482, 37.703060, 42.662361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079678, 37.388916, 42.799465>,  <37.203396, 37.200428, 42.881725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079678, 37.388916, 42.799465>,  <36.873482, 37.703060, 42.662361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079678, 37.388916, 42.799465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051151, -0.371083, -0.927190,
		0.855371, 0.495485, -0.151116,
		0.515485, -0.785361, 0.342758,
		37.234322, 37.153309, 42.902294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344234, 37.523376, 42.143234>,  <36.873482, 37.703060, 42.662361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344234, 37.523376, 42.143234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365044, 37.188946, 42.361691>,  <37.377529, 36.988285, 42.492764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365044, 37.188946, 42.361691>,  <37.344234, 37.523376, 42.143234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365044, 37.188946, 42.361691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394464, -0.485202, -0.780370,
		0.917438, 0.256028, 0.304561,
		0.052022, -0.836079, 0.546137,
		37.380650, 36.938122, 42.525532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031952, 37.314056, 42.197895>,  <37.344234, 37.523376, 42.143234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031952, 37.314056, 42.197895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785667, 36.999802, 42.222172>,  <37.637897, 36.811249, 42.236740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785667, 36.999802, 42.222172>,  <38.031952, 37.314056, 42.197895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785667, 36.999802, 42.222172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532381, -0.471546, -0.703004,
		0.580923, -0.400532, 0.708591,
		-0.615709, -0.785632, 0.060696,
		37.600956, 36.764111, 42.240379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409863, 36.861877, 41.993671>,  <38.031952, 37.314056, 42.197895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409863, 36.861877, 41.993671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056915, 36.673687, 41.989948>,  <37.845146, 36.560772, 41.987713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056915, 36.673687, 41.989948>,  <38.409863, 36.861877, 41.993671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056915, 36.673687, 41.989948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373142, -0.687493, -0.622992,
		0.286700, -0.553181, 0.782173,
		-0.882365, -0.470473, -0.009311,
		37.792206, 36.532543, 41.987156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588890, 36.164783, 42.091045>,  <38.409863, 36.861877, 41.993671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588890, 36.164783, 42.091045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245171, 36.219307, 41.893856>,  <38.038937, 36.252022, 41.775543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245171, 36.219307, 41.893856>,  <38.588890, 36.164783, 42.091045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245171, 36.219307, 41.893856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344138, -0.558941, -0.754423,
		-0.378379, -0.817927, 0.433388,
		-0.859301, 0.136313, -0.492971,
		37.987381, 36.260201, 41.745964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503574, 35.519543, 41.648300>,  <38.588890, 36.164783, 42.091045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503574, 35.519543, 41.648300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233040, 35.769787, 41.492771>,  <38.070721, 35.919933, 41.399452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233040, 35.769787, 41.492771>,  <38.503574, 35.519543, 41.648300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233040, 35.769787, 41.492771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262217, -0.288797, -0.920782,
		-0.688344, -0.724710, 0.031276,
		-0.676332, 0.625613, -0.388823,
		38.030140, 35.957470, 41.376125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136871, 35.131744, 41.133347>,  <38.503574, 35.519543, 41.648300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136871, 35.131744, 41.133347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117313, 35.517227, 41.028366>,  <38.105579, 35.748516, 40.965378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117313, 35.517227, 41.028366>,  <38.136871, 35.131744, 41.133347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117313, 35.517227, 41.028366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224967, -0.245387, -0.942961,
		-0.973139, -0.105151, -0.204803,
		-0.048897, 0.963706, -0.262451,
		38.102646, 35.806339, 40.949631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963001, 35.090698, 40.480793>,  <38.136871, 35.131744, 41.133347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963001, 35.090698, 40.480793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092930, 35.467560, 40.513874>,  <38.170887, 35.693676, 40.533722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092930, 35.467560, 40.513874>,  <37.963001, 35.090698, 40.480793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092930, 35.467560, 40.513874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196992, 0.018127, -0.980237,
		-0.925033, 0.334692, -0.179709,
		0.324820, 0.942153, 0.082700,
		38.190376, 35.750206, 40.538685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708088, 35.425480, 39.893894>,  <37.963001, 35.090698, 40.480793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708088, 35.425480, 39.893894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010075, 35.657383, 40.016476>,  <38.191265, 35.796524, 40.090023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010075, 35.657383, 40.016476>,  <37.708088, 35.425480, 39.893894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010075, 35.657383, 40.016476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381210, -0.007761, -0.924456,
		-0.533578, 0.814755, -0.226866,
		0.754966, 0.579753, 0.306452,
		38.236565, 35.831310, 40.108410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806263, 35.884476, 39.349159>,  <37.708088, 35.425480, 39.893894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806263, 35.884476, 39.349159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159374, 35.926273, 39.532372>,  <38.371239, 35.951351, 39.642300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159374, 35.926273, 39.532372>,  <37.806263, 35.884476, 39.349159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159374, 35.926273, 39.532372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469761, -0.208132, -0.857908,
		0.005684, 0.972503, -0.232821,
		0.882775, 0.104494, 0.458027,
		38.424206, 35.957623, 39.669781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244736, 36.316849, 38.931328>,  <37.806263, 35.884476, 39.349159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244736, 36.316849, 38.931328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502190, 36.125542, 39.170322>,  <38.656662, 36.010757, 39.313721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502190, 36.125542, 39.170322>,  <38.244736, 36.316849, 38.931328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502190, 36.125542, 39.170322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629523, -0.113133, -0.768701,
		0.435238, 0.870898, 0.228262,
		0.643637, -0.478265, 0.597490,
		38.695282, 35.982063, 39.349571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940014, 36.561844, 38.777245>,  <38.244736, 36.316849, 38.931328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940014, 36.561844, 38.777245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010765, 36.216038, 38.965427>,  <39.053215, 36.008553, 39.078335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010765, 36.216038, 38.965427>,  <38.940014, 36.561844, 38.777245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010765, 36.216038, 38.965427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621184, -0.272709, -0.734684,
		0.763443, 0.422187, 0.488787,
		0.176877, -0.864516, 0.470454,
		39.063828, 35.956684, 39.106564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681938, 36.412888, 38.757877>,  <38.940014, 36.561844, 38.777245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681938, 36.412888, 38.757877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514305, 36.051712, 38.795959>,  <39.413723, 35.835007, 38.818810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514305, 36.051712, 38.795959>,  <39.681938, 36.412888, 38.757877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514305, 36.051712, 38.795959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704994, -0.389692, -0.592557,
		0.572146, -0.181209, 0.799882,
		-0.419084, -0.902941, 0.095210,
		39.388580, 35.780830, 38.824524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186905, 35.969776, 38.928722>,  <39.681938, 36.412888, 38.757877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186905, 35.969776, 38.928722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931038, 35.709789, 38.764595>,  <39.777519, 35.553795, 38.666119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931038, 35.709789, 38.764595>,  <40.186905, 35.969776, 38.928722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931038, 35.709789, 38.764595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742788, -0.385387, -0.547487,
		0.197717, -0.654992, 0.729310,
		-0.639667, -0.649970, -0.410323,
		39.739140, 35.514797, 38.641499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569561, 35.243584, 38.827213>,  <40.186905, 35.969776, 38.928722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569561, 35.243584, 38.827213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245579, 35.238674, 38.592667>,  <40.051189, 35.235729, 38.451939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245579, 35.238674, 38.592667>,  <40.569561, 35.243584, 38.827213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245579, 35.238674, 38.592667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529964, -0.443572, -0.722760,
		-0.251222, -0.896155, 0.365779,
		-0.809954, -0.012277, -0.586365,
		40.002594, 35.234993, 38.416756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789848, 34.755871, 38.324661>,  <40.569561, 35.243584, 38.827213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789848, 34.755871, 38.324661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445343, 34.880859, 38.164371>,  <40.238640, 34.955853, 38.068195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445343, 34.880859, 38.164371>,  <40.789848, 34.755871, 38.324661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445343, 34.880859, 38.164371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319473, -0.280292, -0.905193,
		-0.395166, -0.907633, 0.141580,
		-0.861267, 0.312470, -0.400726,
		40.186962, 34.974602, 38.044155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546707, 34.211792, 37.843899>,  <40.789848, 34.755871, 38.324661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546707, 34.211792, 37.843899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386162, 34.557228, 37.721840>,  <40.289833, 34.764492, 37.648605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386162, 34.557228, 37.721840>,  <40.546707, 34.211792, 37.843899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386162, 34.557228, 37.721840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382048, -0.144939, -0.912706,
		-0.832434, -0.482908, -0.271760,
		-0.401365, 0.863593, -0.305146,
		40.265751, 34.816307, 37.630295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236755, 34.061497, 37.207623>,  <40.546707, 34.211792, 37.843899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236755, 34.061497, 37.207623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333241, 34.449047, 37.229855>,  <40.391132, 34.681580, 37.243195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333241, 34.449047, 37.229855>,  <40.236755, 34.061497, 37.207623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333241, 34.449047, 37.229855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573265, -0.096039, -0.813722,
		-0.783059, 0.228147, -0.578591,
		0.241216, 0.968878, 0.055584,
		40.405605, 34.739712, 37.246529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745953, 34.116802, 36.702732>,  <40.236755, 34.061497, 37.207623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745953, 34.116802, 36.702732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743378, 34.490192, 36.846161>,  <40.741833, 34.714226, 36.932217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743378, 34.490192, 36.846161>,  <40.745953, 34.116802, 36.702732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743378, 34.490192, 36.846161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790652, 0.224289, -0.569704,
		-0.612231, 0.279840, -0.739501,
		-0.006436, 0.933479, 0.358574,
		40.741447, 34.770237, 36.953732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843235, 34.662354, 36.165485>,  <40.745953, 34.116802, 36.702732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843235, 34.662354, 36.165485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974159, 34.842567, 36.497723>,  <41.052711, 34.950695, 36.697067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974159, 34.842567, 36.497723>,  <40.843235, 34.662354, 36.165485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974159, 34.842567, 36.497723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873660, 0.190587, -0.447655,
		-0.359983, 0.872181, -0.331229,
		0.327308, 0.450530, 0.830597,
		41.072353, 34.977726, 36.746902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096931, 35.325085, 35.987610>,  <40.843235, 34.662354, 36.165485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096931, 35.325085, 35.987610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305206, 35.234612, 36.316906>,  <41.430172, 35.180328, 36.514484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305206, 35.234612, 36.316906>,  <41.096931, 35.325085, 35.987610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305206, 35.234612, 36.316906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849307, 0.235422, -0.472498,
		-0.086939, 0.945209, 0.314678,
		0.520691, -0.226180, 0.823239,
		41.461414, 35.166756, 36.563877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847145, 35.420334, 35.728340>,  <41.096931, 35.325085, 35.987610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847145, 35.420334, 35.728340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909271, 35.724068, 35.475582>,  <41.946548, 35.906307, 35.323925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909271, 35.724068, 35.475582>,  <41.847145, 35.420334, 35.728340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909271, 35.724068, 35.475582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573279, -0.590212, -0.568332,
		-0.804505, -0.273984, -0.526976,
		0.155314, 0.759330, -0.631898,
		41.955864, 35.951866, 35.286011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337200, 35.320267, 35.358791>,  <41.847145, 35.420334, 35.728340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337200, 35.320267, 35.358791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733257, 35.367130, 35.389477>,  <42.970894, 35.395248, 35.407887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733257, 35.367130, 35.389477>,  <42.337200, 35.320267, 35.358791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733257, 35.367130, 35.389477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070705, 0.891074, -0.448317,
		-0.120884, 0.438475, 0.890577,
		0.990146, 0.117162, 0.076714,
		43.030300, 35.402279, 35.412491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456177, 36.026379, 35.603649>,  <42.337200, 35.320267, 35.358791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456177, 36.026379, 35.603649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708469, 35.835522, 35.358860>,  <42.859844, 35.721008, 35.211987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708469, 35.835522, 35.358860>,  <42.456177, 36.026379, 35.603649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708469, 35.835522, 35.358860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236688, 0.632756, -0.737291,
		0.739022, 0.609881, 0.286167,
		0.630733, -0.477142, -0.611973,
		42.897690, 35.692379, 35.175270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757759, 36.612511, 35.370998>,  <42.456177, 36.026379, 35.603649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757759, 36.612511, 35.370998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836742, 36.325394, 35.103928>,  <42.884132, 36.153126, 34.943687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836742, 36.325394, 35.103928>,  <42.757759, 36.612511, 35.370998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836742, 36.325394, 35.103928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110045, 0.660547, -0.742676,
		0.974115, 0.220123, 0.051443,
		0.197461, -0.717790, -0.667672,
		42.895981, 36.110058, 34.903625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252747, 36.900806, 34.915821>,  <42.757759, 36.612511, 35.370998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252747, 36.900806, 34.915821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106102, 36.596069, 34.702209>,  <43.018116, 36.413227, 34.574043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106102, 36.596069, 34.702209>,  <43.252747, 36.900806, 34.915821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106102, 36.596069, 34.702209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149840, 0.614853, -0.774277,
		0.918229, -0.203840, -0.339567,
		-0.366612, -0.761844, -0.534032,
		42.996117, 36.367516, 34.542000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577351, 36.958935, 34.199738>,  <43.252747, 36.900806, 34.915821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577351, 36.958935, 34.199738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262333, 36.714329, 34.169209>,  <43.073322, 36.567566, 34.150890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262333, 36.714329, 34.169209>,  <43.577351, 36.958935, 34.199738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262333, 36.714329, 34.169209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301377, 0.490210, -0.817843,
		0.537537, -0.621084, -0.570358,
		-0.787544, -0.611514, -0.076325,
		43.026070, 36.530876, 34.146313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581768, 36.647476, 33.477791>,  <43.577351, 36.958935, 34.199738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581768, 36.647476, 33.477791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202553, 36.607788, 33.598701>,  <42.975021, 36.583977, 33.671249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202553, 36.607788, 33.598701>,  <43.581768, 36.647476, 33.477791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202553, 36.607788, 33.598701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313056, 0.460257, -0.830758,
		-0.056698, -0.882224, -0.467404,
		-0.948041, -0.099222, 0.302281,
		42.918140, 36.578022, 33.689384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214329, 36.551472, 32.961349>,  <43.581768, 36.647476, 33.477791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214329, 36.551472, 32.961349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920452, 36.675446, 33.202732>,  <42.744125, 36.749828, 33.347561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920452, 36.675446, 33.202732>,  <43.214329, 36.551472, 32.961349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920452, 36.675446, 33.202732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445606, 0.450254, -0.773762,
		-0.511526, -0.837384, -0.192690,
		-0.734695, 0.309935, 0.603460,
		42.700043, 36.768425, 33.383770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633423, 36.293415, 32.670868>,  <43.214329, 36.551472, 32.961349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633423, 36.293415, 32.670868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530067, 36.608398, 32.894707>,  <42.468052, 36.797390, 33.029011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530067, 36.608398, 32.894707>,  <42.633423, 36.293415, 32.670868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530067, 36.608398, 32.894707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337204, 0.469309, -0.816114,
		-0.905278, -0.399574, 0.144268,
		-0.258391, 0.787458, 0.559593,
		42.452549, 36.844635, 33.062584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092884, 36.554729, 32.328323>,  <42.633423, 36.293415, 32.670868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092884, 36.554729, 32.328323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175686, 36.864056, 32.568031>,  <42.225368, 37.049652, 32.711857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175686, 36.864056, 32.568031>,  <42.092884, 36.554729, 32.328323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175686, 36.864056, 32.568031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391379, 0.626848, -0.673708,
		-0.896643, -0.095079, 0.432424,
		0.207009, 0.773318, 0.599271,
		42.237789, 37.096050, 32.747814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598175, 37.059841, 32.183277>,  <42.092884, 36.554729, 32.328323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598175, 37.059841, 32.183277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888309, 37.280830, 32.347546>,  <42.062389, 37.413425, 32.446106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888309, 37.280830, 32.347546>,  <41.598175, 37.059841, 32.183277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888309, 37.280830, 32.347546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218283, 0.750372, -0.623935,
		-0.652867, 0.362922, 0.664870,
		0.725340, 0.552476, 0.410673,
		42.105911, 37.446575, 32.470749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373478, 37.785038, 32.360893>,  <41.598175, 37.059841, 32.183277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373478, 37.785038, 32.360893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769741, 37.831665, 32.332558>,  <42.007500, 37.859642, 32.315556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769741, 37.831665, 32.332558>,  <41.373478, 37.785038, 32.360893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769741, 37.831665, 32.332558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134903, 0.760530, -0.635133,
		-0.020164, 0.638753, 0.769148,
		0.990653, 0.116568, -0.070834,
		42.066936, 37.866634, 32.311306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551716, 38.541027, 32.441097>,  <41.373478, 37.785038, 32.360893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551716, 38.541027, 32.441097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895088, 38.419014, 32.276150>,  <42.101112, 38.345806, 32.177181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895088, 38.419014, 32.276150>,  <41.551716, 38.541027, 32.441097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895088, 38.419014, 32.276150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066169, 0.863095, -0.500688,
		0.508641, 0.402521, 0.761092,
		0.858433, -0.305031, -0.412371,
		42.152618, 38.327503, 32.152439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019474, 39.022621, 32.567429>,  <41.551716, 38.541027, 32.441097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019474, 39.022621, 32.567429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180107, 38.824059, 32.259583>,  <42.276485, 38.704922, 32.074875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180107, 38.824059, 32.259583>,  <42.019474, 39.022621, 32.567429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180107, 38.824059, 32.259583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035009, 0.848063, -0.528738,
		0.915154, 0.185389, 0.357945,
		0.401582, -0.496408, -0.769617,
		42.300583, 38.675137, 32.028698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658386, 39.395443, 32.390732>,  <42.019474, 39.022621, 32.567429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658386, 39.395443, 32.390732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601891, 39.167992, 32.066578>,  <42.567993, 39.031521, 31.872086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601891, 39.167992, 32.066578>,  <42.658386, 39.395443, 32.390732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601891, 39.167992, 32.066578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308551, 0.752527, -0.581807,
		0.940663, -0.332218, 0.069164,
		-0.141239, -0.568625, -0.810381,
		42.559521, 38.997406, 31.823463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265106, 39.437389, 31.949986>,  <42.658386, 39.395443, 32.390732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265106, 39.437389, 31.949986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986916, 39.295685, 31.699926>,  <42.820000, 39.210663, 31.549891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986916, 39.295685, 31.699926>,  <43.265106, 39.437389, 31.949986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986916, 39.295685, 31.699926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357295, 0.584336, -0.728623,
		0.623421, -0.730102, -0.279815,
		-0.695475, -0.354262, -0.625150,
		42.778271, 39.189407, 31.512383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634567, 39.216888, 31.388292>,  <43.265106, 39.437389, 31.949986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634567, 39.216888, 31.388292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258080, 39.303699, 31.284748>,  <43.032188, 39.355785, 31.222622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258080, 39.303699, 31.284748>,  <43.634567, 39.216888, 31.388292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258080, 39.303699, 31.284748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337193, 0.649629, -0.681383,
		0.020284, -0.728616, -0.684622,
		-0.941217, 0.217028, -0.258861,
		42.975716, 39.368809, 31.207090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553093, 39.218056, 30.632082>,  <43.634567, 39.216888, 31.388292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553093, 39.218056, 30.632082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224270, 39.419769, 30.737848>,  <43.026974, 39.540798, 30.801308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224270, 39.419769, 30.737848>,  <43.553093, 39.218056, 30.632082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224270, 39.419769, 30.737848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174795, 0.665452, -0.725686,
		-0.541905, -0.550340, -0.635188,
		-0.822061, 0.504281, 0.264415,
		42.977650, 39.571053, 30.817173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090221, 39.326981, 29.954628>,  <43.553093, 39.218056, 30.632082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090221, 39.326981, 29.954628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003273, 39.595985, 30.237608>,  <42.951103, 39.757385, 30.407396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003273, 39.595985, 30.237608>,  <43.090221, 39.326981, 29.954628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003273, 39.595985, 30.237608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154258, 0.739339, -0.655425,
		-0.963823, -0.033340, -0.264449,
		-0.217369, 0.672507, 0.707449,
		42.938061, 39.797737, 30.449842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580696, 39.566978, 29.632364>,  <43.090221, 39.326981, 29.954628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580696, 39.566978, 29.632364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723537, 39.817417, 29.909632>,  <42.809242, 39.967678, 30.075993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723537, 39.817417, 29.909632>,  <42.580696, 39.566978, 29.632364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723537, 39.817417, 29.909632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015959, 0.746081, -0.665664,
		-0.933930, 0.226646, 0.276417,
		0.357099, 0.626095, 0.693171,
		42.830666, 40.005245, 30.117582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214718, 40.213985, 29.439800>,  <42.580696, 39.566978, 29.632364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214718, 40.213985, 29.439800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513611, 40.335983, 29.675978>,  <42.692947, 40.409184, 29.817684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513611, 40.335983, 29.675978>,  <42.214718, 40.213985, 29.439800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513611, 40.335983, 29.675978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074756, 0.844251, -0.530709,
		-0.660345, 0.440702, 0.608051,
		0.747232, 0.304996, 0.590442,
		42.737782, 40.427483, 29.853111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039749, 40.930904, 29.654690>,  <42.214718, 40.213985, 29.439800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039749, 40.930904, 29.654690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431690, 40.913673, 29.732697>,  <42.666855, 40.903336, 29.779501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431690, 40.913673, 29.732697>,  <42.039749, 40.930904, 29.654690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431690, 40.913673, 29.732697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097545, 0.955291, -0.279112,
		-0.174276, 0.292512, 0.940247,
		0.979853, -0.043074, 0.195017,
		42.725647, 40.900753, 29.791203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238640, 41.376617, 30.156157>,  <42.039749, 40.930904, 29.654690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238640, 41.376617, 30.156157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573071, 41.310123, 29.947031>,  <42.773731, 41.270226, 29.821556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573071, 41.310123, 29.947031>,  <42.238640, 41.376617, 30.156157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573071, 41.310123, 29.947031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048964, 0.971794, -0.230692,
		0.546418, 0.167278, 0.820637,
		0.836080, -0.166236, -0.522815,
		42.823895, 41.260254, 29.790186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726139, 41.793522, 30.450077>,  <42.238640, 41.376617, 30.156157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726139, 41.793522, 30.450077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876556, 41.745571, 30.082552>,  <42.966808, 41.716801, 29.862036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876556, 41.745571, 30.082552>,  <42.726139, 41.793522, 30.450077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876556, 41.745571, 30.082552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070608, 0.992420, -0.100583,
		0.923907, -0.027052, 0.381659,
		0.376045, -0.119878, -0.918814,
		42.989368, 41.709606, 29.806908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404987, 42.200264, 30.268806>,  <42.726139, 41.793522, 30.450077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404987, 42.200264, 30.268806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126362, 42.167702, 29.983662>,  <42.959187, 42.148167, 29.812574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126362, 42.167702, 29.983662>,  <43.404987, 42.200264, 30.268806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126362, 42.167702, 29.983662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113572, 0.993527, -0.002479,
		0.708451, 0.079235, -0.701299,
		-0.696563, -0.081404, -0.712864,
		42.917393, 42.143280, 29.769802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885464, 42.752560, 30.012383>,  <43.404987, 42.200264, 30.268806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885464, 42.752560, 30.012383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929245, 43.093334, 30.217215>,  <43.955513, 43.297798, 30.340115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929245, 43.093334, 30.217215>,  <43.885464, 42.752560, 30.012383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929245, 43.093334, 30.217215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694474, 0.303040, -0.652589,
		-0.711145, 0.427053, -0.558479,
		0.109449, 0.851935, 0.512082,
		43.962078, 43.348915, 30.370840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032970, 42.532940, 30.725433>,  <43.885464, 42.752560, 30.012383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032970, 42.532940, 30.725433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359348, 42.562515, 30.954784>,  <44.555176, 42.580261, 31.092396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359348, 42.562515, 30.954784>,  <44.032970, 42.532940, 30.725433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359348, 42.562515, 30.954784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540856, 0.252701, -0.802257,
		-0.204213, 0.964715, 0.166199,
		0.815948, 0.073941, 0.573377,
		44.604134, 42.584698, 31.126797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468445, 43.144524, 30.667400>,  <44.032970, 42.532940, 30.725433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468445, 43.144524, 30.667400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706734, 42.836967, 30.760286>,  <44.849705, 42.652435, 30.816019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706734, 42.836967, 30.760286>,  <44.468445, 43.144524, 30.667400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.706734, 42.836967, 30.760286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555914, 0.186030, -0.810156,
		0.579723, 0.611718, 0.538259,
		0.595719, -0.768891, 0.232216,
		44.885448, 42.606300, 30.829950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190018, 43.356277, 30.598606>,  <44.468445, 43.144524, 30.667400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190018, 43.356277, 30.598606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128521, 42.965366, 30.540232>,  <45.091621, 42.730820, 30.505207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128521, 42.965366, 30.540232>,  <45.190018, 43.356277, 30.598606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128521, 42.965366, 30.540232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544940, 0.039343, -0.837552,
		0.824260, -0.208291, 0.526508,
		-0.153740, -0.977275, -0.145935,
		45.082397, 42.672184, 30.496450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673954, 43.148003, 30.204227>,  <45.190018, 43.356277, 30.598606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673954, 43.148003, 30.204227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452431, 42.820778, 30.142160>,  <45.319515, 42.624443, 30.104919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452431, 42.820778, 30.142160>,  <45.673954, 43.148003, 30.204227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452431, 42.820778, 30.142160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408872, -0.104845, -0.906549,
		0.725341, -0.565500, 0.392544,
		-0.553810, -0.818057, -0.155169,
		45.286289, 42.575359, 30.095610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076050, 42.598652, 29.989176>,  <45.673954, 43.148003, 30.204227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076050, 42.598652, 29.989176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713589, 42.505886, 29.847698>,  <45.496113, 42.450226, 29.762812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713589, 42.505886, 29.847698>,  <46.076050, 42.598652, 29.989176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713589, 42.505886, 29.847698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401947, -0.211968, -0.890790,
		0.131612, -0.949361, 0.285292,
		-0.906155, -0.231912, -0.353695,
		45.441742, 42.436314, 29.741589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243114, 42.146873, 29.526649>,  <46.076050, 42.598652, 29.989176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243114, 42.146873, 29.526649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852406, 42.183121, 29.448971>,  <45.617981, 42.204868, 29.402365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852406, 42.183121, 29.448971>,  <46.243114, 42.146873, 29.526649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852406, 42.183121, 29.448971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157484, -0.311035, -0.937260,
		-0.145335, -0.946068, 0.289538,
		-0.976769, 0.090619, -0.194195,
		45.559376, 42.210308, 29.390713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845608, 41.977921, 29.977604>,  <46.243114, 42.146873, 29.526649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845608, 41.977921, 29.977604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662609, 42.084126, 30.317062>,  <46.552811, 42.147850, 30.520737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662609, 42.084126, 30.317062>,  <46.845608, 41.977921, 29.977604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662609, 42.084126, 30.317062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290548, -0.857359, 0.424872,
		0.840404, 0.440950, 0.315093,
		-0.457495, 0.265515, 0.848646,
		46.525360, 42.163780, 30.571655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.413803, 41.805721, 30.487720>,  <46.845608, 41.977921, 29.977604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.413803, 41.805721, 30.487720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037170, 41.830513, 30.620127>,  <46.811188, 41.845390, 30.699572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037170, 41.830513, 30.620127>,  <47.413803, 41.805721, 30.487720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037170, 41.830513, 30.620127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145649, -0.811287, 0.566216,
		0.303647, 0.581353, 0.754869,
		-0.941587, 0.061984, 0.331018,
		46.754696, 41.849110, 30.719433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.354019, 41.809101, 31.222897>,  <47.413803, 41.805721, 30.487720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.354019, 41.809101, 31.222897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022587, 41.650135, 31.065157>,  <46.823727, 41.554756, 30.970512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022587, 41.650135, 31.065157>,  <47.354019, 41.809101, 31.222897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022587, 41.650135, 31.065157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185700, -0.859576, 0.476073,
		-0.528172, 0.321235, 0.786029,
		-0.828583, -0.397414, -0.394351,
		46.774014, 41.530910, 30.946852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031094, 41.367313, 31.770870>,  <47.354019, 41.809101, 31.222897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031094, 41.367313, 31.770870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877693, 41.222092, 31.431194>,  <46.785652, 41.134960, 31.227388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877693, 41.222092, 31.431194>,  <47.031094, 41.367313, 31.770870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877693, 41.222092, 31.431194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115964, -0.931145, 0.345718,
		-0.916230, 0.034109, 0.399199,
		-0.383504, -0.363050, -0.849187,
		46.762642, 41.113178, 31.176437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603184, 40.868271, 32.032860>,  <47.031094, 41.367313, 31.770870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603184, 40.868271, 32.032860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647079, 40.780529, 31.645077>,  <46.673416, 40.727882, 31.412409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647079, 40.780529, 31.645077>,  <46.603184, 40.868271, 32.032860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647079, 40.780529, 31.645077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184996, -0.962810, 0.196910,
		-0.976593, 0.157736, -0.146241,
		0.109743, -0.219355, -0.969454,
		46.680004, 40.714722, 31.354240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955692, 40.493153, 31.811335>,  <46.603184, 40.868271, 32.032860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955692, 40.493153, 31.811335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252491, 40.392277, 31.562870>,  <46.430569, 40.331749, 31.413792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252491, 40.392277, 31.562870>,  <45.955692, 40.493153, 31.811335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252491, 40.392277, 31.562870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232120, -0.965880, 0.114874,
		-0.628935, 0.058947, -0.775219,
		0.741998, -0.252192, -0.621159,
		46.475090, 40.316620, 31.376522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654613, 39.917236, 31.446295>,  <45.955692, 40.493153, 31.811335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654613, 39.917236, 31.446295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047394, 39.908512, 31.371153>,  <46.283062, 39.903278, 31.326069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047394, 39.908512, 31.371153>,  <45.654613, 39.917236, 31.446295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047394, 39.908512, 31.371153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017972, -0.978071, 0.207493,
		-0.188259, -0.207125, -0.960030,
		0.981955, -0.021809, -0.187853,
		46.341980, 39.901970, 31.314796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724735, 39.333889, 30.975201>,  <45.654613, 39.917236, 31.446295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724735, 39.333889, 30.975201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079208, 39.409687, 31.144331>,  <46.291893, 39.455166, 31.245810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079208, 39.409687, 31.144331>,  <45.724735, 39.333889, 30.975201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079208, 39.409687, 31.144331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097326, -0.968318, 0.229974,
		0.453007, -0.162646, -0.876545,
		0.886178, 0.189491, 0.422825,
		46.345062, 39.466534, 31.271179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080025, 38.826450, 30.744684>,  <45.724735, 39.333889, 30.975201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080025, 38.826450, 30.744684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257710, 38.974522, 31.071032>,  <46.364319, 39.063366, 31.266840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257710, 38.974522, 31.071032>,  <46.080025, 38.826450, 30.744684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257710, 38.974522, 31.071032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003484, -0.909929, 0.414750,
		0.895915, -0.187080, -0.402911,
		0.444212, 0.370177, 0.815871,
		46.390972, 39.085575, 31.315792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733799, 38.398376, 30.916891>,  <46.080025, 38.826450, 30.744684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733799, 38.398376, 30.916891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603378, 38.579281, 31.248951>,  <46.525124, 38.687824, 31.448187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603378, 38.579281, 31.248951>,  <46.733799, 38.398376, 30.916891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603378, 38.579281, 31.248951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119038, -0.890790, 0.438547,
		0.937827, 0.044171, 0.344282,
		-0.326054, 0.452264, 0.830148,
		46.505562, 38.714958, 31.497995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057758, 37.977112, 31.462967>,  <46.733799, 38.398376, 30.916891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057758, 37.977112, 31.462967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758259, 38.185001, 31.627533>,  <46.578560, 38.309738, 31.726273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758259, 38.185001, 31.627533>,  <47.057758, 37.977112, 31.462967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758259, 38.185001, 31.627533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212303, -0.776003, 0.593925,
		0.627940, 0.357354, 0.691368,
		-0.748745, 0.519729, 0.411416,
		46.533634, 38.340919, 31.750957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.162624, 37.773212, 32.142494>,  <47.057758, 37.977112, 31.462967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.162624, 37.773212, 32.142494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795349, 37.930870, 32.126575>,  <46.574986, 38.025463, 32.117023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795349, 37.930870, 32.126575>,  <47.162624, 37.773212, 32.142494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795349, 37.930870, 32.126575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359103, -0.785697, 0.503711,
		0.167262, 0.476793, 0.862955,
		-0.918187, 0.394142, -0.039801,
		46.519894, 38.049114, 32.114635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101673, 37.753956, 32.790817>,  <47.162624, 37.773212, 32.142494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101673, 37.753956, 32.790817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750374, 37.757847, 32.599579>,  <46.539593, 37.760181, 32.484837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750374, 37.757847, 32.599579>,  <47.101673, 37.753956, 32.790817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750374, 37.757847, 32.599579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264846, -0.842348, 0.469368,
		-0.398159, 0.538846, 0.742370,
		-0.878251, 0.009731, -0.478100,
		46.486897, 37.760765, 32.456150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.522087, 37.670834, 33.334492>,  <47.101673, 37.753956, 32.790817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.522087, 37.670834, 33.334492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348698, 37.568554, 32.988842>,  <46.244663, 37.507187, 32.781452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348698, 37.568554, 32.988842>,  <46.522087, 37.670834, 33.334492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348698, 37.568554, 32.988842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423567, -0.788568, 0.445815,
		-0.795418, 0.559266, 0.233521,
		-0.433476, -0.255698, -0.864128,
		46.218655, 37.491844, 32.729603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735126, 37.546860, 33.391632>,  <46.522087, 37.670834, 33.334492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735126, 37.546860, 33.391632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858562, 37.344524, 33.069416>,  <45.932625, 37.223122, 32.876087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858562, 37.344524, 33.069416>,  <45.735126, 37.546860, 33.391632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858562, 37.344524, 33.069416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376643, -0.842636, 0.384843,
		-0.873448, 0.184643, -0.450550,
		0.308591, -0.505837, -0.805544,
		45.951141, 37.192772, 32.827755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230919, 37.132580, 33.279808>,  <45.735126, 37.546860, 33.391632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230919, 37.132580, 33.279808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501553, 36.943398, 33.054050>,  <45.663933, 36.829887, 32.918598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501553, 36.943398, 33.054050>,  <45.230919, 37.132580, 33.279808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501553, 36.943398, 33.054050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383789, -0.880620, 0.277876,
		-0.628437, 0.028599, -0.777334,
		0.676589, -0.472960, -0.564390,
		45.704529, 36.801510, 32.884735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965950, 36.644161, 32.875340>,  <45.230919, 37.132580, 33.279808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965950, 36.644161, 32.875340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339447, 36.502789, 32.852680>,  <45.563545, 36.417965, 32.839085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339447, 36.502789, 32.852680>,  <44.965950, 36.644161, 32.875340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339447, 36.502789, 32.852680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315689, -0.887728, 0.335081,
		-0.168716, -0.294997, -0.940485,
		0.933743, -0.353434, -0.056647,
		45.619572, 36.396759, 32.835686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990116, 36.101967, 32.543091>,  <44.965950, 36.644161, 32.875340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990116, 36.101967, 32.543091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323685, 36.060165, 32.759850>,  <45.523827, 36.035084, 32.889904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323685, 36.060165, 32.759850>,  <44.990116, 36.101967, 32.543091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323685, 36.060165, 32.759850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282187, -0.924587, 0.255948,
		0.474280, -0.366357, -0.800525,
		0.833924, -0.104507, 0.541894,
		45.573860, 36.028812, 32.922417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089314, 35.350784, 32.539745>,  <44.990116, 36.101967, 32.543091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089314, 35.350784, 32.539745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341698, 35.482769, 32.820606>,  <45.493130, 35.561958, 32.989120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341698, 35.482769, 32.820606>,  <45.089314, 35.350784, 32.539745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341698, 35.482769, 32.820606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147280, -0.837647, 0.525982,
		0.761708, -0.435286, -0.479924,
		0.630959, 0.329962, 0.702151,
		45.530987, 35.581757, 33.031250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447178, 34.768845, 32.690208>,  <45.089314, 35.350784, 32.539745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447178, 34.768845, 32.690208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488911, 34.991123, 33.020134>,  <45.513950, 35.124489, 33.218090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488911, 34.991123, 33.020134>,  <45.447178, 34.768845, 32.690208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488911, 34.991123, 33.020134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121298, -0.816038, 0.565127,
		0.987118, -0.159011, -0.017737,
		0.104335, 0.555695, 0.824813,
		45.520210, 35.157833, 33.267578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070530, 34.666367, 33.127056>,  <45.447178, 34.768845, 32.690208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070530, 34.666367, 33.127056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766239, 34.805634, 33.346172>,  <45.583664, 34.889194, 33.477642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766239, 34.805634, 33.346172>,  <46.070530, 34.666367, 33.127056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766239, 34.805634, 33.346172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134912, -0.740711, 0.658138,
		0.634899, 0.574566, 0.516505,
		-0.760725, 0.348168, 0.547792,
		45.538021, 34.910084, 33.510509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269840, 34.582157, 33.814442>,  <46.070530, 34.666367, 33.127056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269840, 34.582157, 33.814442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877964, 34.639946, 33.870049>,  <45.642838, 34.674622, 33.903412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877964, 34.639946, 33.870049>,  <46.269840, 34.582157, 33.814442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877964, 34.639946, 33.870049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018698, -0.624497, 0.780804,
		0.199622, 0.767549, 0.609115,
		-0.979695, 0.144476, 0.139015,
		45.584057, 34.683289, 33.911755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341187, 34.640419, 34.478996>,  <46.269840, 34.582157, 33.814442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341187, 34.640419, 34.478996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256355, 34.268143, 34.359776>,  <46.205456, 34.044777, 34.288242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256355, 34.268143, 34.359776>,  <46.341187, 34.640419, 34.478996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256355, 34.268143, 34.359776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289799, -0.231381, 0.928697,
		-0.933295, 0.283331, -0.220643,
		-0.212076, -0.930691, -0.298056,
		46.192734, 33.988934, 34.270359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.883202, 34.102821, 34.568279>,  <46.341187, 34.640419, 34.478996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.883202, 34.102821, 34.568279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984035, 34.179100, 34.188786>,  <47.044537, 34.224869, 33.961090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984035, 34.179100, 34.188786>,  <46.883202, 34.102821, 34.568279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984035, 34.179100, 34.188786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431370, 0.855453, 0.286566,
		0.866242, -0.481492, 0.133382,
		0.252081, 0.190699, -0.948730,
		47.059662, 34.236309, 33.904167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721230, 34.381714, 34.457047>,  <46.883202, 34.102821, 34.568279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721230, 34.381714, 34.457047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498394, 34.499340, 34.146389>,  <47.364693, 34.569916, 33.959995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498394, 34.499340, 34.146389>,  <47.721230, 34.381714, 34.457047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498394, 34.499340, 34.146389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461648, 0.887050, 0.004732,
		0.690314, -0.355900, -0.629922,
		-0.557088, 0.294069, -0.776644,
		47.331268, 34.587563, 33.913395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268131, 34.884888, 34.551758>,  <47.721230, 34.381714, 34.457047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268131, 34.884888, 34.551758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565197, 34.977119, 34.803246>,  <47.743435, 35.032459, 34.954140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565197, 34.977119, 34.803246>,  <47.268131, 34.884888, 34.551758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.565197, 34.977119, 34.803246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614289, 0.608408, 0.502484,
		-0.266654, -0.759389, 0.593484,
		0.742661, 0.230581, 0.628718,
		47.787994, 35.046295, 34.991859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.895741, 43.188339, 42.065689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506496, 43.097298, 42.051495>,  <36.272949, 43.042671, 42.042976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506496, 43.097298, 42.051495>,  <36.895741, 43.188339, 42.065689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506496, 43.097298, 42.051495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188369, -0.697572, -0.691311,
		0.132588, -0.679404, 0.721685,
		-0.973107, -0.227603, -0.035489,
		36.214565, 43.029018, 42.040848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870098, 42.497738, 41.995743>,  <36.895741, 43.188339, 42.065689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870098, 42.497738, 41.995743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504204, 42.585957, 41.860321>,  <36.284668, 42.638889, 41.779068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504204, 42.585957, 41.860321>,  <36.870098, 42.497738, 41.995743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504204, 42.585957, 41.860321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000801, -0.836894, -0.547364,
		-0.404053, -0.500964, 0.765360,
		-0.914735, 0.220551, -0.338551,
		36.229782, 42.652122, 41.758755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457199, 41.810215, 41.923313>,  <36.870098, 42.497738, 41.995743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457199, 41.810215, 41.923313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262596, 42.089638, 41.713428>,  <36.145832, 42.257290, 41.587498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262596, 42.089638, 41.713428>,  <36.457199, 41.810215, 41.923313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262596, 42.089638, 41.713428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152472, -0.659253, -0.736300,
		-0.860268, -0.278212, 0.427244,
		-0.486509, 0.698558, -0.524715,
		36.116642, 42.299206, 41.556015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864132, 41.417706, 41.529095>,  <36.457199, 41.810215, 41.923313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864132, 41.417706, 41.529095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914803, 41.771954, 41.350376>,  <35.945206, 41.984501, 41.243145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914803, 41.771954, 41.350376>,  <35.864132, 41.417706, 41.529095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914803, 41.771954, 41.350376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078610, -0.440048, -0.894526,
		-0.988824, 0.148442, 0.013873,
		0.126681, 0.885620, -0.446799,
		35.952808, 42.037640, 41.216335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362667, 41.331326, 41.000519>,  <35.864132, 41.417706, 41.529095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362667, 41.331326, 41.000519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646866, 41.598644, 40.912361>,  <35.817383, 41.759037, 40.859467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646866, 41.598644, 40.912361>,  <35.362667, 41.331326, 41.000519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646866, 41.598644, 40.912361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112462, -0.417001, -0.901921,
		-0.694657, 0.616025, -0.371436,
		0.710495, 0.668299, -0.220394,
		35.860016, 41.799133, 40.846245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219711, 41.464241, 40.325356>,  <35.362667, 41.331326, 41.000519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219711, 41.464241, 40.325356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600994, 41.561096, 40.397755>,  <35.829765, 41.619209, 40.441193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600994, 41.561096, 40.397755>,  <35.219711, 41.464241, 40.325356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600994, 41.561096, 40.397755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277096, -0.460440, -0.843334,
		-0.120870, 0.854027, -0.505993,
		0.953210, 0.242142, 0.180994,
		35.886955, 41.633739, 40.452053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439640, 42.036942, 39.841465>,  <35.219711, 41.464241, 40.325356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439640, 42.036942, 39.841465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775196, 41.863914, 39.973618>,  <35.976528, 41.760098, 40.052910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775196, 41.863914, 39.973618>,  <35.439640, 42.036942, 39.841465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775196, 41.863914, 39.973618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148168, -0.402582, -0.903313,
		0.523747, 0.806732, -0.273629,
		0.838889, -0.432565, 0.330383,
		36.026863, 41.734146, 40.072731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695099, 41.809322, 39.332352>,  <35.439640, 42.036942, 39.841465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695099, 41.809322, 39.332352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952766, 41.607403, 39.562210>,  <36.107368, 41.486252, 39.700127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952766, 41.607403, 39.562210>,  <35.695099, 41.809322, 39.332352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952766, 41.607403, 39.562210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208751, -0.606738, -0.767002,
		0.735843, 0.614039, -0.285467,
		0.644173, -0.504801, 0.574645,
		36.146019, 41.455963, 39.734604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334900, 41.765675, 38.930336>,  <35.695099, 41.809322, 39.332352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334900, 41.765675, 38.930336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312000, 41.464394, 39.192455>,  <36.298260, 41.283627, 39.349728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312000, 41.464394, 39.192455>,  <36.334900, 41.765675, 38.930336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312000, 41.464394, 39.192455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216536, -0.650114, -0.728330,
		0.974595, 0.100201, 0.200311,
		-0.057245, -0.753201, 0.655295,
		36.294827, 41.238434, 39.389046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965508, 41.474224, 38.781483>,  <36.334900, 41.765675, 38.930336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965508, 41.474224, 38.781483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741482, 41.191631, 38.954556>,  <36.607067, 41.022076, 39.058399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741482, 41.191631, 38.954556>,  <36.965508, 41.474224, 38.781483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741482, 41.191631, 38.954556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159647, -0.604526, -0.780423,
		0.812923, -0.368008, 0.451360,
		-0.560061, -0.706483, 0.432682,
		36.573463, 40.979687, 39.084358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369343, 40.907146, 38.770287>,  <36.965508, 41.474224, 38.781483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369343, 40.907146, 38.770287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000641, 40.752491, 38.782196>,  <36.779419, 40.659698, 38.789341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000641, 40.752491, 38.782196>,  <37.369343, 40.907146, 38.770287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000641, 40.752491, 38.782196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271278, -0.697787, -0.662949,
		0.277097, -0.602997, 0.748072,
		-0.921751, -0.386637, 0.029774,
		36.724117, 40.636501, 38.791130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473343, 40.246868, 38.508987>,  <37.369343, 40.907146, 38.770287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473343, 40.246868, 38.508987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074196, 40.272923, 38.507195>,  <36.834709, 40.288555, 38.506119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074196, 40.272923, 38.507195>,  <37.473343, 40.246868, 38.508987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074196, 40.272923, 38.507195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048338, -0.783211, -0.619874,
		-0.043888, -0.618335, 0.784689,
		-0.997866, 0.065135, -0.004484,
		36.774837, 40.292461, 38.505848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229088, 39.586063, 38.552410>,  <37.473343, 40.246868, 38.508987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229088, 39.586063, 38.552410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915600, 39.783585, 38.401707>,  <36.727509, 39.902096, 38.311287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915600, 39.783585, 38.401707>,  <37.229088, 39.586063, 38.552410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915600, 39.783585, 38.401707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050633, -0.655352, -0.753625,
		-0.619045, -0.571556, 0.538616,
		-0.783722, 0.493800, -0.376753,
		36.680485, 39.931725, 38.288681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670292, 39.102116, 38.430714>,  <37.229088, 39.586063, 38.552410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670292, 39.102116, 38.430714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600761, 39.394192, 38.166409>,  <36.559044, 39.569439, 38.007828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600761, 39.394192, 38.166409>,  <36.670292, 39.102116, 38.430714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600761, 39.394192, 38.166409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058133, -0.677412, -0.733303,
		-0.983060, -0.089052, 0.160198,
		-0.173822, 0.730194, -0.660760,
		36.548615, 39.613251, 37.968182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044964, 38.871353, 38.028938>,  <36.670292, 39.102116, 38.430714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044964, 38.871353, 38.028938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211987, 39.165516, 37.815460>,  <36.312199, 39.342014, 37.687374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211987, 39.165516, 37.815460>,  <36.044964, 38.871353, 38.028938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211987, 39.165516, 37.815460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127648, -0.534050, -0.835761,
		-0.899642, 0.417099, -0.129122,
		0.417553, 0.735403, -0.533696,
		36.337254, 39.386135, 37.655350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633739, 39.001514, 37.450336>,  <36.044964, 38.871353, 38.028938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633739, 39.001514, 37.450336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998581, 39.135387, 37.355629>,  <36.217484, 39.215714, 37.298805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998581, 39.135387, 37.355629>,  <35.633739, 39.001514, 37.450336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998581, 39.135387, 37.355629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054246, -0.473922, -0.878894,
		-0.406362, 0.814483, -0.414109,
		0.912100, 0.334686, -0.236767,
		36.272209, 39.235794, 37.284599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500626, 39.084370, 36.745914>,  <35.633739, 39.001514, 37.450336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500626, 39.084370, 36.745914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895020, 39.139645, 36.783306>,  <36.131657, 39.172810, 36.805740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.895020, 39.139645, 36.783306>,  <35.500626, 39.084370, 36.745914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895020, 39.139645, 36.783306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141177, -0.392525, -0.908842,
		-0.088900, 0.909301, -0.406533,
		0.985985, 0.138189, 0.093476,
		36.190815, 39.181103, 36.811348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830219, 39.524330, 36.298588>,  <35.500626, 39.084370, 36.745914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830219, 39.524330, 36.298588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142735, 39.291363, 36.388363>,  <36.330246, 39.151581, 36.442230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142735, 39.291363, 36.388363>,  <35.830219, 39.524330, 36.298588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142735, 39.291363, 36.388363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003309, -0.363447, -0.931609,
		0.624159, 0.727115, -0.285885,
		0.781291, -0.582418, 0.224442,
		36.377121, 39.116638, 36.455696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254807, 39.623344, 35.807732>,  <35.830219, 39.524330, 36.298588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254807, 39.623344, 35.807732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382294, 39.283417, 35.975647>,  <36.458786, 39.079460, 36.076397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382294, 39.283417, 35.975647>,  <36.254807, 39.623344, 35.807732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382294, 39.283417, 35.975647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030492, -0.433466, -0.900654,
		0.947358, 0.299858, -0.112243,
		0.318721, -0.849819, 0.419791,
		36.477909, 39.028473, 36.101585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670269, 39.315315, 35.261665>,  <36.254807, 39.623344, 35.807732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670269, 39.315315, 35.261665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602974, 39.004742, 35.504593>,  <36.562595, 38.818398, 35.650349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602974, 39.004742, 35.504593>,  <36.670269, 39.315315, 35.261665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602974, 39.004742, 35.504593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102539, -0.626547, -0.772609,
		0.980398, -0.067711, 0.185027,
		-0.168242, -0.776437, 0.607322,
		36.552502, 38.771812, 35.686790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239750, 38.792397, 35.274994>,  <36.670269, 39.315315, 35.261665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239750, 38.792397, 35.274994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908138, 38.604095, 35.395721>,  <36.709171, 38.491116, 35.468159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908138, 38.604095, 35.395721>,  <37.239750, 38.792397, 35.274994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908138, 38.604095, 35.395721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058676, -0.609987, -0.790236,
		0.556118, -0.637419, 0.533320,
		-0.829030, -0.470757, 0.301823,
		36.659428, 38.462868, 35.486267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365837, 38.038120, 35.185738>,  <37.239750, 38.792397, 35.274994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365837, 38.038120, 35.185738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967079, 38.061409, 35.206944>,  <36.727825, 38.075382, 35.219669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967079, 38.061409, 35.206944>,  <37.365837, 38.038120, 35.185738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967079, 38.061409, 35.206944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076606, -0.561189, -0.824135,
		-0.018230, -0.825637, 0.563907,
		-0.996895, 0.058223, 0.053018,
		36.668011, 38.078876, 35.222847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864632, 37.810223, 35.623199>,  <37.365837, 38.038120, 35.185738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864632, 37.810223, 35.623199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166225, 37.589222, 35.765331>,  <38.347179, 37.456623, 35.850609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166225, 37.589222, 35.765331>,  <37.864632, 37.810223, 35.623199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166225, 37.589222, 35.765331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094424, 0.444145, 0.890965,
		-0.650074, -0.705323, 0.282708,
		0.753982, -0.552498, 0.355326,
		38.392422, 37.423473, 35.871929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624416, 37.610229, 36.249348>,  <37.864632, 37.810223, 35.623199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624416, 37.610229, 36.249348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021961, 37.573544, 36.274078>,  <38.260490, 37.551533, 36.288918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021961, 37.573544, 36.274078>,  <37.624416, 37.610229, 36.249348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021961, 37.573544, 36.274078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020037, 0.400383, 0.916129,
		-0.108779, -0.911746, 0.396088,
		0.993864, -0.091719, 0.061822,
		38.320122, 37.546028, 36.292625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765583, 37.282509, 36.888985>,  <37.624416, 37.610229, 36.249348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765583, 37.282509, 36.888985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133347, 37.430378, 36.835274>,  <38.354004, 37.519100, 36.803047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133347, 37.430378, 36.835274>,  <37.765583, 37.282509, 36.888985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133347, 37.430378, 36.835274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053762, 0.456340, 0.888180,
		0.389609, -0.809382, 0.439438,
		0.919410, 0.369668, -0.134280,
		38.409168, 37.541279, 36.794991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168716, 36.975105, 37.448147>,  <37.765583, 37.282509, 36.888985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168716, 36.975105, 37.448147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307777, 37.329685, 37.325939>,  <38.391216, 37.542435, 37.252613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307777, 37.329685, 37.325939>,  <38.168716, 36.975105, 37.448147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307777, 37.329685, 37.325939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059649, 0.304278, 0.950714,
		0.935723, -0.348745, 0.052908,
		0.347656, 0.886449, -0.305523,
		38.412075, 37.595619, 37.234283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655155, 37.194046, 37.957684>,  <38.168716, 36.975105, 37.448147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655155, 37.194046, 37.957684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.651669, 37.545837, 37.767342>,  <38.649578, 37.756912, 37.653137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.651669, 37.545837, 37.767342>,  <38.655155, 37.194046, 37.957684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651669, 37.545837, 37.767342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152816, 0.471454, 0.868550,
		0.988216, -0.065146, -0.138509,
		-0.008718, 0.879481, -0.475854,
		38.649052, 37.809681, 37.624584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204830, 37.612881, 38.238770>,  <38.655155, 37.194046, 37.957684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204830, 37.612881, 38.238770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.974976, 37.903099, 38.087307>,  <38.837063, 38.077229, 37.996429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.974976, 37.903099, 38.087307>,  <39.204830, 37.612881, 38.238770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974976, 37.903099, 38.087307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054916, 0.495812, 0.866692,
		0.816563, 0.477240, -0.324757,
		-0.574639, 0.725543, -0.378654,
		38.802586, 38.120762, 37.973709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568153, 38.191837, 38.526615>,  <39.204830, 37.612881, 38.238770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568153, 38.191837, 38.526615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209503, 38.302002, 38.387928>,  <38.994312, 38.368103, 38.304714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209503, 38.302002, 38.387928>,  <39.568153, 38.191837, 38.526615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209503, 38.302002, 38.387928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126096, 0.591792, 0.796167,
		0.424465, 0.757580, -0.495885,
		-0.896621, 0.275416, -0.346722,
		38.940517, 38.384628, 38.283913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534237, 38.888939, 38.464855>,  <39.568153, 38.191837, 38.526615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534237, 38.888939, 38.464855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150333, 38.778137, 38.483337>,  <38.919991, 38.711655, 38.494427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150333, 38.778137, 38.483337>,  <39.534237, 38.888939, 38.464855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150333, 38.778137, 38.483337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132312, 0.591131, 0.795649,
		-0.247713, 0.757516, -0.603994,
		-0.959756, -0.277008, 0.046202,
		38.862408, 38.695034, 38.497200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193188, 39.489120, 38.364147>,  <39.534237, 38.888939, 38.464855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193188, 39.489120, 38.364147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.934074, 39.253067, 38.556866>,  <38.778606, 39.111435, 38.672497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.934074, 39.253067, 38.556866>,  <39.193188, 39.489120, 38.364147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934074, 39.253067, 38.556866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156522, 0.722024, 0.673931,
		-0.745573, 0.361149, -0.560082,
		-0.647782, -0.590130, 0.481794,
		38.739738, 39.076027, 38.701405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637478, 39.915173, 38.605476>,  <39.193188, 39.489120, 38.364147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637478, 39.915173, 38.605476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589699, 39.590069, 38.833569>,  <38.561031, 39.395008, 38.970425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589699, 39.590069, 38.833569>,  <38.637478, 39.915173, 38.605476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589699, 39.590069, 38.833569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106754, 0.581523, 0.806495,
		-0.987084, 0.035461, -0.156228,
		-0.119449, -0.812757, 0.570227,
		38.553864, 39.346241, 39.004635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109318, 40.081490, 39.056488>,  <38.637478, 39.915173, 38.605476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109318, 40.081490, 39.056488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.276962, 39.760723, 39.226795>,  <38.377548, 39.568264, 39.328979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.276962, 39.760723, 39.226795>,  <38.109318, 40.081490, 39.056488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276962, 39.760723, 39.226795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035557, 0.483080, 0.874854,
		-0.907239, -0.351521, 0.230977,
		0.419109, -0.801915, 0.425770,
		38.402695, 39.520149, 39.354527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769508, 40.022099, 39.759476>,  <38.109318, 40.081490, 39.056488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769508, 40.022099, 39.759476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121536, 39.832165, 39.758526>,  <38.332752, 39.718204, 39.757954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121536, 39.832165, 39.758526>,  <37.769508, 40.022099, 39.759476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121536, 39.832165, 39.758526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243396, 0.446806, 0.860885,
		-0.407716, -0.758219, 0.508794,
		0.880072, -0.474835, -0.002377,
		38.385559, 39.689713, 39.757812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818600, 39.746777, 40.440197>,  <37.769508, 40.022099, 39.759476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818600, 39.746777, 40.440197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191170, 39.794746, 40.302753>,  <38.414711, 39.823528, 40.220287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191170, 39.794746, 40.302753>,  <37.818600, 39.746777, 40.440197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191170, 39.794746, 40.302753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230218, 0.537065, 0.811517,
		0.281862, -0.834972, 0.472626,
		0.931425, 0.119929, -0.343604,
		38.470596, 39.830727, 40.199673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329365, 39.576168, 40.964432>,  <37.818600, 39.746777, 40.440197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329365, 39.576168, 40.964432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535736, 39.801971, 40.706703>,  <38.659557, 39.937454, 40.552067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535736, 39.801971, 40.706703>,  <38.329365, 39.576168, 40.964432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535736, 39.801971, 40.706703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308900, 0.578954, 0.754581,
		0.798999, -0.588341, 0.124323,
		0.515928, 0.564506, -0.644322,
		38.690514, 39.971325, 40.513405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949677, 39.493546, 41.201569>,  <38.329365, 39.576168, 40.964432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949677, 39.493546, 41.201569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936272, 39.832237, 40.989178>,  <38.928230, 40.035450, 40.861744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936272, 39.832237, 40.989178>,  <38.949677, 39.493546, 41.201569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936272, 39.832237, 40.989178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396783, 0.498883, 0.770506,
		0.917300, -0.184859, -0.352685,
		-0.033513, 0.846725, -0.530975,
		38.926216, 40.086254, 40.829884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521599, 39.928013, 41.432732>,  <38.949677, 39.493546, 41.201569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521599, 39.928013, 41.432732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280430, 40.176540, 41.232548>,  <39.135731, 40.325657, 41.112438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280430, 40.176540, 41.232548>,  <39.521599, 39.928013, 41.432732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280430, 40.176540, 41.232548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152430, 0.705449, 0.692175,
		0.783105, 0.341041, -0.520036,
		-0.602919, 0.621315, -0.500456,
		39.099556, 40.362934, 41.082413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905724, 40.543579, 41.541710>,  <39.521599, 39.928013, 41.432732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905724, 40.543579, 41.541710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537048, 40.654938, 41.433651>,  <39.315842, 40.721752, 41.368816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537048, 40.654938, 41.433651>,  <39.905724, 40.543579, 41.541710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537048, 40.654938, 41.433651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101218, 0.499679, 0.860277,
		0.374487, 0.820253, -0.432371,
		-0.921691, 0.278399, -0.270148,
		39.260540, 40.738457, 41.352608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818188, 41.253376, 41.529133>,  <39.905724, 40.543579, 41.541710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818188, 41.253376, 41.529133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458683, 41.101284, 41.616451>,  <39.242981, 41.010029, 41.668842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458683, 41.101284, 41.616451>,  <39.818188, 41.253376, 41.529133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458683, 41.101284, 41.616451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051587, 0.586152, 0.808557,
		-0.435392, 0.715439, -0.546426,
		-0.898762, -0.380228, 0.218298,
		39.189056, 40.987217, 41.681942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.292408, 42.340618, 41.116638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132397, 42.045795, 41.334530>,  <39.036392, 41.868900, 41.465263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132397, 42.045795, 41.334530>,  <39.292408, 42.340618, 41.116638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132397, 42.045795, 41.334530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055320, 0.612686, 0.788388,
		-0.914834, 0.285239, -0.285863,
		-0.400024, -0.737058, 0.544726,
		39.012390, 41.824677, 41.497948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614120, 42.605022, 41.436100>,  <39.292408, 42.340618, 41.116638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614120, 42.605022, 41.436100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714203, 42.297314, 41.671257>,  <38.774254, 42.112690, 41.812351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714203, 42.297314, 41.671257>,  <38.614120, 42.605022, 41.436100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714203, 42.297314, 41.671257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074226, 0.590181, 0.803851,
		-0.965343, -0.244764, 0.090567,
		0.250205, -0.769270, 0.587895,
		38.789265, 42.066532, 41.847626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007648, 42.533527, 41.876583>,  <38.614120, 42.605022, 41.436100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007648, 42.533527, 41.876583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311512, 42.331314, 42.040215>,  <38.493832, 42.209984, 42.138393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311512, 42.331314, 42.040215>,  <38.007648, 42.533527, 41.876583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311512, 42.331314, 42.040215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177112, 0.444440, 0.878126,
		-0.625738, -0.739531, 0.248087,
		0.759660, -0.505537, 0.409082,
		38.539410, 42.179653, 42.162941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595482, 42.267094, 42.460499>,  <38.007648, 42.533527, 41.876583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595482, 42.267094, 42.460499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.991692, 42.248539, 42.512192>,  <38.229420, 42.237404, 42.543209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.991692, 42.248539, 42.512192>,  <37.595482, 42.267094, 42.460499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991692, 42.248539, 42.512192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110637, 0.287801, 0.951278,
		-0.081323, -0.956566, 0.279943,
		0.990528, -0.046389, 0.129236,
		38.288849, 42.234623, 42.550964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681473, 41.811176, 43.093472>,  <37.595482, 42.267094, 42.460499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681473, 41.811176, 43.093472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001411, 42.042595, 43.029556>,  <38.193375, 42.181446, 42.991207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001411, 42.042595, 43.029556>,  <37.681473, 41.811176, 43.093472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001411, 42.042595, 43.029556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009206, 0.254369, 0.967063,
		0.600138, -0.774971, 0.198130,
		0.799844, 0.578547, -0.159791,
		38.241364, 42.216160, 42.981621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159527, 41.728783, 43.683048>,  <37.681473, 41.811176, 43.093472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159527, 41.728783, 43.683048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.296730, 42.076275, 43.540134>,  <38.379051, 42.284771, 43.454384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.296730, 42.076275, 43.540134>,  <38.159527, 41.728783, 43.683048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296730, 42.076275, 43.540134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011942, 0.376300, 0.926421,
		0.939258, -0.322033, 0.118698,
		0.343004, 0.868731, -0.357289,
		38.399632, 42.336895, 43.432949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704170, 41.833786, 43.987366>,  <38.159527, 41.728783, 43.683048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704170, 41.833786, 43.987366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608547, 42.206345, 43.877567>,  <38.551174, 42.429882, 43.811687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608547, 42.206345, 43.877567>,  <38.704170, 41.833786, 43.987366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608547, 42.206345, 43.877567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097750, 0.304344, 0.947534,
		0.966073, 0.199681, -0.163799,
		-0.239055, 0.931398, -0.274500,
		38.536831, 42.485764, 43.795216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118446, 42.335869, 44.380886>,  <38.704170, 41.833786, 43.987366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118446, 42.335869, 44.380886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832073, 42.589432, 44.263851>,  <38.660248, 42.741570, 44.193630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832073, 42.589432, 44.263851>,  <39.118446, 42.335869, 44.380886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832073, 42.589432, 44.263851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032955, 0.449295, 0.892775,
		0.697391, 0.629525, -0.342555,
		-0.715933, 0.633902, -0.292588,
		38.617294, 42.779602, 44.176075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294296, 42.999931, 44.647461>,  <39.118446, 42.335869, 44.380886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294296, 42.999931, 44.647461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898037, 43.019634, 44.596554>,  <38.660282, 43.031456, 44.566010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898037, 43.019634, 44.596554>,  <39.294296, 42.999931, 44.647461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898037, 43.019634, 44.596554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119956, 0.130289, 0.984193,
		0.065061, 0.990252, -0.123161,
		-0.990645, 0.049259, -0.127264,
		38.600845, 43.034412, 44.558376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202049, 43.632965, 44.902397>,  <39.294296, 42.999931, 44.647461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202049, 43.632965, 44.902397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874832, 43.403881, 44.923611>,  <38.678501, 43.266430, 44.936340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874832, 43.403881, 44.923611>,  <39.202049, 43.632965, 44.902397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874832, 43.403881, 44.923611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046560, 0.157848, 0.986365,
		-0.573274, 0.804417, -0.155791,
		-0.818040, -0.572711, 0.053037,
		38.629421, 43.232067, 44.939522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806412, 43.975422, 45.323338>,  <39.202049, 43.632965, 44.902397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806412, 43.975422, 45.323338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620522, 43.622158, 45.348843>,  <38.508987, 43.410202, 45.364143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620522, 43.622158, 45.348843>,  <38.806412, 43.975422, 45.323338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620522, 43.622158, 45.348843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260516, 0.205195, 0.943412,
		-0.846264, 0.421816, -0.325436,
		-0.464724, -0.883157, 0.063759,
		38.481106, 43.357212, 45.367970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102261, 44.079506, 45.583511>,  <38.806412, 43.975422, 45.323338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102261, 44.079506, 45.583511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207233, 43.705238, 45.677876>,  <38.270218, 43.480679, 45.734493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207233, 43.705238, 45.677876>,  <38.102261, 44.079506, 45.583511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207233, 43.705238, 45.677876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299120, 0.153556, 0.941779,
		-0.917420, -0.317714, -0.239580,
		0.262428, -0.935670, 0.235910,
		38.285961, 43.424538, 45.748650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619648, 43.897305, 46.108925>,  <38.102261, 44.079506, 45.583511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619648, 43.897305, 46.108925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912788, 43.627926, 46.147709>,  <38.088673, 43.466297, 46.170979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912788, 43.627926, 46.147709>,  <37.619648, 43.897305, 46.108925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912788, 43.627926, 46.147709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136307, -0.005707, 0.990650,
		-0.666595, -0.739215, -0.095978,
		0.732852, -0.673445, 0.096956,
		38.132645, 43.425892, 46.176796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373741, 43.459751, 46.544235>,  <37.619648, 43.897305, 46.108925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373741, 43.459751, 46.544235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766758, 43.386951, 46.559692>,  <38.002567, 43.343269, 46.568966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766758, 43.386951, 46.559692>,  <37.373741, 43.459751, 46.544235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766758, 43.386951, 46.559692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056379, -0.093292, 0.994041,
		-0.177312, -0.978862, -0.101924,
		0.982538, -0.182002, 0.038646,
		38.061520, 43.332352, 46.571285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423592, 43.113060, 47.202530>,  <37.373741, 43.459751, 46.544235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423592, 43.113060, 47.202530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794388, 43.241741, 47.125385>,  <38.016865, 43.318951, 47.079098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794388, 43.241741, 47.125385>,  <37.423592, 43.113060, 47.202530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794388, 43.241741, 47.125385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140260, 0.179569, 0.973695,
		0.347870, -0.929658, 0.121337,
		0.926992, 0.321700, -0.192860,
		38.072487, 43.338249, 47.067528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963924, 42.710007, 47.679787>,  <37.423592, 43.113060, 47.202530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963924, 42.710007, 47.679787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111942, 43.065220, 47.570633>,  <38.200752, 43.278347, 47.505138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111942, 43.065220, 47.570633>,  <37.963924, 42.710007, 47.679787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111942, 43.065220, 47.570633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012604, 0.298512, 0.954323,
		0.928930, -0.349698, 0.121654,
		0.370040, 0.888032, -0.272889,
		38.222954, 43.331631, 47.488766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339706, 42.957409, 48.202793>,  <37.963924, 42.710007, 47.679787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339706, 42.957409, 48.202793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.333752, 43.302696, 48.000950>,  <38.330181, 43.509869, 47.879845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.333752, 43.302696, 48.000950>,  <38.339706, 42.957409, 48.202793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333752, 43.302696, 48.000950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180095, 0.498728, 0.847842,
		0.983537, -0.078258, -0.162884,
		-0.014884, 0.863218, -0.504611,
		38.329285, 43.561661, 47.849567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020729, 43.358971, 48.331593>,  <38.339706, 42.957409, 48.202793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020729, 43.358971, 48.331593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731171, 43.616123, 48.231453>,  <38.557434, 43.770416, 48.171368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731171, 43.616123, 48.231453>,  <39.020729, 43.358971, 48.331593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731171, 43.616123, 48.231453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216449, 0.556187, 0.802375,
		0.655076, 0.526647, -0.541772,
		-0.723895, 0.642883, -0.250353,
		38.514004, 43.808987, 48.156345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294884, 44.059307, 48.518784>,  <39.020729, 43.358971, 48.331593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294884, 44.059307, 48.518784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.899826, 44.097389, 48.468983>,  <38.662792, 44.120239, 48.439102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.899826, 44.097389, 48.468983>,  <39.294884, 44.059307, 48.518784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899826, 44.097389, 48.468983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017392, 0.722892, 0.690742,
		0.155765, 0.684370, -0.712302,
		-0.987641, 0.095205, -0.124504,
		38.603535, 44.125950, 48.431633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168179, 44.865524, 48.439560>,  <39.294884, 44.059307, 48.518784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168179, 44.865524, 48.439560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834797, 44.674274, 48.550373>,  <38.634766, 44.559525, 48.616859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834797, 44.674274, 48.550373>,  <39.168179, 44.865524, 48.439560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834797, 44.674274, 48.550373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224171, 0.750788, 0.621342,
		-0.505072, 0.455758, -0.732930,
		-0.833457, -0.478124, 0.277034,
		38.584759, 44.530838, 48.633484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626560, 45.333549, 48.542053>,  <39.168179, 44.865524, 48.439560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626560, 45.333549, 48.542053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499508, 45.019047, 48.754055>,  <38.423275, 44.830345, 48.881256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499508, 45.019047, 48.754055>,  <38.626560, 45.333549, 48.542053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499508, 45.019047, 48.754055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249724, 0.608583, 0.753169,
		-0.914740, 0.106874, -0.389653,
		-0.317631, -0.786259, 0.530006,
		38.404221, 44.783169, 48.913055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997414, 45.607952, 48.761902>,  <38.626560, 45.333549, 48.542053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997414, 45.607952, 48.761902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079330, 45.303158, 49.007645>,  <38.128479, 45.120281, 49.155090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079330, 45.303158, 49.007645>,  <37.997414, 45.607952, 48.761902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079330, 45.303158, 49.007645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459319, 0.479445, 0.747769,
		-0.864342, -0.435320, -0.251811,
		0.204789, -0.761990, 0.614356,
		38.140766, 45.074562, 49.191952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428280, 45.193363, 49.120247>,  <37.997414, 45.607952, 48.761902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428280, 45.193363, 49.120247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755741, 45.233906, 49.346355>,  <37.952217, 45.258232, 49.482021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755741, 45.233906, 49.346355>,  <37.428280, 45.193363, 49.120247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755741, 45.233906, 49.346355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561530, 0.347559, 0.750924,
		-0.120357, -0.932165, 0.341443,
		0.818656, 0.101352, 0.565270,
		38.001339, 45.264313, 49.515938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610077, 45.433346, 49.049351>,  <37.428280, 45.193363, 49.120247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610077, 45.433346, 49.049351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628334, 45.796860, 48.883442>,  <36.639290, 46.014969, 48.783897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628334, 45.796860, 48.883442>,  <36.610077, 45.433346, 49.049351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628334, 45.796860, 48.883442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045113, 0.412905, 0.909656,
		0.997939, -0.060230, -0.022152,
		0.045642, 0.908780, -0.414771,
		36.642025, 46.069492, 48.759010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269001, 46.140972, 49.288994>,  <36.610077, 45.433346, 49.049351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269001, 46.140972, 49.288994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961353, 46.371368, 49.178226>,  <35.776764, 46.509605, 49.111767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961353, 46.371368, 49.178226>,  <36.269001, 46.140972, 49.288994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961353, 46.371368, 49.178226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358562, -0.747580, -0.559069,
		-0.529038, -0.330699, 0.781509,
		-0.769124, 0.575988, -0.276922,
		35.730618, 46.544167, 49.095150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792530, 45.711105, 49.285648>,  <36.269001, 46.140972, 49.288994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792530, 45.711105, 49.285648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628777, 46.009354, 49.075336>,  <35.530525, 46.188305, 48.949150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628777, 46.009354, 49.075336>,  <35.792530, 45.711105, 49.285648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628777, 46.009354, 49.075336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383663, -0.663550, -0.642265,
		-0.827772, -0.061210, 0.557716,
		-0.409386, 0.745624, -0.525784,
		35.505962, 46.233040, 48.917603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030182, 45.534473, 49.128735>,  <35.792530, 45.711105, 49.285648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030182, 45.534473, 49.128735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154709, 45.789680, 48.847023>,  <35.229427, 45.942806, 48.677994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154709, 45.789680, 48.847023>,  <35.030182, 45.534473, 49.128735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154709, 45.789680, 48.847023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403293, -0.582363, -0.705838,
		-0.860485, 0.503774, 0.076007,
		0.311319, 0.638017, -0.704283,
		35.248104, 45.981087, 48.635738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480232, 45.591141, 48.679848>,  <35.030182, 45.534473, 49.128735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480232, 45.591141, 48.679848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791019, 45.702286, 48.453888>,  <34.977493, 45.768974, 48.318314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791019, 45.702286, 48.453888>,  <34.480232, 45.591141, 48.679848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791019, 45.702286, 48.453888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340995, -0.568532, -0.748662,
		-0.529191, 0.774314, -0.346980,
		0.776968, 0.277867, -0.564899,
		35.024109, 45.785645, 48.284420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327141, 45.619148, 47.929035>,  <34.480232, 45.591141, 48.679848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327141, 45.619148, 47.929035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723598, 45.635303, 47.878437>,  <34.961472, 45.644997, 47.848076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723598, 45.635303, 47.878437>,  <34.327141, 45.619148, 47.929035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723598, 45.635303, 47.878437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080744, -0.572977, -0.815584,
		-0.105420, 0.818576, -0.564642,
		0.991144, 0.040387, -0.126498,
		35.020943, 45.647419, 47.840488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402748, 45.679127, 47.190800>,  <34.327141, 45.619148, 47.929035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402748, 45.679127, 47.190800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.751987, 45.553890, 47.340286>,  <34.961533, 45.478748, 47.429977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.751987, 45.553890, 47.340286>,  <34.402748, 45.679127, 47.190800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751987, 45.553890, 47.340286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170651, -0.521793, -0.835829,
		0.456699, 0.793539, -0.402147,
		0.873100, -0.313096, 0.373721,
		35.013916, 45.459961, 47.452404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850899, 45.794956, 46.641178>,  <34.402748, 45.679127, 47.190800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850899, 45.794956, 46.641178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.044468, 45.527718, 46.867264>,  <35.160610, 45.367374, 47.002914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.044468, 45.527718, 46.867264>,  <34.850899, 45.794956, 46.641178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044468, 45.527718, 46.867264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275031, -0.497039, -0.822989,
		0.830770, 0.553712, -0.056780,
		0.483921, -0.668098, 0.565213,
		35.189644, 45.327290, 47.036827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578979, 45.646111, 46.306454>,  <34.850899, 45.794956, 46.641178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578979, 45.646111, 46.306454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467865, 45.354221, 46.556362>,  <35.401196, 45.179085, 46.706306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467865, 45.354221, 46.556362>,  <35.578979, 45.646111, 46.306454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467865, 45.354221, 46.556362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272290, -0.683501, -0.677263,
		0.921247, -0.018013, 0.388562,
		-0.277782, -0.729728, 0.624768,
		35.384529, 45.135303, 46.743793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192589, 45.298283, 46.393360>,  <35.578979, 45.646111, 46.306454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192589, 45.298283, 46.393360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927986, 45.019871, 46.505035>,  <35.769222, 44.852825, 46.572041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927986, 45.019871, 46.505035>,  <36.192589, 45.298283, 46.393360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927986, 45.019871, 46.505035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292330, -0.582161, -0.758704,
		0.690616, -0.420273, 0.588575,
		-0.661508, -0.696030, 0.279191,
		35.729534, 44.811062, 46.588791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522255, 44.672928, 46.258675>,  <36.192589, 45.298283, 46.393360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522255, 44.672928, 46.258675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144932, 44.550678, 46.310474>,  <35.918537, 44.477329, 46.341557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144932, 44.550678, 46.310474>,  <36.522255, 44.672928, 46.258675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144932, 44.550678, 46.310474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102097, -0.638385, -0.762916,
		0.315839, -0.706440, 0.633394,
		-0.943304, -0.305626, 0.129501,
		35.861942, 44.458992, 46.349323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599583, 44.018147, 46.326721>,  <36.522255, 44.672928, 46.258675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599583, 44.018147, 46.326721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223354, 44.050442, 46.194782>,  <35.997616, 44.069817, 46.115620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223354, 44.050442, 46.194782>,  <36.599583, 44.018147, 46.326721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223354, 44.050442, 46.194782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180681, -0.703450, -0.687396,
		-0.287529, -0.706144, 0.647060,
		-0.940575, 0.080735, -0.329849,
		35.941181, 44.074661, 46.095829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253365, 43.386436, 46.134541>,  <36.599583, 44.018147, 46.326721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253365, 43.386436, 46.134541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064892, 43.664936, 45.917942>,  <35.951809, 43.832035, 45.787983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064892, 43.664936, 45.917942>,  <36.253365, 43.386436, 46.134541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064892, 43.664936, 45.917942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051683, -0.591069, -0.804964,
		-0.880519, -0.407273, 0.242518,
		-0.471185, 0.696252, -0.541496,
		35.923538, 43.873810, 45.755493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213646, 43.050205, 45.533131>,  <36.253365, 43.386436, 46.134541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213646, 43.050205, 45.533131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053928, 43.402191, 45.430187>,  <35.958096, 43.613380, 45.368423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053928, 43.402191, 45.430187>,  <36.213646, 43.050205, 45.533131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053928, 43.402191, 45.430187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042232, -0.262753, -0.963938,
		-0.915848, -0.395766, 0.067754,
		-0.399297, 0.879960, -0.257356,
		35.934139, 43.666180, 45.352982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606209, 42.887444, 45.138393>,  <36.213646, 43.050205, 45.533131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606209, 42.887444, 45.138393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.686264, 43.260498, 45.018303>,  <35.734299, 43.484329, 44.946247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.686264, 43.260498, 45.018303>,  <35.606209, 42.887444, 45.138393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686264, 43.260498, 45.018303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283078, -0.238317, -0.929017,
		-0.937983, 0.270921, 0.216312,
		0.200139, 0.932634, -0.300229,
		35.746307, 43.540287, 44.928234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141026, 43.004963, 44.602131>,  <35.606209, 42.887444, 45.138393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141026, 43.004963, 44.602131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.424854, 43.281284, 44.546566>,  <35.595150, 43.447079, 44.513226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.424854, 43.281284, 44.546566>,  <35.141026, 43.004963, 44.602131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424854, 43.281284, 44.546566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051759, -0.145510, -0.988002,
		-0.702731, 0.708247, -0.067494,
		0.709570, 0.690806, -0.138913,
		35.637726, 43.488525, 44.504890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928379, 43.492546, 44.115997>,  <35.141026, 43.004963, 44.602131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928379, 43.492546, 44.115997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.327717, 43.511639, 44.103172>,  <35.567318, 43.523094, 44.095478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.327717, 43.511639, 44.103172>,  <34.928379, 43.492546, 44.115997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327717, 43.511639, 44.103172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027881, -0.085795, -0.995923,
		-0.050288, 0.995169, -0.084322,
		0.998346, 0.047732, -0.032061,
		35.627220, 43.525959, 44.093555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011600, 43.945385, 43.475891>,  <34.928379, 43.492546, 44.115997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011600, 43.945385, 43.475891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357548, 43.763111, 43.560139>,  <35.565117, 43.653748, 43.610687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357548, 43.763111, 43.560139>,  <35.011600, 43.945385, 43.475891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357548, 43.763111, 43.560139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097371, -0.259321, -0.960870,
		0.492469, 0.851533, -0.179907,
		0.864866, -0.455681, 0.210622,
		35.617008, 43.626408, 43.623325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518776, 44.251118, 42.998650>,  <35.011600, 43.945385, 43.475891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518776, 44.251118, 42.998650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.678322, 43.905380, 43.121174>,  <35.774048, 43.697937, 43.194687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.678322, 43.905380, 43.121174>,  <35.518776, 44.251118, 42.998650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678322, 43.905380, 43.121174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167666, -0.259658, -0.951034,
		0.901552, 0.430690, 0.041352,
		0.398864, -0.864340, 0.306307,
		35.797981, 43.646080, 43.213066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129055, 44.225868, 42.546196>,  <35.518776, 44.251118, 42.998650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129055, 44.225868, 42.546196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029411, 43.860332, 42.674477>,  <35.969624, 43.641010, 42.751446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029411, 43.860332, 42.674477>,  <36.129055, 44.225868, 42.546196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029411, 43.860332, 42.674477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098105, -0.353247, -0.930372,
		0.963493, -0.200304, 0.177650,
		-0.249112, -0.913835, 0.320700,
		35.954678, 43.586182, 42.770687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603050, 43.840252, 42.234962>,  <36.129055, 44.225868, 42.546196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603050, 43.840252, 42.234962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304344, 43.582096, 42.299225>,  <36.125118, 43.427200, 42.337780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304344, 43.582096, 42.299225>,  <36.603050, 43.840252, 42.234962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304344, 43.582096, 42.299225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284285, -0.528121, -0.800169,
		0.601267, -0.551868, 0.577858,
		-0.746767, -0.645391, 0.160654,
		36.080315, 43.388477, 42.347420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.965260, 41.043888, 29.255322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.600311, 41.133686, 29.392244>,  <43.381340, 41.187565, 29.474398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.600311, 41.133686, 29.392244>,  <43.965260, 41.043888, 29.255322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600311, 41.133686, 29.392244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016922, -0.856181, 0.516398,
		0.409005, 0.465357, 0.784957,
		-0.912375, 0.224492, 0.342308,
		43.326599, 41.201035, 29.494936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006104, 40.709480, 29.916725>,  <43.965260, 41.043888, 29.255322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006104, 40.709480, 29.916725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615322, 40.792683, 29.897530>,  <43.380856, 40.842602, 29.886013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615322, 40.792683, 29.897530>,  <44.006104, 40.709480, 29.916725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615322, 40.792683, 29.897530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190761, -0.749799, 0.633571,
		0.095805, 0.628121, 0.772195,
		-0.976950, 0.208004, -0.047987,
		43.322239, 40.855083, 29.883133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771149, 40.648373, 30.616070>,  <44.006104, 40.709480, 29.916725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771149, 40.648373, 30.616070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441986, 40.605957, 30.392794>,  <43.244488, 40.580505, 30.258827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441986, 40.605957, 30.392794>,  <43.771149, 40.648373, 30.616070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441986, 40.605957, 30.392794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295241, -0.759571, 0.579555,
		-0.485444, 0.641721, 0.593749,
		-0.822908, -0.106043, -0.558192,
		43.195114, 40.574142, 30.225336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077637, 40.890205, 31.001663>,  <43.771149, 40.648373, 30.616070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077637, 40.890205, 31.001663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.022743, 40.599075, 30.732906>,  <42.989807, 40.424397, 30.571653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.022743, 40.599075, 30.732906>,  <43.077637, 40.890205, 31.001663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022743, 40.599075, 30.732906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353314, -0.597723, 0.719650,
		-0.925384, 0.336151, -0.175121,
		-0.137238, -0.727825, -0.671890,
		42.981571, 40.380726, 30.531340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432972, 40.642357, 31.248625>,  <43.077637, 40.890205, 31.001663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432972, 40.642357, 31.248625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603870, 40.380310, 30.999372>,  <42.706409, 40.223083, 30.849821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603870, 40.380310, 30.999372>,  <42.432972, 40.642357, 31.248625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603870, 40.380310, 30.999372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372184, -0.755528, 0.539125,
		-0.823979, 0.001581, -0.566618,
		0.427243, -0.655114, -0.623129,
		42.732044, 40.183777, 30.812433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912621, 40.249611, 31.043745>,  <42.432972, 40.642357, 31.248625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912621, 40.249611, 31.043745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.249653, 40.038528, 31.000700>,  <42.451874, 39.911877, 30.974873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.249653, 40.038528, 31.000700>,  <41.912621, 40.249611, 31.043745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249653, 40.038528, 31.000700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449576, -0.799186, 0.398979,
		-0.296546, -0.287793, -0.910624,
		0.842581, -0.527710, -0.107611,
		42.502426, 39.880215, 30.968416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677628, 39.568253, 30.899477>,  <41.912621, 40.249611, 31.043745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677628, 39.568253, 30.899477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068504, 39.513165, 30.964130>,  <42.303032, 39.480110, 31.002922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068504, 39.513165, 30.964130>,  <41.677628, 39.568253, 30.899477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068504, 39.513165, 30.964130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181262, -0.937499, 0.297053,
		0.110620, -0.319576, -0.941081,
		0.977194, -0.137722, 0.161633,
		42.361664, 39.471848, 31.012621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857998, 38.826656, 30.697008>,  <41.677628, 39.568253, 30.899477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857998, 38.826656, 30.697008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.154041, 38.942059, 30.939993>,  <42.331665, 39.011299, 31.085783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.154041, 38.942059, 30.939993>,  <41.857998, 38.826656, 30.697008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154041, 38.942059, 30.939993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021183, -0.912852, 0.407741,
		0.672157, -0.288903, -0.681718,
		0.740105, 0.288507, 0.607460,
		42.376072, 39.028610, 31.122231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325878, 38.295700, 30.743862>,  <41.857998, 38.826656, 30.697008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325878, 38.295700, 30.743862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375675, 38.515591, 31.074270>,  <42.405552, 38.647526, 31.272514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375675, 38.515591, 31.074270>,  <42.325878, 38.295700, 30.743862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375675, 38.515591, 31.074270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009850, -0.833138, 0.552977,
		0.992172, -0.060704, -0.109133,
		0.124490, 0.549723, 0.826018,
		42.413021, 38.680508, 31.322075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810844, 37.959389, 31.073959>,  <42.325878, 38.295700, 30.743862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810844, 37.959389, 31.073959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.655933, 38.184280, 31.366238>,  <42.562988, 38.319214, 31.541605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.655933, 38.184280, 31.366238>,  <42.810844, 37.959389, 31.073959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655933, 38.184280, 31.366238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149446, -0.743781, 0.651502,
		0.909770, 0.361512, 0.204028,
		-0.387278, 0.562226, 0.730697,
		42.539749, 38.352947, 31.585447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268963, 37.859432, 31.695030>,  <42.810844, 37.959389, 31.073959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268963, 37.859432, 31.695030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917656, 38.007042, 31.816658>,  <42.706871, 38.095608, 31.889635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917656, 38.007042, 31.816658>,  <43.268963, 37.859432, 31.695030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917656, 38.007042, 31.816658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086560, -0.748108, 0.657907,
		0.470264, 0.551500, 0.688984,
		-0.878270, 0.369029, 0.304071,
		42.654175, 38.117752, 31.907879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337482, 38.019234, 32.407146>,  <43.268963, 37.859432, 31.695030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337482, 38.019234, 32.407146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942593, 37.985886, 32.352825>,  <42.705658, 37.965878, 32.320232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942593, 37.985886, 32.352825>,  <43.337482, 38.019234, 32.407146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942593, 37.985886, 32.352825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075460, -0.506038, 0.859204,
		-0.140350, 0.858473, 0.493281,
		-0.987222, -0.083366, -0.135803,
		42.646427, 37.960876, 32.312084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009506, 38.251411, 32.943630>,  <43.337482, 38.019234, 32.407146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009506, 38.251411, 32.943630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.742779, 37.990028, 32.800323>,  <42.582745, 37.833199, 32.714340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.742779, 37.990028, 32.800323>,  <43.009506, 38.251411, 32.943630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742779, 37.990028, 32.800323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012539, -0.490520, 0.871339,
		-0.745118, 0.576529, 0.335280,
		-0.666814, -0.653455, -0.358266,
		42.542736, 37.793991, 32.692844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548752, 38.129814, 33.515671>,  <43.009506, 38.251411, 32.943630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548752, 38.129814, 33.515671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.450657, 37.816662, 33.286949>,  <42.391800, 37.628769, 33.149715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.450657, 37.816662, 33.286949>,  <42.548752, 38.129814, 33.515671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450657, 37.816662, 33.286949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011806, -0.587355, 0.809243,
		-0.969391, 0.205206, 0.134798,
		-0.245236, -0.782882, -0.571799,
		42.377087, 37.581799, 33.115410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007603, 37.783710, 33.849319>,  <42.548752, 38.129814, 33.515671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007603, 37.783710, 33.849319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.151741, 37.499264, 33.607838>,  <42.238224, 37.328594, 33.462948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.151741, 37.499264, 33.607838>,  <42.007603, 37.783710, 33.849319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151741, 37.499264, 33.607838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101804, -0.613339, 0.783231,
		-0.927247, -0.343693, -0.148620,
		0.360345, -0.711119, -0.603706,
		42.259846, 37.285927, 33.426727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761250, 37.187084, 34.211124>,  <42.007603, 37.783710, 33.849319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761250, 37.187084, 34.211124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030914, 37.048321, 33.950306>,  <42.192715, 36.965065, 33.793816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030914, 37.048321, 33.950306>,  <41.761250, 37.187084, 34.211124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030914, 37.048321, 33.950306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260369, -0.714528, 0.649352,
		-0.691165, -0.607542, -0.391386,
		0.674165, -0.346905, -0.652042,
		42.233162, 36.944248, 33.754692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735027, 36.439240, 34.187256>,  <41.761250, 37.187084, 34.211124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735027, 36.439240, 34.187256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.103245, 36.499977, 34.043282>,  <42.324173, 36.536419, 33.956898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.103245, 36.499977, 34.043282>,  <41.735027, 36.439240, 34.187256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103245, 36.499977, 34.043282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360157, -0.686750, 0.631397,
		-0.151310, -0.710857, -0.686868,
		0.920539, 0.151843, -0.359932,
		42.379406, 36.545528, 33.935303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946754, 35.865925, 34.247452>,  <41.735027, 36.439240, 34.187256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946754, 35.865925, 34.247452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286903, 36.064251, 34.176979>,  <42.490993, 36.183247, 34.134697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286903, 36.064251, 34.176979>,  <41.946754, 35.865925, 34.247452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286903, 36.064251, 34.176979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500124, -0.657529, 0.563499,
		0.163547, -0.567295, -0.807111,
		0.850369, 0.495815, -0.176181,
		42.542015, 36.212994, 34.124126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494267, 35.427307, 33.867874>,  <41.946754, 35.865925, 34.247452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494267, 35.427307, 33.867874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670013, 35.720982, 34.074921>,  <42.775463, 35.897186, 34.199150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670013, 35.720982, 34.074921>,  <42.494267, 35.427307, 33.867874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670013, 35.720982, 34.074921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406429, -0.676332, 0.614321,
		0.801107, -0.059538, -0.595553,
		0.439367, 0.734187, 0.517616,
		42.801823, 35.941238, 34.230206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298950, 35.218918, 34.017303>,  <42.494267, 35.427307, 33.867874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298950, 35.218918, 34.017303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.162125, 35.479259, 34.288414>,  <43.080029, 35.635464, 34.451080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.162125, 35.479259, 34.288414>,  <43.298950, 35.218918, 34.017303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162125, 35.479259, 34.288414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488600, -0.492924, 0.719928,
		0.802661, 0.577422, -0.149396,
		-0.342061, 0.650853, 0.677779,
		43.059505, 35.674515, 34.491749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899746, 35.275902, 34.451565>,  <43.298950, 35.218918, 34.017303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899746, 35.275902, 34.451565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570751, 35.392307, 34.647041>,  <43.373352, 35.462151, 34.764328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570751, 35.392307, 34.647041>,  <43.899746, 35.275902, 34.451565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570751, 35.392307, 34.647041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310558, -0.490041, 0.814502,
		0.476512, 0.821687, 0.312677,
		-0.822490, 0.291016, 0.488692,
		43.324005, 35.479610, 34.793648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379711, 35.012562, 34.079227>,  <43.899746, 35.275902, 34.451565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379711, 35.012562, 34.079227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763145, 34.906742, 34.037041>,  <44.993206, 34.843250, 34.011730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763145, 34.906742, 34.037041>,  <44.379711, 35.012562, 34.079227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763145, 34.906742, 34.037041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205958, 0.899707, -0.384849,
		0.196699, 0.347190, 0.916934,
		0.958588, -0.264549, -0.105465,
		45.050720, 34.827377, 34.005402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941063, 35.503231, 34.434723>,  <44.379711, 35.012562, 34.079227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941063, 35.503231, 34.434723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.130547, 35.319885, 34.133926>,  <45.244236, 35.209877, 33.953449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.130547, 35.319885, 34.133926>,  <44.941063, 35.503231, 34.434723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130547, 35.319885, 34.133926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245301, 0.888763, -0.387205,
		0.845827, -0.001042, 0.533455,
		0.473712, -0.458366, -0.751996,
		45.272659, 35.182377, 33.908329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426678, 35.989761, 34.286179>,  <44.941063, 35.503231, 34.434723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426678, 35.989761, 34.286179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.480858, 35.733269, 33.984058>,  <45.513367, 35.579372, 33.802788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.480858, 35.733269, 33.984058>,  <45.426678, 35.989761, 34.286179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480858, 35.733269, 33.984058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487421, 0.706819, -0.512667,
		0.862597, -0.298708, 0.408288,
		0.135447, -0.641233, -0.755297,
		45.521492, 35.540897, 33.757469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182182, 35.905052, 34.055759>,  <45.426678, 35.989761, 34.286179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182182, 35.905052, 34.055759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.993744, 35.798691, 33.719341>,  <45.880680, 35.734875, 33.517490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.993744, 35.798691, 33.719341>,  <46.182182, 35.905052, 34.055759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993744, 35.798691, 33.719341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441065, 0.754714, -0.485663,
		0.763894, -0.599750, -0.238257,
		-0.471092, -0.265908, -0.841050,
		45.852417, 35.718918, 33.467026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648357, 35.991497, 33.634075>,  <46.182182, 35.905052, 34.055759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648357, 35.991497, 33.634075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.320988, 35.990784, 33.404228>,  <46.124565, 35.990356, 33.266319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.320988, 35.990784, 33.404228>,  <46.648357, 35.991497, 33.634075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320988, 35.990784, 33.404228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397877, 0.719734, -0.568926,
		0.414583, -0.694248, -0.588337,
		-0.818422, -0.001781, -0.574615,
		46.075462, 35.990250, 33.231842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.836174, 35.898758, 32.910263>,  <46.648357, 35.991497, 33.634075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.836174, 35.898758, 32.910263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.472961, 36.065750, 32.896507>,  <46.255032, 36.165947, 32.888256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.472961, 36.065750, 32.896507>,  <46.836174, 35.898758, 32.910263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472961, 36.065750, 32.896507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379169, 0.784246, -0.491110,
		-0.178063, -0.458982, -0.870419,
		-0.908033, 0.417485, -0.034387,
		46.200550, 36.190994, 32.886192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690445, 36.266018, 32.189465>,  <46.836174, 35.898758, 32.910263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690445, 36.266018, 32.189465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.391605, 36.439346, 32.391090>,  <46.212303, 36.543343, 32.512066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.391605, 36.439346, 32.391090>,  <46.690445, 36.266018, 32.189465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391605, 36.439346, 32.391090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066782, 0.803410, -0.591670,
		-0.661350, -0.408373, -0.629164,
		-0.747098, 0.433318, 0.504063,
		46.167477, 36.569340, 32.542309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.345745, 36.690128, 31.693569>,  <46.690445, 36.266018, 32.189465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.345745, 36.690128, 31.693569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.199345, 36.830284, 32.038422>,  <46.111504, 36.914375, 32.245335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.199345, 36.830284, 32.038422>,  <46.345745, 36.690128, 31.693569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199345, 36.830284, 32.038422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025506, 0.922287, -0.385663,
		-0.930264, -0.163144, -0.328624,
		-0.366005, 0.350387, 0.862131,
		46.089542, 36.935402, 32.297062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719429, 37.133591, 31.573423>,  <46.345745, 36.690128, 31.693569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719429, 37.133591, 31.573423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.880913, 37.239944, 31.923584>,  <45.977802, 37.303757, 32.133678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.880913, 37.239944, 31.923584>,  <45.719429, 37.133591, 31.573423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880913, 37.239944, 31.923584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025685, 0.953169, -0.301347,
		-0.914525, 0.144142, 0.377977,
		0.403712, 0.265881, 0.875399,
		46.002026, 37.319710, 32.186203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314667, 37.747761, 31.803852>,  <45.719429, 37.133591, 31.573423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314667, 37.747761, 31.803852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671562, 37.745354, 31.984465>,  <45.885700, 37.743908, 32.092834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671562, 37.745354, 31.984465>,  <45.314667, 37.747761, 31.803852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671562, 37.745354, 31.984465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184472, 0.917529, -0.352294,
		-0.412175, 0.397624, 0.819760,
		0.892234, -0.006016, 0.451533,
		45.939232, 37.743549, 32.119926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276760, 38.419682, 32.062359>,  <45.314667, 37.747761, 31.803852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276760, 38.419682, 32.062359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662182, 38.318222, 32.096348>,  <45.893436, 38.257347, 32.116741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662182, 38.318222, 32.096348>,  <45.276760, 38.419682, 32.062359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662182, 38.318222, 32.096348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267477, 0.918053, -0.292635,
		-0.003779, 0.304698, 0.952442,
		0.963557, -0.253650, 0.084969,
		45.951248, 38.242126, 32.121838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575142, 39.025318, 32.267841>,  <45.276760, 38.419682, 32.062359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575142, 39.025318, 32.267841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.883972, 38.807461, 32.136837>,  <46.069271, 38.676746, 32.058235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.883972, 38.807461, 32.136837>,  <45.575142, 39.025318, 32.267841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883972, 38.807461, 32.136837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450898, 0.832601, -0.321662,
		0.447876, 0.100674, 0.888410,
		0.772074, -0.544647, -0.327508,
		46.115593, 38.644066, 32.038586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149628, 39.348587, 32.569134>,  <45.575142, 39.025318, 32.267841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149628, 39.348587, 32.569134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.238453, 39.159321, 32.228123>,  <46.291748, 39.045761, 32.023518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.238453, 39.159321, 32.228123>,  <46.149628, 39.348587, 32.569134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238453, 39.159321, 32.228123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303892, 0.864395, -0.400589,
		0.926464, -0.170119, 0.335744,
		0.222067, -0.473162, -0.852528,
		46.305073, 39.017372, 31.972364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907951, 39.601894, 32.376812>,  <46.149628, 39.348587, 32.569134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907951, 39.601894, 32.376812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.739895, 39.437435, 32.053223>,  <46.639061, 39.338760, 31.859070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.739895, 39.437435, 32.053223>,  <46.907951, 39.601894, 32.376812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739895, 39.437435, 32.053223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230134, 0.814054, -0.533249,
		0.877791, -0.410214, -0.247401,
		-0.420144, -0.411146, -0.808974,
		46.613850, 39.314091, 31.810532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479599, 39.662354, 31.819456>,  <46.907951, 39.601894, 32.376812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479599, 39.662354, 31.819456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.112389, 39.636753, 31.662930>,  <46.892063, 39.621391, 31.569014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.112389, 39.636753, 31.662930>,  <47.479599, 39.662354, 31.819456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.112389, 39.636753, 31.662930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186611, 0.801019, -0.568810,
		0.349857, -0.595208, -0.723414,
		-0.918029, -0.064005, -0.391315,
		46.836979, 39.617550, 31.545534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595772, 39.783039, 31.094244>,  <47.479599, 39.662354, 31.819456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595772, 39.783039, 31.094244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.210281, 39.843861, 31.181988>,  <46.978989, 39.880352, 31.234634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.210281, 39.843861, 31.181988>,  <47.595772, 39.783039, 31.094244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.210281, 39.843861, 31.181988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009101, 0.840108, -0.542343,
		-0.266749, -0.520672, -0.811015,
		-0.963723, 0.152051, 0.219359,
		46.921165, 39.889477, 31.247795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315712, 39.997780, 30.456564>,  <47.595772, 39.783039, 31.094244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315712, 39.997780, 30.456564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.062378, 40.105301, 30.746840>,  <46.910378, 40.169815, 30.921005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.062378, 40.105301, 30.746840>,  <47.315712, 39.997780, 30.456564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.062378, 40.105301, 30.746840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233713, 0.827512, -0.510492,
		-0.737740, -0.492917, -0.461272,
		-0.633338, 0.268805, 0.725690,
		46.872375, 40.185944, 30.964546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.975056, 40.500900, 30.076313>,  <47.315712, 39.997780, 30.456564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.975056, 40.500900, 30.076313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.840492, 40.541264, 30.450830>,  <46.759754, 40.565479, 30.675541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.840492, 40.541264, 30.450830>,  <46.975056, 40.500900, 30.076313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840492, 40.541264, 30.450830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283355, 0.937322, -0.202826,
		-0.898076, -0.333536, -0.286730,
		-0.336408, 0.100906, 0.936295,
		46.739571, 40.571537, 30.731718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249828, 40.755531, 30.034971>,  <46.975056, 40.500900, 30.076313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249828, 40.755531, 30.034971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.380913, 40.861954, 30.397587>,  <46.459564, 40.925808, 30.615156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.380913, 40.861954, 30.397587>,  <46.249828, 40.755531, 30.034971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.380913, 40.861954, 30.397587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398827, 0.908801, -0.122549,
		-0.856470, -0.321392, 0.403938,
		0.327713, 0.266061, 0.906541,
		46.479225, 40.941772, 30.669548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612598, 40.990074, 30.469017>,  <46.249828, 40.755531, 30.034971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612598, 40.990074, 30.469017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951454, 41.142887, 30.616753>,  <46.154766, 41.234573, 30.705395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951454, 41.142887, 30.616753>,  <45.612598, 40.990074, 30.469017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951454, 41.142887, 30.616753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376581, 0.922007, -0.089945,
		-0.374897, -0.062891, 0.924931,
		0.847136, 0.382032, 0.369341,
		46.205593, 41.257496, 30.727554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466297, 41.526127, 31.051888>,  <45.612598, 40.990074, 30.469017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466297, 41.526127, 31.051888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826145, 41.603329, 30.895205>,  <46.042053, 41.649651, 30.801195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826145, 41.603329, 30.895205>,  <45.466297, 41.526127, 31.051888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826145, 41.603329, 30.895205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263562, 0.955198, -0.134650,
		0.348171, 0.224374, 0.910183,
		0.899617, 0.193008, -0.391709,
		46.096031, 41.661232, 30.777691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.590549, 39.140156, 39.804157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221161, 39.293415, 39.796230>,  <38.999527, 39.385372, 39.791473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221161, 39.293415, 39.796230>,  <39.590549, 39.140156, 39.804157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221161, 39.293415, 39.796230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306400, -0.767613, -0.562929,
		-0.230900, -0.513777, 0.826268,
		-0.923474, 0.383149, -0.019821,
		38.944118, 39.408360, 39.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128994, 38.602669, 39.987816>,  <39.590549, 39.140156, 39.804157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128994, 38.602669, 39.987816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896152, 38.862366, 39.792004>,  <38.756447, 39.018185, 39.674519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896152, 38.862366, 39.792004>,  <39.128994, 38.602669, 39.987816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896152, 38.862366, 39.792004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227264, -0.707957, -0.668691,
		-0.780708, -0.277997, 0.559655,
		-0.582105, 0.649242, -0.489529,
		38.721519, 39.057137, 39.645145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467716, 38.262608, 39.760395>,  <39.128994, 38.602669, 39.987816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467716, 38.262608, 39.760395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485420, 38.584721, 39.523899>,  <38.496044, 38.777988, 39.382000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485420, 38.584721, 39.523899>,  <38.467716, 38.262608, 39.760395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485420, 38.584721, 39.523899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234714, -0.566874, -0.789660,
		-0.971056, 0.173722, 0.163921,
		0.044259, 0.805279, -0.591242,
		38.498699, 38.826305, 39.346527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930897, 38.158424, 39.318081>,  <38.467716, 38.262608, 39.760395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930897, 38.158424, 39.318081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174976, 38.418137, 39.136494>,  <38.321426, 38.573963, 39.027542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174976, 38.418137, 39.136494>,  <37.930897, 38.158424, 39.318081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174976, 38.418137, 39.136494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140167, -0.475501, -0.868477,
		-0.779748, 0.593578, -0.199144,
		0.610202, 0.649280, -0.453971,
		38.358036, 38.612919, 39.000301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603489, 38.430279, 38.655922>,  <37.930897, 38.158424, 39.318081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603489, 38.430279, 38.655922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997200, 38.493183, 38.623775>,  <38.233429, 38.530926, 38.604488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997200, 38.493183, 38.623775>,  <37.603489, 38.430279, 38.655922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997200, 38.493183, 38.623775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009875, -0.405332, -0.914116,
		-0.176328, 0.900542, -0.397407,
		0.984282, 0.157260, -0.080364,
		38.292484, 38.540359, 38.599667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720554, 38.827225, 38.028908>,  <37.603489, 38.430279, 38.655922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720554, 38.827225, 38.028908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090805, 38.691433, 38.095814>,  <38.312954, 38.609959, 38.135956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090805, 38.691433, 38.095814>,  <37.720554, 38.827225, 38.028908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090805, 38.691433, 38.095814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068274, -0.284928, -0.956114,
		0.372238, 0.896421, -0.240559,
		0.925623, -0.339478, 0.167263,
		38.368492, 38.589588, 38.145992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113243, 39.083305, 37.509480>,  <37.720554, 38.827225, 38.028908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113243, 39.083305, 37.509480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345913, 38.781334, 37.630634>,  <38.485516, 38.600151, 37.703327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345913, 38.781334, 37.630634>,  <38.113243, 39.083305, 37.509480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345913, 38.781334, 37.630634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131716, -0.280031, -0.950912,
		0.802684, 0.593020, -0.063452,
		0.581678, -0.754924, 0.302887,
		38.520416, 38.554855, 37.721500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537674, 38.964935, 37.008671>,  <38.113243, 39.083305, 37.509480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537674, 38.964935, 37.008671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581505, 38.612247, 37.192219>,  <38.607803, 38.400635, 37.302349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581505, 38.612247, 37.192219>,  <38.537674, 38.964935, 37.008671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581505, 38.612247, 37.192219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004683, -0.462104, -0.886813,
		0.993967, 0.095026, -0.054765,
		0.109577, -0.881720, 0.458871,
		38.614380, 38.347733, 37.329880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151913, 38.650089, 36.784126>,  <38.537674, 38.964935, 37.008671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151913, 38.650089, 36.784126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951801, 38.338181, 36.934685>,  <38.831734, 38.151035, 37.025021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951801, 38.338181, 36.934685>,  <39.151913, 38.650089, 36.784126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951801, 38.338181, 36.934685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144540, -0.503818, -0.851631,
		0.853718, -0.371644, 0.364756,
		-0.500274, -0.779774, 0.376401,
		38.801720, 38.104248, 37.047604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573055, 38.060913, 36.629211>,  <39.151913, 38.650089, 36.784126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573055, 38.060913, 36.629211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203468, 37.911125, 36.660366>,  <38.981716, 37.821255, 36.679058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203468, 37.911125, 36.660366>,  <39.573055, 38.060913, 36.629211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203468, 37.911125, 36.660366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143644, -0.528466, -0.836714,
		0.354485, -0.761904, 0.542073,
		-0.923963, -0.374468, 0.077890,
		38.926281, 37.798786, 36.683735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622044, 37.350819, 36.378525>,  <39.573055, 38.060913, 36.629211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622044, 37.350819, 36.378525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227715, 37.416004, 36.362514>,  <38.991119, 37.455116, 36.352909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227715, 37.416004, 36.362514>,  <39.622044, 37.350819, 36.378525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227715, 37.416004, 36.362514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077153, -0.651976, -0.754305,
		-0.149018, -0.740521, 0.655304,
		-0.985820, 0.162963, -0.040023,
		38.931969, 37.464893, 36.350506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354942, 36.651516, 36.384083>,  <39.622044, 37.350819, 36.378525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354942, 36.651516, 36.384083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071678, 36.886559, 36.227509>,  <38.901718, 37.027584, 36.133564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071678, 36.886559, 36.227509>,  <39.354942, 36.651516, 36.384083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071678, 36.886559, 36.227509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208468, -0.703702, -0.679223,
		-0.674571, -0.399399, 0.620833,
		-0.708162, 0.587609, -0.391435,
		38.859230, 37.062843, 36.110077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600765, 35.933735, 36.547607>,  <39.354942, 36.651516, 36.384083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600765, 35.933735, 36.547607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793221, 36.115856, 36.847263>,  <39.908695, 36.225128, 37.027058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793221, 36.115856, 36.847263>,  <39.600765, 35.933735, 36.547607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793221, 36.115856, 36.847263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778334, 0.171334, -0.604021,
		-0.403365, 0.873696, -0.271942,
		0.481138, 0.455302, 0.749137,
		39.937561, 36.252445, 37.072006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883507, 35.594585, 36.565586>,  <39.600765, 35.933735, 36.547607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883507, 35.594585, 36.565586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896130, 35.299644, 36.295677>,  <38.903702, 35.122681, 36.133732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896130, 35.299644, 36.295677>,  <38.883507, 35.594585, 36.565586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896130, 35.299644, 36.295677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081431, -0.674762, 0.733530,
		-0.996179, 0.031802, -0.081334,
		0.031554, -0.737350, -0.674773,
		38.905598, 35.078438, 36.093246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232277, 35.586002, 37.281631>,  <38.883507, 35.594585, 36.565586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232277, 35.586002, 37.281631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503529, 35.412140, 37.518681>,  <39.666279, 35.307823, 37.660912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503529, 35.412140, 37.518681>,  <39.232277, 35.586002, 37.281631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503529, 35.412140, 37.518681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705644, -0.159680, 0.690340,
		-0.205431, -0.886327, -0.414998,
		0.678133, -0.434658, 0.592628,
		39.706970, 35.281742, 37.696468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850040, 35.172951, 37.725883>,  <39.232277, 35.586002, 37.281631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850040, 35.172951, 37.725883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200382, 35.194237, 37.917736>,  <39.410587, 35.207008, 38.032848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200382, 35.194237, 37.917736>,  <38.850040, 35.172951, 37.725883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200382, 35.194237, 37.917736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474242, -0.088951, 0.875889,
		0.089272, -0.994613, -0.052673,
		0.875857, 0.053213, 0.479628,
		39.463139, 35.210201, 38.061626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838425, 34.703323, 38.281357>,  <38.850040, 35.172951, 37.725883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838425, 34.703323, 38.281357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113964, 34.967251, 38.401440>,  <39.279285, 35.125607, 38.473492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113964, 34.967251, 38.401440>,  <38.838425, 34.703323, 38.281357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113964, 34.967251, 38.401440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505322, 0.140140, 0.851475,
		0.519751, -0.738238, 0.429957,
		0.688846, 0.659822, 0.300210,
		39.320618, 35.165195, 38.491505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810944, 34.660851, 39.046436>,  <38.838425, 34.703323, 38.281357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810944, 34.660851, 39.046436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001274, 35.005123, 38.973972>,  <39.115475, 35.211685, 38.930496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001274, 35.005123, 38.973972>,  <38.810944, 34.660851, 39.046436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001274, 35.005123, 38.973972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413146, 0.400550, 0.817845,
		0.776463, -0.314312, 0.546180,
		0.475831, 0.860679, -0.181156,
		39.144024, 35.263329, 38.919624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145191, 34.862629, 39.732113>,  <38.810944, 34.660851, 39.046436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145191, 34.862629, 39.732113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118362, 35.205742, 39.528267>,  <39.102264, 35.411610, 39.405960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118362, 35.205742, 39.528267>,  <39.145191, 34.862629, 39.732113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118362, 35.205742, 39.528267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326084, 0.463869, 0.823708,
		0.942958, 0.221427, 0.248596,
		-0.067075, 0.857785, -0.509613,
		39.098240, 35.463078, 39.375381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503086, 35.373299, 40.074093>,  <39.145191, 34.862629, 39.732113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503086, 35.373299, 40.074093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221806, 35.548897, 39.850380>,  <39.053040, 35.654255, 39.716152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221806, 35.548897, 39.850380>,  <39.503086, 35.373299, 40.074093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221806, 35.548897, 39.850380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439761, 0.349549, 0.827301,
		0.558680, 0.827705, -0.052747,
		-0.703198, 0.439000, -0.559278,
		39.010845, 35.680595, 39.682598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505943, 35.975758, 40.356354>,  <39.503086, 35.373299, 40.074093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505943, 35.975758, 40.356354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163662, 35.918877, 40.157337>,  <38.958294, 35.884747, 40.037926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163662, 35.918877, 40.157337>,  <39.505943, 35.975758, 40.356354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163662, 35.918877, 40.157337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502293, 0.459392, 0.732571,
		0.124396, 0.876777, -0.464530,
		-0.855703, -0.142201, -0.497546,
		38.906952, 35.876217, 40.008072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184299, 36.653839, 40.504654>,  <39.505943, 35.975758, 40.356354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184299, 36.653839, 40.504654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895096, 36.414539, 40.366467>,  <38.721573, 36.270958, 40.283554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895096, 36.414539, 40.366467>,  <39.184299, 36.653839, 40.504654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895096, 36.414539, 40.366467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554000, 0.203343, 0.807302,
		-0.412722, 0.775078, -0.478451,
		-0.723011, -0.598253, -0.345469,
		38.678192, 36.235065, 40.262825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585094, 37.000599, 40.636414>,  <39.184299, 36.653839, 40.504654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585094, 37.000599, 40.636414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453087, 36.624454, 40.603420>,  <38.373882, 36.398766, 40.583626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453087, 36.624454, 40.603420>,  <38.585094, 37.000599, 40.636414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453087, 36.624454, 40.603420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588596, 0.136682, 0.796789,
		-0.737997, 0.311506, -0.598601,
		-0.330022, -0.940363, -0.082481,
		38.354080, 36.342346, 40.578674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932793, 37.089397, 40.701744>,  <38.585094, 37.000599, 40.636414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932793, 37.089397, 40.701744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993744, 36.699810, 40.768883>,  <38.030315, 36.466057, 40.809166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993744, 36.699810, 40.768883>,  <37.932793, 37.089397, 40.701744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993744, 36.699810, 40.768883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588187, 0.047106, 0.807352,
		-0.794240, -0.221747, -0.565696,
		0.152380, -0.973966, 0.167842,
		38.039459, 36.407619, 40.819237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266560, 36.814953, 40.774723>,  <37.932793, 37.089397, 40.701744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266560, 36.814953, 40.774723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521694, 36.569294, 40.960621>,  <37.674774, 36.421898, 41.072159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521694, 36.569294, 40.960621>,  <37.266560, 36.814953, 40.774723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521694, 36.569294, 40.960621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441507, 0.202868, 0.874023,
		-0.631062, -0.762671, -0.141754,
		0.637834, -0.614148, 0.464746,
		37.713043, 36.385048, 41.100044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862835, 36.339527, 41.157146>,  <37.266560, 36.814953, 40.774723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862835, 36.339527, 41.157146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219055, 36.338139, 41.339100>,  <37.432785, 36.337303, 41.448273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219055, 36.338139, 41.339100>,  <36.862835, 36.339527, 41.157146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219055, 36.338139, 41.339100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453327, 0.076121, 0.888088,
		-0.037715, -0.997092, 0.066212,
		0.890546, -0.003479, 0.454879,
		37.486217, 36.337097, 41.475563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680092, 35.956963, 41.795918>,  <36.862835, 36.339527, 41.157146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680092, 35.956963, 41.795918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032417, 36.137413, 41.853401>,  <37.243813, 36.245682, 41.887890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032417, 36.137413, 41.853401>,  <36.680092, 35.956963, 41.795918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032417, 36.137413, 41.853401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245252, 0.175099, 0.953515,
		0.404990, -0.875116, 0.264869,
		0.880815, 0.451124, 0.143711,
		37.296661, 36.272751, 41.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858574, 35.703907, 42.421787>,  <36.680092, 35.956963, 41.795918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858574, 35.703907, 42.421787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076550, 36.034077, 42.362843>,  <37.207336, 36.232178, 42.327477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076550, 36.034077, 42.362843>,  <36.858574, 35.703907, 42.421787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076550, 36.034077, 42.362843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130714, 0.257232, 0.957468,
		0.828222, -0.502503, 0.248071,
		0.544943, 0.825423, -0.147361,
		37.240032, 36.281704, 42.318634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835506, 35.172112, 43.027847>,  <36.858574, 35.703907, 42.421787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835506, 35.172112, 43.027847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440525, 35.110893, 43.043373>,  <36.203537, 35.074162, 43.052689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440525, 35.110893, 43.043373>,  <36.835506, 35.172112, 43.027847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440525, 35.110893, 43.043373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019732, -0.363546, -0.931367,
		0.156654, -0.918918, 0.362006,
		-0.987457, -0.153045, 0.038819,
		36.144287, 35.064980, 43.055019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809662, 34.570278, 42.576176>,  <36.835506, 35.172112, 43.027847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809662, 34.570278, 42.576176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432014, 34.682693, 42.645069>,  <36.205425, 34.750141, 42.686405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432014, 34.682693, 42.645069>,  <36.809662, 34.570278, 42.576176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432014, 34.682693, 42.645069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264984, -0.336367, -0.903682,
		-0.196033, -0.898820, 0.392039,
		-0.944116, 0.281035, 0.172234,
		36.148781, 34.767006, 42.696739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346615, 33.919598, 42.564041>,  <36.809662, 34.570278, 42.576176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346615, 33.919598, 42.564041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161224, 34.253494, 42.445114>,  <36.049992, 34.453831, 42.373756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161224, 34.253494, 42.445114>,  <36.346615, 33.919598, 42.564041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161224, 34.253494, 42.445114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034552, -0.318251, -0.947376,
		-0.885437, -0.449357, 0.118659,
		-0.463474, 0.834742, -0.297317,
		36.022182, 34.503918, 42.355919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854042, 33.663486, 42.049416>,  <36.346615, 33.919598, 42.564041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854042, 33.663486, 42.049416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856251, 34.061459, 42.009243>,  <35.857574, 34.300243, 41.985142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856251, 34.061459, 42.009243>,  <35.854042, 33.663486, 42.049416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856251, 34.061459, 42.009243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229290, -0.096495, -0.968563,
		-0.973343, 0.028374, 0.227594,
		0.005521, 0.994929, -0.100428,
		35.857906, 34.359936, 41.979115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301105, 33.773911, 41.542824>,  <35.854042, 33.663486, 42.049416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301105, 33.773911, 41.542824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541046, 34.093956, 41.542248>,  <35.685009, 34.285984, 41.541904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541046, 34.093956, 41.542248>,  <35.301105, 33.773911, 41.542824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541046, 34.093956, 41.542248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023689, -0.019554, -0.999528,
		-0.799764, 0.599530, -0.030683,
		0.599847, 0.800113, -0.001437,
		35.721001, 34.333988, 41.541817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009510, 34.124981, 41.164276>,  <35.301105, 33.773911, 41.542824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009510, 34.124981, 41.164276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390228, 34.247349, 41.155422>,  <35.618660, 34.320770, 41.150108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390228, 34.247349, 41.155422>,  <35.009510, 34.124981, 41.164276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390228, 34.247349, 41.155422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035354, -0.181109, -0.982827,
		-0.304678, 0.934672, -0.183195,
		0.951799, 0.305922, -0.022135,
		35.675770, 34.339127, 41.148781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987541, 34.619652, 40.603905>,  <35.009510, 34.124981, 41.164276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987541, 34.619652, 40.603905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367531, 34.505257, 40.654133>,  <35.595524, 34.436619, 40.684269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367531, 34.505257, 40.654133>,  <34.987541, 34.619652, 40.603905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367531, 34.505257, 40.654133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175885, 0.157594, -0.971714,
		0.258110, 0.945185, 0.200010,
		0.949970, -0.285988, 0.125568,
		35.652523, 34.419460, 40.691803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351521, 35.170246, 40.305973>,  <34.987541, 34.619652, 40.603905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351521, 35.170246, 40.305973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600197, 34.857006, 40.299507>,  <35.749401, 34.669064, 40.295628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600197, 34.857006, 40.299507>,  <35.351521, 35.170246, 40.305973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600197, 34.857006, 40.299507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172900, 0.157336, -0.972292,
		0.763944, 0.601666, 0.233211,
		0.621687, -0.783099, -0.016168,
		35.786701, 34.622078, 40.294659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881207, 35.361378, 39.931801>,  <35.351521, 35.170246, 40.305973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881207, 35.361378, 39.931801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911610, 34.962582, 39.925690>,  <35.929852, 34.723305, 39.922024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911610, 34.962582, 39.925690>,  <35.881207, 35.361378, 39.931801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911610, 34.962582, 39.925690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168138, 0.027920, -0.985368,
		0.982829, 0.072331, 0.169754,
		0.076012, -0.996990, -0.015279,
		35.934414, 34.663486, 39.921104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407337, 35.291798, 39.515923>,  <35.881207, 35.361378, 39.931801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407337, 35.291798, 39.515923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176392, 34.965488, 39.502331>,  <36.037823, 34.769703, 39.494175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176392, 34.965488, 39.502331>,  <36.407337, 35.291798, 39.515923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176392, 34.965488, 39.502331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199269, -0.100424, -0.974785,
		0.791796, -0.569580, 0.220540,
		-0.577366, -0.815778, -0.033984,
		36.003181, 34.720757, 39.492134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696976, 34.866772, 39.000889>,  <36.407337, 35.291798, 39.515923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696976, 34.866772, 39.000889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324493, 34.722553, 39.022289>,  <36.101006, 34.636021, 39.035130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324493, 34.722553, 39.022289>,  <36.696976, 34.866772, 39.000889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324493, 34.722553, 39.022289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018503, -0.099831, -0.994832,
		0.364029, -0.927382, 0.086292,
		-0.931204, -0.360551, 0.053500,
		36.045132, 34.614388, 39.038338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676521, 34.302048, 38.561935>,  <36.696976, 34.866772, 39.000889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676521, 34.302048, 38.561935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298920, 34.430935, 38.590298>,  <36.072357, 34.508266, 38.607315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298920, 34.430935, 38.590298>,  <36.676521, 34.302048, 38.561935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298920, 34.430935, 38.590298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126615, -0.155359, -0.979710,
		-0.304668, -0.933829, 0.187458,
		-0.944005, 0.322221, 0.070904,
		36.015717, 34.527599, 38.611568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.688313, 35.821499, 46.704029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474773, 36.109947, 46.527397>,  <35.346649, 36.283016, 46.421417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474773, 36.109947, 46.527397>,  <35.688313, 35.821499, 46.704029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474773, 36.109947, 46.527397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196482, -0.613712, -0.764692,
		-0.822438, -0.321465, 0.469315,
		-0.533846, 0.721123, -0.441577,
		35.314621, 36.326283, 46.394924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128887, 35.400360, 46.487610>,  <35.688313, 35.821499, 46.704029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128887, 35.400360, 46.487610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.144051, 35.741135, 46.278702>,  <35.153149, 35.945599, 46.153355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.144051, 35.741135, 46.278702>,  <35.128887, 35.400360, 46.487610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144051, 35.741135, 46.278702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173658, -0.509079, -0.843019,
		-0.984076, 0.122653, 0.128648,
		0.037907, 0.851936, -0.522273,
		35.155422, 35.996716, 46.122021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643040, 35.284660, 45.934044>,  <35.128887, 35.400360, 46.487610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643040, 35.284660, 45.934044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.875565, 35.591854, 45.826504>,  <35.015079, 35.776169, 45.761982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.875565, 35.591854, 45.826504>,  <34.643040, 35.284660, 45.934044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875565, 35.591854, 45.826504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000610, -0.329997, -0.943982,
		-0.813683, 0.548908, -0.191362,
		0.581308, 0.767986, -0.268848,
		35.049957, 35.822250, 45.745850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328125, 35.421261, 45.305885>,  <34.643040, 35.284660, 45.934044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328125, 35.421261, 45.305885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691704, 35.584797, 45.273212>,  <34.909851, 35.682919, 45.253609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691704, 35.584797, 45.273212>,  <34.328125, 35.421261, 45.305885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691704, 35.584797, 45.273212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106154, -0.416412, -0.902957,
		-0.403179, 0.812066, -0.421895,
		0.908943, 0.408839, -0.081685,
		34.964386, 35.707447, 45.248707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451572, 35.624321, 44.620186>,  <34.328125, 35.421261, 45.305885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451572, 35.624321, 44.620186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835732, 35.620018, 44.731556>,  <35.066227, 35.617435, 44.798378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835732, 35.620018, 44.731556>,  <34.451572, 35.624321, 44.620186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835732, 35.620018, 44.731556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255411, -0.365412, -0.895120,
		0.111368, 0.930784, -0.348193,
		0.960397, -0.010756, 0.278428,
		35.123852, 35.616791, 44.815083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806213, 35.907673, 44.101276>,  <34.451572, 35.624321, 44.620186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806213, 35.907673, 44.101276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.118965, 35.738541, 44.284523>,  <35.306618, 35.637062, 44.394470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.118965, 35.738541, 44.284523>,  <34.806213, 35.907673, 44.101276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118965, 35.738541, 44.284523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418965, -0.187779, -0.888373,
		0.461656, 0.886540, 0.030330,
		0.781883, -0.422831, 0.458119,
		35.353531, 35.611691, 44.421959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345749, 36.150497, 43.748428>,  <34.806213, 35.907673, 44.101276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345749, 36.150497, 43.748428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501087, 35.828266, 43.927414>,  <35.594292, 35.634926, 44.034805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501087, 35.828266, 43.927414>,  <35.345749, 36.150497, 43.748428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501087, 35.828266, 43.927414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520007, -0.209302, -0.828122,
		0.760775, 0.554284, 0.337626,
		0.388349, -0.805582, 0.447463,
		35.617592, 35.586590, 44.061653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049477, 36.153248, 43.513222>,  <35.345749, 36.150497, 43.748428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049477, 36.153248, 43.513222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937950, 35.789768, 43.637501>,  <35.871037, 35.571682, 43.712070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937950, 35.789768, 43.637501>,  <36.049477, 36.153248, 43.513222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937950, 35.789768, 43.637501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378631, -0.401337, -0.834007,
		0.882554, -0.114891, 0.455959,
		-0.278813, -0.908696, 0.310700,
		35.854305, 35.517159, 43.730709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562958, 35.789970, 43.268822>,  <36.049477, 36.153248, 43.513222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562958, 35.789970, 43.268822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279842, 35.514515, 43.331837>,  <36.109974, 35.349243, 43.369644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279842, 35.514515, 43.331837>,  <36.562958, 35.789970, 43.268822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279842, 35.514515, 43.331837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245356, -0.448755, -0.859313,
		0.662449, -0.569558, 0.486584,
		-0.707786, -0.688638, 0.157533,
		36.067505, 35.307922, 43.379097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360844, 35.910969, 43.272366>,  <36.562958, 35.789970, 43.268822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360844, 35.910969, 43.272366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.409611, 36.225258, 43.029789>,  <37.438869, 36.413830, 42.884243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.409611, 36.225258, 43.029789>,  <37.360844, 35.910969, 43.272366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409611, 36.225258, 43.029789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021952, 0.612987, 0.789788,
		0.992298, -0.082975, 0.091981,
		0.121916, 0.785724, -0.606444,
		37.446186, 36.460976, 42.847855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959274, 36.203102, 43.389626>,  <37.360844, 35.910969, 43.272366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959274, 36.203102, 43.389626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738422, 36.500938, 43.239563>,  <37.605911, 36.679638, 43.149525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738422, 36.500938, 43.239563>,  <37.959274, 36.203102, 43.389626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738422, 36.500938, 43.239563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126384, 0.519498, 0.845073,
		0.824123, 0.419177, -0.380935,
		-0.552130, 0.744589, -0.375153,
		37.572784, 36.724316, 43.127018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348957, 36.810513, 43.444427>,  <37.959274, 36.203102, 43.389626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348957, 36.810513, 43.444427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969269, 36.934402, 43.422344>,  <37.741455, 37.008736, 43.409096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969269, 36.934402, 43.422344>,  <38.348957, 36.810513, 43.444427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969269, 36.934402, 43.422344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130547, 0.547429, 0.826607,
		0.286243, 0.777426, -0.560066,
		-0.949222, 0.309726, -0.055207,
		37.684502, 37.027321, 43.405781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429478, 37.453949, 43.613918>,  <38.348957, 36.810513, 43.444427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429478, 37.453949, 43.613918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030140, 37.442719, 43.634029>,  <37.790539, 37.435982, 43.646095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030140, 37.442719, 43.634029>,  <38.429478, 37.453949, 43.613918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030140, 37.442719, 43.634029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003058, 0.846036, 0.533117,
		-0.057504, 0.532386, -0.844546,
		-0.998340, -0.028074, 0.050279,
		37.730637, 37.434296, 43.649113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213959, 38.128628, 43.467991>,  <38.429478, 37.453949, 43.613918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213959, 38.128628, 43.467991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.920403, 37.958298, 43.679680>,  <37.744267, 37.856102, 43.806694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.920403, 37.958298, 43.679680>,  <38.213959, 38.128628, 43.467991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920403, 37.958298, 43.679680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033523, 0.755455, 0.654343,
		-0.678437, 0.497959, -0.540148,
		-0.733893, -0.425823, 0.529222,
		37.700233, 37.830551, 43.838448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799606, 38.671135, 43.622398>,  <38.213959, 38.128628, 43.467991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799606, 38.671135, 43.622398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729153, 38.389194, 43.897255>,  <37.686882, 38.220032, 44.062168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729153, 38.389194, 43.897255>,  <37.799606, 38.671135, 43.622398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729153, 38.389194, 43.897255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041605, 0.702762, 0.710208,
		-0.983487, 0.096502, -0.153105,
		-0.176133, -0.704850, 0.687142,
		37.676311, 38.177738, 44.103397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433502, 38.989452, 44.022839>,  <37.799606, 38.671135, 43.622398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433502, 38.989452, 44.022839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543427, 38.676857, 44.246895>,  <37.609383, 38.489300, 44.381329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543427, 38.676857, 44.246895>,  <37.433502, 38.989452, 44.022839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543427, 38.676857, 44.246895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011878, 0.579769, 0.814694,
		-0.961425, -0.230540, 0.150044,
		0.274811, -0.781485, 0.560143,
		37.625870, 38.442413, 44.414936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942909, 38.943665, 44.485558>,  <37.433502, 38.989452, 44.022839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942909, 38.943665, 44.485558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274979, 38.781487, 44.638622>,  <37.474220, 38.684181, 44.730461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274979, 38.781487, 44.638622>,  <36.942909, 38.943665, 44.485558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274979, 38.781487, 44.638622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066418, 0.609564, 0.789949,
		-0.553540, -0.681208, 0.479113,
		0.830170, -0.405447, 0.382662,
		37.524029, 38.659851, 44.753422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871475, 38.875446, 45.146111>,  <36.942909, 38.943665, 44.485558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871475, 38.875446, 45.146111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271275, 38.872612, 45.133759>,  <37.511154, 38.870911, 45.126347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271275, 38.872612, 45.133759>,  <36.871475, 38.875446, 45.146111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271275, 38.872612, 45.133759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030101, 0.516566, 0.855718,
		0.009890, -0.856218, 0.516520,
		0.999498, -0.007084, -0.030882,
		37.571125, 38.870487, 45.124493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050919, 38.966343, 45.799561>,  <36.871475, 38.875446, 45.146111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050919, 38.966343, 45.799561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.414944, 39.026638, 45.645126>,  <37.633358, 39.062817, 45.552467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.414944, 39.026638, 45.645126>,  <37.050919, 38.966343, 45.799561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414944, 39.026638, 45.645126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273306, 0.482038, 0.832432,
		0.311586, -0.863086, 0.397488,
		0.910065, 0.150738, -0.386083,
		37.687962, 39.071861, 45.529301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498123, 38.569439, 46.207909>,  <37.050919, 38.966343, 45.799561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498123, 38.569439, 46.207909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692524, 38.871960, 46.032719>,  <37.809162, 39.053471, 45.927605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692524, 38.871960, 46.032719>,  <37.498123, 38.569439, 46.207909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692524, 38.871960, 46.032719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275297, 0.343144, 0.898033,
		0.829468, -0.557015, -0.041439,
		0.485998, 0.756298, -0.437971,
		37.838322, 39.098850, 45.901329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000591, 38.735138, 46.749672>,  <37.498123, 38.569439, 46.207909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000591, 38.735138, 46.749672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056023, 39.044930, 46.502777>,  <38.089279, 39.230804, 46.354641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056023, 39.044930, 46.502777>,  <38.000591, 38.735138, 46.749672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056023, 39.044930, 46.502777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078725, 0.612663, 0.786414,
		0.987218, -0.157570, 0.023930,
		0.138576, 0.774478, -0.617237,
		38.097595, 39.277271, 46.317608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710526, 39.054672, 46.853901>,  <38.000591, 38.735138, 46.749672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710526, 39.054672, 46.853901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500618, 39.352894, 46.689575>,  <38.374672, 39.531826, 46.590981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500618, 39.352894, 46.689575>,  <38.710526, 39.054672, 46.853901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500618, 39.352894, 46.689575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492549, 0.659553, 0.567790,
		0.694269, 0.095616, -0.713336,
		-0.524773, 0.745552, -0.410811,
		38.343185, 39.576561, 46.566330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186562, 39.680859, 46.630543>,  <38.710526, 39.054672, 46.853901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186562, 39.680859, 46.630543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.821762, 39.844551, 46.641727>,  <38.602882, 39.942768, 46.648438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.821762, 39.844551, 46.641727>,  <39.186562, 39.680859, 46.630543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821762, 39.844551, 46.641727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367076, 0.783827, 0.500870,
		0.183058, 0.467057, -0.865071,
		-0.912001, 0.409235, 0.027960,
		38.548161, 39.967323, 46.650116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.166172, 42.212624, 44.090797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.528797, 42.089725, 44.206558>,  <32.746372, 42.015987, 44.276012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.528797, 42.089725, 44.206558>,  <32.166172, 42.212624, 44.090797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528797, 42.089725, 44.206558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186004, -0.324671, -0.927357,
		0.378883, 0.894534, -0.237185,
		0.906560, -0.307243, 0.289399,
		32.800766, 41.997551, 44.293377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604355, 42.371761, 43.500401>,  <32.166172, 42.212624, 44.090797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604355, 42.371761, 43.500401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.821625, 42.106831, 43.706814>,  <32.951988, 41.947872, 43.830662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.821625, 42.106831, 43.706814>,  <32.604355, 42.371761, 43.500401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821625, 42.106831, 43.706814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427303, -0.310997, -0.848936,
		0.722755, 0.681623, 0.114087,
		0.543174, -0.662323, 0.516034,
		32.984577, 41.908134, 43.861626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282303, 42.294697, 43.105213>,  <32.604355, 42.371761, 43.500401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282303, 42.294697, 43.105213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281982, 41.971035, 43.340252>,  <33.281788, 41.776836, 43.481274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281982, 41.971035, 43.340252>,  <33.282303, 42.294697, 43.105213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281982, 41.971035, 43.340252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496070, -0.510523, -0.702340,
		0.868282, 0.290924, 0.401807,
		-0.000804, -0.809154, 0.587597,
		33.281742, 41.728291, 43.516529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003540, 42.188335, 43.208065>,  <33.282303, 42.294697, 43.105213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003540, 42.188335, 43.208065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810474, 41.843430, 43.269432>,  <33.694633, 41.636486, 43.306252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810474, 41.843430, 43.269432>,  <34.003540, 42.188335, 43.208065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810474, 41.843430, 43.269432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534449, -0.428766, -0.728371,
		0.693828, -0.269564, 0.667786,
		-0.482667, -0.862261, 0.153422,
		33.665676, 41.584751, 43.315460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390686, 41.612896, 43.294834>,  <34.003540, 42.188335, 43.208065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390686, 41.612896, 43.294834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044956, 41.464809, 43.158665>,  <33.837521, 41.375957, 43.076962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044956, 41.464809, 43.158665>,  <34.390686, 41.612896, 43.294834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044956, 41.464809, 43.158665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496499, -0.520091, -0.694978,
		0.080242, -0.769704, 0.633338,
		-0.864321, -0.370218, -0.340424,
		33.785660, 41.353745, 43.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503029, 40.893295, 43.092804>,  <34.390686, 41.612896, 43.294834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503029, 40.893295, 43.092804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150616, 40.979687, 42.924458>,  <33.939167, 41.031521, 42.823448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150616, 40.979687, 42.924458>,  <34.503029, 40.893295, 43.092804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150616, 40.979687, 42.924458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224482, -0.592243, -0.773858,
		-0.416396, -0.776273, 0.473302,
		-0.881035, 0.215984, -0.420866,
		33.886307, 41.044483, 42.798199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299458, 40.239418, 42.838982>,  <34.503029, 40.893295, 43.092804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299458, 40.239418, 42.838982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071835, 40.502842, 42.642014>,  <33.935261, 40.660896, 42.523834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071835, 40.502842, 42.642014>,  <34.299458, 40.239418, 42.838982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071835, 40.502842, 42.642014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175249, -0.487944, -0.855102,
		-0.803408, -0.572895, 0.162254,
		-0.569054, 0.658561, -0.492418,
		33.901119, 40.700409, 42.494289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834679, 39.891769, 42.433563>,  <34.299458, 40.239418, 42.838982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834679, 39.891769, 42.433563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862118, 40.251011, 42.259804>,  <33.878582, 40.466557, 42.155548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862118, 40.251011, 42.259804>,  <33.834679, 39.891769, 42.433563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862118, 40.251011, 42.259804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101902, -0.439453, -0.892467,
		-0.992426, 0.016956, -0.121665,
		0.068599, 0.898106, -0.434397,
		33.882698, 40.520443, 42.129486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373566, 39.831787, 41.926189>,  <33.834679, 39.891769, 42.433563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373566, 39.831787, 41.926189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622700, 40.131886, 41.837463>,  <33.772179, 40.311947, 41.784225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622700, 40.131886, 41.837463>,  <33.373566, 39.831787, 41.926189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622700, 40.131886, 41.837463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110241, -0.364860, -0.924513,
		-0.774546, 0.551367, -0.309956,
		0.622837, 0.750248, -0.221818,
		33.809551, 40.356960, 41.770920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214195, 40.002388, 41.300285>,  <33.373566, 39.831787, 41.926189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214195, 40.002388, 41.300285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.558601, 40.205795, 41.297058>,  <33.765244, 40.327839, 41.295124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.558601, 40.205795, 41.297058>,  <33.214195, 40.002388, 41.300285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558601, 40.205795, 41.297058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122354, -0.222511, -0.967222,
		-0.493641, 0.831807, -0.253804,
		0.861016, 0.508514, -0.008066,
		33.816906, 40.358349, 41.294640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252613, 40.393040, 40.693043>,  <33.214195, 40.002388, 41.300285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252613, 40.393040, 40.693043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624153, 40.317574, 40.820572>,  <33.847076, 40.272293, 40.897091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624153, 40.317574, 40.820572>,  <33.252613, 40.393040, 40.693043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624153, 40.317574, 40.820572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270625, -0.242166, -0.931728,
		0.252991, 0.951715, -0.173879,
		0.928848, -0.188663, 0.318823,
		33.902809, 40.260975, 40.916218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741386, 40.663658, 40.189228>,  <33.252613, 40.393040, 40.693043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741386, 40.663658, 40.189228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940365, 40.382240, 40.392231>,  <34.059753, 40.213390, 40.514034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940365, 40.382240, 40.392231>,  <33.741386, 40.663658, 40.189228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940365, 40.382240, 40.392231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326250, -0.390357, -0.860919,
		0.803809, 0.593836, 0.035352,
		0.497445, -0.703548, 0.507512,
		34.089600, 40.171177, 40.544483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543716, 40.685455, 39.955734>,  <33.741386, 40.663658, 40.189228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543716, 40.685455, 39.955734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441887, 40.320847, 40.084930>,  <34.380791, 40.102081, 40.162449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441887, 40.320847, 40.084930>,  <34.543716, 40.685455, 39.955734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441887, 40.320847, 40.084930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361048, -0.399433, -0.842673,
		0.897127, -0.097907, 0.430787,
		-0.254574, -0.911519, 0.322993,
		34.365513, 40.047390, 40.181828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096912, 40.232559, 39.656239>,  <34.543716, 40.685455, 39.955734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096912, 40.232559, 39.656239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827888, 39.963570, 39.779819>,  <34.666473, 39.802177, 39.853966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827888, 39.963570, 39.779819>,  <35.096912, 40.232559, 39.656239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827888, 39.963570, 39.779819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228871, -0.586013, -0.777308,
		0.703766, -0.452073, 0.548036,
		-0.672556, -0.672473, 0.308950,
		34.626122, 39.761829, 39.872505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883244, 40.042240, 39.626141>,  <35.096912, 40.232559, 39.656239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883244, 40.042240, 39.626141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.117729, 40.321911, 39.462429>,  <36.258423, 40.489712, 39.364204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.117729, 40.321911, 39.462429>,  <35.883244, 40.042240, 39.626141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117729, 40.321911, 39.462429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110536, 0.569482, 0.814538,
		0.802579, -0.432255, 0.411124,
		0.586216, 0.699175, -0.409275,
		36.293594, 40.531662, 39.339645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290165, 40.236019, 40.126228>,  <35.883244, 40.042240, 39.626141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290165, 40.236019, 40.126228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327641, 40.561710, 39.897057>,  <36.350124, 40.757126, 39.759552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327641, 40.561710, 39.897057>,  <36.290165, 40.236019, 40.126228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327641, 40.561710, 39.897057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158029, 0.556007, 0.816017,
		0.982980, -0.166991, -0.076581,
		0.093688, 0.814230, -0.572933,
		36.355747, 40.805981, 39.725178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885963, 40.626846, 40.396351>,  <36.290165, 40.236019, 40.126228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885963, 40.626846, 40.396351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.662239, 40.898155, 40.205723>,  <36.528004, 41.060940, 40.091347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.662239, 40.898155, 40.205723>,  <36.885963, 40.626846, 40.396351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662239, 40.898155, 40.205723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036142, 0.594308, 0.803425,
		0.828171, 0.432138, -0.356916,
		-0.559308, 0.678273, -0.476571,
		36.494446, 41.101639, 40.062752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158749, 41.321442, 40.627800>,  <36.885963, 40.626846, 40.396351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158749, 41.321442, 40.627800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.797913, 41.384949, 40.467289>,  <36.581409, 41.423054, 40.370983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.797913, 41.384949, 40.467289>,  <37.158749, 41.321442, 40.627800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797913, 41.384949, 40.467289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200182, 0.669826, 0.715025,
		0.382309, 0.725346, -0.572461,
		-0.902090, 0.158764, -0.401282,
		36.527287, 41.432579, 40.346905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075092, 42.025730, 40.639946>,  <37.158749, 41.321442, 40.627800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075092, 42.025730, 40.639946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.703365, 41.905128, 40.554657>,  <36.480328, 41.832767, 40.503483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.703365, 41.905128, 40.554657>,  <37.075092, 42.025730, 40.639946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703365, 41.905128, 40.554657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363741, 0.647711, 0.669449,
		-0.063738, 0.699688, -0.711600,
		-0.929317, -0.301508, -0.213222,
		36.424572, 41.814674, 40.490692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876667, 42.609180, 40.502361>,  <37.075092, 42.025730, 40.639946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876667, 42.609180, 40.502361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.555603, 42.395329, 40.608124>,  <36.362965, 42.267017, 40.671581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.555603, 42.395329, 40.608124>,  <36.876667, 42.609180, 40.502361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555603, 42.395329, 40.608124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229879, 0.686355, 0.689980,
		-0.550364, 0.493035, -0.673808,
		-0.802655, -0.534634, 0.264407,
		36.314808, 42.234940, 40.687447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316498, 43.142319, 40.601540>,  <36.876667, 42.609180, 40.502361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316498, 43.142319, 40.601540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228565, 42.807278, 40.801579>,  <36.175808, 42.606255, 40.921600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228565, 42.807278, 40.801579>,  <36.316498, 43.142319, 40.601540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228565, 42.807278, 40.801579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416131, 0.544170, 0.728501,
		-0.882333, -0.047961, -0.468176,
		-0.219828, -0.837603, 0.500097,
		36.162617, 42.555996, 40.951607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683189, 43.243023, 40.806271>,  <36.316498, 43.142319, 40.601540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683189, 43.243023, 40.806271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812885, 42.949165, 41.044655>,  <35.890701, 42.772850, 41.187687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812885, 42.949165, 41.044655>,  <35.683189, 43.243023, 40.806271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812885, 42.949165, 41.044655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275324, 0.529440, 0.802428,
		-0.905024, -0.424258, -0.030602,
		0.324235, -0.734642, 0.595964,
		35.910156, 42.728771, 41.223446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093964, 43.071278, 41.328865>,  <35.683189, 43.243023, 40.806271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093964, 43.071278, 41.328865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.447262, 42.940468, 41.463291>,  <35.659241, 42.861980, 41.543945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.447262, 42.940468, 41.463291>,  <35.093964, 43.071278, 41.328865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447262, 42.940468, 41.463291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260989, 0.252570, 0.931715,
		-0.389577, -0.910637, 0.137729,
		0.883241, -0.327029, 0.336061,
		35.712234, 42.842358, 41.564110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907978, 42.972458, 41.976669>,  <35.093964, 43.071278, 41.328865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907978, 42.972458, 41.976669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307049, 42.949860, 41.991932>,  <35.546490, 42.936302, 42.001091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307049, 42.949860, 41.991932>,  <34.907978, 42.972458, 41.976669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307049, 42.949860, 41.991932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018999, 0.307172, 0.951464,
		-0.065475, -0.949976, 0.305383,
		0.997673, -0.056495, 0.038161,
		35.606350, 42.932911, 42.003380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115864, 42.574177, 42.570667>,  <34.907978, 42.972458, 41.976669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115864, 42.574177, 42.570667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412373, 42.834007, 42.503052>,  <35.590279, 42.989906, 42.462482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412373, 42.834007, 42.503052>,  <35.115864, 42.574177, 42.570667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412373, 42.834007, 42.503052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006908, 0.244441, 0.969640,
		0.671175, -0.719930, 0.176709,
		0.741267, 0.649577, -0.169036,
		35.634754, 43.028881, 42.452339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581116, 42.393185, 43.168827>,  <35.115864, 42.574177, 42.570667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581116, 42.393185, 43.168827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.688480, 42.759903, 43.050549>,  <35.752899, 42.979935, 42.979580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.688480, 42.759903, 43.050549>,  <35.581116, 42.393185, 43.168827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688480, 42.759903, 43.050549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094081, 0.280543, 0.955220,
		0.958698, -0.284215, -0.010951,
		0.268416, 0.916797, -0.295695,
		35.769005, 43.034943, 42.961842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294926, 42.499699, 43.460583>,  <35.581116, 42.393185, 43.168827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294926, 42.499699, 43.460583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141319, 42.866127, 43.414383>,  <36.049156, 43.085983, 43.386662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141319, 42.866127, 43.414383>,  <36.294926, 42.499699, 43.460583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141319, 42.866127, 43.414383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197163, 0.203564, 0.959004,
		0.902032, 0.345497, -0.258787,
		-0.384012, 0.916075, -0.115502,
		36.026115, 43.140949, 43.379734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852238, 43.019485, 43.720924>,  <36.294926, 42.499699, 43.460583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852238, 43.019485, 43.720924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.492901, 43.195198, 43.722866>,  <36.277298, 43.300625, 43.724030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.492901, 43.195198, 43.722866>,  <36.852238, 43.019485, 43.720924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492901, 43.195198, 43.722866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152176, 0.300804, 0.941467,
		0.412107, 0.846493, -0.337071,
		-0.898338, 0.439279, 0.004852,
		36.223400, 43.326981, 43.724323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591812, 43.431240, 43.816162>,  <36.852238, 43.019485, 43.720924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591812, 43.431240, 43.816162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919189, 43.236950, 43.938942>,  <38.115616, 43.120377, 44.012611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919189, 43.236950, 43.938942>,  <37.591812, 43.431240, 43.816162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919189, 43.236950, 43.938942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259120, -0.164799, -0.951682,
		0.512842, 0.858436, -0.009018,
		0.818444, -0.485726, 0.306953,
		38.164722, 43.091232, 44.031029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194889, 43.624161, 43.312859>,  <37.591812, 43.431240, 43.816162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194889, 43.624161, 43.312859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318207, 43.274643, 43.463287>,  <38.392197, 43.064930, 43.553543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318207, 43.274643, 43.463287>,  <38.194889, 43.624161, 43.312859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318207, 43.274643, 43.463287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314421, -0.279513, -0.907200,
		0.897826, 0.397934, 0.188566,
		0.308299, -0.873797, 0.376072,
		38.410698, 43.012505, 43.576111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824715, 43.464439, 42.992336>,  <38.194889, 43.624161, 43.312859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824715, 43.464439, 42.992336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.691551, 43.116734, 43.138512>,  <38.611652, 42.908108, 43.226215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.691551, 43.116734, 43.138512>,  <38.824715, 43.464439, 42.992336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691551, 43.116734, 43.138512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296764, -0.464435, -0.834405,
		0.895043, -0.169334, 0.412582,
		-0.332911, -0.869267, 0.365437,
		38.591679, 42.855953, 43.248142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329941, 43.023266, 42.823395>,  <38.824715, 43.464439, 42.992336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329941, 43.023266, 42.823395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.033825, 42.764637, 42.897064>,  <38.856155, 42.609459, 42.941265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.033825, 42.764637, 42.897064>,  <39.329941, 43.023266, 42.823395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033825, 42.764637, 42.897064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318737, -0.578752, -0.750635,
		0.591925, -0.496986, 0.634530,
		-0.740291, -0.646568, 0.184170,
		38.811737, 42.570667, 42.952316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597256, 42.417538, 42.777424>,  <39.329941, 43.023266, 42.823395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597256, 42.417538, 42.777424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.210800, 42.326000, 42.729744>,  <38.978928, 42.271076, 42.701138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.210800, 42.326000, 42.729744>,  <39.597256, 42.417538, 42.777424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210800, 42.326000, 42.729744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243604, -0.656696, -0.713728,
		0.085056, -0.718596, 0.690206,
		-0.966138, -0.228844, -0.119197,
		38.920959, 42.257347, 42.693985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610714, 41.671814, 42.671295>,  <39.597256, 42.417538, 42.777424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610714, 41.671814, 42.671295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.269043, 41.814091, 42.519577>,  <39.064041, 41.899456, 42.428547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.269043, 41.814091, 42.519577>,  <39.610714, 41.671814, 42.671295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269043, 41.814091, 42.519577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047638, -0.672847, -0.738246,
		-0.517795, -0.648662, 0.557787,
		-0.854177, 0.355688, -0.379298,
		39.012791, 41.920795, 42.405788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208645, 41.081329, 42.591396>,  <39.610714, 41.671814, 42.671295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208645, 41.081329, 42.591396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058113, 41.374916, 42.365238>,  <38.967793, 41.551067, 42.229542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058113, 41.374916, 42.365238>,  <39.208645, 41.081329, 42.591396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058113, 41.374916, 42.365238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093237, -0.637161, -0.765070,
		-0.921783, -0.235202, 0.308215,
		-0.376328, 0.733966, -0.565395,
		38.945213, 41.595104, 42.195621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568260, 40.869408, 42.271629>,  <39.208645, 41.081329, 42.591396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568260, 40.869408, 42.271629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.694286, 41.159081, 42.026257>,  <38.769901, 41.332882, 41.879032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.694286, 41.159081, 42.026257>,  <38.568260, 40.869408, 42.271629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694286, 41.159081, 42.026257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258999, -0.556209, -0.789653,
		-0.913046, 0.407672, 0.012319,
		0.315067, 0.724179, -0.613430,
		38.788807, 41.376335, 41.842228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994747, 40.938702, 41.748550>,  <38.568260, 40.869408, 42.271629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994747, 40.938702, 41.748550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.335537, 41.077709, 41.591900>,  <38.540012, 41.161114, 41.497910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.335537, 41.077709, 41.591900>,  <37.994747, 40.938702, 41.748550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335537, 41.077709, 41.591900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172679, -0.519633, -0.836757,
		-0.494291, 0.780521, -0.382705,
		0.851973, 0.347517, -0.391630,
		38.591129, 41.181965, 41.474411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073116, 41.165829, 41.013172>,  <37.994747, 40.938702, 41.748550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073116, 41.165829, 41.013172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441116, 41.041080, 41.108120>,  <38.661915, 40.966232, 41.165089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441116, 41.041080, 41.108120>,  <38.073116, 41.165829, 41.013172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441116, 41.041080, 41.108120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040131, -0.527500, -0.848607,
		0.389866, 0.790241, -0.472782,
		0.919997, -0.311870, 0.237367,
		38.717113, 40.947521, 41.179329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512604, 41.279980, 40.445293>,  <38.073116, 41.165829, 41.013172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512604, 41.279980, 40.445293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687511, 40.984821, 40.650932>,  <38.792458, 40.807724, 40.774315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687511, 40.984821, 40.650932>,  <38.512604, 41.279980, 40.445293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687511, 40.984821, 40.650932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046516, -0.552324, -0.832330,
		0.898127, 0.387867, -0.207190,
		0.437270, -0.737900, 0.514099,
		38.818691, 40.763451, 40.805161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952351, 41.059105, 39.950729>,  <38.512604, 41.279980, 40.445293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952351, 41.059105, 39.950729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.953800, 40.776066, 40.233372>,  <38.954670, 40.606243, 40.402958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.953800, 40.776066, 40.233372>,  <38.952351, 41.059105, 39.950729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953800, 40.776066, 40.233372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104100, -0.702504, -0.704025,
		0.994560, 0.076111, 0.071113,
		0.003627, -0.707599, 0.706606,
		38.954887, 40.563786, 40.445354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481796, 40.691265, 39.768951>,  <38.952351, 41.059105, 39.950729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481796, 40.691265, 39.768951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229198, 40.470188, 39.986481>,  <39.077641, 40.337543, 40.117001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229198, 40.470188, 39.986481>,  <39.481796, 40.691265, 39.768951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229198, 40.470188, 39.986481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067243, -0.737763, -0.671703,
		0.772460, -0.387607, 0.503057,
		-0.631494, -0.552691, 0.543828,
		39.039749, 40.304382, 40.149628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745220, 39.857422, 39.714447>,  <39.481796, 40.691265, 39.768951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745220, 39.857422, 39.714447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.370430, 39.866280, 39.853924>,  <39.145557, 39.871593, 39.937611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.370430, 39.866280, 39.853924>,  <39.745220, 39.857422, 39.714447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370430, 39.866280, 39.853924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249998, -0.739690, -0.624788,
		0.244087, -0.672584, 0.698608,
		-0.936976, 0.022148, 0.348693,
		39.089336, 39.872925, 39.958530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.077583, 41.969460, 33.519608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.763849, 42.029591, 33.278870>,  <28.575609, 42.065670, 33.134426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.763849, 42.029591, 33.278870>,  <29.077583, 41.969460, 33.519608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763849, 42.029591, 33.278870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024270, -0.962012, -0.271926,
		-0.619860, -0.227888, 0.750893,
		-0.784337, 0.150331, -0.601843,
		28.528547, 42.074692, 33.098316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447779, 41.603046, 33.735683>,  <29.077583, 41.969460, 33.519608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447779, 41.603046, 33.735683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442474, 41.653717, 33.338940>,  <28.439291, 41.684120, 33.100895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442474, 41.653717, 33.338940>,  <28.447779, 41.603046, 33.735683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442474, 41.653717, 33.338940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109169, -0.986197, -0.124490,
		-0.993935, 0.106629, 0.026907,
		-0.013262, 0.126672, -0.991856,
		28.438496, 41.691719, 33.041382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897066, 41.305630, 33.451637>,  <28.447779, 41.603046, 33.735683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897066, 41.305630, 33.451637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158659, 41.311157, 33.149082>,  <28.315615, 41.314472, 32.967548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158659, 41.311157, 33.149082>,  <27.897066, 41.305630, 33.451637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158659, 41.311157, 33.149082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176236, -0.969541, -0.170090,
		-0.735695, 0.244538, -0.631628,
		0.653983, 0.013818, -0.756383,
		28.354855, 41.315304, 32.922169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521685, 40.972748, 32.918476>,  <27.897066, 41.305630, 33.451637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521685, 40.972748, 32.918476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913677, 40.932178, 32.849945>,  <28.148872, 40.907837, 32.808826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913677, 40.932178, 32.849945>,  <27.521685, 40.972748, 32.918476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913677, 40.932178, 32.849945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146242, -0.950618, -0.273748,
		-0.135105, 0.293324, -0.946418,
		0.979979, -0.101421, -0.171330,
		28.207670, 40.901752, 32.798546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621761, 40.580185, 32.265041>,  <27.521685, 40.972748, 32.918476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621761, 40.580185, 32.265041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984535, 40.551929, 32.431164>,  <28.202200, 40.534977, 32.530838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984535, 40.551929, 32.431164>,  <27.621761, 40.580185, 32.265041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984535, 40.551929, 32.431164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061097, -0.953363, -0.295578,
		0.416819, 0.293444, -0.860321,
		0.906934, -0.070640, 0.415308,
		28.256615, 40.530739, 32.555756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077871, 40.139896, 31.848598>,  <27.621761, 40.580185, 32.265041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077871, 40.139896, 31.848598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.246599, 40.104477, 32.209538>,  <28.347836, 40.083225, 32.426102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.246599, 40.104477, 32.209538>,  <28.077871, 40.139896, 31.848598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246599, 40.104477, 32.209538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043056, -0.992141, -0.117483,
		0.905657, 0.088408, -0.414692,
		0.421819, -0.088544, 0.902346,
		28.373144, 40.077915, 32.480240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490198, 39.578415, 31.805319>,  <28.077871, 40.139896, 31.848598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490198, 39.578415, 31.805319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450855, 39.608448, 32.202244>,  <28.427250, 39.626469, 32.440399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450855, 39.608448, 32.202244>,  <28.490198, 39.578415, 31.805319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450855, 39.608448, 32.202244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007280, -0.997177, 0.074734,
		0.995125, 0.000127, 0.098626,
		-0.098357, 0.075087, 0.992314,
		28.421349, 39.630974, 32.499939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021477, 39.142727, 32.024250>,  <28.490198, 39.578415, 31.805319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021477, 39.142727, 32.024250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770479, 39.193832, 32.331478>,  <28.619881, 39.224495, 32.515816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770479, 39.193832, 32.331478>,  <29.021477, 39.142727, 32.024250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770479, 39.193832, 32.331478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204266, -0.924881, 0.320734,
		0.751350, 0.358149, 0.554259,
		-0.627494, 0.127767, 0.768067,
		28.582232, 39.232162, 32.561897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429846, 39.018230, 32.567688>,  <29.021477, 39.142727, 32.024250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429846, 39.018230, 32.567688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044781, 38.965256, 32.662125>,  <28.813742, 38.933472, 32.718788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044781, 38.965256, 32.662125>,  <29.429846, 39.018230, 32.567688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044781, 38.965256, 32.662125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176464, -0.968390, 0.176298,
		0.205284, 0.211377, 0.955604,
		-0.962663, -0.132438, 0.236095,
		28.755981, 38.925526, 32.732952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523685, 38.468174, 32.875340>,  <29.429846, 39.018230, 32.567688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523685, 38.468174, 32.875340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125719, 38.485718, 32.839066>,  <28.886940, 38.496243, 32.817303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125719, 38.485718, 32.839066>,  <29.523685, 38.468174, 32.875340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125719, 38.485718, 32.839066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047088, -0.998318, 0.033819,
		-0.089047, 0.037917, 0.995305,
		-0.994914, 0.043856, -0.090683,
		28.827246, 38.498875, 32.811859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183949, 38.280758, 33.464947>,  <29.523685, 38.468174, 32.875340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183949, 38.280758, 33.464947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926775, 38.210297, 33.166790>,  <28.772470, 38.168022, 32.987896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926775, 38.210297, 33.166790>,  <29.183949, 38.280758, 33.464947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926775, 38.210297, 33.166790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068242, -0.956149, 0.284821,
		-0.762875, 0.233988, 0.602721,
		-0.642935, -0.176152, -0.745389,
		28.733894, 38.157452, 32.943172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501438, 37.969402, 33.772045>,  <29.183949, 38.280758, 33.464947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501438, 37.969402, 33.772045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541956, 37.868809, 33.387028>,  <28.566267, 37.808453, 33.156017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541956, 37.868809, 33.387028>,  <28.501438, 37.969402, 33.772045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541956, 37.868809, 33.387028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091758, -0.965760, 0.242670,
		-0.990616, 0.063741, -0.120901,
		0.101294, -0.251486, -0.962546,
		28.572344, 37.793362, 33.098263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165302, 37.354538, 33.799381>,  <28.501438, 37.969402, 33.772045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165302, 37.354538, 33.799381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338717, 37.349354, 33.438965>,  <28.442764, 37.346241, 33.222713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338717, 37.349354, 33.438965>,  <28.165302, 37.354538, 33.799381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338717, 37.349354, 33.438965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144473, -0.987962, -0.055298,
		-0.889481, 0.154150, -0.430189,
		0.433534, -0.012964, -0.901044,
		28.468777, 37.345463, 33.168652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787785, 36.944347, 33.443806>,  <28.165302, 37.354538, 33.799381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787785, 36.944347, 33.443806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143206, 36.942966, 33.260300>,  <28.356459, 36.942139, 33.150196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143206, 36.942966, 33.260300>,  <27.787785, 36.944347, 33.443806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143206, 36.942966, 33.260300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067720, -0.990004, -0.123714,
		-0.453751, 0.140994, -0.879904,
		0.888552, -0.003452, -0.458763,
		28.409771, 36.941933, 33.122669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645256, 36.573151, 32.778904>,  <27.787785, 36.944347, 33.443806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645256, 36.573151, 32.778904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034647, 36.531830, 32.860561>,  <28.268282, 36.507038, 32.909554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034647, 36.531830, 32.860561>,  <27.645256, 36.573151, 32.778904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034647, 36.531830, 32.860561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137256, -0.977552, 0.159854,
		0.183045, -0.183634, -0.965802,
		0.973476, -0.103302, 0.204141,
		28.326691, 36.500839, 32.921803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801842, 35.924976, 32.631290>,  <27.645256, 36.573151, 32.778904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801842, 35.924976, 32.631290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115870, 35.994884, 32.868988>,  <28.304287, 36.036831, 33.011604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115870, 35.994884, 32.868988>,  <27.801842, 35.924976, 32.631290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115870, 35.994884, 32.868988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081812, -0.980221, 0.180204,
		0.613982, -0.092856, -0.783839,
		0.785069, 0.174770, 0.594241,
		28.351391, 36.047314, 33.047260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456598, 35.495285, 32.447964>,  <27.801842, 35.924976, 32.631290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456598, 35.495285, 32.447964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.460678, 35.585472, 32.837643>,  <28.463125, 35.639584, 33.071449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.460678, 35.585472, 32.837643>,  <28.456598, 35.495285, 32.447964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460678, 35.585472, 32.837643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190578, -0.956828, 0.219453,
		0.981619, 0.183422, -0.052729,
		0.010200, 0.225468, 0.974197,
		28.463737, 35.653114, 33.129902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057859, 35.198196, 32.709457>,  <28.456598, 35.495285, 32.447964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057859, 35.198196, 32.709457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.852407, 35.249012, 33.048878>,  <28.729137, 35.279503, 33.252533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.852407, 35.249012, 33.048878>,  <29.057859, 35.198196, 32.709457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852407, 35.249012, 33.048878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423734, -0.822401, 0.379613,
		0.746081, 0.554541, 0.368575,
		-0.513628, 0.127044, 0.848556,
		28.698318, 35.287125, 33.303444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524834, 35.062222, 33.328018>,  <29.057859, 35.198196, 32.709457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524834, 35.062222, 33.328018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152243, 35.028954, 33.469685>,  <28.928688, 35.008995, 33.554684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152243, 35.028954, 33.469685>,  <29.524834, 35.062222, 33.328018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152243, 35.028954, 33.469685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279933, -0.785625, 0.551753,
		0.232355, 0.613088, 0.755072,
		-0.931477, -0.083167, 0.354167,
		28.872799, 35.004002, 33.575935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576860, 34.916332, 34.068466>,  <29.524834, 35.062222, 33.328018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576860, 34.916332, 34.068466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210432, 34.781013, 33.982327>,  <28.990576, 34.699821, 33.930641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210432, 34.781013, 33.982327>,  <29.576860, 34.916332, 34.068466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210432, 34.781013, 33.982327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204162, -0.855627, 0.475627,
		-0.345159, 0.391741, 0.852880,
		-0.916069, -0.338293, -0.215349,
		28.935612, 34.679527, 33.917721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285936, 34.577515, 34.151657>,  <29.576860, 34.916332, 34.068466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285936, 34.577515, 34.151657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639364, 34.485126, 34.314610>,  <30.851421, 34.429695, 34.412380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639364, 34.485126, 34.314610>,  <30.285936, 34.577515, 34.151657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639364, 34.485126, 34.314610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399513, 0.825630, -0.398401,
		-0.244331, 0.514770, 0.821775,
		0.883568, -0.230968, 0.407384,
		30.904434, 34.415836, 34.436825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416002, 35.047699, 34.513145>,  <30.285936, 34.577515, 34.151657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416002, 35.047699, 34.513145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.775219, 34.882988, 34.451229>,  <30.990749, 34.784161, 34.414078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.775219, 34.882988, 34.451229>,  <30.416002, 35.047699, 34.513145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775219, 34.882988, 34.451229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375590, 0.900899, -0.217516,
		0.229020, 0.137200, 0.963705,
		0.898043, -0.411774, -0.154793,
		31.044632, 34.759457, 34.404793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927538, 35.469006, 34.892128>,  <30.416002, 35.047699, 34.513145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927538, 35.469006, 34.892128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173782, 35.286961, 34.634789>,  <31.321529, 35.177734, 34.480385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173782, 35.286961, 34.634789>,  <30.927538, 35.469006, 34.892128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173782, 35.286961, 34.634789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339909, 0.889882, -0.304256,
		0.710973, -0.031376, 0.702519,
		0.615613, -0.455110, -0.643347,
		31.358467, 35.150429, 34.441784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559269, 35.776283, 34.914841>,  <30.927538, 35.469006, 34.892128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559269, 35.776283, 34.914841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.556480, 35.585117, 34.563488>,  <31.554808, 35.470417, 34.352676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.556480, 35.585117, 34.563488>,  <31.559269, 35.776283, 34.914841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556480, 35.585117, 34.563488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271513, 0.844497, -0.461634,
		0.962409, -0.241709, 0.123874,
		-0.006970, -0.477915, -0.878379,
		31.554390, 35.441742, 34.299973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277058, 35.885975, 34.612736>,  <31.559269, 35.776283, 34.914841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277058, 35.885975, 34.612736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049168, 35.779255, 34.301807>,  <31.912432, 35.715221, 34.115250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049168, 35.779255, 34.301807>,  <32.277058, 35.885975, 34.612736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049168, 35.779255, 34.301807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225622, 0.858716, -0.460110,
		0.790255, -0.437519, -0.429039,
		-0.569730, -0.266804, -0.777318,
		31.878248, 35.699215, 34.068611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656857, 36.062923, 34.012272>,  <32.277058, 35.885975, 34.612736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656857, 36.062923, 34.012272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.287193, 36.046242, 33.860378>,  <32.065395, 36.036232, 33.769241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.287193, 36.046242, 33.860378>,  <32.656857, 36.062923, 34.012272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287193, 36.046242, 33.860378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109619, 0.923273, -0.368172,
		0.365948, -0.381875, -0.848678,
		-0.924157, -0.041701, -0.379731,
		32.009945, 36.033733, 33.746460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643116, 36.283897, 33.311977>,  <32.656857, 36.062923, 34.012272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643116, 36.283897, 33.311977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.259327, 36.333672, 33.413120>,  <32.029053, 36.363537, 33.473804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.259327, 36.333672, 33.413120>,  <32.643116, 36.283897, 33.311977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259327, 36.333672, 33.413120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015998, 0.871743, -0.489703,
		-0.281360, -0.473900, -0.834419,
		-0.959469, 0.124434, 0.252855,
		31.971487, 36.371002, 33.488976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342842, 36.595684, 32.718258>,  <32.643116, 36.283897, 33.311977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342842, 36.595684, 32.718258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.048656, 36.671368, 32.978504>,  <31.872145, 36.716778, 33.134651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.048656, 36.671368, 32.978504>,  <32.342842, 36.595684, 32.718258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048656, 36.671368, 32.978504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146793, 0.892922, -0.425608,
		-0.661473, -0.408524, -0.628937,
		-0.735462, 0.189205, 0.650612,
		31.828018, 36.728130, 33.173687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907511, 37.171829, 32.446564>,  <32.342842, 36.595684, 32.718258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907511, 37.171829, 32.446564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.790262, 37.176754, 32.828960>,  <31.719913, 37.179710, 33.058399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.790262, 37.176754, 32.828960>,  <31.907511, 37.171829, 32.446564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790262, 37.176754, 32.828960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226132, 0.970653, -0.081840,
		-0.928948, -0.240170, -0.281732,
		-0.293120, 0.012316, 0.955996,
		31.702326, 37.180450, 33.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294806, 37.402283, 32.465546>,  <31.907511, 37.171829, 32.446564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294806, 37.402283, 32.465546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442970, 37.486973, 32.827312>,  <31.531870, 37.537785, 33.044373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442970, 37.486973, 32.827312>,  <31.294806, 37.402283, 32.465546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442970, 37.486973, 32.827312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254329, 0.959585, -0.120473,
		-0.893371, -0.185394, 0.409289,
		0.370412, 0.211721, 0.904416,
		31.554094, 37.550488, 33.098637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805298, 37.911797, 32.717831>,  <31.294806, 37.402283, 32.465546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805298, 37.911797, 32.717831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.146688, 37.957886, 32.921127>,  <31.351522, 37.985538, 33.043106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.146688, 37.957886, 32.921127>,  <30.805298, 37.911797, 32.717831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146688, 37.957886, 32.921127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130968, 0.991375, -0.004822,
		-0.504410, -0.062448, 0.861203,
		0.853474, 0.115222, 0.508238,
		31.402731, 37.992451, 33.073597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661850, 38.320721, 33.328205>,  <30.805298, 37.911797, 32.717831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661850, 38.320721, 33.328205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.057850, 38.348282, 33.278965>,  <31.295450, 38.364819, 33.249420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.057850, 38.348282, 33.278965>,  <30.661850, 38.320721, 33.328205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057850, 38.348282, 33.278965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061129, 0.995954, 0.065874,
		0.127144, -0.057689, 0.990205,
		0.989999, 0.068906, -0.123104,
		31.354849, 38.368954, 33.242035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745220, 38.811867, 33.707745>,  <30.661850, 38.320721, 33.328205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745220, 38.811867, 33.707745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091419, 38.807270, 33.507431>,  <31.299139, 38.804512, 33.387241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091419, 38.807270, 33.507431>,  <30.745220, 38.811867, 33.707745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091419, 38.807270, 33.507431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022833, 0.997792, -0.062359,
		0.500395, 0.065406, 0.863323,
		0.865496, -0.011492, -0.500784,
		31.351068, 38.803822, 33.357197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066204, 39.376255, 34.038460>,  <30.745220, 38.811867, 33.707745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066204, 39.376255, 34.038460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.282255, 39.327404, 33.705391>,  <31.411886, 39.298092, 33.505550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.282255, 39.327404, 33.705391>,  <31.066204, 39.376255, 34.038460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282255, 39.327404, 33.705391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154076, 0.958341, -0.240505,
		0.827358, 0.258199, 0.498811,
		0.540129, -0.122129, -0.832673,
		31.444294, 39.290764, 33.455589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524738, 39.925804, 33.975105>,  <31.066204, 39.376255, 34.038460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524738, 39.925804, 33.975105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.507792, 39.788109, 33.599934>,  <31.497623, 39.705490, 33.374832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.507792, 39.788109, 33.599934>,  <31.524738, 39.925804, 33.975105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507792, 39.788109, 33.599934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139467, 0.931615, -0.335623,
		0.989320, 0.116590, -0.087479,
		-0.042367, -0.344239, -0.937926,
		31.495081, 39.684837, 33.318558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017071, 40.317627, 33.595707>,  <31.524738, 39.925804, 33.975105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017071, 40.317627, 33.595707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.786205, 40.174458, 33.302101>,  <31.647686, 40.088554, 33.125938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.786205, 40.174458, 33.302101>,  <32.017071, 40.317627, 33.595707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786205, 40.174458, 33.302101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052171, 0.880834, -0.470542,
		0.814961, -0.309874, -0.489711,
		-0.577163, -0.357925, -0.734012,
		31.613056, 40.067081, 33.081898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327980, 40.609901, 32.979179>,  <32.017071, 40.317627, 33.595707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327980, 40.609901, 32.979179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962219, 40.503670, 32.856968>,  <31.742764, 40.439930, 32.783642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962219, 40.503670, 32.856968>,  <32.327980, 40.609901, 32.979179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962219, 40.503670, 32.856968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139528, 0.915239, -0.377981,
		0.380010, -0.302996, -0.873949,
		-0.914398, -0.265576, -0.305524,
		31.687901, 40.423996, 32.765312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283432, 41.010963, 32.350201>,  <32.327980, 40.609901, 32.979179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283432, 41.010963, 32.350201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.909973, 40.909412, 32.451279>,  <31.685898, 40.848480, 32.511925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.909973, 40.909412, 32.451279>,  <32.283432, 41.010963, 32.350201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909973, 40.909412, 32.451279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303295, 0.935628, -0.180588,
		-0.190577, -0.245245, -0.950545,
		-0.933645, -0.253880, 0.252691,
		31.629879, 40.833248, 32.527084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900805, 41.238010, 31.786922>,  <32.283432, 41.010963, 32.350201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900805, 41.238010, 31.786922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634102, 41.189732, 32.081097>,  <31.474081, 41.160763, 32.257603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634102, 41.189732, 32.081097>,  <31.900805, 41.238010, 31.786922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634102, 41.189732, 32.081097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512497, 0.790704, -0.334865,
		-0.541095, -0.600183, -0.589065,
		-0.666756, -0.120700, 0.735437,
		31.434074, 41.153522, 32.301727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230244, 41.336552, 31.526312>,  <31.900805, 41.238010, 31.786922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230244, 41.336552, 31.526312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198957, 41.404060, 31.919331>,  <31.180185, 41.444565, 32.155144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198957, 41.404060, 31.919331>,  <31.230244, 41.336552, 31.526312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198957, 41.404060, 31.919331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466922, 0.864585, -0.185679,
		-0.880833, -0.473295, 0.011181,
		-0.078214, 0.168773, 0.982547,
		31.175493, 41.454693, 32.214096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467966, 41.507519, 31.629337>,  <31.230244, 41.336552, 31.526312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467966, 41.507519, 31.629337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.678242, 41.656052, 31.935478>,  <30.804407, 41.745171, 32.119164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.678242, 41.656052, 31.935478>,  <30.467966, 41.507519, 31.629337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678242, 41.656052, 31.935478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440575, 0.888478, -0.128455,
		-0.727697, -0.269668, 0.630663,
		0.525690, 0.371331, 0.765352,
		30.835949, 41.767452, 32.165085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590340, 42.227879, 31.570791>,  <30.467966, 41.507519, 31.629337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590340, 42.227879, 31.570791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.761753, 42.187935, 31.211596>,  <30.864601, 42.163971, 30.996078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.761753, 42.187935, 31.211596>,  <30.590340, 42.227879, 31.570791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761753, 42.187935, 31.211596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083054, 0.994020, -0.070901,
		0.899700, -0.044198, 0.434267,
		0.428536, -0.099857, -0.897990,
		30.890314, 42.157978, 30.942198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.354683, 40.376358, 46.460121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.000221, 40.388573, 46.645073>,  <38.787544, 40.395901, 46.756046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.000221, 40.388573, 46.645073>,  <39.354683, 40.376358, 46.460121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000221, 40.388573, 46.645073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330044, 0.742003, 0.583525,
		-0.325269, 0.669700, -0.667609,
		-0.886155, 0.030537, 0.462381,
		38.734375, 40.397736, 46.783787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172535, 41.077343, 46.472321>,  <39.354683, 40.376358, 46.460121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172535, 41.077343, 46.472321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952999, 40.910519, 46.762104>,  <38.821278, 40.810425, 46.935974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952999, 40.910519, 46.762104>,  <39.172535, 41.077343, 46.472321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952999, 40.910519, 46.762104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334175, 0.684919, 0.647467,
		-0.766229, 0.597448, -0.236535,
		-0.548835, -0.417064, 0.724457,
		38.788349, 40.785400, 46.979443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836319, 41.637177, 46.875771>,  <39.172535, 41.077343, 46.472321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836319, 41.637177, 46.875771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807217, 41.326458, 47.125984>,  <38.789757, 41.140026, 47.276112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807217, 41.326458, 47.125984>,  <38.836319, 41.637177, 46.875771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807217, 41.326458, 47.125984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264898, 0.589618, 0.763007,
		-0.961528, 0.221216, 0.162874,
		-0.072756, -0.776797, 0.625534,
		38.785389, 41.093418, 47.313644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459698, 41.870930, 47.473782>,  <38.836319, 41.637177, 46.875771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459698, 41.870930, 47.473782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.634022, 41.540688, 47.617138>,  <38.738617, 41.342541, 47.703152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.634022, 41.540688, 47.617138>,  <38.459698, 41.870930, 47.473782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634022, 41.540688, 47.617138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204644, 0.478661, 0.853818,
		-0.876463, -0.298763, 0.377561,
		0.435813, -0.825606, 0.358389,
		38.764767, 41.293007, 47.724655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161358, 41.704208, 48.191448>,  <38.459698, 41.870930, 47.473782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161358, 41.704208, 48.191448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531452, 41.553326, 48.175179>,  <38.753510, 41.462795, 48.165417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531452, 41.553326, 48.175179>,  <38.161358, 41.704208, 48.191448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531452, 41.553326, 48.175179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187626, 0.361758, 0.913196,
		-0.329750, -0.852553, 0.405485,
		0.925236, -0.377206, -0.040671,
		38.809025, 41.440163, 48.162975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232689, 41.413898, 48.900379>,  <38.161358, 41.704208, 48.191448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232689, 41.413898, 48.900379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600521, 41.441032, 48.745579>,  <38.821220, 41.457314, 48.652699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600521, 41.441032, 48.745579>,  <38.232689, 41.413898, 48.900379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600521, 41.441032, 48.745579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330645, 0.398463, 0.855512,
		0.212242, -0.914672, 0.343989,
		0.919580, 0.067837, -0.387002,
		38.876396, 41.461384, 48.629478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612011, 41.070347, 49.295200>,  <38.232689, 41.413898, 48.900379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612011, 41.070347, 49.295200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.851597, 41.340252, 49.122719>,  <38.995350, 41.502193, 49.019230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.851597, 41.340252, 49.122719>,  <38.612011, 41.070347, 49.295200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851597, 41.340252, 49.122719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288921, 0.320116, 0.902247,
		0.746838, -0.664998, -0.003215,
		0.598964, 0.674761, -0.431207,
		39.031284, 41.542679, 48.993355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207550, 41.051750, 49.675552>,  <38.612011, 41.070347, 49.295200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207550, 41.051750, 49.675552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231869, 41.403397, 49.486462>,  <39.246460, 41.614384, 49.373009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231869, 41.403397, 49.486462>,  <39.207550, 41.051750, 49.675552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231869, 41.403397, 49.486462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183916, 0.455624, 0.870966,
		0.981060, -0.139892, -0.133984,
		0.060795, 0.879111, -0.472723,
		39.250107, 41.667130, 49.344646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785870, 41.405201, 49.839443>,  <39.207550, 41.051750, 49.675552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785870, 41.405201, 49.839443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584770, 41.716274, 49.688477>,  <39.464111, 41.902920, 49.597897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584770, 41.716274, 49.688477>,  <39.785870, 41.405201, 49.839443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584770, 41.716274, 49.688477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203493, 0.530815, 0.822694,
		0.840137, 0.336810, -0.425123,
		-0.502753, 0.777685, -0.377419,
		39.433945, 41.949581, 49.575253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169666, 42.021217, 50.102978>,  <39.785870, 41.405201, 49.839443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169666, 42.021217, 50.102978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.806099, 42.154591, 50.002823>,  <39.587959, 42.234615, 49.942730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.806099, 42.154591, 50.002823>,  <40.169666, 42.021217, 50.102978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806099, 42.154591, 50.002823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018546, 0.632208, 0.774576,
		0.416561, 0.699383, -0.580810,
		-0.908919, 0.333430, -0.250383,
		39.533424, 42.254620, 49.927708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256790, 42.751526, 50.192513>,  <40.169666, 42.021217, 50.102978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256790, 42.751526, 50.192513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.860630, 42.697605, 50.180313>,  <39.622932, 42.665253, 50.172993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.860630, 42.697605, 50.180313>,  <40.256790, 42.751526, 50.192513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860630, 42.697605, 50.180313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123824, 0.767385, 0.629116,
		-0.061403, 0.626855, -0.776713,
		-0.990403, -0.134806, -0.030500,
		39.563511, 42.657162, 50.171162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900566, 43.388744, 50.088551>,  <40.256790, 42.751526, 50.192513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900566, 43.388744, 50.088551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600895, 43.183784, 50.256447>,  <39.421093, 43.060810, 50.357185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600895, 43.183784, 50.256447>,  <39.900566, 43.388744, 50.088551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600895, 43.183784, 50.256447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097004, 0.711736, 0.695717,
		-0.655232, 0.480496, -0.582919,
		-0.749174, -0.512401, 0.419742,
		39.376144, 43.030064, 50.382370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217449, 43.735638, 50.063091>,  <39.900566, 43.388744, 50.088551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217449, 43.735638, 50.063091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237186, 43.509792, 50.392643>,  <39.249031, 43.374287, 50.590374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237186, 43.509792, 50.392643>,  <39.217449, 43.735638, 50.063091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237186, 43.509792, 50.392643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010915, 0.824529, 0.565714,
		-0.998722, -0.036908, 0.034525,
		0.049346, -0.564614, 0.823878,
		39.251991, 43.340408, 50.639805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605858, 43.711426, 50.498180>,  <39.217449, 43.735638, 50.063091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605858, 43.711426, 50.498180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.953529, 43.700813, 50.695694>,  <39.162132, 43.694447, 50.814201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.953529, 43.700813, 50.695694>,  <38.605858, 43.711426, 50.498180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953529, 43.700813, 50.695694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201122, 0.893266, 0.402026,
		-0.451747, -0.448744, 0.771073,
		0.869180, -0.026535, 0.493783,
		39.214283, 43.692852, 50.843830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391258, 44.001637, 49.927044>,  <38.605858, 43.711426, 50.498180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391258, 44.001637, 49.927044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262821, 44.309956, 49.706944>,  <38.185760, 44.494946, 49.574883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262821, 44.309956, 49.706944>,  <38.391258, 44.001637, 49.927044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262821, 44.309956, 49.706944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064642, -0.561819, -0.824731,
		-0.944841, -0.300380, 0.130568,
		-0.321088, 0.770799, -0.550247,
		38.166496, 44.541195, 49.541870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793362, 43.852261, 49.557598>,  <38.391258, 44.001637, 49.927044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793362, 43.852261, 49.557598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979893, 44.151001, 49.367962>,  <38.091812, 44.330246, 49.254181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979893, 44.151001, 49.367962>,  <37.793362, 43.852261, 49.557598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979893, 44.151001, 49.367962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159709, -0.456043, -0.875510,
		-0.870078, 0.483988, -0.093385,
		0.466324, 0.746847, -0.474090,
		38.119789, 44.375053, 49.225735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391304, 44.005413, 48.936123>,  <37.793362, 43.852261, 49.557598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391304, 44.005413, 48.936123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746452, 44.174095, 48.862522>,  <37.959541, 44.275303, 48.818359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746452, 44.174095, 48.862522>,  <37.391304, 44.005413, 48.936123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746452, 44.174095, 48.862522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048021, -0.312802, -0.948604,
		-0.457588, 0.851070, -0.257475,
		0.887866, 0.421706, -0.184004,
		38.012814, 44.300606, 48.807320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320038, 44.343204, 48.266685>,  <37.391304, 44.005413, 48.936123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320038, 44.343204, 48.266685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.708359, 44.270634, 48.329456>,  <37.941353, 44.227089, 48.367119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.708359, 44.270634, 48.329456>,  <37.320038, 44.343204, 48.266685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708359, 44.270634, 48.329456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044694, -0.505912, -0.861426,
		0.235679, 0.843289, -0.483032,
		0.970803, -0.181431, 0.156923,
		37.999599, 44.216206, 48.376534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593891, 44.532505, 47.656368>,  <37.320038, 44.343204, 48.266685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593891, 44.532505, 47.656368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898960, 44.331024, 47.818661>,  <38.082001, 44.210136, 47.916035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898960, 44.331024, 47.818661>,  <37.593891, 44.532505, 47.656368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898960, 44.331024, 47.818661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221871, -0.385493, -0.895639,
		0.607538, 0.773100, -0.182249,
		0.762674, -0.503698, 0.405730,
		38.127762, 44.179916, 47.940380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245255, 44.691597, 47.297329>,  <37.593891, 44.532505, 47.656368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245255, 44.691597, 47.297329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.321423, 44.341335, 47.474857>,  <38.367123, 44.131180, 47.581375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.321423, 44.341335, 47.474857>,  <38.245255, 44.691597, 47.297329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321423, 44.341335, 47.474857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161116, -0.418083, -0.894007,
		0.968391, 0.241744, 0.061470,
		0.190421, -0.875652, 0.443817,
		38.378548, 44.078640, 47.608002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889240, 44.450497, 47.084602>,  <38.245255, 44.691597, 47.297329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889240, 44.450497, 47.084602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705036, 44.118420, 47.210278>,  <38.594513, 43.919174, 47.285683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705036, 44.118420, 47.210278>,  <38.889240, 44.450497, 47.084602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705036, 44.118420, 47.210278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297477, -0.477825, -0.826554,
		0.836326, -0.287169, 0.467004,
		-0.460506, -0.830191, 0.314191,
		38.566883, 43.869362, 47.304535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227333, 43.814449, 46.802231>,  <38.889240, 44.450497, 47.084602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227333, 43.814449, 46.802231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879261, 43.641346, 46.896465>,  <38.670418, 43.537483, 46.953007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879261, 43.641346, 46.896465>,  <39.227333, 43.814449, 46.802231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879261, 43.641346, 46.896465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044111, -0.407775, -0.912017,
		0.490751, -0.804013, 0.335749,
		-0.870183, -0.432763, 0.235582,
		38.618206, 43.511517, 46.967140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319283, 43.046585, 46.722530>,  <39.227333, 43.814449, 46.802231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319283, 43.046585, 46.722530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938564, 43.145943, 46.650547>,  <38.710133, 43.205559, 46.607357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938564, 43.145943, 46.650547>,  <39.319283, 43.046585, 46.722530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938564, 43.145943, 46.650547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034851, -0.495326, -0.868008,
		-0.304748, -0.832438, 0.462792,
		-0.951796, 0.248394, -0.179961,
		38.653027, 43.220463, 46.596558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017403, 42.480587, 46.365116>,  <39.319283, 43.046585, 46.722530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017403, 42.480587, 46.365116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753487, 42.773911, 46.299480>,  <38.595135, 42.949905, 46.260101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753487, 42.773911, 46.299480>,  <39.017403, 42.480587, 46.365116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753487, 42.773911, 46.299480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058345, -0.267693, -0.961736,
		-0.749178, -0.624974, 0.219408,
		-0.659794, 0.733313, -0.164086,
		38.555550, 42.993904, 46.250256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527222, 42.159271, 45.961845>,  <39.017403, 42.480587, 46.365116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527222, 42.159271, 45.961845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.429951, 42.541946, 45.897827>,  <38.371590, 42.771553, 45.859417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.429951, 42.541946, 45.897827>,  <38.527222, 42.159271, 45.961845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429951, 42.541946, 45.897827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056020, -0.178572, -0.982331,
		-0.968363, -0.229913, 0.097018,
		-0.243175, 0.956688, -0.160043,
		38.356998, 42.828953, 45.849815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923653, 42.199059, 45.475826>,  <38.527222, 42.159271, 45.961845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923653, 42.199059, 45.475826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102238, 42.553486, 45.425930>,  <38.209389, 42.766140, 45.395992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102238, 42.553486, 45.425930>,  <37.923653, 42.199059, 45.475826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102238, 42.553486, 45.425930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142860, -0.067031, -0.987471,
		-0.883323, 0.458692, 0.096656,
		0.446466, 0.886064, -0.124739,
		38.236176, 42.819305, 45.388508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447956, 42.588753, 44.939499>,  <37.923653, 42.199059, 45.475826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447956, 42.588753, 44.939499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801746, 42.775326, 44.944172>,  <38.014023, 42.887272, 44.946976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801746, 42.775326, 44.944172>,  <37.447956, 42.588753, 44.939499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801746, 42.775326, 44.944172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090279, 0.195651, -0.976509,
		-0.457765, 0.862646, 0.215158,
		0.884478, 0.466436, 0.011683,
		38.067089, 42.915257, 44.947678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343407, 43.103130, 44.453949>,  <37.447956, 42.588753, 44.939499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343407, 43.103130, 44.453949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739262, 43.053299, 44.482517>,  <37.976772, 43.023399, 44.499657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739262, 43.053299, 44.482517>,  <37.343407, 43.103130, 44.453949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739262, 43.053299, 44.482517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082002, 0.081991, -0.993254,
		0.117886, 0.988816, 0.091358,
		0.989635, -0.124583, 0.071419,
		38.036152, 43.015923, 44.503944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949306, 43.647026, 44.182682>,  <37.343407, 43.103130, 44.453949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949306, 43.647026, 44.182682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553101, 43.601933, 44.151237>,  <36.315376, 43.574875, 44.132370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553101, 43.601933, 44.151237>,  <36.949306, 43.647026, 44.182682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553101, 43.601933, 44.151237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102960, 0.229773, 0.967783,
		-0.091043, 0.966693, -0.239200,
		-0.990510, -0.112738, -0.078611,
		36.255947, 43.568111, 44.127655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684994, 44.230801, 44.426197>,  <36.949306, 43.647026, 44.182682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684994, 44.230801, 44.426197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338821, 44.030418, 44.429794>,  <36.131119, 43.910191, 44.431953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338821, 44.030418, 44.429794>,  <36.684994, 44.230801, 44.426197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338821, 44.030418, 44.429794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179896, 0.327427, 0.927593,
		-0.467623, 0.801149, -0.373484,
		-0.865429, -0.500952, 0.008989,
		36.079193, 43.880135, 44.432491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134979, 44.713757, 44.506706>,  <36.684994, 44.230801, 44.426197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134979, 44.713757, 44.506706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027332, 44.354897, 44.646824>,  <35.962746, 44.139580, 44.730896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027332, 44.354897, 44.646824>,  <36.134979, 44.713757, 44.506706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027332, 44.354897, 44.646824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043781, 0.374732, 0.926099,
		-0.962112, 0.233892, -0.140124,
		-0.269116, -0.897146, 0.350294,
		35.946598, 44.085754, 44.751911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507607, 44.809708, 44.925617>,  <36.134979, 44.713757, 44.506706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507607, 44.809708, 44.925617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643475, 44.456604, 45.055450>,  <35.724995, 44.244740, 45.133350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643475, 44.456604, 45.055450>,  <35.507607, 44.809708, 44.925617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643475, 44.456604, 45.055450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247698, 0.248955, 0.936305,
		-0.907342, -0.398433, -0.134096,
		0.339671, -0.882764, 0.324579,
		35.745377, 44.191776, 45.152824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998318, 44.688908, 45.272320>,  <35.507607, 44.809708, 44.925617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998318, 44.688908, 45.272320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293999, 44.447960, 45.392811>,  <35.471405, 44.303391, 45.465107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293999, 44.447960, 45.392811>,  <34.998318, 44.688908, 45.272320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293999, 44.447960, 45.392811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209269, 0.219699, 0.952858,
		-0.640150, -0.767390, 0.036345,
		0.739199, -0.602366, 0.301231,
		35.515759, 44.267250, 45.483181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705917, 44.306900, 45.695229>,  <34.998318, 44.688908, 45.272320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705917, 44.306900, 45.695229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075264, 44.228592, 45.827324>,  <35.296871, 44.181606, 45.906582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075264, 44.228592, 45.827324>,  <34.705917, 44.306900, 45.695229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075264, 44.228592, 45.827324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244545, 0.363180, 0.899054,
		-0.295946, -0.910919, 0.287475,
		0.923370, -0.195771, 0.330243,
		35.352276, 44.169861, 45.926395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607403, 44.004372, 46.346741>,  <34.705917, 44.306900, 45.695229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607403, 44.004372, 46.346741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976013, 44.159634, 46.342255>,  <35.197178, 44.252792, 46.339565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976013, 44.159634, 46.342255>,  <34.607403, 44.004372, 46.346741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976013, 44.159634, 46.342255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212345, 0.527888, 0.822340,
		0.325114, -0.755427, 0.568886,
		0.921526, 0.388154, -0.011212,
		35.252472, 44.276081, 46.338890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428043, 43.241268, 46.372227>,  <34.607403, 44.004372, 46.346741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428043, 43.241268, 46.372227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165558, 43.019161, 46.576603>,  <34.008068, 42.885899, 46.699230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165558, 43.019161, 46.576603>,  <34.428043, 43.241268, 46.372227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165558, 43.019161, 46.576603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112746, -0.597372, -0.794000,
		0.746104, -0.578641, 0.329400,
		-0.656215, -0.555268, 0.510941,
		33.968693, 42.852581, 46.729885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530987, 42.547916, 46.228569>,  <34.428043, 43.241268, 46.372227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530987, 42.547916, 46.228569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147648, 42.570084, 46.340637>,  <33.917645, 42.583385, 46.407879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147648, 42.570084, 46.340637>,  <34.530987, 42.547916, 46.228569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147648, 42.570084, 46.340637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273167, -0.464163, -0.842574,
		0.083354, -0.884014, 0.459968,
		-0.958349, 0.055416, 0.280174,
		33.860142, 42.586708, 46.424690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281376, 41.855171, 46.051678>,  <34.530987, 42.547916, 46.228569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281376, 41.855171, 46.051678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956982, 42.088116, 46.074131>,  <33.762344, 42.227882, 46.087601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956982, 42.088116, 46.074131>,  <34.281376, 41.855171, 46.051678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956982, 42.088116, 46.074131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372873, -0.440542, -0.816632,
		-0.450880, -0.683186, 0.574425,
		-0.810970, 0.582391, 0.056110,
		33.713684, 42.262825, 46.090969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632038, 41.429611, 45.805130>,  <34.281376, 41.855171, 46.051678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632038, 41.429611, 45.805130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507591, 41.808727, 45.777145>,  <33.432922, 42.036198, 45.760353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507591, 41.808727, 45.777145>,  <33.632038, 41.429611, 45.805130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507591, 41.808727, 45.777145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228853, -0.146166, -0.962425,
		-0.922404, -0.283420, 0.262381,
		-0.311122, 0.947791, -0.069963,
		33.414253, 42.093063, 45.756157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946655, 41.306164, 45.575066>,  <33.632038, 41.429611, 45.805130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946655, 41.306164, 45.575066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054447, 41.688164, 45.525509>,  <33.119122, 41.917366, 45.495777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054447, 41.688164, 45.525509>,  <32.946655, 41.306164, 45.575066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054447, 41.688164, 45.525509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227099, -0.061996, -0.971896,
		-0.935844, 0.290046, 0.200173,
		0.269484, 0.955003, -0.123888,
		33.135292, 41.974663, 45.488342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421227, 41.563259, 45.213669>,  <32.946655, 41.306164, 45.575066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421227, 41.563259, 45.213669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702972, 41.840359, 45.151733>,  <32.872021, 42.006618, 45.114571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702972, 41.840359, 45.151733>,  <32.421227, 41.563259, 45.213669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702972, 41.840359, 45.151733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136372, -0.082012, -0.987257,
		-0.696619, 0.716502, 0.036706,
		0.704361, 0.692748, -0.154842,
		32.914280, 42.048183, 45.105282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116539, 42.038174, 44.849106>,  <32.421227, 41.563259, 45.213669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116539, 42.038174, 44.849106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507442, 42.097557, 44.788536>,  <32.741985, 42.133186, 44.752193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507442, 42.097557, 44.788536>,  <32.116539, 42.038174, 44.849106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507442, 42.097557, 44.788536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135008, -0.115104, -0.984136,
		-0.163532, 0.982197, -0.092444,
		0.977256, 0.148457, -0.151428,
		32.800621, 42.142094, 44.743107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.138523, 41.839272, 49.418648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.133595, 41.482983, 49.236897>,  <36.130638, 41.269207, 49.127846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.133595, 41.482983, 49.236897>,  <36.138523, 41.839272, 49.418648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133595, 41.482983, 49.236897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958339, 0.119165, -0.259588,
		0.285367, -0.438644, 0.852149,
		-0.012320, -0.890725, -0.454375,
		36.129898, 41.215767, 49.100582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320839, 41.299007, 49.710850>,  <36.138523, 41.839272, 49.418648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320839, 41.299007, 49.710850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.670208, 41.235123, 49.894859>,  <36.879829, 41.196793, 50.005264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.670208, 41.235123, 49.894859>,  <36.320839, 41.299007, 49.710850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670208, 41.235123, 49.894859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149417, -0.811219, -0.565331,
		0.463465, 0.562510, -0.684677,
		0.873427, -0.159709, 0.460020,
		36.932236, 41.187210, 50.032864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884262, 41.397705, 49.238144>,  <36.320839, 41.299007, 49.710850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884262, 41.397705, 49.238144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.015495, 41.158638, 49.530762>,  <37.094234, 41.015198, 49.706333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.015495, 41.158638, 49.530762>,  <36.884262, 41.397705, 49.238144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015495, 41.158638, 49.530762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158734, -0.728515, -0.666385,
		0.931216, 0.334753, -0.144146,
		0.328087, -0.597667, 0.731541,
		37.113922, 40.979340, 49.750225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479149, 41.085888, 48.993275>,  <36.884262, 41.397705, 49.238144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479149, 41.085888, 48.993275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.339832, 40.863464, 49.295132>,  <37.256241, 40.730011, 49.476246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.339832, 40.863464, 49.295132>,  <37.479149, 41.085888, 48.993275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339832, 40.863464, 49.295132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042060, -0.794970, -0.605189,
		0.936442, -0.242523, 0.253494,
		-0.348293, -0.556062, 0.754644,
		37.235344, 40.696648, 49.521526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727215, 40.493504, 48.781284>,  <37.479149, 41.085888, 48.993275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727215, 40.493504, 48.781284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485455, 40.381683, 49.079693>,  <37.340401, 40.314590, 49.258739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485455, 40.381683, 49.079693>,  <37.727215, 40.493504, 48.781284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485455, 40.381683, 49.079693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229243, -0.835785, -0.498911,
		0.762988, -0.472562, 0.441061,
		-0.604398, -0.279553, 0.746025,
		37.304134, 40.297817, 49.303501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843765, 39.785061, 48.985641>,  <37.727215, 40.493504, 48.781284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843765, 39.785061, 48.985641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456528, 39.837795, 49.070892>,  <37.224186, 39.869434, 49.122044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456528, 39.837795, 49.070892>,  <37.843765, 39.785061, 48.985641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456528, 39.837795, 49.070892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229990, -0.805180, -0.546616,
		0.099541, -0.578190, 0.809807,
		-0.968089, 0.131837, 0.213126,
		37.166100, 39.877346, 49.134830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522976, 39.137737, 49.033493>,  <37.843765, 39.785061, 48.985641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522976, 39.137737, 49.033493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.196526, 39.363556, 48.984127>,  <37.000656, 39.499046, 48.954506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.196526, 39.363556, 48.984127>,  <37.522976, 39.137737, 49.033493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196526, 39.363556, 48.984127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450923, -0.755703, -0.474954,
		-0.361397, -0.331970, 0.871314,
		-0.816125, 0.564543, -0.123416,
		36.951687, 39.532917, 48.947102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920258, 38.713989, 49.143089>,  <37.522976, 39.137737, 49.033493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920258, 38.713989, 49.143089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.765064, 39.026951, 48.948227>,  <36.671947, 39.214725, 48.831310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.765064, 39.026951, 48.948227>,  <36.920258, 38.713989, 49.143089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765064, 39.026951, 48.948227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561780, -0.619772, -0.547983,
		-0.730667, 0.061065, 0.679998,
		-0.387981, 0.782402, -0.487152,
		36.648670, 39.261673, 48.802082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243580, 38.560631, 49.180679>,  <36.920258, 38.713989, 49.143089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243580, 38.560631, 49.180679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.347862, 38.805561, 48.882126>,  <36.410431, 38.952518, 48.702991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.347862, 38.805561, 48.882126>,  <36.243580, 38.560631, 49.180679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347862, 38.805561, 48.882126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477744, -0.589996, -0.650896,
		-0.838923, 0.526275, 0.138717,
		0.260708, 0.612323, -0.746386,
		36.426075, 38.989258, 48.658211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616318, 38.630886, 48.819424>,  <36.243580, 38.560631, 49.180679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616318, 38.630886, 48.819424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.908993, 38.729397, 48.565186>,  <36.084599, 38.788502, 48.412643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.908993, 38.729397, 48.565186>,  <35.616318, 38.630886, 48.819424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908993, 38.729397, 48.565186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370319, -0.639217, -0.673993,
		-0.572270, 0.728526, -0.376508,
		0.731691, 0.246277, -0.635591,
		36.128498, 38.803280, 48.374508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317299, 38.653778, 48.192348>,  <35.616318, 38.630886, 48.819424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317299, 38.653778, 48.192348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.694607, 38.615711, 48.065109>,  <35.920990, 38.592869, 47.988766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.694607, 38.615711, 48.065109>,  <35.317299, 38.653778, 48.192348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694607, 38.615711, 48.065109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323741, -0.476320, -0.817502,
		-0.073714, 0.874106, -0.480109,
		0.943270, -0.095170, -0.318096,
		35.977589, 38.587162, 47.969681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238678, 38.803528, 47.547184>,  <35.317299, 38.653778, 48.192348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238678, 38.803528, 47.547184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567505, 38.588440, 47.622078>,  <35.764801, 38.459389, 47.667015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567505, 38.588440, 47.622078>,  <35.238678, 38.803528, 47.547184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567505, 38.588440, 47.622078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264431, -0.651777, -0.710819,
		0.504259, 0.534832, -0.677996,
		0.822070, -0.537720, 0.187238,
		35.814125, 38.427124, 47.678249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798779, 39.360371, 47.121002>,  <35.238678, 38.803528, 47.547184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798779, 39.360371, 47.121002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.410206, 39.294926, 47.189762>,  <34.177063, 39.255657, 47.231018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.410206, 39.294926, 47.189762>,  <34.798779, 39.360371, 47.121002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410206, 39.294926, 47.189762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071034, 0.490679, 0.868440,
		-0.226438, 0.855842, -0.465039,
		-0.971432, -0.163614, 0.171903,
		34.118774, 39.245842, 47.241333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496719, 39.898163, 47.356384>,  <34.798779, 39.360371, 47.121002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496719, 39.898163, 47.356384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.219494, 39.634579, 47.473297>,  <34.053158, 39.476429, 47.543446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.219494, 39.634579, 47.473297>,  <34.496719, 39.898163, 47.356384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219494, 39.634579, 47.473297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021470, 0.386403, 0.922080,
		-0.720552, 0.645340, -0.253655,
		-0.693069, -0.658961, 0.292279,
		34.011574, 39.436890, 47.560982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011086, 40.287258, 47.618992>,  <34.496719, 39.898163, 47.356384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011086, 40.287258, 47.618992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929909, 39.934727, 47.789669>,  <33.881203, 39.723206, 47.892075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929909, 39.934727, 47.789669>,  <34.011086, 40.287258, 47.618992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929909, 39.934727, 47.789669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125362, 0.455561, 0.881333,
		-0.971133, 0.125366, -0.202937,
		-0.202939, -0.881333, 0.426695,
		33.869026, 39.670326, 47.917679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380199, 40.366192, 47.909199>,  <34.011086, 40.287258, 47.618992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380199, 40.366192, 47.909199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.561024, 40.065399, 48.101097>,  <33.669518, 39.884922, 48.216236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.561024, 40.065399, 48.101097>,  <33.380199, 40.366192, 47.909199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561024, 40.065399, 48.101097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244200, 0.412955, 0.877402,
		-0.857907, -0.513795, 0.003047,
		0.452064, -0.751986, 0.479746,
		33.696644, 39.839802, 48.245022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978836, 40.203529, 48.445824>,  <33.380199, 40.366192, 47.909199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978836, 40.203529, 48.445824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313866, 40.022484, 48.568211>,  <33.514881, 39.913857, 48.641644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313866, 40.022484, 48.568211>,  <32.978836, 40.203529, 48.445824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313866, 40.022484, 48.568211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086912, 0.442522, 0.892536,
		-0.539372, -0.774154, 0.331306,
		0.837570, -0.452614, 0.305967,
		33.565136, 39.886700, 48.660000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847340, 40.033112, 49.117100>,  <32.978836, 40.203529, 48.445824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847340, 40.033112, 49.117100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.247070, 40.030609, 49.102600>,  <33.486908, 40.029106, 49.093903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.247070, 40.030609, 49.102600>,  <32.847340, 40.033112, 49.117100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247070, 40.030609, 49.102600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036187, 0.343858, 0.938324,
		0.006589, -0.939001, 0.343852,
		0.999324, -0.006260, -0.036245,
		33.546867, 40.028732, 49.091728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027927, 39.954563, 49.833359>,  <32.847340, 40.033112, 49.117100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027927, 39.954563, 49.833359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373741, 40.052727, 49.657928>,  <33.581230, 40.111626, 49.552670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373741, 40.052727, 49.657928>,  <33.027927, 39.954563, 49.833359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373741, 40.052727, 49.657928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299635, 0.448911, 0.841842,
		0.403480, -0.859216, 0.314566,
		0.864536, 0.245411, -0.438578,
		33.633102, 40.126350, 49.526356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500557, 39.779510, 50.298824>,  <33.027927, 39.954563, 49.833359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500557, 39.779510, 50.298824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629456, 40.065636, 50.050797>,  <33.706795, 40.237309, 49.901978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629456, 40.065636, 50.050797>,  <33.500557, 39.779510, 50.298824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629456, 40.065636, 50.050797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180619, 0.596524, 0.782008,
		0.929266, -0.363996, 0.063028,
		0.322245, 0.715308, -0.620074,
		33.726128, 40.280228, 49.864773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067383, 40.077343, 50.615177>,  <33.500557, 39.779510, 50.298824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067383, 40.077343, 50.615177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.923077, 40.350075, 50.360630>,  <33.836491, 40.513714, 50.207901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.923077, 40.350075, 50.360630>,  <34.067383, 40.077343, 50.615177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923077, 40.350075, 50.360630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292277, 0.730597, 0.617091,
		0.885674, 0.036633, -0.462859,
		-0.360770, 0.681825, -0.636365,
		33.814846, 40.554623, 50.169720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627949, 40.589890, 50.548862>,  <34.067383, 40.077343, 50.615177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627949, 40.589890, 50.548862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.293419, 40.785217, 50.449181>,  <34.092701, 40.902416, 50.389370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.293419, 40.785217, 50.449181>,  <34.627949, 40.589890, 50.548862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293419, 40.785217, 50.449181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231740, 0.726834, 0.646536,
		0.496848, 0.482963, -0.721033,
		-0.836324, 0.488322, -0.249204,
		34.042522, 40.931713, 50.374420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858009, 41.330170, 50.624493>,  <34.627949, 40.589890, 50.548862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858009, 41.330170, 50.624493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459442, 41.338711, 50.591747>,  <34.220303, 41.343838, 50.572098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459442, 41.338711, 50.591747>,  <34.858009, 41.330170, 50.624493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459442, 41.338711, 50.591747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039812, 0.735450, 0.676409,
		0.074654, 0.677242, -0.731962,
		-0.996414, 0.021356, -0.081867,
		34.160519, 41.345119, 50.567188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639084, 42.128742, 50.343426>,  <34.858009, 41.330170, 50.624493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639084, 42.128742, 50.343426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320118, 41.970074, 50.525322>,  <34.128738, 41.874874, 50.634460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320118, 41.970074, 50.525322>,  <34.639084, 42.128742, 50.343426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320118, 41.970074, 50.525322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000570, 0.753093, 0.657914,
		-0.603438, 0.524886, -0.600298,
		-0.797410, -0.396668, 0.454744,
		34.080894, 41.851074, 50.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344109, 42.659897, 50.632301>,  <34.639084, 42.128742, 50.343426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344109, 42.659897, 50.632301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144955, 42.391159, 50.851658>,  <34.025463, 42.229916, 50.983273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144955, 42.391159, 50.851658>,  <34.344109, 42.659897, 50.632301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144955, 42.391159, 50.851658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193468, 0.702446, 0.684938,
		-0.845388, 0.234925, -0.479719,
		-0.497885, -0.671848, 0.548389,
		33.995590, 42.189606, 51.016174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606911, 43.250954, 50.203281>,  <34.344109, 42.659897, 50.632301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606911, 43.250954, 50.203281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327560, 43.436893, 49.985592>,  <34.159950, 43.548458, 49.854977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327560, 43.436893, 49.985592>,  <34.606911, 43.250954, 50.203281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327560, 43.436893, 49.985592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362932, -0.425365, -0.829063,
		-0.616885, -0.776517, 0.128357,
		-0.698379, 0.464851, -0.544224,
		34.118046, 43.576347, 49.822323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578880, 42.821346, 49.671394>,  <34.606911, 43.250954, 50.203281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578880, 42.821346, 49.671394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.338970, 43.120213, 49.556843>,  <34.195023, 43.299530, 49.488113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.338970, 43.120213, 49.556843>,  <34.578880, 42.821346, 49.671394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338970, 43.120213, 49.556843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028617, -0.377701, -0.925485,
		-0.799655, -0.546890, 0.247918,
		-0.599778, 0.747163, -0.286380,
		34.159039, 43.344360, 49.470928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898983, 42.617737, 49.343990>,  <34.578880, 42.821346, 49.671394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898983, 42.617737, 49.343990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956757, 42.984268, 49.194599>,  <33.991421, 43.204185, 49.104965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956757, 42.984268, 49.194599>,  <33.898983, 42.617737, 49.343990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956757, 42.984268, 49.194599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070626, -0.366924, -0.927566,
		-0.986991, 0.160347, 0.011722,
		0.144432, 0.916327, -0.373475,
		34.000088, 43.259167, 49.082558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376003, 42.641712, 48.859779>,  <33.898983, 42.617737, 49.343990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376003, 42.641712, 48.859779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617607, 42.949455, 48.776581>,  <33.762569, 43.134102, 48.726662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617607, 42.949455, 48.776581>,  <33.376003, 42.641712, 48.859779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617607, 42.949455, 48.776581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241031, -0.072416, -0.967812,
		-0.759653, 0.634704, 0.141698,
		0.604013, 0.769355, -0.207995,
		33.798809, 43.180264, 48.714184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072834, 43.195019, 48.562641>,  <33.376003, 42.641712, 48.859779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072834, 43.195019, 48.562641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.452328, 43.234898, 48.442661>,  <33.680023, 43.258823, 48.370674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.452328, 43.234898, 48.442661>,  <33.072834, 43.195019, 48.562641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452328, 43.234898, 48.442661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270962, -0.232123, -0.934183,
		-0.162763, 0.967563, -0.193207,
		0.948730, 0.099698, -0.299954,
		33.736946, 43.264809, 48.352676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089642, 43.566566, 47.916660>,  <33.072834, 43.195019, 48.562641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089642, 43.566566, 47.916660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.427711, 43.353558, 47.934990>,  <33.630554, 43.225754, 47.945988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.427711, 43.353558, 47.934990>,  <33.089642, 43.566566, 47.916660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427711, 43.353558, 47.934990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106659, -0.252040, -0.961821,
		0.523740, 0.808019, -0.269816,
		0.845175, -0.532523, 0.045821,
		33.681263, 43.193802, 47.948738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419823, 43.708153, 47.300526>,  <33.089642, 43.566566, 47.916660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419823, 43.708153, 47.300526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.634609, 43.398411, 47.434414>,  <33.763481, 43.212566, 47.514748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.634609, 43.398411, 47.434414>,  <33.419823, 43.708153, 47.300526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634609, 43.398411, 47.434414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186216, -0.278184, -0.942304,
		0.822791, 0.568320, -0.005179,
		0.536971, -0.774355, 0.334718,
		33.795700, 43.166103, 47.534828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089592, 43.776604, 47.040173>,  <33.419823, 43.708153, 47.300526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089592, 43.776604, 47.040173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.997372, 43.395275, 47.118176>,  <33.942039, 43.166477, 47.164978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.997372, 43.395275, 47.118176>,  <34.089592, 43.776604, 47.040173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997372, 43.395275, 47.118176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116500, -0.171918, -0.978198,
		0.966062, -0.248239, -0.071427,
		-0.230548, -0.953321, 0.195003,
		33.928207, 43.109280, 47.176678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895088, 44.014069, 47.038692>,  <34.089592, 43.776604, 47.040173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895088, 44.014069, 47.038692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.119732, 44.292747, 46.860165>,  <35.254520, 44.459957, 46.753048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.119732, 44.292747, 46.860165>,  <34.895088, 44.014069, 47.038692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119732, 44.292747, 46.860165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070149, 0.497387, 0.864688,
		0.824421, -0.516929, 0.230466,
		0.561613, 0.696700, -0.446319,
		35.288216, 44.501759, 46.726269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176006, 44.206120, 47.603420>,  <34.895088, 44.014069, 47.038692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176006, 44.206120, 47.603420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.256943, 44.486202, 47.329556>,  <35.305504, 44.654251, 47.165237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.256943, 44.486202, 47.329556>,  <35.176006, 44.206120, 47.603420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256943, 44.486202, 47.329556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170202, 0.663341, 0.728704,
		0.964412, -0.263976, 0.015042,
		0.202338, 0.700211, -0.684663,
		35.317646, 44.696266, 47.124157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665581, 44.507141, 47.908112>,  <35.176006, 44.206120, 47.603420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665581, 44.507141, 47.908112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.527493, 44.761086, 47.631626>,  <35.444641, 44.913452, 47.465736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.527493, 44.761086, 47.631626>,  <35.665581, 44.507141, 47.908112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527493, 44.761086, 47.631626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071728, 0.752181, 0.655041,
		0.935777, 0.176554, -0.305205,
		-0.345220, 0.634864, -0.691210,
		35.423927, 44.951546, 47.424263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140213, 45.003456, 47.850281>,  <35.665581, 44.507141, 47.908112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140213, 45.003456, 47.850281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.796150, 45.164165, 47.724609>,  <35.589710, 45.260590, 47.649208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.796150, 45.164165, 47.724609>,  <36.140213, 45.003456, 47.850281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796150, 45.164165, 47.724609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203558, 0.835242, 0.510818,
		0.467644, 0.375432, -0.800225,
		-0.860159, 0.401773, -0.314174,
		35.538101, 45.284698, 47.630356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294151, 45.581535, 47.983929>,  <36.140213, 45.003456, 47.850281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294151, 45.581535, 47.983929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.898781, 45.601486, 47.926609>,  <35.661560, 45.613457, 47.892216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.898781, 45.601486, 47.926609>,  <36.294151, 45.581535, 47.983929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898781, 45.601486, 47.926609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039195, 0.828455, 0.558682,
		0.146582, 0.557831, -0.816908,
		-0.988422, 0.049874, -0.143301,
		35.602253, 45.616447, 47.883617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166943, 46.232464, 47.729267>,  <36.294151, 45.581535, 47.983929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166943, 46.232464, 47.729267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.819405, 46.094593, 47.871422>,  <35.610882, 46.011871, 47.956715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.819405, 46.094593, 47.871422>,  <36.166943, 46.232464, 47.729267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819405, 46.094593, 47.871422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088865, 0.814753, 0.572958,
		-0.487037, 0.466232, -0.738527,
		-0.868849, -0.344680, 0.355383,
		35.558750, 45.991188, 47.978035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762051, 46.792831, 47.765411>,  <36.166943, 46.232464, 47.729267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762051, 46.792831, 47.765411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.590652, 46.543133, 48.026703>,  <35.487812, 46.393314, 48.183479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.590652, 46.543133, 48.026703>,  <35.762051, 46.792831, 47.765411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590652, 46.543133, 48.026703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012863, 0.718676, 0.695226,
		-0.903451, 0.306306, -0.299921,
		-0.428498, -0.624244, 0.653229,
		35.462105, 46.355858, 48.222672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070400, 47.084660, 48.035675>,  <35.762051, 46.792831, 47.765411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070400, 47.084660, 48.035675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.226406, 46.833519, 48.305099>,  <35.320011, 46.682835, 48.466755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.226406, 46.833519, 48.305099>,  <35.070400, 47.084660, 48.035675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226406, 46.833519, 48.305099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068410, 0.749227, 0.658771,
		-0.918263, -0.210854, 0.335164,
		0.390018, -0.627853, 0.673563,
		35.343410, 46.645164, 48.507168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843155, 47.374741, 48.639149>,  <35.070400, 47.084660, 48.035675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843155, 47.374741, 48.639149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.145123, 47.141018, 48.758263>,  <35.326305, 47.000786, 48.829731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.145123, 47.141018, 48.758263>,  <34.843155, 47.374741, 48.639149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145123, 47.141018, 48.758263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166141, 0.609654, 0.775061,
		-0.634419, -0.535637, 0.557320,
		0.754923, -0.584307, 0.297785,
		35.371601, 46.965725, 48.847599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.351967, 38.139698, 35.391502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747852, 38.101456, 35.348915>,  <35.985382, 38.078510, 35.323364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747852, 38.101456, 35.348915>,  <35.351967, 38.139698, 35.391502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747852, 38.101456, 35.348915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131546, 0.315116, 0.939892,
		-0.056308, -0.944225, 0.324450,
		0.989709, -0.095604, -0.106465,
		36.044765, 38.072773, 35.316975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595165, 37.808620, 35.987457>,  <35.351967, 38.139698, 35.391502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595165, 37.808620, 35.987457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911415, 38.005257, 35.841446>,  <36.101166, 38.123238, 35.753841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911415, 38.005257, 35.841446>,  <35.595165, 37.808620, 35.987457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911415, 38.005257, 35.841446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310511, 0.191906, 0.930997,
		0.527723, -0.849416, -0.000920,
		0.790627, 0.491594, -0.365026,
		36.148602, 38.152737, 35.731937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094948, 37.850407, 36.450443>,  <35.595165, 37.808620, 35.987457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094948, 37.850407, 36.450443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262005, 38.131680, 36.220276>,  <36.362240, 38.300446, 36.082176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262005, 38.131680, 36.220276>,  <36.094948, 37.850407, 36.450443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262005, 38.131680, 36.220276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176552, 0.558415, 0.810557,
		0.891292, -0.440116, 0.109071,
		0.417646, 0.703185, -0.575414,
		36.387299, 38.342636, 36.047653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805779, 37.913040, 36.668201>,  <36.094948, 37.850407, 36.450443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805779, 37.913040, 36.668201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727970, 38.252132, 36.470814>,  <36.681286, 38.455589, 36.352383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727970, 38.252132, 36.470814>,  <36.805779, 37.913040, 36.668201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727970, 38.252132, 36.470814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237781, 0.528826, 0.814741,
		0.951641, 0.041150, -0.304445,
		-0.194525, 0.847732, -0.493468,
		36.669613, 38.506451, 36.322773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331120, 38.363316, 36.819504>,  <36.805779, 37.913040, 36.668201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331120, 38.363316, 36.819504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031708, 38.597832, 36.695591>,  <36.852058, 38.738541, 36.621243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031708, 38.597832, 36.695591>,  <37.331120, 38.363316, 36.819504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031708, 38.597832, 36.695591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128899, 0.586915, 0.799322,
		0.650448, 0.558389, -0.514897,
		-0.748533, 0.586288, -0.309782,
		36.807148, 38.773720, 36.602657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486481, 39.053753, 36.906193>,  <37.331120, 38.363316, 36.819504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486481, 39.053753, 36.906193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094448, 39.101128, 36.842426>,  <36.859230, 39.129551, 36.804165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094448, 39.101128, 36.842426>,  <37.486481, 39.053753, 36.906193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094448, 39.101128, 36.842426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041860, 0.661483, 0.748791,
		0.194135, 0.740549, -0.643350,
		-0.980081, 0.118436, -0.159416,
		36.800423, 39.136658, 36.794601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350262, 39.741264, 36.783184>,  <37.486481, 39.053753, 36.906193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350262, 39.741264, 36.783184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018612, 39.586910, 36.944996>,  <36.819622, 39.494297, 37.042084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018612, 39.586910, 36.944996>,  <37.350262, 39.741264, 36.783184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018612, 39.586910, 36.944996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024480, 0.697833, 0.715842,
		-0.558530, 0.603424, -0.569143,
		-0.829123, -0.385886, 0.404533,
		36.769875, 39.471146, 37.066357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028835, 40.318478, 36.971165>,  <37.350262, 39.741264, 36.783184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028835, 40.318478, 36.971165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834457, 40.029354, 37.167702>,  <36.717831, 39.855881, 37.285622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834457, 40.029354, 37.167702>,  <37.028835, 40.318478, 36.971165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834457, 40.029354, 37.167702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131979, 0.616418, 0.776279,
		-0.863968, 0.312381, -0.394939,
		-0.485943, -0.722804, 0.491338,
		36.688675, 39.812511, 37.315102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284813, 40.595707, 37.200413>,  <37.028835, 40.318478, 36.971165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284813, 40.595707, 37.200413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364506, 40.293079, 37.449543>,  <36.412319, 40.111504, 37.599022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364506, 40.293079, 37.449543>,  <36.284813, 40.595707, 37.200413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364506, 40.293079, 37.449543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142056, 0.606557, 0.782246,
		-0.969602, -0.244322, 0.013369,
		0.199229, -0.756568, 0.622826,
		36.424274, 40.066109, 37.636391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781700, 40.661957, 37.730991>,  <36.284813, 40.595707, 37.200413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781700, 40.661957, 37.730991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045605, 40.422729, 37.912994>,  <36.203949, 40.279194, 38.022198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045605, 40.422729, 37.912994>,  <35.781700, 40.661957, 37.730991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045605, 40.422729, 37.912994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212600, 0.432202, 0.876358,
		-0.720773, -0.674923, 0.158002,
		0.659763, -0.598064, 0.455008,
		36.243534, 40.243309, 38.049496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507423, 40.476677, 38.371407>,  <35.781700, 40.661957, 37.730991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507423, 40.476677, 38.371407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901581, 40.425331, 38.416164>,  <36.138077, 40.394524, 38.443020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901581, 40.425331, 38.416164>,  <35.507423, 40.476677, 38.371407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901581, 40.425331, 38.416164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042989, 0.448312, 0.892843,
		-0.164771, -0.884613, 0.436246,
		0.985394, -0.128360, 0.111898,
		36.197201, 40.386822, 38.449734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542049, 40.108795, 38.991436>,  <35.507423, 40.476677, 38.371407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542049, 40.108795, 38.991436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892967, 40.286339, 38.918396>,  <36.103519, 40.392864, 38.874573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892967, 40.286339, 38.918396>,  <35.542049, 40.108795, 38.991436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892967, 40.286339, 38.918396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004325, 0.387753, 0.921753,
		0.479936, -0.807858, 0.342093,
		0.877293, 0.443862, -0.182602,
		36.156155, 40.419498, 38.863617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334240, 39.509895, 39.586674>,  <35.542049, 40.108795, 38.991436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334240, 39.509895, 39.586674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938763, 39.458797, 39.618111>,  <34.701477, 39.428139, 39.636974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938763, 39.458797, 39.618111>,  <35.334240, 39.509895, 39.586674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938763, 39.458797, 39.618111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016727, -0.614657, -0.788617,
		0.149046, -0.778382, 0.609841,
		-0.988689, -0.127741, 0.078592,
		34.642155, 39.420475, 39.641689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205124, 38.822330, 39.471695>,  <35.334240, 39.509895, 39.586674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205124, 38.822330, 39.471695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836327, 38.973076, 39.436131>,  <34.615047, 39.063522, 39.414791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836327, 38.973076, 39.436131>,  <35.205124, 38.822330, 39.471695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836327, 38.973076, 39.436131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166288, -0.592728, -0.788049,
		-0.349689, -0.711789, 0.609158,
		-0.921990, 0.376868, -0.088908,
		34.559731, 39.086136, 39.409458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725445, 38.248543, 39.384533>,  <35.205124, 38.822330, 39.471695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725445, 38.248543, 39.384533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545609, 38.564590, 39.217880>,  <34.437706, 38.754219, 39.117889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545609, 38.564590, 39.217880>,  <34.725445, 38.248543, 39.384533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545609, 38.564590, 39.217880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055604, -0.490281, -0.869789,
		-0.891500, -0.367887, 0.264362,
		-0.449595, 0.790116, -0.416630,
		34.410728, 38.801624, 39.092892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069935, 37.915211, 39.143993>,  <34.725445, 38.248543, 39.384533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069935, 37.915211, 39.143993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154743, 38.261490, 38.962612>,  <34.205627, 38.469257, 38.853783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154743, 38.261490, 38.962612>,  <34.069935, 37.915211, 39.143993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154743, 38.261490, 38.962612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299945, -0.383958, -0.873275,
		-0.930096, 0.321165, 0.178253,
		0.212023, 0.865696, -0.453450,
		34.218349, 38.521198, 38.826576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405487, 38.165730, 38.948250>,  <34.069935, 37.915211, 39.143993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405487, 38.165730, 38.948250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688938, 38.326706, 38.716427>,  <33.859009, 38.423290, 38.577332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688938, 38.326706, 38.716427>,  <33.405487, 38.165730, 38.948250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688938, 38.326706, 38.716427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370233, -0.487153, -0.790955,
		-0.600644, 0.775066, -0.196215,
		0.708629, 0.402437, -0.579560,
		33.901527, 38.447437, 38.542561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990566, 38.268284, 38.386192>,  <33.405487, 38.165730, 38.948250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990566, 38.268284, 38.386192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374180, 38.297142, 38.276608>,  <33.604347, 38.314457, 38.210857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374180, 38.297142, 38.276608>,  <32.990566, 38.268284, 38.386192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374180, 38.297142, 38.276608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146470, -0.701494, -0.697462,
		-0.242500, 0.709015, -0.662187,
		0.959031, 0.072144, -0.273962,
		33.661888, 38.318787, 38.194420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049610, 38.257671, 37.571114>,  <32.990566, 38.268284, 38.386192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049610, 38.257671, 37.571114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427685, 38.194641, 37.685516>,  <33.654530, 38.156822, 37.754158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427685, 38.194641, 37.685516>,  <33.049610, 38.257671, 37.571114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427685, 38.194641, 37.685516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142634, -0.588670, -0.795690,
		0.293742, 0.792868, -0.533926,
		0.945183, -0.157571, 0.286007,
		33.711239, 38.147369, 37.771320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384167, 38.154659, 36.892960>,  <33.049610, 38.257671, 37.571114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384167, 38.154659, 36.892960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610451, 38.006428, 37.187618>,  <33.746220, 37.917488, 37.364414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610451, 38.006428, 37.187618>,  <33.384167, 38.154659, 36.892960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610451, 38.006428, 37.187618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160429, -0.826802, -0.539130,
		0.808851, 0.423168, -0.408276,
		0.565706, -0.370576, 0.736648,
		33.780163, 37.895256, 37.408611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872360, 38.080578, 36.519714>,  <33.384167, 38.154659, 36.892960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872360, 38.080578, 36.519714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917114, 37.841869, 36.837543>,  <33.943966, 37.698643, 37.028240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917114, 37.841869, 36.837543>,  <33.872360, 38.080578, 36.519714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917114, 37.841869, 36.837543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075883, -0.792125, -0.605623,
		0.990820, 0.128053, -0.043340,
		0.111882, -0.596775, 0.794571,
		33.950680, 37.662838, 37.075916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590298, 37.689411, 36.532146>,  <33.872360, 38.080578, 36.519714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590298, 37.689411, 36.532146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362759, 37.476078, 36.782574>,  <34.226234, 37.348080, 36.932831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362759, 37.476078, 36.782574>,  <34.590298, 37.689411, 36.532146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362759, 37.476078, 36.782574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258384, -0.838584, -0.479598,
		0.780798, -0.111053, 0.614834,
		-0.568851, -0.533333, 0.626070,
		34.192104, 37.316078, 36.970394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989243, 37.045780, 36.800018>,  <34.590298, 37.689411, 36.532146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989243, 37.045780, 36.800018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597141, 36.986649, 36.852558>,  <34.361881, 36.951168, 36.884083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597141, 36.986649, 36.852558>,  <34.989243, 37.045780, 36.800018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597141, 36.986649, 36.852558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078713, -0.900999, -0.426620,
		0.181414, -0.407856, 0.894842,
		-0.980252, -0.147830, 0.131351,
		34.303066, 36.942299, 36.891964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953583, 36.316628, 36.979149>,  <34.989243, 37.045780, 36.800018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953583, 36.316628, 36.979149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578911, 36.414776, 36.879211>,  <34.354107, 36.473667, 36.819248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578911, 36.414776, 36.879211>,  <34.953583, 36.316628, 36.979149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578911, 36.414776, 36.879211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160112, -0.934602, -0.317621,
		-0.311438, -0.257507, 0.914711,
		-0.936680, 0.245375, -0.249840,
		34.297905, 36.488388, 36.804260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648045, 35.700287, 37.091087>,  <34.953583, 36.316628, 36.979149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648045, 35.700287, 37.091087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419292, 35.919567, 36.846981>,  <34.282040, 36.051136, 36.700516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419292, 35.919567, 36.846981>,  <34.648045, 35.700287, 37.091087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419292, 35.919567, 36.846981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309634, -0.833145, -0.458254,
		-0.759654, -0.073110, 0.646205,
		-0.571885, 0.548201, -0.610265,
		34.247726, 36.084026, 36.663902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949402, 35.392639, 37.162209>,  <34.648045, 35.700287, 37.091087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949402, 35.392639, 37.162209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987400, 35.570503, 36.805950>,  <34.010201, 35.677223, 36.592194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987400, 35.570503, 36.805950>,  <33.949402, 35.392639, 37.162209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987400, 35.570503, 36.805950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151098, -0.877886, -0.454406,
		-0.983944, 0.177742, -0.016209,
		0.094997, 0.444661, -0.890647,
		34.015900, 35.703903, 36.538757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538849, 34.738831, 36.904297>,  <33.949402, 35.392639, 37.162209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538849, 34.738831, 36.904297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436222, 34.422482, 37.126537>,  <33.374645, 34.232674, 37.259884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436222, 34.422482, 37.126537>,  <33.538849, 34.738831, 36.904297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436222, 34.422482, 37.126537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212938, 0.514469, 0.830650,
		-0.942778, 0.331426, 0.036411,
		-0.256566, -0.790872, 0.555604,
		33.359253, 34.185219, 37.293217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930714, 34.920776, 37.321087>,  <33.538849, 34.738831, 36.904297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930714, 34.920776, 37.321087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169292, 34.636967, 37.471195>,  <33.312439, 34.466682, 37.561260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169292, 34.636967, 37.471195>,  <32.930714, 34.920776, 37.321087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169292, 34.636967, 37.471195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045117, 0.437158, 0.898252,
		-0.801384, -0.552691, 0.228730,
		0.596447, -0.709525, 0.375267,
		33.348225, 34.424110, 37.583775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649094, 34.581825, 37.988266>,  <32.930714, 34.920776, 37.321087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649094, 34.581825, 37.988266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043381, 34.547630, 38.046291>,  <33.279953, 34.527115, 38.081108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043381, 34.547630, 38.046291>,  <32.649094, 34.581825, 37.988266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043381, 34.547630, 38.046291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105931, 0.354831, 0.928910,
		-0.130885, -0.931014, 0.340709,
		0.985722, -0.085488, 0.145065,
		33.339096, 34.521984, 38.089809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724094, 34.252495, 38.652664>,  <32.649094, 34.581825, 37.988266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724094, 34.252495, 38.652664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064495, 34.450108, 38.581406>,  <33.268734, 34.568676, 38.538651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064495, 34.450108, 38.581406>,  <32.724094, 34.252495, 38.652664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064495, 34.450108, 38.581406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018275, 0.311161, 0.950181,
		0.524850, -0.811858, 0.255769,
		0.850998, 0.494029, -0.178150,
		33.319794, 34.598316, 38.527962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283066, 34.020111, 39.197453>,  <32.724094, 34.252495, 38.652664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283066, 34.020111, 39.197453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357620, 34.379307, 39.038013>,  <33.402355, 34.594822, 38.942348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357620, 34.379307, 39.038013>,  <33.283066, 34.020111, 39.197453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357620, 34.379307, 39.038013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193134, 0.364305, 0.911033,
		0.963306, -0.246789, -0.105530,
		0.186388, 0.897985, -0.398600,
		33.413536, 34.648701, 38.918434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888283, 34.262974, 39.530312>,  <33.283066, 34.020111, 39.197453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888283, 34.262974, 39.530312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700008, 34.595303, 39.411522>,  <33.587044, 34.794701, 39.340248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700008, 34.595303, 39.411522>,  <33.888283, 34.262974, 39.530312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700008, 34.595303, 39.411522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190108, 0.424179, 0.885399,
		0.861577, 0.360287, -0.357600,
		-0.470685, 0.830822, -0.296970,
		33.558804, 34.844547, 39.322430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275536, 34.563953, 39.980751>,  <33.888283, 34.262974, 39.530312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275536, 34.563953, 39.980751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985386, 34.807865, 39.853001>,  <33.811295, 34.954212, 39.776348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985386, 34.807865, 39.853001>,  <34.275536, 34.563953, 39.980751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985386, 34.807865, 39.853001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038438, 0.499133, 0.865672,
		0.687279, 0.615661, -0.385498,
		-0.725375, 0.609777, -0.319379,
		33.767773, 34.990799, 39.757187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501560, 35.362064, 40.015594>,  <34.275536, 34.563953, 39.980751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501560, 35.362064, 40.015594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102127, 35.343571, 40.026134>,  <33.862469, 35.332474, 40.032459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102127, 35.343571, 40.026134>,  <34.501560, 35.362064, 40.015594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102127, 35.343571, 40.026134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002561, 0.452855, 0.891580,
		-0.053154, 0.890384, -0.452095,
		-0.998583, -0.046234, 0.026351,
		33.802551, 35.329700, 40.034039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311893, 35.991764, 40.248867>,  <34.501560, 35.362064, 40.015594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311893, 35.991764, 40.248867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994938, 35.757607, 40.317497>,  <33.804764, 35.617111, 40.358677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994938, 35.757607, 40.317497>,  <34.311893, 35.991764, 40.248867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994938, 35.757607, 40.317497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166349, 0.477959, 0.862487,
		-0.586898, 0.654883, -0.476108,
		-0.792388, -0.585391, 0.171574,
		33.757221, 35.581989, 40.368969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010029, 36.453785, 40.571770>,  <34.311893, 35.991764, 40.248867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010029, 36.453785, 40.571770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802601, 36.125481, 40.667641>,  <33.678146, 35.928497, 40.725163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802601, 36.125481, 40.667641>,  <34.010029, 36.453785, 40.571770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802601, 36.125481, 40.667641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213187, 0.395574, 0.893349,
		-0.828034, 0.412164, -0.380106,
		-0.518566, -0.820758, 0.239680,
		33.647030, 35.879253, 40.739544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419422, 36.673271, 40.992458>,  <34.010029, 36.453785, 40.571770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419422, 36.673271, 40.992458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468037, 36.287861, 41.087837>,  <33.497208, 36.056614, 41.145065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468037, 36.287861, 41.087837>,  <33.419422, 36.673271, 40.992458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468037, 36.287861, 41.087837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171556, 0.216217, 0.961155,
		-0.977648, -0.157725, -0.139019,
		0.121540, -0.963521, 0.238443,
		33.504498, 35.998806, 41.159370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900776, 36.552219, 41.513103>,  <33.419422, 36.673271, 40.992458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900776, 36.552219, 41.513103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166508, 36.259441, 41.573654>,  <33.325947, 36.083775, 41.609985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166508, 36.259441, 41.573654>,  <32.900776, 36.552219, 41.513103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166508, 36.259441, 41.573654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046728, 0.161455, 0.985773,
		-0.745975, -0.661954, 0.073057,
		0.664332, -0.731949, 0.151373,
		33.365807, 36.039856, 41.619064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553249, 36.112724, 41.975502>,  <32.900776, 36.552219, 41.513103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553249, 36.112724, 41.975502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952358, 36.086132, 41.973141>,  <33.191822, 36.070175, 41.971722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952358, 36.086132, 41.973141>,  <32.553249, 36.112724, 41.975502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952358, 36.086132, 41.973141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027933, 0.335580, 0.941597,
		-0.060617, -0.939663, 0.336689,
		0.997770, -0.066482, -0.005906,
		33.251690, 36.066189, 41.971371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720921, 35.774963, 42.608585>,  <32.553249, 36.112724, 41.975502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720921, 35.774963, 42.608585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070759, 35.930058, 42.492138>,  <33.280663, 36.023113, 42.422272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070759, 35.930058, 42.492138>,  <32.720921, 35.774963, 42.608585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070759, 35.930058, 42.492138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160629, 0.334805, 0.928496,
		0.457479, -0.858817, 0.230536,
		0.874592, 0.387736, -0.291117,
		33.333138, 36.046379, 42.404804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121262, 35.588062, 43.135052>,  <32.720921, 35.774963, 42.608585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121262, 35.588062, 43.135052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337677, 35.875961, 42.961044>,  <33.467525, 36.048698, 42.856640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337677, 35.875961, 42.961044>,  <33.121262, 35.588062, 43.135052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337677, 35.875961, 42.961044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128120, 0.440691, 0.888469,
		0.831180, -0.536432, 0.146218,
		0.541040, 0.719745, -0.435021,
		33.499989, 36.091885, 42.830540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759472, 35.792648, 43.585785>,  <33.121262, 35.588062, 43.135052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759472, 35.792648, 43.585785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679531, 36.098568, 43.340790>,  <33.631565, 36.282120, 43.193790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679531, 36.098568, 43.340790>,  <33.759472, 35.792648, 43.585785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679531, 36.098568, 43.340790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038202, 0.618544, 0.784821,
		0.979081, 0.180247, -0.094401,
		-0.199853, 0.764797, -0.612490,
		33.619576, 36.328007, 43.157043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297497, 36.329052, 43.735249>,  <33.759472, 35.792648, 43.585785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297497, 36.329052, 43.735249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983646, 36.498089, 43.553799>,  <33.795334, 36.599510, 43.444927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983646, 36.498089, 43.553799>,  <34.297497, 36.329052, 43.735249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983646, 36.498089, 43.553799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060993, 0.675531, 0.734804,
		0.616960, 0.604216, -0.504266,
		-0.784628, 0.422588, -0.453628,
		33.748257, 36.624866, 43.417709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584919, 37.002914, 43.647671>,  <34.297497, 36.329052, 43.735249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584919, 37.002914, 43.647671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190548, 37.035801, 43.589451>,  <33.953926, 37.055534, 43.554520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190548, 37.035801, 43.589451>,  <34.584919, 37.002914, 43.647671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190548, 37.035801, 43.589451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040917, 0.725528, 0.686975,
		0.162085, 0.683264, -0.711954,
		-0.985928, 0.082217, -0.145554,
		33.894768, 37.060467, 43.545784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441086, 37.759548, 43.542980>,  <34.584919, 37.002914, 43.647671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441086, 37.759548, 43.542980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099731, 37.588680, 43.662491>,  <33.894920, 37.486160, 43.734200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099731, 37.588680, 43.662491>,  <34.441086, 37.759548, 43.542980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099731, 37.588680, 43.662491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083585, 0.677871, 0.730414,
		-0.514543, 0.598348, -0.614187,
		-0.853381, -0.427166, 0.298781,
		33.843716, 37.460529, 43.752125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955242, 38.372810, 43.675373>,  <34.441086, 37.759548, 43.542980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955242, 38.372810, 43.675373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781067, 38.064163, 43.860844>,  <33.676559, 37.878975, 43.972126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781067, 38.064163, 43.860844>,  <33.955242, 38.372810, 43.675373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781067, 38.064163, 43.860844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143445, 0.567959, 0.810460,
		-0.888715, 0.286396, -0.357998,
		-0.435441, -0.771621, 0.463672,
		33.650436, 37.832676, 43.999947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395218, 38.682346, 44.095978>,  <33.955242, 38.372810, 43.675373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395218, 38.682346, 44.095978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454529, 38.317802, 44.249561>,  <33.490116, 38.099075, 44.341713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454529, 38.317802, 44.249561>,  <33.395218, 38.682346, 44.095978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454529, 38.317802, 44.249561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151088, 0.362820, 0.919529,
		-0.977336, -0.194361, -0.083896,
		0.148282, -0.911364, 0.383963,
		33.499012, 38.044392, 44.364750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792011, 38.626041, 44.468567>,  <33.395218, 38.682346, 44.095978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792011, 38.626041, 44.468567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064281, 38.370800, 44.612514>,  <33.227642, 38.217655, 44.698883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064281, 38.370800, 44.612514>,  <32.792011, 38.626041, 44.468567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064281, 38.370800, 44.612514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008033, 0.497701, 0.867312,
		-0.732540, -0.587468, 0.343898,
		0.680676, -0.638103, 0.359867,
		33.268486, 38.179371, 44.720474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644741, 38.691719, 45.154068>,  <32.792011, 38.626041, 44.468567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644741, 38.691719, 45.154068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973694, 38.464478, 45.166332>,  <33.171066, 38.328133, 45.173691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973694, 38.464478, 45.166332>,  <32.644741, 38.691719, 45.154068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973694, 38.464478, 45.166332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156240, 0.277343, 0.947982,
		-0.547058, -0.774815, 0.316843,
		0.822385, -0.568105, 0.030665,
		33.220409, 38.294044, 45.175533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580284, 38.270164, 45.770172>,  <32.644741, 38.691719, 45.154068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580284, 38.270164, 45.770172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967220, 38.319645, 45.681667>,  <33.199383, 38.349331, 45.628567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967220, 38.319645, 45.681667>,  <32.580284, 38.270164, 45.770172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967220, 38.319645, 45.681667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198108, 0.175644, 0.964315,
		0.158140, -0.976652, 0.145403,
		0.967339, 0.123691, -0.221259,
		33.257423, 38.356754, 45.615288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973289, 37.868763, 46.297520>,  <32.580284, 38.270164, 45.770172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973289, 37.868763, 46.297520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218189, 38.128590, 46.117199>,  <33.365128, 38.284485, 46.009007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218189, 38.128590, 46.117199>,  <32.973289, 37.868763, 46.297520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218189, 38.128590, 46.117199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411957, 0.224589, 0.883092,
		0.674869, -0.726381, -0.130088,
		0.612245, 0.649562, -0.450805,
		33.401863, 38.323460, 45.981956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623333, 37.739338, 46.581921>,  <32.973289, 37.868763, 46.297520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623333, 37.739338, 46.581921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616020, 38.112110, 46.437054>,  <33.611633, 38.335773, 46.350132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616020, 38.112110, 46.437054>,  <33.623333, 37.739338, 46.581921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616020, 38.112110, 46.437054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556758, 0.310359, 0.770518,
		0.830474, -0.187554, -0.524535,
		-0.018280, 0.931934, -0.362167,
		33.610535, 38.391689, 46.328403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264347, 38.064663, 46.752762>,  <33.623333, 37.739338, 46.581921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264347, 38.064663, 46.752762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022297, 38.373135, 46.673664>,  <33.877068, 38.558216, 46.626205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022297, 38.373135, 46.673664>,  <34.264347, 38.064663, 46.752762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022297, 38.373135, 46.673664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400054, 0.509291, 0.761958,
		0.688314, 0.381976, -0.616700,
		-0.605129, 0.771179, -0.197741,
		33.840759, 38.604488, 46.614342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712662, 38.702053, 46.858074>,  <34.264347, 38.064663, 46.752762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712662, 38.702053, 46.858074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331738, 38.803883, 46.925362>,  <34.103184, 38.864983, 46.965733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331738, 38.803883, 46.925362>,  <34.712662, 38.702053, 46.858074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331738, 38.803883, 46.925362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255437, 0.363561, 0.895866,
		0.166908, 0.896111, -0.411250,
		-0.952310, 0.254576, 0.168219,
		34.046043, 38.880257, 46.975826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396980, 38.525433, 46.797218>,  <34.712662, 38.702053, 46.858074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396980, 38.525433, 46.797218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605247, 38.312824, 47.064468>,  <35.730206, 38.185257, 47.224819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605247, 38.312824, 47.064468>,  <35.396980, 38.525433, 46.797218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605247, 38.312824, 47.064468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135795, -0.824160, -0.549836,
		0.842892, 0.195553, -0.501291,
		0.520666, -0.531525, 0.668123,
		35.761448, 38.153366, 47.264904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665489, 38.152122, 46.421043>,  <35.396980, 38.525433, 46.797218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665489, 38.152122, 46.421043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734989, 37.964500, 46.767406>,  <35.776688, 37.851925, 46.975224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734989, 37.964500, 46.767406>,  <35.665489, 38.152122, 46.421043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734989, 37.964500, 46.767406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025868, -0.876804, -0.480152,
		0.984450, 0.105825, -0.140209,
		0.173748, -0.469059, 0.865907,
		35.787113, 37.823784, 47.027180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209377, 37.741741, 46.438137>,  <35.665489, 38.152122, 46.421043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209377, 37.741741, 46.438137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964848, 37.584534, 46.712894>,  <35.818130, 37.490211, 46.877747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964848, 37.584534, 46.712894>,  <36.209377, 37.741741, 46.438137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964848, 37.584534, 46.712894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065863, -0.839689, -0.539058,
		0.788634, -0.374781, 0.487438,
		-0.611325, -0.393016, 0.686892,
		35.781448, 37.466629, 46.918961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278351, 37.131226, 46.298569>,  <36.209377, 37.741741, 46.438137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278351, 37.131226, 46.298569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938412, 37.126453, 46.509327>,  <35.734447, 37.123592, 46.635784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938412, 37.126453, 46.509327>,  <36.278351, 37.131226, 46.298569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938412, 37.126453, 46.509327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262761, -0.857040, -0.443215,
		0.456859, -0.515112, 0.725217,
		-0.849845, -0.011928, 0.526898,
		35.683456, 37.122875, 46.667397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256134, 36.503284, 46.469685>,  <36.278351, 37.131226, 46.298569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256134, 36.503284, 46.469685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877262, 36.630741, 46.484169>,  <35.649937, 36.707214, 46.492859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877262, 36.630741, 46.484169>,  <36.256134, 36.503284, 46.469685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877262, 36.630741, 46.484169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305354, -0.861620, -0.405426,
		-0.097985, -0.395070, 0.913410,
		-0.947184, 0.318639, 0.036211,
		35.593105, 36.726334, 46.495033>
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
