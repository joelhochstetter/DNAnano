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
	<24.432428, 35.170811, 35.167755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180300, 34.938076, 34.962166>,  <24.029022, 34.798435, 34.838814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180300, 34.938076, 34.962166>,  <24.432428, 35.170811, 35.167755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.180300, 34.938076, 34.962166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335055, -0.801096, 0.495967,
		-0.700310, 0.140410, 0.699894,
		-0.630321, -0.581833, -0.513970,
		23.991203, 34.763527, 34.807976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.266037, 34.682838, 35.608223>,  <24.432428, 35.170811, 35.167755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.266037, 34.682838, 35.608223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128906, 34.496269, 35.282051>,  <24.046629, 34.384327, 35.086349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128906, 34.496269, 35.282051>,  <24.266037, 34.682838, 35.608223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.128906, 34.496269, 35.282051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089272, -0.880277, 0.465986,
		-0.935148, 0.086957, 0.343420,
		-0.342826, -0.466423, -0.815426,
		24.026058, 34.356342, 35.037422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899611, 34.845379, 35.982609>,  <24.266037, 34.682838, 35.608223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899611, 34.845379, 35.982609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817213, 34.948910, 36.360092>,  <24.767775, 35.011028, 36.586582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817213, 34.948910, 36.360092>,  <24.899611, 34.845379, 35.982609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.817213, 34.948910, 36.360092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973737, -0.149776, -0.171471,
		0.096964, -0.954243, 0.282876,
		-0.205993, 0.258821, 0.943705,
		24.755415, 35.026558, 36.643204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064425, 35.355091, 35.597519>,  <24.899611, 34.845379, 35.982609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064425, 35.355091, 35.597519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189880, 35.647442, 35.839989>,  <25.265154, 35.822853, 35.985470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189880, 35.647442, 35.839989>,  <25.064425, 35.355091, 35.597519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189880, 35.647442, 35.839989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369131, 0.494327, -0.787009,
		-0.874856, 0.470595, -0.114750,
		0.313639, 0.730877, 0.606176,
		25.283972, 35.866707, 36.021843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855183, 35.964447, 35.264378>,  <25.064425, 35.355091, 35.597519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855183, 35.964447, 35.264378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151047, 36.033886, 35.524460>,  <25.328566, 36.075550, 35.680508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151047, 36.033886, 35.524460>,  <24.855183, 35.964447, 35.264378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151047, 36.033886, 35.524460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417123, 0.639934, -0.645362,
		-0.528120, 0.748565, 0.400925,
		0.739661, 0.173594, 0.650205,
		25.372946, 36.085964, 35.719521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905817, 36.673183, 35.447525>,  <24.855183, 35.964447, 35.264378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905817, 36.673183, 35.447525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278366, 36.555431, 35.533211>,  <25.501896, 36.484779, 35.584621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278366, 36.555431, 35.533211>,  <24.905817, 36.673183, 35.447525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278366, 36.555431, 35.533211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358231, 0.845939, -0.395041,
		-0.064919, 0.444667, 0.893340,
		0.931373, -0.294376, 0.214211,
		25.557777, 36.467117, 35.597473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200527, 37.265377, 35.676441>,  <24.905817, 36.673183, 35.447525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200527, 37.265377, 35.676441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476385, 37.003803, 35.552017>,  <25.641901, 36.846859, 35.477364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476385, 37.003803, 35.552017>,  <25.200527, 37.265377, 35.676441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476385, 37.003803, 35.552017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502370, 0.741426, -0.444873,
		0.521547, 0.150537, 0.839838,
		0.689647, -0.653932, -0.311063,
		25.683279, 36.807625, 35.458698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753057, 37.631809, 35.681248>,  <25.200527, 37.265377, 35.676441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753057, 37.631809, 35.681248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869411, 37.349873, 35.422455>,  <25.939224, 37.180710, 35.267178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869411, 37.349873, 35.422455>,  <25.753057, 37.631809, 35.681248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869411, 37.349873, 35.422455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527545, 0.682300, -0.506126,
		0.798175, -0.194090, 0.570303,
		0.290884, -0.704838, -0.646986,
		25.956676, 37.138420, 35.228359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478895, 37.771656, 35.411209>,  <25.753057, 37.631809, 35.681248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478895, 37.771656, 35.411209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398129, 37.508968, 35.120567>,  <26.349669, 37.351357, 34.946182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398129, 37.508968, 35.120567>,  <26.478895, 37.771656, 35.411209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398129, 37.508968, 35.120567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423438, 0.610425, -0.669389,
		0.883136, -0.442832, 0.154824,
		-0.201919, -0.656720, -0.726600,
		26.337553, 37.311951, 34.902588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110241, 37.485722, 35.067909>,  <26.478895, 37.771656, 35.411209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110241, 37.485722, 35.067909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794380, 37.487679, 34.822495>,  <26.604864, 37.488853, 34.675247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794380, 37.487679, 34.822495>,  <27.110241, 37.485722, 35.067909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794380, 37.487679, 34.822495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497855, 0.589545, -0.636064,
		0.358598, -0.807721, -0.467968,
		-0.789650, 0.004890, -0.613537,
		26.557486, 37.489143, 34.638432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418825, 37.370808, 34.328072>,  <27.110241, 37.485722, 35.067909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418825, 37.370808, 34.328072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047682, 37.502926, 34.258804>,  <26.824997, 37.582195, 34.217243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047682, 37.502926, 34.258804>,  <27.418825, 37.370808, 34.328072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047682, 37.502926, 34.258804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328877, 0.505720, -0.797551,
		-0.175850, -0.796965, -0.577861,
		-0.927856, 0.330294, -0.173173,
		26.769325, 37.602013, 34.206852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407454, 37.634670, 33.655907>,  <27.418825, 37.370808, 34.328072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407454, 37.634670, 33.655907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046894, 37.782959, 33.745388>,  <26.830559, 37.871933, 33.799076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046894, 37.782959, 33.745388>,  <27.407454, 37.634670, 33.655907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046894, 37.782959, 33.745388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149691, 0.751610, -0.642398,
		-0.406295, -0.545569, -0.732993,
		-0.901397, 0.370725, 0.223708,
		26.776474, 37.894176, 33.812500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030775, 37.775826, 32.924839>,  <27.407454, 37.634670, 33.655907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030775, 37.775826, 32.924839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868036, 37.991592, 33.219730>,  <26.770393, 38.121052, 33.396664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868036, 37.991592, 33.219730>,  <27.030775, 37.775826, 32.924839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868036, 37.991592, 33.219730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113049, 0.771101, -0.626596,
		-0.906474, -0.338272, -0.252739,
		-0.406847, 0.539421, 0.737224,
		26.745981, 38.153419, 33.440899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398296, 38.058693, 32.713718>,  <27.030775, 37.775826, 32.924839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398296, 38.058693, 32.713718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499481, 38.296803, 33.018784>,  <26.560192, 38.439671, 33.201824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499481, 38.296803, 33.018784>,  <26.398296, 38.058693, 32.713718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499481, 38.296803, 33.018784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181491, 0.803505, -0.566957,
		-0.950300, 0.005004, 0.311295,
		0.252965, 0.595276, 0.762663,
		26.575371, 38.475384, 33.247581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882469, 38.511158, 32.725212>,  <26.398296, 38.058693, 32.713718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882469, 38.511158, 32.725212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151110, 38.685291, 32.965023>,  <26.312294, 38.789772, 33.108910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151110, 38.685291, 32.965023>,  <25.882469, 38.511158, 32.725212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151110, 38.685291, 32.965023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233727, 0.892345, -0.386124,
		-0.703081, 0.119195, 0.701049,
		0.671602, 0.435330, 0.599532,
		26.352591, 38.815891, 33.144882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636341, 39.011333, 33.173100>,  <25.882469, 38.511158, 32.725212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636341, 39.011333, 33.173100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015787, 39.136604, 33.154980>,  <26.243454, 39.211765, 33.144108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015787, 39.136604, 33.154980>,  <25.636341, 39.011333, 33.173100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015787, 39.136604, 33.154980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311922, 0.901371, -0.300391,
		-0.053248, 0.299084, 0.952740,
		0.948614, 0.313176, -0.045295,
		26.300371, 39.230556, 33.141392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528887, 39.670803, 33.315838>,  <25.636341, 39.011333, 33.173100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528887, 39.670803, 33.315838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895454, 39.664978, 33.155853>,  <26.115395, 39.661484, 33.059864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895454, 39.664978, 33.155853>,  <25.528887, 39.670803, 33.315838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895454, 39.664978, 33.155853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193839, 0.858161, -0.475380,
		0.350151, 0.513175, 0.783611,
		0.916417, -0.014561, -0.399960,
		26.170380, 39.660610, 33.035866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787743, 40.376984, 33.447819>,  <25.528887, 39.670803, 33.315838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787743, 40.376984, 33.447819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034386, 40.223827, 33.172665>,  <26.182371, 40.131935, 33.007572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034386, 40.223827, 33.172665>,  <25.787743, 40.376984, 33.447819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034386, 40.223827, 33.172665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031458, 0.861081, -0.507493,
		0.786640, 0.334564, 0.518906,
		0.616609, -0.382891, -0.687886,
		26.219368, 40.108959, 32.966297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387188, 40.932987, 33.288986>,  <25.787743, 40.376984, 33.447819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387188, 40.932987, 33.288986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326845, 40.670918, 32.992882>,  <26.290640, 40.513676, 32.815220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326845, 40.670918, 32.992882>,  <26.387188, 40.932987, 33.288986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326845, 40.670918, 32.992882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011895, 0.749978, -0.661355,
		0.988484, -0.090965, -0.120933,
		-0.150857, -0.655177, -0.740260,
		26.281588, 40.474365, 32.770805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981026, 40.973873, 32.786957>,  <26.387188, 40.932987, 33.288986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981026, 40.973873, 32.786957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685041, 40.826214, 32.562035>,  <26.507452, 40.737617, 32.427082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685041, 40.826214, 32.562035>,  <26.981026, 40.973873, 32.786957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685041, 40.826214, 32.562035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015163, 0.844902, -0.534706,
		0.672480, -0.387135, -0.630791,
		-0.739960, -0.369144, -0.562309,
		26.463053, 40.715469, 32.393341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229815, 41.138290, 32.156204>,  <26.981026, 40.973873, 32.786957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229815, 41.138290, 32.156204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850973, 41.034355, 32.080860>,  <26.623669, 40.971992, 32.035652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850973, 41.034355, 32.080860>,  <27.229815, 41.138290, 32.156204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850973, 41.034355, 32.080860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066335, 0.732747, -0.677260,
		0.313999, -0.628940, -0.711223,
		-0.947103, -0.259838, -0.188361,
		26.566843, 40.956406, 32.024353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078394, 41.066792, 31.468077>,  <27.229815, 41.138290, 32.156204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078394, 41.066792, 31.468077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699757, 41.131451, 31.579666>,  <26.472574, 41.170246, 31.646620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699757, 41.131451, 31.579666>,  <27.078394, 41.066792, 31.468077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699757, 41.131451, 31.579666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055342, 0.770941, -0.634498,
		-0.317639, -0.616051, -0.720824,
		-0.946595, 0.161649, 0.278974,
		26.415777, 41.179947, 31.663359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740204, 41.285431, 30.871708>,  <27.078394, 41.066792, 31.468077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740204, 41.285431, 30.871708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470003, 41.406528, 31.140646>,  <26.307882, 41.479187, 31.302010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470003, 41.406528, 31.140646>,  <26.740204, 41.285431, 30.871708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470003, 41.406528, 31.140646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192343, 0.807912, -0.557030,
		-0.711832, -0.505595, -0.487514,
		-0.675500, 0.302742, 0.672345,
		26.267353, 41.497353, 31.342350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039820, 41.340034, 30.525583>,  <26.740204, 41.285431, 30.871708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039820, 41.340034, 30.525583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031422, 41.560299, 30.859369>,  <26.026382, 41.692455, 31.059641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031422, 41.560299, 30.859369>,  <26.039820, 41.340034, 30.525583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031422, 41.560299, 30.859369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477852, 0.727616, -0.492171,
		-0.878189, -0.409085, 0.247857,
		-0.020995, 0.550658, 0.834466,
		26.025124, 41.725498, 31.109709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346800, 41.640224, 30.556753>,  <26.039820, 41.340034, 30.525583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346800, 41.640224, 30.556753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621988, 41.852688, 30.754568>,  <25.787102, 41.980167, 30.873257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621988, 41.852688, 30.754568>,  <25.346800, 41.640224, 30.556753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621988, 41.852688, 30.754568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366366, 0.842409, -0.395124,
		-0.626475, 0.090653, 0.774152,
		0.687972, 0.531158, 0.494536,
		25.828381, 42.012035, 30.902929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478897, 42.380901, 30.995150>,  <25.346800, 41.640224, 30.556753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478897, 42.380901, 30.995150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261698, 42.709194, 30.924101>,  <25.131378, 42.906170, 30.881472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261698, 42.709194, 30.924101>,  <25.478897, 42.380901, 30.995150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261698, 42.709194, 30.924101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834112, 0.551594, -0.001171,
		0.097013, -0.148792, -0.984098,
		-0.542997, 0.820734, -0.177621,
		25.098799, 42.955414, 30.870815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656525, 42.813290, 30.330826>,  <25.478897, 42.380901, 30.995150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656525, 42.813290, 30.330826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538990, 43.054283, 30.627655>,  <25.468470, 43.198879, 30.805752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538990, 43.054283, 30.627655>,  <25.656525, 42.813290, 30.330826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538990, 43.054283, 30.627655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860874, 0.504190, -0.068471,
		-0.415398, 0.618710, -0.666815,
		-0.293838, 0.602487, 0.742071,
		25.450838, 43.235027, 30.850277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709658, 43.476299, 30.121330>,  <25.656525, 42.813290, 30.330826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709658, 43.476299, 30.121330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720491, 43.497555, 30.520618>,  <25.726992, 43.510307, 30.760191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720491, 43.497555, 30.520618>,  <25.709658, 43.476299, 30.121330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720491, 43.497555, 30.520618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555463, 0.829429, -0.059225,
		-0.831100, 0.556078, -0.007052,
		0.027085, 0.053139, 0.998220,
		25.728617, 43.513496, 30.820084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498283, 44.182968, 30.377232>,  <25.709658, 43.476299, 30.121330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498283, 44.182968, 30.377232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752001, 43.996429, 30.623873>,  <25.904230, 43.884506, 30.771858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752001, 43.996429, 30.623873>,  <25.498283, 44.182968, 30.377232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752001, 43.996429, 30.623873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668469, 0.731494, -0.134410,
		-0.388360, 0.497435, 0.775716,
		0.634292, -0.466343, 0.616602,
		25.942287, 43.856525, 30.808853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605616, 44.566364, 31.007620>,  <25.498283, 44.182968, 30.377232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605616, 44.566364, 31.007620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907703, 44.355267, 30.852121>,  <26.088957, 44.228607, 30.758821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907703, 44.355267, 30.852121>,  <25.605616, 44.566364, 31.007620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907703, 44.355267, 30.852121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482257, 0.849047, -0.215749,
		0.443925, -0.024538, 0.895728,
		0.755221, -0.527747, -0.388746,
		26.134270, 44.196941, 30.735497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328276, 44.584896, 31.352295>,  <25.605616, 44.566364, 31.007620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328276, 44.584896, 31.352295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381296, 44.512096, 30.962564>,  <26.413109, 44.468418, 30.728727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381296, 44.512096, 30.962564>,  <26.328276, 44.584896, 31.352295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381296, 44.512096, 30.962564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191283, 0.969216, -0.155020,
		0.972543, -0.165823, 0.163285,
		0.132552, -0.181998, -0.974324,
		26.421062, 44.457497, 30.670267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891722, 44.889004, 31.159332>,  <26.328276, 44.584896, 31.352295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891722, 44.889004, 31.159332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647196, 44.866543, 30.843576>,  <26.500481, 44.853065, 30.654123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647196, 44.866543, 30.843576>,  <26.891722, 44.889004, 31.159332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647196, 44.866543, 30.843576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342332, 0.880563, -0.327747,
		0.713513, -0.470591, -0.519080,
		-0.611317, -0.056154, -0.789391,
		26.463800, 44.849697, 30.606758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299282, 45.002445, 30.542263>,  <26.891722, 44.889004, 31.159332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299282, 45.002445, 30.542263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910179, 45.088703, 30.508217>,  <26.676718, 45.140457, 30.487789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910179, 45.088703, 30.508217>,  <27.299282, 45.002445, 30.542263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910179, 45.088703, 30.508217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229660, 0.946485, -0.226767,
		0.031661, -0.240137, -0.970223,
		-0.972756, 0.215641, -0.085116,
		26.618353, 45.153397, 30.482681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689171, 44.354969, 30.871061>,  <27.299282, 45.002445, 30.542263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689171, 44.354969, 30.871061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745916, 44.524632, 31.228825>,  <27.779964, 44.626431, 31.443481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745916, 44.524632, 31.228825>,  <27.689171, 44.354969, 30.871061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745916, 44.524632, 31.228825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190803, -0.874883, 0.445166,
		0.971323, -0.233809, -0.043184,
		0.141865, 0.424161, 0.894406,
		27.788477, 44.651878, 31.497147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217049, 43.967506, 31.188231>,  <27.689171, 44.354969, 30.871061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217049, 43.967506, 31.188231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971661, 44.141243, 31.452051>,  <27.824429, 44.245483, 31.610344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971661, 44.141243, 31.452051>,  <28.217049, 43.967506, 31.188231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971661, 44.141243, 31.452051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042193, -0.852005, 0.521830,
		0.788591, 0.292298, 0.541005,
		-0.613469, 0.434337, 0.659551,
		27.787621, 44.271545, 31.649916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634979, 43.999680, 31.807240>,  <28.217049, 43.967506, 31.188231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634979, 43.999680, 31.807240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257006, 43.939003, 31.923235>,  <28.030222, 43.902596, 31.992832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257006, 43.939003, 31.923235>,  <28.634979, 43.999680, 31.807240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257006, 43.939003, 31.923235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317431, -0.640433, 0.699345,
		0.079635, 0.752884, 0.653317,
		-0.944932, -0.151691, 0.289989,
		27.973526, 43.893497, 32.010231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558416, 44.227573, 32.488338>,  <28.634979, 43.999680, 31.807240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558416, 44.227573, 32.488338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259682, 43.964314, 32.450230>,  <28.080441, 43.806358, 32.427364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259682, 43.964314, 32.450230>,  <28.558416, 44.227573, 32.488338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259682, 43.964314, 32.450230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324262, -0.485484, 0.811886,
		-0.580592, 0.575455, 0.575990,
		-0.746838, -0.658147, -0.095270,
		28.035631, 43.766869, 32.421650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456144, 43.960312, 33.153660>,  <28.558416, 44.227573, 32.488338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456144, 43.960312, 33.153660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267262, 43.698006, 32.918037>,  <28.153931, 43.540623, 32.776665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267262, 43.698006, 32.918037>,  <28.456144, 43.960312, 33.153660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267262, 43.698006, 32.918037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298659, -0.747752, 0.593017,
		-0.829350, 0.104100, 0.548945,
		-0.472208, -0.655766, -0.589058,
		28.125599, 43.501274, 32.741322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303007, 43.510082, 33.605995>,  <28.456144, 43.960312, 33.153660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303007, 43.510082, 33.605995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232203, 43.283440, 33.284096>,  <28.189720, 43.147453, 33.090958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232203, 43.283440, 33.284096>,  <28.303007, 43.510082, 33.605995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232203, 43.283440, 33.284096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358449, -0.798618, 0.483449,
		-0.916614, -0.202886, 0.344464,
		-0.177010, -0.566609, -0.804749,
		28.179100, 43.113457, 33.042671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860374, 42.898224, 33.855515>,  <28.303007, 43.510082, 33.605995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860374, 42.898224, 33.855515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026379, 42.789207, 33.508301>,  <28.125982, 42.723797, 33.299973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026379, 42.789207, 33.508301>,  <27.860374, 42.898224, 33.855515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026379, 42.789207, 33.508301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310500, -0.854371, 0.416700,
		-0.855176, -0.442472, -0.269985,
		0.415046, -0.272522, -0.868026,
		28.150883, 42.707447, 33.247890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727047, 42.203068, 33.740036>,  <27.860374, 42.898224, 33.855515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727047, 42.203068, 33.740036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054817, 42.243160, 33.514294>,  <28.251478, 42.267216, 33.378849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054817, 42.243160, 33.514294>,  <27.727047, 42.203068, 33.740036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054817, 42.243160, 33.514294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296846, -0.916479, 0.268234,
		-0.490334, -0.387323, -0.780739,
		0.819424, 0.100235, -0.564356,
		28.300644, 42.273232, 33.344986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714577, 41.684414, 33.303661>,  <27.727047, 42.203068, 33.740036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714577, 41.684414, 33.303661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098579, 41.795147, 33.286949>,  <28.328981, 41.861588, 33.276920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098579, 41.795147, 33.286949>,  <27.714577, 41.684414, 33.303661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098579, 41.795147, 33.286949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278629, -0.930123, 0.239241,
		0.027371, -0.241315, -0.970061,
		0.960009, 0.276836, -0.041779,
		28.386581, 41.878197, 33.274414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083998, 41.105251, 33.005939>,  <27.714577, 41.684414, 33.303661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083998, 41.105251, 33.005939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374485, 41.308067, 33.191631>,  <28.548779, 41.429756, 33.303047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374485, 41.308067, 33.191631>,  <28.083998, 41.105251, 33.005939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374485, 41.308067, 33.191631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369264, -0.857306, 0.358707,
		0.579869, -0.089076, -0.809825,
		0.726220, 0.507043, 0.464233,
		28.592352, 41.460178, 33.330902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678682, 40.725670, 32.840782>,  <28.083998, 41.105251, 33.005939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678682, 40.725670, 32.840782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742256, 40.956051, 33.161537>,  <28.780399, 41.094280, 33.353989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742256, 40.956051, 33.161537>,  <28.678682, 40.725670, 32.840782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742256, 40.956051, 33.161537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179475, -0.815529, 0.550182,
		0.970840, 0.056476, -0.232983,
		0.158933, 0.575953, 0.801884,
		28.789936, 41.128838, 33.402103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300714, 40.517658, 33.094288>,  <28.678682, 40.725670, 32.840782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300714, 40.517658, 33.094288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120243, 40.695160, 33.404003>,  <29.011959, 40.801662, 33.589832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120243, 40.695160, 33.404003>,  <29.300714, 40.517658, 33.094288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120243, 40.695160, 33.404003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230776, -0.780085, 0.581558,
		0.862078, 0.441073, 0.249551,
		-0.451180, 0.443758, 0.774284,
		28.984888, 40.828289, 33.636288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638449, 40.195492, 33.577595>,  <29.300714, 40.517658, 33.094288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638449, 40.195492, 33.577595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336597, 40.361832, 33.780617>,  <29.155487, 40.461636, 33.902428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336597, 40.361832, 33.780617>,  <29.638449, 40.195492, 33.577595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336597, 40.361832, 33.780617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020233, -0.787907, 0.615461,
		0.655840, 0.454175, 0.602991,
		-0.754628, 0.415845, 0.507552,
		29.110209, 40.486584, 33.932884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819458, 40.278740, 34.262489>,  <29.638449, 40.195492, 33.577595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819458, 40.278740, 34.262489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421612, 40.245914, 34.237183>,  <29.182903, 40.226219, 34.222000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421612, 40.245914, 34.237183>,  <29.819458, 40.278740, 34.262489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421612, 40.245914, 34.237183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026569, -0.792116, 0.609792,
		-0.100155, 0.604829, 0.790033,
		-0.994617, -0.082064, -0.063264,
		29.123226, 40.221294, 34.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527048, 40.228981, 34.991322>,  <29.819458, 40.278740, 34.262489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527048, 40.228981, 34.991322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265312, 40.096619, 34.719337>,  <29.108271, 40.017200, 34.556149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265312, 40.096619, 34.719337>,  <29.527048, 40.228981, 34.991322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265312, 40.096619, 34.719337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107205, -0.849501, 0.516580,
		-0.748562, 0.410914, 0.520389,
		-0.654341, -0.330904, -0.679956,
		29.069010, 39.997349, 34.515350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954151, 39.970810, 35.403069>,  <29.527048, 40.228981, 34.991322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954151, 39.970810, 35.403069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950041, 39.781670, 35.050636>,  <28.947575, 39.668186, 34.839176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950041, 39.781670, 35.050636>,  <28.954151, 39.970810, 35.403069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950041, 39.781670, 35.050636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115359, -0.874686, 0.470761,
		-0.993271, 0.106477, -0.045560,
		-0.010274, -0.472849, -0.881084,
		28.946959, 39.639816, 34.786312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619652, 39.462299, 35.649815>,  <28.954151, 39.970810, 35.403069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619652, 39.462299, 35.649815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699421, 39.337589, 35.278217>,  <28.747284, 39.262764, 35.055260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699421, 39.337589, 35.278217>,  <28.619652, 39.462299, 35.649815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699421, 39.337589, 35.278217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287355, -0.924963, 0.248738,
		-0.936834, 0.217346, -0.274051,
		0.199425, -0.311776, -0.928992,
		28.759249, 39.244057, 34.999519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054583, 39.132217, 35.418739>,  <28.619652, 39.462299, 35.649815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054583, 39.132217, 35.418739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331919, 38.963718, 35.184875>,  <28.498320, 38.862617, 35.044556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331919, 38.963718, 35.184875>,  <28.054583, 39.132217, 35.418739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331919, 38.963718, 35.184875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352134, -0.905931, 0.235139,
		-0.628716, 0.042848, -0.776454,
		0.693339, -0.421251, -0.584662,
		28.539921, 38.837341, 35.009476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710800, 38.528118, 35.119293>,  <28.054583, 39.132217, 35.418739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710800, 38.528118, 35.119293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104500, 38.467873, 35.082256>,  <28.340719, 38.431725, 35.060036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104500, 38.467873, 35.082256>,  <27.710800, 38.528118, 35.119293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104500, 38.467873, 35.082256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116295, -0.945994, 0.302607,
		-0.133166, -0.287072, -0.948608,
		0.984247, -0.150615, -0.092589,
		28.399775, 38.422688, 35.054478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769348, 37.905708, 34.644238>,  <27.710800, 38.528118, 35.119293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769348, 37.905708, 34.644238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098986, 37.943111, 34.867710>,  <28.296768, 37.965553, 35.001793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098986, 37.943111, 34.867710>,  <27.769348, 37.905708, 34.644238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098986, 37.943111, 34.867710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006893, -0.984552, 0.174956,
		0.566412, -0.148031, -0.810718,
		0.824093, 0.093509, 0.558683,
		28.346214, 37.971165, 35.035316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216295, 37.454338, 34.392986>,  <27.769348, 37.905708, 34.644238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216295, 37.454338, 34.392986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323835, 37.534828, 34.769756>,  <28.388359, 37.583122, 34.995819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323835, 37.534828, 34.769756>,  <28.216295, 37.454338, 34.392986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323835, 37.534828, 34.769756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091465, -0.978848, 0.183007,
		0.958829, 0.036952, -0.281570,
		0.268851, 0.201226, 0.941927,
		28.404491, 37.595196, 35.052334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803038, 36.981522, 34.469383>,  <28.216295, 37.454338, 34.392986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803038, 36.981522, 34.469383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693956, 37.093643, 34.837528>,  <28.628508, 37.160915, 35.058414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693956, 37.093643, 34.837528>,  <28.803038, 36.981522, 34.469383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693956, 37.093643, 34.837528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146663, -0.933326, 0.327707,
		0.950854, 0.224350, 0.213411,
		-0.272703, 0.280302, 0.920361,
		28.612144, 37.177734, 35.113636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366156, 36.855560, 34.963627>,  <28.803038, 36.981522, 34.469383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366156, 36.855560, 34.963627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025757, 36.858044, 35.173679>,  <28.821518, 36.859535, 35.299709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025757, 36.858044, 35.173679>,  <29.366156, 36.855560, 34.963627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025757, 36.858044, 35.173679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166439, -0.945195, 0.280899,
		0.498096, 0.326447, 0.803326,
		-0.850999, 0.006210, 0.525131,
		28.770456, 36.859905, 35.331219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535515, 36.676937, 35.646992>,  <29.366156, 36.855560, 34.963627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535515, 36.676937, 35.646992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149530, 36.588448, 35.590553>,  <28.917940, 36.535355, 35.556690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149530, 36.588448, 35.590553>,  <29.535515, 36.676937, 35.646992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149530, 36.588448, 35.590553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133205, -0.876300, 0.462985,
		-0.226066, 0.427969, 0.875064,
		-0.964961, -0.221228, -0.141094,
		28.860043, 36.522079, 35.548225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116585, 36.591526, 36.271782>,  <29.535515, 36.676937, 35.646992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116585, 36.591526, 36.271782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009493, 36.373116, 35.954247>,  <28.945238, 36.242069, 35.763725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009493, 36.373116, 35.954247>,  <29.116585, 36.591526, 36.271782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009493, 36.373116, 35.954247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429833, -0.805069, 0.408786,
		-0.862301, -0.231773, 0.450242,
		-0.267730, -0.546026, -0.793836,
		28.929174, 36.209309, 35.716095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612734, 35.942928, 36.405579>,  <29.116585, 36.591526, 36.271782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612734, 35.942928, 36.405579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855373, 35.890865, 36.091866>,  <29.000957, 35.859627, 35.903637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855373, 35.890865, 36.091866>,  <28.612734, 35.942928, 36.405579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855373, 35.890865, 36.091866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571902, -0.613815, 0.544204,
		-0.552235, -0.778646, -0.297904,
		0.606601, -0.130157, -0.784280,
		29.037354, 35.851818, 35.856583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733978, 35.252216, 36.361889>,  <28.612734, 35.942928, 36.405579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733978, 35.252216, 36.361889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035177, 35.460506, 36.200970>,  <29.215897, 35.585480, 36.104420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035177, 35.460506, 36.200970>,  <28.733978, 35.252216, 36.361889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035177, 35.460506, 36.200970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653666, -0.662174, 0.366395,
		-0.075599, -0.538861, -0.838996,
		0.752997, 0.520724, -0.402295,
		29.261076, 35.616722, 36.080280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154741, 34.755344, 35.815056>,  <28.733978, 35.252216, 36.361889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154741, 34.755344, 35.815056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348055, 35.031410, 36.030502>,  <29.464043, 35.197048, 36.159771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348055, 35.031410, 36.030502>,  <29.154741, 34.755344, 35.815056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348055, 35.031410, 36.030502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624610, -0.702917, 0.340249,
		0.613433, 0.171992, -0.770791,
		0.483282, 0.690164, 0.538620,
		29.493040, 35.238461, 36.192089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866348, 34.832699, 35.620331>,  <29.154741, 34.755344, 35.815056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866348, 34.832699, 35.620331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814211, 34.903301, 36.010582>,  <29.782928, 34.945663, 36.244732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814211, 34.903301, 36.010582>,  <29.866348, 34.832699, 35.620331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814211, 34.903301, 36.010582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693333, -0.687185, 0.216946,
		0.708731, 0.704715, -0.032805,
		-0.130341, 0.176501, 0.975632,
		29.775108, 34.956253, 36.303272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498083, 34.984394, 36.045254>,  <29.866348, 34.832699, 35.620331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498083, 34.984394, 36.045254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213600, 34.769272, 36.226337>,  <30.042910, 34.640198, 36.334988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213600, 34.769272, 36.226337>,  <30.498083, 34.984394, 36.045254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213600, 34.769272, 36.226337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671641, -0.709988, 0.211697,
		0.207565, 0.454617, 0.866164,
		-0.711207, -0.537810, 0.452708,
		30.000238, 34.607929, 36.362148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812937, 34.718697, 36.591534>,  <30.498083, 34.984394, 36.045254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812937, 34.718697, 36.591534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480131, 34.498711, 36.562428>,  <30.280449, 34.366718, 36.544964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480131, 34.498711, 36.562428>,  <30.812937, 34.718697, 36.591534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480131, 34.498711, 36.562428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485381, -0.785193, 0.384547,
		-0.268624, 0.284628, 0.920233,
		-0.832013, -0.549962, -0.072769,
		30.230528, 34.333721, 36.540596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507479, 34.416340, 37.308372>,  <30.812937, 34.718697, 36.591534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507479, 34.416340, 37.308372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447351, 34.209564, 36.971287>,  <30.411276, 34.085499, 36.769035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447351, 34.209564, 36.971287>,  <30.507479, 34.416340, 37.308372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447351, 34.209564, 36.971287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600855, -0.724679, 0.337360,
		-0.785097, -0.455641, 0.419541,
		-0.150318, -0.516944, -0.842718,
		30.402256, 34.054482, 36.718472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604908, 35.071274, 37.498650>,  <30.507479, 34.416340, 37.308372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604908, 35.071274, 37.498650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976236, 35.212467, 37.451958>,  <31.199034, 35.297184, 37.423943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976236, 35.212467, 37.451958>,  <30.604908, 35.071274, 37.498650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976236, 35.212467, 37.451958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185073, -0.166441, 0.968527,
		0.322448, -0.920705, -0.219838,
		0.928318, 0.352986, -0.116729,
		31.254732, 35.318363, 37.416939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947598, 34.728161, 38.075550>,  <30.604908, 35.071274, 37.498650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947598, 34.728161, 38.075550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200962, 35.023949, 37.984356>,  <31.352980, 35.201420, 37.929638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200962, 35.023949, 37.984356>,  <30.947598, 34.728161, 38.075550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200962, 35.023949, 37.984356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221398, 0.109130, 0.969058,
		0.741468, -0.664287, -0.094593,
		0.633410, 0.739468, -0.227989,
		31.390985, 35.245789, 37.915958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621008, 34.563423, 38.366749>,  <30.947598, 34.728161, 38.075550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621008, 34.563423, 38.366749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588762, 34.959564, 38.321678>,  <31.569414, 35.197250, 38.294636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588762, 34.959564, 38.321678>,  <31.621008, 34.563423, 38.366749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588762, 34.959564, 38.321678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281104, 0.131050, 0.950687,
		0.956285, 0.044965, -0.288958,
		-0.080615, 0.990356, -0.112681,
		31.564577, 35.256672, 38.287872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910185, 34.762413, 38.933792>,  <31.621008, 34.563423, 38.366749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910185, 34.762413, 38.933792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757727, 35.109444, 38.806019>,  <31.666252, 35.317661, 38.729355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757727, 35.109444, 38.806019>,  <31.910185, 34.762413, 38.933792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757727, 35.109444, 38.806019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044518, 0.327892, 0.943666,
		0.923443, 0.373895, -0.086352,
		-0.381146, 0.867577, -0.319434,
		31.643383, 35.369717, 38.710190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325039, 35.378330, 39.197880>,  <31.910185, 34.762413, 38.933792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325039, 35.378330, 39.197880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953646, 35.507332, 39.124226>,  <31.730810, 35.584732, 39.080032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953646, 35.507332, 39.124226>,  <32.325039, 35.378330, 39.197880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953646, 35.507332, 39.124226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083820, 0.301057, 0.949915,
		0.361786, 0.897417, -0.252495,
		-0.928485, 0.322502, -0.184140,
		31.675100, 35.604084, 39.068985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294281, 35.876415, 39.557529>,  <32.325039, 35.378330, 39.197880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294281, 35.876415, 39.557529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902611, 35.807453, 39.514641>,  <31.667608, 35.766075, 39.488907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902611, 35.807453, 39.514641>,  <32.294281, 35.876415, 39.557529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902611, 35.807453, 39.514641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151398, 0.268165, 0.951402,
		-0.135269, 0.947821, -0.288681,
		-0.979174, -0.172401, -0.107224,
		31.608858, 35.755733, 39.482475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903952, 36.537796, 39.763821>,  <32.294281, 35.876415, 39.557529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903952, 36.537796, 39.763821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665720, 36.220257, 39.812954>,  <31.522781, 36.029732, 39.842434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665720, 36.220257, 39.812954>,  <31.903952, 36.537796, 39.763821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665720, 36.220257, 39.812954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207271, 0.299596, 0.931279,
		-0.776097, 0.529190, -0.342975,
		-0.595577, -0.793852, 0.122830,
		31.487047, 35.982101, 39.849804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284174, 36.738705, 40.232128>,  <31.903952, 36.537796, 39.763821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284174, 36.738705, 40.232128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292051, 36.339027, 40.246136>,  <31.296778, 36.099220, 40.254539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292051, 36.339027, 40.246136>,  <31.284174, 36.738705, 40.232128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292051, 36.339027, 40.246136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262985, 0.028611, 0.964376,
		-0.964599, -0.028202, -0.262209,
		0.019695, -0.999193, 0.035014,
		31.297960, 36.039268, 40.256641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848331, 36.718918, 40.787823>,  <31.284174, 36.738705, 40.232128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848331, 36.718918, 40.787823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011620, 36.355377, 40.753536>,  <31.109592, 36.137253, 40.732964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011620, 36.355377, 40.753536>,  <30.848331, 36.718918, 40.787823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011620, 36.355377, 40.753536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254744, -0.203575, 0.945337,
		-0.876619, -0.364072, -0.314628,
		0.408221, -0.908850, -0.085713,
		31.134087, 36.082722, 40.727821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431896, 36.305424, 41.092937>,  <30.848331, 36.718918, 40.787823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431896, 36.305424, 41.092937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778250, 36.105717, 41.105484>,  <30.986061, 35.985893, 41.113010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778250, 36.105717, 41.105484>,  <30.431896, 36.305424, 41.092937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778250, 36.105717, 41.105484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149181, -0.197866, 0.968810,
		-0.477487, -0.843554, -0.245810,
		0.865882, -0.499264, 0.031364,
		31.038013, 35.955936, 41.114895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353262, 35.724693, 41.413433>,  <30.431896, 36.305424, 41.092937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353262, 35.724693, 41.413433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750311, 35.755875, 41.450573>,  <30.988541, 35.774582, 41.472858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750311, 35.755875, 41.450573>,  <30.353262, 35.724693, 41.413433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750311, 35.755875, 41.450573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066449, -0.290794, 0.954475,
		0.101404, -0.953605, -0.283469,
		0.992623, 0.077952, 0.092853,
		31.048098, 35.779259, 41.478428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552500, 35.117962, 41.701454>,  <30.353262, 35.724693, 41.413433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552500, 35.117962, 41.701454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820545, 35.403011, 41.784508>,  <30.981373, 35.574039, 41.834339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820545, 35.403011, 41.784508>,  <30.552500, 35.117962, 41.701454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820545, 35.403011, 41.784508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121963, -0.170216, 0.977830,
		0.732168, -0.680582, -0.027150,
		0.670115, 0.712625, 0.207633,
		31.021580, 35.616798, 41.846798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098843, 34.799706, 42.040977>,  <30.552500, 35.117962, 41.701454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098843, 34.799706, 42.040977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067663, 35.184498, 42.145683>,  <31.048956, 35.415371, 42.208508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067663, 35.184498, 42.145683>,  <31.098843, 34.799706, 42.040977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067663, 35.184498, 42.145683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074203, -0.256241, 0.963761,
		0.994192, 0.094550, -0.051408,
		-0.077950, 0.961978, 0.261768,
		31.044277, 35.473091, 42.224213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252937, 34.781277, 42.842827>,  <31.098843, 34.799706, 42.040977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252937, 34.781277, 42.842827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186680, 35.168926, 42.769768>,  <31.146925, 35.401516, 42.725933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186680, 35.168926, 42.769768>,  <31.252937, 34.781277, 42.842827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186680, 35.168926, 42.769768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002997, 0.184716, 0.982787,
		0.986181, 0.163342, -0.027693,
		-0.165646, 0.969123, -0.182652,
		31.136986, 35.459663, 42.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660961, 35.231640, 43.420330>,  <31.252937, 34.781277, 42.842827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660961, 35.231640, 43.420330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345055, 35.434479, 43.282272>,  <31.155512, 35.556183, 43.199440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345055, 35.434479, 43.282272>,  <31.660961, 35.231640, 43.420330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345055, 35.434479, 43.282272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360906, 0.070833, 0.929909,
		0.496003, 0.858972, 0.127074,
		-0.789765, 0.507099, -0.345141,
		31.108126, 35.586609, 43.178730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733282, 35.870960, 43.744160>,  <31.660961, 35.231640, 43.420330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733282, 35.870960, 43.744160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359589, 35.801861, 43.619347>,  <31.135372, 35.760403, 43.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359589, 35.801861, 43.619347>,  <31.733282, 35.870960, 43.744160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359589, 35.801861, 43.619347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325810, 0.057418, 0.943690,
		-0.145100, 0.983292, -0.109924,
		-0.934234, -0.172744, -0.312035,
		31.079319, 35.750038, 43.525738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299988, 36.344334, 43.811150>,  <31.733282, 35.870960, 43.744160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299988, 36.344334, 43.811150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043659, 36.039570, 43.848770>,  <30.889862, 35.856712, 43.871342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043659, 36.039570, 43.848770>,  <31.299988, 36.344334, 43.811150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043659, 36.039570, 43.848770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052108, 0.165399, 0.984849,
		-0.765920, 0.626211, -0.145693,
		-0.640821, -0.761907, 0.094052,
		30.851414, 35.810997, 43.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877316, 36.643574, 44.282810>,  <31.299988, 36.344334, 43.811150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877316, 36.643574, 44.282810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756006, 36.262413, 44.284069>,  <30.683222, 36.033718, 44.284824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756006, 36.262413, 44.284069>,  <30.877316, 36.643574, 44.282810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756006, 36.262413, 44.284069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189177, 0.063446, 0.979891,
		-0.933937, 0.296577, -0.199508,
		-0.303272, -0.952899, 0.003149,
		30.665026, 35.976543, 44.285015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441223, 36.689560, 44.874298>,  <30.877316, 36.643574, 44.282810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441223, 36.689560, 44.874298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519438, 36.301857, 44.814556>,  <30.566366, 36.069237, 44.778713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519438, 36.301857, 44.814556>,  <30.441223, 36.689560, 44.874298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519438, 36.301857, 44.814556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165676, -0.182749, 0.969100,
		-0.966601, -0.164749, -0.196317,
		0.195535, -0.969258, -0.149351,
		30.578098, 36.011078, 44.769753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815142, 36.294624, 45.088188>,  <30.441223, 36.689560, 44.874298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815142, 36.294624, 45.088188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148516, 36.074497, 45.108315>,  <30.348541, 35.942421, 45.120388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148516, 36.074497, 45.108315>,  <29.815142, 36.294624, 45.088188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148516, 36.074497, 45.108315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146200, -0.131777, 0.980439,
		-0.532926, -0.824489, -0.190284,
		0.833436, -0.550321, 0.050313,
		30.398546, 35.909401, 45.123409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595943, 35.765285, 45.526157>,  <29.815142, 36.294624, 45.088188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595943, 35.765285, 45.526157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995142, 35.780769, 45.546181>,  <30.234661, 35.790058, 45.558193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995142, 35.780769, 45.546181>,  <29.595943, 35.765285, 45.526157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995142, 35.780769, 45.546181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047057, -0.074832, 0.996085,
		0.042303, -0.996445, -0.072861,
		0.997996, 0.038709, 0.050055,
		30.294540, 35.792381, 45.561195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682926, 35.414074, 46.260189>,  <29.595943, 35.765285, 45.526157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682926, 35.414074, 46.260189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037905, 35.563057, 46.151588>,  <30.250893, 35.652447, 46.086430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037905, 35.563057, 46.151588>,  <29.682926, 35.414074, 46.260189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037905, 35.563057, 46.151588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207623, 0.202858, 0.956944,
		0.411499, -0.905606, 0.102694,
		0.887446, 0.372459, -0.271501,
		30.304138, 35.674793, 46.070137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297419, 34.939053, 46.596134>,  <29.682926, 35.414074, 46.260189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297419, 34.939053, 46.596134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437185, 35.306564, 46.522640>,  <30.521046, 35.527069, 46.478546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437185, 35.306564, 46.522640>,  <30.297419, 34.939053, 46.596134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437185, 35.306564, 46.522640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325259, 0.064955, 0.943392,
		0.878700, -0.389398, -0.276144,
		0.349418, 0.918776, -0.183731,
		30.542011, 35.582199, 46.467522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021006, 34.879375, 46.728935>,  <30.297419, 34.939053, 46.596134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021006, 34.879375, 46.728935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900249, 35.260551, 46.740013>,  <30.827795, 35.489258, 46.746658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900249, 35.260551, 46.740013>,  <31.021006, 34.879375, 46.728935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900249, 35.260551, 46.740013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376211, 0.092390, 0.921916,
		0.875972, 0.288736, -0.386399,
		-0.301890, 0.952941, 0.027695,
		30.809683, 35.546432, 46.748322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592997, 35.189236, 46.995476>,  <31.021006, 34.879375, 46.728935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592997, 35.189236, 46.995476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290812, 35.446846, 47.043648>,  <31.109501, 35.601414, 47.072552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290812, 35.446846, 47.043648>,  <31.592997, 35.189236, 46.995476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290812, 35.446846, 47.043648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237452, 0.097810, 0.966463,
		0.610652, 0.758722, -0.226818,
		-0.755461, 0.644030, 0.120432,
		31.064173, 35.640057, 47.079777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836647, 35.672211, 47.443989>,  <31.592997, 35.189236, 46.995476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836647, 35.672211, 47.443989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437387, 35.682468, 47.466061>,  <31.197832, 35.688622, 47.479301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437387, 35.682468, 47.466061>,  <31.836647, 35.672211, 47.443989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437387, 35.682468, 47.466061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056461, 0.052338, 0.997032,
		0.022681, 0.998300, -0.053689,
		-0.998147, 0.025644, 0.055178,
		31.137943, 35.690163, 47.482613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538620, 36.286198, 47.732384>,  <31.836647, 35.672211, 47.443989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538620, 36.286198, 47.732384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246740, 36.015705, 47.772892>,  <31.071613, 35.853409, 47.797195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246740, 36.015705, 47.772892>,  <31.538620, 36.286198, 47.732384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246740, 36.015705, 47.772892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021098, 0.170297, 0.985167,
		-0.683444, 0.716738, -0.138533,
		-0.729698, -0.676229, 0.101267,
		31.027830, 35.812836, 47.803272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030659, 36.672657, 48.105156>,  <31.538620, 36.286198, 47.732384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030659, 36.672657, 48.105156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885550, 36.302273, 48.147110>,  <30.798485, 36.080044, 48.172283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885550, 36.302273, 48.147110>,  <31.030659, 36.672657, 48.105156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885550, 36.302273, 48.147110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129618, 0.161601, 0.978307,
		-0.922820, 0.341305, -0.178645,
		-0.362771, -0.925957, 0.104889,
		30.776718, 36.024487, 48.178577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490807, 36.591324, 48.566219>,  <31.030659, 36.672657, 48.105156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490807, 36.591324, 48.566219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587795, 36.204048, 48.590931>,  <30.645988, 35.971684, 48.605759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587795, 36.204048, 48.590931>,  <30.490807, 36.591324, 48.566219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587795, 36.204048, 48.590931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134000, 0.029649, 0.990538,
		-0.960860, -0.248456, -0.122549,
		0.242471, -0.968189, 0.061782,
		30.660536, 35.913589, 48.609467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054276, 36.313732, 49.116646>,  <30.490807, 36.591324, 48.566219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054276, 36.313732, 49.116646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319881, 36.019199, 49.064644>,  <30.479246, 35.842480, 49.033443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319881, 36.019199, 49.064644>,  <30.054276, 36.313732, 49.116646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319881, 36.019199, 49.064644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028024, -0.149242, 0.988403,
		-0.747192, -0.659960, -0.078464,
		0.664017, -0.736328, -0.130008,
		30.519087, 35.798302, 49.025642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774591, 35.667088, 49.357353>,  <30.054276, 36.313732, 49.116646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774591, 35.667088, 49.357353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171415, 35.628071, 49.389118>,  <30.409510, 35.604660, 49.408176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171415, 35.628071, 49.389118>,  <29.774591, 35.667088, 49.357353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171415, 35.628071, 49.389118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087589, -0.082593, 0.992727,
		-0.090321, -0.991794, -0.090484,
		0.992054, -0.097589, 0.079411,
		30.469032, 35.598808, 49.412941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901630, 35.192429, 49.996727>,  <29.774591, 35.667088, 49.357353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901630, 35.192429, 49.996727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266163, 35.341545, 49.926868>,  <30.484882, 35.431015, 49.884953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266163, 35.341545, 49.926868>,  <29.901630, 35.192429, 49.996727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266163, 35.341545, 49.926868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230136, -0.109582, 0.966969,
		0.341340, -0.921422, -0.185659,
		0.911331, 0.372792, -0.174648,
		30.539562, 35.453384, 49.874474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372961, 34.715405, 50.294540>,  <29.901630, 35.192429, 49.996727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372961, 34.715405, 50.294540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543098, 35.076382, 50.267170>,  <30.645182, 35.292969, 50.250748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543098, 35.076382, 50.267170>,  <30.372961, 34.715405, 50.294540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543098, 35.076382, 50.267170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239219, -0.039190, 0.970175,
		0.872845, -0.429026, -0.232550,
		0.425343, 0.902442, -0.068424,
		30.670702, 35.347115, 50.246643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965652, 34.592567, 50.591900>,  <30.372961, 34.715405, 50.294540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965652, 34.592567, 50.591900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907627, 34.988331, 50.593655>,  <30.872812, 35.225788, 50.594707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907627, 34.988331, 50.593655>,  <30.965652, 34.592567, 50.591900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907627, 34.988331, 50.593655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316506, 0.042207, 0.947651,
		0.937433, 0.138858, -0.319277,
		-0.145064, 0.989413, 0.004383,
		30.864107, 35.285156, 50.594971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540207, 34.861412, 50.844109>,  <30.965652, 34.592567, 50.591900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540207, 34.861412, 50.844109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281509, 35.161224, 50.900562>,  <31.126291, 35.341114, 50.934433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281509, 35.161224, 50.900562>,  <31.540207, 34.861412, 50.844109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281509, 35.161224, 50.900562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267522, 0.049645, 0.962272,
		0.714250, 0.660100, -0.232625,
		-0.646744, 0.749535, 0.141132,
		31.087486, 35.386086, 50.942902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870874, 35.280720, 51.385754>,  <31.540207, 34.861412, 50.844109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870874, 35.280720, 51.385754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480255, 35.366413, 51.394329>,  <31.245884, 35.417828, 51.399475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480255, 35.366413, 51.394329>,  <31.870874, 35.280720, 51.385754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480255, 35.366413, 51.394329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046571, 0.112956, 0.992508,
		0.210208, 0.970229, -0.120284,
		-0.976547, 0.214234, 0.021440,
		31.187290, 35.430683, 51.400761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763945, 35.876003, 51.771469>,  <31.870874, 35.280720, 51.385754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763945, 35.876003, 51.771469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424458, 35.665165, 51.788685>,  <31.220766, 35.538662, 51.799015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424458, 35.665165, 51.788685>,  <31.763945, 35.876003, 51.771469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424458, 35.665165, 51.788685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012225, 0.061799, 0.998014,
		-0.528704, 0.847558, -0.046006,
		-0.848718, -0.527092, 0.043035,
		31.169842, 35.507038, 51.801594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311483, 36.139599, 52.364407>,  <31.763945, 35.876003, 51.771469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311483, 36.139599, 52.364407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158907, 35.774918, 52.303352>,  <31.067360, 35.556110, 52.266720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158907, 35.774918, 52.303352>,  <31.311483, 36.139599, 52.364407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158907, 35.774918, 52.303352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170539, -0.092876, 0.980964,
		-0.908525, 0.400212, -0.120054,
		-0.381443, -0.911704, -0.152632,
		31.044474, 35.501408, 52.257565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702011, 36.106079, 52.795761>,  <31.311483, 36.139599, 52.364407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702011, 36.106079, 52.795761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780516, 35.719208, 52.731201>,  <30.827620, 35.487083, 52.692467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780516, 35.719208, 52.731201>,  <30.702011, 36.106079, 52.795761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780516, 35.719208, 52.731201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346026, -0.222322, 0.911504,
		-0.917468, -0.123047, -0.378302,
		0.196263, -0.967177, -0.161396,
		30.839396, 35.429054, 52.682781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111399, 35.774342, 53.080521>,  <30.702011, 36.106079, 52.795761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111399, 35.774342, 53.080521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393841, 35.491096, 53.080143>,  <30.563305, 35.321152, 53.079914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393841, 35.491096, 53.080143>,  <30.111399, 35.774342, 53.080521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393841, 35.491096, 53.080143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146275, -0.147170, 0.978235,
		-0.692837, -0.690596, -0.207496,
		0.706103, -0.708109, -0.000948,
		30.605671, 35.278664, 53.079857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841465, 35.093613, 53.442463>,  <30.111399, 35.774342, 53.080521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841465, 35.093613, 53.442463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239037, 35.137104, 53.435688>,  <30.477579, 35.163197, 53.431625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239037, 35.137104, 53.435688>,  <29.841465, 35.093613, 53.442463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239037, 35.137104, 53.435688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044709, -0.258402, 0.965002,
		0.100544, -0.959900, -0.261694,
		0.993927, 0.108725, -0.016935,
		30.537214, 35.169720, 53.430607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164656, 34.390453, 53.463367>,  <29.841465, 35.093613, 53.442463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164656, 34.390453, 53.463367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380615, 34.680637, 53.634113>,  <30.510191, 34.854748, 53.736561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380615, 34.680637, 53.634113>,  <30.164656, 34.390453, 53.463367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380615, 34.680637, 53.634113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165186, -0.405949, 0.898843,
		0.825362, -0.555797, -0.099335,
		0.539899, 0.725462, 0.426865,
		30.542585, 34.898277, 53.762173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736090, 34.123100, 53.806576>,  <30.164656, 34.390453, 53.463367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736090, 34.123100, 53.806576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654934, 34.462467, 54.002140>,  <30.606241, 34.666088, 54.119480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654934, 34.462467, 54.002140>,  <30.736090, 34.123100, 53.806576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654934, 34.462467, 54.002140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132292, -0.518466, 0.844803,
		0.970224, 0.106723, 0.217430,
		-0.202890, 0.848413, 0.488909,
		30.594067, 34.716991, 54.148811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197102, 34.306488, 54.467552>,  <30.736090, 34.123100, 53.806576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197102, 34.306488, 54.467552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824713, 34.449627, 54.496479>,  <30.601278, 34.535511, 54.513836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824713, 34.449627, 54.496479>,  <31.197102, 34.306488, 54.467552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824713, 34.449627, 54.496479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193913, -0.652522, 0.732538,
		0.309330, 0.667950, 0.676873,
		-0.930974, 0.357850, 0.072320,
		30.545420, 34.556980, 54.518173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975826, 34.230755, 54.477036>,  <31.197102, 34.306488, 54.467552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975826, 34.230755, 54.477036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055252, 34.405495, 54.827976>,  <32.102909, 34.510338, 55.038540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055252, 34.405495, 54.827976>,  <31.975826, 34.230755, 54.477036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055252, 34.405495, 54.827976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263508, 0.838415, -0.477099,
		-0.944000, 0.325923, 0.051368,
		0.198565, 0.436845, 0.877347,
		32.114822, 34.536549, 55.091179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711023, 35.035896, 54.594795>,  <31.975826, 34.230755, 54.477036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711023, 35.035896, 54.594795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062805, 34.901043, 54.729198>,  <32.273876, 34.820129, 54.809837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062805, 34.901043, 54.729198>,  <31.711023, 35.035896, 54.594795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062805, 34.901043, 54.729198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475043, 0.665976, -0.575161,
		-0.029864, 0.665444, 0.745850,
		0.879455, -0.337135, 0.336003,
		32.326641, 34.799904, 54.829998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242619, 35.636887, 54.870850>,  <31.711023, 35.035896, 54.594795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242619, 35.636887, 54.870850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372707, 35.326546, 54.654594>,  <32.450760, 35.140343, 54.524841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372707, 35.326546, 54.654594>,  <32.242619, 35.636887, 54.870850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372707, 35.326546, 54.654594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381436, 0.630772, -0.675747,
		0.865294, 0.013554, 0.501081,
		0.325227, -0.775850, -0.540633,
		32.470276, 35.093792, 54.492405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016640, 35.715927, 54.739738>,  <32.242619, 35.636887, 54.870850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016640, 35.715927, 54.739738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860985, 35.488632, 54.449726>,  <32.767593, 35.352253, 54.275719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860985, 35.488632, 54.449726>,  <33.016640, 35.715927, 54.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860985, 35.488632, 54.449726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372097, 0.623041, -0.688014,
		0.842683, -0.537516, -0.031008,
		-0.389138, -0.568240, -0.725034,
		32.744244, 35.318161, 54.232216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577309, 35.664394, 54.260754>,  <33.016640, 35.715927, 54.739738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577309, 35.664394, 54.260754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224010, 35.599613, 54.084732>,  <33.012032, 35.560745, 53.979118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224010, 35.599613, 54.084732>,  <33.577309, 35.664394, 54.260754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224010, 35.599613, 54.084732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338201, 0.430023, -0.837078,
		0.324804, -0.888172, -0.325042,
		-0.883245, -0.161956, -0.440054,
		32.959038, 35.551025, 53.952717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418613, 34.980553, 54.114449>,  <33.577309, 35.664394, 54.260754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418613, 34.980553, 54.114449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320518, 34.592823, 54.120941>,  <33.261662, 34.360184, 54.124836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320518, 34.592823, 54.120941>,  <33.418613, 34.980553, 54.114449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320518, 34.592823, 54.120941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092062, 0.006621, -0.995731,
		0.965082, -0.245686, -0.090862,
		-0.245239, -0.969327, 0.016228,
		33.246948, 34.302025, 54.125809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955185, 34.356392, 53.862778>,  <33.418613, 34.980553, 54.114449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955185, 34.356392, 53.862778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570419, 34.363224, 53.753654>,  <33.339558, 34.367325, 53.688179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570419, 34.363224, 53.753654>,  <33.955185, 34.356392, 53.862778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570419, 34.363224, 53.753654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273313, 0.074788, -0.959013,
		0.004017, -0.997053, -0.076610,
		-0.961917, 0.017087, -0.272808,
		33.281845, 34.368347, 53.671810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894531, 33.877934, 53.304203>,  <33.955185, 34.356392, 53.862778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894531, 33.877934, 53.304203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588573, 34.131348, 53.257626>,  <33.404999, 34.283398, 53.229679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588573, 34.131348, 53.257626>,  <33.894531, 33.877934, 53.304203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588573, 34.131348, 53.257626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265481, 0.145342, -0.953098,
		-0.586899, -0.759938, -0.279364,
		-0.764898, 0.633538, -0.116448,
		33.359104, 34.321407, 53.222691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540997, 33.712471, 52.630634>,  <33.894531, 33.877934, 53.304203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540997, 33.712471, 52.630634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441624, 34.089836, 52.718498>,  <33.382000, 34.316254, 52.771217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441624, 34.089836, 52.718498>,  <33.540997, 33.712471, 52.630634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441624, 34.089836, 52.718498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251426, 0.281803, -0.925944,
		-0.935449, -0.174808, -0.307208,
		-0.248434, 0.943414, 0.219661,
		33.367092, 34.372860, 52.784397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150589, 33.981201, 52.049587>,  <33.540997, 33.712471, 52.630634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150589, 33.981201, 52.049587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307472, 34.293076, 52.244835>,  <33.401604, 34.480202, 52.361984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307472, 34.293076, 52.244835>,  <33.150589, 33.981201, 52.049587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307472, 34.293076, 52.244835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217156, 0.437163, -0.872773,
		-0.893877, 0.448307, 0.002146,
		0.392208, 0.779685, 0.488122,
		33.425137, 34.526981, 52.391270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973598, 34.408360, 51.582829>,  <33.150589, 33.981201, 52.049587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973598, 34.408360, 51.582829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256161, 34.588478, 51.801266>,  <33.425697, 34.696548, 51.932327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256161, 34.588478, 51.801266>,  <32.973598, 34.408360, 51.582829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256161, 34.588478, 51.801266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391382, 0.394346, -0.831451,
		-0.589751, 0.801076, 0.102330,
		0.706409, 0.450299, 0.546093,
		33.468082, 34.723568, 51.965092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008041, 35.104256, 51.385395>,  <32.973598, 34.408360, 51.582829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008041, 35.104256, 51.385395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364250, 35.050907, 51.559372>,  <33.577976, 35.018898, 51.663757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364250, 35.050907, 51.559372>,  <33.008041, 35.104256, 51.385395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364250, 35.050907, 51.559372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452864, 0.351027, -0.819569,
		-0.043370, 0.926818, 0.372998,
		0.890524, -0.133373, 0.434947,
		33.631409, 35.010895, 51.689857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381191, 35.726048, 51.352161>,  <33.008041, 35.104256, 51.385395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381191, 35.726048, 51.352161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664463, 35.448742, 51.405624>,  <33.834427, 35.282360, 51.437702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664463, 35.448742, 51.405624>,  <33.381191, 35.726048, 51.352161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664463, 35.448742, 51.405624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455359, 0.303820, -0.836864,
		0.539559, 0.653515, 0.530843,
		0.708184, -0.693262, 0.133655,
		33.876919, 35.240765, 51.445721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975311, 36.034866, 51.086674>,  <33.381191, 35.726048, 51.352161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975311, 36.034866, 51.086674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067051, 35.645901, 51.103657>,  <34.122093, 35.412521, 51.113846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067051, 35.645901, 51.103657>,  <33.975311, 36.034866, 51.086674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067051, 35.645901, 51.103657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488460, 0.077255, -0.869160,
		0.841907, 0.220077, 0.492706,
		0.229346, -0.972419, 0.042458,
		34.135857, 35.354176, 51.116394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666882, 36.019146, 50.780003>,  <33.975311, 36.034866, 51.086674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666882, 36.019146, 50.780003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528416, 35.645748, 50.742565>,  <34.445335, 35.421711, 50.720100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528416, 35.645748, 50.742565>,  <34.666882, 36.019146, 50.780003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528416, 35.645748, 50.742565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179242, 0.032119, -0.983280,
		0.920890, -0.357158, 0.156202,
		-0.346169, -0.933492, -0.093596,
		34.424564, 35.365700, 50.714485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124695, 35.570248, 50.380589>,  <34.666882, 36.019146, 50.780003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124695, 35.570248, 50.380589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791527, 35.349606, 50.362755>,  <34.591625, 35.217220, 50.352055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791527, 35.349606, 50.362755>,  <35.124695, 35.570248, 50.380589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791527, 35.349606, 50.362755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159861, -0.162700, -0.973639,
		0.529807, -0.818086, 0.223695,
		-0.832916, -0.551601, -0.044580,
		34.541653, 35.184124, 50.349380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226158, 34.808392, 50.019257>,  <35.124695, 35.570248, 50.380589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226158, 34.808392, 50.019257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842075, 34.913319, 49.980900>,  <34.611626, 34.976276, 49.957886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842075, 34.913319, 49.980900>,  <35.226158, 34.808392, 50.019257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842075, 34.913319, 49.980900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079749, -0.071547, -0.994244,
		-0.267674, -0.962324, 0.047780,
		-0.960203, 0.262323, -0.095895,
		34.554016, 34.992016, 49.952129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939209, 34.331192, 49.567322>,  <35.226158, 34.808392, 50.019257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939209, 34.331192, 49.567322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690483, 34.643444, 49.542156>,  <34.541248, 34.830795, 49.527058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690483, 34.643444, 49.542156>,  <34.939209, 34.331192, 49.567322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690483, 34.643444, 49.542156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072583, -0.137435, -0.987848,
		-0.779792, -0.609694, 0.142120,
		-0.621817, 0.780631, -0.062917,
		34.503937, 34.877632, 49.523281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240990, 34.027325, 49.298344>,  <34.939209, 34.331192, 49.567322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240990, 34.027325, 49.298344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262577, 34.417507, 49.212952>,  <34.275528, 34.651615, 49.161716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262577, 34.417507, 49.212952>,  <34.240990, 34.027325, 49.298344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262577, 34.417507, 49.212952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194008, -0.199471, -0.960506,
		-0.979514, 0.093253, 0.178481,
		0.053968, 0.975456, -0.213476,
		34.278767, 34.710144, 49.148911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619705, 34.206005, 48.960716>,  <34.240990, 34.027325, 49.298344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619705, 34.206005, 48.960716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890060, 34.479900, 48.851673>,  <34.052273, 34.644238, 48.786247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890060, 34.479900, 48.851673>,  <33.619705, 34.206005, 48.960716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890060, 34.479900, 48.851673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214766, -0.170839, -0.961608,
		-0.705019, 0.708485, 0.031590,
		0.675888, 0.684736, -0.272604,
		34.092827, 34.685322, 48.769894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359646, 34.575977, 48.370522>,  <33.619705, 34.206005, 48.960716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359646, 34.575977, 48.370522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746410, 34.677418, 48.359474>,  <33.978470, 34.738281, 48.352844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746410, 34.677418, 48.359474>,  <33.359646, 34.575977, 48.370522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746410, 34.677418, 48.359474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055770, -0.315799, -0.947186,
		-0.248933, 0.914306, -0.319493,
		0.966914, 0.253604, -0.027622,
		34.036484, 34.753498, 48.351189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423016, 34.752686, 47.815659>,  <33.359646, 34.575977, 48.370522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423016, 34.752686, 47.815659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812134, 34.712688, 47.899242>,  <34.045605, 34.688690, 47.949390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812134, 34.712688, 47.899242>,  <33.423016, 34.752686, 47.815659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812134, 34.712688, 47.899242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203509, -0.061997, -0.977108,
		0.110657, 0.993055, -0.039961,
		0.972800, -0.099991, 0.208956,
		34.103973, 34.682690, 47.961929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694138, 35.160614, 47.283928>,  <33.423016, 34.752686, 47.815659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694138, 35.160614, 47.283928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958370, 34.894913, 47.423870>,  <34.116909, 34.735493, 47.507835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958370, 34.894913, 47.423870>,  <33.694138, 35.160614, 47.283928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958370, 34.894913, 47.423870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204547, -0.289138, -0.935179,
		0.722351, 0.689326, -0.055129,
		0.660583, -0.664250, 0.349859,
		34.156544, 34.695637, 47.528828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339268, 35.294445, 46.864017>,  <33.694138, 35.160614, 47.283928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339268, 35.294445, 46.864017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408585, 34.924267, 46.998787>,  <34.450176, 34.702160, 47.079651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408585, 34.924267, 46.998787>,  <34.339268, 35.294445, 46.864017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408585, 34.924267, 46.998787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361404, -0.258480, -0.895865,
		0.916163, 0.277017, 0.289666,
		0.173297, -0.925445, 0.336925,
		34.460575, 34.646633, 47.099865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909042, 35.071568, 46.406689>,  <34.339268, 35.294445, 46.864017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909042, 35.071568, 46.406689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781540, 34.727596, 46.566147>,  <34.705040, 34.521214, 46.661819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781540, 34.727596, 46.566147>,  <34.909042, 35.071568, 46.406689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781540, 34.727596, 46.566147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317964, -0.493225, -0.809709,
		0.892913, -0.131347, 0.430645,
		-0.318758, -0.859929, 0.398643,
		34.685913, 34.469616, 46.685741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415005, 34.597279, 46.223793>,  <34.909042, 35.071568, 46.406689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415005, 34.597279, 46.223793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057499, 34.434498, 46.299240>,  <34.842995, 34.336830, 46.344509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057499, 34.434498, 46.299240>,  <35.415005, 34.597279, 46.223793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057499, 34.434498, 46.299240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106330, -0.600767, -0.792322,
		0.435752, -0.688093, 0.580215,
		-0.893764, -0.406950, 0.188620,
		34.789371, 34.312412, 46.355827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567261, 33.993538, 46.075993>,  <35.415005, 34.597279, 46.223793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567261, 33.993538, 46.075993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167408, 34.001728, 46.068859>,  <34.927498, 34.006641, 46.064579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167408, 34.001728, 46.068859>,  <35.567261, 33.993538, 46.075993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167408, 34.001728, 46.068859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003104, -0.566350, -0.824159,
		-0.026973, -0.823910, 0.566078,
		-0.999631, 0.020473, -0.017834,
		34.867519, 34.007870, 46.063507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290424, 33.328609, 45.942978>,  <35.567261, 33.993538, 46.075993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290424, 33.328609, 45.942978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981300, 33.555119, 45.828369>,  <34.795826, 33.691025, 45.759602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981300, 33.555119, 45.828369>,  <35.290424, 33.328609, 45.942978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981300, 33.555119, 45.828369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224009, -0.665821, -0.711690,
		-0.593783, -0.485820, 0.641405,
		-0.772814, 0.566270, -0.286525,
		34.749458, 33.724998, 45.742413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794785, 32.904102, 45.633701>,  <35.290424, 33.328609, 45.942978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794785, 32.904102, 45.633701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666130, 33.261093, 45.507183>,  <34.588940, 33.475288, 45.431274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666130, 33.261093, 45.507183>,  <34.794785, 32.904102, 45.633701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666130, 33.261093, 45.507183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252527, -0.402795, -0.879765,
		-0.912569, -0.203090, 0.354926,
		-0.321634, 0.892474, -0.316292,
		34.569641, 33.528835, 45.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312958, 32.703487, 45.126431>,  <34.794785, 32.904102, 45.633701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312958, 32.703487, 45.126431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434601, 33.075691, 45.044781>,  <34.507587, 33.299015, 44.995789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434601, 33.075691, 45.044781>,  <34.312958, 32.703487, 45.126431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434601, 33.075691, 45.044781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030310, -0.204718, -0.978352,
		-0.952155, 0.303714, -0.034053,
		0.304110, 0.930510, -0.204129,
		34.525833, 33.354843, 44.983543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785511, 32.903809, 44.626564>,  <34.312958, 32.703487, 45.126431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785511, 32.903809, 44.626564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056454, 33.197262, 44.604740>,  <34.219017, 33.373333, 44.591648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056454, 33.197262, 44.604740>,  <33.785511, 32.903809, 44.626564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056454, 33.197262, 44.604740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101320, 0.019580, -0.994661,
		-0.728647, 0.679265, 0.087594,
		0.677353, 0.733632, -0.054556,
		34.259659, 33.417351, 44.588375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503338, 33.462917, 44.147373>,  <33.785511, 32.903809, 44.626564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503338, 33.462917, 44.147373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901344, 33.502178, 44.140263>,  <34.140148, 33.525734, 44.135998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901344, 33.502178, 44.140263>,  <33.503338, 33.462917, 44.147373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901344, 33.502178, 44.140263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016877, -0.009975, -0.999808,
		-0.098312, 0.995121, -0.008269,
		0.995013, 0.098154, -0.017776,
		34.199848, 33.531624, 44.134930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629681, 34.064896, 43.770210>,  <33.503338, 33.462917, 44.147373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629681, 34.064896, 43.770210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964935, 33.849041, 43.738430>,  <34.166088, 33.719528, 43.719364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964935, 33.849041, 43.738430>,  <33.629681, 34.064896, 43.770210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964935, 33.849041, 43.738430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031128, 0.192741, -0.980756,
		0.544564, 0.819539, 0.178342,
		0.838141, -0.539636, -0.079449,
		34.216377, 33.687149, 43.714596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963718, 34.455708, 43.352196>,  <33.629681, 34.064896, 43.770210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963718, 34.455708, 43.352196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157841, 34.107422, 43.320347>,  <34.274315, 33.898453, 43.301239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157841, 34.107422, 43.320347>,  <33.963718, 34.455708, 43.352196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157841, 34.107422, 43.320347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188974, 0.193366, -0.962756,
		0.853679, 0.452185, 0.258383,
		0.485306, -0.870711, -0.079621,
		34.303432, 33.846207, 43.296459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598122, 34.489407, 43.051254>,  <33.963718, 34.455708, 43.352196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598122, 34.489407, 43.051254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535503, 34.102928, 42.969322>,  <34.497932, 33.871040, 42.920162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535503, 34.102928, 42.969322>,  <34.598122, 34.489407, 43.051254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535503, 34.102928, 42.969322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189364, 0.174177, -0.966335,
		0.969348, -0.190059, 0.155697,
		-0.156542, -0.966199, -0.204829,
		34.488541, 33.813068, 42.907875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165821, 34.323166, 42.483681>,  <34.598122, 34.489407, 43.051254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165821, 34.323166, 42.483681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843849, 34.085827, 42.482037>,  <34.650665, 33.943424, 42.481049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843849, 34.085827, 42.482037>,  <35.165821, 34.323166, 42.483681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843849, 34.085827, 42.482037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046027, 0.069345, -0.996530,
		0.591578, -0.801951, -0.083128,
		-0.804933, -0.593352, -0.004111,
		34.602367, 33.907822, 42.480804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315304, 34.024521, 41.937908>,  <35.165821, 34.323166, 42.483681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315304, 34.024521, 41.937908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931156, 33.926540, 41.991104>,  <34.700668, 33.867752, 42.023022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931156, 33.926540, 41.991104>,  <35.315304, 34.024521, 41.937908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931156, 33.926540, 41.991104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163612, 0.109129, -0.980470,
		0.225656, -0.963374, -0.144881,
		-0.960370, -0.244953, 0.132994,
		34.643044, 33.853054, 42.031002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149334, 33.488426, 41.421776>,  <35.315304, 34.024521, 41.937908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149334, 33.488426, 41.421776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806393, 33.656693, 41.540417>,  <34.600628, 33.757652, 41.611603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806393, 33.656693, 41.540417>,  <35.149334, 33.488426, 41.421776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806393, 33.656693, 41.540417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318296, 0.019557, -0.947790,
		-0.404507, -0.907003, 0.117130,
		-0.857357, 0.420669, 0.296607,
		34.549187, 33.782894, 41.629398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633526, 32.969955, 41.193958>,  <35.149334, 33.488426, 41.421776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633526, 32.969955, 41.193958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478905, 33.334904, 41.247849>,  <34.386131, 33.553875, 41.280182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478905, 33.334904, 41.247849>,  <34.633526, 32.969955, 41.193958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478905, 33.334904, 41.247849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312168, 0.008027, -0.949993,
		-0.867832, -0.409276, 0.281711,
		-0.386548, 0.912375, 0.134729,
		34.362942, 33.608616, 41.288269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192944, 32.994247, 40.733540>,  <34.633526, 32.969955, 41.193958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192944, 32.994247, 40.733540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207790, 33.384186, 40.821438>,  <34.216698, 33.618149, 40.874176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207790, 33.384186, 40.821438>,  <34.192944, 32.994247, 40.733540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207790, 33.384186, 40.821438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309040, 0.220319, -0.925178,
		-0.950324, -0.033568, 0.309446,
		0.037120, 0.974850, 0.219748,
		34.218925, 33.676640, 40.887363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529888, 33.268562, 40.539524>,  <34.192944, 32.994247, 40.733540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529888, 33.268562, 40.539524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799946, 33.561817, 40.572266>,  <33.961979, 33.737770, 40.591911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799946, 33.561817, 40.572266>,  <33.529888, 33.268562, 40.539524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799946, 33.561817, 40.572266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171735, 0.264116, -0.949079,
		-0.717420, 0.626705, 0.304220,
		0.675141, 0.733133, 0.081855,
		34.002487, 33.781757, 40.596821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487492, 33.551918, 39.937134>,  <33.529888, 33.268562, 40.539524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487492, 33.551918, 39.937134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777836, 33.796261, 40.063610>,  <33.952042, 33.942867, 40.139496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777836, 33.796261, 40.063610>,  <33.487492, 33.551918, 39.937134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777836, 33.796261, 40.063610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008475, 0.451707, -0.892126,
		-0.687789, 0.650239, 0.322699,
		0.725861, 0.610860, 0.316191,
		33.995594, 33.979519, 40.158466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286488, 34.254944, 39.695366>,  <33.487492, 33.551918, 39.937134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286488, 34.254944, 39.695366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680145, 34.225956, 39.760117>,  <33.916340, 34.208565, 39.798965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680145, 34.225956, 39.760117>,  <33.286488, 34.254944, 39.695366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680145, 34.225956, 39.760117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177119, 0.448382, -0.876118,
		-0.009093, 0.890900, 0.454109,
		0.984147, -0.072465, 0.161873,
		33.975388, 34.204216, 39.808678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529816, 34.958389, 39.456989>,  <33.286488, 34.254944, 39.695366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529816, 34.958389, 39.456989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842548, 34.710503, 39.429585>,  <34.030190, 34.561771, 39.413143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842548, 34.710503, 39.429585>,  <33.529816, 34.958389, 39.456989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842548, 34.710503, 39.429585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246018, 0.407599, -0.879396,
		0.572898, 0.670686, 0.471135,
		0.781833, -0.619712, -0.068512,
		34.077099, 34.524590, 39.409031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274406, 35.304020, 39.416782>,  <33.529816, 34.958389, 39.456989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274406, 35.304020, 39.416782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221478, 34.979801, 39.188572>,  <34.189720, 34.785271, 39.051643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221478, 34.979801, 39.188572>,  <34.274406, 35.304020, 39.416782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221478, 34.979801, 39.188572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193661, 0.543357, -0.816859,
		0.972104, -0.218579, 0.085072,
		-0.132324, -0.810547, -0.570529,
		34.181782, 34.736637, 39.017414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884506, 35.175648, 38.933758>,  <34.274406, 35.304020, 39.416782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884506, 35.175648, 38.933758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533924, 35.029705, 38.808083>,  <34.323574, 34.942139, 38.732677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533924, 35.029705, 38.808083>,  <34.884506, 35.175648, 38.933758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533924, 35.029705, 38.808083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043300, 0.590157, -0.806126,
		0.479538, -0.720135, -0.501447,
		-0.876452, -0.364855, -0.314184,
		34.270988, 34.920250, 38.713825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665157, 34.903381, 38.708294>,  <34.884506, 35.175648, 38.933758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665157, 34.903381, 38.708294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014233, 35.046753, 38.575661>,  <36.223679, 35.132774, 38.496082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014233, 35.046753, 38.575661>,  <35.665157, 34.903381, 38.708294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014233, 35.046753, 38.575661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264699, 0.223360, 0.938107,
		0.410306, -0.906443, 0.100048,
		0.872688, 0.358428, -0.331580,
		36.276039, 35.154282, 38.476185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188595, 34.369831, 38.879234>,  <35.665157, 34.903381, 38.708294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188595, 34.369831, 38.879234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357655, 34.727730, 38.821556>,  <36.459091, 34.942471, 38.786949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357655, 34.727730, 38.821556>,  <36.188595, 34.369831, 38.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357655, 34.727730, 38.821556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189538, 0.068318, 0.979494,
		0.886252, -0.441312, -0.140714,
		0.422649, 0.894749, -0.144193,
		36.484451, 34.996155, 38.778297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640553, 34.379055, 39.399448>,  <36.188595, 34.369831, 38.879234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640553, 34.379055, 39.399448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729721, 34.747662, 39.272259>,  <36.783222, 34.968826, 39.195946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729721, 34.747662, 39.272259>,  <36.640553, 34.379055, 39.399448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729721, 34.747662, 39.272259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282020, 0.251271, 0.925920,
		0.933151, -0.296083, -0.203873,
		0.222922, 0.921519, -0.317975,
		36.796597, 35.024117, 39.176865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437042, 34.558311, 39.689053>,  <36.640553, 34.379055, 39.399448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437042, 34.558311, 39.689053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220150, 34.882313, 39.599716>,  <37.090015, 35.076714, 39.546116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220150, 34.882313, 39.599716>,  <37.437042, 34.558311, 39.689053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220150, 34.882313, 39.599716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265777, 0.417504, 0.868938,
		0.797089, 0.411804, -0.441663,
		-0.542228, 0.810005, -0.223340,
		37.057480, 35.125313, 39.532715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843624, 35.220135, 39.884670>,  <37.437042, 34.558311, 39.689053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843624, 35.220135, 39.884670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451687, 35.299778, 39.891136>,  <37.216526, 35.347565, 39.895016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451687, 35.299778, 39.891136>,  <37.843624, 35.220135, 39.884670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451687, 35.299778, 39.891136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087462, 0.354822, 0.930834,
		0.179601, 0.913486, -0.365085,
		-0.979844, 0.199110, 0.016169,
		37.157734, 35.359512, 39.895988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852699, 35.831242, 40.190350>,  <37.843624, 35.220135, 39.884670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852699, 35.831242, 40.190350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489708, 35.667835, 40.229527>,  <37.271912, 35.569794, 40.253033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489708, 35.667835, 40.229527>,  <37.852699, 35.831242, 40.190350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489708, 35.667835, 40.229527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007861, 0.216585, 0.976232,
		-0.420016, 0.886683, -0.193336,
		-0.907483, -0.408513, 0.097940,
		37.217464, 35.545280, 40.258907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411476, 36.318401, 40.478535>,  <37.852699, 35.831242, 40.190350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411476, 36.318401, 40.478535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244637, 35.964882, 40.563328>,  <37.144531, 35.752769, 40.614204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244637, 35.964882, 40.563328>,  <37.411476, 36.318401, 40.478535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244637, 35.964882, 40.563328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192474, 0.142053, 0.970966,
		-0.888247, 0.445789, 0.110857,
		-0.417099, -0.883795, 0.211981,
		37.119507, 35.699745, 40.626923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199825, 36.444481, 41.054729>,  <37.411476, 36.318401, 40.478535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199825, 36.444481, 41.054729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123276, 36.051933, 41.047878>,  <37.077347, 35.816406, 41.043770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123276, 36.051933, 41.047878>,  <37.199825, 36.444481, 41.054729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123276, 36.051933, 41.047878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061031, -0.005517, 0.998120,
		-0.979619, 0.192055, -0.058838,
		-0.191370, -0.981369, -0.017126,
		37.065865, 35.757523, 41.042740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452820, 36.289402, 41.354645>,  <37.199825, 36.444481, 41.054729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452820, 36.289402, 41.354645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710308, 35.986290, 41.397324>,  <36.864803, 35.804420, 41.422932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710308, 35.986290, 41.397324>,  <36.452820, 36.289402, 41.354645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710308, 35.986290, 41.397324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007221, 0.133410, 0.991035,
		-0.765223, -0.638724, 0.080407,
		0.643725, -0.757782, 0.106700,
		36.903427, 35.758957, 41.429333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172729, 35.956081, 41.868912>,  <36.452820, 36.289402, 41.354645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172729, 35.956081, 41.868912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479568, 35.699581, 41.876514>,  <36.663673, 35.545681, 41.881077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479568, 35.699581, 41.876514>,  <36.172729, 35.956081, 41.868912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479568, 35.699581, 41.876514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067342, 0.109949, 0.991653,
		-0.637987, -0.759415, 0.127525,
		0.767097, -0.641249, 0.019005,
		36.709698, 35.507206, 41.882217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024204, 35.328396, 42.232143>,  <36.172729, 35.956081, 41.868912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024204, 35.328396, 42.232143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414337, 35.412273, 42.259716>,  <36.648418, 35.462601, 42.276260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414337, 35.412273, 42.259716>,  <36.024204, 35.328396, 42.232143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414337, 35.412273, 42.259716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029614, -0.185174, 0.982260,
		0.218737, -0.960073, -0.174396,
		0.975335, 0.209692, 0.068936,
		36.706936, 35.475182, 42.280396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252602, 34.865627, 42.757462>,  <36.024204, 35.328396, 42.232143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252602, 34.865627, 42.757462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532204, 35.151161, 42.740337>,  <36.699966, 35.322479, 42.730064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532204, 35.151161, 42.740337>,  <36.252602, 34.865627, 42.757462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532204, 35.151161, 42.740337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154473, -0.092270, 0.983679,
		0.698230, -0.694214, -0.174765,
		0.699009, 0.713830, -0.042812,
		36.741905, 35.365311, 42.727493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879242, 34.631916, 43.013409>,  <36.252602, 34.865627, 42.757462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879242, 34.631916, 43.013409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898682, 35.031029, 43.031590>,  <36.910347, 35.270496, 43.042496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898682, 35.031029, 43.031590>,  <36.879242, 34.631916, 43.013409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898682, 35.031029, 43.031590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130668, -0.051462, 0.990090,
		0.990234, -0.042181, -0.132879,
		0.048601, 0.997784, 0.045448,
		36.913261, 35.330364, 43.045223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511875, 34.713840, 43.442059>,  <36.879242, 34.631916, 43.013409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511875, 34.713840, 43.442059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294243, 35.049152, 43.456264>,  <37.163662, 35.250340, 43.464787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294243, 35.049152, 43.456264>,  <37.511875, 34.713840, 43.442059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294243, 35.049152, 43.456264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107669, 0.027779, 0.993798,
		0.832093, 0.544535, -0.105371,
		-0.544085, 0.838278, 0.035515,
		37.131016, 35.300636, 43.466919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793903, 35.161228, 43.959934>,  <37.511875, 34.713840, 43.442059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793903, 35.161228, 43.959934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435276, 35.333698, 43.919434>,  <37.220100, 35.437180, 43.895134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435276, 35.333698, 43.919434>,  <37.793903, 35.161228, 43.959934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435276, 35.333698, 43.919434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025771, 0.279017, 0.959940,
		0.442155, 0.858043, -0.261269,
		-0.896568, 0.431175, -0.101256,
		37.166306, 35.463051, 43.889057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887707, 35.880581, 44.216877>,  <37.793903, 35.161228, 43.959934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887707, 35.880581, 44.216877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500259, 35.781174, 44.215034>,  <37.267792, 35.721527, 44.213928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500259, 35.781174, 44.215034>,  <37.887707, 35.880581, 44.216877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500259, 35.781174, 44.215034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079237, 0.291163, 0.953387,
		-0.235595, 0.923830, -0.301717,
		-0.968616, -0.248520, -0.004605,
		37.209675, 35.706619, 44.213654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604763, 36.410851, 44.507999>,  <37.887707, 35.880581, 44.216877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604763, 36.410851, 44.507999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326668, 36.127499, 44.556736>,  <37.159809, 35.957489, 44.585976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326668, 36.127499, 44.556736>,  <37.604763, 36.410851, 44.507999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326668, 36.127499, 44.556736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105224, 0.267986, 0.957659,
		-0.711037, 0.652980, -0.260852,
		-0.695238, -0.708379, 0.121838,
		37.118095, 35.914986, 44.593288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893196, 36.661163, 44.766537>,  <37.604763, 36.410851, 44.507999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893196, 36.661163, 44.766537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882755, 36.277496, 44.879192>,  <36.876492, 36.047295, 44.946785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882755, 36.277496, 44.879192>,  <36.893196, 36.661163, 44.766537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882755, 36.277496, 44.879192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215228, 0.280518, 0.935407,
		-0.976215, -0.036198, -0.213762,
		-0.026104, -0.959166, 0.281636,
		36.874924, 35.989746, 44.963684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264343, 36.629597, 45.278446>,  <36.893196, 36.661163, 44.766537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264343, 36.629597, 45.278446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433914, 36.269707, 45.319988>,  <36.535656, 36.053772, 45.344913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433914, 36.269707, 45.319988>,  <36.264343, 36.629597, 45.278446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433914, 36.269707, 45.319988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223734, 0.007079, 0.974625,
		-0.877626, -0.436408, -0.198297,
		0.423930, -0.899721, 0.103852,
		36.561092, 35.999790, 45.351143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803047, 36.214756, 45.697014>,  <36.264343, 36.629597, 45.278446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803047, 36.214756, 45.697014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162102, 36.045258, 45.745506>,  <36.377533, 35.943558, 45.774601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162102, 36.045258, 45.745506>,  <35.803047, 36.214756, 45.697014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162102, 36.045258, 45.745506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137472, -0.007833, 0.990475,
		-0.418756, -0.905749, -0.065284,
		0.897633, -0.423742, 0.121235,
		36.431393, 35.918137, 45.781876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703289, 35.598183, 46.147591>,  <35.803047, 36.214756, 45.697014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703289, 35.598183, 46.147591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076981, 35.740013, 46.162991>,  <36.301197, 35.825111, 46.172230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076981, 35.740013, 46.162991>,  <35.703289, 35.598183, 46.147591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076981, 35.740013, 46.162991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010064, -0.081688, 0.996607,
		0.356523, -0.931450, -0.072747,
		0.934232, 0.354581, 0.038498,
		36.357250, 35.846386, 46.174541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011806, 35.021984, 46.592026>,  <35.703289, 35.598183, 46.147591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011806, 35.021984, 46.592026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247814, 35.344543, 46.576038>,  <36.389420, 35.538078, 46.566444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247814, 35.344543, 46.576038>,  <36.011806, 35.021984, 46.592026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247814, 35.344543, 46.576038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125400, 0.140432, 0.982117,
		0.797595, -0.574451, 0.183980,
		0.590014, 0.806403, -0.039972,
		36.424820, 35.586464, 46.564049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339199, 34.978363, 47.182468>,  <36.011806, 35.021984, 46.592026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339199, 34.978363, 47.182468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379288, 35.364555, 47.086296>,  <36.403343, 35.596272, 47.028591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379288, 35.364555, 47.086296>,  <36.339199, 34.978363, 47.182468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379288, 35.364555, 47.086296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025147, 0.244027, 0.969442,
		0.994647, -0.091116, 0.048736,
		0.100224, 0.965478, -0.240430,
		36.409355, 35.654198, 47.014168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953068, 35.246464, 47.642532>,  <36.339199, 34.978363, 47.182468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953068, 35.246464, 47.642532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730885, 35.559933, 47.531307>,  <36.597572, 35.748013, 47.464573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730885, 35.559933, 47.531307>,  <36.953068, 35.246464, 47.642532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730885, 35.559933, 47.531307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047877, 0.303702, 0.951564,
		0.830163, 0.541869, -0.131174,
		-0.555461, 0.783673, -0.278065,
		36.564247, 35.795036, 47.447887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107216, 35.774593, 48.234432>,  <36.953068, 35.246464, 47.642532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107216, 35.774593, 48.234432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805172, 35.941586, 48.032238>,  <36.623943, 36.041779, 47.910923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805172, 35.941586, 48.032238>,  <37.107216, 35.774593, 48.234432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805172, 35.941586, 48.032238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308652, 0.453857, 0.835911,
		0.578394, 0.787226, -0.213858,
		-0.755112, 0.417479, -0.505487,
		36.578640, 36.066830, 47.880592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104782, 36.556114, 48.228447>,  <37.107216, 35.774593, 48.234432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104782, 36.556114, 48.228447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722153, 36.444855, 48.193584>,  <36.492573, 36.378098, 48.172668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722153, 36.444855, 48.193584>,  <37.104782, 36.556114, 48.228447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722153, 36.444855, 48.193584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212246, 0.459744, 0.862315,
		-0.199784, 0.843367, -0.498816,
		-0.956576, -0.278149, -0.087152,
		36.435181, 36.361408, 48.167439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718815, 37.185257, 48.147224>,  <37.104782, 36.556114, 48.228447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718815, 37.185257, 48.147224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491344, 36.890980, 48.294392>,  <36.354862, 36.714413, 48.382690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491344, 36.890980, 48.294392>,  <36.718815, 37.185257, 48.147224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491344, 36.890980, 48.294392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095807, 0.503477, 0.858680,
		-0.816961, 0.453065, -0.356802,
		-0.568680, -0.735692, 0.367914,
		36.320740, 36.670273, 48.404766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276768, 37.511024, 48.546394>,  <36.718815, 37.185257, 48.147224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276768, 37.511024, 48.546394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210629, 37.142643, 48.687534>,  <36.170944, 36.921616, 48.772217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210629, 37.142643, 48.687534>,  <36.276768, 37.511024, 48.546394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210629, 37.142643, 48.687534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410958, 0.389571, 0.824225,
		-0.896534, -0.008721, -0.442890,
		-0.165349, -0.920955, 0.352848,
		36.161022, 36.866356, 48.793388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680286, 37.633408, 48.889381>,  <36.276768, 37.511024, 48.546394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680286, 37.633408, 48.889381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791889, 37.283188, 49.047146>,  <35.858852, 37.073055, 49.141804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791889, 37.283188, 49.047146>,  <35.680286, 37.633408, 48.889381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791889, 37.283188, 49.047146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258512, 0.327079, 0.908950,
		-0.924839, -0.355563, -0.135084,
		0.279005, -0.875554, 0.394413,
		35.875591, 37.020523, 49.165470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177086, 37.529404, 49.429222>,  <35.680286, 37.633408, 48.889381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177086, 37.529404, 49.429222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469025, 37.270924, 49.518452>,  <35.644188, 37.115837, 49.571987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469025, 37.270924, 49.518452>,  <35.177086, 37.529404, 49.429222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469025, 37.270924, 49.518452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257698, 0.042175, 0.965304,
		-0.633184, -0.762005, -0.135742,
		0.729842, -0.646196, 0.223072,
		35.687977, 37.077065, 49.585373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957893, 37.065884, 49.763557>,  <35.177086, 37.529404, 49.429222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957893, 37.065884, 49.763557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339573, 37.036617, 49.879593>,  <35.568581, 37.019058, 49.949215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339573, 37.036617, 49.879593>,  <34.957893, 37.065884, 49.763557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339573, 37.036617, 49.879593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271837, 0.192899, 0.942812,
		-0.124936, -0.978487, 0.164175,
		0.954199, -0.073162, 0.290089,
		35.625832, 37.014668, 49.966621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965351, 36.721882, 50.375847>,  <34.957893, 37.065884, 49.763557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965351, 36.721882, 50.375847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311665, 36.922050, 50.376087>,  <35.519451, 37.042152, 50.376232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311665, 36.922050, 50.376087>,  <34.965351, 36.721882, 50.375847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311665, 36.922050, 50.376087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062267, 0.106545, 0.992356,
		0.496530, -0.859203, 0.123404,
		0.865784, 0.500419, 0.000598,
		35.571400, 37.072174, 50.376266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341640, 36.461536, 50.948517>,  <34.965351, 36.721882, 50.375847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341640, 36.461536, 50.948517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508774, 36.817039, 50.873131>,  <35.609055, 37.030342, 50.827900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508774, 36.817039, 50.873131>,  <35.341640, 36.461536, 50.948517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508774, 36.817039, 50.873131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085054, 0.244793, 0.965838,
		0.904533, -0.387530, 0.177876,
		0.417834, 0.888762, -0.188462,
		35.634125, 37.083668, 50.816593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053413, 36.449532, 51.410217>,  <35.341640, 36.461536, 50.948517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053413, 36.449532, 51.410217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937801, 36.820755, 51.316265>,  <35.868435, 37.043488, 51.259895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937801, 36.820755, 51.316265>,  <36.053413, 36.449532, 51.410217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937801, 36.820755, 51.316265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127904, 0.280585, 0.951269,
		0.948738, 0.244901, -0.199800,
		-0.289028, 0.928060, -0.234878,
		35.851093, 37.099174, 51.245800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619804, 36.940281, 51.815804>,  <36.053413, 36.449532, 51.410217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619804, 36.940281, 51.815804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300819, 37.157967, 51.711578>,  <36.109428, 37.288578, 51.649044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300819, 37.157967, 51.711578>,  <36.619804, 36.940281, 51.815804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300819, 37.157967, 51.711578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020539, 0.407105, 0.913151,
		0.603024, 0.733551, -0.313471,
		-0.797458, 0.544214, -0.260561,
		36.061581, 37.321232, 51.633411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729202, 37.364323, 52.311817>,  <36.619804, 36.940281, 51.815804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729202, 37.364323, 52.311817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373730, 37.490807, 52.178993>,  <36.160446, 37.566696, 52.099300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373730, 37.490807, 52.178993>,  <36.729202, 37.364323, 52.311817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373730, 37.490807, 52.178993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152599, 0.478946, 0.864479,
		0.432393, 0.818916, -0.377376,
		-0.888678, 0.316208, -0.332059,
		36.107124, 37.585670, 52.079376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690765, 38.050526, 52.529934>,  <36.729202, 37.364323, 52.311817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690765, 38.050526, 52.529934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306595, 37.953915, 52.474457>,  <36.076092, 37.895947, 52.441170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306595, 37.953915, 52.474457>,  <36.690765, 38.050526, 52.529934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306595, 37.953915, 52.474457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169581, 0.112074, 0.979123,
		-0.220942, 0.963900, -0.148598,
		-0.960431, -0.241529, -0.138697,
		36.018467, 37.881454, 52.432846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807678, 38.718208, 52.190819>,  <36.690765, 38.050526, 52.529934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807678, 38.718208, 52.190819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586449, 39.021320, 52.329311>,  <36.453712, 39.203190, 52.412407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586449, 39.021320, 52.329311>,  <36.807678, 38.718208, 52.190819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586449, 39.021320, 52.329311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003313, 0.417571, -0.908638,
		-0.833126, -0.501397, -0.233458,
		-0.553074, 0.757784, 0.346227,
		36.420525, 39.248657, 52.433178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217960, 38.825237, 51.784248>,  <36.807678, 38.718208, 52.190819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217960, 38.825237, 51.784248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329468, 39.192535, 51.896763>,  <36.396374, 39.412914, 51.964272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329468, 39.192535, 51.896763>,  <36.217960, 38.825237, 51.784248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329468, 39.192535, 51.896763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066457, 0.310637, -0.948203,
		-0.958056, 0.245637, 0.147620,
		0.278770, 0.918241, 0.281283,
		36.413097, 39.468006, 51.981148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742458, 39.253384, 51.510750>,  <36.217960, 38.825237, 51.784248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742458, 39.253384, 51.510750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054787, 39.493565, 51.579769>,  <36.242184, 39.637672, 51.621181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054787, 39.493565, 51.579769>,  <35.742458, 39.253384, 51.510750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054787, 39.493565, 51.579769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121128, 0.416444, -0.901056,
		-0.612901, 0.682662, 0.397899,
		0.780820, 0.600455, 0.172550,
		36.289032, 39.673702, 51.631535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488533, 39.928471, 51.289299>,  <35.742458, 39.253384, 51.510750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488533, 39.928471, 51.289299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888401, 39.938736, 51.289757>,  <36.128323, 39.944897, 51.290031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888401, 39.938736, 51.289757>,  <35.488533, 39.928471, 51.289299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888401, 39.938736, 51.289757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008605, 0.376668, -0.926308,
		-0.024204, 0.925993, 0.376765,
		0.999670, 0.025663, 0.001148,
		36.188301, 39.946434, 51.290100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671043, 40.516323, 51.126499>,  <35.488533, 39.928471, 51.289299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671043, 40.516323, 51.126499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012077, 40.319233, 51.056854>,  <36.216698, 40.200981, 51.015068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012077, 40.319233, 51.056854>,  <35.671043, 40.516323, 51.126499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012077, 40.319233, 51.056854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053646, 0.413939, -0.908723,
		0.519820, 0.765427, 0.379353,
		0.852589, -0.492723, -0.174111,
		36.267853, 40.171417, 51.004620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145672, 41.034245, 50.828014>,  <35.671043, 40.516323, 51.126499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145672, 41.034245, 50.828014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240215, 40.655865, 50.739185>,  <36.296944, 40.428837, 50.685886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240215, 40.655865, 50.739185>,  <36.145672, 41.034245, 50.828014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240215, 40.655865, 50.739185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105498, 0.252183, -0.961912,
		0.965921, 0.203930, 0.159402,
		0.236361, -0.945947, -0.222074,
		36.311123, 40.372082, 50.672562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442341, 41.166695, 50.206238>,  <36.145672, 41.034245, 50.828014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442341, 41.166695, 50.206238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417477, 40.767570, 50.197250>,  <36.402557, 40.528095, 50.191856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417477, 40.767570, 50.197250>,  <36.442341, 41.166695, 50.206238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417477, 40.767570, 50.197250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068879, 0.018168, -0.997460,
		0.995687, -0.063550, 0.067599,
		-0.062161, -0.997813, -0.022467,
		36.398827, 40.468227, 50.190510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917114, 40.989246, 49.806454>,  <36.442341, 41.166695, 50.206238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917114, 40.989246, 49.806454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701950, 40.652138, 49.814289>,  <36.572849, 40.449871, 49.818989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701950, 40.652138, 49.814289>,  <36.917114, 40.989246, 49.806454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701950, 40.652138, 49.814289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068683, -0.066973, -0.995388,
		0.840198, -0.534086, 0.093909,
		-0.537912, -0.842773, 0.019588,
		36.540577, 40.399307, 49.820164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264805, 40.527493, 49.419052>,  <36.917114, 40.989246, 49.806454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264805, 40.527493, 49.419052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881626, 40.413300, 49.407490>,  <36.651718, 40.344784, 49.400551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881626, 40.413300, 49.407490>,  <37.264805, 40.527493, 49.419052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881626, 40.413300, 49.407490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080187, -0.169613, -0.982243,
		0.275510, -0.943256, 0.185372,
		-0.957948, -0.285482, -0.028906,
		36.594242, 40.327656, 49.398819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209148, 39.834892, 49.216080>,  <37.264805, 40.527493, 49.419052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209148, 39.834892, 49.216080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862717, 40.010250, 49.119984>,  <36.654858, 40.115467, 49.062328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862717, 40.010250, 49.119984>,  <37.209148, 39.834892, 49.216080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862717, 40.010250, 49.119984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092749, -0.331306, -0.938954,
		-0.491228, -0.835490, 0.246276,
		-0.866079, 0.438398, -0.240238,
		36.602894, 40.141769, 49.047913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015636, 39.265465, 48.764507>,  <37.209148, 39.834892, 49.216080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015636, 39.265465, 48.764507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755859, 39.563965, 48.706078>,  <36.599991, 39.743065, 48.671021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755859, 39.563965, 48.706078>,  <37.015636, 39.265465, 48.764507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755859, 39.563965, 48.706078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115425, -0.286618, -0.951066,
		-0.751598, -0.600804, 0.272278,
		-0.649444, 0.746247, -0.146073,
		36.561028, 39.787838, 48.662254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493061, 38.937840, 48.516228>,  <37.015636, 39.265465, 48.764507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493061, 38.937840, 48.516228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464355, 39.316475, 48.390484>,  <36.447132, 39.543655, 48.315037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464355, 39.316475, 48.390484>,  <36.493061, 38.937840, 48.516228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464355, 39.316475, 48.390484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074367, -0.319376, -0.944706,
		-0.994645, -0.044418, 0.093315,
		-0.071764, 0.946587, -0.314362,
		36.442825, 39.600452, 48.296177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034004, 38.915878, 48.044270>,  <36.493061, 38.937840, 48.516228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034004, 38.915878, 48.044270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207672, 39.264599, 47.953529>,  <36.311874, 39.473831, 47.899086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207672, 39.264599, 47.953529>,  <36.034004, 38.915878, 48.044270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207672, 39.264599, 47.953529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144749, -0.181030, -0.972767,
		-0.889125, 0.455184, 0.047594,
		0.434172, 0.871801, -0.226846,
		36.337925, 39.526138, 47.885475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607761, 39.368309, 47.553566>,  <36.034004, 38.915878, 48.044270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607761, 39.368309, 47.553566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988384, 39.486271, 47.518749>,  <36.216759, 39.557049, 47.497860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988384, 39.486271, 47.518749>,  <35.607761, 39.368309, 47.553566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988384, 39.486271, 47.518749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016843, -0.232669, -0.972410,
		-0.307021, 0.926766, -0.216430,
		0.951554, 0.294905, -0.087044,
		36.273849, 39.574741, 47.492638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645042, 39.800114, 46.983185>,  <35.607761, 39.368309, 47.553566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645042, 39.800114, 46.983185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027363, 39.696239, 47.038338>,  <36.256756, 39.633915, 47.071430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027363, 39.696239, 47.038338>,  <35.645042, 39.800114, 46.983185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027363, 39.696239, 47.038338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111098, -0.115201, -0.987110,
		0.272219, 0.958798, -0.081259,
		0.955800, -0.259682, 0.137880,
		36.314102, 39.618336, 47.079700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038639, 40.088890, 46.400372>,  <35.645042, 39.800114, 46.983185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038639, 40.088890, 46.400372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272213, 39.805492, 46.558895>,  <36.412357, 39.635452, 46.654011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272213, 39.805492, 46.558895>,  <36.038639, 40.088890, 46.400372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272213, 39.805492, 46.558895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103559, -0.419185, -0.901976,
		0.805171, 0.567733, -0.171404,
		0.583931, -0.708494, 0.396309,
		36.447392, 39.592945, 46.677788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580238, 40.010773, 45.886227>,  <36.038639, 40.088890, 46.400372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580238, 40.010773, 45.886227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596600, 39.679337, 46.109570>,  <36.606415, 39.480476, 46.243576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596600, 39.679337, 46.109570>,  <36.580238, 40.010773, 45.886227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596600, 39.679337, 46.109570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298438, -0.523186, -0.798255,
		0.953552, 0.199286, 0.225883,
		0.040902, -0.828590, 0.558359,
		36.608871, 39.430759, 46.277077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306370, 39.816643, 45.744740>,  <36.580238, 40.010773, 45.886227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306370, 39.816643, 45.744740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113384, 39.490742, 45.873371>,  <36.997593, 39.295200, 45.950550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113384, 39.490742, 45.873371>,  <37.306370, 39.816643, 45.744740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113384, 39.490742, 45.873371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259511, -0.483610, -0.835928,
		0.836589, -0.319853, 0.444761,
		-0.482465, -0.814749, 0.321577,
		36.968643, 39.246319, 45.969845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834980, 39.293125, 45.703636>,  <37.306370, 39.816643, 45.744740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834980, 39.293125, 45.703636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477924, 39.114975, 45.731453>,  <37.263691, 39.008087, 45.748142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477924, 39.114975, 45.731453>,  <37.834980, 39.293125, 45.703636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477924, 39.114975, 45.731453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267233, -0.647099, -0.714038,
		0.363016, -0.618794, 0.696645,
		-0.892640, -0.445374, 0.069545,
		37.210133, 38.981361, 45.752316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928616, 38.553516, 45.637997>,  <37.834980, 39.293125, 45.703636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928616, 38.553516, 45.637997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547966, 38.617191, 45.532871>,  <37.319576, 38.655396, 45.469795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547966, 38.617191, 45.532871>,  <37.928616, 38.553516, 45.637997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547966, 38.617191, 45.532871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147944, -0.512273, -0.845984,
		-0.269304, -0.843940, 0.463940,
		-0.951624, 0.159190, -0.262813,
		37.262478, 38.664948, 45.454029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781425, 37.886051, 45.428722>,  <37.928616, 38.553516, 45.637997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781425, 37.886051, 45.428722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477882, 38.105652, 45.288582>,  <37.295757, 38.237411, 45.204498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477882, 38.105652, 45.288582>,  <37.781425, 37.886051, 45.428722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477882, 38.105652, 45.288582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139479, -0.388469, -0.910844,
		-0.636151, -0.740063, 0.218217,
		-0.758853, 0.548998, -0.350348,
		37.250225, 38.270351, 45.183479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310661, 37.444607, 44.982430>,  <37.781425, 37.886051, 45.428722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310661, 37.444607, 44.982430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236977, 37.807823, 44.831944>,  <37.192764, 38.025753, 44.741653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236977, 37.807823, 44.831944>,  <37.310661, 37.444607, 44.982430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236977, 37.807823, 44.831944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076000, -0.368457, -0.926533,
		-0.979944, -0.199270, -0.001137,
		-0.184211, 0.908037, -0.376212,
		37.181713, 38.080235, 44.719078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787170, 37.434277, 44.447163>,  <37.310661, 37.444607, 44.982430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787170, 37.434277, 44.447163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992874, 37.770504, 44.379055>,  <37.116295, 37.972240, 44.338192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992874, 37.770504, 44.379055>,  <36.787170, 37.434277, 44.447163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992874, 37.770504, 44.379055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212725, -0.317342, -0.924144,
		-0.830835, 0.439029, -0.342005,
		0.514258, 0.840564, -0.170266,
		37.147152, 38.022675, 44.327976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602028, 37.572067, 43.836910>,  <36.787170, 37.434277, 44.447163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602028, 37.572067, 43.836910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946907, 37.768394, 43.887066>,  <37.153835, 37.886189, 43.917160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946907, 37.768394, 43.887066>,  <36.602028, 37.572067, 43.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946907, 37.768394, 43.887066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198352, -0.099331, -0.975085,
		-0.466129, 0.865584, -0.182997,
		0.862195, 0.490813, 0.125389,
		37.205566, 37.915638, 43.924683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626469, 38.044754, 43.322308>,  <36.602028, 37.572067, 43.836910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626469, 38.044754, 43.322308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005047, 37.979126, 43.433533>,  <37.232193, 37.939751, 43.500267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005047, 37.979126, 43.433533>,  <36.626469, 38.044754, 43.322308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005047, 37.979126, 43.433533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273322, -0.051271, -0.960555,
		0.171857, 0.985115, -0.003681,
		0.946446, -0.164072, 0.278065,
		37.288982, 37.929905, 43.516953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952393, 38.448997, 42.845364>,  <36.626469, 38.044754, 43.322308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952393, 38.448997, 42.845364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240997, 38.210331, 42.985882>,  <37.414162, 38.067131, 43.070190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240997, 38.210331, 42.985882>,  <36.952393, 38.448997, 42.845364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240997, 38.210331, 42.985882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486686, 0.076152, -0.870251,
		0.492501, 0.798865, 0.345336,
		0.721512, -0.596670, 0.351292,
		37.457451, 38.031330, 43.091270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587624, 38.808044, 42.738129>,  <36.952393, 38.448997, 42.845364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587624, 38.808044, 42.738129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681194, 38.422199, 42.786785>,  <37.737335, 38.190693, 42.815979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681194, 38.422199, 42.786785>,  <37.587624, 38.808044, 42.738129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681194, 38.422199, 42.786785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636561, 0.057388, -0.769088,
		0.734894, 0.257340, 0.627461,
		0.233926, -0.964615, 0.121639,
		37.751373, 38.132816, 42.823277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310303, 38.783817, 42.688179>,  <37.587624, 38.808044, 42.738129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310303, 38.783817, 42.688179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207092, 38.403210, 42.621197>,  <38.145164, 38.174847, 42.581009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207092, 38.403210, 42.621197>,  <38.310303, 38.783817, 42.688179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207092, 38.403210, 42.621197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491542, 0.019927, -0.870626,
		0.831750, -0.306957, 0.462568,
		-0.258027, -0.951515, -0.167457,
		38.129684, 38.117756, 42.570961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971573, 38.452160, 42.442062>,  <38.310303, 38.783817, 42.688179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971573, 38.452160, 42.442062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665081, 38.223751, 42.324200>,  <38.481186, 38.086704, 42.253483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665081, 38.223751, 42.324200>,  <38.971573, 38.452160, 42.442062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665081, 38.223751, 42.324200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378944, -0.031235, -0.924892,
		0.518930, -0.820340, 0.240319,
		-0.766233, -0.571022, -0.294655,
		38.435211, 38.052444, 42.235802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273388, 37.928795, 42.115463>,  <38.971573, 38.452160, 42.442062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273388, 37.928795, 42.115463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901520, 37.944756, 41.968971>,  <38.678398, 37.954330, 41.881077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901520, 37.944756, 41.968971>,  <39.273388, 37.928795, 42.115463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901520, 37.944756, 41.968971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364868, -0.037575, -0.930301,
		-0.050888, -0.998497, 0.020372,
		-0.929667, 0.039908, -0.366231,
		38.622620, 37.956726, 41.859100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431087, 37.636810, 41.475258>,  <39.273388, 37.928795, 42.115463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431087, 37.636810, 41.475258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055557, 37.763462, 41.421062>,  <38.830238, 37.839455, 41.388546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055557, 37.763462, 41.421062>,  <39.431087, 37.636810, 41.475258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055557, 37.763462, 41.421062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152953, 0.030839, -0.987752,
		-0.308573, -0.948048, -0.077381,
		-0.938823, 0.316629, -0.135491,
		38.773911, 37.858452, 41.380417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937809, 37.119961, 41.025154>,  <39.431087, 37.636810, 41.475258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937809, 37.119961, 41.025154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798824, 37.493702, 40.993542>,  <38.715435, 37.717949, 40.974575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798824, 37.493702, 40.993542>,  <38.937809, 37.119961, 41.025154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798824, 37.493702, 40.993542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027258, -0.074186, -0.996872,
		-0.937298, -0.348530, 0.000308,
		-0.347462, 0.934357, -0.079035,
		38.694584, 37.774010, 40.969830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332439, 37.118546, 40.577019>,  <38.937809, 37.119961, 41.025154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332439, 37.118546, 40.577019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424805, 37.507107, 40.554932>,  <38.480225, 37.740246, 40.541679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424805, 37.507107, 40.554932>,  <38.332439, 37.118546, 40.577019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424805, 37.507107, 40.554932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006316, -0.055256, -0.998453,
		-0.972954, 0.230905, -0.006624,
		0.230914, 0.971406, -0.055220,
		38.494080, 37.798527, 40.538364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003860, 37.251347, 39.967140>,  <38.332439, 37.118546, 40.577019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003860, 37.251347, 39.967140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228680, 37.568260, 40.062130>,  <38.363571, 37.758408, 40.119125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228680, 37.568260, 40.062130>,  <38.003860, 37.251347, 39.967140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228680, 37.568260, 40.062130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069769, 0.240683, -0.968093,
		-0.824160, 0.560679, 0.079998,
		0.562044, 0.792282, 0.237479,
		38.397293, 37.805946, 40.133373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711136, 37.747044, 39.491451>,  <38.003860, 37.251347, 39.967140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711136, 37.747044, 39.491451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069576, 37.871548, 39.618023>,  <38.284641, 37.946251, 39.693966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069576, 37.871548, 39.618023>,  <37.711136, 37.747044, 39.491451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069576, 37.871548, 39.618023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179151, 0.398614, -0.899451,
		-0.406099, 0.862683, 0.301433,
		0.896096, 0.311264, 0.316427,
		38.338406, 37.964928, 39.712952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726501, 38.469231, 39.353767>,  <37.711136, 37.747044, 39.491451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726501, 38.469231, 39.353767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103828, 38.338234, 39.375309>,  <38.330223, 38.259636, 39.388233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103828, 38.338234, 39.375309>,  <37.726501, 38.469231, 39.353767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103828, 38.338234, 39.375309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193227, 0.409981, -0.891392,
		0.269844, 0.851272, 0.450023,
		0.943317, -0.327493, 0.053858,
		38.386822, 38.239986, 39.391468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161331, 38.997967, 39.104538>,  <37.726501, 38.469231, 39.353767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161331, 38.997967, 39.104538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371899, 38.660797, 39.060059>,  <38.498238, 38.458496, 39.033371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371899, 38.660797, 39.060059>,  <38.161331, 38.997967, 39.104538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371899, 38.660797, 39.060059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118693, 0.202364, -0.972091,
		0.841899, 0.498529, 0.206577,
		0.526420, -0.842922, -0.111198,
		38.529823, 38.407921, 39.026699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662708, 39.196594, 38.689358>,  <38.161331, 38.997967, 39.104538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662708, 39.196594, 38.689358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667160, 38.798550, 38.650105>,  <38.669830, 38.559723, 38.626553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667160, 38.798550, 38.650105>,  <38.662708, 39.196594, 38.689358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667160, 38.798550, 38.650105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154844, 0.098666, -0.983000,
		0.987876, -0.004252, 0.155185,
		0.011131, -0.995111, -0.098128,
		38.670498, 38.500015, 38.620667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135197, 39.141167, 38.214539>,  <38.662708, 39.196594, 38.689358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135197, 39.141167, 38.214539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983196, 38.771210, 38.209404>,  <38.891994, 38.549236, 38.206322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983196, 38.771210, 38.209404>,  <39.135197, 39.141167, 38.214539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983196, 38.771210, 38.209404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130291, -0.039781, -0.990677,
		0.915763, -0.378132, 0.135622,
		-0.380002, -0.924896, -0.012837,
		38.869194, 38.493740, 38.205551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663311, 38.704617, 37.812771>,  <39.135197, 39.141167, 38.214539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663311, 38.704617, 37.812771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292194, 38.555695, 37.803066>,  <39.069523, 38.466339, 37.797245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292194, 38.555695, 37.803066>,  <39.663311, 38.704617, 37.812771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292194, 38.555695, 37.803066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034900, -0.021873, -0.999151,
		0.371461, -0.927851, 0.033287,
		-0.927792, -0.372308, -0.024257,
		39.013855, 38.444004, 37.795788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766800, 38.139496, 37.337799>,  <39.663311, 38.704617, 37.812771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766800, 38.139496, 37.337799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386665, 38.262463, 37.357220>,  <39.158585, 38.336243, 37.368870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386665, 38.262463, 37.357220>,  <39.766800, 38.139496, 37.337799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386665, 38.262463, 37.357220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071008, -0.062293, -0.995529,
		-0.303023, -0.949532, 0.081029,
		-0.950334, 0.307422, 0.048548,
		39.101566, 38.354691, 37.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691147, 37.757324, 36.630020>,  <39.766800, 38.139496, 37.337799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691147, 37.757324, 36.630020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025906, 37.559090, 36.722977>,  <40.226761, 37.440147, 36.778751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025906, 37.559090, 36.722977>,  <39.691147, 37.757324, 36.630020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025906, 37.559090, 36.722977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165927, -0.174884, -0.970507,
		0.521612, 0.850769, -0.064128,
		0.836893, -0.495588, 0.232387,
		40.276974, 37.410412, 36.792694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313225, 38.061859, 36.254204>,  <39.691147, 37.757324, 36.630020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313225, 38.061859, 36.254204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311523, 37.665459, 36.307720>,  <40.310505, 37.427620, 36.339832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311523, 37.665459, 36.307720>,  <40.313225, 38.061859, 36.254204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311523, 37.665459, 36.307720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017735, -0.133849, -0.990843,
		0.999834, -0.001839, 0.018144,
		-0.004250, -0.991000, 0.133794,
		40.310249, 37.368160, 36.347858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784267, 38.334011, 35.780033>,  <40.313225, 38.061859, 36.254204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784267, 38.334011, 35.780033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974674, 38.585030, 35.533588>,  <40.088921, 38.735641, 35.385719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974674, 38.585030, 35.533588>,  <39.784267, 38.334011, 35.780033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974674, 38.585030, 35.533588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842654, -0.525959, 0.115332,
		-0.251675, -0.574071, -0.779168,
		0.476019, 0.627543, -0.616113,
		40.117481, 38.773293, 35.348755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156372, 38.013966, 35.220284>,  <39.784267, 38.334011, 35.780033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156372, 38.013966, 35.220284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372868, 38.335323, 35.319576>,  <40.502766, 38.528137, 35.379150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372868, 38.335323, 35.319576>,  <40.156372, 38.013966, 35.220284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372868, 38.335323, 35.319576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763190, -0.593271, 0.256069,
		0.352992, 0.050853, -0.934243,
		0.541237, 0.803395, 0.248231,
		40.535240, 38.576344, 35.394047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798088, 37.887718, 34.986721>,  <40.156372, 38.013966, 35.220284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798088, 37.887718, 34.986721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846558, 38.151085, 35.283855>,  <40.875641, 38.309105, 35.462135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846558, 38.151085, 35.283855>,  <40.798088, 37.887718, 34.986721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846558, 38.151085, 35.283855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654040, -0.615891, 0.439214,
		0.746692, 0.432622, -0.505262,
		0.121172, 0.658419, 0.742833,
		40.882908, 38.348610, 35.506706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593029, 37.989296, 35.236343>,  <40.798088, 37.887718, 34.986721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593029, 37.989296, 35.236343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329479, 38.100212, 35.516056>,  <41.171349, 38.166759, 35.683884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329479, 38.100212, 35.516056>,  <41.593029, 37.989296, 35.236343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329479, 38.100212, 35.516056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543100, -0.467861, 0.697243,
		0.520503, 0.839177, 0.157667,
		-0.658877, 0.277288, 0.699280,
		41.131817, 38.183399, 35.725842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950935, 38.009731, 35.780079>,  <41.593029, 37.989296, 35.236343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950935, 38.009731, 35.780079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991917, 37.675331, 35.564445>,  <42.016506, 37.474693, 35.435066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991917, 37.675331, 35.564445>,  <41.950935, 38.009731, 35.780079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991917, 37.675331, 35.564445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300995, -0.542586, 0.784222,
		-0.948107, 0.081920, -0.307218,
		0.102448, -0.835997, -0.539087,
		42.022652, 37.424534, 35.402721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340633, 37.542397, 35.761490>,  <41.950935, 38.009731, 35.780079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340633, 37.542397, 35.761490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677078, 37.333797, 35.704124>,  <41.878944, 37.208637, 35.669704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677078, 37.333797, 35.704124>,  <41.340633, 37.542397, 35.761490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677078, 37.333797, 35.704124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304214, -0.675406, 0.671774,
		-0.447188, -0.521412, -0.726741,
		0.841116, -0.521494, -0.143413,
		41.929413, 37.177349, 35.661098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127316, 36.864895, 35.607059>,  <41.340633, 37.542397, 35.761490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127316, 36.864895, 35.607059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498676, 36.855839, 35.755409>,  <41.721493, 36.850407, 35.844421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498676, 36.855839, 35.755409>,  <41.127316, 36.864895, 35.607059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498676, 36.855839, 35.755409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275151, -0.712678, 0.645277,
		0.249710, -0.701126, -0.667882,
		0.928406, -0.022636, 0.370878,
		41.777199, 36.849049, 35.866673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242954, 36.258327, 35.681873>,  <41.127316, 36.864895, 35.607059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242954, 36.258327, 35.681873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510075, 36.409370, 35.938454>,  <41.670349, 36.499996, 36.092400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510075, 36.409370, 35.938454>,  <41.242954, 36.258327, 35.681873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510075, 36.409370, 35.938454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211365, -0.730093, 0.649837,
		0.713697, -0.569543, -0.407747,
		0.667804, 0.377603, 0.641447,
		41.710415, 36.522652, 36.130886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788647, 35.680351, 35.879879>,  <41.242954, 36.258327, 35.681873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788647, 35.680351, 35.879879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814674, 35.959377, 36.165302>,  <41.830292, 36.126793, 36.336555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814674, 35.959377, 36.165302>,  <41.788647, 35.680351, 35.879879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814674, 35.959377, 36.165302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131382, -0.714840, 0.686836,
		0.989194, 0.049055, -0.138163,
		0.065072, 0.697566, 0.713560,
		41.834194, 36.168648, 36.379372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381905, 35.474766, 36.254269>,  <41.788647, 35.680351, 35.879879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381905, 35.474766, 36.254269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153885, 35.721729, 36.471100>,  <42.017075, 35.869907, 36.601200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153885, 35.721729, 36.471100>,  <42.381905, 35.474766, 36.254269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153885, 35.721729, 36.471100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040931, -0.680299, 0.731791,
		0.820590, 0.394969, 0.413076,
		-0.570050, 0.617408, 0.542080,
		41.982868, 35.906952, 36.633724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684502, 35.321468, 36.953514>,  <42.381905, 35.474766, 36.254269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684502, 35.321468, 36.953514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327015, 35.490753, 37.013058>,  <42.112522, 35.592323, 37.048782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327015, 35.490753, 37.013058>,  <42.684502, 35.321468, 36.953514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327015, 35.490753, 37.013058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161266, -0.612695, 0.773691,
		0.418639, 0.667457, 0.615827,
		-0.893719, 0.423210, 0.148860,
		42.058899, 35.617718, 37.057716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612614, 35.416950, 37.660072>,  <42.684502, 35.321468, 36.953514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612614, 35.416950, 37.660072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233047, 35.431549, 37.534710>,  <42.005306, 35.440308, 37.459492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233047, 35.431549, 37.534710>,  <42.612614, 35.416950, 37.660072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233047, 35.431549, 37.534710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280407, -0.552939, 0.784622,
		-0.144658, 0.832422, 0.534927,
		-0.948918, 0.036496, -0.313404,
		41.948372, 35.442497, 37.440689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222008, 35.401863, 38.317657>,  <42.612614, 35.416950, 37.660072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222008, 35.401863, 38.317657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975842, 35.296631, 38.020458>,  <41.828140, 35.233490, 37.842140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975842, 35.296631, 38.020458>,  <42.222008, 35.401863, 38.317657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975842, 35.296631, 38.020458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304157, -0.790375, 0.531786,
		-0.727150, 0.553260, 0.406395,
		-0.615420, -0.263080, -0.742998,
		41.791214, 35.217709, 37.797558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631683, 35.172966, 38.631062>,  <42.222008, 35.401863, 38.317657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631683, 35.172966, 38.631062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599724, 35.037773, 38.255959>,  <41.580547, 34.956657, 38.030899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599724, 35.037773, 38.255959>,  <41.631683, 35.172966, 38.631062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599724, 35.037773, 38.255959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478930, -0.812046, 0.333480,
		-0.874210, 0.475763, -0.096988,
		-0.079899, -0.337981, -0.937755,
		41.575756, 34.936378, 37.974632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924843, 35.127312, 38.652542>,  <41.631683, 35.172966, 38.631062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924843, 35.127312, 38.652542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098404, 34.896687, 38.375614>,  <41.202541, 34.758312, 38.209457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098404, 34.896687, 38.375614>,  <40.924843, 35.127312, 38.652542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098404, 34.896687, 38.375614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480649, -0.798075, 0.363390,
		-0.762040, 0.175088, -0.623409,
		0.433902, -0.576559, -0.692321,
		41.228577, 34.723721, 38.167919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393810, 34.685520, 38.367378>,  <40.924843, 35.127312, 38.652542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393810, 34.685520, 38.367378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716946, 34.480396, 38.251152>,  <40.910828, 34.357323, 38.181416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716946, 34.480396, 38.251152>,  <40.393810, 34.685520, 38.367378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716946, 34.480396, 38.251152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471145, -0.858040, 0.204427,
		-0.354146, -0.028247, -0.934764,
		0.807839, -0.512806, -0.290562,
		40.959297, 34.326553, 38.163982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208130, 34.034451, 37.918232>,  <40.393810, 34.685520, 38.367378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208130, 34.034451, 37.918232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580414, 33.966591, 38.047844>,  <40.803783, 33.925877, 38.125610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580414, 33.966591, 38.047844>,  <40.208130, 34.034451, 37.918232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580414, 33.966591, 38.047844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257410, -0.933195, 0.250774,
		0.259837, -0.316807, -0.912205,
		0.930712, -0.169650, 0.324028,
		40.859627, 33.915695, 38.145054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442562, 33.409222, 37.626949>,  <40.208130, 34.034451, 37.918232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442562, 33.409222, 37.626949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664600, 33.459740, 37.955807>,  <40.797825, 33.490051, 38.153122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664600, 33.459740, 37.955807>,  <40.442562, 33.409222, 37.626949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664600, 33.459740, 37.955807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306029, -0.888067, 0.343049,
		0.773443, -0.442025, -0.454311,
		0.555095, 0.126297, 0.822142,
		40.831131, 33.497627, 38.202450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568871, 32.702213, 37.777267>,  <40.442562, 33.409222, 37.626949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568871, 32.702213, 37.777267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676548, 32.893688, 38.111546>,  <40.741154, 33.008575, 38.312115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676548, 32.893688, 38.111546>,  <40.568871, 32.702213, 37.777267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676548, 32.893688, 38.111546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301766, -0.782110, 0.545198,
		0.914589, -0.398947, -0.066084,
		0.269190, 0.478690, 0.835698,
		40.757305, 33.037296, 38.362255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174931, 32.391857, 38.161060>,  <40.568871, 32.702213, 37.777267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174931, 32.391857, 38.161060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924450, 32.565144, 38.420353>,  <40.774162, 32.669113, 38.575928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924450, 32.565144, 38.420353>,  <41.174931, 32.391857, 38.161060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924450, 32.565144, 38.420353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226567, -0.896654, 0.380368,
		0.746015, 0.091320, 0.659638,
		-0.626202, 0.433212, 0.648227,
		40.736591, 32.695107, 38.614822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212223, 31.897768, 38.742069>,  <41.174931, 32.391857, 38.161060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212223, 31.897768, 38.742069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930901, 32.159706, 38.852730>,  <40.762108, 32.316868, 38.919125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930901, 32.159706, 38.852730>,  <41.212223, 31.897768, 38.742069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930901, 32.159706, 38.852730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391305, -0.681516, 0.618399,
		0.593499, 0.326668, 0.735559,
		-0.703306, 0.654847, 0.276652,
		40.719910, 32.356159, 38.935726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170830, 31.867565, 39.494083>,  <41.212223, 31.897768, 38.742069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170830, 31.867565, 39.494083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826023, 32.011246, 39.351028>,  <40.619141, 32.097454, 39.265194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826023, 32.011246, 39.351028>,  <41.170830, 31.867565, 39.494083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826023, 32.011246, 39.351028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504179, -0.680430, 0.531807,
		-0.052323, 0.638739, 0.767643,
		-0.862013, 0.359204, -0.357641,
		40.567421, 32.119007, 39.243736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856537, 31.855598, 40.040661>,  <41.170830, 31.867565, 39.494083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856537, 31.855598, 40.040661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588886, 31.863995, 39.743519>,  <40.428295, 31.869032, 39.565235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588886, 31.863995, 39.743519>,  <40.856537, 31.855598, 40.040661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588886, 31.863995, 39.743519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505376, -0.745729, 0.434148,
		-0.544855, 0.665919, 0.509593,
		-0.669125, 0.020989, -0.742853,
		40.388149, 31.870291, 39.520664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170238, 31.997581, 40.307274>,  <40.856537, 31.855598, 40.040661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170238, 31.997581, 40.307274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097439, 31.825771, 39.953465>,  <40.053761, 31.722685, 39.741177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097439, 31.825771, 39.953465>,  <40.170238, 31.997581, 40.307274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097439, 31.825771, 39.953465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610788, -0.655578, 0.444023,
		-0.770594, 0.621069, -0.143034,
		-0.181999, -0.429524, -0.884525,
		40.042839, 31.696915, 39.688107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412632, 31.763758, 40.334579>,  <40.170238, 31.997581, 40.307274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412632, 31.763758, 40.334579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591652, 31.559952, 40.040615>,  <39.699062, 31.437668, 39.864235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591652, 31.559952, 40.040615>,  <39.412632, 31.763758, 40.334579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591652, 31.559952, 40.040615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425927, -0.844060, 0.325806,
		-0.786310, 0.167203, -0.594777,
		0.447551, -0.509516, -0.734909,
		39.725918, 31.407097, 39.820141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873562, 31.437214, 39.912537>,  <39.412632, 31.763758, 40.334579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873562, 31.437214, 39.912537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216049, 31.231176, 39.896675>,  <39.421539, 31.107553, 39.887157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216049, 31.231176, 39.896675>,  <38.873562, 31.437214, 39.912537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216049, 31.231176, 39.896675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466678, -0.804087, 0.368316,
		-0.221601, -0.296853, -0.928855,
		0.856216, -0.515095, -0.039652,
		39.472916, 31.076649, 39.884781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698349, 30.843283, 39.660656>,  <38.873562, 31.437214, 39.912537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698349, 30.843283, 39.660656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041828, 30.767408, 39.851089>,  <39.247917, 30.721884, 39.965351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041828, 30.767408, 39.851089>,  <38.698349, 30.843283, 39.660656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041828, 30.767408, 39.851089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371981, -0.869705, 0.324413,
		0.352515, -0.455667, -0.817374,
		0.858698, -0.189687, 0.476084,
		39.299438, 30.710503, 39.993916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838673, 30.169456, 39.582363>,  <38.698349, 30.843283, 39.660656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838673, 30.169456, 39.582363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807190, 29.785114, 39.688622>,  <38.788300, 29.554510, 39.752377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807190, 29.785114, 39.688622>,  <38.838673, 30.169456, 39.582363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807190, 29.785114, 39.688622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683449, 0.245995, 0.687302,
		-0.725743, -0.127460, -0.676055,
		-0.078703, -0.960854, 0.265641,
		38.783581, 29.496859, 39.768314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518871, 29.864029, 39.624001>,  <38.838673, 30.169456, 39.582363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518871, 29.864029, 39.624001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393448, 29.492517, 39.544960>,  <39.318192, 29.269609, 39.497536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393448, 29.492517, 39.544960>,  <39.518871, 29.864029, 39.624001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393448, 29.492517, 39.544960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312052, 0.095751, -0.945228,
		0.896829, -0.358048, 0.259804,
		-0.313561, -0.928781, -0.197602,
		39.299381, 29.213882, 39.485680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042217, 29.503269, 39.209171>,  <39.518871, 29.864029, 39.624001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042217, 29.503269, 39.209171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694042, 29.316950, 39.145454>,  <39.485138, 29.205158, 39.107224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694042, 29.316950, 39.145454>,  <40.042217, 29.503269, 39.209171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694042, 29.316950, 39.145454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191651, -0.022597, -0.981203,
		0.453443, -0.884603, 0.108940,
		-0.870437, -0.465798, -0.159289,
		39.432911, 29.177210, 39.097668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003029, 28.811255, 38.944286>,  <40.042217, 29.503269, 39.209171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003029, 28.811255, 38.944286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690044, 28.564587, 38.978867>,  <39.502254, 28.416586, 38.999615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690044, 28.564587, 38.978867>,  <40.003029, 28.811255, 38.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690044, 28.564587, 38.978867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622569, 0.777554, -0.088421,
		-0.012690, -0.123005, -0.992325,
		-0.782462, -0.616668, 0.086447,
		39.455307, 28.379585, 39.004799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571442, 28.780083, 38.307831>,  <40.003029, 28.811255, 38.944286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571442, 28.780083, 38.307831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359924, 28.710154, 38.640053>,  <39.233013, 28.668196, 38.839386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359924, 28.710154, 38.640053>,  <39.571442, 28.780083, 38.307831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359924, 28.710154, 38.640053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533502, 0.829536, -0.165062,
		-0.660116, -0.530384, -0.531920,
		-0.528793, -0.174821, 0.830551,
		39.201286, 28.657707, 38.889217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986595, 29.042067, 38.149891>,  <39.571442, 28.780083, 38.307831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986595, 29.042067, 38.149891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967262, 29.036770, 38.549389>,  <38.955662, 29.033592, 38.789085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967262, 29.036770, 38.549389>,  <38.986595, 29.042067, 38.149891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967262, 29.036770, 38.549389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498243, 0.866945, -0.012620,
		-0.865689, -0.498227, -0.048502,
		-0.048336, -0.013241, 0.998743,
		38.952763, 29.032797, 38.849010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332294, 29.249016, 38.408154>,  <38.986595, 29.042067, 38.149891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332294, 29.249016, 38.408154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571918, 29.324881, 38.719322>,  <38.715691, 29.370399, 38.906025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571918, 29.324881, 38.719322>,  <38.332294, 29.249016, 38.408154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571918, 29.324881, 38.719322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557986, 0.795674, 0.235701,
		-0.574268, -0.575267, 0.582481,
		0.599056, 0.189660, 0.777921,
		38.751637, 29.381779, 38.952698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962116, 29.742205, 38.372868>,  <38.332294, 29.249016, 38.408154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962116, 29.742205, 38.372868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850945, 29.584764, 38.022362>,  <38.784241, 29.490299, 37.812057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850945, 29.584764, 38.022362>,  <38.962116, 29.742205, 38.372868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850945, 29.584764, 38.022362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695179, 0.547117, -0.466250,
		0.662934, -0.738742, 0.121564,
		-0.277929, -0.393602, -0.876261,
		38.767567, 29.466684, 37.759483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517456, 29.477379, 37.877979>,  <38.962116, 29.742205, 38.372868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517456, 29.477379, 37.877979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218407, 29.563103, 37.626541>,  <39.038979, 29.614538, 37.475677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218407, 29.563103, 37.626541>,  <39.517456, 29.477379, 37.877979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218407, 29.563103, 37.626541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638735, 0.491229, -0.592209,
		0.181865, -0.844254, -0.504143,
		-0.747624, 0.214312, -0.628592,
		38.994118, 29.627396, 37.437962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777809, 29.390263, 37.221928>,  <39.517456, 29.477379, 37.877979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777809, 29.390263, 37.221928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461414, 29.632833, 37.189453>,  <39.271580, 29.778376, 37.169968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461414, 29.632833, 37.189453>,  <39.777809, 29.390263, 37.221928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461414, 29.632833, 37.189453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573773, 0.689146, -0.442563,
		-0.212432, -0.396643, -0.893055,
		-0.790985, 0.606426, -0.081187,
		39.224117, 29.814760, 37.165096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755817, 29.572586, 36.526802>,  <39.777809, 29.390263, 37.221928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755817, 29.572586, 36.526802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550312, 29.866219, 36.704418>,  <39.427010, 30.042398, 36.810989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550312, 29.866219, 36.704418>,  <39.755817, 29.572586, 36.526802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550312, 29.866219, 36.704418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514172, 0.677781, -0.525585,
		-0.686786, -0.041712, -0.725662,
		-0.513763, 0.734079, 0.444043,
		39.396183, 30.086443, 36.837631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557724, 29.934500, 36.057468>,  <39.755817, 29.572586, 36.526802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557724, 29.934500, 36.057468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544979, 30.168724, 36.381470>,  <39.537334, 30.309258, 36.575871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544979, 30.168724, 36.381470>,  <39.557724, 29.934500, 36.057468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544979, 30.168724, 36.381470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517341, 0.703068, -0.487907,
		-0.855186, 0.403503, -0.325333,
		-0.031859, 0.585559, 0.810003,
		39.535419, 30.344393, 36.624470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242188, 30.713066, 35.884171>,  <39.557724, 29.934500, 36.057468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242188, 30.713066, 35.884171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485012, 30.702393, 36.201855>,  <39.630707, 30.695990, 36.392464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485012, 30.702393, 36.201855>,  <39.242188, 30.713066, 35.884171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485012, 30.702393, 36.201855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506444, 0.783162, -0.360794,
		-0.612367, 0.621246, 0.488938,
		0.607059, -0.026681, 0.794209,
		39.667130, 30.694387, 36.440117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408443, 31.415697, 36.012505>,  <39.242188, 30.713066, 35.884171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408443, 31.415697, 36.012505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685421, 31.224306, 36.228497>,  <39.851608, 31.109472, 36.358089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685421, 31.224306, 36.228497>,  <39.408443, 31.415697, 36.012505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685421, 31.224306, 36.228497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686659, 0.666744, -0.289744,
		-0.221392, 0.571414, 0.790235,
		0.692448, -0.478475, 0.539978,
		39.893154, 31.080763, 36.390491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759232, 32.000294, 36.364185>,  <39.408443, 31.415697, 36.012505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759232, 32.000294, 36.364185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029881, 31.707981, 36.400284>,  <40.192268, 31.532593, 36.421944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029881, 31.707981, 36.400284>,  <39.759232, 32.000294, 36.364185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029881, 31.707981, 36.400284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733702, 0.679470, 0.001178,
		-0.062178, 0.065415, 0.995919,
		0.676620, -0.730781, 0.090243,
		40.232868, 31.488747, 36.427357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231285, 32.318314, 36.793480>,  <39.759232, 32.000294, 36.364185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231285, 32.318314, 36.793480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390423, 32.006474, 36.600010>,  <40.485905, 31.819368, 36.483929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390423, 32.006474, 36.600010>,  <40.231285, 32.318314, 36.793480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390423, 32.006474, 36.600010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815414, 0.542095, -0.203057,
		0.420503, -0.313613, 0.851366,
		0.397841, -0.779602, -0.483677,
		40.509773, 31.772593, 36.454906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979252, 32.102261, 37.051346>,  <40.231285, 32.318314, 36.793480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979252, 32.102261, 37.051346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978935, 31.951214, 36.680962>,  <40.978745, 31.860586, 36.458729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978935, 31.951214, 36.680962>,  <40.979252, 32.102261, 37.051346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978935, 31.951214, 36.680962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788928, 0.568754, -0.232617,
		0.614485, -0.730702, 0.297460,
		-0.000792, -0.377614, -0.925963,
		40.978699, 31.837929, 36.403172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744328, 31.880413, 36.884327>,  <40.979252, 32.102261, 37.051346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744328, 31.880413, 36.884327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566689, 31.908655, 36.527050>,  <41.460106, 31.925600, 36.312683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566689, 31.908655, 36.527050>,  <41.744328, 31.880413, 36.884327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566689, 31.908655, 36.527050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743103, 0.585980, -0.323151,
		0.500575, -0.807244, -0.312701,
		-0.444098, 0.070608, -0.893192,
		41.433460, 31.929838, 36.259094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138233, 31.628256, 36.469013>,  <41.744328, 31.880413, 36.884327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138233, 31.628256, 36.469013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920181, 31.851084, 36.218410>,  <41.789352, 31.984781, 36.068050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920181, 31.851084, 36.218410>,  <42.138233, 31.628256, 36.469013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920181, 31.851084, 36.218410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834237, 0.434409, -0.339614,
		0.082971, -0.707787, -0.701537,
		-0.545128, 0.557070, -0.626505,
		41.756641, 32.018204, 36.030460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519611, 31.656168, 35.856956>,  <42.138233, 31.628256, 36.469013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519611, 31.656168, 35.856956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282497, 31.975864, 35.817322>,  <42.140228, 32.167683, 35.793541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282497, 31.975864, 35.817322>,  <42.519611, 31.656168, 35.856956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282497, 31.975864, 35.817322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794062, 0.559498, -0.237545,
		-0.134416, -0.219496, -0.966309,
		-0.592788, 0.799239, -0.099088,
		42.104660, 32.215637, 35.787594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692410, 31.985981, 35.256031>,  <42.519611, 31.656168, 35.856956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692410, 31.985981, 35.256031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505844, 32.269875, 35.467213>,  <42.393906, 32.440212, 35.593922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505844, 32.269875, 35.467213>,  <42.692410, 31.985981, 35.256031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505844, 32.269875, 35.467213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733034, 0.644179, -0.218393,
		-0.495099, 0.285147, -0.820712,
		-0.466411, 0.709736, 0.527955,
		42.365921, 32.482796, 35.625599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743191, 32.580780, 34.862659>,  <42.692410, 31.985981, 35.256031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743191, 32.580780, 34.862659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630875, 32.744816, 35.209759>,  <42.563484, 32.843235, 35.418018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630875, 32.744816, 35.209759>,  <42.743191, 32.580780, 34.862659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630875, 32.744816, 35.209759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574534, 0.796052, -0.190295,
		-0.768810, 0.445119, -0.459129,
		-0.280787, 0.410086, 0.867749,
		42.546638, 32.867844, 35.470085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615170, 33.316128, 34.701996>,  <42.743191, 32.580780, 34.862659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615170, 33.316128, 34.701996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651936, 33.299469, 35.099953>,  <42.673996, 33.289474, 35.338726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651936, 33.299469, 35.099953>,  <42.615170, 33.316128, 34.701996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651936, 33.299469, 35.099953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571301, 0.820534, -0.018430,
		-0.815578, 0.570079, 0.099214,
		0.091915, -0.041650, 0.994895,
		42.679512, 33.286972, 35.398422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575146, 34.077625, 34.884003>,  <42.615170, 33.316128, 34.701996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575146, 34.077625, 34.884003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740017, 33.903080, 35.203926>,  <42.838940, 33.798351, 35.395882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740017, 33.903080, 35.203926>,  <42.575146, 34.077625, 34.884003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740017, 33.903080, 35.203926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533374, 0.827266, 0.176471,
		-0.738660, 0.353859, 0.573730,
		0.412181, -0.436365, 0.799808,
		42.863670, 33.772171, 35.443867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488022, 34.608982, 35.477863>,  <42.575146, 34.077625, 34.884003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488022, 34.608982, 35.477863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780514, 34.348377, 35.558689>,  <42.956009, 34.192013, 35.607185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780514, 34.348377, 35.558689>,  <42.488022, 34.608982, 35.477863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780514, 34.348377, 35.558689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597686, 0.754714, 0.270515,
		-0.328743, -0.077040, 0.941272,
		0.731231, -0.651515, 0.202061,
		42.999882, 34.152924, 35.619308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779739, 34.810432, 36.156544>,  <42.488022, 34.608982, 35.477863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779739, 34.810432, 36.156544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068996, 34.607746, 35.968796>,  <43.242550, 34.486134, 35.856148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068996, 34.607746, 35.968796>,  <42.779739, 34.810432, 36.156544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068996, 34.607746, 35.968796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602939, 0.794612, 0.071102,
		0.336935, -0.334416, 0.880137,
		0.723145, -0.506712, -0.469366,
		43.285938, 34.455734, 35.827988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418076, 34.804470, 36.556446>,  <42.779739, 34.810432, 36.156544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418076, 34.804470, 36.556446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529850, 34.741493, 36.177578>,  <43.596912, 34.703705, 35.950256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529850, 34.741493, 36.177578>,  <43.418076, 34.804470, 36.556446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529850, 34.741493, 36.177578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716555, 0.690815, 0.096564,
		0.639115, -0.705681, 0.305854,
		0.279431, -0.157445, -0.947169,
		43.613678, 34.694260, 35.893429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148556, 34.913883, 36.594440>,  <43.418076, 34.804470, 36.556446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148556, 34.913883, 36.594440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080296, 34.923416, 36.200424>,  <44.039337, 34.929134, 35.964012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080296, 34.923416, 36.200424>,  <44.148556, 34.913883, 36.594440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080296, 34.923416, 36.200424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652382, 0.751934, -0.094833,
		0.738427, -0.658807, -0.143866,
		-0.170655, 0.023828, -0.985043,
		44.029099, 34.930565, 35.904911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794373, 34.939808, 36.332691>,  <44.148556, 34.913883, 36.594440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794373, 34.939808, 36.332691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567806, 35.072037, 36.030727>,  <44.431866, 35.151375, 35.849548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567806, 35.072037, 36.030727>,  <44.794373, 34.939808, 36.332691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567806, 35.072037, 36.030727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738647, 0.609874, -0.287148,
		0.365477, -0.720259, -0.589622,
		-0.566416, 0.330577, -0.754912,
		44.397881, 35.171211, 35.804253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241238, 35.011936, 35.775417>,  <44.794373, 34.939808, 36.332691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241238, 35.011936, 35.775417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938206, 35.264359, 35.708675>,  <44.756386, 35.415813, 35.668629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938206, 35.264359, 35.708675>,  <45.241238, 35.011936, 35.775417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938206, 35.264359, 35.708675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648282, 0.697552, -0.305209,
		-0.076212, -0.339391, -0.937553,
		-0.757577, 0.631059, -0.166859,
		44.710934, 35.453678, 35.658619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903286, 35.242043, 35.402519>,  <45.241238, 35.011936, 35.775417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903286, 35.242043, 35.402519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054119, 35.075493, 35.071598>,  <46.144619, 34.975563, 34.873043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054119, 35.075493, 35.071598>,  <45.903286, 35.242043, 35.402519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054119, 35.075493, 35.071598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890026, -0.084227, 0.448062,
		-0.256245, -0.905282, 0.338827,
		0.377084, -0.416378, -0.827307,
		46.167244, 34.950581, 34.823406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.284698, 34.671806, 35.623596>,  <45.903286, 35.242043, 35.402519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.284698, 34.671806, 35.623596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443527, 34.844032, 35.299385>,  <46.538826, 34.947369, 35.104858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443527, 34.844032, 35.299385>,  <46.284698, 34.671806, 35.623596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443527, 34.844032, 35.299385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903302, -0.027058, 0.428152,
		0.162415, -0.902155, -0.399672,
		0.397074, 0.430563, -0.810524,
		46.562649, 34.973202, 35.056229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978416, 34.381241, 35.326427>,  <46.284698, 34.671806, 35.623596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978416, 34.381241, 35.326427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975800, 34.765369, 35.214905>,  <46.974228, 34.995846, 35.147991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975800, 34.765369, 35.214905>,  <46.978416, 34.381241, 35.326427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.975800, 34.765369, 35.214905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938888, 0.101858, 0.328808,
		0.344161, -0.259619, -0.902303,
		-0.006543, 0.960324, -0.278809,
		46.973835, 35.053467, 35.131264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.623497, 34.524498, 34.948410>,  <46.978416, 34.381241, 35.326427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.623497, 34.524498, 34.948410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.490673, 34.833828, 35.164452>,  <47.410976, 35.019424, 35.294075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.490673, 34.833828, 35.164452>,  <47.623497, 34.524498, 34.948410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.490673, 34.833828, 35.164452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917310, 0.131374, 0.375877,
		0.219719, 0.620254, -0.753000,
		-0.332063, 0.773322, 0.540100,
		47.391052, 35.065823, 35.326481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.020023, 38.997746, 46.117134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672487, 38.799858, 46.109543>,  <31.463964, 38.681126, 46.104988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672487, 38.799858, 46.109543>,  <32.020023, 38.997746, 46.117134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672487, 38.799858, 46.109543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070633, -0.085926, -0.993795,
		0.490021, -0.864793, 0.109600,
		-0.868844, -0.494722, -0.018977,
		31.411835, 38.651443, 46.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203773, 38.415257, 45.648876>,  <32.020023, 38.997746, 46.117134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203773, 38.415257, 45.648876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.805067, 38.392200, 45.671288>,  <31.565844, 38.378368, 45.684734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.805067, 38.392200, 45.671288>,  <32.203773, 38.415257, 45.648876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805067, 38.392200, 45.671288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045827, -0.165134, -0.985206,
		0.066038, -0.984586, 0.161958,
		-0.996764, -0.057639, 0.056026,
		31.506039, 38.374908, 45.688095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839260, 37.739510, 45.544773>,  <32.203773, 38.415257, 45.648876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839260, 37.739510, 45.544773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573521, 38.015354, 45.429478>,  <31.414078, 38.180859, 45.360302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573521, 38.015354, 45.429478>,  <31.839260, 37.739510, 45.544773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573521, 38.015354, 45.429478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171959, -0.234276, -0.956841,
		-0.727374, -0.685240, 0.037056,
		-0.664347, 0.689609, -0.288239,
		31.374216, 38.222237, 45.343006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376776, 37.421547, 45.087971>,  <31.839260, 37.739510, 45.544773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376776, 37.421547, 45.087971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.289639, 37.803230, 45.005966>,  <31.237356, 38.032242, 44.956764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.289639, 37.803230, 45.005966>,  <31.376776, 37.421547, 45.087971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289639, 37.803230, 45.005966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122094, -0.235053, -0.964284,
		-0.968316, -0.185034, 0.167708,
		-0.217845, 0.954208, -0.205014,
		31.224285, 38.089493, 44.944462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947252, 37.391994, 44.603931>,  <31.376776, 37.421547, 45.087971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947252, 37.391994, 44.603931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.072481, 37.767040, 44.543442>,  <31.147617, 37.992065, 44.507149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.072481, 37.767040, 44.543442>,  <30.947252, 37.391994, 44.603931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072481, 37.767040, 44.543442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088174, -0.187238, -0.978349,
		-0.945628, 0.292958, -0.141291,
		0.313070, 0.937613, -0.151227,
		31.166403, 38.048325, 44.498074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680727, 37.574543, 43.929264>,  <30.947252, 37.391994, 44.603931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680727, 37.574543, 43.929264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.985661, 37.820156, 44.011055>,  <31.168621, 37.967522, 44.060131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.985661, 37.820156, 44.011055>,  <30.680727, 37.574543, 43.929264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985661, 37.820156, 44.011055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266737, -0.010229, -0.963715,
		-0.589658, 0.789217, -0.171583,
		0.762335, 0.614030, 0.204482,
		31.214361, 38.004364, 44.072399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683939, 37.952385, 43.315594>,  <30.680727, 37.574543, 43.929264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683939, 37.952385, 43.315594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.035887, 38.002026, 43.499084>,  <31.247055, 38.031811, 43.609180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.035887, 38.002026, 43.499084>,  <30.683939, 37.952385, 43.315594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035887, 38.002026, 43.499084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474519, -0.177060, -0.862254,
		-0.025783, 0.976345, -0.214676,
		0.879868, 0.124099, 0.458729,
		31.299847, 38.039257, 43.636703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052465, 38.378773, 42.844749>,  <30.683939, 37.952385, 43.315594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052465, 38.378773, 42.844749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.326300, 38.195011, 43.071125>,  <31.490601, 38.084755, 43.206951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.326300, 38.195011, 43.071125>,  <31.052465, 38.378773, 42.844749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326300, 38.195011, 43.071125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591365, -0.103905, -0.799682,
		0.426184, 0.882127, 0.200546,
		0.684583, -0.459407, 0.565942,
		31.531675, 38.057190, 43.240906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613585, 38.659122, 42.646763>,  <31.052465, 38.378773, 42.844749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613585, 38.659122, 42.646763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.747581, 38.330318, 42.830975>,  <31.827980, 38.133038, 42.941502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.747581, 38.330318, 42.830975>,  <31.613585, 38.659122, 42.646763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747581, 38.330318, 42.830975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494065, -0.262935, -0.828713,
		0.802296, 0.505143, 0.318044,
		0.334993, -0.822007, 0.460525,
		31.848080, 38.083717, 42.969131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336685, 38.623852, 42.629620>,  <31.613585, 38.659122, 42.646763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336685, 38.623852, 42.629620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.207909, 38.245792, 42.651680>,  <32.130642, 38.018955, 42.664917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.207909, 38.245792, 42.651680>,  <32.336685, 38.623852, 42.629620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207909, 38.245792, 42.651680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607386, -0.250874, -0.753754,
		0.726248, -0.209167, 0.654838,
		-0.321942, -0.945151, 0.055152,
		32.111324, 37.962246, 42.668224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992798, 38.349560, 42.755199>,  <32.336685, 38.623852, 42.629620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992798, 38.349560, 42.755199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716194, 38.098309, 42.612495>,  <32.550232, 37.947559, 42.526875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716194, 38.098309, 42.612495>,  <32.992798, 38.349560, 42.755199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716194, 38.098309, 42.612495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683519, -0.409171, -0.604467,
		0.233708, -0.661843, 0.712281,
		-0.691507, -0.628127, -0.356755,
		32.508743, 37.909870, 42.505470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349136, 37.681835, 42.553757>,  <32.992798, 38.349560, 42.755199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349136, 37.681835, 42.553757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.991428, 37.670155, 42.375126>,  <32.776806, 37.663147, 42.267948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.991428, 37.670155, 42.375126>,  <33.349136, 37.681835, 42.553757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991428, 37.670155, 42.375126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424506, -0.371319, -0.825783,
		-0.141711, -0.928046, 0.344454,
		-0.894267, -0.029200, -0.446581,
		32.723148, 37.661396, 42.241150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357567, 36.975147, 42.239178>,  <33.349136, 37.681835, 42.553757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357567, 36.975147, 42.239178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.089359, 37.211388, 42.059578>,  <32.928432, 37.353130, 41.951820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.089359, 37.211388, 42.059578>,  <33.357567, 36.975147, 42.239178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089359, 37.211388, 42.059578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406301, -0.214046, -0.888315,
		-0.620742, -0.778061, -0.096438,
		-0.670521, 0.590597, -0.448995,
		32.888203, 37.388565, 41.924881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072929, 36.598404, 41.651699>,  <33.357567, 36.975147, 42.239178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072929, 36.598404, 41.651699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.014523, 36.984207, 41.563698>,  <32.979477, 37.215691, 41.510899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.014523, 36.984207, 41.563698>,  <33.072929, 36.598404, 41.651699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014523, 36.984207, 41.563698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396449, -0.146694, -0.906261,
		-0.906370, -0.219553, -0.360958,
		-0.146022, 0.964509, -0.220000,
		32.970715, 37.273560, 41.497696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795101, 36.600014, 41.034367>,  <33.072929, 36.598404, 41.651699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795101, 36.600014, 41.034367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.906208, 36.983936, 41.050404>,  <32.972874, 37.214291, 41.060024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.906208, 36.983936, 41.050404>,  <32.795101, 36.600014, 41.034367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906208, 36.983936, 41.050404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370682, -0.068585, -0.926224,
		-0.886250, 0.272139, -0.374835,
		0.277770, 0.959810, 0.040094,
		32.989540, 37.271881, 41.062431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534863, 36.911350, 40.429623>,  <32.795101, 36.600014, 41.034367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534863, 36.911350, 40.429623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.824005, 37.164925, 40.539608>,  <32.997490, 37.317070, 40.605598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.824005, 37.164925, 40.539608>,  <32.534863, 36.911350, 40.429623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824005, 37.164925, 40.539608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407153, -0.069246, -0.910731,
		-0.558305, 0.770280, -0.308163,
		0.722857, 0.633935, 0.274962,
		33.040863, 37.355106, 40.622097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568535, 37.406193, 39.937801>,  <32.534863, 36.911350, 40.429623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568535, 37.406193, 39.937801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.930645, 37.452717, 40.101242>,  <33.147911, 37.480633, 40.199306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.930645, 37.452717, 40.101242>,  <32.568535, 37.406193, 39.937801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930645, 37.452717, 40.101242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387274, 0.169447, -0.906259,
		-0.174644, 0.978652, 0.108352,
		0.905272, 0.116311, 0.408600,
		33.202229, 37.487610, 40.223824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826466, 37.943150, 39.593056>,  <32.568535, 37.406193, 39.937801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826466, 37.943150, 39.593056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.141857, 37.775154, 39.772793>,  <33.331093, 37.674358, 39.880634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.141857, 37.775154, 39.772793>,  <32.826466, 37.943150, 39.593056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141857, 37.775154, 39.772793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502052, 0.017438, -0.864661,
		0.355314, 0.907361, 0.224606,
		0.788477, -0.419990, 0.449347,
		33.378399, 37.649158, 39.907597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368950, 38.346935, 39.473465>,  <32.826466, 37.943150, 39.593056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368950, 38.346935, 39.473465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512985, 37.983582, 39.558475>,  <33.599407, 37.765568, 39.609482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512985, 37.983582, 39.558475>,  <33.368950, 38.346935, 39.473465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512985, 37.983582, 39.558475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780584, 0.168610, -0.601880,
		0.510906, 0.382625, 0.769788,
		0.360088, -0.908388, 0.212527,
		33.621014, 37.711063, 39.622234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017044, 38.484840, 39.492382>,  <33.368950, 38.346935, 39.473465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017044, 38.484840, 39.492382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.999718, 38.088543, 39.440937>,  <33.989323, 37.850765, 39.410069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.999718, 38.088543, 39.440937>,  <34.017044, 38.484840, 39.492382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999718, 38.088543, 39.440937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712364, 0.059630, -0.699273,
		0.700472, -0.121914, 0.703190,
		-0.043320, -0.990748, -0.128616,
		33.986721, 37.791317, 39.402351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738564, 38.316811, 39.488174>,  <34.017044, 38.484840, 39.492382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738564, 38.316811, 39.488174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.529167, 38.029915, 39.304207>,  <34.403530, 37.857777, 39.193829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.529167, 38.029915, 39.304207>,  <34.738564, 38.316811, 39.488174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529167, 38.029915, 39.304207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594534, 0.079157, -0.800164,
		0.610317, -0.692313, 0.384987,
		-0.523490, -0.717242, -0.459915,
		34.372120, 37.814743, 39.166233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265289, 37.926445, 39.223888>,  <34.738564, 38.316811, 39.488174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265289, 37.926445, 39.223888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948296, 37.797657, 39.016697>,  <34.758099, 37.720387, 38.892380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948296, 37.797657, 39.016697>,  <35.265289, 37.926445, 39.223888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948296, 37.797657, 39.016697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539004, 0.027672, -0.841848,
		0.285381, -0.946346, 0.151612,
		-0.792485, -0.321967, -0.517982,
		34.710548, 37.701065, 38.861301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035652, 37.753654, 39.251205>,  <35.265289, 37.926445, 39.223888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035652, 37.753654, 39.251205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211807, 38.098618, 39.151356>,  <36.317501, 38.305595, 39.091446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211807, 38.098618, 39.151356>,  <36.035652, 37.753654, 39.251205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211807, 38.098618, 39.151356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239666, 0.380878, 0.893024,
		0.865226, -0.333453, 0.374424,
		0.440391, 0.862404, -0.249628,
		36.343925, 38.357338, 39.076466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534298, 37.946228, 39.859703>,  <36.035652, 37.753654, 39.251205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534298, 37.946228, 39.859703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474976, 38.284531, 39.654690>,  <36.439381, 38.487514, 39.531681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474976, 38.284531, 39.654690>,  <36.534298, 37.946228, 39.859703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474976, 38.284531, 39.654690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078223, 0.506613, 0.858618,
		0.985843, 0.167432, -0.008977,
		-0.148308, 0.845760, -0.512538,
		36.430485, 38.538258, 39.500927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017883, 38.468754, 40.162525>,  <36.534298, 37.946228, 39.859703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017883, 38.468754, 40.162525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690659, 38.635288, 40.003807>,  <36.494324, 38.735207, 39.908577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690659, 38.635288, 40.003807>,  <37.017883, 38.468754, 40.162525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690659, 38.635288, 40.003807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158271, 0.500324, 0.851250,
		0.552931, 0.759173, -0.343401,
		-0.818057, 0.416332, -0.396799,
		36.445240, 38.760189, 39.884766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044037, 39.128666, 40.479935>,  <37.017883, 38.468754, 40.162525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044037, 39.128666, 40.479935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674500, 39.146183, 40.327835>,  <36.452778, 39.156693, 40.236576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674500, 39.146183, 40.327835>,  <37.044037, 39.128666, 40.479935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674500, 39.146183, 40.327835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272522, 0.622327, 0.733785,
		0.268777, 0.781531, -0.562999,
		-0.923846, 0.043795, -0.380252,
		36.397346, 39.159321, 40.213760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901157, 39.832844, 40.464149>,  <37.044037, 39.128666, 40.479935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901157, 39.832844, 40.464149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553463, 39.635197, 40.457394>,  <36.344849, 39.516609, 40.453342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553463, 39.635197, 40.457394>,  <36.901157, 39.832844, 40.464149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553463, 39.635197, 40.457394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365100, 0.618494, 0.695821,
		-0.333374, 0.610995, -0.718017,
		-0.869232, -0.494116, -0.016885,
		36.292694, 39.486961, 40.452328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362095, 40.349964, 40.557415>,  <36.901157, 39.832844, 40.464149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362095, 40.349964, 40.557415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211796, 39.994228, 40.661633>,  <36.121616, 39.780785, 40.724163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211796, 39.994228, 40.661633>,  <36.362095, 40.349964, 40.557415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211796, 39.994228, 40.661633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409588, 0.411569, 0.814155,
		-0.831295, 0.199201, -0.518910,
		-0.375748, -0.889342, 0.260545,
		36.099072, 39.727425, 40.739796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684246, 40.509838, 40.614109>,  <36.362095, 40.349964, 40.557415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684246, 40.509838, 40.614109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730869, 40.171474, 40.822285>,  <35.758842, 39.968456, 40.947189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730869, 40.171474, 40.822285>,  <35.684246, 40.509838, 40.614109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730869, 40.171474, 40.822285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449442, 0.422362, 0.787154,
		-0.885672, -0.325660, -0.330954,
		0.116562, -0.845905, 0.520439,
		35.765839, 39.917702, 40.978416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985622, 40.313938, 40.784588>,  <35.684246, 40.509838, 40.614109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985622, 40.313938, 40.784588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241264, 40.159924, 41.050911>,  <35.394650, 40.067513, 41.210705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241264, 40.159924, 41.050911>,  <34.985622, 40.313938, 40.784588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241264, 40.159924, 41.050911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565810, 0.350993, 0.746098,
		-0.520969, -0.853551, 0.006461,
		0.639101, -0.385038, 0.665805,
		35.432995, 40.044411, 41.250652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640499, 39.968788, 41.237125>,  <34.985622, 40.313938, 40.784588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640499, 39.968788, 41.237125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974503, 40.023724, 41.450256>,  <35.174904, 40.056686, 41.578133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974503, 40.023724, 41.450256>,  <34.640499, 39.968788, 41.237125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974503, 40.023724, 41.450256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549845, 0.244926, 0.798549,
		-0.020829, -0.959765, 0.280032,
		0.835007, 0.137342, 0.532824,
		35.225006, 40.064926, 41.610104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501797, 39.717167, 41.812492>,  <34.640499, 39.968788, 41.237125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501797, 39.717167, 41.812492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816830, 39.950233, 41.892712>,  <35.005848, 40.090073, 41.940842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816830, 39.950233, 41.892712>,  <34.501797, 39.717167, 41.812492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816830, 39.950233, 41.892712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449369, 0.320381, 0.833921,
		0.421649, -0.746896, 0.514158,
		0.787578, 0.582669, 0.200543,
		35.053104, 40.125034, 41.952873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788551, 39.487812, 42.486542>,  <34.501797, 39.717167, 41.812492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788551, 39.487812, 42.486542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895737, 39.863983, 42.402836>,  <34.960049, 40.089687, 42.352612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895737, 39.863983, 42.402836>,  <34.788551, 39.487812, 42.486542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895737, 39.863983, 42.402836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432121, 0.311453, 0.846327,
		0.861085, -0.136357, 0.489836,
		0.267964, 0.940427, -0.209265,
		34.976128, 40.146111, 42.340057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740314, 39.710396, 43.122597>,  <34.788551, 39.487812, 42.486542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740314, 39.710396, 43.122597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812126, 40.048485, 42.921253>,  <34.855213, 40.251339, 42.800446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812126, 40.048485, 42.921253>,  <34.740314, 39.710396, 43.122597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812126, 40.048485, 42.921253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239485, 0.533834, 0.810967,
		0.954156, -0.025048, 0.298258,
		0.179533, 0.845218, -0.503363,
		34.865986, 40.302052, 42.770245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230587, 40.053833, 43.480949>,  <34.740314, 39.710396, 43.122597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230587, 40.053833, 43.480949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023254, 40.321312, 43.267715>,  <34.898853, 40.481800, 43.139774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023254, 40.321312, 43.267715>,  <35.230587, 40.053833, 43.480949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023254, 40.321312, 43.267715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323229, 0.423933, 0.846052,
		0.791743, 0.610844, -0.003596,
		-0.518331, 0.668693, -0.533088,
		34.867756, 40.521919, 43.107788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385090, 40.628342, 43.832855>,  <35.230587, 40.053833, 43.480949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385090, 40.628342, 43.832855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.050346, 40.690292, 43.622833>,  <34.849499, 40.727463, 43.496819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.050346, 40.690292, 43.622833>,  <35.385090, 40.628342, 43.832855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050346, 40.690292, 43.622833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444273, 0.368222, 0.816721,
		0.319827, 0.916748, -0.239343,
		-0.836859, 0.154876, -0.525054,
		34.799290, 40.736755, 43.465317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112972, 41.113983, 44.165600>,  <35.385090, 40.628342, 43.832855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112972, 41.113983, 44.165600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782627, 41.010334, 43.965279>,  <34.584419, 40.948143, 43.845085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782627, 41.010334, 43.965279>,  <35.112972, 41.113983, 44.165600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782627, 41.010334, 43.965279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537543, 0.093589, 0.838027,
		-0.170286, 0.961298, -0.216584,
		-0.825863, -0.259128, -0.500802,
		34.534866, 40.932594, 43.815037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617126, 41.523991, 44.498943>,  <35.112972, 41.113983, 44.165600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617126, 41.523991, 44.498943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.417492, 41.211224, 44.349537>,  <34.297710, 41.023563, 44.259895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.417492, 41.211224, 44.349537>,  <34.617126, 41.523991, 44.498943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417492, 41.211224, 44.349537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679662, 0.085829, 0.728487,
		-0.537560, 0.617442, -0.574277,
		-0.499089, -0.781920, -0.373514,
		34.267765, 40.976646, 44.237484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977894, 41.645752, 44.790852>,  <34.617126, 41.523991, 44.498943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977894, 41.645752, 44.790852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960941, 41.264832, 44.669971>,  <33.950771, 41.036278, 44.597443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960941, 41.264832, 44.669971>,  <33.977894, 41.645752, 44.790852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960941, 41.264832, 44.669971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572139, -0.224834, 0.788738,
		-0.819061, 0.206328, -0.535320,
		-0.042381, -0.952302, -0.302200,
		33.948227, 40.979141, 44.579311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268600, 41.500107, 44.888573>,  <33.977894, 41.645752, 44.790852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268600, 41.500107, 44.888573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508102, 41.181255, 44.857399>,  <33.651802, 40.989944, 44.838696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508102, 41.181255, 44.857399>,  <33.268600, 41.500107, 44.888573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508102, 41.181255, 44.857399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509229, -0.453981, 0.731154,
		-0.618207, -0.398096, -0.677746,
		0.598754, -0.797132, -0.077932,
		33.687729, 40.942116, 44.834019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.803326, 40.855854, 44.795773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152691, 40.708561, 44.923244>,  <33.362309, 40.620186, 44.999725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152691, 40.708561, 44.923244>,  <32.803326, 40.855854, 44.795773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152691, 40.708561, 44.923244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480704, -0.547193, 0.685203,
		-0.077934, -0.751655, -0.654935,
		0.873413, -0.368230, 0.318678,
		33.414715, 40.598091, 45.018848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740955, 40.061642, 44.943336>,  <32.803326, 40.855854, 44.795773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740955, 40.061642, 44.943336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.044994, 40.203644, 45.161041>,  <33.227417, 40.288845, 45.291664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.044994, 40.203644, 45.161041>,  <32.740955, 40.061642, 44.943336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044994, 40.203644, 45.161041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316616, -0.529090, 0.787285,
		0.567455, -0.770736, -0.289759,
		0.760098, 0.355006, 0.544262,
		33.273026, 40.310146, 45.324322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960445, 39.469090, 45.372322>,  <32.740955, 40.061642, 44.943336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960445, 39.469090, 45.372322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144127, 39.775295, 45.552597>,  <33.254337, 39.959019, 45.660763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144127, 39.775295, 45.552597>,  <32.960445, 39.469090, 45.372322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144127, 39.775295, 45.552597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096331, -0.461437, 0.881927,
		0.883092, -0.448400, -0.138151,
		0.459204, 0.765515, 0.450686,
		33.281887, 40.004951, 45.687801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392857, 39.151424, 45.879150>,  <32.960445, 39.469090, 45.372322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392857, 39.151424, 45.879150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411041, 39.534943, 45.991329>,  <33.421951, 39.765053, 46.058636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411041, 39.534943, 45.991329>,  <33.392857, 39.151424, 45.879150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411041, 39.534943, 45.991329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053645, -0.282673, 0.957715,
		0.997525, -0.028491, -0.064284,
		0.045458, 0.958793, 0.280445,
		33.424679, 39.822582, 46.075462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764862, 39.125366, 46.416683>,  <33.392857, 39.151424, 45.879150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764862, 39.125366, 46.416683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595547, 39.485706, 46.455261>,  <33.493958, 39.701908, 46.478409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595547, 39.485706, 46.455261>,  <33.764862, 39.125366, 46.416683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595547, 39.485706, 46.455261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092255, -0.063039, 0.993738,
		0.901287, 0.429533, -0.056425,
		-0.423286, 0.900848, 0.096443,
		33.468559, 39.755962, 46.484196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237152, 39.451225, 46.816399>,  <33.764862, 39.125366, 46.416683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237152, 39.451225, 46.816399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871925, 39.613220, 46.835556>,  <33.652790, 39.710419, 46.847050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871925, 39.613220, 46.835556>,  <34.237152, 39.451225, 46.816399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871925, 39.613220, 46.835556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065615, 0.029987, 0.997394,
		0.402497, 0.913830, -0.053953,
		-0.913067, 0.404988, 0.047891,
		33.598007, 39.734718, 46.849922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243320, 40.005005, 47.355171>,  <34.237152, 39.451225, 46.816399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243320, 40.005005, 47.355171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853809, 39.914116, 47.350536>,  <33.620102, 39.859585, 47.347755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853809, 39.914116, 47.350536>,  <34.243320, 40.005005, 47.355171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853809, 39.914116, 47.350536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002577, -0.061955, 0.998076,
		-0.227501, 0.971871, 0.060915,
		-0.973775, -0.227220, -0.011590,
		33.561676, 39.845951, 47.347061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009735, 40.405106, 47.817997>,  <34.243320, 40.005005, 47.355171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009735, 40.405106, 47.817997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.742065, 40.112946, 47.763264>,  <33.581463, 39.937649, 47.730423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.742065, 40.112946, 47.763264>,  <34.009735, 40.405106, 47.817997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742065, 40.112946, 47.763264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108137, -0.086469, 0.990368,
		-0.735199, 0.677522, -0.021121,
		-0.669170, -0.730402, -0.136837,
		33.541313, 39.893826, 47.722214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507942, 40.520607, 48.266994>,  <34.009735, 40.405106, 47.817997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507942, 40.520607, 48.266994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426437, 40.138897, 48.179516>,  <33.377533, 39.909870, 48.127029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426437, 40.138897, 48.179516>,  <33.507942, 40.520607, 48.266994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426437, 40.138897, 48.179516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289538, -0.154655, 0.944590,
		-0.935226, 0.255797, -0.244787,
		-0.203765, -0.954280, -0.218700,
		33.365307, 39.852612, 48.113907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863312, 40.418949, 48.517670>,  <33.507942, 40.520607, 48.266994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863312, 40.418949, 48.517670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.059864, 40.071972, 48.486454>,  <33.177795, 39.863785, 48.467724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.059864, 40.071972, 48.486454>,  <32.863312, 40.418949, 48.517670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059864, 40.071972, 48.486454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292719, -0.248876, 0.923242,
		-0.820279, -0.430823, -0.376210,
		0.491383, -0.867441, -0.078037,
		33.207279, 39.811741, 48.463043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417580, 39.996414, 48.887959>,  <32.863312, 40.418949, 48.517670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417580, 39.996414, 48.887959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.774799, 39.818310, 48.862041>,  <32.989132, 39.711445, 48.846493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.774799, 39.818310, 48.862041>,  <32.417580, 39.996414, 48.887959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774799, 39.818310, 48.862041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045205, -0.232047, 0.971654,
		-0.447677, -0.864808, -0.227358,
		0.893052, -0.445264, -0.064788,
		33.042717, 39.684731, 48.842606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336105, 39.560223, 49.344971>,  <32.417580, 39.996414, 48.887959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336105, 39.560223, 49.344971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734444, 39.552837, 49.309284>,  <32.973446, 39.548405, 49.287872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734444, 39.552837, 49.309284>,  <32.336105, 39.560223, 49.344971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734444, 39.552837, 49.309284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085001, -0.164006, 0.982790,
		-0.032778, -0.986286, -0.161754,
		0.995842, -0.018465, -0.089211,
		33.033195, 39.547298, 49.282520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590778, 39.031261, 49.752083>,  <32.336105, 39.560223, 49.344971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590778, 39.031261, 49.752083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899876, 39.281242, 49.707703>,  <33.085335, 39.431229, 49.681072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899876, 39.281242, 49.707703>,  <32.590778, 39.031261, 49.752083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899876, 39.281242, 49.707703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257013, -0.148245, 0.954970,
		0.580361, -0.766460, -0.275175,
		0.772740, 0.624950, -0.110954,
		33.131699, 39.468727, 49.674416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110714, 38.757771, 50.162167>,  <32.590778, 39.031261, 49.752083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110714, 38.757771, 50.162167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225845, 39.136898, 50.107342>,  <33.294926, 39.364376, 50.074448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225845, 39.136898, 50.107342>,  <33.110714, 38.757771, 50.162167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225845, 39.136898, 50.107342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289408, 0.050346, 0.955881,
		0.912906, -0.314799, -0.259816,
		0.287830, 0.947822, -0.137066,
		33.312195, 39.421246, 50.066223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779156, 38.722504, 50.362503>,  <33.110714, 38.757771, 50.162167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779156, 38.722504, 50.362503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660309, 39.102222, 50.403618>,  <33.589001, 39.330051, 50.428288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660309, 39.102222, 50.403618>,  <33.779156, 38.722504, 50.362503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660309, 39.102222, 50.403618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210729, -0.039802, 0.976734,
		0.931298, 0.311861, -0.188218,
		-0.297114, 0.949294, 0.102786,
		33.571175, 39.387009, 50.434452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314342, 39.085957, 50.690258>,  <33.779156, 38.722504, 50.362503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314342, 39.085957, 50.690258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004498, 39.334789, 50.735836>,  <33.818592, 39.484089, 50.763184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004498, 39.334789, 50.735836>,  <34.314342, 39.085957, 50.690258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004498, 39.334789, 50.735836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292190, 0.192238, 0.936840,
		0.560891, 0.758982, -0.330677,
		-0.774614, 0.622086, 0.113942,
		33.772114, 39.521416, 50.770020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629414, 39.624340, 51.068676>,  <34.314342, 39.085957, 50.690258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629414, 39.624340, 51.068676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232887, 39.653603, 51.112396>,  <33.994972, 39.671158, 51.138630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232887, 39.653603, 51.112396>,  <34.629414, 39.624340, 51.068676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232887, 39.653603, 51.112396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125477, 0.276997, 0.952643,
		0.039414, 0.958082, -0.283770,
		-0.991313, 0.073154, 0.109300,
		33.935493, 39.675549, 51.145187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538425, 40.332355, 51.375267>,  <34.629414, 39.624340, 51.068676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538425, 40.332355, 51.375267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.241467, 40.086399, 51.481659>,  <34.063290, 39.938824, 51.545494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.241467, 40.086399, 51.481659>,  <34.538425, 40.332355, 51.375267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241467, 40.086399, 51.481659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098406, 0.292622, 0.951151,
		-0.662688, 0.732311, -0.156734,
		-0.742402, -0.614893, 0.265981,
		34.018745, 39.901932, 51.561455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214367, 40.639881, 51.972775>,  <34.538425, 40.332355, 51.375267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214367, 40.639881, 51.972775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065784, 40.268517, 51.976017>,  <33.976635, 40.045696, 51.977962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065784, 40.268517, 51.976017>,  <34.214367, 40.639881, 51.972775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065784, 40.268517, 51.976017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051909, -0.012044, 0.998579,
		-0.926999, 0.371348, 0.052667,
		-0.371455, -0.928416, 0.008111,
		33.954350, 39.989990, 51.978451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623451, 40.677933, 52.403500>,  <34.214367, 40.639881, 51.972775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623451, 40.677933, 52.403500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743229, 40.296650, 52.386875>,  <33.815094, 40.067879, 52.376900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743229, 40.296650, 52.386875>,  <33.623451, 40.677933, 52.403500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743229, 40.296650, 52.386875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031084, -0.053283, 0.998096,
		-0.953607, -0.297582, -0.045585,
		0.299444, -0.953208, -0.041561,
		33.833061, 40.010689, 52.374405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185928, 40.288387, 52.813900>,  <33.623451, 40.677933, 52.403500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185928, 40.288387, 52.813900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524757, 40.078228, 52.781834>,  <33.728054, 39.952133, 52.762592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524757, 40.078228, 52.781834>,  <33.185928, 40.288387, 52.813900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524757, 40.078228, 52.781834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073214, -0.034042, 0.996735,
		-0.526409, -0.850177, 0.009630,
		0.847074, -0.525395, -0.080165,
		33.778881, 39.920609, 52.757786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224888, 39.830418, 53.410019>,  <33.185928, 40.288387, 52.813900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224888, 39.830418, 53.410019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597610, 39.825283, 53.264931>,  <33.821243, 39.822201, 53.177879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597610, 39.825283, 53.264931>,  <33.224888, 39.830418, 53.410019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597610, 39.825283, 53.264931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357967, -0.132487, 0.924287,
		-0.059921, -0.991102, -0.118857,
		0.931809, -0.012837, -0.362720,
		33.877151, 39.821430, 53.156116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517178, 39.195995, 53.408348>,  <33.224888, 39.830418, 53.410019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517178, 39.195995, 53.408348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779148, 39.491558, 53.471695>,  <33.936333, 39.668896, 53.509701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779148, 39.491558, 53.471695>,  <33.517178, 39.195995, 53.408348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779148, 39.491558, 53.471695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092327, -0.286233, 0.953701,
		0.750028, -0.609987, -0.255684,
		0.654930, 0.738909, 0.158364,
		33.975628, 39.713230, 53.519203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209846, 38.482380, 53.655346>,  <33.517178, 39.195995, 53.408348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209846, 38.482380, 53.655346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997684, 38.193497, 53.832924>,  <32.870388, 38.020168, 53.939472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997684, 38.193497, 53.832924>,  <33.209846, 38.482380, 53.655346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997684, 38.193497, 53.832924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544440, -0.111216, -0.831394,
		0.649814, -0.682675, -0.334210,
		-0.530402, -0.722209, 0.443945,
		32.838562, 37.976833, 53.966106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212132, 37.902122, 53.232056>,  <33.209846, 38.482380, 53.655346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212132, 37.902122, 53.232056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871807, 37.857876, 53.437534>,  <32.667614, 37.831329, 53.560822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871807, 37.857876, 53.437534>,  <33.212132, 37.902122, 53.232056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871807, 37.857876, 53.437534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494153, -0.164020, -0.853762,
		0.178698, -0.980235, 0.084888,
		-0.850811, -0.110618, 0.513697,
		32.616562, 37.824692, 53.591644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939617, 37.278847, 53.036549>,  <33.212132, 37.902122, 53.232056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939617, 37.278847, 53.036549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611069, 37.449974, 53.187450>,  <32.413940, 37.552650, 53.277992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611069, 37.449974, 53.187450>,  <32.939617, 37.278847, 53.036549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611069, 37.449974, 53.187450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493566, -0.201568, -0.846028,
		-0.285905, -0.881102, 0.376720,
		-0.821372, 0.427819, 0.377253,
		32.364658, 37.578320, 53.300625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347099, 36.872814, 52.933857>,  <32.939617, 37.278847, 53.036549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347099, 36.872814, 52.933857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227409, 37.252747, 52.970272>,  <32.155594, 37.480705, 52.992119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227409, 37.252747, 52.970272>,  <32.347099, 36.872814, 52.933857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227409, 37.252747, 52.970272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385768, -0.033162, -0.921999,
		-0.872723, -0.311005, 0.376337,
		-0.299226, 0.949829, 0.091035,
		32.137642, 37.537697, 52.997581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719669, 36.829098, 52.531029>,  <32.347099, 36.872814, 52.933857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719669, 36.829098, 52.531029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.756495, 37.220989, 52.602192>,  <31.778589, 37.456123, 52.644890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.756495, 37.220989, 52.602192>,  <31.719669, 36.829098, 52.531029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756495, 37.220989, 52.602192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364257, 0.199418, -0.909697,
		-0.926737, 0.018944, 0.375232,
		0.092061, 0.979731, 0.177908,
		31.784113, 37.514908, 52.655563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092274, 37.061493, 52.401985>,  <31.719669, 36.829098, 52.531029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092274, 37.061493, 52.401985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.330883, 37.378540, 52.351524>,  <31.474049, 37.568768, 52.321247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.330883, 37.378540, 52.351524>,  <31.092274, 37.061493, 52.401985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330883, 37.378540, 52.351524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489779, 0.234978, -0.839584,
		-0.635826, 0.562620, 0.528378,
		0.596524, 0.792618, -0.126154,
		31.509840, 37.616325, 52.313679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683596, 37.623783, 52.143631>,  <31.092274, 37.061493, 52.401985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683596, 37.623783, 52.143631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048128, 37.747128, 52.034534>,  <31.266848, 37.821136, 51.969078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048128, 37.747128, 52.034534>,  <30.683596, 37.623783, 52.143631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048128, 37.747128, 52.034534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318636, 0.108859, -0.941605,
		-0.260667, 0.945019, 0.197463,
		0.911331, 0.308364, -0.272741,
		31.321527, 37.839638, 51.952713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615540, 38.225082, 51.722752>,  <30.683596, 37.623783, 52.143631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615540, 38.225082, 51.722752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.977230, 38.072731, 51.645493>,  <31.194244, 37.981319, 51.599136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.977230, 38.072731, 51.645493>,  <30.615540, 38.225082, 51.722752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977230, 38.072731, 51.645493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176744, 0.077958, -0.981165,
		0.388763, 0.921332, 0.003174,
		0.904226, -0.380880, -0.193147,
		31.248497, 37.958466, 51.587547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000965, 38.691448, 51.376732>,  <30.615540, 38.225082, 51.722752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000965, 38.691448, 51.376732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.201626, 38.357090, 51.287628>,  <31.322021, 38.156475, 51.234165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.201626, 38.357090, 51.287628>,  <31.000965, 38.691448, 51.376732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201626, 38.357090, 51.287628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194264, 0.142079, -0.970605,
		0.842975, 0.530181, -0.091110,
		0.501652, -0.835896, -0.222764,
		31.352121, 38.106319, 51.220798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608957, 38.883537, 50.872147>,  <31.000965, 38.691448, 51.376732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608957, 38.883537, 50.872147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567617, 38.488804, 50.822380>,  <31.542814, 38.251965, 50.792522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567617, 38.488804, 50.822380>,  <31.608957, 38.883537, 50.872147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567617, 38.488804, 50.822380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206017, 0.101132, -0.973308,
		0.973075, -0.126221, 0.192853,
		-0.103349, -0.986833, -0.124413,
		31.536613, 38.192753, 50.785057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126637, 38.716488, 50.404549>,  <31.608957, 38.883537, 50.872147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126637, 38.716488, 50.404549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886168, 38.398052, 50.376728>,  <31.741886, 38.206993, 50.360035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886168, 38.398052, 50.376728>,  <32.126637, 38.716488, 50.404549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886168, 38.398052, 50.376728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069090, 0.034935, -0.996998,
		0.796127, -0.604174, 0.033999,
		-0.601173, -0.796086, -0.069555,
		31.705816, 38.159225, 50.355862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544270, 38.192440, 50.160400>,  <32.126637, 38.716488, 50.404549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544270, 38.192440, 50.160400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.174450, 38.071747, 50.067299>,  <31.952559, 37.999332, 50.011440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.174450, 38.071747, 50.067299>,  <32.544270, 38.192440, 50.160400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174450, 38.071747, 50.067299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221565, 0.071294, -0.972536,
		0.310042, -0.950722, 0.000939,
		-0.924545, -0.301735, -0.232751,
		31.897087, 37.981228, 49.997475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601215, 37.770405, 49.503284>,  <32.544270, 38.192440, 50.160400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601215, 37.770405, 49.503284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225769, 37.887928, 49.575584>,  <32.000500, 37.958443, 49.618965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225769, 37.887928, 49.575584>,  <32.601215, 37.770405, 49.503284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225769, 37.887928, 49.575584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096609, 0.279106, -0.955388,
		-0.331149, -0.914208, -0.233590,
		-0.938620, 0.293809, 0.180746,
		31.944183, 37.976070, 49.629807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235672, 37.399963, 48.973045>,  <32.601215, 37.770405, 49.503284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235672, 37.399963, 48.973045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987432, 37.689606, 49.093399>,  <31.838490, 37.863392, 49.165611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987432, 37.689606, 49.093399>,  <32.235672, 37.399963, 48.973045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987432, 37.689606, 49.093399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215251, 0.211654, -0.953347,
		-0.754008, -0.656407, 0.024513,
		-0.620595, 0.724108, 0.300881,
		31.801254, 37.906837, 49.183662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577414, 37.215130, 48.692989>,  <32.235672, 37.399963, 48.973045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577414, 37.215130, 48.692989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.533289, 37.604839, 48.771591>,  <31.506813, 37.838665, 48.818752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.533289, 37.604839, 48.771591>,  <31.577414, 37.215130, 48.692989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533289, 37.604839, 48.771591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244894, 0.164968, -0.955412,
		-0.963254, -0.153516, 0.220396,
		-0.110313, 0.974278, 0.196501,
		31.500195, 37.897121, 48.830544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953339, 37.409855, 48.383862>,  <31.577414, 37.215130, 48.692989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953339, 37.409855, 48.383862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164713, 37.747261, 48.422306>,  <31.291538, 37.949703, 48.445374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164713, 37.747261, 48.422306>,  <30.953339, 37.409855, 48.383862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164713, 37.747261, 48.422306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293578, 0.287782, -0.911588,
		-0.796598, 0.453500, 0.399712,
		0.528435, 0.843516, 0.096109,
		31.323244, 38.000317, 48.451138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596075, 37.909161, 48.014519>,  <30.953339, 37.409855, 48.383862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596075, 37.909161, 48.014519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958265, 38.077698, 48.034855>,  <31.175579, 38.178818, 48.047054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958265, 38.077698, 48.034855>,  <30.596075, 37.909161, 48.014519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958265, 38.077698, 48.034855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193220, 0.515936, -0.834551,
		-0.377858, 0.745844, 0.548580,
		0.905477, 0.421339, 0.050838,
		31.229908, 38.204098, 48.050106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452679, 38.570789, 47.897873>,  <30.596075, 37.909161, 48.014519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452679, 38.570789, 47.897873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.833117, 38.494667, 47.800545>,  <31.061378, 38.448994, 47.742146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.833117, 38.494667, 47.800545>,  <30.452679, 38.570789, 47.897873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833117, 38.494667, 47.800545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152323, 0.396342, -0.905379,
		0.268739, 0.898163, 0.347969,
		0.951092, -0.190307, -0.243324,
		31.118444, 38.437576, 47.727547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679256, 39.162418, 47.681969>,  <30.452679, 38.570789, 47.897873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679256, 39.162418, 47.681969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923010, 38.887894, 47.523155>,  <31.069262, 38.723179, 47.427868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923010, 38.887894, 47.523155>,  <30.679256, 39.162418, 47.681969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923010, 38.887894, 47.523155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172471, 0.374017, -0.911244,
		0.773891, 0.623772, 0.109551,
		0.609382, -0.686309, -0.397031,
		31.105825, 38.681999, 47.404045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901058, 39.424255, 46.949291>,  <30.679256, 39.162418, 47.681969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901058, 39.424255, 46.949291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029823, 39.046848, 46.917942>,  <31.107082, 38.820404, 46.899132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029823, 39.046848, 46.917942>,  <30.901058, 39.424255, 46.949291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029823, 39.046848, 46.917942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047162, 0.098661, -0.994003,
		0.945594, 0.316286, 0.076259,
		0.321913, -0.943520, -0.078377,
		31.126396, 38.763794, 46.894428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389568, 39.490166, 46.442444>,  <30.901058, 39.424255, 46.949291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389568, 39.490166, 46.442444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.296473, 39.101643, 46.462021>,  <31.240614, 38.868530, 46.473766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.296473, 39.101643, 46.462021>,  <31.389568, 39.490166, 46.442444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296473, 39.101643, 46.462021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093999, -0.072551, -0.992925,
		0.967985, -0.226495, 0.108188,
		-0.232741, -0.971307, 0.048938,
		31.226650, 38.810249, 46.476704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.562031, 30.356689, 39.655861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233852, 30.582027, 39.694859>,  <40.036945, 30.717230, 39.718258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233852, 30.582027, 39.694859>,  <40.562031, 30.356689, 39.655861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233852, 30.582027, 39.694859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441177, 0.732300, -0.518749,
		-0.363632, -0.382593, -0.849349,
		-0.820448, 0.563347, 0.097496,
		39.987717, 30.751032, 39.724106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400188, 30.710281, 38.990845>,  <40.562031, 30.356689, 39.655861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400188, 30.710281, 38.990845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176769, 30.920385, 39.247631>,  <40.042717, 31.046448, 39.401703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176769, 30.920385, 39.247631>,  <40.400188, 30.710281, 38.990845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176769, 30.920385, 39.247631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420813, 0.846396, -0.326388,
		-0.714800, 0.087846, -0.693790,
		-0.558549, 0.525258, 0.641971,
		40.009205, 31.077963, 39.440224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933964, 31.105789, 38.526237>,  <40.400188, 30.710281, 38.990845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933964, 31.105789, 38.526237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.984875, 31.265490, 38.889423>,  <40.015423, 31.361309, 39.107334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.984875, 31.265490, 38.889423>,  <39.933964, 31.105789, 38.526237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984875, 31.265490, 38.889423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195160, 0.887433, -0.417582,
		-0.972477, 0.230348, 0.035035,
		0.127281, 0.399252, 0.907963,
		40.023060, 31.385265, 39.161812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592976, 31.814804, 38.512913>,  <39.933964, 31.105789, 38.526237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592976, 31.814804, 38.512913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829266, 31.830956, 38.835258>,  <39.971039, 31.840647, 39.028664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829266, 31.830956, 38.835258>,  <39.592976, 31.814804, 38.512913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829266, 31.830956, 38.835258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215094, 0.954726, -0.205507,
		-0.777676, 0.294734, 0.555295,
		0.590724, 0.040377, 0.805863,
		40.006481, 31.843069, 39.077019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400433, 32.478519, 38.827480>,  <39.592976, 31.814804, 38.512913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400433, 32.478519, 38.827480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766655, 32.371304, 38.947422>,  <39.986389, 32.306976, 39.019386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766655, 32.371304, 38.947422>,  <39.400433, 32.478519, 38.827480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766655, 32.371304, 38.947422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352416, 0.893916, -0.276979,
		-0.193808, 0.359265, 0.912889,
		0.915555, -0.268036, 0.299859,
		40.041321, 32.290894, 39.037380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622681, 33.043915, 39.183578>,  <39.400433, 32.478519, 38.827480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622681, 33.043915, 39.183578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952396, 32.829391, 39.111004>,  <40.150227, 32.700676, 39.067459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952396, 32.829391, 39.111004>,  <39.622681, 33.043915, 39.183578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952396, 32.829391, 39.111004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453308, 0.817162, -0.356032,
		0.339210, 0.211224, 0.916690,
		0.824287, -0.536312, -0.181440,
		40.199684, 32.668499, 39.056572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185131, 33.466011, 39.471283>,  <39.622681, 33.043915, 39.183578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185131, 33.466011, 39.471283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342342, 33.219715, 39.198112>,  <40.436668, 33.071938, 39.034210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342342, 33.219715, 39.198112>,  <40.185131, 33.466011, 39.471283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342342, 33.219715, 39.198112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566507, 0.747149, -0.347616,
		0.724289, -0.250258, 0.642476,
		0.393032, -0.615742, -0.682925,
		40.460251, 33.034992, 38.993237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885696, 33.675743, 39.494900>,  <40.185131, 33.466011, 39.471283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885696, 33.675743, 39.494900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844982, 33.484032, 39.146206>,  <40.820553, 33.369003, 38.936989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844982, 33.484032, 39.146206>,  <40.885696, 33.675743, 39.494900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844982, 33.484032, 39.146206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609748, 0.662331, -0.435345,
		0.786032, -0.575853, 0.224826,
		-0.101786, -0.479282, -0.871739,
		40.814445, 33.340248, 38.884686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552338, 33.668880, 39.226395>,  <40.885696, 33.675743, 39.494900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552338, 33.668880, 39.226395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.316776, 33.611778, 38.908195>,  <41.175438, 33.577518, 38.717278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.316776, 33.611778, 38.908195>,  <41.552338, 33.668880, 39.226395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316776, 33.611778, 38.908195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478410, 0.731734, -0.485479,
		0.651392, -0.666475, -0.362631,
		-0.588908, -0.142750, -0.795493,
		41.140102, 33.568954, 38.669548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015213, 33.753929, 38.673515>,  <41.552338, 33.668880, 39.226395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015213, 33.753929, 38.673515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.658684, 33.800018, 38.498123>,  <41.444767, 33.827671, 38.392887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.658684, 33.800018, 38.498123>,  <42.015213, 33.753929, 38.673515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658684, 33.800018, 38.498123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364679, 0.756821, -0.542431,
		0.269348, -0.643386, -0.716593,
		-0.891325, 0.115223, -0.438478,
		41.391285, 33.834587, 38.366581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165287, 33.866470, 37.905724>,  <42.015213, 33.753929, 38.673515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165287, 33.866470, 37.905724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785545, 33.981304, 37.956795>,  <41.557701, 34.050205, 37.987438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785545, 33.981304, 37.956795>,  <42.165287, 33.866470, 37.905724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785545, 33.981304, 37.956795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165419, 0.802176, -0.573716,
		-0.267123, -0.523542, -0.809042,
		-0.949358, 0.287084, 0.127676,
		41.500736, 34.067429, 37.995098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785412, 33.938404, 37.191093>,  <42.165287, 33.866470, 37.905724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785412, 33.938404, 37.191093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.597954, 34.171478, 37.456680>,  <41.485481, 34.311325, 37.616032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.597954, 34.171478, 37.456680>,  <41.785412, 33.938404, 37.191093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597954, 34.171478, 37.456680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213699, 0.804067, -0.554806,
		-0.857151, -0.118117, -0.501340,
		-0.468642, 0.582688, 0.663965,
		41.457359, 34.346283, 37.655869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510136, 34.367897, 36.802608>,  <41.785412, 33.938404, 37.191093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510136, 34.367897, 36.802608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.515175, 34.545788, 37.160839>,  <41.518200, 34.652523, 37.375778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.515175, 34.545788, 37.160839>,  <41.510136, 34.367897, 36.802608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515175, 34.545788, 37.160839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053657, 0.894058, -0.444726,
		-0.998480, 0.053658, -0.012597,
		0.012601, 0.444726, 0.895578,
		41.518955, 34.679207, 37.429512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969200, 34.903603, 36.756916>,  <41.510136, 34.367897, 36.802608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969200, 34.903603, 36.756916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211246, 34.992237, 37.062790>,  <41.356476, 35.045418, 37.246315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211246, 34.992237, 37.062790>,  <40.969200, 34.903603, 36.756916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211246, 34.992237, 37.062790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027872, 0.954003, -0.298498,
		-0.795650, 0.201939, 0.571106,
		0.605115, 0.221583, 0.764681,
		41.392780, 35.058712, 37.292194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727951, 35.491241, 37.048935>,  <40.969200, 34.903603, 36.756916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727951, 35.491241, 37.048935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104931, 35.476665, 37.181873>,  <41.331120, 35.467918, 37.261639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104931, 35.476665, 37.181873>,  <40.727951, 35.491241, 37.048935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104931, 35.476665, 37.181873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188220, 0.879392, -0.437314,
		-0.276327, 0.474702, 0.835644,
		0.942453, -0.036443, 0.332348,
		41.387665, 35.465733, 37.281578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910213, 36.141033, 37.264458>,  <40.727951, 35.491241, 37.048935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910213, 36.141033, 37.264458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.267933, 35.982365, 37.181625>,  <41.482563, 35.887165, 37.131927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.267933, 35.982365, 37.181625>,  <40.910213, 36.141033, 37.264458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267933, 35.982365, 37.181625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304468, 0.878557, -0.368019,
		0.327914, 0.266069, 0.906465,
		0.894300, -0.396668, -0.207082,
		41.536224, 35.863365, 37.119499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335064, 36.703655, 37.469040>,  <40.910213, 36.141033, 37.264458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335064, 36.703655, 37.469040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511528, 36.462898, 37.202774>,  <41.617405, 36.318443, 37.043015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511528, 36.462898, 37.202774>,  <41.335064, 36.703655, 37.469040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511528, 36.462898, 37.202774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334173, 0.798579, -0.500600,
		0.832889, -0.001602, 0.553437,
		0.441161, -0.601888, -0.665663,
		41.643875, 36.282333, 37.003075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943699, 37.106880, 37.256306>,  <41.335064, 36.703655, 37.469040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943699, 37.106880, 37.256306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926136, 36.806534, 36.992710>,  <41.915596, 36.626324, 36.834553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926136, 36.806534, 36.992710>,  <41.943699, 37.106880, 37.256306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926136, 36.806534, 36.992710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296257, 0.620170, -0.726375,
		0.954098, -0.227127, 0.195218,
		-0.043911, -0.750868, -0.658991,
		41.912964, 36.581272, 36.795013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570709, 37.061878, 36.924023>,  <41.943699, 37.106880, 37.256306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570709, 37.061878, 36.924023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327602, 36.873119, 36.668545>,  <42.181736, 36.759865, 36.515259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327602, 36.873119, 36.668545>,  <42.570709, 37.061878, 36.924023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327602, 36.873119, 36.668545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375848, 0.537566, -0.754825,
		0.699538, -0.698812, -0.149357,
		-0.607770, -0.471893, -0.638695,
		42.145271, 36.731552, 36.476936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989891, 36.930630, 36.346390>,  <42.570709, 37.061878, 36.924023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989891, 36.930630, 36.346390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614792, 36.920906, 36.207806>,  <42.389732, 36.915073, 36.124657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614792, 36.920906, 36.207806>,  <42.989891, 36.930630, 36.346390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614792, 36.920906, 36.207806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273760, 0.562131, -0.780426,
		0.213724, -0.826691, -0.520484,
		-0.937751, -0.024308, -0.346456,
		42.333466, 36.913612, 36.103870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061535, 36.693790, 35.545139>,  <42.989891, 36.930630, 36.346390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061535, 36.693790, 35.545139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.712936, 36.878193, 35.612034>,  <42.503777, 36.988834, 35.652172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.712936, 36.878193, 35.612034>,  <43.061535, 36.693790, 35.545139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712936, 36.878193, 35.612034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258508, 0.721649, -0.642181,
		-0.416737, -0.516426, -0.748087,
		-0.871495, 0.461007, 0.167238,
		42.451488, 37.016495, 35.662205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635437, 36.132195, 35.419212>,  <43.061535, 36.693790, 35.545139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635437, 36.132195, 35.419212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.970783, 35.924107, 35.484348>,  <44.171989, 35.799255, 35.523430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.970783, 35.924107, 35.484348>,  <43.635437, 36.132195, 35.419212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970783, 35.924107, 35.484348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507318, -0.853907, -0.116062,
		0.199425, 0.014693, -0.979803,
		0.838366, -0.520218, 0.162836,
		44.222294, 35.768040, 35.533199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657776, 35.716969, 34.873734>,  <43.635437, 36.132195, 35.419212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657776, 35.716969, 34.873734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879139, 35.527985, 35.148109>,  <44.011959, 35.414593, 35.312737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879139, 35.527985, 35.148109>,  <43.657776, 35.716969, 34.873734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879139, 35.527985, 35.148109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437657, -0.865644, -0.243140,
		0.708655, -0.165650, -0.685834,
		0.553412, -0.472462, 0.685941,
		44.045162, 35.386246, 35.353893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745689, 35.015549, 34.633667>,  <43.657776, 35.716969, 34.873734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745689, 35.015549, 34.633667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.834801, 34.984280, 35.022358>,  <43.888268, 34.965519, 35.255573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.834801, 34.984280, 35.022358>,  <43.745689, 35.015549, 34.633667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834801, 34.984280, 35.022358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379157, -0.925248, 0.012490,
		0.898115, -0.371221, -0.235763,
		0.222776, -0.078173, 0.971731,
		43.901634, 34.960827, 35.313877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950996, 34.276100, 34.794769>,  <43.745689, 35.015549, 34.633667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950996, 34.276100, 34.794769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861073, 34.397438, 35.165161>,  <43.807117, 34.470242, 35.387398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861073, 34.397438, 35.165161>,  <43.950996, 34.276100, 34.794769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861073, 34.397438, 35.165161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423043, -0.886458, 0.187690,
		0.877778, -0.349535, 0.327613,
		-0.224810, 0.303344, 0.925982,
		43.793629, 34.488441, 35.442955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228157, 33.774338, 35.274776>,  <43.950996, 34.276100, 34.794769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228157, 33.774338, 35.274776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.927055, 33.981853, 35.436874>,  <43.746395, 34.106361, 35.534134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.927055, 33.981853, 35.436874>,  <44.228157, 33.774338, 35.274776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927055, 33.981853, 35.436874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539859, -0.838759, 0.070959,
		0.376717, -0.165361, 0.911449,
		-0.752753, 0.518786, 0.405246,
		43.701229, 34.137489, 35.558449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039921, 33.383644, 35.853722>,  <44.228157, 33.774338, 35.274776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039921, 33.383644, 35.853722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716881, 33.608978, 35.783939>,  <43.523056, 33.744179, 35.742069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716881, 33.608978, 35.783939>,  <44.039921, 33.383644, 35.853722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716881, 33.608978, 35.783939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585854, -0.800246, 0.127986,
		-0.067511, 0.205569, 0.976311,
		-0.807599, 0.563336, -0.174459,
		43.474602, 33.777981, 35.731602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576061, 33.016151, 36.161308>,  <44.039921, 33.383644, 35.853722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576061, 33.016151, 36.161308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341747, 33.279423, 35.972141>,  <43.201157, 33.437386, 35.858643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341747, 33.279423, 35.972141>,  <43.576061, 33.016151, 36.161308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341747, 33.279423, 35.972141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789619, -0.594975, 0.150022,
		-0.182631, 0.461304, 0.868242,
		-0.585788, 0.658182, -0.472915,
		43.166012, 33.476879, 35.830265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047287, 33.019886, 36.579464>,  <43.576061, 33.016151, 36.161308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047287, 33.019886, 36.579464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917202, 33.149643, 36.224159>,  <42.839149, 33.227497, 36.010975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917202, 33.149643, 36.224159>,  <43.047287, 33.019886, 36.579464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917202, 33.149643, 36.224159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773544, -0.631558, 0.052570,
		-0.543935, 0.704206, 0.456321,
		-0.325213, 0.324390, -0.888261,
		42.819637, 33.246960, 35.957680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359020, 33.378902, 36.615314>,  <43.047287, 33.019886, 36.579464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359020, 33.378902, 36.615314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.402184, 33.215820, 36.252628>,  <42.428082, 33.117973, 36.035015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.402184, 33.215820, 36.252628>,  <42.359020, 33.378902, 36.615314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402184, 33.215820, 36.252628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804364, -0.571801, 0.161378,
		-0.584255, 0.711915, -0.389644,
		0.107911, -0.407702, -0.906716,
		42.434559, 33.093510, 35.980614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717674, 33.459442, 36.228085>,  <42.359020, 33.378902, 36.615314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717674, 33.459442, 36.228085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.909542, 33.167770, 36.032860>,  <42.024662, 32.992767, 35.915726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.909542, 33.167770, 36.032860>,  <41.717674, 33.459442, 36.228085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909542, 33.167770, 36.032860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825327, -0.563793, 0.031191,
		-0.297911, 0.387850, -0.872251,
		0.479671, -0.729184, -0.488063,
		42.053444, 32.949017, 35.886440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227497, 33.189907, 35.738232>,  <41.717674, 33.459442, 36.228085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227497, 33.189907, 35.738232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.492970, 32.891232, 35.756073>,  <41.652252, 32.712029, 35.766777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.492970, 32.891232, 35.756073>,  <41.227497, 33.189907, 35.738232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492970, 32.891232, 35.756073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745598, -0.655568, 0.119640,
		-0.060091, -0.112661, -0.991815,
		0.663681, -0.746685, 0.044606,
		41.692074, 32.667225, 35.769455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974281, 32.709652, 35.290920>,  <41.227497, 33.189907, 35.738232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974281, 32.709652, 35.290920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227337, 32.507706, 35.525829>,  <41.379169, 32.386539, 35.666775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227337, 32.507706, 35.525829>,  <40.974281, 32.709652, 35.290920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227337, 32.507706, 35.525829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688954, -0.713226, 0.129035,
		0.353710, -0.486234, -0.799041,
		0.632638, -0.504862, 0.587268,
		41.417130, 32.356247, 35.702011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863239, 32.063023, 35.125813>,  <40.974281, 32.709652, 35.290920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863239, 32.063023, 35.125813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058170, 32.025414, 35.473068>,  <41.175129, 32.002846, 35.681423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058170, 32.025414, 35.473068>,  <40.863239, 32.063023, 35.125813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058170, 32.025414, 35.473068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733370, -0.583738, 0.348450,
		0.474005, -0.806479, -0.353427,
		0.487326, -0.094025, 0.868143,
		41.204369, 31.997206, 35.733513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860931, 31.284525, 35.277958>,  <40.863239, 32.063023, 35.125813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860931, 31.284525, 35.277958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.925571, 31.453630, 35.634644>,  <40.964355, 31.555094, 35.848656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.925571, 31.453630, 35.634644>,  <40.860931, 31.284525, 35.277958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925571, 31.453630, 35.634644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606578, -0.670197, 0.427667,
		0.778426, -0.610007, 0.148133,
		0.161602, 0.422762, 0.891716,
		40.974052, 31.580460, 35.902157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012215, 30.775686, 35.695206>,  <40.860931, 31.284525, 35.277958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012215, 30.775686, 35.695206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.878384, 31.054703, 35.948658>,  <40.798084, 31.222113, 36.100731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.878384, 31.054703, 35.948658>,  <41.012215, 30.775686, 35.695206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878384, 31.054703, 35.948658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716530, -0.625027, 0.309719,
		0.612080, -0.350391, 0.708932,
		-0.334579, 0.697543, 0.633632,
		40.778011, 31.263966, 36.138748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969997, 30.432930, 36.371124>,  <41.012215, 30.775686, 35.695206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969997, 30.432930, 36.371124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723988, 30.748325, 36.368908>,  <40.576382, 30.937563, 36.367577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723988, 30.748325, 36.368908>,  <40.969997, 30.432930, 36.371124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723988, 30.748325, 36.368908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633506, -0.489924, 0.598869,
		0.469487, 0.371829, 0.800828,
		-0.615022, 0.788491, -0.005543,
		40.539482, 30.984873, 36.367245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759239, 30.371559, 37.045395>,  <40.969997, 30.432930, 36.371124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759239, 30.371559, 37.045395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500706, 30.607872, 36.852219>,  <40.345585, 30.749660, 36.736313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500706, 30.607872, 36.852219>,  <40.759239, 30.371559, 37.045395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500706, 30.607872, 36.852219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749969, -0.375113, 0.544828,
		0.140718, 0.714329, 0.685516,
		-0.646332, 0.590782, -0.482939,
		40.306805, 30.785107, 36.707336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251232, 30.730125, 37.564941>,  <40.759239, 30.371559, 37.045395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251232, 30.730125, 37.564941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079735, 30.730595, 37.203571>,  <39.976837, 30.730877, 36.986748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079735, 30.730595, 37.203571>,  <40.251232, 30.730125, 37.564941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079735, 30.730595, 37.203571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846038, -0.351250, 0.401053,
		-0.316857, 0.936281, 0.151591,
		-0.428744, 0.001175, -0.903425,
		39.951111, 30.730947, 36.932545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611481, 31.114531, 37.658409>,  <40.251232, 30.730125, 37.564941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611481, 31.114531, 37.658409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585411, 30.884495, 37.332214>,  <39.569767, 30.746473, 37.136497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585411, 30.884495, 37.332214>,  <39.611481, 31.114531, 37.658409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585411, 30.884495, 37.332214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729538, -0.530113, 0.432150,
		-0.680827, 0.623097, -0.384999,
		-0.065178, -0.575091, -0.815489,
		39.565857, 30.711967, 37.087566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959755, 31.123808, 37.552956>,  <39.611481, 31.114531, 37.658409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959755, 31.123808, 37.552956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076672, 30.803490, 37.343849>,  <39.146824, 30.611298, 37.218384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076672, 30.803490, 37.343849>,  <38.959755, 31.123808, 37.552956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076672, 30.803490, 37.343849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802555, -0.502675, 0.321285,
		-0.520067, 0.325641, -0.789613,
		0.292295, -0.800797, -0.522770,
		39.164360, 30.563251, 37.187019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416607, 30.846972, 37.158085>,  <38.959755, 31.123808, 37.552956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416607, 30.846972, 37.158085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650070, 30.522346, 37.168713>,  <38.790150, 30.327572, 37.175087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650070, 30.522346, 37.168713>,  <38.416607, 30.846972, 37.158085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650070, 30.522346, 37.168713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806314, -0.575397, 0.137025,
		-0.095918, -0.101397, -0.990211,
		0.583659, -0.811564, 0.026567,
		38.825169, 30.278877, 37.176682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.990005, 41.463909, 42.155224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972252, 41.121349, 42.360981>,  <34.961601, 40.915813, 42.484436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972252, 41.121349, 42.360981>,  <34.990005, 41.463909, 42.155224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972252, 41.121349, 42.360981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506056, -0.463227, -0.727549,
		0.861358, 0.228023, 0.453947,
		-0.044382, -0.856403, 0.514397,
		34.958939, 40.864429, 42.515301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685345, 41.221550, 42.176220>,  <34.990005, 41.463909, 42.155224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685345, 41.221550, 42.176220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458477, 40.898869, 42.242615>,  <35.322357, 40.705257, 42.282452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458477, 40.898869, 42.242615>,  <35.685345, 41.221550, 42.176220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458477, 40.898869, 42.242615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614147, -0.548528, -0.567399,
		0.548770, -0.219871, 0.806541,
		-0.567165, -0.806706, 0.165982,
		35.288326, 40.656857, 42.292408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120827, 40.755291, 42.357300>,  <35.685345, 41.221550, 42.176220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120827, 40.755291, 42.357300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801697, 40.549931, 42.230869>,  <35.610218, 40.426716, 42.155010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801697, 40.549931, 42.230869>,  <36.120827, 40.755291, 42.357300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801697, 40.549931, 42.230869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577709, -0.501071, -0.644344,
		0.172430, -0.696670, 0.696361,
		-0.797822, -0.513398, -0.316073,
		35.562351, 40.395912, 42.136047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300941, 40.050045, 42.342197>,  <36.120827, 40.755291, 42.357300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300941, 40.050045, 42.342197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970860, 40.043400, 42.116364>,  <35.772808, 40.039413, 41.980865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970860, 40.043400, 42.116364>,  <36.300941, 40.050045, 42.342197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970860, 40.043400, 42.116364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443892, -0.637175, -0.630054,
		-0.349270, -0.770540, 0.533178,
		-0.825209, -0.016614, -0.564583,
		35.723297, 40.038414, 41.946987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056786, 39.396717, 42.142525>,  <36.300941, 40.050045, 42.342197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056786, 39.396717, 42.142525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894451, 39.602173, 41.840141>,  <35.797050, 39.725445, 41.658710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894451, 39.602173, 41.840141>,  <36.056786, 39.396717, 42.142525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894451, 39.602173, 41.840141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376619, -0.659656, -0.650394,
		-0.832739, -0.548662, 0.074267,
		-0.405837, 0.513638, -0.755957,
		35.772701, 39.756264, 41.613354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923618, 38.861088, 41.701054>,  <36.056786, 39.396717, 42.142525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923618, 38.861088, 41.701054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836712, 39.168518, 41.460361>,  <35.784569, 39.352978, 41.315945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836712, 39.168518, 41.460361>,  <35.923618, 38.861088, 41.701054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836712, 39.168518, 41.460361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161842, -0.579562, -0.798696,
		-0.962601, -0.270917, 0.001532,
		-0.217268, 0.768578, -0.601733,
		35.771530, 39.399090, 41.279842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558064, 38.630447, 41.094360>,  <35.923618, 38.861088, 41.701054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558064, 38.630447, 41.094360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701145, 38.986908, 40.982727>,  <35.786995, 39.200787, 40.915745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701145, 38.986908, 40.982727>,  <35.558064, 38.630447, 41.094360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701145, 38.986908, 40.982727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190001, -0.362063, -0.912584,
		-0.914301, 0.273410, -0.298832,
		0.357706, 0.891155, -0.279086,
		35.808456, 39.254253, 40.899002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145447, 38.905109, 40.475826>,  <35.558064, 38.630447, 41.094360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145447, 38.905109, 40.475826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505039, 39.079178, 40.456036>,  <35.720795, 39.183620, 40.444160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505039, 39.079178, 40.456036>,  <35.145447, 38.905109, 40.475826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505039, 39.079178, 40.456036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135117, -0.383022, -0.913804,
		-0.416616, 0.814811, -0.403130,
		0.898985, 0.435176, -0.049478,
		35.774734, 39.209732, 40.441193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151646, 39.161694, 39.819511>,  <35.145447, 38.905109, 40.475826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151646, 39.161694, 39.819511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538383, 39.144691, 39.920238>,  <35.770424, 39.134491, 39.980675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538383, 39.144691, 39.920238>,  <35.151646, 39.161694, 39.819511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538383, 39.144691, 39.920238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242109, -0.161189, -0.956766,
		0.081261, 0.986008, -0.145552,
		0.966840, -0.042509, 0.251820,
		35.828434, 39.131939, 39.995785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473045, 39.460148, 39.298737>,  <35.151646, 39.161694, 39.819511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473045, 39.460148, 39.298737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759129, 39.239704, 39.470669>,  <35.930779, 39.107437, 39.573830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759129, 39.239704, 39.470669>,  <35.473045, 39.460148, 39.298737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759129, 39.239704, 39.470669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338562, -0.264844, -0.902903,
		0.611437, 0.791288, -0.002834,
		0.715207, -0.551109, 0.429835,
		35.973690, 39.074371, 39.599621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131866, 39.652637, 38.942112>,  <35.473045, 39.460148, 39.298737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131866, 39.652637, 38.942112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196667, 39.304302, 39.127754>,  <36.235546, 39.095303, 39.239140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196667, 39.304302, 39.127754>,  <36.131866, 39.652637, 38.942112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196667, 39.304302, 39.127754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442831, -0.356145, -0.822837,
		0.881848, 0.338823, 0.327938,
		0.162003, -0.870839, 0.464107,
		36.245266, 39.043049, 39.266987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709885, 39.522018, 38.656090>,  <36.131866, 39.652637, 38.942112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709885, 39.522018, 38.656090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580173, 39.166546, 38.785763>,  <36.502346, 38.953262, 38.863567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580173, 39.166546, 38.785763>,  <36.709885, 39.522018, 38.656090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580173, 39.166546, 38.785763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382105, -0.436551, -0.814505,
		0.865356, -0.140255, 0.481132,
		-0.324277, -0.888680, 0.324180,
		36.482891, 38.899940, 38.883018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312706, 38.962669, 38.670254>,  <36.709885, 39.522018, 38.656090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312706, 38.962669, 38.670254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947659, 38.817669, 38.594658>,  <36.728630, 38.730667, 38.549301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947659, 38.817669, 38.594658>,  <37.312706, 38.962669, 38.670254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947659, 38.817669, 38.594658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366204, -0.519408, -0.772082,
		0.181721, -0.773825, 0.606772,
		-0.912618, -0.362506, -0.188991,
		36.673874, 38.708916, 38.537960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617676, 39.152538, 38.083664>,  <37.312706, 38.962669, 38.670254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617676, 39.152538, 38.083664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464008, 38.786304, 38.131199>,  <37.371807, 38.566563, 38.159718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464008, 38.786304, 38.131199>,  <37.617676, 39.152538, 38.083664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464008, 38.786304, 38.131199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761311, 0.241327, -0.601803,
		0.522323, -0.321663, -0.789754,
		-0.384167, -0.915584, 0.118835,
		37.348759, 38.511631, 38.166851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827751, 38.591198, 37.568489>,  <37.617676, 39.152538, 38.083664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827751, 38.591198, 37.568489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204334, 38.480793, 37.491051>,  <38.430283, 38.414551, 37.444588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204334, 38.480793, 37.491051>,  <37.827751, 38.591198, 37.568489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204334, 38.480793, 37.491051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124666, -0.248532, 0.960568,
		-0.313248, -0.928465, -0.199571,
		0.941453, -0.276016, -0.193601,
		38.486771, 38.397987, 37.432972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886456, 37.795387, 37.705887>,  <37.827751, 38.591198, 37.568489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886456, 37.795387, 37.705887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243168, 37.975128, 37.727100>,  <38.457195, 38.082973, 37.739826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243168, 37.975128, 37.727100>,  <37.886456, 37.795387, 37.705887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243168, 37.975128, 37.727100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150345, -0.404815, 0.901954,
		0.426766, -0.796369, -0.428564,
		0.891778, 0.449355, 0.053031,
		38.510700, 38.109936, 37.743011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195042, 37.391457, 38.175842>,  <37.886456, 37.795387, 37.705887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195042, 37.391457, 38.175842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432533, 37.712955, 38.160427>,  <38.575027, 37.905853, 38.151180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432533, 37.712955, 38.160427>,  <38.195042, 37.391457, 38.175842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432533, 37.712955, 38.160427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287919, -0.167480, 0.942896,
		0.751394, -0.570915, -0.330851,
		0.593725, 0.803745, -0.038534,
		38.610649, 37.954079, 38.148869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855022, 37.227272, 38.460464>,  <38.195042, 37.391457, 38.175842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855022, 37.227272, 38.460464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782585, 37.616589, 38.516891>,  <38.739120, 37.850178, 38.550747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782585, 37.616589, 38.516891>,  <38.855022, 37.227272, 38.460464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782585, 37.616589, 38.516891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185576, -0.107040, 0.976783,
		0.965798, 0.203071, -0.161236,
		-0.181097, 0.973296, 0.141064,
		38.728256, 37.908577, 38.559212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353039, 37.401028, 38.900799>,  <38.855022, 37.227272, 38.460464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353039, 37.401028, 38.900799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104084, 37.712177, 38.935543>,  <38.954712, 37.898869, 38.956390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104084, 37.712177, 38.935543>,  <39.353039, 37.401028, 38.900799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104084, 37.712177, 38.935543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030247, -0.086986, 0.995750,
		0.782126, 0.622368, 0.030611,
		-0.622385, 0.777877, 0.086859,
		38.917370, 37.945541, 38.961601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605679, 37.831631, 39.398636>,  <39.353039, 37.401028, 38.900799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605679, 37.831631, 39.398636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224552, 37.953049, 39.398022>,  <38.995876, 38.025898, 39.397652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224552, 37.953049, 39.398022>,  <39.605679, 37.831631, 39.398636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224552, 37.953049, 39.398022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007333, 0.028080, 0.999579,
		0.303460, 0.952403, -0.028981,
		-0.952816, 0.303545, -0.001537,
		38.938709, 38.044113, 39.397560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587349, 38.307125, 39.957706>,  <39.605679, 37.831631, 39.398636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587349, 38.307125, 39.957706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199551, 38.225807, 39.902935>,  <38.966873, 38.177017, 39.870071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199551, 38.225807, 39.902935>,  <39.587349, 38.307125, 39.957706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199551, 38.225807, 39.902935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136501, -0.016195, 0.990507,
		-0.203586, 0.978983, -0.012050,
		-0.969495, -0.203299, -0.136930,
		38.908703, 38.164818, 39.861855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250782, 38.802216, 40.380711>,  <39.587349, 38.307125, 39.957706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250782, 38.802216, 40.380711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004128, 38.494080, 40.315788>,  <38.856136, 38.309200, 40.276836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004128, 38.494080, 40.315788>,  <39.250782, 38.802216, 40.380711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004128, 38.494080, 40.315788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330637, 0.066319, 0.941425,
		-0.714450, 0.634180, -0.295597,
		-0.616636, -0.770336, -0.162302,
		38.819138, 38.262978, 40.267097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679409, 39.063393, 40.750397>,  <39.250782, 38.802216, 40.380711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679409, 39.063393, 40.750397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620640, 38.677654, 40.662342>,  <38.585377, 38.446213, 40.609509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620640, 38.677654, 40.662342>,  <38.679409, 39.063393, 40.750397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620640, 38.677654, 40.662342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337197, -0.160390, 0.927671,
		-0.929899, 0.210524, -0.301609,
		-0.146922, -0.964342, -0.220135,
		38.576565, 38.388351, 40.596302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010162, 38.894791, 40.830460>,  <38.679409, 39.063393, 40.750397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010162, 38.894791, 40.830460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220913, 38.557453, 40.872742>,  <38.347363, 38.355049, 40.898109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220913, 38.557453, 40.872742>,  <38.010162, 38.894791, 40.830460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220913, 38.557453, 40.872742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426245, -0.154582, 0.891303,
		-0.735336, -0.514660, -0.440916,
		0.526875, -0.843345, 0.105702,
		38.378975, 38.304451, 40.904453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619446, 38.404079, 41.128639>,  <38.010162, 38.894791, 40.830460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619446, 38.404079, 41.128639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965645, 38.223415, 41.215275>,  <38.173367, 38.115017, 41.267254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965645, 38.223415, 41.215275>,  <37.619446, 38.404079, 41.128639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965645, 38.223415, 41.215275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292882, -0.105535, 0.950306,
		-0.406363, -0.885924, -0.223626,
		0.865499, -0.451665, 0.216586,
		38.225296, 38.087917, 41.280251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455830, 37.828049, 41.364456>,  <37.619446, 38.404079, 41.128639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455830, 37.828049, 41.364456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823139, 37.883621, 41.512768>,  <38.043526, 37.916965, 41.601753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823139, 37.883621, 41.512768>,  <37.455830, 37.828049, 41.364456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823139, 37.883621, 41.512768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326338, -0.264770, 0.907414,
		0.224239, -0.954251, -0.197792,
		0.918270, 0.138931, 0.370780,
		38.098621, 37.925301, 41.624001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411797, 37.280563, 41.886131>,  <37.455830, 37.828049, 41.364456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411797, 37.280563, 41.886131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727158, 37.518230, 41.949860>,  <37.916374, 37.660831, 41.988098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727158, 37.518230, 41.949860>,  <37.411797, 37.280563, 41.886131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727158, 37.518230, 41.949860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069689, -0.171059, 0.982793,
		0.611197, -0.785942, -0.093457,
		0.788405, 0.594167, 0.159323,
		37.963680, 37.696480, 41.997658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800869, 36.898788, 42.344570>,  <37.411797, 37.280563, 41.886131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800869, 36.898788, 42.344570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890408, 37.285168, 42.396473>,  <37.944130, 37.516994, 42.427616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890408, 37.285168, 42.396473>,  <37.800869, 36.898788, 42.344570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890408, 37.285168, 42.396473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201148, -0.084483, 0.975911,
		0.953642, -0.244554, 0.175387,
		0.223845, 0.965948, 0.129758,
		37.957561, 37.574951, 42.435402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643635, 36.263966, 42.697594>,  <37.800869, 36.898788, 42.344570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643635, 36.263966, 42.697594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357983, 35.983994, 42.701859>,  <37.186592, 35.816010, 42.704418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357983, 35.983994, 42.701859>,  <37.643635, 36.263966, 42.697594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357983, 35.983994, 42.701859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240349, -0.259473, -0.935364,
		0.657454, -0.665412, 0.353526,
		-0.714133, -0.699929, 0.010661,
		37.143742, 35.774014, 42.705055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967186, 35.642586, 42.317791>,  <37.643635, 36.263966, 42.697594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967186, 35.642586, 42.317791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567616, 35.631966, 42.302654>,  <37.327873, 35.625595, 42.293571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567616, 35.631966, 42.302654>,  <37.967186, 35.642586, 42.317791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567616, 35.631966, 42.302654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042473, -0.203733, -0.978105,
		0.018260, -0.978666, 0.204643,
		-0.998931, -0.026552, -0.037846,
		37.267937, 35.624001, 42.291302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937416, 35.168091, 41.846626>,  <37.967186, 35.642586, 42.317791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937416, 35.168091, 41.846626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551003, 35.259930, 41.894073>,  <37.319157, 35.315033, 41.922543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551003, 35.259930, 41.894073>,  <37.937416, 35.168091, 41.846626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551003, 35.259930, 41.894073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143880, -0.096550, -0.984874,
		-0.214669, -0.968486, 0.126305,
		-0.966031, 0.229594, 0.118620,
		37.261192, 35.328808, 41.929661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546841, 34.668575, 41.490753>,  <37.937416, 35.168091, 41.846626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546841, 34.668575, 41.490753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342266, 35.011723, 41.470776>,  <37.219521, 35.217609, 41.458790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342266, 35.011723, 41.470776>,  <37.546841, 34.668575, 41.490753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342266, 35.011723, 41.470776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184954, -0.166653, -0.968514,
		-0.839180, -0.486097, 0.243899,
		-0.511438, 0.857867, -0.049946,
		37.188835, 35.269081, 41.455791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964432, 34.466030, 41.105080>,  <37.546841, 34.668575, 41.490753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964432, 34.466030, 41.105080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007812, 34.862965, 41.081387>,  <37.033840, 35.101124, 41.067169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007812, 34.862965, 41.081387>,  <36.964432, 34.466030, 41.105080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007812, 34.862965, 41.081387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138096, -0.043968, -0.989442,
		-0.984463, 0.115491, 0.132269,
		0.108456, 0.992335, -0.059234,
		37.040348, 35.160664, 41.063618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346977, 34.685322, 40.834244>,  <36.964432, 34.466030, 41.105080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346977, 34.685322, 40.834244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604858, 34.983582, 40.766869>,  <36.759586, 35.162537, 40.726444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604858, 34.983582, 40.766869>,  <36.346977, 34.685322, 40.834244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604858, 34.983582, 40.766869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344359, 0.086564, -0.934839,
		-0.682481, 0.660691, 0.312579,
		0.644698, 0.745649, -0.168437,
		36.798267, 35.207275, 40.716339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974140, 35.159847, 40.334366>,  <36.346977, 34.685322, 40.834244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974140, 35.159847, 40.334366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348400, 35.299019, 40.310669>,  <36.572956, 35.382523, 40.296452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348400, 35.299019, 40.310669>,  <35.974140, 35.159847, 40.334366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348400, 35.299019, 40.310669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051381, -0.031800, -0.998173,
		-0.349177, 0.936982, -0.011876,
		0.935647, 0.347929, -0.059247,
		36.629093, 35.403397, 40.292896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869328, 35.620472, 39.809254>,  <35.974140, 35.159847, 40.334366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869328, 35.620472, 39.809254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265793, 35.575859, 39.837952>,  <36.503674, 35.549091, 39.855171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265793, 35.575859, 39.837952>,  <35.869328, 35.620472, 39.809254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265793, 35.575859, 39.837952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059901, -0.106149, -0.992544,
		0.118315, 0.988076, -0.098530,
		0.991168, -0.111530, 0.071746,
		36.563145, 35.542400, 39.859474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262005, 36.165131, 39.429192>,  <35.869328, 35.620472, 39.809254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262005, 36.165131, 39.429192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500401, 35.844158, 39.441181>,  <36.643440, 35.651573, 39.448376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500401, 35.844158, 39.441181>,  <36.262005, 36.165131, 39.429192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500401, 35.844158, 39.441181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100016, 0.037141, -0.994292,
		0.796737, 0.595588, 0.102392,
		0.595992, -0.802431, 0.029977,
		36.679199, 35.603428, 39.450172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726524, 36.276733, 38.864128>,  <36.262005, 36.165131, 39.429192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726524, 36.276733, 38.864128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783325, 35.893906, 38.965210>,  <36.817406, 35.664211, 39.025860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783325, 35.893906, 38.965210>,  <36.726524, 36.276733, 38.864128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783325, 35.893906, 38.965210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033486, -0.250497, -0.967538,
		0.989300, 0.145851, -0.003522,
		0.141999, -0.957068, 0.252701,
		36.825924, 35.606785, 39.041019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250256, 36.031868, 38.544518>,  <36.726524, 36.276733, 38.864128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250256, 36.031868, 38.544518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003529, 35.723022, 38.605682>,  <36.855492, 35.537716, 38.642380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003529, 35.723022, 38.605682>,  <37.250256, 36.031868, 38.544518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003529, 35.723022, 38.605682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013853, -0.183590, -0.982905,
		0.786983, -0.608393, 0.102546,
		-0.616820, -0.772109, 0.152910,
		36.818481, 35.491390, 38.651554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426620, 35.539478, 37.997982>,  <37.250256, 36.031868, 38.544518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426620, 35.539478, 37.997982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069668, 35.424004, 38.136726>,  <36.855495, 35.354721, 38.219971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069668, 35.424004, 38.136726>,  <37.426620, 35.539478, 37.997982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069668, 35.424004, 38.136726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213385, -0.407330, -0.888003,
		0.397639, -0.866454, 0.301894,
		-0.892384, -0.288685, 0.346859,
		36.801952, 35.337399, 38.240784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.642513, 36.058083, 46.262844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.250961, 35.986290, 46.223675>,  <37.016029, 35.943214, 46.200172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.250961, 35.986290, 46.223675>,  <37.642513, 36.058083, 46.262844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250961, 35.986290, 46.223675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145288, -0.273680, -0.950784,
		0.143846, -0.944927, 0.293975,
		-0.978877, -0.179478, -0.097919,
		36.957298, 35.932446, 46.194298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621033, 35.443497, 45.962132>,  <37.642513, 36.058083, 46.262844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621033, 35.443497, 45.962132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.259594, 35.603436, 45.900635>,  <37.042732, 35.699398, 45.863739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.259594, 35.603436, 45.900635>,  <37.621033, 35.443497, 45.962132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259594, 35.603436, 45.900635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004150, -0.350686, -0.936484,
		-0.428369, -0.846840, 0.315218,
		-0.903594, 0.399853, -0.153738,
		36.988514, 35.723392, 45.854515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176723, 34.915894, 45.698830>,  <37.621033, 35.443497, 45.962132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176723, 34.915894, 45.698830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000027, 35.250359, 45.568787>,  <36.894009, 35.451038, 45.490761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000027, 35.250359, 45.568787>,  <37.176723, 34.915894, 45.698830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000027, 35.250359, 45.568787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062128, -0.390024, -0.918706,
		-0.894989, -0.385632, 0.224239,
		-0.441741, 0.836163, -0.325108,
		36.867504, 35.501209, 45.471252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536011, 34.772423, 45.272243>,  <37.176723, 34.915894, 45.698830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536011, 34.772423, 45.272243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659286, 35.136208, 45.160603>,  <36.733250, 35.354477, 45.093616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659286, 35.136208, 45.160603>,  <36.536011, 34.772423, 45.272243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659286, 35.136208, 45.160603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268809, -0.198181, -0.942585,
		-0.912558, 0.365519, 0.183395,
		0.308187, 0.909462, -0.279106,
		36.751743, 35.409046, 45.076870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492294, 34.854694, 44.577782>,  <36.536011, 34.772423, 45.272243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492294, 34.854694, 44.577782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.632034, 35.229069, 44.595581>,  <36.715878, 35.453693, 44.606258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.632034, 35.229069, 44.595581>,  <36.492294, 34.854694, 44.577782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632034, 35.229069, 44.595581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198334, 0.120274, -0.972727,
		-0.915762, 0.330995, 0.227645,
		0.349348, 0.935936, 0.044495,
		36.736839, 35.509850, 44.608929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981426, 35.394299, 44.166698>,  <36.492294, 34.854694, 44.577782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981426, 35.394299, 44.166698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364914, 35.507591, 44.176758>,  <36.595009, 35.575565, 44.182793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364914, 35.507591, 44.176758>,  <35.981426, 35.394299, 44.166698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364914, 35.507591, 44.176758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031249, 0.192859, -0.980729,
		-0.282625, 0.939460, 0.193749,
		0.958721, 0.283233, 0.025150,
		36.652531, 35.592560, 44.184303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026363, 36.052555, 43.789898>,  <35.981426, 35.394299, 44.166698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026363, 36.052555, 43.789898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375523, 35.857746, 43.801559>,  <36.585018, 35.740860, 43.808556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375523, 35.857746, 43.801559>,  <36.026363, 36.052555, 43.789898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375523, 35.857746, 43.801559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169142, 0.246021, -0.954392,
		0.457639, 0.838022, 0.297129,
		0.872902, -0.487024, 0.029156,
		36.637394, 35.711639, 43.810307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492382, 36.426624, 43.375237>,  <36.026363, 36.052555, 43.789898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492382, 36.426624, 43.375237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.705944, 36.089741, 43.405247>,  <36.834080, 35.887611, 43.423252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.705944, 36.089741, 43.405247>,  <36.492382, 36.426624, 43.375237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705944, 36.089741, 43.405247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295897, 0.102982, -0.949652,
		0.792081, 0.529221, 0.304190,
		0.533903, -0.842211, 0.075025,
		36.866116, 35.837078, 43.427753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166790, 36.569447, 43.153179>,  <36.492382, 36.426624, 43.375237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166790, 36.569447, 43.153179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.107616, 36.174747, 43.126537>,  <37.072113, 35.937927, 43.110550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.107616, 36.174747, 43.126537>,  <37.166790, 36.569447, 43.153179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107616, 36.174747, 43.126537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144889, 0.044998, -0.988424,
		0.978327, -0.155872, 0.136313,
		-0.147933, -0.986752, -0.066607,
		37.063236, 35.878723, 43.106556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917976, 36.876827, 43.207577>,  <37.166790, 36.569447, 43.153179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917976, 36.876827, 43.207577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922672, 37.255257, 43.078083>,  <37.925491, 37.482315, 43.000389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922672, 37.255257, 43.078083>,  <37.917976, 36.876827, 43.207577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922672, 37.255257, 43.078083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091455, 0.323412, 0.941828,
		0.995740, 0.018550, 0.090320,
		0.011739, 0.946076, -0.323731,
		37.926193, 37.539078, 42.980965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371220, 37.282757, 43.599030>,  <37.917976, 36.876827, 43.207577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371220, 37.282757, 43.599030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.079880, 37.510143, 43.446003>,  <37.905075, 37.646576, 43.354187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.079880, 37.510143, 43.446003>,  <38.371220, 37.282757, 43.599030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079880, 37.510143, 43.446003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147891, 0.414747, 0.897838,
		0.669059, 0.710516, -0.218009,
		-0.728347, 0.568465, -0.382569,
		37.861374, 37.680683, 43.331234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449986, 37.812222, 43.943237>,  <38.371220, 37.282757, 43.599030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449986, 37.812222, 43.943237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.075428, 37.814903, 43.802887>,  <37.850693, 37.816513, 43.718678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.075428, 37.814903, 43.802887>,  <38.449986, 37.812222, 43.943237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075428, 37.814903, 43.802887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321886, 0.381926, 0.866327,
		0.139813, 0.924169, -0.355478,
		-0.936398, 0.006700, -0.350875,
		37.794510, 37.816914, 43.697624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278255, 38.548920, 44.121624>,  <38.449986, 37.812222, 43.943237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278255, 38.548920, 44.121624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930576, 38.363403, 44.053047>,  <37.721970, 38.252094, 44.011902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930576, 38.363403, 44.053047>,  <38.278255, 38.548920, 44.121624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930576, 38.363403, 44.053047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382031, 0.409790, 0.828326,
		-0.313914, 0.785477, -0.533371,
		-0.869201, -0.463787, -0.171438,
		37.669815, 38.224266, 44.001617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736141, 39.045601, 43.936146>,  <38.278255, 38.548920, 44.121624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736141, 39.045601, 43.936146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547886, 38.717251, 44.065552>,  <37.434933, 38.520241, 44.143196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.547886, 38.717251, 44.065552>,  <37.736141, 39.045601, 43.936146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547886, 38.717251, 44.065552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467611, 0.542989, 0.697497,
		-0.748224, 0.176990, -0.639403,
		-0.470639, -0.820876, 0.323514,
		37.406693, 38.470989, 44.162605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108757, 39.254963, 44.193554>,  <37.736141, 39.045601, 43.936146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108757, 39.254963, 44.193554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.120125, 38.892902, 44.363209>,  <37.126945, 38.675667, 44.465004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.120125, 38.892902, 44.363209>,  <37.108757, 39.254963, 44.193554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120125, 38.892902, 44.363209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471253, 0.362069, 0.804255,
		-0.881540, -0.222731, -0.416266,
		0.028416, -0.905150, 0.424141,
		37.128651, 38.621357, 44.490452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388142, 39.046532, 44.578644>,  <37.108757, 39.254963, 44.193554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388142, 39.046532, 44.578644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647354, 38.814964, 44.776596>,  <36.802883, 38.676025, 44.895367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647354, 38.814964, 44.776596>,  <36.388142, 39.046532, 44.578644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647354, 38.814964, 44.776596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346430, 0.354609, 0.868469,
		-0.678263, -0.734237, 0.029243,
		0.648032, -0.578920, 0.494880,
		36.841763, 38.641289, 44.925060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022430, 38.874519, 45.161842>,  <36.388142, 39.046532, 44.578644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022430, 38.874519, 45.161842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402229, 38.794518, 45.258549>,  <36.630108, 38.746517, 45.316574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402229, 38.794518, 45.258549>,  <36.022430, 38.874519, 45.161842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402229, 38.794518, 45.258549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180816, 0.280943, 0.942537,
		-0.256438, -0.938652, 0.230590,
		0.949497, -0.200009, 0.241768,
		36.687080, 38.734516, 45.331078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013920, 38.434940, 45.787769>,  <36.022430, 38.874519, 45.161842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013920, 38.434940, 45.787769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379196, 38.597584, 45.776741>,  <36.598362, 38.695171, 45.770123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379196, 38.597584, 45.776741>,  <36.013920, 38.434940, 45.787769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379196, 38.597584, 45.776741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061773, 0.204966, 0.976818,
		0.402834, -0.890314, 0.212290,
		0.913186, 0.406609, -0.027570,
		36.653152, 38.719566, 45.768471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404755, 38.153961, 46.353447>,  <36.013920, 38.434940, 45.787769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404755, 38.153961, 46.353447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.563530, 38.501892, 46.236248>,  <36.658794, 38.710651, 46.165928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.563530, 38.501892, 46.236248>,  <36.404755, 38.153961, 46.353447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563530, 38.501892, 46.236248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167625, 0.382551, 0.908601,
		0.902410, -0.311543, 0.297653,
		0.396936, 0.869825, -0.292996,
		36.682610, 38.762840, 46.148350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002670, 38.315735, 46.740829>,  <36.404755, 38.153961, 46.353447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002670, 38.315735, 46.740829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.837681, 38.658043, 46.615917>,  <36.738689, 38.863430, 46.540970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.837681, 38.658043, 46.615917>,  <37.002670, 38.315735, 46.740829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837681, 38.658043, 46.615917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004908, 0.340710, 0.940156,
		0.910958, 0.389319, -0.136333,
		-0.412470, 0.855773, -0.312283,
		36.713940, 38.914776, 46.522232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282131, 38.781250, 47.203346>,  <37.002670, 38.315735, 46.740829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282131, 38.781250, 47.203346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.008682, 39.017231, 47.031475>,  <36.844612, 39.158821, 46.928352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.008682, 39.017231, 47.031475>,  <37.282131, 38.781250, 47.203346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008682, 39.017231, 47.031475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136094, 0.475357, 0.869203,
		0.717036, 0.652681, -0.244676,
		-0.683621, 0.589951, -0.429674,
		36.803596, 39.194218, 46.902573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492981, 39.323093, 47.379089>,  <37.282131, 38.781250, 47.203346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492981, 39.323093, 47.379089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112408, 39.397129, 47.280693>,  <36.884064, 39.441551, 47.221657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112408, 39.397129, 47.280693>,  <37.492981, 39.323093, 47.379089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112408, 39.397129, 47.280693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131388, 0.478483, 0.868212,
		0.278400, 0.858368, -0.430927,
		-0.951436, 0.185091, -0.245989,
		36.826977, 39.452656, 47.206898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461090, 39.983734, 47.561111>,  <37.492981, 39.323093, 47.379089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461090, 39.983734, 47.561111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.077827, 39.878071, 47.517006>,  <36.847870, 39.814671, 47.490543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.077827, 39.878071, 47.517006>,  <37.461090, 39.983734, 47.561111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077827, 39.878071, 47.517006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237080, 0.516459, 0.822838,
		-0.160416, 0.814548, -0.557475,
		-0.958154, -0.264163, -0.110265,
		36.790382, 39.798820, 47.483925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.846485, 35.685677, 47.447952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.245989, 35.675320, 47.464951>,  <30.485691, 35.669106, 47.475151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.245989, 35.675320, 47.464951>,  <29.846485, 35.685677, 47.447952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245989, 35.675320, 47.464951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048776, 0.340050, -0.939142,
		0.009863, 0.940051, 0.340891,
		0.998761, -0.025890, 0.042498,
		30.545618, 35.667553, 47.477699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991198, 36.311203, 47.144123>,  <29.846485, 35.685677, 47.447952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991198, 36.311203, 47.144123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.324389, 36.090206, 47.132122>,  <30.524303, 35.957607, 47.124924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.324389, 36.090206, 47.132122>,  <29.991198, 36.311203, 47.144123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324389, 36.090206, 47.132122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081478, 0.176110, -0.980993,
		0.547272, 0.814703, 0.191711,
		0.832979, -0.552490, -0.030000,
		30.574282, 35.924458, 47.123123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416210, 36.766827, 46.754959>,  <29.991198, 36.311203, 47.144123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416210, 36.766827, 46.754959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.562357, 36.394482, 46.754742>,  <30.650045, 36.171074, 46.754612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.562357, 36.394482, 46.754742>,  <30.416210, 36.766827, 46.754959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562357, 36.394482, 46.754742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085496, -0.032981, -0.995793,
		0.926929, 0.363877, -0.091636,
		0.365368, -0.930863, -0.000539,
		30.671967, 36.115223, 46.754581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938282, 36.758736, 46.127995>,  <30.416210, 36.766827, 46.754959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938282, 36.758736, 46.127995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.825823, 36.392307, 46.242378>,  <30.758348, 36.172451, 46.311008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.825823, 36.392307, 46.242378>,  <30.938282, 36.758736, 46.127995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825823, 36.392307, 46.242378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179594, -0.242493, -0.953385,
		0.942710, -0.319397, -0.096344,
		-0.281146, -0.916069, 0.285962,
		30.741480, 36.117485, 46.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406309, 36.285221, 45.808090>,  <30.938282, 36.758736, 46.127995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406309, 36.285221, 45.808090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078619, 36.067833, 45.881306>,  <30.882004, 35.937401, 45.925236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078619, 36.067833, 45.881306>,  <31.406309, 36.285221, 45.808090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078619, 36.067833, 45.881306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063784, -0.230846, -0.970897,
		0.569912, -0.807060, 0.154450,
		-0.819227, -0.543474, 0.183039,
		30.832851, 35.904789, 45.936218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565832, 35.641758, 45.646492>,  <31.406309, 36.285221, 45.808090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565832, 35.641758, 45.646492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.167946, 35.661488, 45.610474>,  <30.929214, 35.673325, 45.588863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.167946, 35.661488, 45.610474>,  <31.565832, 35.641758, 45.646492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167946, 35.661488, 45.610474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079477, -0.185294, -0.979464,
		-0.064997, -0.981444, 0.180394,
		-0.994715, 0.049325, -0.090046,
		30.869532, 35.676285, 45.583458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370321, 35.046242, 45.163849>,  <31.565832, 35.641758, 45.646492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370321, 35.046242, 45.163849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060137, 35.298794, 45.165726>,  <30.874025, 35.450325, 45.166851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060137, 35.298794, 45.165726>,  <31.370321, 35.046242, 45.163849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060137, 35.298794, 45.165726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124976, -0.146196, -0.981330,
		-0.618902, -0.761571, 0.192276,
		-0.775462, 0.631377, 0.004697,
		30.827497, 35.488209, 45.167133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795418, 34.731014, 44.813049>,  <31.370321, 35.046242, 45.163849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795418, 34.731014, 44.813049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727758, 35.124161, 44.783779>,  <30.687162, 35.360050, 44.766216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727758, 35.124161, 44.783779>,  <30.795418, 34.731014, 44.813049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727758, 35.124161, 44.783779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186185, -0.104777, -0.976912,
		-0.967845, -0.151619, 0.200719,
		-0.169150, 0.982870, -0.073179,
		30.677013, 35.419022, 44.761826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285830, 34.701412, 44.322639>,  <30.795418, 34.731014, 44.813049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285830, 34.701412, 44.322639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.402361, 35.084053, 44.325264>,  <30.472281, 35.313637, 44.326839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.402361, 35.084053, 44.325264>,  <30.285830, 34.701412, 44.322639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402361, 35.084053, 44.325264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141819, 0.049970, -0.988631,
		-0.946052, 0.287087, 0.150222,
		0.291330, 0.956600, 0.006560,
		30.489759, 35.371033, 44.327232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002586, 34.906654, 43.741940>,  <30.285830, 34.701412, 44.322639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002586, 34.906654, 43.741940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.245466, 35.218113, 43.805210>,  <30.391193, 35.404987, 43.843174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.245466, 35.218113, 43.805210>,  <30.002586, 34.906654, 43.741940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245466, 35.218113, 43.805210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029409, 0.176921, -0.983786,
		-0.794006, 0.602005, 0.084527,
		0.607199, 0.778646, 0.158181,
		30.427626, 35.451706, 43.852665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817198, 35.374287, 43.145996>,  <30.002586, 34.906654, 43.741940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817198, 35.374287, 43.145996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.193581, 35.461128, 43.249897>,  <30.419411, 35.513233, 43.312237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.193581, 35.461128, 43.249897>,  <29.817198, 35.374287, 43.145996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193581, 35.461128, 43.249897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166460, 0.371401, -0.913429,
		-0.294776, 0.902734, 0.313334,
		0.940956, 0.217100, 0.259750,
		30.475868, 35.526257, 43.327824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950262, 35.947529, 42.769012>,  <29.817198, 35.374287, 43.145996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950262, 35.947529, 42.769012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.314028, 35.841957, 42.897579>,  <30.532288, 35.778614, 42.974720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.314028, 35.841957, 42.897579>,  <29.950262, 35.947529, 42.769012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314028, 35.841957, 42.897579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397330, 0.323049, -0.858934,
		0.122868, 0.908834, 0.398654,
		0.909413, -0.263933, 0.321415,
		30.586851, 35.762775, 42.994003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492277, 36.548084, 42.666496>,  <29.950262, 35.947529, 42.769012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492277, 36.548084, 42.666496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.676769, 36.193172, 42.667740>,  <30.787464, 35.980225, 42.668484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.676769, 36.193172, 42.667740>,  <30.492277, 36.548084, 42.666496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676769, 36.193172, 42.667740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360982, 0.184448, -0.914151,
		0.810531, 0.422753, 0.405363,
		0.461228, -0.887276, 0.003106,
		30.815138, 35.926991, 42.668671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151640, 36.698387, 42.663601>,  <30.492277, 36.548084, 42.666496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151640, 36.698387, 42.663601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.104549, 36.330879, 42.512867>,  <31.076296, 36.110374, 42.422424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.104549, 36.330879, 42.512867>,  <31.151640, 36.698387, 42.663601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104549, 36.330879, 42.512867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527997, 0.263479, -0.807340,
		0.841047, -0.294014, 0.454088,
		-0.117726, -0.918768, -0.376837,
		31.069231, 36.055248, 42.399815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907217, 36.712639, 42.746990>,  <31.151640, 36.698387, 42.663601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907217, 36.712639, 42.746990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.958508, 37.109081, 42.732704>,  <31.989281, 37.346947, 42.724133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.958508, 37.109081, 42.732704>,  <31.907217, 36.712639, 42.746990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958508, 37.109081, 42.732704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204629, 0.061673, 0.976895,
		0.970405, -0.117955, 0.210717,
		0.128225, 0.991102, -0.035711,
		31.996975, 37.406410, 42.721992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274666, 36.904770, 43.383121>,  <31.907217, 36.712639, 42.746990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274666, 36.904770, 43.383121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127522, 37.253708, 43.254318>,  <32.039234, 37.463070, 43.177036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127522, 37.253708, 43.254318>,  <32.274666, 36.904770, 43.383121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127522, 37.253708, 43.254318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167493, 0.278466, 0.945729,
		0.914671, 0.401834, 0.043675,
		-0.367864, 0.872345, -0.322009,
		32.017162, 37.515411, 43.157715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479225, 37.466492, 43.880047>,  <32.274666, 36.904770, 43.383121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479225, 37.466492, 43.880047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170185, 37.641342, 43.695873>,  <31.984760, 37.746254, 43.585369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170185, 37.641342, 43.695873>,  <32.479225, 37.466492, 43.880047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170185, 37.641342, 43.695873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251933, 0.454598, 0.854324,
		0.582765, 0.776053, -0.241096,
		-0.772603, 0.437130, -0.460437,
		31.938404, 37.772480, 43.557743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512970, 38.191887, 43.989582>,  <32.479225, 37.466492, 43.880047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512970, 38.191887, 43.989582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125145, 38.165367, 43.895302>,  <31.892450, 38.149456, 43.838734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125145, 38.165367, 43.895302>,  <32.512970, 38.191887, 43.989582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125145, 38.165367, 43.895302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241756, 0.411648, 0.878692,
		0.038768, 0.908928, -0.415147,
		-0.969562, -0.066299, -0.235697,
		31.834276, 38.145477, 43.824593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212559, 38.788361, 44.198811>,  <32.512970, 38.191887, 43.989582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212559, 38.788361, 44.198811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891150, 38.555450, 44.149311>,  <31.698305, 38.415707, 44.119610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891150, 38.555450, 44.149311>,  <32.212559, 38.788361, 44.198811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891150, 38.555450, 44.149311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403831, 0.380455, 0.831971,
		-0.437350, 0.718481, -0.540842,
		-0.803521, -0.582271, -0.123752,
		31.650093, 38.380768, 44.112186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640509, 39.242496, 44.333714>,  <32.212559, 38.788361, 44.198811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640509, 39.242496, 44.333714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.488482, 38.876587, 44.388458>,  <31.397264, 38.657040, 44.421307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.488482, 38.876587, 44.388458>,  <31.640509, 39.242496, 44.333714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488482, 38.876587, 44.388458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245430, 0.242404, 0.938618,
		-0.891802, 0.323149, -0.316644,
		-0.380069, -0.914776, 0.136866,
		31.374460, 38.602154, 44.429520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055435, 39.339115, 44.772812>,  <31.640509, 39.242496, 44.333714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055435, 39.339115, 44.772812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087135, 38.942413, 44.813107>,  <31.106155, 38.704391, 44.837284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087135, 38.942413, 44.813107>,  <31.055435, 39.339115, 44.772812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087135, 38.942413, 44.813107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346362, 0.067360, 0.935680,
		-0.934748, -0.109043, -0.338167,
		0.079251, -0.991752, 0.100733,
		31.110910, 38.644886, 44.843327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419781, 39.045189, 45.082462>,  <31.055435, 39.339115, 44.772812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419781, 39.045189, 45.082462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719002, 38.792858, 45.164902>,  <30.898535, 38.641460, 45.214367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719002, 38.792858, 45.164902>,  <30.419781, 39.045189, 45.082462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719002, 38.792858, 45.164902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131178, 0.163877, 0.977720,
		-0.650547, -0.758421, 0.039838,
		0.748052, -0.630827, 0.206098,
		30.943417, 38.603611, 45.226730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226990, 38.605923, 45.701576>,  <30.419781, 39.045189, 45.082462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226990, 38.605923, 45.701576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.616304, 38.516022, 45.682816>,  <30.849894, 38.462082, 45.671558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.616304, 38.516022, 45.682816>,  <30.226990, 38.605923, 45.701576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616304, 38.516022, 45.682816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029007, -0.082281, 0.996187,
		-0.227759, -0.970935, -0.073564,
		0.973286, -0.224757, -0.046904,
		30.908291, 38.448597, 45.668743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309139, 37.978958, 46.177940>,  <30.226990, 38.605923, 45.701576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309139, 37.978958, 46.177940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645061, 38.193089, 46.141823>,  <30.846615, 38.321568, 46.120152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645061, 38.193089, 46.141823>,  <30.309139, 37.978958, 46.177940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645061, 38.193089, 46.141823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122974, -0.025583, 0.992080,
		0.528776, -0.844258, -0.087316,
		0.839806, 0.535325, -0.090294,
		30.897003, 38.353687, 46.114735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859629, 37.549625, 46.493149>,  <30.309139, 37.978958, 46.177940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859629, 37.549625, 46.493149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957485, 37.937275, 46.505512>,  <31.016199, 38.169865, 46.512932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957485, 37.937275, 46.505512>,  <30.859629, 37.549625, 46.493149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957485, 37.937275, 46.505512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094700, -0.055609, 0.993951,
		0.964979, -0.240232, -0.105380,
		0.244639, 0.969121, 0.030911,
		31.030876, 38.228012, 46.514786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409578, 37.489101, 46.847870>,  <30.859629, 37.549625, 46.493149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409578, 37.489101, 46.847870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347132, 37.882828, 46.880741>,  <31.309664, 38.119064, 46.900463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347132, 37.882828, 46.880741>,  <31.409578, 37.489101, 46.847870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347132, 37.882828, 46.880741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339899, -0.024586, 0.940140,
		0.927414, 0.174703, -0.330729,
		-0.156115, 0.984314, 0.082183,
		31.300297, 38.178123, 46.905396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033596, 37.748543, 47.054466>,  <31.409578, 37.489101, 46.847870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033596, 37.748543, 47.054466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757872, 38.022053, 47.150223>,  <31.592438, 38.186157, 47.207676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757872, 38.022053, 47.150223>,  <32.033596, 37.748543, 47.054466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757872, 38.022053, 47.150223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287056, -0.045615, 0.956827,
		0.665174, 0.728267, -0.164839,
		-0.689306, 0.683774, 0.239395,
		31.551079, 38.227184, 47.222042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393303, 38.215328, 47.511082>,  <32.033596, 37.748543, 47.054466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393303, 38.215328, 47.511082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999636, 38.239468, 47.577744>,  <31.763435, 38.253952, 47.617741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999636, 38.239468, 47.577744>,  <32.393303, 38.215328, 47.511082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999636, 38.239468, 47.577744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157886, -0.128829, 0.979017,
		0.080552, 0.989829, 0.117261,
		-0.984166, 0.060347, 0.166657,
		31.704386, 38.257572, 47.627739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620087, 39.013828, 47.532997>,  <32.393303, 38.215328, 47.511082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620087, 39.013828, 47.532997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913467, 39.277245, 47.600384>,  <33.089497, 39.435295, 47.640816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913467, 39.277245, 47.600384>,  <32.620087, 39.013828, 47.532997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913467, 39.277245, 47.600384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127736, 0.376952, -0.917383,
		-0.667635, 0.651334, 0.360594,
		0.733449, 0.658538, 0.168468,
		33.133503, 39.474804, 47.650925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341984, 39.559032, 47.191933>,  <32.620087, 39.013828, 47.532997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341984, 39.559032, 47.191933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.720455, 39.676960, 47.245327>,  <32.947540, 39.747719, 47.277363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.720455, 39.676960, 47.245327>,  <32.341984, 39.559032, 47.191933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720455, 39.676960, 47.245327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035990, 0.314046, -0.948725,
		-0.321625, 0.902472, 0.286534,
		0.946183, 0.294822, 0.133485,
		33.004311, 39.765408, 47.285374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399979, 40.283413, 46.930237>,  <32.341984, 39.559032, 47.191933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399979, 40.283413, 46.930237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768101, 40.127010, 46.925373>,  <32.988976, 40.033169, 46.922455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768101, 40.127010, 46.925373>,  <32.399979, 40.283413, 46.930237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768101, 40.127010, 46.925373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120589, 0.313125, -0.942025,
		0.372141, 0.865488, 0.335323,
		0.920309, -0.391003, -0.012158,
		33.044193, 40.009708, 46.921726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782612, 40.780842, 46.729122>,  <32.399979, 40.283413, 46.930237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782612, 40.780842, 46.729122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979027, 40.444756, 46.637108>,  <33.096874, 40.243103, 46.581898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979027, 40.444756, 46.637108>,  <32.782612, 40.780842, 46.729122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979027, 40.444756, 46.637108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296715, 0.409586, -0.862670,
		0.819050, 0.355347, 0.450427,
		0.491036, -0.840219, -0.230035,
		33.126339, 40.192692, 46.568096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333889, 41.074856, 46.507275>,  <32.782612, 40.780842, 46.729122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333889, 41.074856, 46.507275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370949, 40.702045, 46.367134>,  <33.393185, 40.478359, 46.283051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370949, 40.702045, 46.367134>,  <33.333889, 41.074856, 46.507275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370949, 40.702045, 46.367134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339888, 0.360336, -0.868697,
		0.935892, -0.038598, 0.350168,
		0.092648, -0.932024, -0.350354,
		33.398743, 40.422440, 46.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933830, 41.038952, 46.166851>,  <33.333889, 41.074856, 46.507275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933830, 41.038952, 46.166851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741726, 40.716278, 46.029095>,  <33.626461, 40.522675, 45.946442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741726, 40.716278, 46.029095>,  <33.933830, 41.038952, 46.166851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741726, 40.716278, 46.029095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308275, 0.212349, -0.927294,
		0.821165, -0.551515, 0.146696,
		-0.480265, -0.806684, -0.344392,
		33.597645, 40.474274, 45.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411636, 40.576038, 45.853786>,  <33.933830, 41.038952, 46.166851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411636, 40.576038, 45.853786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062164, 40.474033, 45.688061>,  <33.852482, 40.412830, 45.588623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062164, 40.474033, 45.688061>,  <34.411636, 40.576038, 45.853786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062164, 40.474033, 45.688061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402629, 0.099047, -0.909989,
		0.273095, -0.961852, 0.016140,
		-0.873676, -0.255011, -0.414319,
		33.800060, 40.397530, 45.563766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604580, 40.179237, 45.321095>,  <34.411636, 40.576038, 45.853786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604580, 40.179237, 45.321095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236137, 40.313774, 45.242668>,  <34.015072, 40.394497, 45.195610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236137, 40.313774, 45.242668>,  <34.604580, 40.179237, 45.321095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236137, 40.313774, 45.242668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273154, 0.199468, -0.941063,
		-0.277409, -0.920373, -0.275604,
		-0.921103, 0.336342, -0.196069,
		33.959805, 40.414677, 45.183849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376434, 39.804386, 44.788822>,  <34.604580, 40.179237, 45.321095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376434, 39.804386, 44.788822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168228, 40.145901, 44.793144>,  <34.043304, 40.350807, 44.795738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168228, 40.145901, 44.793144>,  <34.376434, 39.804386, 44.788822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168228, 40.145901, 44.793144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246177, 0.162183, -0.955559,
		-0.817593, -0.494724, -0.294601,
		-0.520517, 0.853783, 0.010809,
		34.012074, 40.402035, 44.796387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974812, 39.758808, 44.173107>,  <34.376434, 39.804386, 44.788822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974812, 39.758808, 44.173107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972889, 40.139481, 44.295921>,  <33.971733, 40.367886, 44.369610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972889, 40.139481, 44.295921>,  <33.974812, 39.758808, 44.173107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972889, 40.139481, 44.295921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264324, 0.297332, -0.917456,
		-0.964422, 0.076744, -0.252984,
		-0.004811, 0.951685, 0.307039,
		33.971447, 40.424988, 44.388035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569134, 40.053394, 43.765419>,  <33.974812, 39.758808, 44.173107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569134, 40.053394, 43.765419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803204, 40.347832, 43.901497>,  <33.943645, 40.524494, 43.983143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803204, 40.347832, 43.901497>,  <33.569134, 40.053394, 43.765419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803204, 40.347832, 43.901497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206647, 0.270309, -0.940335,
		-0.784137, 0.620559, 0.006065,
		0.585173, 0.736098, 0.340196,
		33.978756, 40.568661, 44.003555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442509, 40.551476, 43.255718>,  <33.569134, 40.053394, 43.765419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442509, 40.551476, 43.255718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785137, 40.663494, 43.429092>,  <33.990715, 40.730705, 43.533115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785137, 40.663494, 43.429092>,  <33.442509, 40.551476, 43.255718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785137, 40.663494, 43.429092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355791, 0.287877, -0.889123,
		-0.373773, 0.915806, 0.146947,
		0.856567, 0.280048, 0.433436,
		34.042107, 40.747509, 43.559124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693535, 41.179363, 42.909309>,  <33.442509, 40.551476, 43.255718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693535, 41.179363, 42.909309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021946, 41.016258, 43.069130>,  <34.218994, 40.918396, 43.165024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021946, 41.016258, 43.069130>,  <33.693535, 41.179363, 42.909309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021946, 41.016258, 43.069130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505630, 0.194452, -0.840552,
		0.265055, 0.892141, 0.365829,
		0.821026, -0.407766, 0.399552,
		34.268253, 40.893929, 43.188995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217102, 41.452679, 42.514084>,  <33.693535, 41.179363, 42.909309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217102, 41.452679, 42.514084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.420956, 41.157749, 42.691456>,  <34.543266, 40.980793, 42.797878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.420956, 41.157749, 42.691456>,  <34.217102, 41.452679, 42.514084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420956, 41.157749, 42.691456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501057, -0.164634, -0.849610,
		0.699441, 0.655172, 0.285539,
		0.509631, -0.737323, 0.443430,
		34.573845, 40.936554, 42.824486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.488024, 42.653603, 31.787878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.236132, 42.470196, 31.537054>,  <26.084997, 42.360153, 31.386560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.236132, 42.470196, 31.537054>,  <26.488024, 42.653603, 31.787878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236132, 42.470196, 31.537054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115250, -0.853431, 0.508305,
		-0.768217, 0.247826, 0.590275,
		-0.629730, -0.458518, -0.627058,
		26.047213, 42.332642, 31.348936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973890, 42.460629, 32.207729>,  <26.488024, 42.653603, 31.787878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973890, 42.460629, 32.207729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984978, 42.243801, 31.871778>,  <25.991631, 42.113705, 31.670208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984978, 42.243801, 31.871778>,  <25.973890, 42.460629, 32.207729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984978, 42.243801, 31.871778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014150, -0.839905, 0.542550,
		-0.999516, -0.026924, -0.015612,
		0.027720, -0.542066, -0.839879,
		25.993294, 42.081181, 31.619816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564287, 41.923615, 32.329056>,  <25.973890, 42.460629, 32.207729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564287, 41.923615, 32.329056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.768896, 41.771671, 32.020756>,  <25.891663, 41.680508, 31.835775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.768896, 41.771671, 32.020756>,  <25.564287, 41.923615, 32.329056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768896, 41.771671, 32.020756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030229, -0.904382, 0.425651,
		-0.858737, -0.194432, -0.474096,
		0.511524, -0.379854, -0.770749,
		25.922354, 41.657715, 31.789532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166515, 41.349781, 32.140495>,  <25.564287, 41.923615, 32.329056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166515, 41.349781, 32.140495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.538662, 41.290874, 32.006195>,  <25.761950, 41.255531, 31.925613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.538662, 41.290874, 32.006195>,  <25.166515, 41.349781, 32.140495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538662, 41.290874, 32.006195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051089, -0.958924, 0.279026,
		-0.363053, -0.242443, -0.899674,
		0.930367, -0.147264, -0.335754,
		25.817772, 41.246696, 31.905468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239826, 40.684299, 31.873434>,  <25.166515, 41.349781, 32.140495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239826, 40.684299, 31.873434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629620, 40.769154, 31.902767>,  <25.863497, 40.820065, 31.920366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629620, 40.769154, 31.902767>,  <25.239826, 40.684299, 31.873434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629620, 40.769154, 31.902767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172889, -0.917782, 0.357471,
		0.143134, -0.335673, -0.931040,
		0.974486, 0.212133, 0.073332,
		25.921965, 40.832794, 31.924767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604677, 40.078194, 31.664864>,  <25.239826, 40.684299, 31.873434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604677, 40.078194, 31.664864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.838568, 40.292656, 31.908382>,  <25.978901, 40.421333, 32.054493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.838568, 40.292656, 31.908382>,  <25.604677, 40.078194, 31.664864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838568, 40.292656, 31.908382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288316, -0.838811, 0.461811,
		0.758268, -0.094506, -0.645056,
		0.584725, 0.536157, 0.608797,
		26.013985, 40.453503, 32.091022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214481, 39.684902, 31.740822>,  <25.604677, 40.078194, 31.664864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214481, 39.684902, 31.740822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.244514, 39.925083, 32.059273>,  <26.262535, 40.069191, 32.250343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.244514, 39.925083, 32.059273>,  <26.214481, 39.684902, 31.740822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244514, 39.925083, 32.059273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304262, -0.774102, 0.555149,
		0.949625, 0.200548, -0.240818,
		0.075084, 0.600455, 0.796126,
		26.267040, 40.105221, 32.298111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897602, 39.589870, 31.935160>,  <26.214481, 39.684902, 31.740822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897602, 39.589870, 31.935160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691145, 39.732471, 32.246674>,  <26.567270, 39.818031, 32.433582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691145, 39.732471, 32.246674>,  <26.897602, 39.589870, 31.935160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691145, 39.732471, 32.246674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296355, -0.778764, 0.552902,
		0.803599, 0.516172, 0.296301,
		-0.516141, 0.356502, 0.778784,
		26.536303, 39.839420, 32.480309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355282, 39.676983, 32.454212>,  <26.897602, 39.589870, 31.935160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355282, 39.676983, 32.454212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.003113, 39.679169, 32.643875>,  <26.791811, 39.680481, 32.757671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.003113, 39.679169, 32.643875>,  <27.355282, 39.676983, 32.454212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003113, 39.679169, 32.643875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338410, -0.693200, 0.636359,
		0.332163, 0.720724, 0.608460,
		-0.880424, 0.005466, 0.474156,
		26.738985, 39.680809, 32.786121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577879, 39.587948, 33.111797>,  <27.355282, 39.676983, 32.454212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577879, 39.587948, 33.111797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190510, 39.488258, 33.114567>,  <26.958088, 39.428444, 33.116230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190510, 39.488258, 33.114567>,  <27.577879, 39.587948, 33.111797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190510, 39.488258, 33.114567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206003, -0.784225, 0.585282,
		-0.140435, 0.568226, 0.810801,
		-0.968422, -0.249222, 0.006923,
		26.899982, 39.413490, 33.116642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375101, 39.341496, 33.760937>,  <27.577879, 39.587948, 33.111797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375101, 39.341496, 33.760937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050705, 39.200188, 33.574390>,  <26.856068, 39.115402, 33.462463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050705, 39.200188, 33.574390>,  <27.375101, 39.341496, 33.760937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050705, 39.200188, 33.574390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052085, -0.750362, 0.658972,
		-0.582734, 0.558712, 0.590137,
		-0.810992, -0.353268, -0.466362,
		26.807407, 39.094208, 33.434483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922573, 39.214287, 34.274338>,  <27.375101, 39.341496, 33.760937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922573, 39.214287, 34.274338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820017, 39.004833, 33.949360>,  <26.758484, 38.879162, 33.754372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820017, 39.004833, 33.949360>,  <26.922573, 39.214287, 34.274338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820017, 39.004833, 33.949360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254223, -0.774417, 0.579353,
		-0.932542, 0.355083, 0.065432,
		-0.256390, -0.523637, -0.812446,
		26.743099, 38.847744, 33.705627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317690, 38.900925, 34.463974>,  <26.922573, 39.214287, 34.274338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317690, 38.900925, 34.463974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.424433, 38.679111, 34.148689>,  <26.488480, 38.546024, 33.959518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.424433, 38.679111, 34.148689>,  <26.317690, 38.900925, 34.463974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424433, 38.679111, 34.148689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357585, -0.816464, 0.453344,
		-0.894942, 0.160875, -0.416172,
		0.266857, -0.554532, -0.788214,
		26.504490, 38.512753, 33.912224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725971, 38.539265, 34.264977>,  <26.317690, 38.900925, 34.463974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725971, 38.539265, 34.264977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028973, 38.326870, 34.113060>,  <26.210773, 38.199432, 34.021912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028973, 38.326870, 34.113060>,  <25.725971, 38.539265, 34.264977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028973, 38.326870, 34.113060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317031, -0.807762, 0.497003,
		-0.570682, -0.256077, -0.780222,
		0.757505, -0.530985, -0.379791,
		26.256224, 38.167576, 33.999123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488733, 37.905930, 34.023861>,  <25.725971, 38.539265, 34.264977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488733, 37.905930, 34.023861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.873508, 37.839153, 34.110401>,  <26.104374, 37.799088, 34.162323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.873508, 37.839153, 34.110401>,  <25.488733, 37.905930, 34.023861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873508, 37.839153, 34.110401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249936, -0.857590, 0.449523,
		0.110494, -0.486486, -0.866673,
		0.961937, -0.166943, 0.216349,
		26.162090, 37.789070, 34.175304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594967, 37.187607, 33.877129>,  <25.488733, 37.905930, 34.023861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594967, 37.187607, 33.877129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.903435, 37.289391, 34.110554>,  <26.088516, 37.350460, 34.250610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.903435, 37.289391, 34.110554>,  <25.594967, 37.187607, 33.877129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903435, 37.289391, 34.110554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206486, -0.767115, 0.607370,
		0.602212, -0.588883, -0.539033,
		0.771170, 0.254462, 0.583562,
		26.134787, 37.365730, 34.285622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086977, 36.579086, 33.924603>,  <25.594967, 37.187607, 33.877129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086977, 36.579086, 33.924603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119488, 36.819687, 34.242493>,  <26.138994, 36.964046, 34.433228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119488, 36.819687, 34.242493>,  <26.086977, 36.579086, 33.924603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119488, 36.819687, 34.242493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184949, -0.774417, 0.605039,
		0.979381, -0.196161, 0.048302,
		0.081279, 0.601497, 0.794729,
		26.143871, 37.000137, 34.480911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405638, 36.167076, 34.412556>,  <26.086977, 36.579086, 33.924603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405638, 36.167076, 34.412556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.252426, 36.448917, 34.651497>,  <26.160500, 36.618023, 34.794861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.252426, 36.448917, 34.651497>,  <26.405638, 36.167076, 34.412556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252426, 36.448917, 34.651497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115611, -0.678147, 0.725776,
		0.916473, 0.208933, 0.341209,
		-0.383028, 0.704602, 0.597349,
		26.137518, 36.660297, 34.830700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738914, 36.108639, 35.101372>,  <26.405638, 36.167076, 34.412556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738914, 36.108639, 35.101372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429903, 36.318737, 35.244095>,  <26.244495, 36.444798, 35.329731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429903, 36.318737, 35.244095>,  <26.738914, 36.108639, 35.101372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429903, 36.318737, 35.244095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192893, -0.729496, 0.656222,
		0.604970, 0.438125, 0.664874,
		-0.772530, 0.525245, 0.356812,
		26.198145, 36.476311, 35.351139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759325, 36.089378, 35.798504>,  <26.738914, 36.108639, 35.101372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759325, 36.089378, 35.798504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379852, 36.187634, 35.718838>,  <26.152168, 36.246586, 35.671040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379852, 36.187634, 35.718838>,  <26.759325, 36.089378, 35.798504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379852, 36.187634, 35.718838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316233, -0.736732, 0.597681,
		0.000082, 0.629991, 0.776602,
		-0.948682, 0.245636, -0.199164,
		26.095247, 36.261326, 35.659088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545227, 36.427662, 35.592155>,  <26.759325, 36.089378, 35.798504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545227, 36.427662, 35.592155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.944616, 36.449207, 35.587292>,  <28.184250, 36.462135, 35.584373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.944616, 36.449207, 35.587292>,  <27.545227, 36.427662, 35.592155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944616, 36.449207, 35.587292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055061, 0.954321, -0.293667,
		-0.004214, 0.293889, 0.955831,
		0.998474, 0.053866, -0.012160,
		28.244158, 36.465366, 35.583645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694544, 37.003662, 36.031963>,  <27.545227, 36.427662, 35.592155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694544, 37.003662, 36.031963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.022717, 36.938866, 35.812637>,  <28.219620, 36.899990, 35.681042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.022717, 36.938866, 35.812637>,  <27.694544, 37.003662, 36.031963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022717, 36.938866, 35.812637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092904, 0.984050, -0.151704,
		0.564146, 0.073522, 0.822395,
		0.820431, -0.161986, -0.548318,
		28.268847, 36.890270, 35.648144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320227, 37.535851, 36.324036>,  <27.694544, 37.003662, 36.031963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320227, 37.535851, 36.324036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371449, 37.415798, 35.945930>,  <28.402182, 37.343765, 35.719067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371449, 37.415798, 35.945930>,  <28.320227, 37.535851, 36.324036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371449, 37.415798, 35.945930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285364, 0.923954, -0.254706,
		0.949826, -0.237129, 0.203962,
		0.128053, -0.300130, -0.945264,
		28.409864, 37.325760, 35.662350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972805, 37.871315, 36.156223>,  <28.320227, 37.535851, 36.324036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972805, 37.871315, 36.156223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790022, 37.761833, 35.817692>,  <28.680351, 37.696144, 35.614574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790022, 37.761833, 35.817692>,  <28.972805, 37.871315, 36.156223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790022, 37.761833, 35.817692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132378, 0.919957, -0.368992,
		0.879582, -0.280649, -0.384150,
		-0.456959, -0.273706, -0.846329,
		28.652935, 37.679722, 35.563793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403528, 38.266064, 35.701061>,  <28.972805, 37.871315, 36.156223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403528, 38.266064, 35.701061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103699, 38.152824, 35.461731>,  <28.923801, 38.084881, 35.318134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103699, 38.152824, 35.461731>,  <29.403528, 38.266064, 35.701061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103699, 38.152824, 35.461731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178707, 0.783808, -0.594735,
		0.637339, -0.552723, -0.536932,
		-0.749575, -0.283094, -0.598327,
		28.878826, 38.067898, 35.282234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692371, 38.197533, 35.045929>,  <29.403528, 38.266064, 35.701061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692371, 38.197533, 35.045929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297779, 38.263084, 35.045677>,  <29.061024, 38.302418, 35.045525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297779, 38.263084, 35.045677>,  <29.692371, 38.197533, 35.045929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297779, 38.263084, 35.045677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137126, 0.823301, -0.550793,
		-0.089744, -0.543433, -0.834642,
		-0.986480, 0.163882, -0.000632,
		29.001835, 38.312248, 35.045486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601131, 38.491146, 34.334881>,  <29.692371, 38.197533, 35.045929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601131, 38.491146, 34.334881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282959, 38.589592, 34.556408>,  <29.092056, 38.648659, 34.689323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282959, 38.589592, 34.556408>,  <29.601131, 38.491146, 34.334881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282959, 38.589592, 34.556408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052507, 0.882401, -0.467558,
		-0.603764, -0.400990, -0.688967,
		-0.795432, 0.246119, 0.553817,
		29.044329, 38.663429, 34.722553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220139, 38.787598, 33.827404>,  <29.601131, 38.491146, 34.334881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220139, 38.787598, 33.827404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070278, 38.927994, 34.170670>,  <28.980362, 39.012234, 34.376629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070278, 38.927994, 34.170670>,  <29.220139, 38.787598, 33.827404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070278, 38.927994, 34.170670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151529, 0.889950, -0.430150,
		-0.914699, -0.291193, -0.280236,
		-0.374652, 0.350994, 0.858160,
		28.957882, 39.033291, 34.428116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735607, 39.202721, 33.579395>,  <29.220139, 38.787598, 33.827404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735607, 39.202721, 33.579395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796726, 39.334740, 33.952000>,  <28.833397, 39.413952, 34.175564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796726, 39.334740, 33.952000>,  <28.735607, 39.202721, 33.579395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796726, 39.334740, 33.952000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249735, 0.924886, -0.286737,
		-0.956182, -0.188819, 0.223746,
		0.152799, 0.330050, 0.931515,
		28.842566, 39.433754, 34.231453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051498, 39.574951, 33.864605>,  <28.735607, 39.202721, 33.579395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051498, 39.574951, 33.864605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383293, 39.702492, 34.048035>,  <28.582371, 39.779015, 34.158092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383293, 39.702492, 34.048035>,  <28.051498, 39.574951, 33.864605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383293, 39.702492, 34.048035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278201, 0.947805, -0.155789,
		-0.484309, 0.001651, 0.874896,
		0.829487, 0.318847, 0.458571,
		28.632139, 39.798145, 34.185604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823069, 40.272560, 34.206791>,  <28.051498, 39.574951, 33.864605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823069, 40.272560, 34.206791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.222803, 40.275696, 34.221027>,  <28.462645, 40.277576, 34.229568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.222803, 40.275696, 34.221027>,  <27.823069, 40.272560, 34.206791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222803, 40.275696, 34.221027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001495, 0.966962, -0.254917,
		-0.036416, 0.254801, 0.966308,
		0.999336, 0.007838, 0.035594,
		28.522604, 40.278046, 34.231705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016983, 40.838055, 34.588615>,  <27.823069, 40.272560, 34.206791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016983, 40.838055, 34.588615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.357090, 40.755154, 34.395084>,  <28.561153, 40.705414, 34.278965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.357090, 40.755154, 34.395084>,  <28.016983, 40.838055, 34.588615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357090, 40.755154, 34.395084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119167, 0.971145, -0.206584,
		0.512685, 0.117994, 0.850430,
		0.850266, -0.207256, -0.483831,
		28.612169, 40.692978, 34.249935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485970, 41.385056, 34.707092>,  <28.016983, 40.838055, 34.588615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485970, 41.385056, 34.707092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636770, 41.234497, 34.368580>,  <28.727251, 41.144161, 34.165474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636770, 41.234497, 34.368580>,  <28.485970, 41.385056, 34.707092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636770, 41.234497, 34.368580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104774, 0.890505, -0.442744,
		0.920267, 0.255584, 0.296286,
		0.377003, -0.376400, -0.846281,
		28.749870, 41.121578, 34.114697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866766, 41.887657, 34.469761>,  <28.485970, 41.385056, 34.707092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866766, 41.887657, 34.469761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819988, 41.642941, 34.156830>,  <28.791922, 41.496109, 33.969070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819988, 41.642941, 34.156830>,  <28.866766, 41.887657, 34.469761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819988, 41.642941, 34.156830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092690, 0.791014, -0.604736,
		0.988804, 0.001792, -0.149213,
		-0.116946, -0.611796, -0.782323,
		28.784904, 41.459400, 33.922134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551104, 41.929344, 34.011471>,  <28.866766, 41.887657, 34.469761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551104, 41.929344, 34.011471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234877, 41.790035, 33.809990>,  <29.045141, 41.706451, 33.689102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234877, 41.790035, 33.809990>,  <29.551104, 41.929344, 34.011471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234877, 41.790035, 33.809990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000307, 0.822757, -0.568393,
		0.612377, -0.449197, -0.650550,
		-0.790565, -0.348271, -0.503700,
		28.997707, 41.685555, 33.658878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625898, 42.187714, 33.326408>,  <29.551104, 41.929344, 34.011471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625898, 42.187714, 33.326408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240118, 42.084217, 33.304928>,  <29.008650, 42.022118, 33.292038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240118, 42.084217, 33.304928>,  <29.625898, 42.187714, 33.326408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240118, 42.084217, 33.304928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214757, 0.885859, -0.411258,
		0.153984, -0.385105, -0.909935,
		-0.964452, -0.258742, -0.053704,
		28.950783, 42.006596, 33.288815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370468, 42.471287, 32.665970>,  <29.625898, 42.187714, 33.326408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370468, 42.471287, 32.665970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022917, 42.400562, 32.850918>,  <28.814386, 42.358128, 32.961887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022917, 42.400562, 32.850918>,  <29.370468, 42.471287, 32.665970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022917, 42.400562, 32.850918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401794, 0.797486, -0.450087,
		-0.289157, -0.576849, -0.763959,
		-0.868879, -0.176808, 0.462373,
		28.762253, 42.347519, 32.989628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768179, 42.312038, 32.196362>,  <29.370468, 42.471287, 32.665970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768179, 42.312038, 32.196362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.593021, 42.447525, 32.529472>,  <28.487926, 42.528816, 32.729340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.593021, 42.447525, 32.529472>,  <28.768179, 42.312038, 32.196362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593021, 42.447525, 32.529472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504386, 0.674232, -0.539449,
		-0.744205, -0.656264, -0.124400,
		-0.437896, 0.338715, 0.832778,
		28.461653, 42.549141, 32.779305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140263, 42.343235, 32.016773>,  <28.768179, 42.312038, 32.196362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140263, 42.343235, 32.016773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145378, 42.600086, 32.323372>,  <28.148447, 42.754196, 32.507332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145378, 42.600086, 32.323372>,  <28.140263, 42.343235, 32.016773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145378, 42.600086, 32.323372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693534, 0.557900, -0.455806,
		-0.720311, -0.525759, 0.452471,
		0.012789, 0.642126, 0.766493,
		28.149216, 42.792725, 32.553318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497734, 42.569080, 32.076214>,  <28.140263, 42.343235, 32.016773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497734, 42.569080, 32.076214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686298, 42.857697, 32.279057>,  <27.799437, 43.030865, 32.400761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686298, 42.857697, 32.279057>,  <27.497734, 42.569080, 32.076214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686298, 42.857697, 32.279057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593987, 0.684790, -0.422187,
		-0.651884, -0.102190, 0.751401,
		0.471409, 0.721540, 0.507104,
		27.827721, 43.074158, 32.431187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006010, 43.005966, 32.213047>,  <27.497734, 42.569080, 32.076214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006010, 43.005966, 32.213047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326405, 43.240986, 32.259026>,  <27.518641, 43.381996, 32.286613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326405, 43.240986, 32.259026>,  <27.006010, 43.005966, 32.213047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326405, 43.240986, 32.259026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498185, 0.760604, -0.416285,
		-0.332017, 0.276172, 0.901939,
		0.800985, 0.587546, 0.114949,
		27.566700, 43.417252, 32.293510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755068, 43.591259, 32.517788>,  <27.006010, 43.005966, 32.213047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755068, 43.591259, 32.517788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108231, 43.669811, 32.347183>,  <27.320127, 43.716942, 32.244820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108231, 43.669811, 32.347183>,  <26.755068, 43.591259, 32.517788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108231, 43.669811, 32.347183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382629, 0.827397, -0.411107,
		0.272166, 0.526165, 0.805652,
		0.882905, 0.196376, -0.426516,
		27.373102, 43.728725, 32.219227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.142090, 40.558994, 47.871445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874729, 40.262218, 47.850410>,  <36.714314, 40.084152, 47.837791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874729, 40.262218, 47.850410>,  <37.142090, 40.558994, 47.871445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874729, 40.262218, 47.850410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335182, 0.237337, 0.911770,
		-0.664001, 0.627051, -0.407321,
		-0.668398, -0.741943, -0.052584,
		36.674210, 40.039635, 47.834637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460045, 40.804237, 47.897411>,  <37.142090, 40.558994, 47.871445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460045, 40.804237, 47.897411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431301, 40.425774, 48.023663>,  <36.414055, 40.198696, 48.099411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431301, 40.425774, 48.023663>,  <36.460045, 40.804237, 47.897411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431301, 40.425774, 48.023663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349681, 0.320257, 0.880431,
		-0.934109, -0.047102, -0.353867,
		-0.071859, -0.946159, 0.315626,
		36.409744, 40.141926, 48.118351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836182, 40.830811, 48.340599>,  <36.460045, 40.804237, 47.897411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836182, 40.830811, 48.340599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066818, 40.519779, 48.440929>,  <36.205200, 40.333160, 48.501129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066818, 40.519779, 48.440929>,  <35.836182, 40.830811, 48.340599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066818, 40.519779, 48.440929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241477, 0.131103, 0.961510,
		-0.780533, -0.614967, -0.112174,
		0.576591, -0.777578, 0.250830,
		36.239796, 40.286507, 48.516178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386181, 40.392651, 48.799271>,  <35.836182, 40.830811, 48.340599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386181, 40.392651, 48.799271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770721, 40.312260, 48.874546>,  <36.001446, 40.264023, 48.919712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770721, 40.312260, 48.874546>,  <35.386181, 40.392651, 48.799271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770721, 40.312260, 48.874546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147366, 0.201774, 0.968282,
		-0.232578, -0.958590, 0.164358,
		0.961348, -0.200980, 0.188192,
		36.059128, 40.251965, 48.931004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324989, 40.027149, 49.405605>,  <35.386181, 40.392651, 48.799271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324989, 40.027149, 49.405605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712925, 40.124100, 49.395237>,  <35.945686, 40.182270, 49.389015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712925, 40.124100, 49.395237>,  <35.324989, 40.027149, 49.405605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712925, 40.124100, 49.395237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049351, -0.091101, 0.994618,
		0.238707, -0.965896, -0.100315,
		0.969837, 0.242373, -0.025921,
		36.003876, 40.196812, 49.387459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614388, 39.530350, 49.758713>,  <35.324989, 40.027149, 49.405605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614388, 39.530350, 49.758713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917782, 39.790966, 49.764351>,  <36.099819, 39.947334, 49.767735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917782, 39.790966, 49.764351>,  <35.614388, 39.530350, 49.758713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917782, 39.790966, 49.764351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208239, -0.262798, 0.942111,
		0.617528, -0.711640, -0.335004,
		0.758483, 0.651541, 0.014094,
		36.145329, 39.986427, 49.768578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138435, 39.159992, 50.029587>,  <35.614388, 39.530350, 49.758713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138435, 39.159992, 50.029587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224216, 39.547935, 50.075859>,  <36.275684, 39.780701, 50.103622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224216, 39.547935, 50.075859>,  <36.138435, 39.159992, 50.029587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224216, 39.547935, 50.075859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387604, -0.193219, 0.901349,
		0.896534, -0.148457, -0.417358,
		0.214453, 0.969859, 0.115685,
		36.288551, 39.838894, 50.110565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746132, 39.151176, 50.409489>,  <36.138435, 39.159992, 50.029587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746132, 39.151176, 50.409489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625851, 39.526993, 50.475025>,  <36.553680, 39.752483, 50.514347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625851, 39.526993, 50.475025>,  <36.746132, 39.151176, 50.409489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625851, 39.526993, 50.475025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345853, -0.052669, 0.936809,
		0.888797, 0.338370, -0.309104,
		-0.300708, 0.939538, 0.163838,
		36.535637, 39.808853, 50.524178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338249, 39.440277, 50.852097>,  <36.746132, 39.151176, 50.409489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338249, 39.440277, 50.852097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023388, 39.686432, 50.868507>,  <36.834469, 39.834126, 50.878353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023388, 39.686432, 50.868507>,  <37.338249, 39.440277, 50.852097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023388, 39.686432, 50.868507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117365, 0.084147, 0.989517,
		0.605483, 0.783721, -0.138462,
		-0.787157, 0.615387, 0.041031,
		36.787239, 39.871048, 50.880817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498791, 40.046585, 51.240936>,  <37.338249, 39.440277, 50.852097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498791, 40.046585, 51.240936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101097, 40.009296, 51.262157>,  <36.862480, 39.986923, 51.274891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101097, 40.009296, 51.262157>,  <37.498791, 40.046585, 51.240936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101097, 40.009296, 51.262157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047796, 0.057780, 0.997185,
		-0.096021, 0.993968, -0.052991,
		-0.994231, -0.093217, 0.053056,
		36.802826, 39.981331, 51.278076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386673, 40.381321, 51.834114>,  <37.498791, 40.046585, 51.240936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386673, 40.381321, 51.834114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040886, 40.186764, 51.783344>,  <36.833412, 40.070030, 51.752880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040886, 40.186764, 51.783344>,  <37.386673, 40.381321, 51.834114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040886, 40.186764, 51.783344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113766, -0.056644, 0.991892,
		-0.489640, 0.871901, -0.006368,
		-0.864471, -0.486394, -0.126928,
		36.781544, 40.040844, 51.745266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850628, 40.644283, 52.278557>,  <37.386673, 40.381321, 51.834114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850628, 40.644283, 52.278557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.734314, 40.268162, 52.207817>,  <36.664524, 40.042488, 52.165375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.734314, 40.268162, 52.207817>,  <36.850628, 40.644283, 52.278557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734314, 40.268162, 52.207817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154936, -0.136117, 0.978502,
		-0.944160, 0.311935, -0.106106,
		-0.290786, -0.940302, -0.176846,
		36.647079, 39.986073, 52.154762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231087, 40.562637, 52.472816>,  <36.850628, 40.644283, 52.278557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231087, 40.562637, 52.472816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410259, 40.209309, 52.528099>,  <36.517765, 39.997311, 52.561268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410259, 40.209309, 52.528099>,  <36.231087, 40.562637, 52.472816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410259, 40.209309, 52.528099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183077, 0.060689, 0.981223,
		-0.875122, -0.464825, -0.134531,
		0.447933, -0.883320, 0.138209,
		36.544640, 39.944313, 52.569561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738834, 39.973068, 52.620296>,  <36.231087, 40.562637, 52.472816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738834, 39.973068, 52.620296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104271, 39.967426, 52.782848>,  <36.323532, 39.964039, 52.880379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104271, 39.967426, 52.782848>,  <35.738834, 39.973068, 52.620296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104271, 39.967426, 52.782848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398318, 0.169908, 0.901373,
		-0.081765, -0.985359, 0.149608,
		0.913596, -0.014109, 0.406379,
		36.378349, 39.963192, 52.904762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080421, 39.656170, 52.701641>,  <35.738834, 39.973068, 52.620296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080421, 39.656170, 52.701641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712364, 39.703720, 52.850876>,  <34.491528, 39.732250, 52.940418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712364, 39.703720, 52.850876>,  <35.080421, 39.656170, 52.701641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712364, 39.703720, 52.850876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390571, -0.346740, -0.852775,
		0.027988, -0.930397, 0.365482,
		-0.920147, 0.118879, 0.373091,
		34.436321, 39.739384, 52.962803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705505, 39.011955, 52.728302>,  <35.080421, 39.656170, 52.701641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705505, 39.011955, 52.728302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442043, 39.312832, 52.720444>,  <34.283966, 39.493359, 52.715729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442043, 39.312832, 52.720444>,  <34.705505, 39.011955, 52.728302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442043, 39.312832, 52.720444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251600, -0.244765, -0.936369,
		-0.709134, -0.611803, 0.350466,
		-0.658655, 0.752189, -0.019642,
		34.244446, 39.538486, 52.714550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218266, 38.791428, 52.345394>,  <34.705505, 39.011955, 52.728302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218266, 38.791428, 52.345394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106220, 39.175411, 52.344364>,  <34.038994, 39.405804, 52.343746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106220, 39.175411, 52.344364>,  <34.218266, 38.791428, 52.345394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106220, 39.175411, 52.344364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283063, -0.085162, -0.955313,
		-0.917284, -0.266870, 0.295585,
		-0.280117, 0.959962, -0.002577,
		34.022186, 39.463402, 52.343590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571434, 38.772648, 52.013111>,  <34.218266, 38.791428, 52.345394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571434, 38.772648, 52.013111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668747, 39.160629, 52.013515>,  <33.727135, 39.393417, 52.013760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668747, 39.160629, 52.013515>,  <33.571434, 38.772648, 52.013111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668747, 39.160629, 52.013515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176358, 0.045262, -0.983285,
		-0.953788, 0.239036, 0.182070,
		0.243281, 0.969955, 0.001014,
		33.741730, 39.451614, 52.013821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006996, 39.161961, 51.812271>,  <33.571434, 38.772648, 52.013111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006996, 39.161961, 51.812271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335354, 39.374744, 51.729176>,  <33.532368, 39.502415, 51.679317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335354, 39.374744, 51.729176>,  <33.006996, 39.161961, 51.812271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335354, 39.374744, 51.729176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309742, 0.109126, -0.944538,
		-0.479791, 0.839706, 0.254351,
		0.820890, 0.531964, -0.207734,
		33.581619, 39.534332, 51.666855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756317, 39.786999, 51.504013>,  <33.006996, 39.161961, 51.812271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756317, 39.786999, 51.504013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130482, 39.709469, 51.385738>,  <33.354980, 39.662952, 51.314774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130482, 39.709469, 51.385738>,  <32.756317, 39.786999, 51.504013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130482, 39.709469, 51.385738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289573, 0.059820, -0.955285,
		0.202847, 0.979210, -0.000170,
		0.935415, -0.193826, -0.295688,
		33.411106, 39.651321, 51.297031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871620, 40.390667, 51.052361>,  <32.756317, 39.786999, 51.504013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871620, 40.390667, 51.052361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122105, 40.089272, 50.972244>,  <33.272396, 39.908436, 50.924175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122105, 40.089272, 50.972244>,  <32.871620, 40.390667, 51.052361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122105, 40.089272, 50.972244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159743, 0.127444, -0.978897,
		0.763114, 0.644989, -0.040558,
		0.626209, -0.753489, -0.200287,
		33.309967, 39.863224, 50.912159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115013, 40.589199, 50.383480>,  <32.871620, 40.390667, 51.052361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115013, 40.589199, 50.383480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309700, 40.240238, 50.401459>,  <33.426514, 40.030861, 50.412247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309700, 40.240238, 50.401459>,  <33.115013, 40.589199, 50.383480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309700, 40.240238, 50.401459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096676, 0.002662, -0.995313,
		0.868192, 0.488783, 0.085636,
		0.486720, -0.872402, 0.044942,
		33.455715, 39.978519, 50.414940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697521, 40.610168, 50.006599>,  <33.115013, 40.589199, 50.383480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697521, 40.610168, 50.006599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590153, 40.225040, 50.018806>,  <33.525734, 39.993965, 50.026131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590153, 40.225040, 50.018806>,  <33.697521, 40.610168, 50.006599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590153, 40.225040, 50.018806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088378, -0.056158, -0.994503,
		0.959239, -0.264247, 0.100166,
		-0.268419, -0.962819, 0.030515,
		33.509628, 39.936195, 50.027962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133915, 40.264206, 49.564461>,  <33.697521, 40.610168, 50.006599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133915, 40.264206, 49.564461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815685, 40.023991, 49.596500>,  <33.624748, 39.879860, 49.615723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815685, 40.023991, 49.596500>,  <34.133915, 40.264206, 49.564461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815685, 40.023991, 49.596500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103589, -0.265090, -0.958643,
		0.596933, -0.754376, 0.273108,
		-0.795575, -0.600537, 0.080096,
		33.577011, 39.843830, 49.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304977, 39.691929, 49.213970>,  <34.133915, 40.264206, 49.564461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304977, 39.691929, 49.213970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907913, 39.646671, 49.231083>,  <33.669674, 39.619518, 49.241352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907913, 39.646671, 49.231083>,  <34.304977, 39.691929, 49.213970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907913, 39.646671, 49.231083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008971, -0.283879, -0.958818,
		0.120630, -0.952161, 0.280780,
		-0.992657, -0.113143, 0.042786,
		33.610115, 39.612728, 49.243919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159641, 39.041119, 48.730286>,  <34.304977, 39.691929, 49.213970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159641, 39.041119, 48.730286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812660, 39.237728, 48.761101>,  <33.604473, 39.355694, 48.779591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812660, 39.237728, 48.761101>,  <34.159641, 39.041119, 48.730286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812660, 39.237728, 48.761101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151165, -0.112860, -0.982045,
		-0.474006, -0.863519, 0.172202,
		-0.867449, 0.491526, 0.077038,
		33.552425, 39.385185, 48.784210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734150, 38.651501, 48.237835>,  <34.159641, 39.041119, 48.730286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734150, 38.651501, 48.237835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.568180, 39.005306, 48.323135>,  <33.468597, 39.217590, 48.374317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.568180, 39.005306, 48.323135>,  <33.734150, 38.651501, 48.237835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568180, 39.005306, 48.323135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124401, 0.177031, -0.976311,
		-0.901312, -0.431624, 0.036580,
		-0.414924, 0.884511, 0.213255,
		33.443703, 39.270660, 48.387112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121658, 38.620266, 47.902863>,  <33.734150, 38.651501, 48.237835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121658, 38.620266, 47.902863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.212734, 39.003441, 47.972725>,  <33.267380, 39.233345, 48.014645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.212734, 39.003441, 47.972725>,  <33.121658, 38.620266, 47.902863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212734, 39.003441, 47.972725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018959, 0.174975, -0.984390,
		-0.973550, 0.227445, 0.021678,
		0.227688, 0.957942, 0.174659,
		33.281040, 39.290825, 48.025124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443535, 38.603836, 48.097557>,  <33.121658, 38.620266, 47.902863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443535, 38.603836, 48.097557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060741, 38.488724, 48.082806>,  <31.831064, 38.419655, 48.073956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060741, 38.488724, 48.082806>,  <32.443535, 38.603836, 48.097557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060741, 38.488724, 48.082806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047803, 0.031032, 0.998375,
		-0.286171, 0.957193, -0.043454,
		-0.956985, -0.287783, -0.036876,
		31.773645, 38.402390, 48.071743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040417, 39.114975, 48.552322>,  <32.443535, 38.603836, 48.097557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040417, 39.114975, 48.552322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813868, 38.786812, 48.520943>,  <31.677938, 38.589916, 48.502113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813868, 38.786812, 48.520943>,  <32.040417, 39.114975, 48.552322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813868, 38.786812, 48.520943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044390, -0.064686, 0.996918,
		-0.822952, 0.568111, 0.000219,
		-0.566374, -0.820406, -0.078452,
		31.643955, 38.540691, 48.497406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359066, 39.164791, 48.996597>,  <32.040417, 39.114975, 48.552322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359066, 39.164791, 48.996597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440350, 38.776966, 48.941956>,  <31.489120, 38.544273, 48.909168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440350, 38.776966, 48.941956>,  <31.359066, 39.164791, 48.996597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440350, 38.776966, 48.941956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112512, -0.161717, 0.980402,
		-0.972650, -0.183856, -0.141949,
		0.203209, -0.969559, -0.136608,
		31.501312, 38.486099, 48.900974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909445, 38.822586, 49.474632>,  <31.359066, 39.164791, 48.996597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909445, 38.822586, 49.474632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176321, 38.538723, 49.384087>,  <31.336447, 38.368404, 49.329762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176321, 38.538723, 49.384087>,  <30.909445, 38.822586, 49.474632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176321, 38.538723, 49.384087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070973, -0.363067, 0.929056,
		-0.741500, -0.603791, -0.292601,
		0.667189, -0.709661, -0.226361,
		31.376478, 38.325825, 49.316177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613501, 38.229382, 49.555988>,  <30.909445, 38.822586, 49.474632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613501, 38.229382, 49.555988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007683, 38.175179, 49.597012>,  <31.244192, 38.142658, 49.621624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007683, 38.175179, 49.597012>,  <30.613501, 38.229382, 49.555988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007683, 38.175179, 49.597012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155159, -0.471275, 0.868231,
		-0.069319, -0.871515, -0.485445,
		0.985454, -0.135506, 0.102556,
		31.303320, 38.134525, 49.627777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671659, 37.582493, 49.850521>,  <30.613501, 38.229382, 49.555988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671659, 37.582493, 49.850521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044449, 37.725956, 49.871651>,  <31.268122, 37.812035, 49.884327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044449, 37.725956, 49.871651>,  <30.671659, 37.582493, 49.850521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044449, 37.725956, 49.871651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101834, -0.398848, 0.911345,
		0.347928, -0.843971, -0.408239,
		0.931974, 0.358656, 0.052825,
		31.324041, 37.833553, 49.887497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918461, 37.194996, 50.227070>,  <30.671659, 37.582493, 49.850521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918461, 37.194996, 50.227070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.182421, 37.491974, 50.273201>,  <31.340797, 37.670162, 50.300880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.182421, 37.491974, 50.273201>,  <30.918461, 37.194996, 50.227070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182421, 37.491974, 50.273201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069759, -0.213371, 0.974477,
		0.748107, -0.635014, -0.192596,
		0.659901, 0.742449, 0.115326,
		31.380392, 37.714710, 50.307800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191032, 36.515797, 50.131413>,  <30.918461, 37.194996, 50.227070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191032, 36.515797, 50.131413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045670, 36.145687, 50.174858>,  <30.958452, 35.923622, 50.200924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045670, 36.145687, 50.174858>,  <31.191032, 36.515797, 50.131413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045670, 36.145687, 50.174858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095293, -0.152891, -0.983638,
		0.926745, -0.347109, 0.143733,
		-0.363405, -0.925278, 0.108614,
		30.936647, 35.868103, 50.207443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621454, 36.169621, 49.681473>,  <31.191032, 36.515797, 50.131413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621454, 36.169621, 49.681473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.299980, 35.940231, 49.744995>,  <31.107096, 35.802597, 49.783108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.299980, 35.940231, 49.744995>,  <31.621454, 36.169621, 49.681473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299980, 35.940231, 49.744995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068724, -0.175640, -0.982053,
		0.591072, -0.800176, 0.101749,
		-0.803686, -0.573471, 0.158807,
		31.058874, 35.768188, 49.792637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752769, 35.542362, 49.371323>,  <31.621454, 36.169621, 49.681473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752769, 35.542362, 49.371323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354517, 35.577271, 49.384613>,  <31.115566, 35.598217, 49.392586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354517, 35.577271, 49.384613>,  <31.752769, 35.542362, 49.371323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354517, 35.577271, 49.384613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045891, -0.147378, -0.988015,
		-0.081326, -0.985223, 0.150739,
		-0.995631, 0.087269, 0.033228,
		31.055828, 35.603451, 49.394581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487705, 34.920937, 48.984291>,  <31.752769, 35.542362, 49.371323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487705, 34.920937, 48.984291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.169569, 35.162834, 49.000874>,  <30.978687, 35.307972, 49.010822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.169569, 35.162834, 49.000874>,  <31.487705, 34.920937, 48.984291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169569, 35.162834, 49.000874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080569, -0.037681, -0.996037,
		-0.600783, -0.795530, 0.078693,
		-0.795342, 0.604742, 0.041457,
		30.930965, 35.344257, 49.013309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953018, 34.629860, 48.555733>,  <31.487705, 34.920937, 48.984291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953018, 34.629860, 48.555733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.881203, 35.020142, 48.605957>,  <30.838114, 35.254311, 48.636093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.881203, 35.020142, 48.605957>,  <30.953018, 34.629860, 48.555733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881203, 35.020142, 48.605957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005244, 0.128583, -0.991685,
		-0.983737, -0.177389, -0.028203,
		-0.179540, 0.975705, 0.125562,
		30.827341, 35.312855, 48.643627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388365, 34.747936, 48.188999>,  <30.953018, 34.629860, 48.555733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388365, 34.747936, 48.188999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530222, 35.121933, 48.190952>,  <30.615335, 35.346329, 48.192123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530222, 35.121933, 48.190952>,  <30.388365, 34.747936, 48.188999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530222, 35.121933, 48.190952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065724, 0.030136, -0.997383,
		-0.932689, 0.353394, 0.072139,
		0.354643, 0.934989, 0.004881,
		30.636614, 35.402431, 48.192417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942312, 35.123985, 47.900555>,  <30.388365, 34.747936, 48.188999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942312, 35.123985, 47.900555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279751, 35.333447, 47.853001>,  <30.482214, 35.459122, 47.824467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279751, 35.333447, 47.853001>,  <29.942312, 35.123985, 47.900555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279751, 35.333447, 47.853001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180842, 0.068589, -0.981117,
		-0.505609, 0.849167, 0.152560,
		0.843597, 0.523651, -0.118886,
		30.532829, 35.490543, 47.817333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.443577, 37.615955, 52.694717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.232861, 37.722820, 52.371952>,  <34.106430, 37.786938, 52.178291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.232861, 37.722820, 52.371952>,  <34.443577, 37.615955, 52.694717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232861, 37.722820, 52.371952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799453, -0.478199, 0.363595,
		-0.288728, 0.836631, 0.465494,
		-0.526794, 0.267160, -0.806916,
		34.074821, 37.802967, 52.129879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935989, 37.222832, 52.243893>,  <34.443577, 37.615955, 52.694717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935989, 37.222832, 52.243893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.250935, 37.465942, 52.285187>,  <35.439903, 37.611809, 52.309963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.250935, 37.465942, 52.285187>,  <34.935989, 37.222832, 52.243893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250935, 37.465942, 52.285187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065893, 0.083528, -0.994324,
		-0.612952, 0.789701, 0.025719,
		0.787367, 0.607779, 0.103235,
		35.487144, 37.648277, 52.316158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814629, 37.786320, 51.867699>,  <34.935989, 37.222832, 52.243893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814629, 37.786320, 51.867699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203644, 37.707184, 51.916737>,  <35.437054, 37.659702, 51.946159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203644, 37.707184, 51.916737>,  <34.814629, 37.786320, 51.867699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203644, 37.707184, 51.916737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118856, -0.030694, -0.992437,
		0.200110, 0.979753, -0.006336,
		0.972537, -0.197844, 0.122592,
		35.495403, 37.647831, 51.953514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174992, 38.227829, 51.408905>,  <34.814629, 37.786320, 51.867699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174992, 38.227829, 51.408905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.431522, 37.925953, 51.464249>,  <35.585442, 37.744827, 51.497456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.431522, 37.925953, 51.464249>,  <35.174992, 38.227829, 51.408905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431522, 37.925953, 51.464249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184135, -0.023667, -0.982616,
		0.744843, 0.655657, 0.123786,
		0.641330, -0.754688, 0.138357,
		35.623920, 37.699547, 51.505756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564362, 38.324703, 50.908577>,  <35.174992, 38.227829, 51.408905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564362, 38.324703, 50.908577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.663616, 37.952930, 51.017815>,  <35.723167, 37.729866, 51.083359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.663616, 37.952930, 51.017815>,  <35.564362, 38.324703, 50.908577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663616, 37.952930, 51.017815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156138, -0.239854, -0.958171,
		0.956060, 0.280395, 0.085605,
		0.248133, -0.929435, 0.273095,
		35.738056, 37.674099, 51.099743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265930, 38.182796, 50.650028>,  <35.564362, 38.324703, 50.908577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265930, 38.182796, 50.650028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.064426, 37.842312, 50.708900>,  <35.943523, 37.638020, 50.744225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.064426, 37.842312, 50.708900>,  <36.265930, 38.182796, 50.650028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064426, 37.842312, 50.708900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185286, -0.272880, -0.944037,
		0.843739, -0.448298, 0.295183,
		-0.503759, -0.851214, 0.147176,
		35.913300, 37.586948, 50.753052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736095, 37.669792, 50.325413>,  <36.265930, 38.182796, 50.650028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736095, 37.669792, 50.325413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.390972, 37.469898, 50.355942>,  <36.183899, 37.349960, 50.374260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.390972, 37.469898, 50.355942>,  <36.736095, 37.669792, 50.325413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390972, 37.469898, 50.355942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111058, -0.334657, -0.935773,
		0.493180, -0.798917, 0.344245,
		-0.862809, -0.499736, 0.076320,
		36.132130, 37.319977, 50.378838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903244, 37.057083, 50.217453>,  <36.736095, 37.669792, 50.325413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903244, 37.057083, 50.217453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.512436, 37.055290, 50.132221>,  <36.277950, 37.054214, 50.081081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.512436, 37.055290, 50.132221>,  <36.903244, 37.057083, 50.217453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512436, 37.055290, 50.132221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196833, -0.402413, -0.894047,
		-0.081738, -0.915447, 0.394049,
		-0.977024, -0.004484, -0.213083,
		36.219330, 37.053944, 50.068295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884010, 36.496902, 49.796612>,  <36.903244, 37.057083, 50.217453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884010, 36.496902, 49.796612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.516144, 36.649864, 49.760876>,  <36.295425, 36.741642, 49.739433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.516144, 36.649864, 49.760876>,  <36.884010, 36.496902, 49.796612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516144, 36.649864, 49.760876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094078, -0.435422, -0.895297,
		-0.381263, -0.814971, 0.436419,
		-0.919667, 0.382401, -0.089340,
		36.240246, 36.764587, 49.734074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372749, 35.893738, 49.644886>,  <36.884010, 36.496902, 49.796612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372749, 35.893738, 49.644886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.223053, 36.235302, 49.500233>,  <36.133236, 36.440243, 49.413441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.223053, 36.235302, 49.500233>,  <36.372749, 35.893738, 49.644886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223053, 36.235302, 49.500233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066814, -0.413790, -0.907917,
		-0.924924, -0.315613, 0.211908,
		-0.374236, 0.853912, -0.361637,
		36.110783, 36.491474, 49.391743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869804, 35.698380, 49.217129>,  <36.372749, 35.893738, 49.644886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869804, 35.698380, 49.217129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943199, 36.070660, 49.090557>,  <35.987236, 36.294029, 49.014614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943199, 36.070660, 49.090557>,  <35.869804, 35.698380, 49.217129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943199, 36.070660, 49.090557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241654, -0.269314, -0.932241,
		-0.952857, 0.247519, 0.175492,
		0.183485, 0.930701, -0.316431,
		35.998245, 36.349869, 48.995628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420143, 35.858624, 48.737648>,  <35.869804, 35.698380, 49.217129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420143, 35.858624, 48.737648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.709484, 36.115604, 48.636440>,  <35.883087, 36.269794, 48.575714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.709484, 36.115604, 48.636440>,  <35.420143, 35.858624, 48.737648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709484, 36.115604, 48.636440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008771, -0.374962, -0.926999,
		-0.690426, 0.668325, -0.276863,
		0.723350, 0.642453, -0.253022,
		35.926491, 36.308342, 48.560535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719753, 35.850948, 48.501545>,  <35.420143, 35.858624, 48.737648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719753, 35.850948, 48.501545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.507370, 35.515499, 48.550194>,  <34.379940, 35.314228, 48.579384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.507370, 35.515499, 48.550194>,  <34.719753, 35.850948, 48.501545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507370, 35.515499, 48.550194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008770, 0.138077, 0.990383,
		-0.847350, 0.526923, -0.065959,
		-0.530963, -0.838622, 0.121621,
		34.348080, 35.263912, 48.586681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292221, 36.018074, 49.055504>,  <34.719753, 35.850948, 48.501545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292221, 36.018074, 49.055504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276615, 35.618565, 49.067745>,  <34.267250, 35.378860, 49.075092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276615, 35.618565, 49.067745>,  <34.292221, 36.018074, 49.055504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276615, 35.618565, 49.067745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205838, 0.038007, 0.977848,
		-0.977808, 0.031850, -0.207067,
		-0.039014, -0.998770, 0.030607,
		34.264912, 35.318935, 49.076927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619736, 35.779919, 49.376953>,  <34.292221, 36.018074, 49.055504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619736, 35.779919, 49.376953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881184, 35.481949, 49.430428>,  <34.038052, 35.303165, 49.462513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881184, 35.481949, 49.430428>,  <33.619736, 35.779919, 49.376953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881184, 35.481949, 49.430428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342217, -0.133349, 0.930110,
		-0.675035, -0.653686, -0.342086,
		0.653617, -0.744925, 0.133687,
		34.077271, 35.258472, 49.470535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293808, 35.273403, 49.836433>,  <33.619736, 35.779919, 49.376953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293808, 35.273403, 49.836433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.681774, 35.182549, 49.871483>,  <33.914555, 35.128036, 49.892513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.681774, 35.182549, 49.871483>,  <33.293808, 35.273403, 49.836433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681774, 35.182549, 49.871483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104295, -0.062435, 0.992585,
		-0.219983, -0.971859, -0.084246,
		0.969912, -0.227139, 0.087625,
		33.972748, 35.114407, 49.897770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278160, 34.750076, 50.285881>,  <33.293808, 35.273403, 49.836433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278160, 34.750076, 50.285881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666157, 34.847252, 50.289635>,  <33.898956, 34.905556, 50.291889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666157, 34.847252, 50.289635>,  <33.278160, 34.750076, 50.285881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666157, 34.847252, 50.289635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032986, -0.169765, 0.984932,
		0.240872, -0.955071, -0.172685,
		0.969996, 0.242939, 0.009388,
		33.957157, 34.920132, 50.292450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824539, 34.263103, 50.578758>,  <33.278160, 34.750076, 50.285881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824539, 34.263103, 50.578758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.008533, 34.616142, 50.617607>,  <34.118931, 34.827965, 50.640915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.008533, 34.616142, 50.617607>,  <33.824539, 34.263103, 50.578758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008533, 34.616142, 50.617607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152500, -0.029228, 0.987871,
		0.874731, -0.469221, 0.121152,
		0.459989, 0.882597, 0.097123,
		34.146530, 34.880920, 50.646744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450645, 34.080605, 51.061932>,  <33.824539, 34.263103, 50.578758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450645, 34.080605, 51.061932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336391, 34.463280, 51.084423>,  <34.267838, 34.692886, 51.097916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336391, 34.463280, 51.084423>,  <34.450645, 34.080605, 51.061932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336391, 34.463280, 51.084423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171359, -0.108709, 0.979193,
		0.942893, 0.270061, 0.194989,
		-0.285638, 0.956687, 0.056224,
		34.250698, 34.750286, 51.101292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721737, 34.323662, 51.700504>,  <34.450645, 34.080605, 51.061932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721737, 34.323662, 51.700504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.430653, 34.582497, 51.609547>,  <34.256001, 34.737797, 51.554974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.430653, 34.582497, 51.609547>,  <34.721737, 34.323662, 51.700504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430653, 34.582497, 51.609547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310315, -0.014955, 0.950516,
		0.611669, 0.762267, 0.211684,
		-0.727713, 0.647090, -0.227395,
		34.212337, 34.776623, 51.541328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786030, 34.842915, 52.315453>,  <34.721737, 34.323662, 51.700504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786030, 34.842915, 52.315453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.446011, 34.920059, 52.119404>,  <34.242001, 34.966347, 52.001774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.446011, 34.920059, 52.119404>,  <34.786030, 34.842915, 52.315453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446011, 34.920059, 52.119404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509230, -0.063214, 0.858306,
		0.134547, 0.979188, 0.151944,
		-0.850048, 0.192857, -0.490127,
		34.190994, 34.977917, 51.972366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346649, 35.212379, 52.813034>,  <34.786030, 34.842915, 52.315453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346649, 35.212379, 52.813034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.089329, 35.065811, 52.544140>,  <33.934937, 34.977871, 52.382801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.089329, 35.065811, 52.544140>,  <34.346649, 35.212379, 52.813034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089329, 35.065811, 52.544140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675047, -0.142803, 0.723823,
		-0.361220, 0.919426, -0.155485,
		-0.643298, -0.366419, -0.672239,
		33.896339, 34.955887, 52.342468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755680, 35.687016, 52.897648>,  <34.346649, 35.212379, 52.813034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755680, 35.687016, 52.897648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636433, 35.330967, 52.759777>,  <33.564884, 35.117336, 52.677055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636433, 35.330967, 52.759777>,  <33.755680, 35.687016, 52.897648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636433, 35.330967, 52.759777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404696, -0.209171, 0.890207,
		-0.864492, 0.404877, -0.297872,
		-0.298118, -0.890124, -0.344679,
		33.546997, 35.063931, 52.656372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046722, 35.602901, 53.084774>,  <33.755680, 35.687016, 52.897648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046722, 35.602901, 53.084774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.161957, 35.231380, 52.991543>,  <33.231098, 35.008469, 52.935604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.161957, 35.231380, 52.991543>,  <33.046722, 35.602901, 53.084774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161957, 35.231380, 52.991543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415780, -0.340579, 0.843287,
		-0.862631, -0.146032, -0.484296,
		0.288088, -0.928806, -0.233077,
		33.248383, 34.952740, 52.921619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425774, 35.274841, 53.197529>,  <33.046722, 35.602901, 53.084774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425774, 35.274841, 53.197529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.695705, 34.979664, 53.194958>,  <32.857666, 34.802559, 53.193413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.695705, 34.979664, 53.194958>,  <32.425774, 35.274841, 53.197529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695705, 34.979664, 53.194958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487587, -0.452394, 0.746725,
		-0.553948, -0.500781, -0.665102,
		0.674833, -0.737942, -0.006429,
		32.898155, 34.758282, 53.193027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961504, 34.726032, 53.207756>,  <32.425774, 35.274841, 53.197529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961504, 34.726032, 53.207756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.325951, 34.640697, 53.348812>,  <32.544617, 34.589497, 53.433445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.325951, 34.640697, 53.348812>,  <31.961504, 34.726032, 53.207756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325951, 34.640697, 53.348812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410387, -0.390468, 0.824086,
		-0.038109, -0.895558, -0.443311,
		0.911115, -0.213333, 0.352645,
		32.599285, 34.576698, 53.454605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414921, 34.233658, 53.113976>,  <31.961504, 34.726032, 53.207756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414921, 34.233658, 53.113976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.173054, 34.550510, 53.080727>,  <31.027933, 34.740623, 53.060780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.173054, 34.550510, 53.080727>,  <31.414921, 34.233658, 53.113976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173054, 34.550510, 53.080727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306547, 0.135131, -0.942214,
		-0.735125, -0.595205, -0.324535,
		-0.604665, 0.792131, -0.083120,
		30.991653, 34.788151, 53.055790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037846, 34.138470, 52.512184>,  <31.414921, 34.233658, 53.113976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037846, 34.138470, 52.512184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.991661, 34.533081, 52.558537>,  <30.963949, 34.769848, 52.586349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.991661, 34.533081, 52.558537>,  <31.037846, 34.138470, 52.512184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991661, 34.533081, 52.558537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066157, 0.124041, -0.990069,
		-0.991106, -0.106650, -0.079588,
		-0.115463, 0.986529, 0.115882,
		30.957022, 34.829041, 52.593300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510696, 34.364582, 52.030838>,  <31.037846, 34.138470, 52.512184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510696, 34.364582, 52.030838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.686323, 34.715031, 52.110462>,  <30.791698, 34.925301, 52.158237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.686323, 34.715031, 52.110462>,  <30.510696, 34.364582, 52.030838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686323, 34.715031, 52.110462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261282, 0.336497, -0.904711,
		-0.859624, 0.345217, 0.376660,
		0.439066, 0.876125, 0.199062,
		30.818043, 34.977867, 52.170181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076317, 34.816898, 51.758076>,  <30.510696, 34.364582, 52.030838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076317, 34.816898, 51.758076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.416002, 35.026463, 51.784470>,  <30.619814, 35.152199, 51.800308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.416002, 35.026463, 51.784470>,  <30.076317, 34.816898, 51.758076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416002, 35.026463, 51.784470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109391, 0.296799, -0.948654,
		-0.516593, 0.798392, 0.309357,
		0.849215, 0.523908, 0.065988,
		30.670767, 35.183636, 51.804264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891039, 35.511116, 51.529140>,  <30.076317, 34.816898, 51.758076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891039, 35.511116, 51.529140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.286242, 35.522503, 51.468437>,  <30.523363, 35.529335, 51.432014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.286242, 35.522503, 51.468437>,  <29.891039, 35.511116, 51.529140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286242, 35.522503, 51.468437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152006, 0.351757, -0.923667,
		0.027088, 0.935658, 0.351865,
		0.988008, 0.028465, -0.151754,
		30.582644, 35.531044, 51.422913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073195, 36.119778, 51.154408>,  <29.891039, 35.511116, 51.529140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073195, 36.119778, 51.154408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404623, 35.908752, 51.079418>,  <30.603479, 35.782135, 51.034424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404623, 35.908752, 51.079418>,  <30.073195, 36.119778, 51.154408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404623, 35.908752, 51.079418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030294, 0.292104, -0.955907,
		0.559064, 0.797716, 0.226047,
		0.828571, -0.527565, -0.187471,
		30.653194, 35.750484, 51.023178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626410, 36.549412, 50.748177>,  <30.073195, 36.119778, 51.154408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626410, 36.549412, 50.748177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.641142, 36.154613, 50.685581>,  <30.649982, 35.917736, 50.648026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.641142, 36.154613, 50.685581>,  <30.626410, 36.549412, 50.748177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641142, 36.154613, 50.685581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121899, 0.150987, -0.980991,
		0.991859, 0.055208, -0.114752,
		0.036832, -0.986993, -0.156487,
		30.652191, 35.858517, 50.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300411, 36.923386, 50.798218>,  <30.626410, 36.549412, 50.748177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300411, 36.923386, 50.798218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.397530, 37.311363, 50.791660>,  <31.455801, 37.544147, 50.787727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.397530, 37.311363, 50.791660>,  <31.300411, 36.923386, 50.798218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397530, 37.311363, 50.791660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358627, -0.074044, 0.930540,
		0.901353, -0.231808, -0.365824,
		0.242794, 0.969939, -0.016393,
		31.470367, 37.602345, 50.786743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017387, 37.018356, 51.086815>,  <31.300411, 36.923386, 50.798218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017387, 37.018356, 51.086815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.793982, 37.349110, 51.113121>,  <31.659939, 37.547562, 51.128906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.793982, 37.349110, 51.113121>,  <32.017387, 37.018356, 51.086815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793982, 37.349110, 51.113121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234526, 0.081362, 0.968699,
		0.795653, 0.556452, -0.239368,
		-0.558510, 0.826887, 0.065767,
		31.626429, 37.597176, 51.132851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504597, 37.590782, 51.312382>,  <32.017387, 37.018356, 51.086815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504597, 37.590782, 51.312382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.133938, 37.729198, 51.371147>,  <31.911543, 37.812248, 51.406406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.133938, 37.729198, 51.371147>,  <32.504597, 37.590782, 51.312382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133938, 37.729198, 51.371147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219290, 0.180142, 0.958885,
		0.305345, 0.920765, -0.242810,
		-0.926648, 0.346037, 0.146909,
		31.855944, 37.833008, 51.415218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563049, 38.164349, 51.700596>,  <32.504597, 37.590782, 51.312382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563049, 38.164349, 51.700596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.181030, 38.082283, 51.786190>,  <31.951818, 38.033043, 51.837547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.181030, 38.082283, 51.786190>,  <32.563049, 38.164349, 51.700596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181030, 38.082283, 51.786190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193292, 0.116322, 0.974222,
		-0.224768, 0.971790, -0.071436,
		-0.955049, -0.205166, 0.213984,
		31.894516, 38.020733, 51.850384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211163, 38.713783, 52.247135>,  <32.563049, 38.164349, 51.700596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211163, 38.713783, 52.247135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012234, 38.366795, 52.252247>,  <31.892876, 38.158600, 52.255314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012234, 38.366795, 52.252247>,  <32.211163, 38.713783, 52.247135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012234, 38.366795, 52.252247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177080, -0.087080, 0.980336,
		-0.849300, 0.489808, 0.196919,
		-0.497324, -0.867471, 0.012778,
		31.863037, 38.106552, 52.256081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792463, 38.813007, 52.784679>,  <32.211163, 38.713783, 52.247135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792463, 38.813007, 52.784679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.799824, 38.415146, 52.744026>,  <31.804239, 38.176430, 52.719635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.799824, 38.415146, 52.744026>,  <31.792463, 38.813007, 52.784679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799824, 38.415146, 52.744026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229887, -0.094719, 0.968597,
		-0.973043, -0.041188, 0.226915,
		0.018402, -0.994652, -0.101635,
		31.805344, 38.116749, 52.713535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333855, 38.508503, 53.315460>,  <31.792463, 38.813007, 52.784679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333855, 38.508503, 53.315460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.595821, 38.220066, 53.225033>,  <31.753000, 38.047005, 53.170776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.595821, 38.220066, 53.225033>,  <31.333855, 38.508503, 53.315460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595821, 38.220066, 53.225033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218665, -0.105532, 0.970076,
		-0.723375, -0.684751, 0.088564,
		0.654915, -0.721095, -0.226071,
		31.792295, 38.003738, 53.157211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280273, 37.999069, 53.820541>,  <31.333855, 38.508503, 53.315460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280273, 37.999069, 53.820541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.635328, 37.905037, 53.662132>,  <31.848362, 37.848618, 53.567085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.635328, 37.905037, 53.662132>,  <31.280273, 37.999069, 53.820541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635328, 37.905037, 53.662132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394514, -0.055536, 0.917210,
		-0.237612, -0.970388, 0.043447,
		0.887637, -0.235081, -0.396028,
		31.901619, 37.834515, 53.543324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571501, 37.566330, 54.342472>,  <31.280273, 37.999069, 53.820541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571501, 37.566330, 54.342472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.875219, 37.682251, 54.109409>,  <32.057449, 37.751804, 53.969574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.875219, 37.682251, 54.109409>,  <31.571501, 37.566330, 54.342472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875219, 37.682251, 54.109409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598156, 0.041805, 0.800289,
		0.256283, -0.956173, -0.141604,
		0.759295, 0.289802, -0.582655,
		32.103008, 37.769192, 53.934612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.682983, 37.417660, 38.081463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991817, 37.480412, 38.327801>,  <34.177120, 37.518063, 38.475605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991817, 37.480412, 38.327801>,  <33.682983, 37.417660, 38.081463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991817, 37.480412, 38.327801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565228, -0.273465, 0.778289,
		0.290512, -0.949002, -0.122466,
		0.772088, 0.156881, 0.615847,
		34.223442, 37.527477, 38.512554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751686, 36.796455, 38.547859>,  <33.682983, 37.417660, 38.081463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751686, 36.796455, 38.547859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945370, 37.079693, 38.753441>,  <34.061581, 37.249634, 38.876789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945370, 37.079693, 38.753441>,  <33.751686, 36.796455, 38.547859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945370, 37.079693, 38.753441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656076, -0.094801, 0.748717,
		0.578882, -0.699730, 0.418657,
		0.484211, 0.708089, 0.513955,
		34.090633, 37.292118, 38.907627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972466, 36.520782, 39.197613>,  <33.751686, 36.796455, 38.547859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972466, 36.520782, 39.197613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962887, 36.918324, 39.240845>,  <33.957142, 37.156849, 39.266785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962887, 36.918324, 39.240845>,  <33.972466, 36.520782, 39.197613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962887, 36.918324, 39.240845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421222, -0.108076, 0.900495,
		0.906641, -0.023965, 0.421221,
		-0.023943, 0.993854, 0.108081,
		33.955704, 37.216480, 39.273270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168049, 36.606350, 39.865105>,  <33.972466, 36.520782, 39.197613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168049, 36.606350, 39.865105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990776, 36.956959, 39.789951>,  <33.884411, 37.167324, 39.744858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990776, 36.956959, 39.789951>,  <34.168049, 36.606350, 39.865105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990776, 36.956959, 39.789951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273359, 0.067469, 0.959543,
		0.853734, 0.476615, 0.209703,
		-0.443184, 0.876519, -0.187888,
		33.857822, 37.219913, 39.733585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403767, 37.047985, 40.364223>,  <34.168049, 36.606350, 39.865105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403767, 37.047985, 40.364223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080166, 37.233116, 40.219280>,  <33.886005, 37.344196, 40.132317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080166, 37.233116, 40.219280>,  <34.403767, 37.047985, 40.364223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080166, 37.233116, 40.219280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320642, 0.169181, 0.931969,
		0.492646, 0.870153, 0.011535,
		-0.809004, 0.462830, -0.362354,
		33.837463, 37.371964, 40.110573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312038, 37.632198, 40.791683>,  <34.403767, 37.047985, 40.364223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312038, 37.632198, 40.791683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951702, 37.594223, 40.622231>,  <33.735500, 37.571438, 40.520557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951702, 37.594223, 40.622231>,  <34.312038, 37.632198, 40.791683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951702, 37.594223, 40.622231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432787, 0.273350, 0.859055,
		0.034243, 0.957218, -0.287334,
		-0.900845, -0.094938, -0.423632,
		33.681450, 37.565742, 40.495140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853821, 38.291882, 40.910847>,  <34.312038, 37.632198, 40.791683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853821, 38.291882, 40.910847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618126, 37.981792, 40.819782>,  <33.476707, 37.795738, 40.765144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618126, 37.981792, 40.819782>,  <33.853821, 38.291882, 40.910847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618126, 37.981792, 40.819782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551493, 0.179974, 0.814533,
		-0.590471, 0.605507, -0.533578,
		-0.589236, -0.775223, -0.227664,
		33.441357, 37.749226, 40.751484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324673, 38.466206, 41.400898>,  <33.853821, 38.291882, 40.910847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324673, 38.466206, 41.400898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208015, 38.116848, 41.244881>,  <33.138020, 37.907234, 41.151272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208015, 38.116848, 41.244881>,  <33.324673, 38.466206, 41.400898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208015, 38.116848, 41.244881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667636, -0.106145, 0.736883,
		-0.684987, 0.475314, -0.552150,
		-0.291642, -0.873390, -0.390045,
		33.120522, 37.854832, 41.127869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641937, 38.513817, 41.315323>,  <33.324673, 38.466206, 41.400898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641937, 38.513817, 41.315323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728779, 38.125168, 41.352886>,  <32.780884, 37.891979, 41.375423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728779, 38.125168, 41.352886>,  <32.641937, 38.513817, 41.315323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728779, 38.125168, 41.352886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609354, -0.059737, 0.790645,
		-0.762598, -0.228872, -0.605030,
		0.217099, -0.971622, 0.093909,
		32.793907, 37.833683, 41.381058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990820, 38.033020, 41.281044>,  <32.641937, 38.513817, 41.315323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990820, 38.033020, 41.281044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273354, 37.852100, 41.498856>,  <32.442875, 37.743549, 41.629543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273354, 37.852100, 41.498856>,  <31.990820, 38.033020, 41.281044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273354, 37.852100, 41.498856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624501, -0.035961, 0.780195,
		-0.333299, -0.891141, -0.307862,
		0.706335, -0.452299, 0.544533,
		32.485252, 37.716412, 41.662216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634476, 37.486271, 41.526096>,  <31.990820, 38.033020, 41.281044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634476, 37.486271, 41.526096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956535, 37.554497, 41.753304>,  <32.149773, 37.595432, 41.889626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956535, 37.554497, 41.753304>,  <31.634476, 37.486271, 41.526096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956535, 37.554497, 41.753304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579555, 0.022969, 0.814609,
		0.125898, -0.985079, 0.117345,
		0.805149, 0.170565, 0.568016,
		32.198082, 37.605667, 41.923710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606361, 37.035515, 42.092247>,  <31.634476, 37.486271, 41.526096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606361, 37.035515, 42.092247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853769, 37.309448, 42.246361>,  <32.002213, 37.473808, 42.338829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853769, 37.309448, 42.246361>,  <31.606361, 37.035515, 42.092247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853769, 37.309448, 42.246361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579904, 0.066965, 0.811928,
		0.530231, -0.725620, 0.438555,
		0.618519, 0.684829, 0.385283,
		32.039326, 37.514896, 42.361946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073784, 36.285633, 42.121010>,  <31.606361, 37.035515, 42.092247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073784, 36.285633, 42.121010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728458, 36.107742, 42.025585>,  <31.521263, 36.001007, 41.968330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728458, 36.107742, 42.025585>,  <32.073784, 36.285633, 42.121010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728458, 36.107742, 42.025585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349617, -0.186131, -0.918218,
		0.363953, -0.876112, 0.316173,
		-0.863311, -0.444727, -0.238561,
		31.469465, 35.974323, 41.954018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329514, 35.858307, 41.542820>,  <32.073784, 36.285633, 42.121010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329514, 35.858307, 41.542820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930557, 35.829571, 41.539936>,  <31.691183, 35.812328, 41.538208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930557, 35.829571, 41.539936>,  <32.329514, 35.858307, 41.542820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930557, 35.829571, 41.539936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016618, -0.131270, -0.991207,
		0.070267, -0.988740, 0.132122,
		-0.997389, -0.071845, -0.007207,
		31.631340, 35.808018, 41.537773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136642, 35.314064, 41.075706>,  <32.329514, 35.858307, 41.542820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136642, 35.314064, 41.075706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796955, 35.523682, 41.101639>,  <31.593143, 35.649452, 41.117199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796955, 35.523682, 41.101639>,  <32.136642, 35.314064, 41.075706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796955, 35.523682, 41.101639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204006, -0.212371, -0.955657,
		-0.487043, -0.824786, 0.287258,
		-0.849218, 0.524048, 0.064827,
		31.542191, 35.680897, 41.121086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749521, 34.834637, 40.668221>,  <32.136642, 35.314064, 41.075706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749521, 34.834637, 40.668221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563040, 35.188293, 40.680470>,  <31.451151, 35.400490, 40.687820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563040, 35.188293, 40.680470>,  <31.749521, 34.834637, 40.668221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563040, 35.188293, 40.680470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124256, -0.031165, -0.991761,
		-0.875907, -0.466170, 0.124390,
		-0.466206, 0.884146, 0.030627,
		31.423178, 35.453537, 40.689659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166567, 34.762264, 40.314274>,  <31.749521, 34.834637, 40.668221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166567, 34.762264, 40.314274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258900, 35.151184, 40.299534>,  <31.314301, 35.384537, 40.290691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258900, 35.151184, 40.299534>,  <31.166567, 34.762264, 40.314274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258900, 35.151184, 40.299534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052424, -0.025387, -0.998302,
		-0.971580, 0.232373, 0.045111,
		0.230833, 0.972295, -0.036847,
		31.328150, 35.442871, 40.288479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677122, 34.972870, 39.908485>,  <31.166567, 34.762264, 40.314274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677122, 34.972870, 39.908485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932375, 35.280293, 39.890095>,  <31.085527, 35.464745, 39.879059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932375, 35.280293, 39.890095>,  <30.677122, 34.972870, 39.908485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932375, 35.280293, 39.890095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139829, 0.056966, -0.988536,
		-0.757122, 0.637246, 0.143818,
		0.638133, 0.768552, -0.045976,
		31.123816, 35.510857, 39.876301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375530, 35.452633, 39.406597>,  <30.677122, 34.972870, 39.908485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375530, 35.452633, 39.406597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764675, 35.545174, 39.408260>,  <30.998161, 35.600697, 39.409260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764675, 35.545174, 39.408260>,  <30.375530, 35.452633, 39.406597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764675, 35.545174, 39.408260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021709, 0.109151, -0.993788,
		-0.230369, 0.966728, 0.111212,
		0.972861, 0.231352, 0.004158,
		31.056534, 35.614578, 39.409508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452761, 35.775558, 38.722584>,  <30.375530, 35.452633, 39.406597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452761, 35.775558, 38.722584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833920, 35.761986, 38.843143>,  <31.062614, 35.753841, 38.915478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833920, 35.761986, 38.843143>,  <30.452761, 35.775558, 38.722584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833920, 35.761986, 38.843143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303166, 0.077176, -0.949807,
		0.008964, 0.996440, 0.083827,
		0.952896, -0.033927, 0.301395,
		31.119789, 35.751808, 38.933563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840385, 36.342583, 38.471157>,  <30.452761, 35.775558, 38.722584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840385, 36.342583, 38.471157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103149, 36.047844, 38.535057>,  <31.260807, 35.870998, 38.573399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103149, 36.047844, 38.535057>,  <30.840385, 36.342583, 38.471157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103149, 36.047844, 38.535057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147647, -0.082056, -0.985631,
		0.739371, 0.671057, 0.054890,
		0.656910, -0.736851, 0.159750,
		31.300222, 35.826790, 38.582981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417051, 36.557312, 38.075096>,  <30.840385, 36.342583, 38.471157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417051, 36.557312, 38.075096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464951, 36.164143, 38.130989>,  <31.493690, 35.928242, 38.164524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464951, 36.164143, 38.130989>,  <31.417051, 36.557312, 38.075096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464951, 36.164143, 38.130989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199801, -0.114009, -0.973181,
		0.972491, 0.144457, 0.182736,
		0.119750, -0.982921, 0.139735,
		31.500875, 35.869267, 38.172909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046917, 36.333504, 37.633327>,  <31.417051, 36.557312, 38.075096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046917, 36.333504, 37.633327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878901, 35.980030, 37.715954>,  <31.778091, 35.767944, 37.765530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878901, 35.980030, 37.715954>,  <32.046917, 36.333504, 37.633327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878901, 35.980030, 37.715954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033244, -0.242446, -0.969595,
		0.906898, -0.400398, 0.131213,
		-0.420036, -0.883686, 0.206563,
		31.752890, 35.714924, 37.777924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456326, 35.734661, 37.414280>,  <32.046917, 36.333504, 37.633327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456326, 35.734661, 37.414280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082260, 35.593666, 37.400330>,  <31.857821, 35.509068, 37.391960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082260, 35.593666, 37.400330>,  <32.456326, 35.734661, 37.414280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082260, 35.593666, 37.400330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095888, -0.157146, -0.982909,
		0.340988, -0.922526, 0.180757,
		-0.935165, -0.352492, -0.034874,
		31.801710, 35.487919, 37.389866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084442, 35.445358, 37.415546>,  <32.456326, 35.734661, 37.414280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084442, 35.445358, 37.415546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253582, 35.115814, 37.566513>,  <33.355068, 34.918087, 37.657093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253582, 35.115814, 37.566513>,  <33.084442, 35.445358, 37.415546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253582, 35.115814, 37.566513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902313, -0.421314, 0.091250,
		0.083833, -0.379133, -0.921537,
		0.422852, -0.823864, 0.377417,
		33.380436, 34.868656, 37.679737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789474, 35.426941, 37.535564>,  <33.084442, 35.445358, 37.415546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789474, 35.426941, 37.535564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857662, 35.043076, 37.446133>,  <33.898575, 34.812756, 37.392475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857662, 35.043076, 37.446133>,  <33.789474, 35.426941, 37.535564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857662, 35.043076, 37.446133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331473, -0.157824, 0.930170,
		-0.927936, -0.232675, 0.291198,
		0.170470, -0.959663, -0.223577,
		33.908802, 34.755177, 37.379059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631298, 35.106163, 38.130848>,  <33.789474, 35.426941, 37.535564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631298, 35.106163, 38.130848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866875, 34.859161, 37.922298>,  <34.008221, 34.710960, 37.797169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866875, 34.859161, 37.922298>,  <33.631298, 35.106163, 38.130848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866875, 34.859161, 37.922298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457301, -0.277287, 0.844978,
		-0.666351, -0.736068, 0.119081,
		0.588942, -0.617508, -0.521375,
		34.043556, 34.673908, 37.765884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549866, 34.413097, 38.320858>,  <33.631298, 35.106163, 38.130848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549866, 34.413097, 38.320858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928410, 34.480354, 38.210491>,  <34.155537, 34.520710, 38.144272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928410, 34.480354, 38.210491>,  <33.549866, 34.413097, 38.320858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928410, 34.480354, 38.210491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318345, -0.339061, 0.885265,
		0.055304, -0.925615, -0.374403,
		0.946360, 0.168148, -0.275914,
		34.212318, 34.530800, 38.127716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081020, 33.809860, 38.311867>,  <33.549866, 34.413097, 38.320858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081020, 33.809860, 38.311867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230011, 34.168842, 38.406380>,  <34.319405, 34.384232, 38.463089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230011, 34.168842, 38.406380>,  <34.081020, 33.809860, 38.311867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230011, 34.168842, 38.406380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105529, -0.293914, 0.949988,
		0.922024, -0.328910, -0.204183,
		0.372473, 0.897459, 0.236286,
		34.341751, 34.438080, 38.477264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716316, 33.707329, 38.610752>,  <34.081020, 33.809860, 38.311867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716316, 33.707329, 38.610752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600964, 34.062614, 38.753811>,  <34.531754, 34.275787, 38.839645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600964, 34.062614, 38.753811>,  <34.716316, 33.707329, 38.610752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600964, 34.062614, 38.753811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128650, -0.334188, 0.933685,
		0.948834, 0.315268, -0.017895,
		-0.288381, 0.888214, 0.357648,
		34.514450, 34.329079, 38.861107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198414, 33.844597, 39.094952>,  <34.716316, 33.707329, 38.610752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198414, 33.844597, 39.094952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865784, 34.046310, 39.188065>,  <34.666206, 34.167339, 39.243931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865784, 34.046310, 39.188065>,  <35.198414, 33.844597, 39.094952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865784, 34.046310, 39.188065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118571, -0.248264, 0.961408,
		0.542611, 0.827082, 0.146656,
		-0.831573, 0.504281, 0.232779,
		34.616310, 34.197594, 39.257896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213249, 33.991467, 39.843021>,  <35.198414, 33.844597, 39.094952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213249, 33.991467, 39.843021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817463, 34.047752, 39.829453>,  <34.579990, 34.081524, 39.821312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817463, 34.047752, 39.829453>,  <35.213249, 33.991467, 39.843021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817463, 34.047752, 39.829453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063466, -0.211170, 0.975387,
		0.130086, 0.967268, 0.217877,
		-0.989469, 0.140712, -0.033918,
		34.520622, 34.089966, 39.819279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165859, 34.392517, 40.397781>,  <35.213249, 33.991467, 39.843021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165859, 34.392517, 40.397781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788174, 34.283436, 40.323914>,  <34.561562, 34.217987, 40.279591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788174, 34.283436, 40.323914>,  <35.165859, 34.392517, 40.397781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788174, 34.283436, 40.323914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194372, 0.008749, 0.980889,
		-0.265873, 0.962059, -0.061266,
		-0.944209, -0.272700, -0.184672,
		34.504910, 34.201626, 40.268513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839920, 34.735519, 40.851894>,  <35.165859, 34.392517, 40.397781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839920, 34.735519, 40.851894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578892, 34.451603, 40.745800>,  <34.422276, 34.281254, 40.682144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578892, 34.451603, 40.745800>,  <34.839920, 34.735519, 40.851894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578892, 34.451603, 40.745800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345187, -0.033132, 0.937949,
		-0.674532, 0.703637, -0.223389,
		-0.652574, -0.709787, -0.265235,
		34.383121, 34.238667, 40.666229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177750, 34.995403, 41.125648>,  <34.839920, 34.735519, 40.851894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177750, 34.995403, 41.125648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199329, 34.598465, 41.081207>,  <34.212276, 34.360302, 41.054543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199329, 34.598465, 41.081207>,  <34.177750, 34.995403, 41.125648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199329, 34.598465, 41.081207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173735, -0.118899, 0.977589,
		-0.983314, -0.033439, -0.178819,
		0.053951, -0.992343, -0.111105,
		34.215515, 34.300762, 41.047874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736488, 34.753067, 41.542686>,  <34.177750, 34.995403, 41.125648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736488, 34.753067, 41.542686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932632, 34.415279, 41.456505>,  <34.050320, 34.212608, 41.404797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932632, 34.415279, 41.456505>,  <33.736488, 34.753067, 41.542686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932632, 34.415279, 41.456505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155492, -0.328022, 0.931785,
		-0.857537, -0.423409, -0.292157,
		0.490360, -0.844468, -0.215454,
		34.079742, 34.161938, 41.391869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389423, 34.271240, 42.003143>,  <33.736488, 34.753067, 41.542686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389423, 34.271240, 42.003143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731007, 34.096024, 41.890804>,  <33.935955, 33.990894, 41.823402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731007, 34.096024, 41.890804>,  <33.389423, 34.271240, 42.003143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731007, 34.096024, 41.890804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040364, -0.482341, 0.875053,
		-0.518781, -0.758591, -0.394216,
		0.853954, -0.438048, -0.280849,
		33.987194, 33.964611, 41.806549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397373, 33.531353, 42.135880>,  <33.389423, 34.271240, 42.003143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397373, 33.531353, 42.135880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779083, 33.650898, 42.138561>,  <34.008110, 33.722626, 42.140171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779083, 33.650898, 42.138561>,  <33.397373, 33.531353, 42.135880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779083, 33.650898, 42.138561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150223, -0.498822, 0.853586,
		0.258449, -0.813547, -0.520908,
		0.954273, 0.298861, 0.006707,
		34.065365, 33.740555, 42.140572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705517, 32.998257, 42.532120>,  <33.397373, 33.531353, 42.135880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705517, 32.998257, 42.532120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986477, 33.282532, 42.516373>,  <34.155052, 33.453098, 42.506924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986477, 33.282532, 42.516373>,  <33.705517, 32.998257, 42.532120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986477, 33.282532, 42.516373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361901, -0.308959, 0.879529,
		0.612908, -0.632032, -0.474213,
		0.702404, 0.710689, -0.039370,
		34.197197, 33.495739, 42.504562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250656, 32.594765, 42.877769>,  <33.705517, 32.998257, 42.532120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250656, 32.594765, 42.877769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329128, 32.986946, 42.871845>,  <34.376213, 33.222256, 42.868290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329128, 32.986946, 42.871845>,  <34.250656, 32.594765, 42.877769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329128, 32.986946, 42.871845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183162, -0.021803, 0.982841,
		0.963309, -0.195529, -0.183859,
		0.196183, 0.980456, -0.014811,
		34.387981, 33.281082, 42.867401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879658, 32.662159, 43.249451>,  <34.250656, 32.594765, 42.877769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879658, 32.662159, 43.249451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717426, 33.027546, 43.262672>,  <34.620087, 33.246777, 43.270607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717426, 33.027546, 43.262672>,  <34.879658, 32.662159, 43.249451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717426, 33.027546, 43.262672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115798, 0.015472, 0.993152,
		0.906697, 0.406626, -0.112053,
		-0.405575, 0.913464, 0.033058,
		34.595753, 33.301586, 43.272591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367802, 33.185623, 43.675728>,  <34.879658, 32.662159, 43.249451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367802, 33.185623, 43.675728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987228, 33.308407, 43.685089>,  <34.758884, 33.382076, 43.690708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987228, 33.308407, 43.685089>,  <35.367802, 33.185623, 43.675728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987228, 33.308407, 43.685089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075308, 0.158351, 0.984507,
		0.298498, 0.938457, -0.173777,
		-0.951435, 0.306960, 0.023405,
		34.701797, 33.400494, 43.692112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451904, 33.511211, 44.304050>,  <35.367802, 33.185623, 43.675728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451904, 33.511211, 44.304050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062668, 33.558079, 44.224689>,  <34.829124, 33.586201, 44.177071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062668, 33.558079, 44.224689>,  <35.451904, 33.511211, 44.304050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062668, 33.558079, 44.224689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155170, 0.303322, 0.940169,
		0.170340, 0.945657, -0.276979,
		-0.973091, 0.117170, -0.198406,
		34.770741, 33.593231, 44.165169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300720, 34.274136, 44.503700>,  <35.451904, 33.511211, 44.304050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300720, 34.274136, 44.503700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003288, 34.006813, 44.512199>,  <34.824829, 33.846420, 44.517300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003288, 34.006813, 44.512199>,  <35.300720, 34.274136, 44.503700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003288, 34.006813, 44.512199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228611, 0.283969, 0.931181,
		-0.628352, 0.687549, -0.363937,
		-0.743580, -0.668310, 0.021251,
		34.780216, 33.806320, 44.518574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778854, 34.592625, 44.750648>,  <35.300720, 34.274136, 44.503700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778854, 34.592625, 44.750648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693069, 34.208927, 44.824257>,  <34.641598, 33.978710, 44.868423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693069, 34.208927, 44.824257>,  <34.778854, 34.592625, 44.750648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693069, 34.208927, 44.824257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188569, 0.225527, 0.955813,
		-0.958357, 0.170285, -0.229250,
		-0.214463, -0.959240, 0.184025,
		34.628731, 33.921154, 44.879463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076469, 34.645969, 45.045631>,  <34.778854, 34.592625, 44.750648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076469, 34.645969, 45.045631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255859, 34.303299, 45.147598>,  <34.363495, 34.097698, 45.208778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255859, 34.303299, 45.147598>,  <34.076469, 34.645969, 45.045631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255859, 34.303299, 45.147598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137971, 0.215433, 0.966723,
		-0.883083, -0.468720, -0.021580,
		0.448474, -0.856674, 0.254915,
		34.390400, 34.046295, 45.224072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806442, 34.585537, 45.614471>,  <34.076469, 34.645969, 45.045631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806442, 34.585537, 45.614471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097172, 34.310822, 45.617424>,  <34.271610, 34.145992, 45.619198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097172, 34.310822, 45.617424>,  <33.806442, 34.585537, 45.614471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097172, 34.310822, 45.617424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077836, 0.093044, 0.992615,
		-0.682404, -0.720877, 0.121083,
		0.726820, -0.686789, 0.007383,
		34.315216, 34.104786, 45.619640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551525, 34.029686, 46.092907>,  <33.806442, 34.585537, 45.614471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551525, 34.029686, 46.092907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951397, 34.022427, 46.099949>,  <34.191319, 34.018070, 46.104172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951397, 34.022427, 46.099949>,  <33.551525, 34.029686, 46.092907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951397, 34.022427, 46.099949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014490, 0.159208, 0.987139,
		-0.020720, -0.987078, 0.158894,
		0.999680, -0.018152, 0.017601,
		34.251301, 34.016983, 46.105228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751850, 33.572773, 46.639732>,  <33.551525, 34.029686, 46.092907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751850, 33.572773, 46.639732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058361, 33.818928, 46.565845>,  <34.242268, 33.966621, 46.521515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058361, 33.818928, 46.565845>,  <33.751850, 33.572773, 46.639732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058361, 33.818928, 46.565845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120032, 0.145323, 0.982076,
		0.631201, -0.774712, 0.037491,
		0.766275, 0.615388, -0.184718,
		34.288242, 34.003544, 46.510429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179943, 33.395897, 47.178387>,  <33.751850, 33.572773, 46.639732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179943, 33.395897, 47.178387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335491, 33.734924, 47.033943>,  <34.428822, 33.938343, 46.947277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335491, 33.734924, 47.033943>,  <34.179943, 33.395897, 47.178387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335491, 33.734924, 47.033943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119446, 0.342266, 0.931980,
		0.913515, -0.405555, 0.031859,
		0.388874, 0.847573, -0.361107,
		34.452152, 33.989197, 46.925610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860302, 33.522343, 47.512222>,  <34.179943, 33.395897, 47.178387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860302, 33.522343, 47.512222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728840, 33.880695, 47.392635>,  <34.649963, 34.095707, 47.320885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728840, 33.880695, 47.392635>,  <34.860302, 33.522343, 47.512222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728840, 33.880695, 47.392635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148492, 0.361629, 0.920421,
		0.932705, 0.258103, -0.251882,
		-0.328652, 0.895883, -0.298967,
		34.630245, 34.149460, 47.302944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227360, 34.005829, 47.875568>,  <34.860302, 33.522343, 47.512222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227360, 34.005829, 47.875568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909073, 34.229607, 47.782749>,  <34.718102, 34.363873, 47.727058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909073, 34.229607, 47.782749>,  <35.227360, 34.005829, 47.875568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909073, 34.229607, 47.782749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018287, 0.405155, 0.914065,
		0.605388, 0.723097, -0.332621,
		-0.795720, 0.559446, -0.232053,
		34.670357, 34.397442, 47.713135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389420, 34.628666, 47.985012>,  <35.227360, 34.005829, 47.875568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389420, 34.628666, 47.985012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991379, 34.666599, 47.973843>,  <34.752556, 34.689362, 47.967140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991379, 34.666599, 47.973843>,  <35.389420, 34.628666, 47.985012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991379, 34.666599, 47.973843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023954, 0.505331, 0.862593,
		0.095916, 0.857698, -0.505127,
		-0.995101, 0.094836, -0.027924,
		34.692848, 34.695049, 47.965466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217529, 35.249088, 48.151340>,  <35.389420, 34.628666, 47.985012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217529, 35.249088, 48.151340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869694, 35.062443, 48.215946>,  <34.660992, 34.950455, 48.254711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869694, 35.062443, 48.215946>,  <35.217529, 35.249088, 48.151340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869694, 35.062443, 48.215946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078242, 0.453188, 0.887974,
		-0.487535, 0.759537, -0.430597,
		-0.869590, -0.466609, 0.161518,
		34.608818, 34.922459, 48.264400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201050, 36.045013, 48.025520>,  <35.217529, 35.249088, 48.151340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201050, 36.045013, 48.025520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585503, 36.145550, 48.071220>,  <35.816174, 36.205872, 48.098640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585503, 36.145550, 48.071220>,  <35.201050, 36.045013, 48.025520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585503, 36.145550, 48.071220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172572, -0.223882, -0.959216,
		-0.215515, 0.941649, -0.258555,
		0.961131, 0.251345, 0.114252,
		35.873840, 36.220955, 48.105495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436920, 36.366879, 47.374214>,  <35.201050, 36.045013, 48.025520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436920, 36.366879, 47.374214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788471, 36.283260, 47.545738>,  <35.999401, 36.233089, 47.648655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788471, 36.283260, 47.545738>,  <35.436920, 36.366879, 47.374214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788471, 36.283260, 47.545738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420375, -0.085583, -0.903305,
		0.225531, 0.974154, 0.012661,
		0.878875, -0.209045, 0.428812,
		36.052135, 36.220547, 47.674381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965027, 36.807053, 46.960979>,  <35.436920, 36.366879, 47.374214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965027, 36.807053, 46.960979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170300, 36.502007, 47.118492>,  <36.293461, 36.318977, 47.213001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170300, 36.502007, 47.118492>,  <35.965027, 36.807053, 46.960979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170300, 36.502007, 47.118492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365586, -0.220876, -0.904190,
		0.776527, 0.607972, 0.165454,
		0.513178, -0.762616, 0.393783,
		36.324253, 36.273220, 47.236626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569233, 36.876842, 46.748039>,  <35.965027, 36.807053, 46.960979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569233, 36.876842, 46.748039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551678, 36.485718, 46.829975>,  <36.541145, 36.251041, 46.879135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551678, 36.485718, 46.829975>,  <36.569233, 36.876842, 46.748039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551678, 36.485718, 46.829975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484406, -0.200146, -0.851641,
		0.873742, 0.061849, 0.482441,
		-0.043885, -0.977812, 0.204836,
		36.538513, 36.192375, 46.891426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203144, 36.625114, 46.556889>,  <36.569233, 36.876842, 46.748039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203144, 36.625114, 46.556889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963497, 36.304886, 46.561699>,  <36.819710, 36.112751, 46.564587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963497, 36.304886, 46.561699>,  <37.203144, 36.625114, 46.556889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963497, 36.304886, 46.561699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256791, -0.206356, -0.944180,
		0.758362, -0.562591, 0.329211,
		-0.599121, -0.800568, 0.012024,
		36.783760, 36.064716, 46.565308>
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
