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
	<24.016087, 35.434174, 34.789429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188883, 35.078281, 34.848446>,  <24.292561, 34.864746, 34.883858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188883, 35.078281, 34.848446>,  <24.016087, 35.434174, 34.789429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188883, 35.078281, 34.848446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436363, 0.349374, 0.829171,
		-0.789284, -0.293812, 0.539171,
		0.431993, -0.889726, 0.147547,
		24.318481, 34.811363, 34.892712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.798538, 35.142033, 35.462677>,  <24.016087, 35.434174, 34.789429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.798538, 35.142033, 35.462677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.146860, 34.985577, 35.343544>,  <24.355854, 34.891705, 35.272064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.146860, 34.985577, 35.343544>,  <23.798538, 35.142033, 35.462677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.146860, 34.985577, 35.343544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409538, 0.241987, 0.879614,
		-0.271982, -0.887948, 0.370910,
		0.870807, -0.391141, -0.297832,
		24.408102, 34.868233, 35.254196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072744, 34.956470, 36.032906>,  <23.798538, 35.142033, 35.462677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072744, 34.956470, 36.032906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400375, 35.008217, 35.809345>,  <24.596954, 35.039265, 35.675209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400375, 35.008217, 35.809345>,  <24.072744, 34.956470, 36.032906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400375, 35.008217, 35.809345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462517, 0.427453, 0.776764,
		0.339393, -0.894733, 0.290283,
		0.819079, 0.129368, -0.558904,
		24.646099, 35.047028, 35.641674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.766077, 34.484234, 36.233688>,  <24.072744, 34.956470, 36.032906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.766077, 34.484234, 36.233688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833588, 34.847668, 36.080856>,  <24.874094, 35.065727, 35.989155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833588, 34.847668, 36.080856>,  <24.766077, 34.484234, 36.233688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.833588, 34.847668, 36.080856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385126, 0.296038, 0.874093,
		0.907299, -0.294679, -0.299955,
		0.168779, 0.908584, -0.382084,
		24.884222, 35.120243, 35.966232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066669, 34.195999, 36.896454>,  <24.766077, 34.484234, 36.233688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066669, 34.195999, 36.896454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259512, 34.180817, 37.246571>,  <25.375217, 34.171707, 37.456642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259512, 34.180817, 37.246571>,  <25.066669, 34.195999, 36.896454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259512, 34.180817, 37.246571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183950, 0.981177, -0.058767,
		-0.856584, 0.189342, 0.480014,
		0.482106, -0.037960, 0.875290,
		25.404144, 34.169430, 37.509159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699638, 34.592922, 37.342148>,  <25.066669, 34.195999, 36.896454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699638, 34.592922, 37.342148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095974, 34.574295, 37.392849>,  <25.333776, 34.563118, 37.423267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095974, 34.574295, 37.392849>,  <24.699638, 34.592922, 37.342148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095974, 34.574295, 37.392849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072092, 0.976118, -0.204933,
		-0.114178, 0.212193, 0.970535,
		0.990841, -0.046569, 0.126749,
		25.393227, 34.560326, 37.430874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860729, 33.936604, 37.596275>,  <24.699638, 34.592922, 37.342148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860729, 33.936604, 37.596275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599241, 33.775414, 37.852486>,  <24.442348, 33.678699, 38.006210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599241, 33.775414, 37.852486>,  <24.860729, 33.936604, 37.596275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.599241, 33.775414, 37.852486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729015, 0.108353, -0.675867,
		0.202953, -0.908776, -0.364604,
		-0.653718, -0.402971, 0.640521,
		24.403126, 33.654522, 38.044643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518635, 33.284626, 37.293716>,  <24.860729, 33.936604, 37.596275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518635, 33.284626, 37.293716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307915, 33.484352, 37.568863>,  <24.181482, 33.604187, 37.733952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307915, 33.484352, 37.568863>,  <24.518635, 33.284626, 37.293716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307915, 33.484352, 37.568863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739366, 0.130029, -0.660629,
		-0.419307, -0.856605, 0.300680,
		-0.526801, 0.499319, 0.687867,
		24.149874, 33.634148, 37.775223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148853, 33.000362, 37.032436>,  <24.518635, 33.284626, 37.293716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148853, 33.000362, 37.032436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123827, 33.106941, 36.647709>,  <25.108810, 33.170891, 36.416874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123827, 33.106941, 36.647709>,  <25.148853, 33.000362, 37.032436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123827, 33.106941, 36.647709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996058, -0.077376, 0.043360,
		-0.062868, 0.960738, 0.270240,
		-0.062568, 0.266449, -0.961816,
		25.105057, 33.186874, 36.359165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740204, 32.592804, 36.691849>,  <25.148853, 33.000362, 37.032436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740204, 32.592804, 36.691849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816919, 32.500023, 37.073303>,  <25.862947, 32.444355, 37.302174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816919, 32.500023, 37.073303>,  <25.740204, 32.592804, 36.691849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816919, 32.500023, 37.073303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501429, -0.812121, -0.298377,
		0.843674, 0.535404, -0.039447,
		0.191788, -0.231953, 0.953633,
		25.874456, 32.430435, 37.359394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433039, 32.423241, 36.685871>,  <25.740204, 32.592804, 36.691849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433039, 32.423241, 36.685871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275562, 32.237072, 37.002956>,  <26.181076, 32.125370, 37.193207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275562, 32.237072, 37.002956>,  <26.433039, 32.423241, 36.685871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275562, 32.237072, 37.002956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539890, -0.815018, -0.210390,
		0.743993, 0.345148, 0.572142,
		-0.393691, -0.465423, 0.792710,
		26.157455, 32.097446, 37.240768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897009, 32.235542, 37.173161>,  <26.433039, 32.423241, 36.685871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897009, 32.235542, 37.173161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598829, 31.969875, 37.195770>,  <26.419922, 31.810476, 37.209335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598829, 31.969875, 37.195770>,  <26.897009, 32.235542, 37.173161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598829, 31.969875, 37.195770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639686, -0.736649, -0.219432,
		0.187374, -0.127420, 0.973989,
		-0.745448, -0.664163, 0.056521,
		26.375195, 31.770626, 37.212727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949539, 31.733641, 37.628014>,  <26.897009, 32.235542, 37.173161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949539, 31.733641, 37.628014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740900, 31.545885, 37.343025>,  <26.615717, 31.433231, 37.172031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740900, 31.545885, 37.343025>,  <26.949539, 31.733641, 37.628014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740900, 31.545885, 37.343025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736437, -0.669345, -0.098166,
		-0.430809, -0.575891, 0.694804,
		-0.521597, -0.469389, -0.712468,
		26.584421, 31.405067, 37.129284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685337, 31.613314, 37.712524>,  <26.949539, 31.733641, 37.628014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685337, 31.613314, 37.712524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445196, 31.833437, 37.944641>,  <27.301111, 31.965511, 38.083912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445196, 31.833437, 37.944641>,  <27.685337, 31.613314, 37.712524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445196, 31.833437, 37.944641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571406, -0.212502, 0.792678,
		0.559529, 0.807469, -0.186872,
		-0.600352, 0.550306, 0.580294,
		27.265091, 31.998529, 38.118729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072515, 32.091515, 38.191841>,  <27.685337, 31.613314, 37.712524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072515, 32.091515, 38.191841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706432, 32.032986, 38.342033>,  <27.486782, 31.997869, 38.432148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706432, 32.032986, 38.342033>,  <28.072515, 32.091515, 38.191841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706432, 32.032986, 38.342033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398899, -0.196650, 0.895661,
		-0.057215, 0.969494, 0.238343,
		-0.915208, -0.146320, 0.375479,
		27.431870, 31.989090, 38.454678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865496, 32.430302, 38.805820>,  <28.072515, 32.091515, 38.191841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865496, 32.430302, 38.805820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708603, 32.062702, 38.789864>,  <27.614468, 31.842142, 38.780289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708603, 32.062702, 38.789864>,  <27.865496, 32.430302, 38.805820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708603, 32.062702, 38.789864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616839, -0.294948, 0.729736,
		-0.682394, 0.261619, 0.682564,
		-0.392234, -0.919000, -0.039894,
		27.590933, 31.787003, 38.777897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503681, 32.266869, 39.374931>,  <27.865496, 32.430302, 38.805820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503681, 32.266869, 39.374931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654768, 31.930429, 39.220074>,  <27.745420, 31.728565, 39.127159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654768, 31.930429, 39.220074>,  <27.503681, 32.266869, 39.374931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654768, 31.930429, 39.220074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546100, -0.135285, 0.826724,
		-0.747734, -0.523684, 0.408227,
		0.377715, -0.841102, -0.387141,
		27.768082, 31.678099, 39.103931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806797, 32.284939, 40.106590>,  <27.503681, 32.266869, 39.374931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806797, 32.284939, 40.106590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880159, 32.672665, 40.172070>,  <27.924177, 32.905300, 40.211357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880159, 32.672665, 40.172070>,  <27.806797, 32.284939, 40.106590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880159, 32.672665, 40.172070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276480, -0.210663, 0.937646,
		0.943357, -0.126708, -0.306632,
		0.183404, 0.969312, 0.163698,
		27.935181, 32.963459, 40.221180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528631, 32.062454, 40.141647>,  <27.806797, 32.284939, 40.106590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528631, 32.062454, 40.141647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899441, 32.191204, 40.218613>,  <29.121927, 32.268456, 40.264790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899441, 32.191204, 40.218613>,  <28.528631, 32.062454, 40.141647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899441, 32.191204, 40.218613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373869, 0.753493, 0.540805,
		0.029092, -0.573276, 0.818846,
		0.927025, 0.321874, 0.192410,
		29.177547, 32.287766, 40.276337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578625, 32.249985, 40.911549>,  <28.528631, 32.062454, 40.141647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578625, 32.249985, 40.911549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809675, 32.449234, 40.652870>,  <28.948305, 32.568783, 40.497662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809675, 32.449234, 40.652870>,  <28.578625, 32.249985, 40.911549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809675, 32.449234, 40.652870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449629, 0.855368, 0.257251,
		0.681307, 0.142178, 0.718057,
		0.577628, 0.498127, -0.646696,
		28.982964, 32.598671, 40.458862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062780, 32.669502, 41.218342>,  <28.578625, 32.249985, 40.911549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062780, 32.669502, 41.218342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986296, 32.833530, 40.861629>,  <28.940405, 32.931946, 40.647602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986296, 32.833530, 40.861629>,  <29.062780, 32.669502, 41.218342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986296, 32.833530, 40.861629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464421, 0.762617, 0.450253,
		0.864726, 0.500258, 0.044623,
		-0.191212, 0.410070, -0.891785,
		28.928932, 32.956551, 40.594093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236187, 33.408207, 41.252750>,  <29.062780, 32.669502, 41.218342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236187, 33.408207, 41.252750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964815, 33.335960, 40.967903>,  <28.801992, 33.292610, 40.796997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964815, 33.335960, 40.967903>,  <29.236187, 33.408207, 41.252750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964815, 33.335960, 40.967903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619618, 0.661467, 0.422534,
		0.394724, 0.727899, -0.560674,
		-0.678430, -0.180620, -0.712116,
		28.761286, 33.281773, 40.754269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442039, 33.114033, 40.586540>,  <29.236187, 33.408207, 41.252750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442039, 33.114033, 40.586540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790678, 33.258747, 40.454216>,  <29.999861, 33.345573, 40.374821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790678, 33.258747, 40.454216>,  <29.442039, 33.114033, 40.586540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790678, 33.258747, 40.454216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065623, 0.754839, 0.652619,
		0.485812, -0.547112, 0.681656,
		0.871596, 0.361782, -0.330807,
		30.052156, 33.367283, 40.354973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961519, 33.099545, 41.053001>,  <29.442039, 33.114033, 40.586540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961519, 33.099545, 41.053001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006962, 33.410507, 40.805538>,  <30.034227, 33.597084, 40.657063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006962, 33.410507, 40.805538>,  <29.961519, 33.099545, 41.053001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006962, 33.410507, 40.805538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047333, 0.626214, 0.778214,
		0.992398, -0.059126, 0.107938,
		0.113605, 0.777406, -0.618654,
		30.041044, 33.643730, 40.619942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548477, 33.591427, 41.166821>,  <29.961519, 33.099545, 41.053001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548477, 33.591427, 41.166821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245886, 33.786816, 40.992863>,  <30.064331, 33.904049, 40.888489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245886, 33.786816, 40.992863>,  <30.548477, 33.591427, 41.166821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245886, 33.786816, 40.992863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007301, 0.671231, 0.741212,
		0.653977, 0.557537, -0.511339,
		-0.756479, 0.488469, -0.434899,
		30.018942, 33.933357, 40.862392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717545, 34.136677, 41.659447>,  <30.548477, 33.591427, 41.166821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717545, 34.136677, 41.659447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117510, 34.131695, 41.657822>,  <31.357489, 34.128704, 41.656845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117510, 34.131695, 41.657822>,  <30.717545, 34.136677, 41.659447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117510, 34.131695, 41.657822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012995, -0.903804, -0.427749,
		0.001655, 0.427765, -0.903889,
		0.999914, -0.012454, -0.004063,
		31.417484, 34.127960, 41.656601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690931, 34.844643, 42.027386>,  <30.717545, 34.136677, 41.659447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690931, 34.844643, 42.027386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836044, 34.872646, 42.399082>,  <30.923113, 34.889446, 42.622101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836044, 34.872646, 42.399082>,  <30.690931, 34.844643, 42.027386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836044, 34.872646, 42.399082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919277, -0.190285, -0.344559,
		0.152699, 0.979230, -0.133388,
		0.362784, 0.070006, 0.929240,
		30.944880, 34.893650, 42.677853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267874, 35.426975, 42.169838>,  <30.690931, 34.844643, 42.027386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267874, 35.426975, 42.169838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292253, 35.114223, 42.418015>,  <31.306881, 34.926571, 42.566921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292253, 35.114223, 42.418015>,  <31.267874, 35.426975, 42.169838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292253, 35.114223, 42.418015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955364, -0.134325, -0.263128,
		0.289076, 0.608783, 0.738795,
		0.060949, -0.781882, 0.620439,
		31.310537, 34.879658, 42.604145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844809, 35.528942, 42.663139>,  <31.267874, 35.426975, 42.169838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844809, 35.528942, 42.663139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742765, 35.151615, 42.578224>,  <31.681540, 34.925217, 42.527275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742765, 35.151615, 42.578224>,  <31.844809, 35.528942, 42.663139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742765, 35.151615, 42.578224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944506, -0.196122, -0.263524,
		0.206953, -0.267735, 0.941004,
		-0.255106, -0.943321, -0.212289,
		31.666233, 34.868618, 42.514538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347839, 35.020687, 42.956619>,  <31.844809, 35.528942, 42.663139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347839, 35.020687, 42.956619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166656, 34.827278, 42.657009>,  <32.057945, 34.711231, 42.477245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166656, 34.827278, 42.657009>,  <32.347839, 35.020687, 42.956619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166656, 34.827278, 42.657009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891096, -0.271760, -0.363449,
		-0.027818, -0.832078, 0.553960,
		-0.452962, -0.483521, -0.749021,
		32.030769, 34.682220, 42.432304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716137, 34.442776, 42.982998>,  <32.347839, 35.020687, 42.956619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716137, 34.442776, 42.982998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616699, 34.470039, 42.596516>,  <32.557037, 34.486397, 42.364628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616699, 34.470039, 42.596516>,  <32.716137, 34.442776, 42.982998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616699, 34.470039, 42.596516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963082, -0.089002, -0.254072,
		-0.103313, -0.993696, -0.043522,
		-0.248597, 0.068164, -0.966206,
		32.542122, 34.490490, 42.306652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860283, 33.904564, 42.714039>,  <32.716137, 34.442776, 42.982998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860283, 33.904564, 42.714039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913445, 34.199394, 42.448994>,  <32.945343, 34.376293, 42.289967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913445, 34.199394, 42.448994>,  <32.860283, 33.904564, 42.714039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913445, 34.199394, 42.448994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982048, -0.188223, -0.012401,
		-0.133859, -0.649067, -0.748861,
		0.132903, 0.737078, -0.662610,
		32.953316, 34.420517, 42.250210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273468, 33.522484, 42.280354>,  <32.860283, 33.904564, 42.714039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273468, 33.522484, 42.280354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295944, 33.921436, 42.262112>,  <33.309429, 34.160809, 42.251167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295944, 33.921436, 42.262112>,  <33.273468, 33.522484, 42.280354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295944, 33.921436, 42.262112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995566, -0.052522, 0.078044,
		0.075444, -0.049790, -0.995906,
		0.056193, 0.997378, -0.045606,
		33.312801, 34.220650, 42.248428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817196, 33.726479, 41.809872>,  <33.273468, 33.522484, 42.280354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817196, 33.726479, 41.809872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752350, 33.994682, 42.099461>,  <33.713444, 34.155605, 42.273212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752350, 33.994682, 42.099461>,  <33.817196, 33.726479, 41.809872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752350, 33.994682, 42.099461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982854, 0.044405, 0.178956,
		0.087845, 0.740568, -0.666215,
		-0.162112, 0.670513, 0.723969,
		33.703716, 34.195835, 42.316650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479164, 34.001930, 41.731258>,  <33.817196, 33.726479, 41.809872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479164, 34.001930, 41.731258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326534, 34.120117, 42.081596>,  <34.234955, 34.191029, 42.291798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326534, 34.120117, 42.081596>,  <34.479164, 34.001930, 41.731258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326534, 34.120117, 42.081596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924234, 0.107865, 0.366274,
		0.013749, 0.949245, -0.314237,
		-0.381579, 0.295465, 0.875841,
		34.212059, 34.208755, 42.344349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481754, 34.689213, 42.040291>,  <34.479164, 34.001930, 41.731258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481754, 34.689213, 42.040291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473835, 34.407661, 42.324306>,  <34.469082, 34.238731, 42.494717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473835, 34.407661, 42.324306>,  <34.481754, 34.689213, 42.040291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473835, 34.407661, 42.324306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926141, 0.254634, 0.278251,
		-0.376657, 0.663109, 0.646852,
		-0.019801, -0.703881, 0.710042,
		34.467896, 34.196499, 42.537319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640968, 34.949799, 42.652126>,  <34.481754, 34.689213, 42.040291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640968, 34.949799, 42.652126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760059, 34.569153, 42.621704>,  <34.831516, 34.340767, 42.603451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760059, 34.569153, 42.621704>,  <34.640968, 34.949799, 42.652126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760059, 34.569153, 42.621704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944669, 0.282192, 0.167239,
		-0.137686, -0.121636, 0.982979,
		0.297731, -0.951616, -0.076051,
		34.849380, 34.283669, 42.598888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875954, 34.660622, 43.260387>,  <34.640968, 34.949799, 42.652126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875954, 34.660622, 43.260387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081059, 34.503204, 42.955181>,  <35.204121, 34.408752, 42.772057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081059, 34.503204, 42.955181>,  <34.875954, 34.660622, 43.260387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081059, 34.503204, 42.955181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858305, 0.214623, 0.466101,
		-0.019670, -0.893902, 0.447832,
		0.512763, -0.393545, -0.763018,
		35.234886, 34.385139, 42.726276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354965, 34.235695, 43.603050>,  <34.875954, 34.660622, 43.260387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354965, 34.235695, 43.603050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466049, 34.349716, 43.236092>,  <35.532700, 34.418129, 43.015915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466049, 34.349716, 43.236092>,  <35.354965, 34.235695, 43.603050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466049, 34.349716, 43.236092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713272, 0.578520, 0.395674,
		0.643523, -0.764237, -0.042663,
		0.277707, 0.285056, -0.917400,
		35.549362, 34.435234, 42.960873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034149, 34.065601, 43.379894>,  <35.354965, 34.235695, 43.603050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034149, 34.065601, 43.379894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929512, 34.400570, 43.187935>,  <35.866730, 34.601551, 43.072762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929512, 34.400570, 43.187935>,  <36.034149, 34.065601, 43.379894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929512, 34.400570, 43.187935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703021, 0.505992, 0.499734,
		0.661309, -0.206650, -0.721086,
		-0.261594, 0.837417, -0.479896,
		35.851032, 34.651794, 43.043964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608078, 34.429031, 42.976887>,  <36.034149, 34.065601, 43.379894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608078, 34.429031, 42.976887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355507, 34.703590, 43.121193>,  <36.203964, 34.868328, 43.207779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355507, 34.703590, 43.121193>,  <36.608078, 34.429031, 42.976887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355507, 34.703590, 43.121193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662844, 0.236331, 0.710483,
		0.402414, 0.687752, -0.604202,
		-0.631427, 0.686400, 0.360769,
		36.166080, 34.909512, 43.229424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849686, 34.574642, 42.330242>,  <36.608078, 34.429031, 42.976887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849686, 34.574642, 42.330242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948612, 34.885365, 42.561897>,  <37.007969, 35.071796, 42.700890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948612, 34.885365, 42.561897>,  <36.849686, 34.574642, 42.330242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948612, 34.885365, 42.561897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908283, -0.394017, 0.140617,
		0.337424, 0.491247, -0.803008,
		0.247321, 0.776806, 0.579142,
		37.022808, 35.118404, 42.735641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464920, 34.952324, 42.095650>,  <36.849686, 34.574642, 42.330242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464920, 34.952324, 42.095650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461163, 35.006939, 42.491886>,  <37.458908, 35.039707, 42.729630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461163, 35.006939, 42.491886>,  <37.464920, 34.952324, 42.095650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461163, 35.006939, 42.491886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962638, -0.266869, 0.045916,
		0.270627, 0.954012, -0.128925,
		-0.009398, 0.136534, 0.990591,
		37.458344, 35.047901, 42.789062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048084, 35.295506, 42.173805>,  <37.464920, 34.952324, 42.095650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048084, 35.295506, 42.173805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961269, 35.147980, 42.535328>,  <37.909180, 35.059464, 42.752243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961269, 35.147980, 42.535328>,  <38.048084, 35.295506, 42.173805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961269, 35.147980, 42.535328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952033, -0.284570, 0.112490,
		0.215709, 0.884871, 0.412884,
		-0.217034, -0.368814, 0.903810,
		37.896160, 35.037334, 42.806473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504555, 35.569157, 42.656734>,  <38.048084, 35.295506, 42.173805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504555, 35.569157, 42.656734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374920, 35.209309, 42.773804>,  <38.297138, 34.993401, 42.844044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374920, 35.209309, 42.773804>,  <38.504555, 35.569157, 42.656734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374920, 35.209309, 42.773804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945682, -0.316433, 0.074541,
		0.025554, 0.300935, 0.953302,
		-0.324089, -0.899616, 0.292675,
		38.277695, 34.939423, 42.861607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893135, 35.312641, 43.316334>,  <38.504555, 35.569157, 42.656734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893135, 35.312641, 43.316334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760868, 35.040909, 43.054291>,  <38.681507, 34.877869, 42.897064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760868, 35.040909, 43.054291>,  <38.893135, 35.312641, 43.316334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760868, 35.040909, 43.054291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941236, -0.287996, -0.176442,
		-0.068804, -0.674953, 0.734646,
		-0.330665, -0.679335, -0.655106,
		38.661667, 34.837109, 42.857758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018024, 34.613708, 43.476288>,  <38.893135, 35.312641, 43.316334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018024, 34.613708, 43.476288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029171, 34.711815, 43.088665>,  <39.035858, 34.770679, 42.856091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029171, 34.711815, 43.088665>,  <39.018024, 34.613708, 43.476288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029171, 34.711815, 43.088665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934446, -0.350687, -0.061882,
		-0.355012, -0.903806, -0.238958,
		0.027870, 0.245262, -0.969056,
		39.037533, 34.785393, 42.797947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555405, 34.228539, 43.261745>,  <39.018024, 34.613708, 43.476288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555405, 34.228539, 43.261745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511967, 34.529068, 43.001369>,  <39.485905, 34.709385, 42.845146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511967, 34.529068, 43.001369>,  <39.555405, 34.228539, 43.261745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511967, 34.529068, 43.001369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992873, 0.114315, -0.033700,
		0.049092, -0.649957, -0.758384,
		-0.108598, 0.751324, -0.650936,
		39.479385, 34.754467, 42.806087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858753, 34.063354, 42.708397>,  <39.555405, 34.228539, 43.261745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858753, 34.063354, 42.708397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861691, 34.460468, 42.756271>,  <39.863453, 34.698738, 42.784996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861691, 34.460468, 42.756271>,  <39.858753, 34.063354, 42.708397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861691, 34.460468, 42.756271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988056, -0.025628, 0.151951,
		0.153922, 0.117141, -0.981115,
		0.007344, 0.992785, 0.119687,
		39.863895, 34.758305, 42.792179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370487, 34.319740, 42.303490>,  <39.858753, 34.063354, 42.708397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370487, 34.319740, 42.303490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303017, 34.574898, 42.604061>,  <40.262535, 34.727993, 42.784405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303017, 34.574898, 42.604061>,  <40.370487, 34.319740, 42.303490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303017, 34.574898, 42.604061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969405, -0.030567, 0.243556,
		0.178332, 0.769517, -0.613222,
		-0.168677, 0.637894, 0.751425,
		40.252415, 34.766266, 42.829487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629734, 35.073986, 42.224907>,  <40.370487, 34.319740, 42.303490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629734, 35.073986, 42.224907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626293, 34.845165, 42.552979>,  <40.624229, 34.707874, 42.749821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626293, 34.845165, 42.552979>,  <40.629734, 35.073986, 42.224907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626293, 34.845165, 42.552979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980632, -0.165319, -0.105023,
		0.195669, 0.803387, 0.562390,
		-0.008599, -0.572048, 0.820175,
		40.623714, 34.673550, 42.799030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008881, 35.291054, 41.742119>,  <40.629734, 35.073986, 42.224907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008881, 35.291054, 41.742119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954952, 35.312706, 41.346363>,  <39.922596, 35.325699, 41.108910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954952, 35.312706, 41.346363>,  <40.008881, 35.291054, 41.742119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954952, 35.312706, 41.346363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793314, -0.592376, -0.140513,
		-0.593697, -0.803841, 0.036929,
		-0.134826, 0.054126, -0.989390,
		39.914505, 35.328945, 41.049545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981472, 34.546753, 41.401283>,  <40.008881, 35.291054, 41.742119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981472, 34.546753, 41.401283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094391, 34.815247, 41.127129>,  <40.162144, 34.976341, 40.962635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094391, 34.815247, 41.127129>,  <39.981472, 34.546753, 41.401283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094391, 34.815247, 41.127129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763847, -0.589508, -0.262715,
		-0.580383, -0.449367, -0.679135,
		0.282300, 0.671230, -0.685388,
		40.179081, 35.016617, 40.921513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253197, 34.135250, 40.848507>,  <39.981472, 34.546753, 41.401283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253197, 34.135250, 40.848507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383190, 34.507114, 40.779087>,  <40.461185, 34.730232, 40.737434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383190, 34.507114, 40.779087>,  <40.253197, 34.135250, 40.848507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383190, 34.507114, 40.779087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867026, -0.366166, -0.337918,
		-0.377697, -0.040653, -0.925036,
		0.324979, 0.929661, -0.173547,
		40.480682, 34.786015, 40.727024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344898, 34.205952, 40.205357>,  <40.253197, 34.135250, 40.848507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344898, 34.205952, 40.205357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604473, 34.448208, 40.389561>,  <40.760220, 34.593563, 40.500084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604473, 34.448208, 40.389561>,  <40.344898, 34.205952, 40.205357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604473, 34.448208, 40.389561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739905, -0.361351, -0.567420,
		-0.177248, 0.708957, -0.682615,
		0.648940, 0.605645, 0.460512,
		40.799156, 34.629902, 40.527714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689148, 34.780422, 39.867935>,  <40.344898, 34.205952, 40.205357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689148, 34.780422, 39.867935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931213, 34.605236, 40.133858>,  <41.076454, 34.500122, 40.293411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931213, 34.605236, 40.133858>,  <40.689148, 34.780422, 39.867935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931213, 34.605236, 40.133858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705690, -0.091404, -0.702600,
		0.368483, 0.894331, 0.253756,
		0.605163, -0.437969, 0.664802,
		41.112762, 34.473846, 40.333298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555439, 35.318630, 40.404789>,  <40.689148, 34.780422, 39.867935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555439, 35.318630, 40.404789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929058, 35.208927, 40.496304>,  <41.153229, 35.143105, 40.551212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929058, 35.208927, 40.496304>,  <40.555439, 35.318630, 40.404789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929058, 35.208927, 40.496304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355408, 0.650480, -0.671239,
		0.035268, 0.708281, 0.705049,
		0.934046, -0.274253, 0.228788,
		41.209270, 35.126652, 40.564941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980717, 35.924454, 40.617741>,  <40.555439, 35.318630, 40.404789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980717, 35.924454, 40.617741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199917, 35.651459, 40.424286>,  <41.331436, 35.487659, 40.308212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199917, 35.651459, 40.424286>,  <40.980717, 35.924454, 40.617741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199917, 35.651459, 40.424286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230785, 0.679100, -0.696822,
		0.804014, 0.270239, 0.529654,
		0.547997, -0.682491, -0.483639,
		41.364315, 35.446712, 40.279194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472103, 36.384853, 40.339504>,  <40.980717, 35.924454, 40.617741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472103, 36.384853, 40.339504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489742, 36.082558, 40.078148>,  <41.500324, 35.901180, 39.921333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489742, 36.082558, 40.078148>,  <41.472103, 36.384853, 40.339504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489742, 36.082558, 40.078148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034772, 0.654787, -0.755013,
		0.998422, 0.010576, 0.055154,
		0.044099, -0.755739, -0.653387,
		41.502972, 35.855835, 39.882133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077118, 36.449661, 39.955612>,  <41.472103, 36.384853, 40.339504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077118, 36.449661, 39.955612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820847, 36.227695, 39.743347>,  <41.667084, 36.094517, 39.615990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820847, 36.227695, 39.743347>,  <42.077118, 36.449661, 39.955612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820847, 36.227695, 39.743347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221723, 0.527982, -0.819802,
		0.735099, -0.642888, -0.215229,
		-0.640678, -0.554914, -0.530662,
		41.628643, 36.061222, 39.584148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441437, 36.407261, 39.353706>,  <42.077118, 36.449661, 39.955612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441437, 36.407261, 39.353706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060696, 36.333290, 39.255901>,  <41.832253, 36.288906, 39.197220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060696, 36.333290, 39.255901>,  <42.441437, 36.407261, 39.353706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060696, 36.333290, 39.255901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089073, 0.596337, -0.797777,
		0.293345, -0.781142, -0.551150,
		-0.951848, -0.184931, -0.244511,
		41.775143, 36.277809, 39.182549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323784, 36.251148, 38.582432>,  <42.441437, 36.407261, 39.353706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323784, 36.251148, 38.582432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989971, 36.399612, 38.745304>,  <41.789684, 36.488693, 38.843025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989971, 36.399612, 38.745304>,  <42.323784, 36.251148, 38.582432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989971, 36.399612, 38.745304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039320, 0.697027, -0.715966,
		-0.549553, -0.613507, -0.567097,
		-0.834532, 0.371163, 0.407177,
		41.739613, 36.510960, 38.867458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785236, 36.245564, 37.957264>,  <42.323784, 36.251148, 38.582432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785236, 36.245564, 37.957264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721497, 36.517605, 38.243500>,  <41.683254, 36.680832, 38.415241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721497, 36.517605, 38.243500>,  <41.785236, 36.245564, 37.957264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721497, 36.517605, 38.243500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071757, 0.714952, -0.695481,
		-0.984611, -0.162172, -0.065124,
		-0.159348, 0.680105, 0.715587,
		41.673691, 36.721638, 38.458176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461372, 35.745960, 38.250717>,  <41.785236, 36.245564, 37.957264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461372, 35.745960, 38.250717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448273, 35.663666, 38.641941>,  <41.440414, 35.614288, 38.876675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448273, 35.663666, 38.641941>,  <41.461372, 35.745960, 38.250717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448273, 35.663666, 38.641941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316537, 0.930344, 0.185105,
		-0.948015, -0.303530, -0.095592,
		-0.032749, -0.205741, 0.978058,
		41.438450, 35.601944, 38.935360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842274, 35.834904, 37.917522>,  <41.461372, 35.745960, 38.250717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842274, 35.834904, 37.917522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641727, 36.154152, 38.051170>,  <40.521400, 36.345699, 38.131359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641727, 36.154152, 38.051170>,  <40.842274, 35.834904, 37.917522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641727, 36.154152, 38.051170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276108, -0.218389, 0.935986,
		0.819996, 0.561528, -0.110874,
		-0.501369, 0.798118, 0.334120,
		40.491318, 36.393589, 38.151405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467106, 35.190128, 38.150105>,  <40.842274, 35.834904, 37.917522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467106, 35.190128, 38.150105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258430, 35.012714, 38.441616>,  <40.133224, 34.906265, 38.616524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258430, 35.012714, 38.441616>,  <40.467106, 35.190128, 38.150105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258430, 35.012714, 38.441616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292547, -0.709438, -0.641181,
		0.801413, -0.547696, 0.240347,
		-0.521684, -0.443538, 0.728780,
		40.101925, 34.879654, 38.660252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505138, 34.404388, 38.297390>,  <40.467106, 35.190128, 38.150105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505138, 34.404388, 38.297390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140388, 34.542282, 38.386505>,  <39.921539, 34.625019, 38.439972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140388, 34.542282, 38.386505>,  <40.505138, 34.404388, 38.297390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140388, 34.542282, 38.386505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394655, -0.587210, -0.706705,
		-0.112807, -0.732352, 0.671517,
		-0.911879, 0.344739, 0.222785,
		39.866825, 34.645702, 38.453342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074783, 33.854179, 38.224712>,  <40.505138, 34.404388, 38.297390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074783, 33.854179, 38.224712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832653, 34.172382, 38.213749>,  <39.687374, 34.363304, 38.207172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832653, 34.172382, 38.213749>,  <40.074783, 33.854179, 38.224712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832653, 34.172382, 38.213749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617743, -0.491216, -0.614085,
		-0.501970, -0.354792, 0.788764,
		-0.605326, 0.795506, -0.027405,
		39.651054, 34.411034, 38.205528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403828, 33.672611, 38.469650>,  <40.074783, 33.854179, 38.224712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403828, 33.672611, 38.469650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334801, 34.002895, 38.254833>,  <39.293385, 34.201065, 38.125942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334801, 34.002895, 38.254833>,  <39.403828, 33.672611, 38.469650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334801, 34.002895, 38.254833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764513, -0.456065, -0.455548,
		-0.621081, 0.331967, 0.709970,
		-0.172566, 0.825714, -0.537046,
		39.283031, 34.250610, 38.093719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697121, 33.587837, 38.296909>,  <39.403828, 33.672611, 38.469650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697121, 33.587837, 38.296909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839527, 33.842705, 38.023479>,  <38.924973, 33.995625, 37.859421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839527, 33.842705, 38.023479>,  <38.697121, 33.587837, 38.296909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839527, 33.842705, 38.023479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502868, -0.485925, -0.714843,
		-0.787639, 0.598242, 0.147415,
		0.356017, 0.637168, -0.683570,
		38.946331, 34.033855, 37.818409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169003, 33.795116, 37.911522>,  <38.697121, 33.587837, 38.296909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169003, 33.795116, 37.911522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473167, 33.886375, 37.668301>,  <38.655666, 33.941132, 37.522369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473167, 33.886375, 37.668301>,  <38.169003, 33.795116, 37.911522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473167, 33.886375, 37.668301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531440, -0.319562, -0.784507,
		-0.373292, 0.919690, -0.121753,
		0.760411, 0.228145, -0.608050,
		38.701290, 33.954819, 37.485886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908581, 34.227169, 37.397232>,  <38.169003, 33.795116, 37.911522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908581, 34.227169, 37.397232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245876, 34.050571, 37.274567>,  <38.448254, 33.944614, 37.200970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245876, 34.050571, 37.274567>,  <37.908581, 34.227169, 37.397232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245876, 34.050571, 37.274567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462407, -0.304850, -0.832614,
		0.274105, 0.843892, -0.461209,
		0.843235, -0.441490, -0.306661,
		38.498848, 33.918125, 37.182568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830704, 34.190952, 36.739563>,  <37.908581, 34.227169, 37.397232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830704, 34.190952, 36.739563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141960, 33.941353, 36.768211>,  <38.328712, 33.791595, 36.785400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141960, 33.941353, 36.768211>,  <37.830704, 34.190952, 36.739563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141960, 33.941353, 36.768211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270965, -0.436383, -0.857990,
		0.566636, 0.648229, -0.508648,
		0.778139, -0.623994, 0.071623,
		38.375401, 33.754154, 36.789700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300728, 34.224827, 36.148365>,  <37.830704, 34.190952, 36.739563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300728, 34.224827, 36.148365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348560, 33.853127, 36.288185>,  <38.377258, 33.630104, 36.372078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348560, 33.853127, 36.288185>,  <38.300728, 34.224827, 36.148365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348560, 33.853127, 36.288185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187857, -0.366895, -0.911097,
		0.974890, 0.043280, -0.218440,
		0.119577, -0.929255, 0.349552,
		38.384434, 33.574348, 36.393051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371326, 33.892078, 35.487034>,  <38.300728, 34.224827, 36.148365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371326, 33.892078, 35.487034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320042, 33.590683, 35.744968>,  <38.289272, 33.409843, 35.899731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320042, 33.590683, 35.744968>,  <38.371326, 33.892078, 35.487034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320042, 33.590683, 35.744968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353863, -0.572649, -0.739496,
		0.926469, -0.322993, -0.193214,
		-0.128208, -0.753491, 0.644836,
		38.281578, 33.364635, 35.938419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669407, 33.303848, 35.173779>,  <38.371326, 33.892078, 35.487034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669407, 33.303848, 35.173779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423191, 33.169022, 35.458736>,  <38.275463, 33.088127, 35.629711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423191, 33.169022, 35.458736>,  <38.669407, 33.303848, 35.173779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423191, 33.169022, 35.458736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422117, -0.622333, -0.659181,
		0.665532, -0.706462, 0.240788,
		-0.615536, -0.337065, 0.712392,
		38.238529, 33.067902, 35.672455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813728, 32.593620, 35.236397>,  <38.669407, 33.303848, 35.173779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813728, 32.593620, 35.236397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460487, 32.646301, 35.416523>,  <38.248543, 32.677910, 35.524597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460487, 32.646301, 35.416523>,  <38.813728, 32.593620, 35.236397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460487, 32.646301, 35.416523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337147, -0.845608, -0.413860,
		0.326280, -0.517303, 0.791163,
		-0.883104, 0.131704, 0.450312,
		38.195557, 32.685814, 35.551617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549519, 31.902847, 35.390079>,  <38.813728, 32.593620, 35.236397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549519, 31.902847, 35.390079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228867, 32.141972, 35.389477>,  <38.036476, 32.285446, 35.389114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228867, 32.141972, 35.389477>,  <38.549519, 31.902847, 35.390079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228867, 32.141972, 35.389477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530353, -0.712334, -0.459680,
		-0.275877, -0.367696, 0.888083,
		-0.801634, 0.597813, -0.001508,
		37.988377, 32.321316, 35.389023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989323, 31.453321, 35.368942>,  <38.549519, 31.902847, 35.390079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989323, 31.453321, 35.368942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804008, 31.793711, 35.269978>,  <37.692822, 31.997944, 35.210598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804008, 31.793711, 35.269978>,  <37.989323, 31.453321, 35.368942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804008, 31.793711, 35.269978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693633, -0.521960, -0.496418,
		-0.551578, -0.058370, 0.832079,
		-0.463287, 0.850971, -0.247414,
		37.665024, 32.049004, 35.195751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352520, 31.346476, 35.547874>,  <37.989323, 31.453321, 35.368942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352520, 31.346476, 35.547874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387257, 31.620605, 35.258656>,  <37.408096, 31.785084, 35.085125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387257, 31.620605, 35.258656>,  <37.352520, 31.346476, 35.547874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387257, 31.620605, 35.258656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752401, -0.430586, -0.498486,
		-0.652957, 0.587306, 0.478247,
		0.086837, 0.685323, -0.723044,
		37.413307, 31.826202, 35.041744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730385, 31.706528, 35.453300>,  <37.352520, 31.346476, 35.547874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730385, 31.706528, 35.453300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917458, 31.773211, 35.106087>,  <37.029701, 31.813221, 34.897758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917458, 31.773211, 35.106087>,  <36.730385, 31.706528, 35.453300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917458, 31.773211, 35.106087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848237, -0.191482, -0.493791,
		-0.248532, 0.967235, 0.051856,
		0.467682, 0.166709, -0.868033,
		37.057762, 31.823223, 34.845676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339901, 32.247280, 35.042534>,  <36.730385, 31.706528, 35.453300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339901, 32.247280, 35.042534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541939, 32.011093, 34.790745>,  <36.663162, 31.869381, 34.639671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541939, 32.011093, 34.790745>,  <36.339901, 32.247280, 35.042534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541939, 32.011093, 34.790745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766609, 0.028103, -0.641499,
		0.396473, 0.806574, -0.438461,
		0.505094, -0.590465, -0.629469,
		36.693466, 31.833954, 34.601906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058426, 32.399441, 34.355343>,  <36.339901, 32.247280, 35.042534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058426, 32.399441, 34.355343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250011, 32.057396, 34.275970>,  <36.364964, 31.852169, 34.228348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250011, 32.057396, 34.275970>,  <36.058426, 32.399441, 34.355343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250011, 32.057396, 34.275970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662553, -0.203863, -0.720738,
		0.575861, 0.476678, -0.664201,
		0.478966, -0.855113, -0.198428,
		36.393700, 31.800861, 34.216442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927094, 32.347485, 33.672901>,  <36.058426, 32.399441, 34.355343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927094, 32.347485, 33.672901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037495, 31.982979, 33.795158>,  <36.103737, 31.764275, 33.868515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037495, 31.982979, 33.795158>,  <35.927094, 32.347485, 33.672901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037495, 31.982979, 33.795158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553530, -0.410670, -0.724537,
		0.785764, 0.030793, -0.617760,
		0.276006, -0.911264, 0.305645,
		36.120296, 31.709600, 33.886852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805645, 32.081394, 33.090569>,  <35.927094, 32.347485, 33.672901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805645, 32.081394, 33.090569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865547, 31.758432, 33.318840>,  <35.901489, 31.564657, 33.455803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865547, 31.758432, 33.318840>,  <35.805645, 32.081394, 33.090569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865547, 31.758432, 33.318840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561344, -0.544575, -0.623161,
		0.813920, -0.227029, -0.534781,
		0.149753, -0.807400, 0.570682,
		35.910473, 31.516212, 33.490044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013588, 31.465363, 32.636608>,  <35.805645, 32.081394, 33.090569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013588, 31.465363, 32.636608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883968, 31.289408, 32.971630>,  <35.806198, 31.183836, 33.172642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883968, 31.289408, 32.971630>,  <36.013588, 31.465363, 32.636608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883968, 31.289408, 32.971630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287308, -0.797751, -0.530139,
		0.901359, -0.412426, 0.132126,
		-0.324047, -0.439885, 0.837553,
		35.786755, 31.157442, 33.222897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347092, 30.799961, 32.642132>,  <36.013588, 31.465363, 32.636608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347092, 30.799961, 32.642132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036839, 30.745031, 32.888557>,  <35.850685, 30.712074, 33.036411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036839, 30.745031, 32.888557>,  <36.347092, 30.799961, 32.642132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036839, 30.745031, 32.888557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361862, -0.702968, -0.612284,
		0.517154, -0.697838, 0.495554,
		-0.775634, -0.137323, 0.616064,
		35.804150, 30.703835, 33.073376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263317, 30.079205, 32.835251>,  <36.347092, 30.799961, 32.642132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263317, 30.079205, 32.835251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900574, 30.232737, 32.904850>,  <35.682926, 30.324856, 32.946609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900574, 30.232737, 32.904850>,  <36.263317, 30.079205, 32.835251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900574, 30.232737, 32.904850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408384, -0.698452, -0.587696,
		-0.104045, -0.604018, 0.790150,
		-0.906861, 0.383832, 0.174001,
		35.628517, 30.347887, 32.957050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803680, 29.535496, 32.843414>,  <36.263317, 30.079205, 32.835251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803680, 29.535496, 32.843414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550896, 29.843180, 32.805607>,  <35.399223, 30.027790, 32.782921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550896, 29.843180, 32.805607>,  <35.803680, 29.535496, 32.843414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550896, 29.843180, 32.805607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504224, -0.500715, -0.703593,
		-0.588541, -0.396984, 0.704289,
		-0.631963, 0.769213, -0.094522,
		35.361305, 30.073944, 32.777252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172066, 29.247290, 32.897526>,  <35.803680, 29.535496, 32.843414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172066, 29.247290, 32.897526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091995, 29.597080, 32.720791>,  <35.043953, 29.806955, 32.614750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091995, 29.597080, 32.720791>,  <35.172066, 29.247290, 32.897526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091995, 29.597080, 32.720791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496362, -0.479323, -0.723792,
		-0.844723, 0.074427, 0.530004,
		-0.200173, 0.874477, -0.441838,
		35.031944, 29.859423, 32.588238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438789, 29.212212, 32.883980>,  <35.172066, 29.247290, 32.897526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438789, 29.212212, 32.883980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559101, 29.485437, 32.617760>,  <34.631287, 29.649372, 32.458027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559101, 29.485437, 32.617760>,  <34.438789, 29.212212, 32.883980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559101, 29.485437, 32.617760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585347, -0.418736, -0.694284,
		-0.752929, 0.598403, 0.273882,
		0.300777, 0.683062, -0.665552,
		34.649334, 29.690355, 32.418095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875584, 29.466742, 32.664803>,  <34.438789, 29.212212, 32.883980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875584, 29.466742, 32.664803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115974, 29.533030, 32.352043>,  <34.260208, 29.572802, 32.164387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115974, 29.533030, 32.352043>,  <33.875584, 29.466742, 32.664803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115974, 29.533030, 32.352043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731860, -0.279108, -0.621674,
		-0.321258, 0.945852, -0.046454,
		0.600977, 0.165720, -0.781897,
		34.296268, 29.582747, 32.117474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464897, 29.922594, 32.243408>,  <33.875584, 29.466742, 32.664803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464897, 29.922594, 32.243408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732918, 29.736099, 32.012356>,  <33.893730, 29.624203, 31.873724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732918, 29.736099, 32.012356>,  <33.464897, 29.922594, 32.243408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732918, 29.736099, 32.012356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738420, -0.338996, -0.582939,
		0.075975, 0.817131, -0.571424,
		0.670047, -0.466239, -0.577631,
		33.933933, 29.596228, 31.839067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242920, 30.063280, 31.578447>,  <33.464897, 29.922594, 32.243408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242920, 30.063280, 31.578447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481884, 29.747969, 31.519499>,  <33.625263, 29.558783, 31.484129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481884, 29.747969, 31.519499>,  <33.242920, 30.063280, 31.578447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481884, 29.747969, 31.519499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619057, -0.336499, -0.709604,
		0.509774, 0.515157, -0.689017,
		0.597411, -0.788277, -0.147373,
		33.661106, 29.511486, 31.475286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073418, 29.950653, 30.867132>,  <33.242920, 30.063280, 31.578447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073418, 29.950653, 30.867132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261486, 29.618752, 30.987432>,  <33.374325, 29.419611, 31.059612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261486, 29.618752, 30.987432>,  <33.073418, 29.950653, 30.867132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261486, 29.618752, 30.987432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573888, -0.546313, -0.610078,
		0.670518, 0.114242, -0.733045,
		0.470168, -0.829754, 0.300750,
		33.402538, 29.369825, 31.077658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230965, 29.654158, 30.265593>,  <33.073418, 29.950653, 30.867132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230965, 29.654158, 30.265593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237846, 29.361139, 30.537792>,  <33.241978, 29.185328, 30.701113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237846, 29.361139, 30.537792>,  <33.230965, 29.654158, 30.265593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237846, 29.361139, 30.537792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587730, -0.558013, -0.585829,
		0.808874, -0.389871, -0.440140,
		0.017206, -0.732545, 0.680501,
		33.243008, 29.141376, 30.741943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465675, 29.170649, 29.814819>,  <33.230965, 29.654158, 30.265593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465675, 29.170649, 29.814819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315147, 28.985704, 30.135969>,  <33.224831, 28.874739, 30.328659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315147, 28.985704, 30.135969>,  <33.465675, 29.170649, 29.814819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315147, 28.985704, 30.135969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468686, -0.652512, -0.595451,
		0.799196, -0.600378, 0.028855,
		-0.376323, -0.462358, 0.802873,
		33.202251, 28.846996, 30.376831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717079, 28.458645, 29.852015>,  <33.465675, 29.170649, 29.814819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717079, 28.458645, 29.852015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381653, 28.452507, 30.069849>,  <33.180397, 28.448824, 30.200550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381653, 28.452507, 30.069849>,  <33.717079, 28.458645, 29.852015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381653, 28.452507, 30.069849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436342, -0.579623, -0.688217,
		0.326215, -0.814740, 0.479356,
		-0.838564, -0.015344, 0.544587,
		33.130085, 28.447905, 30.233225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584682, 27.854984, 30.014790>,  <33.717079, 28.458645, 29.852015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584682, 27.854984, 30.014790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222691, 28.024857, 30.024998>,  <33.005493, 28.126780, 30.031122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222691, 28.024857, 30.024998>,  <33.584682, 27.854984, 30.014790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222691, 28.024857, 30.024998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341920, -0.690303, -0.637630,
		-0.253173, -0.585770, 0.769920,
		-0.904983, 0.424682, 0.025520,
		32.951195, 28.152262, 30.032654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166428, 27.258627, 29.782335>,  <33.584682, 27.854984, 30.014790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166428, 27.258627, 29.782335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950474, 27.594355, 29.756844>,  <32.820900, 27.795792, 29.741549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950474, 27.594355, 29.756844>,  <33.166428, 27.258627, 29.782335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950474, 27.594355, 29.756844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582857, -0.427393, -0.691095,
		-0.607288, -0.335969, 0.719949,
		-0.539887, 0.839321, -0.063729,
		32.788506, 27.846151, 29.737724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474087, 26.998152, 29.885010>,  <33.166428, 27.258627, 29.782335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474087, 26.998152, 29.885010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458881, 27.355885, 29.706697>,  <32.449760, 27.570524, 29.599710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458881, 27.355885, 29.706697>,  <32.474087, 26.998152, 29.885010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458881, 27.355885, 29.706697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715250, -0.335882, -0.612863,
		-0.697835, 0.295552, 0.652439,
		-0.038010, 0.894334, -0.445783,
		32.447479, 27.624186, 29.572962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738386, 27.131521, 29.768456>,  <32.474087, 26.998152, 29.885010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738386, 27.131521, 29.768456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940678, 27.367775, 29.516935>,  <32.062054, 27.509527, 29.366024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940678, 27.367775, 29.516935>,  <31.738386, 27.131521, 29.768456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940678, 27.367775, 29.516935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732285, -0.091425, -0.674834,
		-0.456069, 0.801742, 0.386278,
		0.505727, 0.590636, -0.628800,
		32.092396, 27.544966, 29.328295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252661, 27.653498, 29.546429>,  <31.738386, 27.131521, 29.768456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252661, 27.653498, 29.546429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553236, 27.628099, 29.283731>,  <31.733582, 27.612862, 29.126114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553236, 27.628099, 29.283731>,  <31.252661, 27.653498, 29.546429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553236, 27.628099, 29.283731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658329, -0.005647, -0.752709,
		0.044084, 0.997966, -0.046044,
		0.751438, -0.063495, -0.656741,
		31.778667, 27.609051, 29.086710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175072, 28.258959, 29.147665>,  <31.252661, 27.653498, 29.546429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175072, 28.258959, 29.147665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362654, 27.982347, 28.927895>,  <31.475203, 27.816381, 28.796032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362654, 27.982347, 28.927895>,  <31.175072, 28.258959, 29.147665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362654, 27.982347, 28.927895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713670, 0.069799, -0.696996,
		0.520341, 0.718970, -0.460790,
		0.468956, -0.691528, -0.549426,
		31.503340, 27.774889, 28.763067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181847, 28.494410, 28.462839>,  <31.175072, 28.258959, 29.147665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181847, 28.494410, 28.462839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252773, 28.102905, 28.421684>,  <31.295330, 27.868002, 28.396992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252773, 28.102905, 28.421684>,  <31.181847, 28.494410, 28.462839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252773, 28.102905, 28.421684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568699, -0.016578, -0.822379,
		0.803206, 0.204334, -0.559560,
		0.177317, -0.978761, -0.102889,
		31.305967, 27.809277, 28.390818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194130, 28.431557, 27.773239>,  <31.181847, 28.494410, 28.462839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194130, 28.431557, 27.773239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149168, 28.050171, 27.885145>,  <31.122190, 27.821339, 27.952288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149168, 28.050171, 27.885145>,  <31.194130, 28.431557, 27.773239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149168, 28.050171, 27.885145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626811, -0.150428, -0.764512,
		0.771021, -0.261292, -0.580735,
		-0.112402, -0.953466, 0.279764,
		31.115448, 27.764132, 27.969074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973185, 28.132038, 27.097111>,  <31.194130, 28.431557, 27.773239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973185, 28.132038, 27.097111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887606, 27.852545, 27.370169>,  <30.836258, 27.684849, 27.534002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887606, 27.852545, 27.370169>,  <30.973185, 28.132038, 27.097111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887606, 27.852545, 27.370169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811781, -0.261536, -0.522121,
		0.543358, -0.665863, -0.511262,
		-0.213947, -0.698731, 0.682642,
		30.823421, 27.642925, 27.574961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824156, 27.503571, 26.755615>,  <30.973185, 28.132038, 27.097111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824156, 27.503571, 26.755615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647774, 27.483110, 27.114042>,  <30.541945, 27.470835, 27.329100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647774, 27.483110, 27.114042>,  <30.824156, 27.503571, 26.755615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647774, 27.483110, 27.114042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864873, -0.242637, -0.439456,
		0.239897, -0.968768, 0.062754,
		-0.440957, -0.051150, 0.896070,
		30.515486, 27.467766, 27.382864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601784, 26.795141, 26.831121>,  <30.824156, 27.503571, 26.755615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601784, 26.795141, 26.831121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393896, 27.002935, 27.102423>,  <30.269163, 27.127611, 27.265203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393896, 27.002935, 27.102423>,  <30.601784, 26.795141, 26.831121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393896, 27.002935, 27.102423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809684, -0.552804, -0.197027,
		0.272589, -0.651570, 0.707921,
		-0.519719, 0.519485, 0.678254,
		30.237980, 27.158781, 27.305899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305706, 26.344736, 27.324484>,  <30.601784, 26.795141, 26.831121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305706, 26.344736, 27.324484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079725, 26.670502, 27.271481>,  <29.944138, 26.865961, 27.239677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079725, 26.670502, 27.271481>,  <30.305706, 26.344736, 27.324484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079725, 26.670502, 27.271481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805940, -0.579081, -0.122986,
		-0.176896, 0.037314, 0.983522,
		-0.564950, 0.814415, -0.132510,
		29.910240, 26.914825, 27.231728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708323, 26.207220, 27.642160>,  <30.305706, 26.344736, 27.324484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708323, 26.207220, 27.642160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619495, 26.458031, 27.343491>,  <29.566198, 26.608517, 27.164289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619495, 26.458031, 27.343491>,  <29.708323, 26.207220, 27.642160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619495, 26.458031, 27.343491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770730, -0.581939, -0.259467,
		-0.597212, 0.517865, 0.612498,
		-0.222067, 0.627027, -0.746674,
		29.552876, 26.646139, 27.119488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034935, 26.190275, 27.620640>,  <29.708323, 26.207220, 27.642160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034935, 26.190275, 27.620640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128975, 26.328390, 27.257210>,  <29.185398, 26.411259, 27.039152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128975, 26.328390, 27.257210>,  <29.034935, 26.190275, 27.620640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128975, 26.328390, 27.257210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882690, -0.315503, -0.348304,
		-0.406923, 0.883875, 0.230606,
		0.235101, 0.345286, -0.908573,
		29.199505, 26.431976, 26.984638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070997, 26.513456, 28.344627>,  <29.034935, 26.190275, 27.620640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070997, 26.513456, 28.344627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760788, 26.686411, 28.528631>,  <28.574663, 26.790184, 28.639034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760788, 26.686411, 28.528631>,  <29.070997, 26.513456, 28.344627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760788, 26.686411, 28.528631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591725, -0.751821, -0.290907,
		0.220062, -0.497804, 0.838906,
		-0.775522, 0.432384, 0.460010,
		28.528131, 26.816126, 28.666634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663918, 25.972050, 28.758848>,  <29.070997, 26.513456, 28.344627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663918, 25.972050, 28.758848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415165, 26.270130, 28.662567>,  <28.265913, 26.448978, 28.604799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415165, 26.270130, 28.662567>,  <28.663918, 25.972050, 28.758848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415165, 26.270130, 28.662567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598791, -0.650578, -0.467116,
		-0.504691, -0.146360, 0.850803,
		-0.621881, 0.745202, -0.240702,
		28.228601, 26.493690, 28.590357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015911, 25.717697, 28.744364>,  <28.663918, 25.972050, 28.758848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015911, 25.717697, 28.744364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007103, 26.055241, 28.529921>,  <28.001818, 26.257767, 28.401255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007103, 26.055241, 28.529921>,  <28.015911, 25.717697, 28.744364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007103, 26.055241, 28.529921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731927, -0.378891, -0.566326,
		-0.681028, 0.379922, 0.625988,
		-0.022022, 0.843861, -0.536110,
		28.000496, 26.308399, 28.369087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114410, 25.702969, 27.972982>,  <28.015911, 25.717697, 28.744364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114410, 25.702969, 27.972982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764599, 25.868410, 27.871685>,  <27.554712, 25.967676, 27.810907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764599, 25.868410, 27.871685>,  <28.114410, 25.702969, 27.972982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764599, 25.868410, 27.871685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244279, 0.826768, 0.506737,
		0.418962, 0.381293, -0.824067,
		-0.874528, 0.413606, -0.253243,
		27.502241, 25.992493, 27.795712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212482, 26.365999, 27.753042>,  <28.114410, 25.702969, 27.972982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212482, 26.365999, 27.753042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831396, 26.342470, 27.872290>,  <27.602745, 26.328354, 27.943838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831396, 26.342470, 27.872290>,  <28.212482, 26.365999, 27.753042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831396, 26.342470, 27.872290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147468, 0.768305, 0.622865,
		-0.265683, 0.637376, -0.723301,
		-0.952715, -0.058821, 0.298118,
		27.545582, 26.324823, 27.961725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834749, 27.010895, 27.742962>,  <28.212482, 26.365999, 27.753042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834749, 27.010895, 27.742962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729216, 26.781536, 28.053215>,  <27.665895, 26.643921, 28.239367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729216, 26.781536, 28.053215>,  <27.834749, 27.010895, 27.742962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729216, 26.781536, 28.053215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484708, 0.616407, 0.620565,
		-0.833936, 0.539682, 0.115300,
		-0.263836, -0.573398, 0.775632,
		27.650064, 26.609516, 28.285904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413620, 27.486065, 28.257467>,  <27.834749, 27.010895, 27.742962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413620, 27.486065, 28.257467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650982, 27.186869, 28.376381>,  <27.793400, 27.007351, 28.447729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650982, 27.186869, 28.376381>,  <27.413620, 27.486065, 28.257467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650982, 27.186869, 28.376381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629845, 0.661480, 0.407111,
		-0.501163, -0.054340, 0.863645,
		0.593406, -0.747992, 0.297283,
		27.829004, 26.962471, 28.465567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534399, 27.459534, 29.073957>,  <27.413620, 27.486065, 28.257467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534399, 27.459534, 29.073957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845377, 27.302454, 28.877443>,  <28.031963, 27.208206, 28.759535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845377, 27.302454, 28.877443>,  <27.534399, 27.459534, 29.073957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845377, 27.302454, 28.877443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616968, 0.627905, 0.474431,
		0.122173, -0.671954, 0.730446,
		0.777447, -0.392699, -0.491287,
		28.078611, 27.184645, 28.730057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017511, 27.165577, 29.541094>,  <27.534399, 27.459534, 29.073957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017511, 27.165577, 29.541094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214964, 27.321236, 29.229996>,  <28.333435, 27.414631, 29.043337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214964, 27.321236, 29.229996>,  <28.017511, 27.165577, 29.541094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214964, 27.321236, 29.229996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491495, 0.612954, 0.618644,
		0.717467, -0.687642, 0.111310,
		0.493633, 0.389149, -0.777746,
		28.363054, 27.437981, 28.996672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728889, 27.144688, 29.705000>,  <28.017511, 27.165577, 29.541094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728889, 27.144688, 29.705000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684723, 27.437414, 29.436001>,  <28.658222, 27.613050, 29.274601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684723, 27.437414, 29.436001>,  <28.728889, 27.144688, 29.705000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684723, 27.437414, 29.436001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532470, 0.614892, 0.581707,
		0.839217, -0.293854, -0.457565,
		-0.110416, 0.731818, -0.672496,
		28.651598, 27.656960, 29.234253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382071, 27.410187, 29.730009>,  <28.728889, 27.144688, 29.705000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382071, 27.410187, 29.730009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185871, 27.698774, 29.534504>,  <29.068151, 27.871927, 29.417200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185871, 27.698774, 29.534504>,  <29.382071, 27.410187, 29.730009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185871, 27.698774, 29.534504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563245, 0.690441, 0.453923,
		0.664954, -0.052644, -0.745026,
		-0.490501, 0.721470, -0.488763,
		29.038721, 27.915215, 29.387875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834181, 27.759947, 29.356546>,  <29.382071, 27.410187, 29.730009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834181, 27.759947, 29.356546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566301, 28.051950, 29.411087>,  <29.405575, 28.227154, 29.443811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566301, 28.051950, 29.411087>,  <29.834181, 27.759947, 29.356546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566301, 28.051950, 29.411087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711901, 0.578795, 0.397736,
		0.211432, 0.363431, -0.907312,
		-0.669697, 0.730010, 0.136352,
		29.365393, 28.270954, 29.451992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172310, 28.354429, 29.084900>,  <29.834181, 27.759947, 29.356546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172310, 28.354429, 29.084900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868790, 28.501402, 29.300014>,  <29.686678, 28.589586, 29.429083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868790, 28.501402, 29.300014>,  <30.172310, 28.354429, 29.084900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868790, 28.501402, 29.300014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636862, 0.591571, 0.494419,
		-0.136474, 0.717661, -0.682889,
		-0.758803, 0.367431, 0.537785,
		29.641150, 28.611631, 29.461349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383875, 28.967224, 29.167274>,  <30.172310, 28.354429, 29.084900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383875, 28.967224, 29.167274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104046, 28.946756, 29.452366>,  <29.936148, 28.934477, 29.623421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104046, 28.946756, 29.452366>,  <30.383875, 28.967224, 29.167274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104046, 28.946756, 29.452366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560029, 0.580235, 0.591350,
		-0.443807, 0.812840, -0.377261,
		-0.699573, -0.051168, 0.712727,
		29.894175, 28.931406, 29.666183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302254, 29.602005, 29.391674>,  <30.383875, 28.967224, 29.167274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302254, 29.602005, 29.391674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151199, 29.386221, 29.692705>,  <30.060566, 29.256750, 29.873323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151199, 29.386221, 29.692705>,  <30.302254, 29.602005, 29.391674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151199, 29.386221, 29.692705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240328, 0.727803, 0.642297,
		-0.894222, 0.423420, -0.145197,
		-0.377636, -0.539461, 0.752577,
		30.037909, 29.224382, 29.918478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778730, 30.065239, 29.815996>,  <30.302254, 29.602005, 29.391674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778730, 30.065239, 29.815996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953352, 29.781193, 30.036961>,  <30.058125, 29.610765, 30.169538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953352, 29.781193, 30.036961>,  <29.778730, 30.065239, 29.815996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953352, 29.781193, 30.036961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310423, 0.695192, 0.648341,
		-0.844428, -0.111555, 0.523924,
		0.436554, -0.710115, 0.552411,
		30.084318, 29.568159, 30.202684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798300, 30.345377, 30.586277>,  <29.778730, 30.065239, 29.815996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798300, 30.345377, 30.586277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076059, 30.060135, 30.547720>,  <30.242716, 29.888990, 30.524586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076059, 30.060135, 30.547720>,  <29.798300, 30.345377, 30.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076059, 30.060135, 30.547720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628944, 0.536376, 0.562788,
		-0.349624, -0.451425, 0.820962,
		0.694401, -0.713103, -0.096390,
		30.284380, 29.846205, 30.518803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974468, 30.201437, 31.249336>,  <29.798300, 30.345377, 30.586277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974468, 30.201437, 31.249336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286081, 30.088743, 31.025288>,  <30.473049, 30.021126, 30.890860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286081, 30.088743, 31.025288>,  <29.974468, 30.201437, 31.249336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286081, 30.088743, 31.025288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576792, 0.672271, 0.464071,
		0.245807, -0.684599, 0.686224,
		0.779032, -0.281737, -0.560120,
		30.519791, 30.004223, 30.857252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447861, 30.191240, 31.738447>,  <29.974468, 30.201437, 31.249336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447861, 30.191240, 31.738447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675159, 30.191629, 31.409306>,  <30.811539, 30.191862, 31.211821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675159, 30.191629, 31.409306>,  <30.447861, 30.191240, 31.738447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675159, 30.191629, 31.409306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594887, 0.690411, 0.411633,
		0.568509, -0.723417, 0.391747,
		0.568249, 0.000971, -0.822856,
		30.845634, 30.191921, 31.162449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040993, 30.022829, 32.002312>,  <30.447861, 30.191240, 31.738447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040993, 30.022829, 32.002312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098970, 30.234762, 31.668060>,  <31.133757, 30.361921, 31.467510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098970, 30.234762, 31.668060>,  <31.040993, 30.022829, 32.002312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098970, 30.234762, 31.668060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673876, 0.565531, 0.475465,
		0.724488, -0.632023, -0.275071,
		0.144944, 0.529832, -0.835625,
		31.142454, 30.393711, 31.417374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745975, 30.186787, 32.058521>,  <31.040993, 30.022829, 32.002312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745975, 30.186787, 32.058521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641163, 30.453297, 31.779261>,  <31.578276, 30.613203, 31.611704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641163, 30.453297, 31.779261>,  <31.745975, 30.186787, 32.058521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641163, 30.453297, 31.779261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757660, 0.590105, 0.278795,
		0.597737, -0.455908, -0.659437,
		-0.262032, 0.666276, -0.698151,
		31.562553, 30.653179, 31.569815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363804, 30.348358, 31.886400>,  <31.745975, 30.186787, 32.058521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363804, 30.348358, 31.886400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157906, 30.647793, 31.719233>,  <32.034367, 30.827454, 31.618933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157906, 30.647793, 31.719233>,  <32.363804, 30.348358, 31.886400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157906, 30.647793, 31.719233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700253, 0.648341, 0.298829,
		0.494653, -0.138828, -0.857931,
		-0.514746, 0.748586, -0.417919,
		32.003483, 30.872368, 31.593857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827370, 30.862738, 31.511444>,  <32.363804, 30.348358, 31.886400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827370, 30.862738, 31.511444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495388, 31.069668, 31.594919>,  <32.296200, 31.193825, 31.645004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495388, 31.069668, 31.594919>,  <32.827370, 30.862738, 31.511444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495388, 31.069668, 31.594919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550765, 0.700595, 0.453679,
		0.088495, 0.491471, -0.866386,
		-0.829956, 0.517324, 0.208686,
		32.246403, 31.224865, 31.657524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983311, 31.576166, 31.483923>,  <32.827370, 30.862738, 31.511444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983311, 31.576166, 31.483923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637939, 31.612278, 31.682455>,  <32.430717, 31.633945, 31.801575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637939, 31.612278, 31.682455>,  <32.983311, 31.576166, 31.483923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637939, 31.612278, 31.682455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453577, 0.569583, 0.685451,
		-0.220820, 0.816961, -0.532741,
		-0.863427, 0.090278, 0.496330,
		32.378910, 31.639362, 31.831354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878288, 32.216961, 31.582565>,  <32.983311, 31.576166, 31.483923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878288, 32.216961, 31.582565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667301, 32.039146, 31.872164>,  <32.540710, 31.932459, 32.045921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667301, 32.039146, 31.872164>,  <32.878288, 32.216961, 31.582565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667301, 32.039146, 31.872164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536216, 0.486810, 0.689557,
		-0.658981, 0.751935, -0.018408,
		-0.527463, -0.444534, 0.723997,
		32.509064, 31.905787, 32.089363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648552, 32.718559, 31.988703>,  <32.878288, 32.216961, 31.582565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648552, 32.718559, 31.988703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649055, 32.389801, 32.216557>,  <32.649357, 32.192547, 32.353268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649055, 32.389801, 32.216557>,  <32.648552, 32.718559, 31.988703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649055, 32.389801, 32.216557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396857, 0.523268, 0.754119,
		-0.917880, 0.225111, 0.326836,
		0.001262, -0.821897, 0.569634,
		32.649433, 32.143230, 32.387447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504086, 32.986942, 32.674835>,  <32.648552, 32.718559, 31.988703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504086, 32.986942, 32.674835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674858, 32.627010, 32.710697>,  <32.777321, 32.411053, 32.732216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674858, 32.627010, 32.710697>,  <32.504086, 32.986942, 32.674835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674858, 32.627010, 32.710697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507060, 0.320307, 0.800183,
		-0.748746, -0.296160, 0.593016,
		0.426930, -0.899829, 0.089658,
		32.802937, 32.357063, 32.737595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464375, 32.867630, 33.406349>,  <32.504086, 32.986942, 32.674835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464375, 32.867630, 33.406349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724403, 32.574947, 33.324352>,  <32.880421, 32.399338, 33.275154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724403, 32.574947, 33.324352>,  <32.464375, 32.867630, 33.406349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724403, 32.574947, 33.324352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616852, 0.350616, 0.704672,
		-0.443740, -0.584532, 0.679278,
		0.650068, -0.731705, -0.204988,
		32.919422, 32.355434, 33.262856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691082, 32.508995, 34.070301>,  <32.464375, 32.867630, 33.406349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691082, 32.508995, 34.070301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979935, 32.465096, 33.797104>,  <33.153248, 32.438755, 33.633186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979935, 32.465096, 33.797104>,  <32.691082, 32.508995, 34.070301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979935, 32.465096, 33.797104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683164, 0.268257, 0.679209,
		0.108675, -0.957075, 0.268693,
		0.722133, -0.109748, -0.682992,
		33.196575, 32.432171, 33.592205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210796, 32.153751, 34.374001>,  <32.691082, 32.508995, 34.070301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210796, 32.153751, 34.374001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396088, 32.300388, 34.051254>,  <33.507263, 32.388371, 33.857609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396088, 32.300388, 34.051254>,  <33.210796, 32.153751, 34.374001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396088, 32.300388, 34.051254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792866, 0.235341, 0.562119,
		0.395959, -0.900123, -0.181644,
		0.463228, 0.366596, -0.806863,
		33.535057, 32.410366, 33.809196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844139, 31.954247, 34.476582>,  <33.210796, 32.153751, 34.374001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844139, 31.954247, 34.476582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919861, 32.262276, 34.232891>,  <33.965294, 32.447094, 34.086678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919861, 32.262276, 34.232891>,  <33.844139, 31.954247, 34.476582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919861, 32.262276, 34.232891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732589, 0.302364, 0.609827,
		0.653819, -0.561751, -0.506909,
		0.189300, 0.770073, -0.609224,
		33.976650, 32.493298, 34.050125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609219, 31.932785, 34.439587>,  <33.844139, 31.954247, 34.476582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609219, 31.932785, 34.439587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459736, 32.285862, 34.325607>,  <34.370045, 32.497707, 34.257221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459736, 32.285862, 34.325607>,  <34.609219, 31.932785, 34.439587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459736, 32.285862, 34.325607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694498, 0.469914, 0.544843,
		0.614829, 0.005720, -0.788640,
		-0.373709, 0.882694, -0.284944,
		34.347622, 32.550671, 34.240124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225121, 32.327934, 34.243130>,  <34.609219, 31.932785, 34.439587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225121, 32.327934, 34.243130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918736, 32.554588, 34.364605>,  <34.734905, 32.690582, 34.437492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918736, 32.554588, 34.364605>,  <35.225121, 32.327934, 34.243130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918736, 32.554588, 34.364605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619849, 0.525591, 0.582701,
		0.170561, 0.634570, -0.753810,
		-0.765961, 0.566635, 0.303692,
		34.688946, 32.724579, 34.455711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583584, 32.977249, 34.367443>,  <35.225121, 32.327934, 34.243130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583584, 32.977249, 34.367443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227009, 33.067760, 34.524490>,  <35.013065, 33.122066, 34.618717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227009, 33.067760, 34.524490>,  <35.583584, 32.977249, 34.367443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227009, 33.067760, 34.524490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425798, 0.714712, 0.554872,
		-0.155053, 0.661806, -0.733466,
		-0.891434, 0.226274, 0.392614,
		34.959579, 33.135643, 34.642273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510365, 33.791882, 34.335484>,  <35.583584, 32.977249, 34.367443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510365, 33.791882, 34.335484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266190, 33.652817, 34.620159>,  <35.119686, 33.569378, 34.790966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266190, 33.652817, 34.620159>,  <35.510365, 33.791882, 34.335484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266190, 33.652817, 34.620159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333576, 0.702114, 0.629097,
		-0.718399, 0.621425, -0.312624,
		-0.610434, -0.347658, 0.711691,
		35.083061, 33.548519, 34.833668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196465, 34.400196, 34.656361>,  <35.510365, 33.791882, 34.335484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196465, 34.400196, 34.656361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125244, 34.118191, 34.930950>,  <35.082512, 33.948986, 35.095703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125244, 34.118191, 34.930950>,  <35.196465, 34.400196, 34.656361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125244, 34.118191, 34.930950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335403, 0.612364, 0.715901,
		-0.925095, 0.357715, 0.127430,
		-0.178055, -0.705018, 0.686474,
		35.071827, 33.906685, 35.136894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856236, 34.729523, 35.139050>,  <35.196465, 34.400196, 34.656361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856236, 34.729523, 35.139050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003323, 34.410648, 35.330582>,  <35.091576, 34.219326, 35.445499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003323, 34.410648, 35.330582>,  <34.856236, 34.729523, 35.139050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003323, 34.410648, 35.330582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408728, 0.601055, 0.686786,
		-0.835298, -0.056835, 0.546852,
		0.367722, -0.797184, 0.478830,
		35.113640, 34.171494, 35.474232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729939, 34.992210, 35.798229>,  <34.856236, 34.729523, 35.139050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729939, 34.992210, 35.798229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993423, 34.691383, 35.807114>,  <35.151516, 34.510887, 35.812443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993423, 34.691383, 35.807114>,  <34.729939, 34.992210, 35.798229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993423, 34.691383, 35.807114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438131, 0.407411, 0.801285,
		-0.611668, -0.518086, 0.597871,
		0.658714, -0.752066, 0.022211,
		35.191036, 34.465763, 35.813778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807487, 34.631538, 36.520329>,  <34.729939, 34.992210, 35.798229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807487, 34.631538, 36.520329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139812, 34.587746, 36.302059>,  <35.339207, 34.561470, 36.171097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139812, 34.587746, 36.302059>,  <34.807487, 34.631538, 36.520329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139812, 34.587746, 36.302059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537723, 0.410771, 0.736289,
		0.143537, -0.905141, 0.400145,
		0.830814, -0.109483, -0.545676,
		35.389057, 34.554901, 36.138355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311783, 34.343548, 36.987247>,  <34.807487, 34.631538, 36.520329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311783, 34.343548, 36.987247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513527, 34.501808, 36.680241>,  <35.634575, 34.596764, 36.496037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513527, 34.501808, 36.680241>,  <35.311783, 34.343548, 36.987247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513527, 34.501808, 36.680241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584283, 0.498091, 0.640717,
		0.635794, -0.771599, 0.020045,
		0.504360, 0.395652, -0.767516,
		35.664837, 34.620502, 36.449986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938374, 34.319405, 37.208801>,  <35.311783, 34.343548, 36.987247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938374, 34.319405, 37.208801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981232, 34.581291, 36.909504>,  <36.006947, 34.738422, 36.729927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981232, 34.581291, 36.909504>,  <35.938374, 34.319405, 37.208801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981232, 34.581291, 36.909504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525867, 0.601372, 0.601510,
		0.843791, -0.457926, -0.279858,
		0.107148, 0.654717, -0.748241,
		36.013374, 34.777706, 36.685032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639614, 34.426239, 37.130081>,  <35.938374, 34.319405, 37.208801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639614, 34.426239, 37.130081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483997, 34.744671, 36.944649>,  <36.390629, 34.935730, 36.833389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483997, 34.744671, 36.944649>,  <36.639614, 34.426239, 37.130081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483997, 34.744671, 36.944649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593400, 0.601473, 0.534889,
		0.704646, -0.066998, -0.706389,
		-0.389037, 0.796079, -0.463582,
		36.367287, 34.983494, 36.805573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204247, 34.800716, 37.092014>,  <36.639614, 34.426239, 37.130081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204247, 34.800716, 37.092014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901299, 35.056229, 37.037827>,  <36.719528, 35.209534, 37.005314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901299, 35.056229, 37.037827>,  <37.204247, 34.800716, 37.092014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901299, 35.056229, 37.037827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495766, 0.697531, 0.517364,
		0.424976, 0.324674, -0.844975,
		-0.757371, 0.638777, -0.135471,
		36.674088, 35.247860, 36.997185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522079, 35.455334, 36.744873>,  <37.204247, 34.800716, 37.092014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522079, 35.455334, 36.744873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179611, 35.537750, 36.934406>,  <36.974129, 35.587200, 37.048126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179611, 35.537750, 36.934406>,  <37.522079, 35.455334, 36.744873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179611, 35.537750, 36.934406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430003, 0.792581, 0.432334,
		-0.286472, 0.573901, -0.767184,
		-0.856173, 0.206040, 0.473831,
		36.922760, 35.599564, 37.076557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469391, 36.143482, 36.650215>,  <37.522079, 35.455334, 36.744873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469391, 36.143482, 36.650215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216469, 36.053211, 36.946663>,  <37.064716, 35.999046, 37.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216469, 36.053211, 36.946663>,  <37.469391, 36.143482, 36.650215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216469, 36.053211, 36.946663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422978, 0.700899, 0.574309,
		-0.649060, 0.676616, -0.347724,
		-0.632306, -0.225682, 0.741118,
		37.026775, 35.985508, 37.168999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066219, 36.730824, 36.919647>,  <37.469391, 36.143482, 36.650215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066219, 36.730824, 36.919647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042076, 36.463612, 37.216320>,  <37.027592, 36.303284, 37.394325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042076, 36.463612, 37.216320>,  <37.066219, 36.730824, 36.919647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042076, 36.463612, 37.216320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422735, 0.656007, 0.625260,
		-0.904241, 0.351276, 0.242802,
		-0.060359, -0.668026, 0.741686,
		37.023968, 36.263203, 37.438828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953362, 37.250206, 37.436745>,  <37.066219, 36.730824, 36.919647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953362, 37.250206, 37.436745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045502, 36.907578, 37.621449>,  <37.100784, 36.702000, 37.732269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045502, 36.907578, 37.621449>,  <36.953362, 37.250206, 37.436745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045502, 36.907578, 37.621449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339409, 0.515443, 0.786842,
		-0.911999, -0.024522, 0.409460,
		0.230348, -0.856573, 0.461760,
		37.114605, 36.650604, 37.759975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584866, 37.558258, 36.886715>,  <36.953362, 37.250206, 37.436745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584866, 37.558258, 36.886715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853333, 37.682125, 36.617302>,  <37.014412, 37.756447, 36.455654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853333, 37.682125, 36.617302>,  <36.584866, 37.558258, 36.886715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853333, 37.682125, 36.617302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723782, 0.077333, -0.685682,
		-0.160250, 0.947693, 0.276038,
		0.671163, 0.309672, -0.673530,
		37.054680, 37.775028, 36.415241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203835, 37.984047, 36.490547>,  <36.584866, 37.558258, 36.886715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203835, 37.984047, 36.490547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535038, 37.932243, 36.272327>,  <36.733761, 37.901161, 36.141396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535038, 37.932243, 36.272327>,  <36.203835, 37.984047, 36.490547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535038, 37.932243, 36.272327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560481, -0.163298, -0.811908,
		0.016063, 0.978039, -0.207800,
		0.828012, -0.129509, -0.545549,
		36.783440, 37.893391, 36.108662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849804, 37.998333, 35.845581>,  <36.203835, 37.984047, 36.490547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849804, 37.998333, 35.845581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210327, 37.888485, 35.711586>,  <36.426643, 37.822575, 35.631187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210327, 37.888485, 35.711586>,  <35.849804, 37.998333, 35.845581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210327, 37.888485, 35.711586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432252, -0.519877, -0.736808,
		0.028189, 0.808894, -0.587278,
		0.901312, -0.274622, -0.334991,
		36.480721, 37.806099, 35.611088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786949, 38.152695, 35.111996>,  <35.849804, 37.998333, 35.845581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786949, 38.152695, 35.111996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084274, 37.889717, 35.161392>,  <36.262669, 37.731930, 35.191032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084274, 37.889717, 35.161392>,  <35.786949, 38.152695, 35.111996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084274, 37.889717, 35.161392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422466, -0.604497, -0.675356,
		0.518663, 0.449828, -0.727079,
		0.743311, -0.657449, 0.123493,
		36.307266, 37.692482, 35.198441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165569, 38.129871, 34.547470>,  <35.786949, 38.152695, 35.111996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165569, 38.129871, 34.547470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192276, 37.774429, 34.728985>,  <36.208298, 37.561165, 34.837894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192276, 37.774429, 34.728985>,  <36.165569, 38.129871, 34.547470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192276, 37.774429, 34.728985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400927, -0.440360, -0.803331,
		0.913674, -0.128303, -0.385666,
		0.066763, -0.888606, 0.453786,
		36.212303, 37.507847, 34.865120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358295, 37.666645, 33.982937>,  <36.165569, 38.129871, 34.547470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358295, 37.666645, 33.982937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224621, 37.427540, 34.274414>,  <36.144417, 37.284077, 34.449303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224621, 37.427540, 34.274414>,  <36.358295, 37.666645, 33.982937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224621, 37.427540, 34.274414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356786, -0.635377, -0.684835,
		0.872367, -0.488851, -0.000939,
		-0.334186, -0.597763, 0.728697,
		36.124367, 37.248211, 34.493023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519459, 36.935669, 33.926392>,  <36.358295, 37.666645, 33.982937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519459, 36.935669, 33.926392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199429, 36.894142, 34.162727>,  <36.007408, 36.869225, 34.304531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199429, 36.894142, 34.162727>,  <36.519459, 36.935669, 33.926392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199429, 36.894142, 34.162727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407400, -0.628924, -0.662179,
		0.440341, -0.770504, 0.460893,
		-0.800078, -0.103817, 0.590844,
		35.959404, 36.862999, 34.339981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356663, 36.291149, 33.709656>,  <36.519459, 36.935669, 33.926392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356663, 36.291149, 33.709656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047058, 36.439308, 33.915070>,  <35.861298, 36.528202, 34.038319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047058, 36.439308, 33.915070>,  <36.356663, 36.291149, 33.709656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047058, 36.439308, 33.915070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618216, -0.617345, -0.486512,
		0.136824, -0.694039, 0.706816,
		-0.774008, 0.370398, 0.513533,
		35.814857, 36.550426, 34.069130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072617, 35.731590, 34.006210>,  <36.356663, 36.291149, 33.709656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072617, 35.731590, 34.006210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796375, 36.017944, 33.965084>,  <35.630630, 36.189758, 33.940411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796375, 36.017944, 33.965084>,  <36.072617, 35.731590, 34.006210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796375, 36.017944, 33.965084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554389, -0.615294, -0.560416,
		-0.464456, -0.330027, 0.821805,
		-0.690604, 0.715888, -0.102813,
		35.589195, 36.232712, 33.934238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392632, 35.439747, 34.154480>,  <36.072617, 35.731590, 34.006210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392632, 35.439747, 34.154480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308666, 35.767822, 33.941605>,  <35.258289, 35.964668, 33.813881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308666, 35.767822, 33.941605>,  <35.392632, 35.439747, 34.154480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308666, 35.767822, 33.941605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632178, -0.529083, -0.566059,
		-0.745848, 0.217616, 0.629566,
		-0.209909, 0.820192, -0.532187,
		35.245693, 36.013882, 33.781948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733433, 35.404568, 34.012257>,  <35.392632, 35.439747, 34.154480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733433, 35.404568, 34.012257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849201, 35.665630, 33.732178>,  <34.918663, 35.822266, 33.564129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849201, 35.665630, 33.732178>,  <34.733433, 35.404568, 34.012257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849201, 35.665630, 33.732178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679787, -0.374845, -0.630381,
		-0.673887, 0.658432, 0.335177,
		0.289424, 0.652654, -0.700197,
		34.936028, 35.861427, 33.522118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163162, 35.618153, 33.718636>,  <34.733433, 35.404568, 34.012257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163162, 35.618153, 33.718636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428513, 35.743229, 33.446709>,  <34.587723, 35.818275, 33.283554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428513, 35.743229, 33.446709>,  <34.163162, 35.618153, 33.718636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428513, 35.743229, 33.446709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581027, -0.357232, -0.731295,
		-0.471524, 0.880118, -0.055297,
		0.663380, 0.312694, -0.679816,
		34.627525, 35.837036, 33.242764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794498, 35.846001, 33.254719>,  <34.163162, 35.618153, 33.718636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794498, 35.846001, 33.254719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128571, 35.754311, 33.054749>,  <34.329014, 35.699295, 32.934765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128571, 35.754311, 33.054749>,  <33.794498, 35.846001, 33.254719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128571, 35.754311, 33.054749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549547, -0.383772, -0.742104,
		-0.021749, 0.894525, -0.446489,
		0.835180, -0.229227, -0.499930,
		34.379124, 35.685543, 32.904770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664898, 36.011147, 32.675018>,  <33.794498, 35.846001, 33.254719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664898, 36.011147, 32.675018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979595, 35.776237, 32.598969>,  <34.168411, 35.635292, 32.553337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979595, 35.776237, 32.598969>,  <33.664898, 36.011147, 32.675018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979595, 35.776237, 32.598969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425857, -0.293410, -0.855895,
		0.446862, 0.754333, -0.480933,
		0.786740, -0.587276, -0.190125,
		34.215618, 35.600056, 32.541931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717770, 36.140251, 31.989880>,  <33.664898, 36.011147, 32.675018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717770, 36.140251, 31.989880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877361, 35.792213, 32.105637>,  <33.973114, 35.583389, 32.175091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877361, 35.792213, 32.105637>,  <33.717770, 36.140251, 31.989880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877361, 35.792213, 32.105637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571005, -0.482691, -0.664050,
		0.717476, 0.099695, -0.689412,
		0.398975, -0.870098, 0.289393,
		33.997055, 35.531185, 32.192455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916367, 35.759010, 31.361227>,  <33.717770, 36.140251, 31.989880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916367, 35.759010, 31.361227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887985, 35.484398, 31.650681>,  <33.870956, 35.319630, 31.824352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887985, 35.484398, 31.650681>,  <33.916367, 35.759010, 31.361227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887985, 35.484398, 31.650681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546448, -0.580160, -0.603994,
		0.834482, -0.438286, -0.333984,
		-0.070958, -0.686527, 0.723633,
		33.866699, 35.278439, 31.867771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058533, 35.198105, 31.095324>,  <33.916367, 35.759010, 31.361227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058533, 35.198105, 31.095324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902576, 35.012081, 31.413242>,  <33.809002, 34.900467, 31.603994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902576, 35.012081, 31.413242>,  <34.058533, 35.198105, 31.095324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902576, 35.012081, 31.413242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558681, -0.566648, -0.605628,
		0.732026, -0.680166, -0.038892,
		-0.389890, -0.465064, 0.794796,
		33.785610, 34.872562, 31.651682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164902, 34.463898, 30.985453>,  <34.058533, 35.198105, 31.095324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164902, 34.463898, 30.985453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836674, 34.534508, 31.202892>,  <33.639736, 34.576874, 31.333357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836674, 34.534508, 31.202892>,  <34.164902, 34.463898, 30.985453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836674, 34.534508, 31.202892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534305, -0.574626, -0.619938,
		0.202929, -0.799151, 0.565842,
		-0.820572, 0.176529, 0.543599,
		33.590504, 34.587467, 31.365973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679478, 33.870056, 30.928911>,  <34.164902, 34.463898, 30.985453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679478, 33.870056, 30.928911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432995, 34.128975, 31.108379>,  <33.285107, 34.284325, 31.216061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432995, 34.128975, 31.108379>,  <33.679478, 33.870056, 30.928911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432995, 34.128975, 31.108379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767111, -0.364215, -0.528098,
		-0.178422, -0.669595, 0.720977,
		-0.616203, 0.647294, 0.448670,
		33.248135, 34.323162, 31.242981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273224, 33.500702, 31.456488>,  <33.679478, 33.870056, 30.928911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273224, 33.500702, 31.456488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067814, 33.828587, 31.355007>,  <32.944569, 34.025318, 31.294119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067814, 33.828587, 31.355007>,  <33.273224, 33.500702, 31.456488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067814, 33.828587, 31.355007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726106, -0.572665, -0.380559,
		-0.457236, -0.011211, 0.889275,
		-0.513523, 0.819713, -0.253702,
		32.913757, 34.074501, 31.278896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520962, 33.340973, 31.591375>,  <33.273224, 33.500702, 31.456488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520962, 33.340973, 31.591375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516651, 33.669029, 31.362549>,  <32.514065, 33.865864, 31.225254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516651, 33.669029, 31.362549>,  <32.520962, 33.340973, 31.591375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516651, 33.669029, 31.362549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771798, -0.370570, -0.516727,
		-0.635777, 0.435950, 0.636973,
		-0.010776, 0.820137, -0.572065,
		32.513420, 33.915070, 31.190929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783049, 33.558525, 31.673849>,  <32.520962, 33.340973, 31.591375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783049, 33.558525, 31.673849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972071, 33.681141, 31.343340>,  <32.085484, 33.754711, 31.145035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972071, 33.681141, 31.343340>,  <31.783049, 33.558525, 31.673849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972071, 33.681141, 31.343340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681811, -0.466903, -0.563148,
		-0.558415, 0.829480, -0.011636,
		0.472553, 0.306537, -0.826274,
		32.113838, 33.773102, 31.095457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260799, 33.701729, 31.246841>,  <31.783049, 33.558525, 31.673849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260799, 33.701729, 31.246841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571901, 33.685051, 30.995968>,  <31.758562, 33.675045, 30.845444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571901, 33.685051, 30.995968>,  <31.260799, 33.701729, 31.246841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571901, 33.685051, 30.995968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590169, -0.391838, -0.705807,
		-0.216326, 0.919089, -0.329361,
		0.777755, -0.041695, -0.627183,
		31.805227, 33.672543, 30.807814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992075, 33.838528, 30.662943>,  <31.260799, 33.701729, 31.246841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992075, 33.838528, 30.662943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334513, 33.649704, 30.578789>,  <31.539976, 33.536411, 30.528296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334513, 33.649704, 30.578789>,  <30.992075, 33.838528, 30.662943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334513, 33.649704, 30.578789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448686, -0.476850, -0.755840,
		0.256477, 0.741469, -0.620034,
		0.856096, -0.472057, -0.210386,
		31.591341, 33.508087, 30.515673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109329, 33.824524, 29.915634>,  <30.992075, 33.838528, 30.662943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109329, 33.824524, 29.915634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343662, 33.521179, 30.029957>,  <31.484262, 33.339172, 30.098551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343662, 33.521179, 30.029957>,  <31.109329, 33.824524, 29.915634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343662, 33.521179, 30.029957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297260, -0.529151, -0.794755,
		0.753949, 0.380634, -0.535424,
		0.585831, -0.758365, 0.285806,
		31.519411, 33.293671, 30.115698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413336, 33.597736, 29.287756>,  <31.109329, 33.824524, 29.915634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413336, 33.597736, 29.287756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425306, 33.296417, 29.550552>,  <31.432487, 33.115623, 29.708231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425306, 33.296417, 29.550552>,  <31.413336, 33.597736, 29.287756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425306, 33.296417, 29.550552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222862, -0.645770, -0.730283,
		0.974391, -0.124565, -0.187207,
		0.029925, -0.753302, 0.656993,
		31.434284, 33.070427, 29.747650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675535, 33.032963, 28.870565>,  <31.413336, 33.597736, 29.287756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675535, 33.032963, 28.870565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522560, 32.860878, 29.197653>,  <31.430775, 32.757626, 29.393906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522560, 32.860878, 29.197653>,  <31.675535, 33.032963, 28.870565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522560, 32.860878, 29.197653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400508, -0.720348, -0.566297,
		0.832668, -0.544074, 0.103183,
		-0.382436, -0.430212, 0.817717,
		31.407829, 32.731815, 29.442968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813438, 32.357754, 28.804863>,  <31.675535, 33.032963, 28.870565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813438, 32.357754, 28.804863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495077, 32.382935, 29.045719>,  <31.304060, 32.398045, 29.190233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495077, 32.382935, 29.045719>,  <31.813438, 32.357754, 28.804863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495077, 32.382935, 29.045719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434926, -0.751330, -0.496328,
		0.421159, -0.656916, 0.625369,
		-0.795905, 0.062957, 0.602140,
		31.256306, 32.401821, 29.226360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590887, 31.763403, 29.261347>,  <31.813438, 32.357754, 28.804863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590887, 31.763403, 29.261347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236595, 31.948992, 29.255573>,  <31.024019, 32.060345, 29.252110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236595, 31.948992, 29.255573>,  <31.590887, 31.763403, 29.261347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236595, 31.948992, 29.255573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405207, -0.787967, -0.463590,
		-0.226467, -0.404768, 0.885932,
		-0.885731, 0.463974, -0.014434,
		30.970875, 32.088184, 29.251244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117516, 31.275942, 29.362028>,  <31.590887, 31.763403, 29.261347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117516, 31.275942, 29.362028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893442, 31.568853, 29.207127>,  <30.758999, 31.744600, 29.114185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893442, 31.568853, 29.207127>,  <31.117516, 31.275942, 29.362028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893442, 31.568853, 29.207127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384108, -0.643815, -0.661788,
		-0.733934, -0.221974, 0.641926,
		-0.560182, 0.732277, -0.387256,
		30.725388, 31.788536, 29.090950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434984, 30.980783, 29.189688>,  <31.117516, 31.275942, 29.362028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434984, 30.980783, 29.189688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492743, 31.304855, 28.962440>,  <30.527397, 31.499298, 28.826092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492743, 31.304855, 28.962440>,  <30.434984, 30.980783, 29.189688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492743, 31.304855, 28.962440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313290, -0.507166, -0.802890,
		-0.938615, 0.293921, 0.180588,
		0.144398, 0.810181, -0.568116,
		30.536062, 31.547909, 28.792006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904373, 31.036266, 28.930328>,  <30.434984, 30.980783, 29.189688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904373, 31.036266, 28.930328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117777, 31.266245, 28.682198>,  <30.245819, 31.404232, 28.533319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117777, 31.266245, 28.682198>,  <29.904373, 31.036266, 28.930328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117777, 31.266245, 28.682198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515599, -0.360313, -0.777388,
		-0.670469, 0.734583, 0.104211,
		0.533507, 0.574945, -0.620329,
		30.277828, 31.438728, 28.496099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407005, 31.351902, 28.538343>,  <29.904373, 31.036266, 28.930328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407005, 31.351902, 28.538343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729374, 31.398123, 28.306089>,  <29.922796, 31.425856, 28.166737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729374, 31.398123, 28.306089>,  <29.407005, 31.351902, 28.538343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729374, 31.398123, 28.306089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572632, -0.096795, -0.814078,
		-0.150269, 0.988574, -0.011842,
		0.805923, 0.115550, -0.580635,
		29.971151, 31.432787, 28.131899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191563, 31.780218, 28.008741>,  <29.407005, 31.351902, 28.538343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191563, 31.780218, 28.008741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527927, 31.635157, 27.848068>,  <29.729746, 31.548120, 27.751663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527927, 31.635157, 27.848068>,  <29.191563, 31.780218, 28.008741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527927, 31.635157, 27.848068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450261, -0.057083, -0.891070,
		0.300221, 0.930174, -0.211290,
		0.840912, -0.362654, -0.401684,
		29.780201, 31.526360, 27.727564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303171, 32.211800, 27.499849>,  <29.191563, 31.780218, 28.008741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303171, 32.211800, 27.499849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506453, 31.876495, 27.420805>,  <29.628422, 31.675314, 27.373379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506453, 31.876495, 27.420805>,  <29.303171, 32.211800, 27.499849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506453, 31.876495, 27.420805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251241, 0.075172, -0.965001,
		0.823776, 0.540065, -0.172402,
		0.508204, -0.838259, -0.197612,
		29.658915, 31.625017, 27.361521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593624, 32.404892, 26.869442>,  <29.303171, 32.211800, 27.499849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593624, 32.404892, 26.869442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597006, 32.004997, 26.877932>,  <29.599035, 31.765060, 26.883026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597006, 32.004997, 26.877932>,  <29.593624, 32.404892, 26.869442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597006, 32.004997, 26.877932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326295, -0.022822, -0.944993,
		0.945230, 0.001064, -0.326402,
		0.008454, -0.999739, 0.021225,
		29.599543, 31.705076, 26.884298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844181, 32.262661, 26.248854>,  <29.593624, 32.404892, 26.869442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844181, 32.262661, 26.248854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657774, 31.923054, 26.348444>,  <29.545929, 31.719288, 26.408199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657774, 31.923054, 26.348444>,  <29.844181, 32.262661, 26.248854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657774, 31.923054, 26.348444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218454, -0.162278, -0.962260,
		0.857382, -0.502821, -0.109847,
		-0.466019, -0.849021, 0.248978,
		29.517969, 31.668348, 26.423138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122826, 31.772270, 25.774784>,  <29.844181, 32.262661, 26.248854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122826, 31.772270, 25.774784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776640, 31.622185, 25.907562>,  <29.568928, 31.532133, 25.987228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776640, 31.622185, 25.907562>,  <30.122826, 31.772270, 25.774784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776640, 31.622185, 25.907562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301695, -0.138608, -0.943275,
		0.399941, -0.916516, 0.006759,
		-0.865464, -0.375215, 0.331943,
		29.517000, 31.509621, 26.007145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766832, 31.256012, 25.758469>,  <30.122826, 31.772270, 25.774784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766832, 31.256012, 25.758469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960217, 31.211611, 25.411150>,  <31.076248, 31.184971, 25.202759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960217, 31.211611, 25.411150>,  <30.766832, 31.256012, 25.758469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960217, 31.211611, 25.411150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858293, 0.255061, 0.445284,
		0.172042, -0.960533, 0.218585,
		0.483462, -0.111002, -0.868299,
		31.105255, 31.178310, 25.150660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356781, 30.780088, 25.936920>,  <30.766832, 31.256012, 25.758469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356781, 30.780088, 25.936920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501661, 30.905363, 25.585756>,  <31.588591, 30.980528, 25.375059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501661, 30.905363, 25.585756>,  <31.356781, 30.780088, 25.936920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501661, 30.905363, 25.585756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839499, 0.299663, 0.453259,
		0.405032, -0.901174, -0.154382,
		0.362203, 0.313188, -0.877908,
		31.610323, 30.999319, 25.322384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091087, 30.453800, 25.743002>,  <31.356781, 30.780088, 25.936920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091087, 30.453800, 25.743002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061657, 30.801151, 25.546835>,  <32.043999, 31.009562, 25.429134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061657, 30.801151, 25.546835>,  <32.091087, 30.453800, 25.743002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061657, 30.801151, 25.546835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830560, 0.325561, 0.451862,
		0.552048, -0.374077, -0.745191,
		-0.073574, 0.868376, -0.490419,
		32.039585, 31.061665, 25.399710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781376, 30.666426, 25.529284>,  <32.091087, 30.453800, 25.743002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781376, 30.666426, 25.529284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547802, 30.991119, 25.533470>,  <32.407658, 31.185936, 25.535982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547802, 30.991119, 25.533470>,  <32.781376, 30.666426, 25.529284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547802, 30.991119, 25.533470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672805, 0.476692, 0.565772,
		0.454267, 0.337415, -0.824495,
		-0.583930, 0.811736, 0.010469,
		32.372623, 31.234640, 25.536612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298641, 31.117878, 25.599161>,  <32.781376, 30.666426, 25.529284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298641, 31.117878, 25.599161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963791, 31.332829, 25.640041>,  <32.762882, 31.461800, 25.664570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963791, 31.332829, 25.640041>,  <33.298641, 31.117878, 25.599161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963791, 31.332829, 25.640041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489698, 0.652963, 0.577785,
		0.243754, 0.533727, -0.809765,
		-0.837126, 0.537378, 0.102203,
		32.712654, 31.494041, 25.670702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359306, 31.904730, 25.373468>,  <33.298641, 31.117878, 25.599161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359306, 31.904730, 25.373468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076580, 31.890459, 25.656069>,  <32.906944, 31.881897, 25.825628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076580, 31.890459, 25.656069>,  <33.359306, 31.904730, 25.373468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076580, 31.890459, 25.656069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452137, 0.745316, 0.489977,
		-0.544046, 0.665756, -0.510668,
		-0.706814, -0.035678, 0.706499,
		32.864536, 31.879755, 25.868019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208935, 32.607807, 25.450165>,  <33.359306, 31.904730, 25.373468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208935, 32.607807, 25.450165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061337, 32.430866, 25.777130>,  <32.972778, 32.324699, 25.973310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061337, 32.430866, 25.777130>,  <33.208935, 32.607807, 25.450165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061337, 32.430866, 25.777130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370452, 0.736601, 0.565848,
		-0.852414, 0.511607, -0.107930,
		-0.368993, -0.442354, 0.817415,
		32.950638, 32.298161, 26.022354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987331, 33.193008, 25.813942>,  <33.208935, 32.607807, 25.450165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987331, 33.193008, 25.813942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985069, 32.918682, 26.105043>,  <32.983711, 32.754086, 26.279705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985069, 32.918682, 26.105043>,  <32.987331, 33.193008, 25.813942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985069, 32.918682, 26.105043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470962, 0.640172, 0.606939,
		-0.882136, 0.346175, 0.319374,
		-0.005653, -0.685816, 0.727753,
		32.983372, 32.712936, 26.323370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914829, 33.534267, 26.367731>,  <32.987331, 33.193008, 25.813942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914829, 33.534267, 26.367731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071243, 33.195103, 26.510921>,  <33.165092, 32.991604, 26.596836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071243, 33.195103, 26.510921>,  <32.914829, 33.534267, 26.367731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071243, 33.195103, 26.510921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625363, 0.530143, 0.572599,
		-0.675290, -0.000039, 0.737552,
		0.391031, -0.847908, 0.357976,
		33.188553, 32.940731, 26.618315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979225, 33.568821, 27.110697>,  <32.914829, 33.534267, 26.367731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979225, 33.568821, 27.110697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244274, 33.297264, 26.984182>,  <33.403305, 33.134331, 26.908274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244274, 33.297264, 26.984182>,  <32.979225, 33.568821, 27.110697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244274, 33.297264, 26.984182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732652, 0.499938, 0.461826,
		-0.155405, -0.537747, 0.828660,
		0.662624, -0.678889, -0.316288,
		33.443062, 33.093597, 26.889296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417641, 33.345825, 27.734869>,  <32.979225, 33.568821, 27.110697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417641, 33.345825, 27.734869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639057, 33.242973, 27.418015>,  <33.771908, 33.181263, 27.227901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639057, 33.242973, 27.418015>,  <33.417641, 33.345825, 27.734869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639057, 33.242973, 27.418015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826765, 0.284184, 0.485489,
		0.100279, -0.923647, 0.369892,
		0.553538, -0.257129, -0.792137,
		33.805119, 33.165836, 27.180374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951077, 33.121132, 27.997599>,  <33.417641, 33.345825, 27.734869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951077, 33.121132, 27.997599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098274, 33.176186, 27.629765>,  <34.186592, 33.209217, 27.409065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098274, 33.176186, 27.629765>,  <33.951077, 33.121132, 27.997599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098274, 33.176186, 27.629765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864167, 0.314421, 0.392880,
		0.343211, -0.939253, -0.003234,
		0.367997, 0.137635, -0.919584,
		34.208672, 33.217476, 27.353889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507046, 32.679531, 27.846712>,  <33.951077, 33.121132, 27.997599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507046, 32.679531, 27.846712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549816, 33.002766, 27.615004>,  <34.575478, 33.196709, 27.475979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549816, 33.002766, 27.615004>,  <34.507046, 32.679531, 27.846712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549816, 33.002766, 27.615004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894572, 0.176086, 0.410773,
		0.433943, -0.562124, -0.704067,
		0.106929, 0.808090, -0.579272,
		34.581894, 33.245193, 27.441221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170902, 32.576565, 27.624794>,  <34.507046, 32.679531, 27.846712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170902, 32.576565, 27.624794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053551, 32.954311, 27.565323>,  <34.983139, 33.180958, 27.529640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053551, 32.954311, 27.565323>,  <35.170902, 32.576565, 27.624794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053551, 32.954311, 27.565323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834845, 0.328861, 0.441457,
		0.465790, 0.005393, -0.884879,
		-0.293383, 0.944363, -0.148678,
		34.965534, 33.237621, 27.520720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768517, 32.937344, 27.644129>,  <35.170902, 32.576565, 27.624794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768517, 32.937344, 27.644129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490330, 33.216133, 27.714046>,  <35.323418, 33.383408, 27.755997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490330, 33.216133, 27.714046>,  <35.768517, 32.937344, 27.644129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490330, 33.216133, 27.714046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593388, 0.419884, 0.686722,
		0.405231, 0.581317, -0.705591,
		-0.695469, 0.696971, 0.174796,
		35.281689, 33.425224, 27.766485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174442, 33.611744, 27.570593>,  <35.768517, 32.937344, 27.644129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174442, 33.611744, 27.570593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843876, 33.693157, 27.780586>,  <35.645535, 33.742004, 27.906582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843876, 33.693157, 27.780586>,  <36.174442, 33.611744, 27.570593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843876, 33.693157, 27.780586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539184, 0.554690, 0.633718,
		-0.162221, 0.806779, -0.568148,
		-0.826417, 0.203534, 0.524985,
		35.595951, 33.754219, 27.938082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278473, 34.328911, 27.767731>,  <36.174442, 33.611744, 27.570593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278473, 34.328911, 27.767731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011528, 34.184254, 28.028145>,  <35.851360, 34.097458, 28.184393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011528, 34.184254, 28.028145>,  <36.278473, 34.328911, 27.767731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011528, 34.184254, 28.028145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366060, 0.602000, 0.709645,
		-0.648563, 0.711905, -0.269365,
		-0.667358, -0.361646, 0.651034,
		35.811321, 34.075760, 28.223455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885887, 34.883675, 28.132290>,  <36.278473, 34.328911, 27.767731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885887, 34.883675, 28.132290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831593, 34.561512, 28.363079>,  <35.799015, 34.368214, 28.501553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831593, 34.561512, 28.363079>,  <35.885887, 34.883675, 28.132290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831593, 34.561512, 28.363079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142540, 0.560430, 0.815844,
		-0.980437, 0.192984, 0.038729,
		-0.135740, -0.805404, 0.576974,
		35.790871, 34.319889, 28.536171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396633, 35.062347, 28.670910>,  <35.885887, 34.883675, 28.132290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396633, 35.062347, 28.670910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571911, 34.726589, 28.799532>,  <35.677078, 34.525135, 28.876705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571911, 34.726589, 28.799532>,  <35.396633, 35.062347, 28.670910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571911, 34.726589, 28.799532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218444, 0.446445, 0.867738,
		-0.871935, -0.309993, 0.378990,
		0.438191, -0.839399, 0.321555,
		35.703369, 34.474770, 28.895998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018394, 34.904972, 29.309191>,  <35.396633, 35.062347, 28.670910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018394, 34.904972, 29.309191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378216, 34.731056, 29.325951>,  <35.594109, 34.626705, 29.336006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378216, 34.731056, 29.325951>,  <35.018394, 34.904972, 29.309191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378216, 34.731056, 29.325951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171201, 0.439193, 0.881929,
		-0.401860, -0.786170, 0.469516,
		0.899554, -0.434794, 0.041901,
		35.648083, 34.600616, 29.338522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055729, 34.524952, 30.030682>,  <35.018394, 34.904972, 29.309191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055729, 34.524952, 30.030682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418594, 34.615295, 29.888670>,  <35.636314, 34.669502, 29.803463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418594, 34.615295, 29.888670>,  <35.055729, 34.524952, 30.030682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418594, 34.615295, 29.888670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259808, 0.363052, 0.894814,
		0.330993, -0.903982, 0.270668,
		0.907162, 0.225855, -0.355030,
		35.690742, 34.683052, 29.782162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504715, 34.395958, 30.648790>,  <35.055729, 34.524952, 30.030682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504715, 34.395958, 30.648790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735973, 34.600895, 30.394779>,  <35.874725, 34.723858, 30.242373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735973, 34.600895, 30.394779>,  <35.504715, 34.395958, 30.648790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735973, 34.600895, 30.394779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512364, 0.377746, 0.771227,
		0.635009, -0.771244, -0.044113,
		0.578141, 0.512338, -0.635030,
		35.909416, 34.754597, 30.204269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112259, 34.354996, 30.893799>,  <35.504715, 34.395958, 30.648790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112259, 34.354996, 30.893799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149406, 34.687790, 30.675014>,  <36.171696, 34.887466, 30.543743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149406, 34.687790, 30.675014>,  <36.112259, 34.354996, 30.893799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149406, 34.687790, 30.675014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501479, 0.435489, 0.747575,
		0.860171, -0.343719, -0.376780,
		0.092872, 0.831989, -0.546963,
		36.177269, 34.937386, 30.510925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880844, 34.630745, 30.920639>,  <36.112259, 34.354996, 30.893799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880844, 34.630745, 30.920639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629517, 34.931068, 30.839159>,  <36.478718, 35.111263, 30.790272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629517, 34.931068, 30.839159>,  <36.880844, 34.630745, 30.920639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629517, 34.931068, 30.839159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534572, 0.606920, 0.588116,
		0.565193, 0.260635, -0.782704,
		-0.628323, 0.750811, -0.203699,
		36.441021, 35.156311, 30.778049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246552, 35.276970, 31.003326>,  <36.880844, 34.630745, 30.920639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246552, 35.276970, 31.003326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879002, 35.431194, 30.969828>,  <36.658470, 35.523731, 30.949728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879002, 35.431194, 30.969828>,  <37.246552, 35.276970, 31.003326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879002, 35.431194, 30.969828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310207, 0.837141, 0.450518,
		0.243812, 0.387990, -0.888831,
		-0.918873, 0.385563, -0.083748,
		36.603340, 35.546864, 30.944704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328411, 35.885082, 30.726940>,  <37.246552, 35.276970, 31.003326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328411, 35.885082, 30.726940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974102, 35.896854, 30.912214>,  <36.761517, 35.903919, 31.023378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974102, 35.896854, 30.912214>,  <37.328411, 35.885082, 30.726940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974102, 35.896854, 30.912214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311199, 0.778061, 0.545688,
		-0.344326, 0.627499, -0.698344,
		-0.885773, 0.029429, 0.463184,
		36.708370, 35.905682, 31.051170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203724, 36.537159, 30.566540>,  <37.328411, 35.885082, 30.726940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203724, 36.537159, 30.566540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983513, 36.427402, 30.881914>,  <36.851387, 36.361549, 31.071138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983513, 36.427402, 30.881914>,  <37.203724, 36.537159, 30.566540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983513, 36.427402, 30.881914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432528, 0.714042, 0.550512,
		-0.714032, 0.644092, -0.274416,
		-0.550525, -0.274390, 0.788437,
		36.818356, 36.345085, 31.118444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953381, 37.137077, 30.936117>,  <37.203724, 36.537159, 30.566540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953381, 37.137077, 30.936117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937195, 36.844109, 31.207975>,  <36.927483, 36.668327, 31.371090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937195, 36.844109, 31.207975>,  <36.953381, 37.137077, 30.936117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937195, 36.844109, 31.207975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380208, 0.617747, 0.688354,
		-0.924015, 0.286263, 0.253474,
		-0.040467, -0.732423, 0.679647,
		36.925056, 36.624382, 31.411869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716461, 37.473885, 31.525612>,  <36.953381, 37.137077, 30.936117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716461, 37.473885, 31.525612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906464, 37.136772, 31.626879>,  <37.020466, 36.934505, 31.687639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906464, 37.136772, 31.626879>,  <36.716461, 37.473885, 31.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906464, 37.136772, 31.626879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471597, 0.486693, 0.735341,
		-0.742946, -0.229896, 0.628633,
		0.475004, -0.842779, 0.253169,
		37.048965, 36.883938, 31.702829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582821, 37.522575, 32.250580>,  <36.716461, 37.473885, 31.525612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582821, 37.522575, 32.250580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867989, 37.253288, 32.172070>,  <37.039089, 37.091717, 32.124962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867989, 37.253288, 32.172070>,  <36.582821, 37.522575, 32.250580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867989, 37.253288, 32.172070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477904, 0.261609, 0.838552,
		-0.513182, -0.691618, 0.508240,
		0.712918, -0.673219, -0.196274,
		37.081863, 37.051323, 32.113186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986534, 37.517830, 32.846146>,  <36.582821, 37.522575, 32.250580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986534, 37.517830, 32.846146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234066, 37.281036, 32.639610>,  <37.382584, 37.138962, 32.515690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234066, 37.281036, 32.639610>,  <36.986534, 37.517830, 32.846146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234066, 37.281036, 32.639610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774207, 0.348444, 0.528385,
		-0.132880, -0.726733, 0.673946,
		0.618827, -0.591985, -0.516340,
		37.419712, 37.103439, 32.484707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347504, 37.135361, 33.370789>,  <36.986534, 37.517830, 32.846146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347504, 37.135361, 33.370789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566898, 37.143894, 33.036434>,  <37.698536, 37.149014, 32.835823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566898, 37.143894, 33.036434>,  <37.347504, 37.135361, 33.370789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566898, 37.143894, 33.036434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833114, 0.071292, 0.548487,
		0.071292, -0.997227, 0.021331,
		-0.548487, -0.021331, 0.835887,
		37.731445, 37.150295, 32.785667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981342, 36.673496, 33.437866>,  <37.347504, 37.135361, 33.370789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981342, 36.673496, 33.437866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047626, 36.962555, 33.169445>,  <38.087399, 37.135990, 33.008392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047626, 36.962555, 33.169445>,  <37.981342, 36.673496, 33.437866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047626, 36.962555, 33.169445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904924, 0.159045, 0.394736,
		0.391984, -0.672666, -0.627589,
		0.165710, 0.722651, -0.671056,
		38.097340, 37.179352, 32.968128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648518, 36.458321, 33.290417>,  <37.981342, 36.673496, 33.437866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648518, 36.458321, 33.290417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606159, 36.836285, 33.166531>,  <38.580746, 37.063065, 33.092197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606159, 36.836285, 33.166531>,  <38.648518, 36.458321, 33.290417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606159, 36.836285, 33.166531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855517, 0.245328, 0.455965,
		0.506830, -0.216685, -0.834368,
		-0.105893, 0.944914, -0.309718,
		38.574390, 37.119759, 33.073616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332981, 36.739834, 33.202553>,  <38.648518, 36.458321, 33.290417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332981, 36.739834, 33.202553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123432, 37.079960, 33.222637>,  <38.997704, 37.284035, 33.234688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123432, 37.079960, 33.222637>,  <39.332981, 36.739834, 33.202553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123432, 37.079960, 33.222637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756659, 0.437484, 0.485875,
		0.391178, 0.292534, -0.872584,
		-0.523877, 0.850313, 0.050215,
		38.966270, 37.335052, 33.237701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784161, 37.253117, 32.939926>,  <39.332981, 36.739834, 33.202553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784161, 37.253117, 32.939926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522766, 37.450218, 33.169762>,  <39.365929, 37.568478, 33.307663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522766, 37.450218, 33.169762>,  <39.784161, 37.253117, 32.939926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522766, 37.450218, 33.169762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739669, 0.576920, 0.346487,
		-0.160758, 0.651428, -0.741484,
		-0.653488, 0.492752, 0.574586,
		39.326721, 37.598045, 33.342136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095924, 37.896793, 33.081989>,  <39.784161, 37.253117, 32.939926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095924, 37.896793, 33.081989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820621, 37.890217, 33.372101>,  <39.655441, 37.886269, 33.546169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820621, 37.890217, 33.372101>,  <40.095924, 37.896793, 33.081989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820621, 37.890217, 33.372101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565700, 0.613734, 0.550739,
		-0.454187, 0.789341, -0.413104,
		-0.688257, -0.016446, 0.725280,
		39.614143, 37.885284, 33.589684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062664, 38.527874, 33.265987>,  <40.095924, 37.896793, 33.081989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062664, 38.527874, 33.265987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905693, 38.318192, 33.568298>,  <39.811512, 38.192383, 33.749687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905693, 38.318192, 33.568298>,  <40.062664, 38.527874, 33.265987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905693, 38.318192, 33.568298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536579, 0.536909, 0.651009,
		-0.747050, 0.661011, 0.070581,
		-0.392428, -0.524208, 0.755782,
		39.787964, 38.160931, 33.795033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808937, 39.039921, 33.795155>,  <40.062664, 38.527874, 33.265987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808937, 39.039921, 33.795155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868134, 38.683781, 33.967373>,  <39.903652, 38.470097, 34.070705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868134, 38.683781, 33.967373>,  <39.808937, 39.039921, 33.795155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868134, 38.683781, 33.967373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519758, 0.440395, 0.732054,
		-0.841397, 0.115441, 0.527943,
		0.147994, -0.890351, 0.430549,
		39.912533, 38.416676, 34.096539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887173, 39.242641, 34.495510>,  <39.808937, 39.039921, 33.795155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887173, 39.242641, 34.495510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029137, 38.873806, 34.433811>,  <40.114315, 38.652504, 34.396793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029137, 38.873806, 34.433811>,  <39.887173, 39.242641, 34.495510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029137, 38.873806, 34.433811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707695, 0.157162, 0.688816,
		-0.610908, -0.353626, 0.708336,
		0.354907, -0.922089, -0.154248,
		40.135609, 38.597179, 34.387535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542355, 39.482983, 35.009857>,  <39.887173, 39.242641, 34.495510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542355, 39.482983, 35.009857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718521, 39.638916, 35.333355>,  <39.824223, 39.732475, 35.527454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718521, 39.638916, 35.333355>,  <39.542355, 39.482983, 35.009857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718521, 39.638916, 35.333355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520228, 0.623353, -0.583776,
		-0.731709, 0.677833, 0.071729,
		0.440415, 0.389838, 0.808740,
		39.850647, 39.755867, 35.575977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616924, 40.271378, 34.864944>,  <39.542355, 39.482983, 35.009857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616924, 40.271378, 34.864944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880093, 40.116058, 35.123051>,  <40.037994, 40.022865, 35.277912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880093, 40.116058, 35.123051>,  <39.616924, 40.271378, 34.864944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880093, 40.116058, 35.123051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743925, 0.468350, -0.476680,
		-0.117113, 0.793644, 0.597004,
		0.657921, -0.388301, 0.645261,
		40.077469, 39.999569, 35.316628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935215, 40.790821, 35.307983>,  <39.616924, 40.271378, 34.864944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935215, 40.790821, 35.307983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210979, 40.504223, 35.265377>,  <40.376438, 40.332264, 35.239811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210979, 40.504223, 35.265377>,  <39.935215, 40.790821, 35.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210979, 40.504223, 35.265377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698345, 0.696474, -0.165044,
		0.192442, 0.039396, 0.980518,
		0.689407, -0.716500, -0.106519,
		40.417801, 40.289272, 35.233421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588196, 40.906677, 35.809586>,  <39.935215, 40.790821, 35.307983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588196, 40.906677, 35.809586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648678, 40.737572, 35.452171>,  <40.684967, 40.636108, 35.237724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648678, 40.737572, 35.452171>,  <40.588196, 40.906677, 35.809586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648678, 40.737572, 35.452171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648892, 0.724355, -0.232913,
		0.745705, -0.544591, 0.383854,
		0.151205, -0.422764, -0.893537,
		40.694038, 40.610741, 35.184109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912689, 41.463127, 35.697803>,  <40.588196, 40.906677, 35.809586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912689, 41.463127, 35.697803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309681, 41.463150, 35.648823>,  <40.547874, 41.463165, 35.619434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309681, 41.463150, 35.648823>,  <39.912689, 41.463127, 35.697803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309681, 41.463150, 35.648823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085189, 0.718019, 0.690790,
		0.087960, -0.696023, 0.712611,
		0.992474, 0.000056, -0.122450,
		40.607422, 41.463165, 35.612087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251762, 41.527927, 36.302696>,  <39.912689, 41.463127, 35.697803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251762, 41.527927, 36.302696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453735, 41.691406, 35.998589>,  <40.574917, 41.789494, 35.816124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453735, 41.691406, 35.998589>,  <40.251762, 41.527927, 36.302696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453735, 41.691406, 35.998589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086070, 0.852569, 0.515479,
		0.858861, -0.325715, 0.395306,
		0.504925, 0.408700, -0.760273,
		40.605213, 41.814014, 35.770508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064892, 41.453987, 36.421982>,  <40.251762, 41.527927, 36.302696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064892, 41.453987, 36.421982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149593, 41.447758, 36.812862>,  <41.200413, 41.444019, 37.047390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149593, 41.447758, 36.812862>,  <41.064892, 41.453987, 36.421982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149593, 41.447758, 36.812862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119719, -0.992756, 0.010119,
		0.969963, -0.119132, -0.212081,
		0.211750, -0.015575, 0.977200,
		41.213120, 41.443085, 37.106022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562107, 40.951405, 36.616302>,  <41.064892, 41.453987, 36.421982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562107, 40.951405, 36.616302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330265, 41.012295, 36.936523>,  <41.191158, 41.048828, 37.128654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330265, 41.012295, 36.936523>,  <41.562107, 40.951405, 36.616302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330265, 41.012295, 36.936523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246283, -0.969179, 0.005973,
		0.776787, -0.193700, 0.599235,
		-0.579609, 0.152222, 0.800551,
		41.156384, 41.057961, 37.176689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800522, 40.622902, 37.136150>,  <41.562107, 40.951405, 36.616302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800522, 40.622902, 37.136150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401798, 40.653862, 37.144039>,  <41.162563, 40.672440, 37.148773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401798, 40.653862, 37.144039>,  <41.800522, 40.622902, 37.136150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401798, 40.653862, 37.144039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071186, -0.972863, 0.220160,
		0.036225, 0.218053, 0.975264,
		-0.996805, 0.077401, 0.019720,
		41.102757, 40.677082, 37.149956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417587, 40.401863, 37.785725>,  <41.800522, 40.622902, 37.136150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417587, 40.401863, 37.785725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197624, 40.355080, 37.454926>,  <41.065647, 40.327011, 37.256447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197624, 40.355080, 37.454926>,  <41.417587, 40.401863, 37.785725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197624, 40.355080, 37.454926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065461, -0.981066, 0.182276,
		-0.832657, 0.154371, 0.531838,
		-0.549907, -0.116959, -0.826996,
		41.032654, 40.319992, 37.206825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806721, 40.051537, 37.902691>,  <41.417587, 40.401863, 37.785725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806721, 40.051537, 37.902691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913830, 40.000011, 37.520760>,  <40.978096, 39.969097, 37.291599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913830, 40.000011, 37.520760>,  <40.806721, 40.051537, 37.902691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913830, 40.000011, 37.520760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004494, -0.990845, 0.134929,
		-0.963470, -0.040421, -0.264746,
		0.267776, -0.128810, -0.954832,
		40.994164, 39.961369, 37.234310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289120, 39.566936, 37.448570>,  <40.806721, 40.051537, 37.902691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289120, 39.566936, 37.448570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677689, 39.548672, 37.355400>,  <40.910831, 39.537712, 37.299496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677689, 39.548672, 37.355400>,  <40.289120, 39.566936, 37.448570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677689, 39.548672, 37.355400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016924, -0.965501, 0.259847,
		-0.236757, -0.256363, -0.937136,
		0.971421, -0.045661, -0.232928,
		40.969116, 39.534973, 37.285522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319210, 38.855591, 37.145985>,  <40.289120, 39.566936, 37.448570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319210, 38.855591, 37.145985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674061, 38.974796, 37.286949>,  <40.886971, 39.046322, 37.371529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674061, 38.974796, 37.286949>,  <40.319210, 38.855591, 37.145985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674061, 38.974796, 37.286949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135816, -0.898336, 0.417788,
		0.441090, -0.322768, -0.837413,
		0.887126, 0.298016, 0.352410,
		40.940197, 39.064201, 37.392673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873898, 38.464756, 36.851860>,  <40.319210, 38.855591, 37.145985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873898, 38.464756, 36.851860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959213, 38.599140, 37.218822>,  <41.010403, 38.679771, 37.438999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959213, 38.599140, 37.218822>,  <40.873898, 38.464756, 36.851860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959213, 38.599140, 37.218822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203126, -0.933747, 0.294715,
		0.955639, 0.123490, -0.267401,
		0.213291, 0.335957, 0.917409,
		41.023201, 38.699928, 37.494045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479969, 38.095577, 37.153877>,  <40.873898, 38.464756, 36.851860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479969, 38.095577, 37.153877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244396, 38.224720, 37.450233>,  <41.103050, 38.302204, 37.628048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244396, 38.224720, 37.450233>,  <41.479969, 38.095577, 37.153877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244396, 38.224720, 37.450233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046179, -0.901800, 0.429678,
		0.806860, 0.287267, 0.516193,
		-0.588935, 0.322853, 0.740892,
		41.067715, 38.321575, 37.672501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772652, 38.142838, 37.897198>,  <41.479969, 38.095577, 37.153877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772652, 38.142838, 37.897198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389778, 38.027157, 37.902340>,  <41.160053, 37.957748, 37.905426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389778, 38.027157, 37.902340>,  <41.772652, 38.142838, 37.897198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389778, 38.027157, 37.902340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252694, -0.813022, 0.524539,
		-0.141244, 0.505328, 0.851290,
		-0.957181, -0.289203, 0.012859,
		41.102623, 37.940395, 37.906197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424419, 37.958839, 38.599411>,  <41.772652, 38.142838, 37.897198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424419, 37.958839, 38.599411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227997, 37.751621, 38.319271>,  <41.110142, 37.627289, 38.151188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227997, 37.751621, 38.319271>,  <41.424419, 37.958839, 38.599411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227997, 37.751621, 38.319271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151844, -0.842553, 0.516767,
		-0.857790, 0.147420, 0.492406,
		-0.491059, -0.518046, -0.700349,
		41.080681, 37.596207, 38.109165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788334, 37.600044, 38.927425>,  <41.424419, 37.958839, 38.599411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788334, 37.600044, 38.927425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885094, 37.388725, 38.601875>,  <40.943150, 37.261936, 38.406548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885094, 37.388725, 38.601875>,  <40.788334, 37.600044, 38.927425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885094, 37.388725, 38.601875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015134, -0.836627, 0.547564,
		-0.970183, -0.144772, -0.194383,
		0.241898, -0.528295, -0.813873,
		40.957664, 37.230236, 38.357712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347088, 37.047070, 38.850117>,  <40.788334, 37.600044, 38.927425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347088, 37.047070, 38.850117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701771, 36.941353, 38.698380>,  <40.914581, 36.877922, 38.607338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701771, 36.941353, 38.698380>,  <40.347088, 37.047070, 38.850117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701771, 36.941353, 38.698380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005551, -0.826527, 0.562869,
		-0.462299, -0.496994, -0.734355,
		0.886707, -0.264290, -0.379344,
		40.967781, 36.862064, 38.584576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523052, 36.572678, 39.265942>,  <40.347088, 37.047070, 38.850117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523052, 36.572678, 39.265942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868206, 36.521580, 39.070347>,  <41.075298, 36.490921, 38.952991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868206, 36.521580, 39.070347>,  <40.523052, 36.572678, 39.265942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868206, 36.521580, 39.070347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214785, -0.783116, 0.583607,
		-0.457489, -0.608613, -0.648301,
		0.862886, -0.127748, -0.488988,
		41.127071, 36.483253, 38.923649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576096, 35.851650, 38.903793>,  <40.523052, 36.572678, 39.265942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576096, 35.851650, 38.903793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932388, 36.005585, 39.000534>,  <41.146164, 36.097946, 39.058578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932388, 36.005585, 39.000534>,  <40.576096, 35.851650, 38.903793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932388, 36.005585, 39.000534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130979, -0.726852, 0.674188,
		0.435240, -0.568847, -0.697839,
		0.890736, 0.384836, 0.241848,
		41.199608, 36.121037, 39.073090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983883, 35.259239, 38.831539>,  <40.576096, 35.851650, 38.903793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983883, 35.259239, 38.831539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169876, 35.518658, 39.072598>,  <41.281471, 35.674309, 39.217232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169876, 35.518658, 39.072598>,  <40.983883, 35.259239, 38.831539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169876, 35.518658, 39.072598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193018, -0.738599, 0.645922,
		0.864021, -0.184024, -0.468619,
		0.464987, 0.648542, 0.602645,
		41.309372, 35.713219, 39.253391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531479, 34.929771, 38.992237>,  <40.983883, 35.259239, 38.831539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531479, 34.929771, 38.992237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494793, 35.200733, 39.284187>,  <41.472782, 35.363308, 39.459358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494793, 35.200733, 39.284187>,  <41.531479, 34.929771, 38.992237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494793, 35.200733, 39.284187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106539, -0.722082, 0.683555,
		0.990070, 0.140452, -0.005943,
		-0.091715, 0.677400, 0.729875,
		41.467278, 35.403954, 39.503151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061905, 34.806625, 39.473869>,  <41.531479, 34.929771, 38.992237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061905, 34.806625, 39.473869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757114, 34.991871, 39.654942>,  <41.574242, 35.103016, 39.763584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757114, 34.991871, 39.654942>,  <42.061905, 34.806625, 39.473869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757114, 34.991871, 39.654942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083018, -0.763092, 0.640935,
		0.642262, 0.450797, 0.619904,
		-0.761976, 0.463112, 0.452681,
		41.528522, 35.130806, 39.790745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294334, 34.893818, 40.212788>,  <42.061905, 34.806625, 39.473869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294334, 34.893818, 40.212788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898849, 34.847000, 40.175358>,  <41.661560, 34.818909, 40.152901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898849, 34.847000, 40.175358>,  <42.294334, 34.893818, 40.212788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898849, 34.847000, 40.175358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081698, -0.944511, 0.318158,
		-0.125617, 0.306921, 0.943408,
		-0.988709, -0.117041, -0.093572,
		41.602238, 34.811890, 40.147285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919617, 34.752304, 40.873585>,  <42.294334, 34.893818, 40.212788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919617, 34.752304, 40.873585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748867, 34.573734, 40.559010>,  <41.646416, 34.466591, 40.370266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748867, 34.573734, 40.559010>,  <41.919617, 34.752304, 40.873585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748867, 34.573734, 40.559010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197617, -0.894686, 0.400605,
		-0.882454, 0.015595, 0.470140,
		-0.426875, -0.446423, -0.786438,
		41.620804, 34.439808, 40.323078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311726, 34.261730, 41.054562>,  <41.919617, 34.752304, 40.873585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311726, 34.261730, 41.054562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541885, 34.176754, 40.738644>,  <41.679981, 34.125767, 40.549091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541885, 34.176754, 40.738644>,  <41.311726, 34.261730, 41.054562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541885, 34.176754, 40.738644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312891, -0.835035, 0.452565,
		-0.755652, -0.507529, -0.414012,
		0.575404, -0.212441, -0.789797,
		41.714508, 34.113022, 40.501705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003742, 33.735416, 40.701172>,  <41.311726, 34.261730, 41.054562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003742, 33.735416, 40.701172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403389, 33.727867, 40.686169>,  <41.643177, 33.723339, 40.677166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403389, 33.727867, 40.686169>,  <41.003742, 33.735416, 40.701172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403389, 33.727867, 40.686169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004586, -0.937028, 0.349224,
		-0.041738, -0.348744, -0.936288,
		0.999118, -0.018870, -0.037511,
		41.703125, 33.722206, 40.674915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334270, 33.230091, 40.133224>,  <41.003742, 33.735416, 40.701172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334270, 33.230091, 40.133224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598930, 33.278225, 40.429260>,  <41.757725, 33.307106, 40.606884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598930, 33.278225, 40.429260>,  <41.334270, 33.230091, 40.133224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598930, 33.278225, 40.429260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131869, -0.952978, 0.272841,
		0.738126, -0.278121, -0.614669,
		0.661649, 0.120336, 0.740094,
		41.797424, 33.314327, 40.651287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861366, 32.810757, 39.907803>,  <41.334270, 33.230091, 40.133224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861366, 32.810757, 39.907803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824528, 32.858860, 40.303188>,  <41.802425, 32.887722, 40.540421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824528, 32.858860, 40.303188>,  <41.861366, 32.810757, 39.907803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824528, 32.858860, 40.303188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112585, -0.985057, 0.130333,
		0.989365, 0.123289, 0.077177,
		-0.092092, 0.120258, 0.988462,
		41.796902, 32.894936, 40.599728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453667, 32.585754, 40.214100>,  <41.861366, 32.810757, 39.907803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453667, 32.585754, 40.214100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124332, 32.544903, 40.437416>,  <41.926731, 32.520393, 40.571407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124332, 32.544903, 40.437416>,  <42.453667, 32.585754, 40.214100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124332, 32.544903, 40.437416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148888, -0.988092, 0.038821,
		0.547677, 0.115086, 0.828737,
		-0.823336, -0.102128, 0.558290,
		41.877331, 32.514263, 40.604904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858147, 31.945534, 40.377975>,  <42.453667, 32.585754, 40.214100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858147, 31.945534, 40.377975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623035, 31.899551, 40.698303>,  <42.481968, 31.871962, 40.890499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623035, 31.899551, 40.698303>,  <42.858147, 31.945534, 40.377975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623035, 31.899551, 40.698303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805758, -0.005681, -0.592218,
		0.072634, -0.993353, -0.089295,
		-0.587775, -0.114966, 0.800815,
		42.446701, 31.865065, 40.938549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566795, 31.292297, 40.278755>,  <42.858147, 31.945534, 40.377975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566795, 31.292297, 40.278755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371788, 31.569887, 40.490688>,  <42.254784, 31.736441, 40.617847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371788, 31.569887, 40.490688>,  <42.566795, 31.292297, 40.278755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371788, 31.569887, 40.490688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844642, -0.221151, -0.487517,
		-0.221151, -0.685193, 0.693976,
		0.487517, -0.693976, -0.529835,
		42.225533, 31.778080, 40.649639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885139, 31.042557, 40.554329>,  <42.566795, 31.292297, 40.278755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885139, 31.042557, 40.554329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866909, 31.435492, 40.481731>,  <41.855972, 31.671251, 40.438171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866909, 31.435492, 40.481731>,  <41.885139, 31.042557, 40.554329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866909, 31.435492, 40.481731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832771, -0.137706, -0.536219,
		-0.551740, 0.126710, 0.824335,
		-0.045572, 0.982335, -0.181498,
		41.853237, 31.730192, 40.427280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132305, 30.846470, 40.250622>,  <41.885139, 31.042557, 40.554329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132305, 30.846470, 40.250622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146866, 30.534126, 40.001163>,  <41.155602, 30.346720, 39.851490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146866, 30.534126, 40.001163>,  <41.132305, 30.846470, 40.250622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146866, 30.534126, 40.001163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109611, 0.617174, -0.779155,
		0.993308, 0.096719, -0.063126,
		0.036400, -0.780860, -0.623645,
		41.157787, 30.299868, 39.814072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624775, 30.911272, 39.734974>,  <41.132305, 30.846470, 40.250622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624775, 30.911272, 39.734974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315533, 30.685312, 39.619598>,  <41.129986, 30.549736, 39.550373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315533, 30.685312, 39.619598>,  <41.624775, 30.911272, 39.734974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315533, 30.685312, 39.619598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359935, 0.765169, -0.533819,
		0.522259, -0.308879, -0.794883,
		-0.773106, -0.564898, -0.288440,
		41.083603, 30.515842, 39.533066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626492, 30.953005, 39.037651>,  <41.624775, 30.911272, 39.734974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626492, 30.953005, 39.037651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260891, 30.887527, 39.186142>,  <41.041531, 30.848240, 39.275238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260891, 30.887527, 39.186142>,  <41.626492, 30.953005, 39.037651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260891, 30.887527, 39.186142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368257, 0.718732, -0.589755,
		-0.170273, -0.675743, -0.717202,
		-0.913999, -0.163695, 0.371228,
		40.986691, 30.838419, 39.297512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287239, 30.971777, 38.447758>,  <41.626492, 30.953005, 39.037651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287239, 30.971777, 38.447758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035492, 31.032625, 38.752586>,  <40.884445, 31.069134, 38.935486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035492, 31.032625, 38.752586>,  <41.287239, 30.971777, 38.447758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035492, 31.032625, 38.752586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561271, 0.589264, -0.581156,
		-0.537471, -0.793490, -0.285480,
		-0.629365, 0.152123, 0.762075,
		40.846684, 31.078262, 38.981209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092594, 30.849966, 38.353577>,  <41.287239, 30.971777, 38.447758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092594, 30.849966, 38.353577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384193, 30.713531, 38.116184>,  <42.559155, 30.631670, 37.973747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384193, 30.713531, 38.116184>,  <42.092594, 30.849966, 38.353577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384193, 30.713531, 38.116184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494599, 0.861847, 0.112213,
		0.473217, -0.375338, 0.796986,
		0.728998, -0.341087, -0.593482,
		42.602894, 30.611206, 37.938141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584652, 31.296507, 38.307507>,  <42.092594, 30.849966, 38.353577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584652, 31.296507, 38.307507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773354, 31.057878, 38.047798>,  <42.886574, 30.914701, 37.891972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773354, 31.057878, 38.047798>,  <42.584652, 31.296507, 38.307507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773354, 31.057878, 38.047798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754172, 0.654501, -0.053406,
		0.456811, -0.464470, 0.758678,
		0.471750, -0.596570, -0.649274,
		42.914879, 30.878908, 37.853016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201984, 31.328033, 38.595116>,  <42.584652, 31.296507, 38.307507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201984, 31.328033, 38.595116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237625, 31.270428, 38.200893>,  <43.259010, 31.235865, 37.964359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237625, 31.270428, 38.200893>,  <43.201984, 31.328033, 38.595116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237625, 31.270428, 38.200893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800209, 0.599526, -0.015263,
		0.593065, -0.787292, 0.168657,
		0.089098, -0.144013, -0.985557,
		43.264355, 31.227224, 37.905228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832279, 31.205282, 38.376167>,  <43.201984, 31.328033, 38.595116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832279, 31.205282, 38.376167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642857, 31.378437, 38.069351>,  <43.529202, 31.482330, 37.885262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642857, 31.378437, 38.069351>,  <43.832279, 31.205282, 38.376167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642857, 31.378437, 38.069351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752543, 0.651359, -0.097006,
		0.457625, -0.623169, -0.634224,
		-0.473559, 0.432888, -0.767040,
		43.500790, 31.508303, 37.839241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257835, 31.072187, 37.718498>,  <43.832279, 31.205282, 38.376167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257835, 31.072187, 37.718498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034832, 31.402023, 37.680054>,  <43.901031, 31.599924, 37.656986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034832, 31.402023, 37.680054>,  <44.257835, 31.072187, 37.718498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034832, 31.402023, 37.680054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771419, 0.471787, -0.427001,
		-0.306754, -0.312201, -0.899129,
		-0.557507, 0.824589, -0.096115,
		43.867580, 31.649401, 37.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260033, 31.282997, 37.032494>,  <44.257835, 31.072187, 37.718498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260033, 31.282997, 37.032494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223171, 31.605858, 37.265739>,  <44.201054, 31.799574, 37.405685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223171, 31.605858, 37.265739>,  <44.260033, 31.282997, 37.032494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223171, 31.605858, 37.265739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693882, 0.472057, -0.543773,
		-0.714168, 0.354502, -0.603567,
		-0.092149, 0.807149, 0.583111,
		44.195526, 31.848003, 37.440674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054932, 31.709539, 36.422668>,  <44.260033, 31.282997, 37.032494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054932, 31.709539, 36.422668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392784, 31.838568, 36.251770>,  <44.595497, 31.915985, 36.149231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392784, 31.838568, 36.251770>,  <44.054932, 31.709539, 36.422668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392784, 31.838568, 36.251770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177518, 0.921687, 0.344936,
		0.505058, -0.215499, 0.835749,
		0.844633, 0.322573, -0.427250,
		44.646175, 31.935339, 36.123596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454548, 32.119427, 36.936344>,  <44.054932, 31.709539, 36.422668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454548, 32.119427, 36.936344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547348, 32.214558, 36.559067>,  <44.603027, 32.271637, 36.332703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547348, 32.214558, 36.559067>,  <44.454548, 32.119427, 36.936344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547348, 32.214558, 36.559067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254541, 0.950705, 0.177115,
		0.938820, 0.198989, 0.281106,
		0.232005, 0.237832, -0.943192,
		44.616951, 32.285908, 36.276108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973724, 32.680443, 36.863491>,  <44.454548, 32.119427, 36.936344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973724, 32.680443, 36.863491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717525, 32.703152, 36.557148>,  <44.563805, 32.716778, 36.373341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717525, 32.703152, 36.557148>,  <44.973724, 32.680443, 36.863491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717525, 32.703152, 36.557148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099938, 0.982622, 0.156418,
		0.761430, 0.176724, -0.623693,
		-0.640497, 0.056770, -0.765859,
		44.525375, 32.720184, 36.327389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201653, 33.218338, 36.408581>,  <44.973724, 32.680443, 36.863491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201653, 33.218338, 36.408581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806496, 33.161530, 36.383579>,  <44.569401, 33.127445, 36.368580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806496, 33.161530, 36.383579>,  <45.201653, 33.218338, 36.408581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806496, 33.161530, 36.383579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149657, 0.978480, 0.142052,
		0.040984, 0.149686, -0.987884,
		-0.987888, -0.142021, -0.062504,
		44.510128, 33.118923, 36.364830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936596, 33.585037, 35.903660>,  <45.201653, 33.218338, 36.408581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936596, 33.585037, 35.903660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697395, 33.516228, 36.216789>,  <44.553875, 33.474941, 36.404667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697395, 33.516228, 36.216789>,  <44.936596, 33.585037, 35.903660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697395, 33.516228, 36.216789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038644, 0.981749, 0.186214,
		-0.800566, 0.081104, -0.593731,
		-0.597997, -0.172020, 0.782821,
		44.517998, 33.464622, 36.451637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121532, 33.665752, 35.907955>,  <44.936596, 33.585037, 35.903660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121532, 33.665752, 35.907955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352745, 33.774902, 36.215569>,  <44.491470, 33.840393, 36.400139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352745, 33.774902, 36.215569>,  <44.121532, 33.665752, 35.907955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352745, 33.774902, 36.215569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148342, 0.961866, -0.229802,
		-0.802419, 0.018751, 0.596466,
		0.578030, 0.272878, 0.769038,
		44.526154, 33.856766, 36.446281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742134, 34.139729, 36.512558>,  <44.121532, 33.665752, 35.907955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742134, 34.139729, 36.512558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130135, 34.210903, 36.446293>,  <44.362934, 34.253609, 36.406532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130135, 34.210903, 36.446293>,  <43.742134, 34.139729, 36.512558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130135, 34.210903, 36.446293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221554, 0.927533, -0.300993,
		0.100101, 0.328666, 0.939127,
		0.969997, 0.177937, -0.165664,
		44.421135, 34.264286, 36.396595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996864, 34.869804, 36.775055>,  <43.742134, 34.139729, 36.512558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996864, 34.869804, 36.775055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215595, 34.716610, 36.477249>,  <44.346836, 34.624691, 36.298565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215595, 34.716610, 36.477249>,  <43.996864, 34.869804, 36.775055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215595, 34.716610, 36.477249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041429, 0.875774, -0.480941,
		0.836217, 0.293839, 0.463034,
		0.546832, -0.382988, -0.744510,
		44.379646, 34.601715, 36.253895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667274, 35.284603, 36.579929>,  <43.996864, 34.869804, 36.775055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667274, 35.284603, 36.579929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564217, 35.068508, 36.259487>,  <44.502384, 34.938850, 36.067223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564217, 35.068508, 36.259487>,  <44.667274, 35.284603, 36.579929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564217, 35.068508, 36.259487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192663, 0.841167, -0.505291,
		0.946838, 0.024159, -0.320804,
		-0.257642, -0.540236, -0.801103,
		44.486923, 34.906437, 36.019157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227627, 35.861149, 36.618858>,  <44.667274, 35.284603, 36.579929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227627, 35.861149, 36.618858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323303, 35.543873, 36.842873>,  <45.380707, 35.353508, 36.977280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323303, 35.543873, 36.842873>,  <45.227627, 35.861149, 36.618858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323303, 35.543873, 36.842873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436630, -0.427302, -0.791686,
		0.867262, 0.433889, 0.244126,
		0.239188, -0.793192, 0.560031,
		45.395061, 35.305916, 37.010883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.969467, 35.686234, 36.597919>,  <45.227627, 35.861149, 36.618858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.969467, 35.686234, 36.597919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766121, 35.348911, 36.667660>,  <45.644112, 35.146519, 36.709503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766121, 35.348911, 36.667660>,  <45.969467, 35.686234, 36.597919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766121, 35.348911, 36.667660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468747, -0.440832, -0.765469,
		0.722385, -0.307411, 0.619401,
		-0.508366, -0.843306, 0.174353,
		45.613609, 35.095921, 36.719967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436634, 35.284595, 36.438808>,  <45.969467, 35.686234, 36.597919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436634, 35.284595, 36.438808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092278, 35.081245, 36.430687>,  <45.885662, 34.959236, 36.425816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092278, 35.081245, 36.430687>,  <46.436634, 35.284595, 36.438808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092278, 35.081245, 36.430687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192056, -0.287767, -0.938246,
		0.471141, -0.811630, 0.345374,
		-0.860895, -0.508377, -0.020299,
		45.834007, 34.928734, 36.424599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.512489, 34.512333, 36.470867>,  <46.436634, 35.284595, 36.438808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.512489, 34.512333, 36.470867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201286, 34.653629, 36.263046>,  <46.014565, 34.738407, 36.138355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201286, 34.653629, 36.263046>,  <46.512489, 34.512333, 36.470867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201286, 34.653629, 36.263046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463135, -0.236321, -0.854200,
		-0.424518, -0.905193, 0.020261,
		-0.778004, 0.353240, -0.519549,
		45.967884, 34.759602, 36.107182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176659, 34.102787, 35.926411>,  <46.512489, 34.512333, 36.470867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176659, 34.102787, 35.926411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.145664, 34.491425, 35.836967>,  <46.127068, 34.724606, 35.783302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.145664, 34.491425, 35.836967>,  <46.176659, 34.102787, 35.926411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145664, 34.491425, 35.836967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487972, -0.158626, -0.858324,
		-0.869413, -0.175625, -0.461819,
		-0.077487, 0.971593, -0.223612,
		46.122417, 34.782902, 35.769882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030991, 34.073376, 35.165009>,  <46.176659, 34.102787, 35.926411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030991, 34.073376, 35.165009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210678, 34.399654, 35.310802>,  <46.318489, 34.595421, 35.398281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210678, 34.399654, 35.310802>,  <46.030991, 34.073376, 35.165009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210678, 34.399654, 35.310802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600064, 0.026788, -0.799503,
		-0.661913, 0.577865, -0.477434,
		0.449216, 0.815693, 0.364487,
		46.345444, 34.644363, 35.420147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736515, 33.502132, 35.208328>,  <46.030991, 34.073376, 35.165009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736515, 33.502132, 35.208328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371773, 33.665394, 35.225857>,  <45.152927, 33.763351, 35.236374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371773, 33.665394, 35.225857>,  <45.736515, 33.502132, 35.208328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371773, 33.665394, 35.225857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392990, -0.837119, -0.380513,
		-0.118623, -0.364197, 0.923737,
		-0.911859, 0.408157, 0.043824,
		45.098213, 33.787842, 35.239002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191135, 32.943691, 35.359547>,  <45.736515, 33.502132, 35.208328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191135, 32.943691, 35.359547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271267, 32.556316, 35.300220>,  <46.319347, 32.323891, 35.264626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271267, 32.556316, 35.300220>,  <46.191135, 32.943691, 35.359547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271267, 32.556316, 35.300220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921199, -0.237731, 0.308022,
		-0.333559, 0.074920, -0.939748,
		0.200330, -0.968437, -0.148313,
		46.331367, 32.265785, 35.255726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942894, 32.875641, 35.315384>,  <46.191135, 32.943691, 35.359547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942894, 32.875641, 35.315384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008953, 32.970604, 34.932476>,  <47.048588, 33.027580, 34.702732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008953, 32.970604, 34.932476>,  <46.942894, 32.875641, 35.315384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008953, 32.970604, 34.932476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957468, -0.271437, 0.097862,
		-0.236606, -0.932716, -0.272136,
		0.165145, 0.237407, -0.957269,
		47.058498, 33.041824, 34.645294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.884754, 33.328407, 35.865898>,  <46.942894, 32.875641, 35.315384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.884754, 33.328407, 35.865898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786034, 33.154892, 36.212521>,  <46.726799, 33.050781, 36.420494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786034, 33.154892, 36.212521>,  <46.884754, 33.328407, 35.865898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.786034, 33.154892, 36.212521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767640, 0.458256, 0.448030,
		-0.591454, 0.775777, 0.219894,
		-0.246804, -0.433788, 0.866554,
		46.711994, 33.024757, 36.472488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908703, 33.806374, 36.326656>,  <46.884754, 33.328407, 35.865898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908703, 33.806374, 36.326656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968781, 33.461182, 36.519615>,  <47.004826, 33.254066, 36.635391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968781, 33.461182, 36.519615>,  <46.908703, 33.806374, 36.326656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.968781, 33.461182, 36.519615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817882, 0.382579, 0.429770,
		-0.555438, 0.329995, 0.763277,
		0.150191, -0.862981, 0.482396,
		47.013840, 33.202286, 36.664333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.028122, 34.028709, 35.566486>,  <46.908703, 33.806374, 36.326656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.028122, 34.028709, 35.566486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.383358, 33.997803, 35.385239>,  <47.596500, 33.979259, 35.276489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.383358, 33.997803, 35.385239>,  <47.028122, 34.028709, 35.566486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.383358, 33.997803, 35.385239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091890, 0.936028, -0.339717,
		0.450387, 0.343338, 0.824179,
		0.888092, -0.077270, -0.453124,
		47.649784, 33.974621, 35.249302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.451694, 34.635887, 35.674160>,  <47.028122, 34.028709, 35.566486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.451694, 34.635887, 35.674160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518337, 34.496574, 35.305172>,  <47.558323, 34.412987, 35.083778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518337, 34.496574, 35.305172>,  <47.451694, 34.635887, 35.674160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.518337, 34.496574, 35.305172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082526, 0.927334, -0.365023,
		0.982564, 0.136942, 0.125757,
		0.166606, -0.348280, -0.922466,
		47.568317, 34.392090, 35.028431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.910534, 35.082790, 35.380932>,  <47.451694, 34.635887, 35.674160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.910534, 35.082790, 35.380932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673668, 34.925392, 35.099648>,  <47.531548, 34.830956, 34.930878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673668, 34.925392, 35.099648>,  <47.910534, 35.082790, 35.380932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673668, 34.925392, 35.099648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201616, 0.917261, -0.343488,
		0.780189, -0.061622, -0.622501,
		-0.592163, -0.393492, -0.703212,
		47.496017, 34.807346, 34.888683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.246330, 30.499517, 29.246035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093155, 30.269716, 29.535395>,  <37.001251, 30.131836, 29.709011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093155, 30.269716, 29.535395>,  <37.246330, 30.499517, 29.246035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093155, 30.269716, 29.535395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539181, 0.496859, 0.680011,
		-0.750096, 0.650444, 0.119496,
		-0.382936, -0.574503, 0.723399,
		36.978275, 30.097364, 29.752415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987709, 30.969543, 29.669306>,  <37.246330, 30.499517, 29.246035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987709, 30.969543, 29.669306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032700, 30.648294, 29.903345>,  <37.059696, 30.455545, 30.043768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032700, 30.648294, 29.903345>,  <36.987709, 30.969543, 29.669306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032700, 30.648294, 29.903345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495078, 0.555839, 0.667788,
		-0.861537, 0.214557, 0.460130,
		0.112479, -0.803125, 0.585098,
		37.066444, 30.407356, 30.078875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854168, 31.174295, 30.308289>,  <36.987709, 30.969543, 29.669306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854168, 31.174295, 30.308289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056862, 30.844557, 30.409220>,  <37.178478, 30.646713, 30.469778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056862, 30.844557, 30.409220>,  <36.854168, 31.174295, 30.308289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056862, 30.844557, 30.409220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373965, 0.473907, 0.797221,
		-0.776766, -0.309622, 0.548424,
		0.506739, -0.824346, 0.252327,
		37.208885, 30.597254, 30.484919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746540, 31.090000, 31.148918>,  <36.854168, 31.174295, 30.308289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746540, 31.090000, 31.148918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068268, 30.892637, 31.016485>,  <37.261307, 30.774220, 30.937025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068268, 30.892637, 31.016485>,  <36.746540, 31.090000, 31.148918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068268, 30.892637, 31.016485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501927, 0.265974, 0.822999,
		-0.318014, -0.828135, 0.461583,
		0.804323, -0.493406, -0.331080,
		37.309566, 30.744616, 30.917162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867470, 30.685379, 31.765465>,  <36.746540, 31.090000, 31.148918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867470, 30.685379, 31.765465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202320, 30.675694, 31.546873>,  <37.403229, 30.669882, 31.415718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202320, 30.675694, 31.546873>,  <36.867470, 30.685379, 31.765465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202320, 30.675694, 31.546873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536086, 0.235004, 0.810793,
		0.108794, -0.971693, 0.209706,
		0.837123, -0.024211, -0.546478,
		37.453457, 30.668430, 31.382929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373260, 30.189135, 32.101231>,  <36.867470, 30.685379, 31.765465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373260, 30.189135, 32.101231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.567490, 30.462044, 31.882612>,  <37.684029, 30.625790, 31.751440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.567490, 30.462044, 31.882612>,  <37.373260, 30.189135, 32.101231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567490, 30.462044, 31.882612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490709, 0.304685, 0.816316,
		0.723477, -0.664581, -0.186850,
		0.485577, 0.682275, -0.546549,
		37.713161, 30.666727, 31.718647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033718, 30.249359, 32.395893>,  <37.373260, 30.189135, 32.101231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033718, 30.249359, 32.395893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.069199, 30.559584, 32.145889>,  <38.090488, 30.745718, 31.995886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.069199, 30.559584, 32.145889>,  <38.033718, 30.249359, 32.395893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069199, 30.559584, 32.145889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543065, 0.488363, 0.683068,
		0.834993, -0.400010, -0.377862,
		0.088700, 0.775560, -0.625011,
		38.095810, 30.792252, 31.958385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784191, 30.485558, 32.336506>,  <38.033718, 30.249359, 32.395893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784191, 30.485558, 32.336506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560955, 30.799263, 32.228092>,  <38.427013, 30.987486, 32.163044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560955, 30.799263, 32.228092>,  <38.784191, 30.485558, 32.336506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560955, 30.799263, 32.228092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652109, 0.616522, 0.441197,
		0.513113, 0.069486, -0.855504,
		-0.558094, 0.784266, -0.271033,
		38.393528, 31.034542, 32.146782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268803, 30.931053, 32.161118>,  <38.784191, 30.485558, 32.336506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268803, 30.931053, 32.161118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938419, 31.135868, 32.255447>,  <38.740189, 31.258757, 32.312046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938419, 31.135868, 32.255447>,  <39.268803, 30.931053, 32.161118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938419, 31.135868, 32.255447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562626, 0.722531, 0.401748,
		0.035316, 0.464510, -0.884864,
		-0.825957, 0.512035, 0.235829,
		38.690632, 31.289478, 32.326195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437099, 31.686226, 32.001556>,  <39.268803, 30.931053, 32.161118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437099, 31.686226, 32.001556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132786, 31.685024, 32.261154>,  <38.950199, 31.684303, 32.416912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132786, 31.685024, 32.261154>,  <39.437099, 31.686226, 32.001556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132786, 31.685024, 32.261154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395755, 0.790409, 0.467581,
		-0.514379, 0.612572, -0.600141,
		-0.760784, -0.003005, 0.648998,
		38.904552, 31.684122, 32.455853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281364, 32.357960, 32.042412>,  <39.437099, 31.686226, 32.001556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281364, 32.357960, 32.042412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.126877, 32.184910, 32.368275>,  <39.034184, 32.081081, 32.563793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.126877, 32.184910, 32.368275>,  <39.281364, 32.357960, 32.042412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126877, 32.184910, 32.368275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594366, 0.558670, 0.578461,
		-0.705382, 0.707620, 0.041366,
		-0.386220, -0.432622, 0.814661,
		39.011009, 32.055122, 32.612675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274570, 32.932838, 32.575684>,  <39.281364, 32.357960, 32.042412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274570, 32.932838, 32.575684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213444, 32.600628, 32.789925>,  <39.176769, 32.401302, 32.918468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213444, 32.600628, 32.789925>,  <39.274570, 32.932838, 32.575684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213444, 32.600628, 32.789925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655892, 0.320166, 0.683593,
		-0.739225, 0.455761, 0.495811,
		-0.152813, -0.830527, 0.535605,
		39.167599, 32.351471, 32.950607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027428, 33.037655, 33.293617>,  <39.274570, 32.932838, 32.575684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027428, 33.037655, 33.293617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.197647, 32.675690, 33.296139>,  <39.299778, 32.458511, 33.297653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.197647, 32.675690, 33.296139>,  <39.027428, 33.037655, 33.293617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197647, 32.675690, 33.296139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561791, 0.269640, 0.782103,
		-0.709433, -0.329285, 0.623118,
		0.425553, -0.904912, 0.006302,
		39.325314, 32.404217, 33.298031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029316, 32.791004, 33.995438>,  <39.027428, 33.037655, 33.293617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029316, 32.791004, 33.995438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319256, 32.574280, 33.825245>,  <39.493217, 32.444244, 33.723129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319256, 32.574280, 33.825245>,  <39.029316, 32.791004, 33.995438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319256, 32.574280, 33.825245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552547, 0.088363, 0.828785,
		-0.411450, -0.835841, 0.363427,
		0.724846, -0.541814, -0.425484,
		39.536709, 32.411736, 33.697601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411118, 32.500149, 34.462032>,  <39.029316, 32.791004, 33.995438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411118, 32.500149, 34.462032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681599, 32.449074, 34.171806>,  <39.843887, 32.418430, 33.997673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681599, 32.449074, 34.171806>,  <39.411118, 32.500149, 34.462032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681599, 32.449074, 34.171806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736255, 0.151791, 0.659460,
		0.025931, -0.980131, 0.196651,
		0.676207, -0.127684, -0.725562,
		39.884460, 32.410770, 33.954136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962261, 32.148285, 34.783520>,  <39.411118, 32.500149, 34.462032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962261, 32.148285, 34.783520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136143, 32.317326, 34.465412>,  <40.240471, 32.418751, 34.274548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136143, 32.317326, 34.465412>,  <39.962261, 32.148285, 34.783520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136143, 32.317326, 34.465412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744427, 0.328345, 0.581393,
		0.506817, -0.844749, -0.171861,
		0.434701, 0.422598, -0.795265,
		40.266552, 32.444103, 34.226833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640854, 31.922794, 34.726398>,  <39.962261, 32.148285, 34.783520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640854, 31.922794, 34.726398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661129, 32.259483, 34.511387>,  <40.673294, 32.461498, 34.382381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661129, 32.259483, 34.511387>,  <40.640854, 31.922794, 34.726398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661129, 32.259483, 34.511387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803166, 0.285538, 0.522869,
		0.593595, -0.458227, -0.661569,
		0.050689, 0.841722, -0.537526,
		40.676334, 32.512001, 34.350128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264717, 32.073200, 34.691368>,  <40.640854, 31.922794, 34.726398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264717, 32.073200, 34.691368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.117119, 32.437336, 34.616405>,  <41.028561, 32.655819, 34.571430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.117119, 32.437336, 34.616405>,  <41.264717, 32.073200, 34.691368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117119, 32.437336, 34.616405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624263, 0.392134, 0.675667,
		0.688575, 0.132331, -0.712989,
		-0.368998, 0.910340, -0.187404,
		41.006420, 32.710438, 34.560184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905033, 32.442715, 34.605015>,  <41.264717, 32.073200, 34.691368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905033, 32.442715, 34.605015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.612778, 32.708572, 34.667511>,  <41.437424, 32.868088, 34.705009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.612778, 32.708572, 34.667511>,  <41.905033, 32.442715, 34.605015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612778, 32.708572, 34.667511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587784, 0.495878, 0.639230,
		0.347387, 0.558882, -0.752977,
		-0.730639, 0.664647, 0.156240,
		41.393585, 32.907967, 34.714382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136082, 33.035332, 34.653378>,  <41.905033, 32.442715, 34.605015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136082, 33.035332, 34.653378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.803658, 33.129169, 34.855091>,  <41.604202, 33.185471, 34.976120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.803658, 33.129169, 34.855091>,  <42.136082, 33.035332, 34.653378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803658, 33.129169, 34.855091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513949, 0.670482, 0.535080,
		-0.212586, 0.703861, -0.677781,
		-0.831062, 0.234594, 0.504284,
		41.554340, 33.199547, 35.006374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020058, 33.761520, 34.579029>,  <42.136082, 33.035332, 34.653378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020058, 33.761520, 34.579029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.868465, 33.636406, 34.927406>,  <41.777508, 33.561337, 35.136433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.868465, 33.636406, 34.927406>,  <42.020058, 33.761520, 34.579029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868465, 33.636406, 34.927406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574026, 0.658743, 0.486366,
		-0.725855, 0.684266, -0.070104,
		-0.378984, -0.312790, 0.870938,
		41.754768, 33.542568, 35.188686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084789, 34.457310, 34.606651>,  <42.020058, 33.761520, 34.579029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084789, 34.457310, 34.606651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.958073, 34.827808, 34.524960>,  <41.882042, 35.050106, 34.475945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.958073, 34.827808, 34.524960>,  <42.084789, 34.457310, 34.606651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958073, 34.827808, 34.524960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572258, -0.358362, -0.737629,
		-0.756416, -0.116799, 0.643578,
		-0.316788, 0.926248, -0.204232,
		41.863037, 35.105682, 34.463692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291416, 34.445030, 34.563877>,  <42.084789, 34.457310, 34.606651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291416, 34.445030, 34.563877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433228, 34.764194, 34.368881>,  <41.518314, 34.955692, 34.251884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433228, 34.764194, 34.368881>,  <41.291416, 34.445030, 34.563877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433228, 34.764194, 34.368881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654008, -0.161002, -0.739156,
		-0.668269, 0.580872, 0.464762,
		0.354528, 0.797913, -0.487488,
		41.539585, 35.003567, 34.222633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658329, 34.855186, 34.452560>,  <41.291416, 34.445030, 34.563877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658329, 34.855186, 34.452560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.900265, 35.012363, 34.175503>,  <41.045425, 35.106670, 34.009266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.900265, 35.012363, 34.175503>,  <40.658329, 34.855186, 34.452560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900265, 35.012363, 34.175503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672942, -0.212877, -0.708402,
		-0.425810, 0.894584, 0.135670,
		0.604844, 0.392942, -0.692648,
		41.081718, 35.130245, 33.967709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289330, 35.411934, 34.159454>,  <40.658329, 34.855186, 34.452560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289330, 35.411934, 34.159454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.574726, 35.300312, 33.902374>,  <40.745964, 35.233337, 33.748127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.574726, 35.300312, 33.902374>,  <40.289330, 35.411934, 34.159454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574726, 35.300312, 33.902374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684179, -0.079675, -0.724949,
		0.151095, 0.956964, -0.247772,
		0.713491, -0.279057, -0.642695,
		40.788773, 35.216595, 33.709564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130070, 35.748138, 33.561275>,  <40.289330, 35.411934, 34.159454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130070, 35.748138, 33.561275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373173, 35.465000, 33.417286>,  <40.519035, 35.295116, 33.330891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373173, 35.465000, 33.417286>,  <40.130070, 35.748138, 33.561275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373173, 35.465000, 33.417286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616706, -0.135120, -0.775511,
		0.500305, 0.693320, -0.518655,
		0.607757, -0.707849, -0.359973,
		40.555500, 35.252644, 33.309296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197216, 35.908524, 32.763062>,  <40.130070, 35.748138, 33.561275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197216, 35.908524, 32.763062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.296410, 35.525986, 32.824913>,  <40.355927, 35.296463, 32.862022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.296410, 35.525986, 32.824913>,  <40.197216, 35.908524, 32.763062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296410, 35.525986, 32.824913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610665, -0.278221, -0.741405,
		0.752059, 0.089431, -0.653000,
		0.247983, -0.956345, 0.154627,
		40.370804, 35.239082, 32.871300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299751, 35.660984, 32.083122>,  <40.197216, 35.908524, 32.763062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299751, 35.660984, 32.083122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.293377, 35.312576, 32.279518>,  <40.289551, 35.103531, 32.397354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.293377, 35.312576, 32.279518>,  <40.299751, 35.660984, 32.083122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293377, 35.312576, 32.279518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319169, -0.460927, -0.828056,
		0.947564, -0.169902, -0.270659,
		-0.015934, -0.871022, 0.490986,
		40.288597, 35.051270, 32.426815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723652, 35.150372, 31.694660>,  <40.299751, 35.660984, 32.083122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723652, 35.150372, 31.694660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481548, 34.924591, 31.919182>,  <40.336285, 34.789124, 32.053894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481548, 34.924591, 31.919182>,  <40.723652, 35.150372, 31.694660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481548, 34.924591, 31.919182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272760, -0.515386, -0.812391,
		0.747840, -0.644808, 0.157983,
		-0.605258, -0.564447, 0.561304,
		40.299973, 34.755257, 32.087574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801743, 34.443577, 31.435318>,  <40.723652, 35.150372, 31.694660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801743, 34.443577, 31.435318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.442417, 34.455544, 31.610653>,  <40.226822, 34.462723, 31.715855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.442417, 34.455544, 31.610653>,  <40.801743, 34.443577, 31.435318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442417, 34.455544, 31.610653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341050, -0.676450, -0.652764,
		0.276985, -0.735881, 0.617866,
		-0.898312, 0.029917, 0.438339,
		40.172924, 34.464520, 31.742155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573666, 33.779655, 31.502184>,  <40.801743, 34.443577, 31.435318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573666, 33.779655, 31.502184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227795, 33.976738, 31.541340>,  <40.020271, 34.094986, 31.564833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227795, 33.976738, 31.541340>,  <40.573666, 33.779655, 31.502184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227795, 33.976738, 31.541340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461115, -0.701205, -0.543769,
		-0.199275, -0.515321, 0.833506,
		-0.864674, 0.492702, 0.097889,
		39.968391, 34.124550, 31.570707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075672, 33.253700, 31.610676>,  <40.573666, 33.779655, 31.502184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075672, 33.253700, 31.610676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.899361, 33.578754, 31.458183>,  <39.793571, 33.773785, 31.366688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.899361, 33.578754, 31.458183>,  <40.075672, 33.253700, 31.610676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899361, 33.578754, 31.458183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491762, -0.573930, -0.654809,
		-0.750921, -0.101153, 0.652600,
		-0.440782, 0.812633, -0.381232,
		39.767124, 33.822544, 31.343813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357529, 33.017326, 31.278341>,  <40.075672, 33.253700, 31.610676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357529, 33.017326, 31.278341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407352, 33.381695, 31.121006>,  <39.437248, 33.600315, 31.026606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407352, 33.381695, 31.121006>,  <39.357529, 33.017326, 31.278341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407352, 33.381695, 31.121006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625254, -0.235747, -0.743963,
		-0.770417, 0.338606, 0.540189,
		0.124563, 0.910917, -0.393338,
		39.444721, 33.654968, 31.003004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618832, 33.249001, 31.110571>,  <39.357529, 33.017326, 31.278341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618832, 33.249001, 31.110571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896000, 33.449593, 30.903349>,  <39.062302, 33.569950, 30.779016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896000, 33.449593, 30.903349>,  <38.618832, 33.249001, 31.110571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896000, 33.449593, 30.903349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506189, -0.173324, -0.844826,
		-0.513456, 0.847629, 0.133746,
		0.692918, 0.501482, -0.518055,
		39.103874, 33.600037, 30.747932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282684, 33.722122, 30.695415>,  <38.618832, 33.249001, 31.110571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282684, 33.722122, 30.695415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635899, 33.658665, 30.518742>,  <38.847828, 33.620590, 30.412737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635899, 33.658665, 30.518742>,  <38.282684, 33.722122, 30.695415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635899, 33.658665, 30.518742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451562, -0.030837, -0.891707,
		0.127847, 0.986854, -0.098869,
		0.883033, -0.158648, -0.441683,
		38.900810, 33.611069, 30.386236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208641, 34.006737, 30.055698>,  <38.282684, 33.722122, 30.695415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208641, 34.006737, 30.055698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522526, 33.775856, 29.965305>,  <38.710857, 33.637329, 29.911070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522526, 33.775856, 29.965305>,  <38.208641, 34.006737, 30.055698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522526, 33.775856, 29.965305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345321, -0.104319, -0.932669,
		0.514762, 0.809912, -0.281180,
		0.784712, -0.577200, -0.225980,
		38.757938, 33.602695, 29.897511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319057, 34.177067, 29.399151>,  <38.208641, 34.006737, 30.055698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319057, 34.177067, 29.399151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504845, 33.824261, 29.430939>,  <38.616318, 33.612576, 29.450010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504845, 33.824261, 29.430939>,  <38.319057, 34.177067, 29.399151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504845, 33.824261, 29.430939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485552, -0.328676, -0.810069,
		0.740614, 0.337666, -0.580924,
		0.464468, -0.882017, 0.079468,
		38.644184, 33.559654, 29.454779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403522, 33.985889, 28.678825>,  <38.319057, 34.177067, 29.399151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403522, 33.985889, 28.678825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.490948, 33.653812, 28.883961>,  <38.543404, 33.454567, 29.007042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.490948, 33.653812, 28.883961>,  <38.403522, 33.985889, 28.678825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490948, 33.653812, 28.883961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346158, -0.557328, -0.754692,
		0.912362, -0.012574, -0.409191,
		0.218564, -0.830197, 0.512838,
		38.556519, 33.404755, 29.037811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776802, 33.487804, 28.208855>,  <38.403522, 33.985889, 28.678825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776802, 33.487804, 28.208855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619350, 33.276657, 28.509895>,  <38.524879, 33.149967, 28.690519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619350, 33.276657, 28.509895>,  <38.776802, 33.487804, 28.208855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619350, 33.276657, 28.509895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280569, -0.710643, -0.645188,
		0.875406, -0.465122, 0.131626,
		-0.393630, -0.527871, 0.752600,
		38.501263, 33.118298, 28.735676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935059, 32.848209, 28.102789>,  <38.776802, 33.487804, 28.208855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935059, 32.848209, 28.102789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623558, 32.817204, 28.351801>,  <38.436657, 32.798599, 28.501207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623558, 32.817204, 28.351801>,  <38.935059, 32.848209, 28.102789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623558, 32.817204, 28.351801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347521, -0.772855, -0.530966,
		0.522283, -0.629831, 0.574921,
		-0.778749, -0.077518, 0.622528,
		38.389935, 32.793949, 28.538559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.804325, 32.114681, 28.217264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457390, 32.300682, 28.288254>,  <38.249229, 32.412281, 28.330849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457390, 32.300682, 28.288254>,  <38.804325, 32.114681, 28.217264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457390, 32.300682, 28.288254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484049, -0.705072, -0.518238,
		-0.115847, -0.535395, 0.836619,
		-0.867339, 0.465001, 0.177477,
		38.197189, 32.440182, 28.341497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299809, 31.562481, 28.371912>,  <38.804325, 32.114681, 28.217264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299809, 31.562481, 28.371912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080833, 31.882771, 28.274632>,  <37.949448, 32.074944, 28.216263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080833, 31.882771, 28.274632>,  <38.299809, 31.562481, 28.371912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080833, 31.882771, 28.274632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632150, -0.586118, -0.506806,
		-0.548357, -0.123706, 0.827044,
		-0.547440, 0.800727, -0.243201,
		37.916603, 32.122990, 28.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681686, 31.348743, 28.546438>,  <38.299809, 31.562481, 28.371912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681686, 31.348743, 28.546438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598869, 31.668493, 28.320824>,  <37.549179, 31.860344, 28.185455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598869, 31.668493, 28.320824>,  <37.681686, 31.348743, 28.546438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598869, 31.668493, 28.320824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692854, -0.526841, -0.492333,
		-0.690715, 0.288861, 0.662927,
		-0.207041, 0.799374, -0.564035,
		37.536758, 31.908306, 28.151613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006886, 31.518284, 28.694088>,  <37.681686, 31.348743, 28.546438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006886, 31.518284, 28.694088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.095718, 31.682230, 28.340208>,  <37.149017, 31.780598, 28.127880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.095718, 31.682230, 28.340208>,  <37.006886, 31.518284, 28.694088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095718, 31.682230, 28.340208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682180, -0.582978, -0.441325,
		-0.696643, 0.701533, 0.150134,
		0.222079, 0.409864, -0.884699,
		37.162342, 31.805189, 28.074799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423820, 31.696198, 28.473228>,  <37.006886, 31.518284, 28.694088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423820, 31.696198, 28.473228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647903, 31.685387, 28.142065>,  <36.782352, 31.678900, 27.943367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647903, 31.685387, 28.142065>,  <36.423820, 31.696198, 28.473228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647903, 31.685387, 28.142065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704101, -0.542032, -0.458740,
		-0.436356, 0.839923, -0.322682,
		0.560210, -0.027027, -0.827909,
		36.815968, 31.677279, 27.893692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026272, 31.974731, 27.985561>,  <36.423820, 31.696198, 28.473228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026272, 31.974731, 27.985561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291927, 31.727415, 27.817448>,  <36.451321, 31.579025, 27.716579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291927, 31.727415, 27.817448>,  <36.026272, 31.974731, 27.985561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291927, 31.727415, 27.817448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729460, -0.412811, -0.545413,
		0.163726, 0.668810, -0.725182,
		0.664140, -0.618289, -0.420282,
		36.491169, 31.541929, 27.691362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830063, 31.928127, 27.236231>,  <36.026272, 31.974731, 27.985561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830063, 31.928127, 27.236231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081623, 31.619446, 27.274099>,  <36.232559, 31.434237, 27.296820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081623, 31.619446, 27.274099>,  <35.830063, 31.928127, 27.236231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081623, 31.619446, 27.274099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483239, -0.483362, -0.729959,
		0.609071, 0.413321, -0.676903,
		0.628897, -0.771703, 0.094669,
		36.270290, 31.387936, 27.302500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127472, 31.710968, 26.613642>,  <35.830063, 31.928127, 27.236231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127472, 31.710968, 26.613642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162346, 31.380096, 26.835695>,  <36.183270, 31.181574, 26.968927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162346, 31.380096, 26.835695>,  <36.127472, 31.710968, 26.613642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162346, 31.380096, 26.835695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241893, -0.558155, -0.793694,
		0.966378, -0.065083, -0.248753,
		0.087187, -0.827180, 0.555132,
		36.188503, 31.131943, 27.002235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296955, 31.245291, 26.123114>,  <36.127472, 31.710968, 26.613642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296955, 31.245291, 26.123114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.196251, 30.979368, 26.404438>,  <36.135830, 30.819815, 26.573233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.196251, 30.979368, 26.404438>,  <36.296955, 31.245291, 26.123114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196251, 30.979368, 26.404438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411698, -0.584117, -0.699509,
		0.875855, -0.465660, -0.126642,
		-0.251759, -0.664806, 0.703313,
		36.120724, 30.779926, 26.615433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516197, 30.538725, 25.791176>,  <36.296955, 31.245291, 26.123114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516197, 30.538725, 25.791176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264404, 30.461571, 26.092253>,  <36.113327, 30.415277, 26.272900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264404, 30.461571, 26.092253>,  <36.516197, 30.538725, 25.791176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264404, 30.461571, 26.092253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496453, -0.645351, -0.580565,
		0.597735, -0.739132, 0.310477,
		-0.629481, -0.192887, 0.752694,
		36.075562, 30.403706, 26.318062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411163, 29.813507, 25.831453>,  <36.516197, 30.538725, 25.791176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411163, 29.813507, 25.831453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.089268, 29.995789, 25.983631>,  <35.896130, 30.105158, 26.074938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.089268, 29.995789, 25.983631>,  <36.411163, 29.813507, 25.831453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089268, 29.995789, 25.983631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593546, -0.628766, -0.502351,
		0.010286, -0.630070, 0.776470,
		-0.804734, 0.455703, 0.380443,
		35.847847, 30.132500, 26.097763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940899, 29.167671, 26.038483>,  <36.411163, 29.813507, 25.831453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940899, 29.167671, 26.038483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722336, 29.502644, 26.033516>,  <35.591198, 29.703627, 26.030537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722336, 29.502644, 26.033516>,  <35.940899, 29.167671, 26.038483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722336, 29.502644, 26.033516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689295, -0.458070, -0.561289,
		-0.475735, -0.298120, 0.827527,
		-0.546396, 0.837435, -0.012427,
		35.558414, 29.753872, 26.029791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253067, 28.995422, 26.317041>,  <35.940899, 29.167671, 26.038483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253067, 28.995422, 26.317041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.170536, 29.331051, 26.115690>,  <35.121017, 29.532427, 25.994879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.170536, 29.331051, 26.115690>,  <35.253067, 28.995422, 26.317041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170536, 29.331051, 26.115690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768082, -0.457603, -0.447940,
		-0.606201, 0.294214, 0.738890,
		-0.206328, 0.839070, -0.503379,
		35.108639, 29.582771, 25.964676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466114, 29.004940, 26.232273>,  <35.253067, 28.995422, 26.317041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466114, 29.004940, 26.232273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621983, 29.244440, 25.952372>,  <34.715504, 29.388140, 25.784431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621983, 29.244440, 25.952372>,  <34.466114, 29.004940, 26.232273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621983, 29.244440, 25.952372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671189, -0.335631, -0.660952,
		-0.630604, 0.727221, 0.271088,
		0.389672, 0.598750, -0.699753,
		34.738884, 29.424065, 25.742445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840820, 29.311146, 25.982040>,  <34.466114, 29.004940, 26.232273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840820, 29.311146, 25.982040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119190, 29.353170, 25.697886>,  <34.286213, 29.378386, 25.527391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119190, 29.353170, 25.697886>,  <33.840820, 29.311146, 25.982040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119190, 29.353170, 25.697886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625633, -0.396918, -0.671595,
		-0.352527, 0.911821, -0.210493,
		0.695923, 0.105064, -0.710389,
		34.327969, 29.384689, 25.484768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421574, 29.557604, 25.499807>,  <33.840820, 29.311146, 25.982040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421574, 29.557604, 25.499807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.754181, 29.488157, 25.288740>,  <33.953747, 29.446489, 25.162100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.754181, 29.488157, 25.288740>,  <33.421574, 29.557604, 25.499807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754181, 29.488157, 25.288740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554713, -0.209084, -0.805343,
		0.029495, 0.962362, -0.270165,
		0.831519, -0.173617, -0.527668,
		34.003635, 29.436071, 25.130440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228207, 29.823547, 24.844408>,  <33.421574, 29.557604, 25.499807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228207, 29.823547, 24.844408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530853, 29.566103, 24.798285>,  <33.712440, 29.411636, 24.770611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530853, 29.566103, 24.798285>,  <33.228207, 29.823547, 24.844408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530853, 29.566103, 24.798285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435295, -0.364221, -0.823323,
		0.487902, 0.673134, -0.555736,
		0.756618, -0.643610, -0.115307,
		33.757839, 29.373020, 24.763693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540955, 29.888256, 24.149620>,  <33.228207, 29.823547, 24.844408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540955, 29.888256, 24.149620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595039, 29.505661, 24.253038>,  <33.627491, 29.276104, 24.315088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595039, 29.505661, 24.253038>,  <33.540955, 29.888256, 24.149620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595039, 29.505661, 24.253038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595723, -0.286986, -0.750168,
		0.791727, -0.052591, -0.608606,
		0.135210, -0.956490, 0.258545,
		33.635601, 29.218714, 24.330603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580147, 29.558220, 23.502731>,  <33.540955, 29.888256, 24.149620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580147, 29.558220, 23.502731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495659, 29.294695, 23.791550>,  <33.444965, 29.136580, 23.964842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495659, 29.294695, 23.791550>,  <33.580147, 29.558220, 23.502731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495659, 29.294695, 23.791550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754351, -0.359883, -0.549035,
		0.621563, -0.660645, -0.420961,
		-0.211220, -0.658812, 0.722048,
		33.432293, 29.097052, 24.008163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214897, 29.004444, 23.095531>,  <33.580147, 29.558220, 23.502731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214897, 29.004444, 23.095531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124275, 28.940714, 23.479883>,  <33.069901, 28.902475, 23.710495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124275, 28.940714, 23.479883>,  <33.214897, 29.004444, 23.095531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124275, 28.940714, 23.479883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820843, -0.499813, -0.276412,
		0.524299, -0.851353, -0.017544,
		-0.226555, -0.159324, 0.960879,
		33.056309, 28.892918, 23.768147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956783, 28.285572, 23.131376>,  <33.214897, 29.004444, 23.095531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956783, 28.285572, 23.131376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839611, 28.459333, 23.472078>,  <32.769306, 28.563591, 23.676498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839611, 28.459333, 23.472078>,  <32.956783, 28.285572, 23.131376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839611, 28.459333, 23.472078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814051, -0.580569, 0.016131,
		0.501509, -0.688645, 0.523695,
		-0.292932, 0.434404, 0.851753,
		32.751732, 28.589655, 23.727604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609520, 27.767906, 23.411901>,  <32.956783, 28.285572, 23.131376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609520, 27.767906, 23.411901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498959, 28.106298, 23.594296>,  <32.432621, 28.309334, 23.703732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498959, 28.106298, 23.594296>,  <32.609520, 27.767906, 23.411901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498959, 28.106298, 23.594296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953952, -0.299042, -0.023445,
		0.116525, -0.441469, 0.889678,
		-0.276401, 0.845978, 0.455986,
		32.416039, 28.360092, 23.731091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049507, 27.658516, 23.903326>,  <32.609520, 27.767906, 23.411901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049507, 27.658516, 23.903326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.983820, 28.038744, 23.797911>,  <31.944408, 28.266880, 23.734661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.983820, 28.038744, 23.797911>,  <32.049507, 27.658516, 23.903326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983820, 28.038744, 23.797911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904425, -0.251737, -0.344448,
		-0.393763, 0.181786, 0.901057,
		-0.164214, 0.950570, -0.263537,
		31.934555, 28.323915, 23.718849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496208, 27.982088, 24.147324>,  <32.049507, 27.658516, 23.903326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496208, 27.982088, 24.147324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.573235, 28.184669, 23.811129>,  <31.619450, 28.306219, 23.609411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.573235, 28.184669, 23.811129>,  <31.496208, 27.982088, 24.147324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573235, 28.184669, 23.811129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932583, -0.172028, -0.317325,
		-0.305299, 0.844932, 0.439184,
		0.192566, 0.506455, -0.840489,
		31.631004, 28.336605, 23.558983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842028, 27.539087, 24.699478>,  <31.496208, 27.982088, 24.147324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842028, 27.539087, 24.699478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640566, 27.342916, 24.983961>,  <31.519690, 27.225214, 25.154652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640566, 27.342916, 24.983961>,  <31.842028, 27.539087, 24.699478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640566, 27.342916, 24.983961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783305, 0.087979, 0.615380,
		-0.364370, 0.867031, 0.339842,
		-0.503654, -0.490425, 0.711207,
		31.489470, 27.195789, 25.197323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954670, 27.822880, 25.312614>,  <31.842028, 27.539087, 24.699478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954670, 27.822880, 25.312614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837025, 27.461729, 25.438034>,  <31.766438, 27.245039, 25.513285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837025, 27.461729, 25.438034>,  <31.954670, 27.822880, 25.312614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837025, 27.461729, 25.438034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731313, -0.001370, 0.682041,
		-0.615369, 0.429898, 0.660688,
		-0.294113, -0.902876, 0.313547,
		31.748791, 27.190866, 25.532099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836056, 27.763798, 25.988625>,  <31.954670, 27.822880, 25.312614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836056, 27.763798, 25.988625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.908014, 27.378431, 25.909164>,  <31.951189, 27.147211, 25.861488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.908014, 27.378431, 25.909164>,  <31.836056, 27.763798, 25.988625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908014, 27.378431, 25.909164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708685, -0.013122, 0.705403,
		-0.682205, -0.267680, 0.680399,
		0.179895, -0.963418, -0.198652,
		31.961983, 27.089405, 25.849569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853584, 27.547390, 26.650887>,  <31.836056, 27.763798, 25.988625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853584, 27.547390, 26.650887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.029133, 27.254971, 26.441904>,  <32.134460, 27.079519, 26.316515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.029133, 27.254971, 26.441904>,  <31.853584, 27.547390, 26.650887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029133, 27.254971, 26.441904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607284, -0.187227, 0.772109,
		-0.662268, -0.656134, 0.361786,
		0.438871, -0.731050, -0.522454,
		32.160793, 27.035656, 26.285168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871061, 26.914165, 27.084351>,  <31.853584, 27.547390, 26.650887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871061, 26.914165, 27.084351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172024, 26.874037, 26.823944>,  <32.352600, 26.849958, 26.667700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172024, 26.874037, 26.823944>,  <31.871061, 26.914165, 27.084351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172024, 26.874037, 26.823944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634501, -0.155053, 0.757210,
		-0.176914, -0.982798, -0.053002,
		0.752403, -0.100331, -0.651017,
		32.397743, 26.843939, 26.628639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383030, 26.369810, 27.311108>,  <31.871061, 26.914165, 27.084351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383030, 26.369810, 27.311108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.578083, 26.606867, 27.054674>,  <32.695114, 26.749100, 26.900814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.578083, 26.606867, 27.054674>,  <32.383030, 26.369810, 27.311108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578083, 26.606867, 27.054674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730483, 0.125182, 0.671360,
		0.478127, -0.795680, -0.371871,
		0.487636, 0.592641, -0.641084,
		32.724373, 26.784658, 26.862349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091503, 26.322077, 27.475931>,  <32.383030, 26.369810, 27.311108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091503, 26.322077, 27.475931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085014, 26.665491, 27.270933>,  <33.081120, 26.871540, 27.147934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085014, 26.665491, 27.270933>,  <33.091503, 26.322077, 27.475931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085014, 26.665491, 27.270933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814776, 0.308447, 0.490918,
		0.579549, -0.409602, -0.704521,
		-0.016226, 0.858538, -0.512494,
		33.080147, 26.923052, 27.117186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796856, 26.536819, 27.634634>,  <33.091503, 26.322077, 27.475931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796856, 26.536819, 27.634634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.628563, 26.829803, 27.420538>,  <33.527588, 27.005594, 27.292080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.628563, 26.829803, 27.420538>,  <33.796856, 26.536819, 27.634634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628563, 26.829803, 27.420538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737351, 0.619814, 0.268595,
		0.528486, -0.281655, -0.800858,
		-0.420732, 0.732462, -0.535242,
		33.502342, 27.049541, 27.259966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377251, 26.865196, 27.179060>,  <33.796856, 26.536819, 27.634634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377251, 26.865196, 27.179060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079838, 27.124548, 27.244501>,  <33.901390, 27.280159, 27.283766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079838, 27.124548, 27.244501>,  <34.377251, 26.865196, 27.179060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079838, 27.124548, 27.244501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665723, 0.694663, 0.272499,
		0.063035, 0.311525, -0.948145,
		-0.743532, 0.648379, 0.163601,
		33.856777, 27.319061, 27.293581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503094, 27.519808, 26.819319>,  <34.377251, 26.865196, 27.179060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503094, 27.519808, 26.819319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266121, 27.596167, 27.132391>,  <34.123940, 27.641983, 27.320234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266121, 27.596167, 27.132391>,  <34.503094, 27.519808, 26.819319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266121, 27.596167, 27.132391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717815, 0.566141, 0.405248,
		-0.365745, 0.801899, -0.472428,
		-0.592429, 0.190898, 0.782678,
		34.088390, 27.653437, 27.367195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354271, 28.239592, 26.805605>,  <34.503094, 27.519808, 26.819319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354271, 28.239592, 26.805605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288486, 28.172327, 27.194382>,  <34.249016, 28.131968, 27.427649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288486, 28.172327, 27.194382>,  <34.354271, 28.239592, 26.805605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288486, 28.172327, 27.194382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514567, 0.826030, 0.229989,
		-0.841530, 0.537954, -0.049321,
		-0.164465, -0.168163, 0.971943,
		34.239147, 28.121878, 27.485964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158012, 28.898659, 27.205709>,  <34.354271, 28.239592, 26.805605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158012, 28.898659, 27.205709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313683, 28.640005, 27.468130>,  <34.407085, 28.484814, 27.625584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313683, 28.640005, 27.468130>,  <34.158012, 28.898659, 27.205709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313683, 28.640005, 27.468130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539948, 0.737157, 0.406271,
		-0.746322, 0.196123, 0.636034,
		0.389178, -0.646634, 0.656053,
		34.430435, 28.446014, 27.664946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205719, 29.318243, 27.844912>,  <34.158012, 28.898659, 27.205709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205719, 29.318243, 27.844912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.425159, 28.995235, 27.931578>,  <34.556824, 28.801430, 27.983578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.425159, 28.995235, 27.931578>,  <34.205719, 29.318243, 27.844912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425159, 28.995235, 27.931578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670764, 0.579794, 0.462509,
		-0.499108, -0.108402, 0.859733,
		0.548605, -0.807520, 0.216667,
		34.589741, 28.752979, 27.996578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348156, 29.393938, 28.602222>,  <34.205719, 29.318243, 27.844912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348156, 29.393938, 28.602222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612736, 29.154293, 28.421759>,  <34.771484, 29.010506, 28.313480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612736, 29.154293, 28.421759>,  <34.348156, 29.393938, 28.602222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612736, 29.154293, 28.421759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742266, 0.436861, 0.508127,
		-0.107331, -0.670982, 0.733664,
		0.661453, -0.599112, -0.451159,
		34.811172, 28.974560, 28.286411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713223, 29.137611, 29.166050>,  <34.348156, 29.393938, 28.602222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713223, 29.137611, 29.166050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.956722, 29.073284, 28.855293>,  <35.102821, 29.034687, 28.668839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.956722, 29.073284, 28.855293>,  <34.713223, 29.137611, 29.166050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956722, 29.073284, 28.855293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789429, 0.220171, 0.572998,
		0.078899, -0.962113, 0.260985,
		0.608751, -0.160820, -0.776891,
		35.139347, 29.025038, 28.622227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104782, 28.631765, 29.372555>,  <34.713223, 29.137611, 29.166050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104782, 28.631765, 29.372555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306187, 28.824158, 29.085464>,  <35.427029, 28.939592, 28.913210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306187, 28.824158, 29.085464>,  <35.104782, 28.631765, 29.372555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306187, 28.824158, 29.085464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638272, 0.352810, 0.684203,
		0.582311, -0.802610, -0.129353,
		0.503511, 0.480981, -0.717728,
		35.457241, 28.968452, 28.870146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849255, 28.324451, 29.346292>,  <35.104782, 28.631765, 29.372555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849255, 28.324451, 29.346292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895603, 28.674139, 29.157692>,  <35.923412, 28.883951, 29.044531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895603, 28.674139, 29.157692>,  <35.849255, 28.324451, 29.346292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895603, 28.674139, 29.157692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749006, 0.234869, 0.619537,
		0.652353, -0.424943, -0.627582,
		0.115869, 0.874220, -0.471502,
		35.930363, 28.936405, 29.016241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561001, 28.437809, 29.313898>,  <35.849255, 28.324451, 29.346292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561001, 28.437809, 29.313898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430920, 28.805704, 29.225964>,  <36.352871, 29.026442, 29.173203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430920, 28.805704, 29.225964>,  <36.561001, 28.437809, 29.313898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430920, 28.805704, 29.225964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689404, 0.389709, 0.610615,
		0.647277, 0.047016, -0.760804,
		-0.325200, 0.919737, -0.219836,
		36.333359, 29.081625, 29.160013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118347, 28.877384, 29.008999>,  <36.561001, 28.437809, 29.313898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118347, 28.877384, 29.008999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841339, 29.111568, 29.177595>,  <36.675133, 29.252079, 29.278753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841339, 29.111568, 29.177595>,  <37.118347, 28.877384, 29.008999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841339, 29.111568, 29.177595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706772, 0.433565, 0.559012,
		0.144535, 0.685024, -0.714039,
		-0.692519, 0.585460, 0.421491,
		36.633583, 29.287207, 29.304043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337990, 29.657856, 29.009556>,  <37.118347, 28.877384, 29.008999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337990, 29.657856, 29.009556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.076160, 29.658655, 29.311954>,  <36.919064, 29.659134, 29.493395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.076160, 29.658655, 29.311954>,  <37.337990, 29.657856, 29.009556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076160, 29.658655, 29.311954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591575, 0.623994, 0.510559,
		-0.470719, 0.781426, -0.409630,
		-0.654571, 0.001997, 0.755998,
		36.879787, 29.659254, 29.538754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.061562, 34.273743, 30.123510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.752361, 34.089947, 30.298481>,  <39.566841, 33.979668, 30.403463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.752361, 34.089947, 30.298481>,  <40.061562, 34.273743, 30.123510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752361, 34.089947, 30.298481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349799, 0.266522, 0.898113,
		-0.529260, 0.847250, -0.045291,
		-0.772997, -0.459492, 0.437427,
		39.520462, 33.952099, 30.429708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736694, 34.783024, 30.501009>,  <40.061562, 34.273743, 30.123510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736694, 34.783024, 30.501009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635262, 34.430809, 30.661182>,  <39.574402, 34.219479, 30.757286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635262, 34.430809, 30.661182>,  <39.736694, 34.783024, 30.501009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635262, 34.430809, 30.661182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204968, 0.355653, 0.911866,
		-0.945349, 0.313308, 0.090295,
		-0.253581, -0.880539, 0.400435,
		39.559189, 34.166649, 30.781313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084999, 34.856171, 30.929937>,  <39.736694, 34.783024, 30.501009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084999, 34.856171, 30.929937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.324516, 34.554348, 31.037331>,  <39.468227, 34.373253, 31.101767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.324516, 34.554348, 31.037331>,  <39.084999, 34.856171, 30.929937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324516, 34.554348, 31.037331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194517, 0.462207, 0.865175,
		-0.776922, -0.465838, 0.423542,
		0.598795, -0.754559, 0.268485,
		39.504154, 34.327980, 31.117876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912086, 34.866745, 31.711164>,  <39.084999, 34.856171, 30.929937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912086, 34.866745, 31.711164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249756, 34.663795, 31.641949>,  <39.452358, 34.542027, 31.600418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249756, 34.663795, 31.641949>,  <38.912086, 34.866745, 31.711164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249756, 34.663795, 31.641949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413663, 0.411226, 0.812266,
		-0.340966, -0.757272, 0.557029,
		0.844171, -0.507377, -0.173041,
		39.503006, 34.511581, 31.590036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147682, 34.793526, 32.439632>,  <38.912086, 34.866745, 31.711164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147682, 34.793526, 32.439632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.453827, 34.631153, 32.239857>,  <39.637512, 34.533730, 32.119991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.453827, 34.631153, 32.239857>,  <39.147682, 34.793526, 32.439632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453827, 34.631153, 32.239857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566327, 0.056098, 0.822269,
		-0.305770, -0.912179, 0.272827,
		0.765362, -0.405935, -0.499439,
		39.683437, 34.509373, 32.090027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395424, 34.189148, 32.852287>,  <39.147682, 34.793526, 32.439632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395424, 34.189148, 32.852287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.681648, 34.362675, 32.633282>,  <39.853382, 34.466789, 32.501877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.681648, 34.362675, 32.633282>,  <39.395424, 34.189148, 32.852287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681648, 34.362675, 32.633282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494182, 0.239587, 0.835693,
		0.493714, -0.868563, -0.042945,
		0.715563, 0.433816, -0.547516,
		39.896317, 34.492821, 32.469028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003723, 34.001625, 33.115467>,  <39.395424, 34.189148, 32.852287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003723, 34.001625, 33.115467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.121578, 34.331650, 32.922607>,  <40.192291, 34.529663, 32.806892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.121578, 34.331650, 32.922607>,  <40.003723, 34.001625, 33.115467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121578, 34.331650, 32.922607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641152, 0.203449, 0.739955,
		0.708599, -0.527147, -0.469045,
		0.294639, 0.825060, -0.482145,
		40.209969, 34.579166, 32.777966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735573, 33.988697, 32.913845>,  <40.003723, 34.001625, 33.115467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735573, 33.988697, 32.913845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.635342, 34.375931, 32.915508>,  <40.575203, 34.608273, 32.916508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.635342, 34.375931, 32.915508>,  <40.735573, 33.988697, 32.913845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635342, 34.375931, 32.915508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796173, 0.203634, 0.569774,
		0.550744, 0.146085, -0.821791,
		-0.250580, 0.968087, 0.004159,
		40.560169, 34.666355, 32.916756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316105, 34.362816, 32.701069>,  <40.735573, 33.988697, 32.913845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316105, 34.362816, 32.701069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.087296, 34.615543, 32.910297>,  <40.950008, 34.767178, 33.035835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.087296, 34.615543, 32.910297>,  <41.316105, 34.362816, 32.701069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087296, 34.615543, 32.910297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795766, 0.272866, 0.540648,
		0.198862, 0.725502, -0.658863,
		-0.572023, 0.631815, 0.523067,
		40.915688, 34.805088, 33.067219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653873, 35.009747, 32.703999>,  <41.316105, 34.362816, 32.701069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653873, 35.009747, 32.703999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.410831, 35.081081, 33.013580>,  <41.265007, 35.123882, 33.199329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.410831, 35.081081, 33.013580>,  <41.653873, 35.009747, 32.703999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410831, 35.081081, 33.013580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778008, 0.329630, 0.534835,
		-0.159739, 0.927114, -0.339033,
		-0.607608, 0.178336, 0.773956,
		41.228550, 35.134583, 33.245766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885551, 35.588047, 33.020500>,  <41.653873, 35.009747, 32.703999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885551, 35.588047, 33.020500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650875, 35.455544, 33.316086>,  <41.510071, 35.376041, 33.493439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650875, 35.455544, 33.316086>,  <41.885551, 35.588047, 33.020500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650875, 35.455544, 33.316086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666977, 0.319872, 0.672922,
		-0.459284, 0.887666, 0.033276,
		-0.586686, -0.331256, 0.738965,
		41.474869, 35.356167, 33.537777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823071, 36.090645, 33.488605>,  <41.885551, 35.588047, 33.020500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823071, 36.090645, 33.488605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.712242, 35.776958, 33.710682>,  <41.645744, 35.588745, 33.843925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.712242, 35.776958, 33.710682>,  <41.823071, 36.090645, 33.488605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712242, 35.776958, 33.710682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519580, 0.363759, 0.773121,
		-0.808250, 0.502674, 0.306677,
		-0.277071, -0.784218, 0.555188,
		41.629120, 35.541695, 33.877239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664158, 36.312981, 34.226482>,  <41.823071, 36.090645, 33.488605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664158, 36.312981, 34.226482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.752476, 35.922871, 34.222710>,  <41.805466, 35.688805, 34.220448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.752476, 35.922871, 34.222710>,  <41.664158, 36.312981, 34.226482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752476, 35.922871, 34.222710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702722, 0.152369, 0.694957,
		-0.676337, -0.160072, 0.718989,
		0.220795, -0.975275, -0.009433,
		41.818714, 35.630287, 34.219879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379932, 37.031506, 34.321259>,  <41.664158, 36.312981, 34.226482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379932, 37.031506, 34.321259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.774960, 37.062187, 34.376133>,  <42.011978, 37.080597, 34.409058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.774960, 37.062187, 34.376133>,  <41.379932, 37.031506, 34.321259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774960, 37.062187, 34.376133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145087, 0.780544, 0.608030,
		-0.060439, -0.620376, 0.781972,
		0.987571, 0.076705, 0.137184,
		42.071232, 37.085197, 34.417290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661453, 37.437862, 34.371677>,  <41.379932, 37.031506, 34.321259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661453, 37.437862, 34.371677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.485359, 37.792656, 34.427471>,  <40.379704, 38.005531, 34.460949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.485359, 37.792656, 34.427471>,  <40.661453, 37.437862, 34.371677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485359, 37.792656, 34.427471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849565, -0.361215, -0.384399,
		-0.290571, -0.287728, 0.912569,
		-0.440236, 0.886982, 0.139485,
		40.353287, 38.058750, 34.469318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124676, 37.368370, 34.828545>,  <40.661453, 37.437862, 34.371677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124676, 37.368370, 34.828545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.066227, 37.684837, 34.590992>,  <40.031158, 37.874718, 34.448460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.066227, 37.684837, 34.590992>,  <40.124676, 37.368370, 34.828545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066227, 37.684837, 34.590992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838918, -0.417251, -0.349455,
		-0.524277, 0.447156, 0.724697,
		-0.146119, 0.791172, -0.593882,
		40.022392, 37.922188, 34.412827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340050, 37.363045, 34.717152>,  <40.124676, 37.368370, 34.828545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340050, 37.363045, 34.717152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469067, 37.620548, 34.439579>,  <39.546478, 37.775051, 34.273037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469067, 37.620548, 34.439579>,  <39.340050, 37.363045, 34.717152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469067, 37.620548, 34.439579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859665, -0.107600, -0.499397,
		-0.396158, 0.757626, 0.518711,
		0.322543, 0.643758, -0.693932,
		39.565830, 37.813675, 34.231400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677715, 37.758617, 34.487705>,  <39.340050, 37.363045, 34.717152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677715, 37.758617, 34.487705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.957405, 37.813835, 34.207127>,  <39.125217, 37.846966, 34.038780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.957405, 37.813835, 34.207127>,  <38.677715, 37.758617, 34.487705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957405, 37.813835, 34.207127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695273, -0.097048, -0.712164,
		-0.166387, 0.985660, 0.028123,
		0.699222, 0.138048, -0.701450,
		39.167171, 37.855251, 33.996693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305840, 38.250301, 34.009411>,  <38.677715, 37.758617, 34.487705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305840, 38.250301, 34.009411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601433, 38.063473, 33.815193>,  <38.778790, 37.951378, 33.698662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601433, 38.063473, 33.815193>,  <38.305840, 38.250301, 34.009411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601433, 38.063473, 33.815193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619525, -0.187896, -0.762157,
		0.264748, 0.864027, -0.428212,
		0.738984, -0.467068, -0.485541,
		38.823128, 37.923351, 33.669529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326180, 38.437042, 33.374493>,  <38.305840, 38.250301, 34.009411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326180, 38.437042, 33.374493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525803, 38.097309, 33.305710>,  <38.645576, 37.893467, 33.264442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525803, 38.097309, 33.305710>,  <38.326180, 38.437042, 33.374493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525803, 38.097309, 33.305710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589072, -0.186969, -0.786153,
		0.635558, 0.493631, -0.593629,
		0.499059, -0.849336, -0.171955,
		38.675522, 37.842510, 33.254124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501198, 38.371311, 32.623352>,  <38.326180, 38.437042, 33.374493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501198, 38.371311, 32.623352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504414, 37.999672, 32.771252>,  <38.506344, 37.776688, 32.859993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504414, 37.999672, 32.771252>,  <38.501198, 38.371311, 32.623352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504414, 37.999672, 32.771252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605587, -0.298765, -0.737566,
		0.795738, -0.217988, -0.565051,
		0.008037, -0.929097, 0.369750,
		38.506824, 37.720943, 32.882175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536869, 37.867535, 31.975170>,  <38.501198, 38.371311, 32.623352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536869, 37.867535, 31.975170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405209, 37.658276, 32.289616>,  <38.326210, 37.532719, 32.478283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405209, 37.658276, 32.289616>,  <38.536869, 37.867535, 31.975170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405209, 37.658276, 32.289616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705651, -0.416918, -0.572919,
		0.627466, -0.743300, -0.231930,
		-0.329155, -0.523149, 0.786112,
		38.306461, 37.501331, 32.525448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343693, 37.305561, 31.698183>,  <38.536869, 37.867535, 31.975170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343693, 37.305561, 31.698183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.189320, 37.207249, 32.053856>,  <38.096695, 37.148262, 32.267262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.189320, 37.207249, 32.053856>,  <38.343693, 37.305561, 31.698183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189320, 37.207249, 32.053856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684826, -0.569481, -0.454649,
		0.618115, -0.784401, 0.051468,
		-0.385937, -0.245779, 0.889183,
		38.073540, 37.133514, 32.320610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281342, 36.575768, 31.707689>,  <38.343693, 37.305561, 31.698183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281342, 36.575768, 31.707689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.009724, 36.727390, 31.959156>,  <37.846752, 36.818363, 32.110035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.009724, 36.727390, 31.959156>,  <38.281342, 36.575768, 31.707689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009724, 36.727390, 31.959156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729544, -0.443693, -0.520482,
		0.081645, -0.812069, 0.577822,
		-0.679043, 0.379052, 0.628665,
		37.806011, 36.841106, 32.147755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028385, 36.110912, 31.910658>,  <38.281342, 36.575768, 31.707689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028385, 36.110912, 31.910658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.748249, 36.389908, 31.971354>,  <37.580166, 36.557304, 32.007771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.748249, 36.389908, 31.971354>,  <38.028385, 36.110912, 31.910658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748249, 36.389908, 31.971354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666161, -0.562290, -0.489958,
		-0.256419, -0.444223, 0.858438,
		-0.700342, 0.697493, 0.151742,
		37.538147, 36.599155, 32.016876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510616, 35.782009, 32.238106>,  <38.028385, 36.110912, 31.910658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510616, 35.782009, 32.238106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.377689, 36.113743, 32.058434>,  <37.297932, 36.312782, 31.950630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.377689, 36.113743, 32.058434>,  <37.510616, 35.782009, 32.238106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377689, 36.113743, 32.058434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770297, -0.513470, -0.378143,
		-0.544250, 0.220339, 0.809471,
		-0.332319, 0.829337, -0.449182,
		37.277992, 36.362545, 31.923679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847809, 35.817844, 32.435371>,  <37.510616, 35.782009, 32.238106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847809, 35.817844, 32.435371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.874939, 36.047802, 32.109207>,  <36.891216, 36.185776, 31.913507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.874939, 36.047802, 32.109207>,  <36.847809, 35.817844, 32.435371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874939, 36.047802, 32.109207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840608, -0.407284, -0.357068,
		-0.537380, 0.709660, 0.455637,
		0.067824, 0.574893, -0.815412,
		36.895287, 36.220268, 31.864584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160912, 35.951862, 32.170525>,  <36.847809, 35.817844, 32.435371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160912, 35.951862, 32.170525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.374451, 36.077263, 31.856400>,  <36.502575, 36.152504, 31.667925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.374451, 36.077263, 31.856400>,  <36.160912, 35.951862, 32.170525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374451, 36.077263, 31.856400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694471, -0.367285, -0.618718,
		-0.482406, 0.875681, 0.021646,
		0.533849, 0.313506, -0.785315,
		36.534607, 36.171314, 31.620806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458344, 36.270393, 32.393105>,  <36.160912, 35.951862, 32.170525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458344, 36.270393, 32.393105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.192135, 36.117836, 32.649734>,  <35.032410, 36.026302, 32.803711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.192135, 36.117836, 32.649734>,  <35.458344, 36.270393, 32.393105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192135, 36.117836, 32.649734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350475, 0.599236, 0.719780,
		-0.658974, 0.703886, -0.265137,
		-0.665523, -0.381393, 0.641576,
		34.992477, 36.003418, 32.842209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167885, 36.858486, 32.695946>,  <35.458344, 36.270393, 32.393105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167885, 36.858486, 32.695946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098618, 36.556492, 32.948933>,  <35.057056, 36.375298, 33.100723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098618, 36.556492, 32.948933>,  <35.167885, 36.858486, 32.695946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098618, 36.556492, 32.948933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413626, 0.527041, 0.742389,
		-0.893826, 0.390165, 0.221012,
		-0.173172, -0.754983, 0.632466,
		35.046665, 36.329998, 33.138672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748016, 37.085423, 33.196167>,  <35.167885, 36.858486, 32.695946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748016, 37.085423, 33.196167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.939442, 36.771805, 33.354282>,  <35.054295, 36.583633, 33.449150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.939442, 36.771805, 33.354282>,  <34.748016, 37.085423, 33.196167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939442, 36.771805, 33.354282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349267, 0.583014, 0.733558,
		-0.805600, -0.212992, 0.552850,
		0.478561, -0.784047, 0.395285,
		35.083012, 36.536591, 33.472866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693935, 37.188770, 33.948627>,  <34.748016, 37.085423, 33.196167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693935, 37.188770, 33.948627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.955265, 36.886333, 33.933170>,  <35.112064, 36.704872, 33.923897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.955265, 36.886333, 33.933170>,  <34.693935, 37.188770, 33.948627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955265, 36.886333, 33.933170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405745, 0.306594, 0.861029,
		-0.639168, -0.578211, 0.507086,
		0.653326, -0.756090, -0.038641,
		35.151264, 36.659508, 33.921577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673080, 36.857677, 34.663113>,  <34.693935, 37.188770, 33.948627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673080, 36.857677, 34.663113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.024624, 36.781029, 34.488346>,  <35.235550, 36.735039, 34.383488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.024624, 36.781029, 34.488346>,  <34.673080, 36.857677, 34.663113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024624, 36.781029, 34.488346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476086, 0.411542, 0.777158,
		0.030890, -0.891019, 0.452914,
		0.878856, -0.191620, -0.436914,
		35.288280, 36.723541, 34.357273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065868, 36.732075, 35.222992>,  <34.673080, 36.857677, 34.663113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065868, 36.732075, 35.222992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.338043, 36.768147, 34.932098>,  <35.501347, 36.789791, 34.757561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.338043, 36.768147, 34.932098>,  <35.065868, 36.732075, 35.222992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338043, 36.768147, 34.932098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665838, 0.338378, 0.664952,
		0.306046, -0.936679, 0.170200,
		0.680438, 0.090180, -0.727235,
		35.542175, 36.795200, 34.713928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735703, 36.588482, 35.518967>,  <35.065868, 36.732075, 35.222992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735703, 36.588482, 35.518967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856174, 36.785675, 35.192467>,  <35.928459, 36.903992, 34.996567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856174, 36.785675, 35.192467>,  <35.735703, 36.588482, 35.518967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856174, 36.785675, 35.192467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803491, 0.329766, 0.495638,
		0.513512, -0.805122, -0.296789,
		0.301179, 0.492983, -0.816247,
		35.946529, 36.933571, 34.947594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389919, 36.347496, 35.383324>,  <35.735703, 36.588482, 35.518967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389919, 36.347496, 35.383324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.336597, 36.713097, 35.230053>,  <36.304604, 36.932457, 35.138092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.336597, 36.713097, 35.230053>,  <36.389919, 36.347496, 35.383324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336597, 36.713097, 35.230053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744859, 0.347438, 0.569625,
		0.653770, -0.209475, -0.727121,
		-0.133307, 0.914006, -0.383174,
		36.296604, 36.987297, 35.115101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060463, 36.659733, 35.445095>,  <36.389919, 36.347496, 35.383324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060463, 36.659733, 35.445095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830479, 36.980560, 35.380459>,  <36.692490, 37.173058, 35.341675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830479, 36.980560, 35.380459>,  <37.060463, 36.659733, 35.445095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830479, 36.980560, 35.380459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593997, 0.545018, 0.591712,
		0.562664, 0.244223, -0.789788,
		-0.574959, 0.802066, -0.161594,
		36.657990, 37.221180, 35.331982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601421, 37.239586, 35.345478>,  <37.060463, 36.659733, 35.445095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601421, 37.239586, 35.345478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.256107, 37.412556, 35.449593>,  <37.048920, 37.516338, 35.512062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.256107, 37.412556, 35.449593>,  <37.601421, 37.239586, 35.345478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256107, 37.412556, 35.449593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474396, 0.519124, 0.710956,
		0.172312, 0.737237, -0.653291,
		-0.863283, 0.432425, 0.260291,
		36.997124, 37.542282, 35.527679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910019, 37.872547, 35.541992>,  <37.601421, 37.239586, 35.345478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910019, 37.872547, 35.541992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.544079, 37.892017, 35.702328>,  <37.324512, 37.903698, 35.798531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.544079, 37.892017, 35.702328>,  <37.910019, 37.872547, 35.541992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544079, 37.892017, 35.702328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394695, 0.317267, 0.862298,
		-0.085200, 0.947086, -0.309465,
		-0.914854, 0.048676, 0.400841,
		37.269623, 37.906620, 35.822578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854397, 38.568756, 35.803146>,  <37.910019, 37.872547, 35.541992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854397, 38.568756, 35.803146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.630646, 38.296856, 35.992901>,  <37.496395, 38.133717, 36.106754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.630646, 38.296856, 35.992901>,  <37.854397, 38.568756, 35.803146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630646, 38.296856, 35.992901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555431, 0.117441, 0.823228,
		-0.615303, 0.723978, 0.311863,
		-0.559373, -0.679752, 0.474382,
		37.462833, 38.092930, 36.135216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.559193, 34.858200, 30.314798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510445, 34.573318, 30.591324>,  <32.481197, 34.402390, 30.757238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510445, 34.573318, 30.591324>,  <32.559193, 34.858200, 30.314798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510445, 34.573318, 30.591324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550875, 0.530848, 0.644001,
		-0.825642, 0.459310, 0.327642,
		-0.121868, -0.712204, 0.691313,
		32.473885, 34.359657, 30.798717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407925, 35.261726, 30.905006>,  <32.559193, 34.858200, 30.314798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407925, 35.261726, 30.905006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563351, 34.907539, 31.006956>,  <32.656605, 34.695026, 31.068127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563351, 34.907539, 31.006956>,  <32.407925, 35.261726, 30.905006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563351, 34.907539, 31.006956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669878, 0.461395, 0.581703,
		-0.632679, -0.055293, 0.772438,
		0.388563, -0.885470, 0.254876,
		32.679920, 34.641899, 31.083418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482651, 35.267357, 31.634258>,  <32.407925, 35.261726, 30.905006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482651, 35.267357, 31.634258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723789, 34.967487, 31.525030>,  <32.868473, 34.787567, 31.459494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723789, 34.967487, 31.525030>,  <32.482651, 35.267357, 31.634258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723789, 34.967487, 31.525030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641694, 0.252185, 0.724315,
		-0.474135, -0.611878, 0.633089,
		0.602848, -0.749672, -0.273068,
		32.904644, 34.742584, 31.443110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686775, 34.923859, 32.291813>,  <32.482651, 35.267357, 31.634258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686775, 34.923859, 32.291813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959618, 34.822048, 32.017601>,  <33.123322, 34.760963, 31.853075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959618, 34.822048, 32.017601>,  <32.686775, 34.923859, 32.291813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959618, 34.822048, 32.017601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729577, 0.173427, 0.661545,
		-0.049490, -0.951389, 0.303990,
		0.682106, -0.254524, -0.685528,
		33.164249, 34.745689, 31.811943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154652, 34.506828, 32.655243>,  <32.686775, 34.923859, 32.291813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154652, 34.506828, 32.655243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361103, 34.642178, 32.340508>,  <33.484974, 34.723389, 32.151669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361103, 34.642178, 32.340508>,  <33.154652, 34.506828, 32.655243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361103, 34.642178, 32.340508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736551, 0.293520, 0.609375,
		0.437148, -0.894063, -0.097734,
		0.516133, 0.338374, -0.786835,
		33.515942, 34.743690, 32.104458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858524, 34.322105, 32.796803>,  <33.154652, 34.506828, 32.655243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858524, 34.322105, 32.796803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880184, 34.604099, 32.513943>,  <33.893181, 34.773296, 32.344227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880184, 34.604099, 32.513943>,  <33.858524, 34.322105, 32.796803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880184, 34.604099, 32.513943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745118, 0.442913, 0.498624,
		0.664730, -0.553911, -0.501315,
		0.054154, 0.704989, -0.707147,
		33.896431, 34.815598, 32.301800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615707, 34.450634, 32.636189>,  <33.858524, 34.322105, 32.796803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615707, 34.450634, 32.636189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427998, 34.765785, 32.476677>,  <34.315372, 34.954876, 32.380970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427998, 34.765785, 32.476677>,  <34.615707, 34.450634, 32.636189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427998, 34.765785, 32.476677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713967, 0.604276, 0.353697,
		0.519645, -0.118737, -0.846091,
		-0.469276, 0.787878, -0.398783,
		34.287216, 35.002148, 32.357040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193497, 34.799263, 32.267033>,  <34.615707, 34.450634, 32.636189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193497, 34.799263, 32.267033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886555, 35.036247, 32.365143>,  <34.702389, 35.178436, 32.424007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886555, 35.036247, 32.365143>,  <35.193497, 34.799263, 32.267033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886555, 35.036247, 32.365143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625987, 0.609263, 0.486763,
		0.138950, 0.527059, -0.838393,
		-0.767354, 0.592459, 0.245275,
		34.656349, 35.213985, 32.438725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501091, 35.441051, 32.308361>,  <35.193497, 34.799263, 32.267033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501091, 35.441051, 32.308361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155750, 35.526779, 32.491096>,  <34.948547, 35.578217, 32.600739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155750, 35.526779, 32.491096>,  <35.501091, 35.441051, 32.308361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155750, 35.526779, 32.491096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472711, 0.660277, 0.583592,
		-0.176566, 0.719794, -0.671358,
		-0.863347, 0.214316, 0.456837,
		34.896748, 35.591072, 32.628147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552147, 35.810173, 31.600676>,  <35.501091, 35.441051, 32.308361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552147, 35.810173, 31.600676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910271, 35.856956, 31.428751>,  <36.125145, 35.885025, 31.325596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910271, 35.856956, 31.428751>,  <35.552147, 35.810173, 31.600676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910271, 35.856956, 31.428751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348610, -0.416686, -0.839549,
		-0.277290, 0.901495, -0.332291,
		0.895311, 0.116958, -0.429813,
		36.178864, 35.892044, 31.299807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508904, 36.152679, 30.861845>,  <35.552147, 35.810173, 31.600676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508904, 36.152679, 30.861845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840675, 35.931751, 30.895308>,  <36.039738, 35.799194, 30.915386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840675, 35.931751, 30.895308>,  <35.508904, 36.152679, 30.861845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840675, 35.931751, 30.895308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135157, -0.343726, -0.929292,
		0.542020, 0.759472, -0.359745,
		0.829426, -0.552317, 0.083658,
		36.089504, 35.766056, 30.920404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973362, 36.252354, 30.293997>,  <35.508904, 36.152679, 30.861845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973362, 36.252354, 30.293997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071350, 35.898376, 30.452425>,  <36.130142, 35.685989, 30.547482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071350, 35.898376, 30.452425>,  <35.973362, 36.252354, 30.293997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071350, 35.898376, 30.452425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005226, -0.407305, -0.913278,
		0.969516, 0.225798, -0.095154,
		0.244973, -0.884940, 0.396068,
		36.144840, 35.632896, 30.571245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293213, 35.938427, 29.725077>,  <35.973362, 36.252354, 30.293997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293213, 35.938427, 29.725077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258575, 35.622601, 29.968088>,  <36.237793, 35.433105, 30.113895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258575, 35.622601, 29.968088>,  <36.293213, 35.938427, 29.725077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258575, 35.622601, 29.968088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029781, -0.611599, -0.790607,
		0.995799, -0.050366, 0.076473,
		-0.086591, -0.789563, 0.607530,
		36.232597, 35.385731, 30.150347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702339, 35.436474, 29.359692>,  <36.293213, 35.938427, 29.725077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702339, 35.436474, 29.359692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472885, 35.226555, 29.611256>,  <36.335213, 35.100601, 29.762194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472885, 35.226555, 29.611256>,  <36.702339, 35.436474, 29.359692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472885, 35.226555, 29.611256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287625, -0.589851, -0.754551,
		0.766952, -0.613728, 0.187413,
		-0.573635, -0.524800, 0.628910,
		36.300797, 35.069115, 29.799929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982269, 34.765171, 29.447340>,  <36.702339, 35.436474, 29.359692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982269, 34.765171, 29.447340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591991, 34.753799, 29.534254>,  <36.357826, 34.746975, 29.586403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591991, 34.753799, 29.534254>,  <36.982269, 34.765171, 29.447340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591991, 34.753799, 29.534254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130806, -0.719961, -0.681576,
		0.175817, -0.693432, 0.698742,
		-0.975694, -0.028433, 0.217287,
		36.299282, 34.745270, 29.599440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794422, 34.033054, 29.512671>,  <36.982269, 34.765171, 29.447340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794422, 34.033054, 29.512671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437820, 34.197693, 29.436987>,  <36.223858, 34.296478, 29.391577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437820, 34.197693, 29.436987>,  <36.794422, 34.033054, 29.512671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437820, 34.197693, 29.436987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228237, -0.768904, -0.597238,
		-0.391307, -0.489258, 0.779426,
		-0.891508, 0.411598, -0.189211,
		36.170368, 34.321171, 29.380224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374962, 33.497738, 29.369869>,  <36.794422, 34.033054, 29.512671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374962, 33.497738, 29.369869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176762, 33.811306, 29.220228>,  <36.057842, 33.999447, 29.130444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176762, 33.811306, 29.220228>,  <36.374962, 33.497738, 29.369869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176762, 33.811306, 29.220228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456063, -0.601345, -0.656042,
		-0.739250, -0.154451, 0.655481,
		-0.495497, 0.783919, -0.374105,
		36.028114, 34.046482, 29.107996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697502, 33.386475, 29.404165>,  <36.374962, 33.497738, 29.369869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697502, 33.386475, 29.404165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748173, 33.662506, 29.119141>,  <35.778576, 33.828125, 28.948126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748173, 33.662506, 29.119141>,  <35.697502, 33.386475, 29.404165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748173, 33.662506, 29.119141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512341, -0.569592, -0.642707,
		-0.849387, 0.446492, 0.281401,
		0.126680, 0.690080, -0.712560,
		35.786175, 33.869530, 28.905373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006317, 33.652843, 29.145565>,  <35.697502, 33.386475, 29.404165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006317, 33.652843, 29.145565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247395, 33.766190, 28.847178>,  <35.392040, 33.834198, 28.668146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247395, 33.766190, 28.847178>,  <35.006317, 33.652843, 29.145565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247395, 33.766190, 28.847178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628639, -0.407194, -0.662576,
		-0.491501, 0.868274, -0.067281,
		0.602694, 0.283361, -0.745967,
		35.428204, 33.851196, 28.623388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552197, 34.070259, 28.644934>,  <35.006317, 33.652843, 29.145565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552197, 34.070259, 28.644934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870483, 33.967491, 28.425543>,  <35.061455, 33.905830, 28.293907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870483, 33.967491, 28.425543>,  <34.552197, 34.070259, 28.644934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870483, 33.967491, 28.425543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603051, -0.251957, -0.756867,
		0.056259, 0.933012, -0.355421,
		0.795717, -0.256917, -0.548479,
		35.109200, 33.890415, 28.261000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532665, 34.422771, 27.985912>,  <34.552197, 34.070259, 28.644934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532665, 34.422771, 27.985912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764523, 34.103874, 27.918474>,  <34.903637, 33.912537, 27.878012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764523, 34.103874, 27.918474>,  <34.532665, 34.422771, 27.985912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764523, 34.103874, 27.918474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520690, -0.203217, -0.829207,
		0.626815, 0.568430, -0.532907,
		0.579642, -0.797239, -0.168596,
		34.938416, 33.864704, 27.867895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844273, 34.502369, 27.326843>,  <34.532665, 34.422771, 27.985912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844273, 34.502369, 27.326843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835037, 34.110802, 27.408022>,  <34.829498, 33.875862, 27.456730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835037, 34.110802, 27.408022>,  <34.844273, 34.502369, 27.326843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835037, 34.110802, 27.408022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509609, -0.163127, -0.844801,
		0.860096, -0.122926, -0.495100,
		-0.023084, -0.978917, 0.202949,
		34.828114, 33.817127, 27.468906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745968, 34.244877, 26.690432>,  <34.844273, 34.502369, 27.326843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745968, 34.244877, 26.690432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722370, 33.901543, 26.894304>,  <34.708210, 33.695541, 27.016628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722370, 33.901543, 26.894304>,  <34.745968, 34.244877, 26.690432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722370, 33.901543, 26.894304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769733, -0.285987, -0.570720,
		0.635633, -0.425989, -0.643820,
		-0.058996, -0.858338, 0.509681,
		34.704670, 33.644043, 27.047209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.870468, 28.212349, 31.412663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.739487, 28.577208, 31.314056>,  <33.660900, 28.796122, 31.254892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.739487, 28.577208, 31.314056>,  <33.870468, 28.212349, 31.412663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739487, 28.577208, 31.314056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694684, 0.409253, 0.591546,
		0.640461, 0.022453, -0.767662,
		-0.327450, 0.912144, -0.246513,
		33.641251, 28.850851, 31.240103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514671, 28.535606, 31.150713>,  <33.870468, 28.212349, 31.412663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514671, 28.535606, 31.150713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255432, 28.819826, 31.260326>,  <34.099888, 28.990358, 31.326094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255432, 28.819826, 31.260326>,  <34.514671, 28.535606, 31.150713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255432, 28.819826, 31.260326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682094, 0.381552, 0.623832,
		0.338706, 0.591217, -0.731943,
		-0.648094, 0.710550, 0.274032,
		34.061005, 29.032991, 31.342535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915920, 29.111269, 31.091820>,  <34.514671, 28.535606, 31.150713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915920, 29.111269, 31.091820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.612125, 29.263924, 31.302544>,  <34.429848, 29.355516, 31.428978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.612125, 29.263924, 31.302544>,  <34.915920, 29.111269, 31.091820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612125, 29.263924, 31.302544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648534, 0.507400, 0.567405,
		-0.050760, 0.772593, -0.632870,
		-0.759491, 0.381636, 0.526808,
		34.384277, 29.378414, 31.460587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053482, 29.751696, 31.130770>,  <34.915920, 29.111269, 31.091820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053482, 29.751696, 31.130770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803253, 29.714996, 31.440670>,  <34.653114, 29.692976, 31.626610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803253, 29.714996, 31.440670>,  <35.053482, 29.751696, 31.130770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803253, 29.714996, 31.440670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636649, 0.513943, 0.574927,
		-0.450926, 0.852904, -0.263099,
		-0.625575, -0.091748, 0.774750,
		34.615582, 29.687471, 31.673096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023865, 30.486006, 31.443935>,  <35.053482, 29.751696, 31.130770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023865, 30.486006, 31.443935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.876728, 30.267365, 31.744844>,  <34.788445, 30.136179, 31.925390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.876728, 30.267365, 31.744844>,  <35.023865, 30.486006, 31.443935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876728, 30.267365, 31.744844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441089, 0.609622, 0.658636,
		-0.818615, 0.574096, 0.016855,
		-0.367845, -0.546604, 0.752273,
		34.766373, 30.103384, 31.970526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735565, 30.932335, 31.980757>,  <35.023865, 30.486006, 31.443935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735565, 30.932335, 31.980757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807510, 30.589148, 32.173233>,  <34.850677, 30.383236, 32.288719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807510, 30.589148, 32.173233>,  <34.735565, 30.932335, 31.980757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807510, 30.589148, 32.173233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302401, 0.513704, 0.802908,
		-0.936058, 0.001101, 0.351845,
		0.179861, -0.857967, 0.481189,
		34.861469, 30.331757, 32.317589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607380, 31.128445, 32.556217>,  <34.735565, 30.932335, 31.980757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607380, 31.128445, 32.556217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839596, 30.804991, 32.594334>,  <34.978924, 30.610918, 32.617203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839596, 30.804991, 32.594334>,  <34.607380, 31.128445, 32.556217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839596, 30.804991, 32.594334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411697, 0.392490, 0.822470,
		-0.702481, -0.438244, 0.560769,
		0.580539, -0.808637, 0.095293,
		35.013756, 30.562399, 32.622921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519768, 31.044138, 33.186260>,  <34.607380, 31.128445, 32.556217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519768, 31.044138, 33.186260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835739, 30.812960, 33.104294>,  <35.025322, 30.674253, 33.055115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835739, 30.812960, 33.104294>,  <34.519768, 31.044138, 33.186260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835739, 30.812960, 33.104294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442942, 0.306714, 0.842454,
		-0.424044, -0.756243, 0.498280,
		0.789930, -0.577946, -0.204911,
		35.072720, 30.639576, 33.042820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714565, 30.684637, 33.910057>,  <34.519768, 31.044138, 33.186260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714565, 30.684637, 33.910057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037758, 30.694323, 33.674572>,  <35.231674, 30.700134, 33.533283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037758, 30.694323, 33.674572>,  <34.714565, 30.684637, 33.910057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037758, 30.694323, 33.674572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516999, 0.450132, 0.728075,
		0.282627, -0.892634, 0.351180,
		0.807981, 0.024214, -0.588710,
		35.280151, 30.701588, 33.497959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369099, 30.512436, 34.261993>,  <34.714565, 30.684637, 33.910057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369099, 30.512436, 34.261993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487591, 30.717442, 33.939606>,  <35.558685, 30.840445, 33.746174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487591, 30.717442, 33.939606>,  <35.369099, 30.512436, 34.261993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487591, 30.717442, 33.939606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657105, 0.503039, 0.561396,
		0.693154, -0.695904, -0.187761,
		0.296226, 0.512512, -0.805966,
		35.576458, 30.871195, 33.697815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078304, 30.534586, 34.327305>,  <35.369099, 30.512436, 34.261993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078304, 30.534586, 34.327305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056526, 30.819544, 34.047440>,  <36.043457, 30.990519, 33.879520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056526, 30.819544, 34.047440>,  <36.078304, 30.534586, 34.327305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056526, 30.819544, 34.047440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807355, 0.443719, 0.388962,
		0.587548, -0.543700, -0.599314,
		-0.054449, 0.712393, -0.699665,
		36.040192, 31.033262, 33.837540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694141, 30.455502, 34.127319>,  <36.078304, 30.534586, 34.327305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694141, 30.455502, 34.127319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527462, 30.814251, 34.068012>,  <36.427456, 31.029501, 34.032429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527462, 30.814251, 34.068012>,  <36.694141, 30.455502, 34.127319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527462, 30.814251, 34.068012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740686, 0.429534, 0.516609,
		0.527017, 0.105453, -0.843287,
		-0.416699, 0.896872, -0.148264,
		36.402451, 31.083313, 34.023533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214867, 30.805237, 33.902214>,  <36.694141, 30.455502, 34.127319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214867, 30.805237, 33.902214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961823, 31.095778, 34.009701>,  <36.809994, 31.270103, 34.074192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961823, 31.095778, 34.009701>,  <37.214867, 30.805237, 33.902214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961823, 31.095778, 34.009701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770736, 0.556438, 0.310391,
		0.075929, 0.403468, -0.911838,
		-0.632614, 0.726354, 0.268717,
		36.772038, 31.313684, 34.090317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441132, 31.325815, 33.641731>,  <37.214867, 30.805237, 33.902214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441132, 31.325815, 33.641731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227840, 31.483589, 33.941090>,  <37.099865, 31.578253, 34.120705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227840, 31.483589, 33.941090>,  <37.441132, 31.325815, 33.641731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227840, 31.483589, 33.941090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792079, 0.543481, 0.277919,
		-0.297116, 0.740980, -0.602221,
		-0.533228, 0.394433, 0.748392,
		37.067871, 31.601919, 34.165607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735054, 31.719105, 33.129379>,  <37.441132, 31.325815, 33.641731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735054, 31.719105, 33.129379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081497, 31.721294, 32.929451>,  <38.289364, 31.722609, 32.809494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081497, 31.721294, 32.929451>,  <37.735054, 31.719105, 33.129379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081497, 31.721294, 32.929451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461724, -0.374290, -0.804187,
		-0.191483, 0.927295, -0.321648,
		0.866109, 0.005475, -0.499825,
		38.341331, 31.722937, 32.779503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611286, 32.001583, 32.538002>,  <37.735054, 31.719105, 33.129379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611286, 32.001583, 32.538002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942802, 31.785402, 32.480007>,  <38.141712, 31.655695, 32.445210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942802, 31.785402, 32.480007>,  <37.611286, 32.001583, 32.538002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942802, 31.785402, 32.480007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369557, -0.334121, -0.867059,
		0.420160, 0.772190, -0.476643,
		0.828790, -0.540451, -0.144984,
		38.191441, 31.623266, 32.436512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657314, 32.043396, 31.861771>,  <37.611286, 32.001583, 32.538002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657314, 32.043396, 31.861771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.897339, 31.734829, 31.946468>,  <38.041355, 31.549688, 31.997288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.897339, 31.734829, 31.946468>,  <37.657314, 32.043396, 31.861771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897339, 31.734829, 31.946468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296965, -0.460597, -0.836458,
		0.742790, 0.439045, -0.505472,
		0.600062, -0.771421, 0.211746,
		38.077358, 31.503403, 32.009991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149502, 31.870111, 31.279648>,  <37.657314, 32.043396, 31.861771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149502, 31.870111, 31.279648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.148048, 31.533459, 31.495663>,  <38.147179, 31.331467, 31.625271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.148048, 31.533459, 31.495663>,  <38.149502, 31.870111, 31.279648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148048, 31.533459, 31.495663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084625, -0.537844, -0.838786,
		0.996406, -0.048745, -0.069271,
		-0.003630, -0.841634, 0.540036,
		38.146961, 31.280968, 31.657673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419933, 31.408381, 30.885057>,  <38.149502, 31.870111, 31.279648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419933, 31.408381, 30.885057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226295, 31.172796, 31.143909>,  <38.110115, 31.031445, 31.299221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226295, 31.172796, 31.143909>,  <38.419933, 31.408381, 30.885057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226295, 31.172796, 31.143909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276498, -0.598710, -0.751728,
		0.830183, -0.542836, 0.126983,
		-0.484091, -0.588962, 0.647132,
		38.081070, 30.996107, 31.338049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507847, 30.688105, 30.612082>,  <38.419933, 31.408381, 30.885057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507847, 30.688105, 30.612082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197716, 30.663530, 30.863508>,  <38.011639, 30.648787, 31.014364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197716, 30.663530, 30.863508>,  <38.507847, 30.688105, 30.612082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197716, 30.663530, 30.863508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442020, -0.658083, -0.609545,
		0.451095, -0.750435, 0.483074,
		-0.775327, -0.061434, 0.628565,
		37.965118, 30.645100, 31.052078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347462, 29.958958, 30.702677>,  <38.507847, 30.688105, 30.612082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347462, 29.958958, 30.702677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.040936, 30.211611, 30.749662>,  <37.857021, 30.363203, 30.777853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.040936, 30.211611, 30.749662>,  <38.347462, 29.958958, 30.702677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040936, 30.211611, 30.749662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556138, -0.560624, -0.613524,
		-0.321669, -0.535480, 0.780891,
		-0.766316, 0.631635, 0.117465,
		37.811039, 30.401102, 30.784903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820854, 29.508724, 30.811275>,  <38.347462, 29.958958, 30.702677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820854, 29.508724, 30.811275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623978, 29.843189, 30.714460>,  <37.505852, 30.043869, 30.656372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623978, 29.843189, 30.714460>,  <37.820854, 29.508724, 30.811275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623978, 29.843189, 30.714460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632039, -0.534464, -0.561137,
		-0.598561, -0.123210, 0.791545,
		-0.492190, 0.836163, -0.242036,
		37.476322, 30.094038, 30.641850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287052, 29.201056, 30.563408>,  <37.820854, 29.508724, 30.811275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287052, 29.201056, 30.563408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.228069, 29.576357, 30.438227>,  <37.192680, 29.801538, 30.363119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.228069, 29.576357, 30.438227>,  <37.287052, 29.201056, 30.563408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228069, 29.576357, 30.438227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754312, -0.311337, -0.577999,
		-0.639742, 0.150835, 0.753644,
		-0.147454, 0.938253, -0.312952,
		37.183834, 29.857832, 30.344341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650902, 29.265352, 30.739399>,  <37.287052, 29.201056, 30.563408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650902, 29.265352, 30.739399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.745621, 29.517139, 30.443371>,  <36.802452, 29.668211, 30.265755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.745621, 29.517139, 30.443371>,  <36.650902, 29.265352, 30.739399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745621, 29.517139, 30.443371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706624, -0.411203, -0.575842,
		-0.666792, 0.659306, 0.347426,
		0.236793, 0.629466, -0.740068,
		36.816658, 29.705980, 30.221350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999073, 29.558456, 30.472916>,  <36.650902, 29.265352, 30.739399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999073, 29.558456, 30.472916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.270409, 29.617523, 30.185013>,  <36.433208, 29.652964, 30.012272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.270409, 29.617523, 30.185013>,  <35.999073, 29.558456, 30.472916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270409, 29.617523, 30.185013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692723, -0.198022, -0.693486,
		-0.244934, 0.969010, -0.032032,
		0.678338, 0.147669, -0.719758,
		36.473911, 29.661823, 29.969086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717312, 30.003571, 29.886284>,  <35.999073, 29.558456, 30.472916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717312, 30.003571, 29.886284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997505, 29.775755, 29.714262>,  <36.165623, 29.639065, 29.611050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997505, 29.775755, 29.714262>,  <35.717312, 30.003571, 29.886284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997505, 29.775755, 29.714262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606853, -0.158234, -0.778904,
		0.375568, 0.806589, -0.456467,
		0.700484, -0.569540, -0.430053,
		36.207649, 29.604893, 29.585245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905647, 30.331266, 29.175306>,  <35.717312, 30.003571, 29.886284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905647, 30.331266, 29.175306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005795, 29.944231, 29.188499>,  <36.065884, 29.712009, 29.196415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005795, 29.944231, 29.188499>,  <35.905647, 30.331266, 29.175306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005795, 29.944231, 29.188499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584714, -0.178272, -0.791409,
		0.771639, 0.178857, -0.610396,
		0.250365, -0.967590, 0.032981,
		36.080902, 29.653954, 29.198395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091938, 30.082813, 28.454121>,  <35.905647, 30.331266, 29.175306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091938, 30.082813, 28.454121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021748, 29.730427, 28.629896>,  <35.979633, 29.518995, 28.735361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021748, 29.730427, 28.629896>,  <36.091938, 30.082813, 28.454121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021748, 29.730427, 28.629896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652399, -0.230224, -0.722062,
		0.737282, -0.413393, -0.534343,
		-0.175477, -0.880967, 0.439437,
		35.969105, 29.466137, 28.761726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407223, 30.213276, 27.810177>,  <36.091938, 30.082813, 28.454121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407223, 30.213276, 27.810177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.370647, 30.474834, 27.509762>,  <36.348701, 30.631769, 27.329512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.370647, 30.474834, 27.509762>,  <36.407223, 30.213276, 27.810177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370647, 30.474834, 27.509762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678402, 0.593011, 0.433716,
		0.728979, -0.469849, -0.497827,
		-0.091436, 0.653896, -0.751039,
		36.343216, 30.671003, 27.284451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098553, 30.459970, 27.620056>,  <36.407223, 30.213276, 27.810177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098553, 30.459970, 27.620056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.841290, 30.733866, 27.482954>,  <36.686932, 30.898203, 27.400694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.841290, 30.733866, 27.482954>,  <37.098553, 30.459970, 27.620056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841290, 30.733866, 27.482954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640399, 0.726395, 0.249477,
		0.419801, -0.059045, -0.905694,
		-0.643161, 0.684736, -0.342753,
		36.648342, 30.939287, 27.380129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432968, 30.877636, 27.143755>,  <37.098553, 30.459970, 27.620056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432968, 30.877636, 27.143755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140659, 31.103981, 27.296478>,  <36.965275, 31.239788, 27.388113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140659, 31.103981, 27.296478>,  <37.432968, 30.877636, 27.143755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140659, 31.103981, 27.296478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680150, 0.651163, 0.336723,
		-0.058081, 0.505753, -0.860721,
		-0.730768, 0.565862, 0.381809,
		36.921429, 31.273739, 27.411020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504501, 31.650068, 26.827602>,  <37.432968, 30.877636, 27.143755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504501, 31.650068, 26.827602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307831, 31.636669, 27.175657>,  <37.189831, 31.628630, 27.384489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307831, 31.636669, 27.175657>,  <37.504501, 31.650068, 26.827602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307831, 31.636669, 27.175657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474362, 0.827671, 0.299902,
		-0.730231, 0.560213, -0.391055,
		-0.491674, -0.033496, 0.870135,
		37.160328, 31.626621, 27.436697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320854, 32.308739, 26.841005>,  <37.504501, 31.650068, 26.827602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320854, 32.308739, 26.841005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294010, 32.160740, 27.211647>,  <37.277905, 32.071938, 27.434032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294010, 32.160740, 27.211647>,  <37.320854, 32.308739, 26.841005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294010, 32.160740, 27.211647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551433, 0.760217, 0.343499,
		-0.831516, 0.534012, 0.153013,
		-0.067109, -0.370002, 0.926604,
		37.273876, 32.049740, 27.489628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088951, 32.839615, 27.305319>,  <37.320854, 32.308739, 26.841005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088951, 32.839615, 27.305319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256500, 32.570614, 27.549379>,  <37.357029, 32.409214, 27.695816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256500, 32.570614, 27.549379>,  <37.088951, 32.839615, 27.305319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256500, 32.570614, 27.549379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370018, 0.740030, 0.561642,
		-0.829238, -0.009488, 0.558815,
		0.418869, -0.672507, 0.610150,
		37.382160, 32.368862, 27.732424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167171, 33.119392, 27.989923>,  <37.088951, 32.839615, 27.305319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167171, 33.119392, 27.989923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392395, 32.798561, 28.069551>,  <37.527531, 32.606060, 28.117329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392395, 32.798561, 28.069551>,  <37.167171, 33.119392, 27.989923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392395, 32.798561, 28.069551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402620, 0.476601, 0.781504,
		-0.721707, -0.359884, 0.591289,
		0.563059, -0.802082, 0.199070,
		37.561314, 32.557938, 28.129272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099617, 33.067841, 28.719957>,  <37.167171, 33.119392, 27.989923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099617, 33.067841, 28.719957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427242, 32.857754, 28.627625>,  <37.623817, 32.731701, 28.572224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427242, 32.857754, 28.627625>,  <37.099617, 33.067841, 28.719957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427242, 32.857754, 28.627625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472305, 0.388905, 0.791000,
		-0.325673, -0.756903, 0.566600,
		0.819063, -0.525215, -0.230833,
		37.672962, 32.700188, 28.558374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350296, 32.639923, 29.258883>,  <37.099617, 33.067841, 28.719957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350296, 32.639923, 29.258883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667816, 32.699978, 29.023144>,  <37.858330, 32.736012, 28.881701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667816, 32.699978, 29.023144>,  <37.350296, 32.639923, 29.258883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667816, 32.699978, 29.023144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508756, 0.367026, 0.778755,
		0.333226, -0.918015, 0.214965,
		0.793806, 0.150137, -0.589348,
		37.905956, 32.745018, 28.846340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919388, 32.530361, 29.733755>,  <37.350296, 32.639923, 29.258883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919388, 32.530361, 29.733755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108234, 32.682739, 29.415766>,  <38.221542, 32.774166, 29.224972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108234, 32.682739, 29.415766>,  <37.919388, 32.530361, 29.733755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108234, 32.682739, 29.415766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682376, 0.412997, 0.603155,
		0.558093, -0.827231, -0.064967,
		0.472117, 0.380949, -0.794974,
		38.249870, 32.797024, 29.177273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650875, 32.273624, 29.668280>,  <37.919388, 32.530361, 29.733755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650875, 32.273624, 29.668280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616554, 32.632866, 29.495749>,  <38.595963, 32.848412, 29.392229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616554, 32.632866, 29.495749>,  <38.650875, 32.273624, 29.668280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616554, 32.632866, 29.495749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820381, 0.309342, 0.480918,
		0.565343, -0.312592, -0.763331,
		-0.085799, 0.898106, -0.431329,
		38.590813, 32.902298, 29.366350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331917, 32.407906, 29.584255>,  <38.650875, 32.273624, 29.668280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331917, 32.407906, 29.584255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138901, 32.754375, 29.532274>,  <39.023090, 32.962257, 29.501085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138901, 32.754375, 29.532274>,  <39.331917, 32.407906, 29.584255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138901, 32.754375, 29.532274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651254, 0.454038, 0.608044,
		0.585678, 0.208775, -0.783195,
		-0.482545, 0.866177, -0.129955,
		38.994137, 33.014229, 29.493288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815704, 32.853794, 29.733492>,  <39.331917, 32.407906, 29.584255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815704, 32.853794, 29.733492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.499962, 33.097645, 29.762541>,  <39.310516, 33.243958, 29.779970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.499962, 33.097645, 29.762541>,  <39.815704, 32.853794, 29.733492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499962, 33.097645, 29.762541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504592, 0.576824, 0.642387,
		0.349726, 0.543715, -0.762932,
		-0.789353, 0.609629, 0.072624,
		39.263157, 33.280533, 29.784328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024704, 33.602058, 29.596561>,  <39.815704, 32.853794, 29.733492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024704, 33.602058, 29.596561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.715942, 33.587151, 29.850418>,  <39.530685, 33.578205, 30.002731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.715942, 33.587151, 29.850418>,  <40.024704, 33.602058, 29.596561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715942, 33.587151, 29.850418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531532, 0.509808, 0.676438,
		-0.348757, 0.859480, -0.373714,
		-0.771908, -0.037272, 0.634641,
		39.484371, 33.575970, 30.040810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.723953, 33.479950, 26.194422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561867, 33.382351, 26.546846>,  <34.464615, 33.323792, 26.758301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561867, 33.382351, 26.546846>,  <34.723953, 33.479950, 26.194422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561867, 33.382351, 26.546846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741147, -0.476570, -0.472845,
		0.535258, -0.844599, 0.012278,
		-0.405215, -0.243994, 0.881060,
		34.440304, 33.309155, 26.811165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584488, 32.850006, 26.206024>,  <34.723953, 33.479950, 26.194422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584488, 32.850006, 26.206024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.329708, 32.951443, 26.497227>,  <34.176842, 33.012302, 26.671947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.329708, 32.951443, 26.497227>,  <34.584488, 32.850006, 26.206024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329708, 32.951443, 26.497227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693524, -0.600863, -0.397478,
		0.336636, -0.758061, 0.558587,
		-0.636947, 0.253589, 0.728005,
		34.138622, 33.027519, 26.715628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259609, 32.199898, 26.433277>,  <34.584488, 32.850006, 26.206024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259609, 32.199898, 26.433277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.012718, 32.488575, 26.558611>,  <33.864582, 32.661781, 26.633810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.012718, 32.488575, 26.558611>,  <34.259609, 32.199898, 26.433277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012718, 32.488575, 26.558611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786098, -0.549090, -0.283812,
		-0.032778, -0.421489, 0.906241,
		-0.617232, 0.721698, 0.313333,
		33.827549, 32.705086, 26.652611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810364, 31.843245, 26.872665>,  <34.259609, 32.199898, 26.433277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810364, 31.843245, 26.872665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593719, 32.176411, 26.827208>,  <33.463734, 32.376308, 26.799932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593719, 32.176411, 26.827208>,  <33.810364, 31.843245, 26.872665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593719, 32.176411, 26.827208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795138, -0.551464, -0.252276,
		-0.272795, -0.046272, 0.960959,
		-0.541607, 0.832914, -0.113644,
		33.431236, 32.426285, 26.793114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148945, 31.774313, 27.204056>,  <33.810364, 31.843245, 26.872665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148945, 31.774313, 27.204056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.101425, 32.056572, 26.924643>,  <33.072914, 32.225925, 26.756994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.101425, 32.056572, 26.924643>,  <33.148945, 31.774313, 27.204056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101425, 32.056572, 26.924643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716079, -0.548241, -0.432044,
		-0.687836, 0.448881, 0.570428,
		-0.118796, 0.705647, -0.698534,
		33.065788, 32.268265, 26.715082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498631, 31.696915, 27.070513>,  <33.148945, 31.774313, 27.204056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498631, 31.696915, 27.070513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632107, 31.898027, 26.751549>,  <32.712193, 32.018696, 26.560171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632107, 31.898027, 26.751549>,  <32.498631, 31.696915, 27.070513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632107, 31.898027, 26.751549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578514, -0.558650, -0.594333,
		-0.744291, 0.659637, 0.104448,
		0.333694, 0.502782, -0.797408,
		32.732216, 32.048862, 26.512327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935501, 31.882036, 26.734560>,  <32.498631, 31.696915, 27.070513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935501, 31.882036, 26.734560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.228680, 31.895010, 26.462753>,  <32.404587, 31.902794, 26.299669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.228680, 31.895010, 26.462753>,  <31.935501, 31.882036, 26.734560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228680, 31.895010, 26.462753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601163, -0.436661, -0.669276,
		-0.318426, 0.899041, -0.300549,
		0.732945, 0.032436, -0.679514,
		32.448563, 31.904741, 26.258900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564936, 32.036095, 26.080130>,  <31.935501, 31.882036, 26.734560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564936, 32.036095, 26.080130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.928671, 31.931568, 25.950626>,  <32.146912, 31.868851, 25.872925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.928671, 31.931568, 25.950626>,  <31.564936, 32.036095, 26.080130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928671, 31.931568, 25.950626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406448, -0.391626, -0.825487,
		0.088923, 0.882237, -0.462332,
		0.909336, -0.261319, -0.323759,
		32.201473, 31.853172, 25.853498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762741, 32.364700, 25.423674>,  <31.564936, 32.036095, 26.080130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762741, 32.364700, 25.423674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.942877, 32.010777, 25.471518>,  <32.050961, 31.798422, 25.500225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.942877, 32.010777, 25.471518>,  <31.762741, 32.364700, 25.423674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942877, 32.010777, 25.471518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611297, -0.403191, -0.680994,
		0.650775, 0.233562, -0.722454,
		0.450342, -0.884808, 0.119611,
		32.077980, 31.745335, 25.507401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019691, 32.163734, 24.690121>,  <31.762741, 32.364700, 25.423674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019691, 32.163734, 24.690121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018089, 31.834686, 24.917553>,  <32.017128, 31.637259, 25.054012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018089, 31.834686, 24.917553>,  <32.019691, 32.163734, 24.690121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018089, 31.834686, 24.917553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709862, -0.398137, -0.581019,
		0.704329, -0.405938, -0.582353,
		-0.004002, -0.822619, 0.568580,
		32.016888, 31.587900, 25.088127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930380, 31.529188, 24.215174>,  <32.019691, 32.163734, 24.690121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930380, 31.529188, 24.215174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828894, 31.383366, 24.573553>,  <31.768002, 31.295872, 24.788582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828894, 31.383366, 24.573553>,  <31.930380, 31.529188, 24.215174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828894, 31.383366, 24.573553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752192, -0.507990, -0.419705,
		0.608140, -0.780414, -0.145330,
		-0.253717, -0.364556, 0.895950,
		31.752779, 31.273998, 24.842339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719261, 30.865450, 24.100540>,  <31.930380, 31.529188, 24.215174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719261, 30.865450, 24.100540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.516830, 30.983702, 24.424635>,  <31.395372, 31.054653, 24.619093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.516830, 30.983702, 24.424635>,  <31.719261, 30.865450, 24.100540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516830, 30.983702, 24.424635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846419, -0.350721, -0.400711,
		0.165706, -0.888594, 0.427719,
		-0.506079, 0.295629, 0.810239,
		31.365007, 31.072390, 24.667707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215021, 30.230806, 24.301476>,  <31.719261, 30.865450, 24.100540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215021, 30.230806, 24.301476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.089668, 30.590075, 24.424818>,  <31.014456, 30.805635, 24.498823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.089668, 30.590075, 24.424818>,  <31.215021, 30.230806, 24.301476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089668, 30.590075, 24.424818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922138, -0.210259, -0.324735,
		-0.226832, -0.386113, 0.894127,
		-0.313383, 0.898169, 0.308356,
		30.995653, 30.859526, 24.517324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598570, 29.996325, 23.816200>,  <31.215021, 30.230806, 24.301476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598570, 29.996325, 23.816200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438210, 29.631458, 23.850220>,  <31.341993, 29.412539, 23.870632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438210, 29.631458, 23.850220>,  <31.598570, 29.996325, 23.816200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438210, 29.631458, 23.850220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845216, 0.404085, 0.349749,
		-0.353396, 0.068331, -0.932975,
		-0.400900, -0.912165, 0.085048,
		31.317940, 29.357809, 23.875734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955248, 29.513670, 24.290033>,  <31.598570, 29.996325, 23.816200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955248, 29.513670, 24.290033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080395, 29.164703, 24.139832>,  <32.155483, 28.955324, 24.049711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080395, 29.164703, 24.139832>,  <31.955248, 29.513670, 24.290033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080395, 29.164703, 24.139832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911113, 0.163992, 0.378125,
		-0.268303, -0.460430, 0.846178,
		0.312866, -0.872417, -0.375505,
		32.174255, 28.902979, 24.027180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381306, 29.196138, 24.796965>,  <31.955248, 29.513670, 24.290033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381306, 29.196138, 24.796965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.495060, 29.012165, 24.460491>,  <32.563313, 28.901781, 24.258608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.495060, 29.012165, 24.460491>,  <32.381306, 29.196138, 24.796965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495060, 29.012165, 24.460491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956495, 0.076509, 0.281539,
		-0.065131, -0.884652, 0.461681,
		0.284387, -0.459932, -0.841182,
		32.580376, 28.874186, 24.208138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945274, 28.827442, 25.035589>,  <32.381306, 29.196138, 24.796965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945274, 28.827442, 25.035589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979374, 28.817396, 24.637173>,  <32.999836, 28.811369, 24.398123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979374, 28.817396, 24.637173>,  <32.945274, 28.827442, 25.035589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979374, 28.817396, 24.637173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992953, 0.084733, 0.082851,
		0.082317, -0.996087, 0.032162,
		0.085252, -0.025115, -0.996043,
		33.004948, 28.809862, 24.338360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202675, 28.135815, 24.846790>,  <32.945274, 28.827442, 25.035589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202675, 28.135815, 24.846790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271317, 28.433229, 24.588270>,  <33.312500, 28.611679, 24.433157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271317, 28.433229, 24.588270>,  <33.202675, 28.135815, 24.846790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271317, 28.433229, 24.588270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919446, 0.114724, 0.376109,
		0.353798, -0.658780, -0.663955,
		0.171601, 0.743537, -0.646301,
		33.322796, 28.656290, 24.394381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954739, 28.149385, 24.857677>,  <33.202675, 28.135815, 24.846790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954739, 28.149385, 24.857677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.854614, 28.495373, 24.683702>,  <33.794540, 28.702965, 24.579317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.854614, 28.495373, 24.683702>,  <33.954739, 28.149385, 24.857677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854614, 28.495373, 24.683702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839842, 0.417493, 0.346938,
		0.481674, -0.278436, -0.830941,
		-0.250312, 0.864970, -0.434938,
		33.779522, 28.754864, 24.553221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619667, 28.380697, 24.701130>,  <33.954739, 28.149385, 24.857677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619667, 28.380697, 24.701130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361164, 28.685806, 24.710304>,  <34.206062, 28.868872, 24.715809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361164, 28.685806, 24.710304>,  <34.619667, 28.380697, 24.701130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361164, 28.685806, 24.710304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676592, 0.558825, 0.479518,
		0.352947, 0.325410, -0.877232,
		-0.646259, 0.762773, 0.022934,
		34.167286, 28.914639, 24.717184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050694, 29.003225, 24.506905>,  <34.619667, 28.380697, 24.701130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050694, 29.003225, 24.506905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732449, 29.150171, 24.699589>,  <34.541500, 29.238338, 24.815199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732449, 29.150171, 24.699589>,  <35.050694, 29.003225, 24.506905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732449, 29.150171, 24.699589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592548, 0.637356, 0.492610,
		-0.126051, 0.677362, -0.724770,
		-0.795612, 0.367366, 0.481709,
		34.493767, 29.260382, 24.844101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075218, 29.736408, 24.473433>,  <35.050694, 29.003225, 24.506905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075218, 29.736408, 24.473433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856083, 29.630640, 24.790911>,  <34.724602, 29.567179, 24.981398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856083, 29.630640, 24.790911>,  <35.075218, 29.736408, 24.473433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856083, 29.630640, 24.790911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615906, 0.514569, 0.596555,
		-0.566153, 0.815659, -0.119043,
		-0.547841, -0.264422, 0.793694,
		34.691730, 29.551313, 25.029018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156685, 30.277973, 24.877794>,  <35.075218, 29.736408, 24.473433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156685, 30.277973, 24.877794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005226, 30.021566, 25.144844>,  <34.914352, 29.867722, 25.305075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005226, 30.021566, 25.144844>,  <35.156685, 30.277973, 24.877794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005226, 30.021566, 25.144844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431356, 0.515980, 0.740065,
		-0.818876, 0.568207, 0.081134,
		-0.378646, -0.641019, 0.667624,
		34.891632, 29.829260, 25.345131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942589, 30.724281, 25.379694>,  <35.156685, 30.277973, 24.877794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942589, 30.724281, 25.379694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977760, 30.365595, 25.553209>,  <34.998863, 30.150383, 25.657318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977760, 30.365595, 25.553209>,  <34.942589, 30.724281, 25.379694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977760, 30.365595, 25.553209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548053, 0.407191, 0.730639,
		-0.831809, 0.173494, 0.527251,
		0.087930, -0.896714, 0.433789,
		35.004139, 30.096581, 25.683346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749149, 30.834379, 26.032366>,  <34.942589, 30.724281, 25.379694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749149, 30.834379, 26.032366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.988998, 30.514418, 26.042194>,  <35.132908, 30.322441, 26.048092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.988998, 30.514418, 26.042194>,  <34.749149, 30.834379, 26.032366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988998, 30.514418, 26.042194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465634, 0.373691, 0.802209,
		-0.650872, -0.469583, 0.596537,
		0.599625, -0.799904, 0.024571,
		35.168884, 30.274446, 26.049566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789761, 30.631187, 26.659773>,  <34.749149, 30.834379, 26.032366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789761, 30.631187, 26.659773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120296, 30.462269, 26.510733>,  <35.318619, 30.360918, 26.421309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120296, 30.462269, 26.510733>,  <34.789761, 30.631187, 26.659773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120296, 30.462269, 26.510733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528665, 0.353615, 0.771666,
		-0.194115, -0.834638, 0.515459,
		0.826337, -0.422297, -0.372602,
		35.368198, 30.335579, 26.398952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135208, 30.237144, 27.143303>,  <34.789761, 30.631187, 26.659773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135208, 30.237144, 27.143303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.437119, 30.314838, 26.892675>,  <35.618263, 30.361454, 26.742300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.437119, 30.314838, 26.892675>,  <35.135208, 30.237144, 27.143303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437119, 30.314838, 26.892675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592532, 0.207956, 0.778242,
		0.281458, -0.958659, 0.041871,
		0.754776, 0.194233, -0.626567,
		35.663551, 30.373108, 26.704706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715149, 30.135326, 27.632063>,  <35.135208, 30.237144, 27.143303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715149, 30.135326, 27.632063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.868286, 30.293943, 27.298313>,  <35.960171, 30.389112, 27.098063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.868286, 30.293943, 27.298313>,  <35.715149, 30.135326, 27.632063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868286, 30.293943, 27.298313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751087, 0.392248, 0.531047,
		0.537864, -0.829998, -0.147667,
		0.382846, 0.396542, -0.834376,
		35.983139, 30.412907, 27.048000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117554, 29.562954, 27.901590>,  <35.715149, 30.135326, 27.632063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117554, 29.562954, 27.901590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919819, 29.384489, 28.200005>,  <35.801178, 29.277411, 28.379053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919819, 29.384489, 28.200005>,  <36.117554, 29.562954, 27.901590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919819, 29.384489, 28.200005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567071, -0.484949, -0.665774,
		0.658833, -0.752172, -0.013278,
		-0.494337, -0.446164, 0.746035,
		35.771519, 29.250639, 28.423815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043728, 28.961269, 27.688372>,  <36.117554, 29.562954, 27.901590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043728, 28.961269, 27.688372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.754375, 28.964716, 27.964531>,  <35.580765, 28.966784, 28.130226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.754375, 28.964716, 27.964531>,  <36.043728, 28.961269, 27.688372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754375, 28.964716, 27.964531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531569, -0.645081, -0.548912,
		0.440632, -0.764065, 0.471219,
		-0.723380, 0.008617, 0.690397,
		35.537361, 28.967300, 28.171650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811466, 28.345839, 27.822083>,  <36.043728, 28.961269, 27.688372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811466, 28.345839, 27.822083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.486919, 28.525269, 27.971996>,  <35.292191, 28.632927, 28.061945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.486919, 28.525269, 27.971996>,  <35.811466, 28.345839, 27.822083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486919, 28.525269, 27.971996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564986, -0.766258, -0.306007,
		0.149914, -0.460032, 0.875155,
		-0.811367, 0.448575, 0.374784,
		35.243507, 28.659842, 28.084431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429459, 27.741577, 28.053244>,  <35.811466, 28.345839, 27.822083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429459, 27.741577, 28.053244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.184135, 28.057503, 28.056032>,  <35.036942, 28.247057, 28.057705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.184135, 28.057503, 28.056032>,  <35.429459, 27.741577, 28.053244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184135, 28.057503, 28.056032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772542, -0.598013, -0.213447,
		-0.164414, -0.136295, 0.976930,
		-0.613309, 0.789813, 0.006972,
		35.000141, 28.294447, 28.058123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809269, 27.555830, 28.537712>,  <35.429459, 27.741577, 28.053244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809269, 27.555830, 28.537712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677879, 27.840437, 28.289246>,  <34.599045, 28.011202, 28.140165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677879, 27.840437, 28.289246>,  <34.809269, 27.555830, 28.537712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677879, 27.840437, 28.289246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832609, -0.528638, -0.165241,
		-0.445943, 0.462910, 0.766061,
		-0.328477, 0.711517, -0.621165,
		34.579338, 28.053892, 28.102896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100681, 27.817911, 28.708353>,  <34.809269, 27.555830, 28.537712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100681, 27.817911, 28.708353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142254, 27.902065, 28.319521>,  <34.167198, 27.952557, 28.086222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142254, 27.902065, 28.319521>,  <34.100681, 27.817911, 28.708353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142254, 27.902065, 28.319521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840150, -0.504520, -0.199018,
		-0.532303, 0.837376, 0.124319,
		0.103931, 0.210384, -0.972079,
		34.173431, 27.965181, 28.027897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467308, 28.065178, 28.395475>,  <34.100681, 27.817911, 28.708353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467308, 28.065178, 28.395475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657951, 27.912857, 28.078531>,  <33.772335, 27.821465, 27.888365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657951, 27.912857, 28.078531>,  <33.467308, 28.065178, 28.395475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657951, 27.912857, 28.078531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822614, -0.511096, -0.249174,
		-0.310085, 0.770565, -0.556846,
		0.476606, -0.380804, -0.792361,
		33.800934, 27.798616, 27.840822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786304, 28.367731, 28.606075>,  <33.467308, 28.065178, 28.395475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786304, 28.367731, 28.606075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.558098, 28.122086, 28.824205>,  <32.421173, 27.974699, 28.955082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.558098, 28.122086, 28.824205>,  <32.786304, 28.367731, 28.606075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558098, 28.122086, 28.824205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336085, 0.431273, 0.837288,
		-0.749373, 0.660960, -0.039653,
		-0.570515, -0.614114, 0.545323,
		32.386944, 27.937851, 28.987803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406342, 28.794582, 29.043821>,  <32.786304, 28.367731, 28.606075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406342, 28.794582, 29.043821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411720, 28.432102, 29.212875>,  <32.414948, 28.214615, 29.314308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411720, 28.432102, 29.212875>,  <32.406342, 28.794582, 29.043821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411720, 28.432102, 29.212875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366335, 0.397749, 0.841187,
		-0.930386, 0.143515, 0.337321,
		0.013446, -0.906201, 0.422634,
		32.415752, 28.160242, 29.339666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000374, 28.901630, 29.609484>,  <32.406342, 28.794582, 29.043821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000374, 28.901630, 29.609484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224461, 28.578653, 29.683458>,  <32.358913, 28.384867, 29.727842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224461, 28.578653, 29.683458>,  <32.000374, 28.901630, 29.609484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224461, 28.578653, 29.683458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167104, 0.328828, 0.929488,
		-0.811319, -0.489808, 0.319140,
		0.560213, -0.807441, 0.184935,
		32.392525, 28.336422, 29.738939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824947, 28.742800, 30.226450>,  <32.000374, 28.901630, 29.609484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824947, 28.742800, 30.226450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.165600, 28.539572, 30.174923>,  <32.369991, 28.417635, 30.144007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.165600, 28.539572, 30.174923>,  <31.824947, 28.742800, 30.226450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165600, 28.539572, 30.174923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307465, 0.285208, 0.907811,
		-0.424491, -0.812726, 0.399105,
		0.851629, -0.508068, -0.128817,
		32.421089, 28.387152, 30.136278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035416, 28.271757, 30.814407>,  <31.824947, 28.742800, 30.226450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035416, 28.271757, 30.814407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370186, 28.370071, 30.618799>,  <32.571049, 28.429060, 30.501434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370186, 28.370071, 30.618799>,  <32.035416, 28.271757, 30.814407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370186, 28.370071, 30.618799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443629, 0.218632, 0.869134,
		0.320538, -0.944345, 0.073940,
		0.836928, 0.245788, -0.489019,
		32.621265, 28.443808, 30.472094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518280, 28.305447, 31.349504>,  <32.035416, 28.271757, 30.814407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518280, 28.305447, 31.349504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761520, 28.447060, 31.065287>,  <32.907463, 28.532028, 30.894756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761520, 28.447060, 31.065287>,  <32.518280, 28.305447, 31.349504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761520, 28.447060, 31.065287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540168, 0.471374, 0.697155,
		0.581748, -0.807754, 0.095406,
		0.608101, 0.354033, -0.710544,
		32.943951, 28.553270, 30.852123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164680, 28.097734, 31.498753>,  <32.518280, 28.305447, 31.349504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164680, 28.097734, 31.498753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222046, 28.420012, 31.268867>,  <33.256466, 28.613377, 31.130936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222046, 28.420012, 31.268867>,  <33.164680, 28.097734, 31.498753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222046, 28.420012, 31.268867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659781, 0.355001, 0.662316,
		0.737646, -0.474169, -0.480668,
		0.143412, 0.805691, -0.574713,
		33.265068, 28.661718, 31.096453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.360004, 31.054842, 26.404839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717968, 31.184917, 26.282598>,  <28.932747, 31.262962, 26.209253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717968, 31.184917, 26.282598>,  <28.360004, 31.054842, 26.404839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717968, 31.184917, 26.282598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320954, 0.006772, 0.947070,
		0.310045, -0.945625, -0.098310,
		0.894908, 0.325187, -0.305602,
		28.986441, 31.282473, 26.190918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862150, 30.614712, 26.743145>,  <28.360004, 31.054842, 26.404839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862150, 30.614712, 26.743145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072126, 30.938704, 26.638552>,  <29.198112, 31.133099, 26.575796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072126, 30.938704, 26.638552>,  <28.862150, 30.614712, 26.743145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072126, 30.938704, 26.638552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497148, -0.042423, 0.866628,
		0.690857, -0.584923, -0.424948,
		0.524938, 0.809978, -0.261485,
		29.229609, 31.181698, 26.560106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489220, 30.402451, 26.924500>,  <28.862150, 30.614712, 26.743145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489220, 30.402451, 26.924500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527710, 30.800552, 26.918665>,  <29.550804, 31.039413, 26.915165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527710, 30.800552, 26.918665>,  <29.489220, 30.402451, 26.924500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527710, 30.800552, 26.918665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624458, -0.048949, 0.779524,
		0.775109, -0.084118, -0.626203,
		0.096224, 0.995253, -0.014587,
		29.556578, 31.099129, 26.914289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261417, 30.575855, 26.850861>,  <29.489220, 30.402451, 26.924500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261417, 30.575855, 26.850861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063953, 30.875267, 27.027950>,  <29.945475, 31.054914, 27.134205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063953, 30.875267, 27.027950>,  <30.261417, 30.575855, 26.850861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063953, 30.875267, 27.027950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648479, -0.022367, 0.760904,
		0.579460, 0.662727, -0.474363,
		-0.493662, 0.748527, 0.442725,
		29.915855, 31.099825, 27.160769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774492, 30.781225, 27.364124>,  <30.261417, 30.575855, 26.850861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774492, 30.781225, 27.364124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481417, 31.042582, 27.440275>,  <30.305571, 31.199396, 27.485966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481417, 31.042582, 27.440275>,  <30.774492, 30.781225, 27.364124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481417, 31.042582, 27.440275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509926, 0.341807, 0.789394,
		0.450710, 0.675461, -0.583620,
		-0.732691, 0.653391, 0.190379,
		30.261610, 31.238600, 27.497389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034010, 31.480906, 27.444136>,  <30.774492, 30.781225, 27.364124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034010, 31.480906, 27.444136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.691908, 31.453821, 27.649643>,  <30.486647, 31.437571, 27.772947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.691908, 31.453821, 27.649643>,  <31.034010, 31.480906, 27.444136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691908, 31.453821, 27.649643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429739, 0.461375, 0.776181,
		-0.289593, 0.884618, -0.365496,
		-0.855254, -0.067709, 0.513766,
		30.435331, 31.433508, 27.803772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059837, 32.125057, 27.760565>,  <31.034010, 31.480906, 27.444136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059837, 32.125057, 27.760565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.791912, 31.936295, 27.989878>,  <30.631157, 31.823036, 28.127466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.791912, 31.936295, 27.989878>,  <31.059837, 32.125057, 27.760565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791912, 31.936295, 27.989878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148908, 0.671013, 0.726338,
		-0.727443, 0.571879, -0.379184,
		-0.669815, -0.471906, 0.573282,
		30.590967, 31.794724, 28.161861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513384, 32.567154, 28.015196>,  <31.059837, 32.125057, 27.760565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513384, 32.567154, 28.015196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525944, 32.263191, 28.274906>,  <30.533480, 32.080814, 28.430733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525944, 32.263191, 28.274906>,  <30.513384, 32.567154, 28.015196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525944, 32.263191, 28.274906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217822, 0.639186, 0.737560,
		-0.975483, 0.118269, 0.185593,
		0.031398, -0.759903, 0.649277,
		30.535364, 32.035221, 28.469688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062490, 32.802948, 28.577326>,  <30.513384, 32.567154, 28.015196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062490, 32.802948, 28.577326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.273899, 32.498539, 28.727793>,  <30.400745, 32.315891, 28.818073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.273899, 32.498539, 28.727793>,  <30.062490, 32.802948, 28.577326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273899, 32.498539, 28.727793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399909, 0.614067, 0.680436,
		-0.748823, -0.209193, 0.628890,
		0.528524, -0.761025, 0.376169,
		30.432457, 32.270233, 28.840643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917498, 32.812160, 29.373716>,  <30.062490, 32.802948, 28.577326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917498, 32.812160, 29.373716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248144, 32.592625, 29.323957>,  <30.446533, 32.460903, 29.294102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248144, 32.592625, 29.323957>,  <29.917498, 32.812160, 29.373716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248144, 32.592625, 29.323957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362417, 0.350060, 0.863778,
		-0.430530, -0.759099, 0.488276,
		0.826618, -0.548841, -0.124399,
		30.496130, 32.427971, 29.286638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180679, 32.537933, 30.025885>,  <29.917498, 32.812160, 29.373716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180679, 32.537933, 30.025885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500801, 32.462811, 29.798115>,  <30.692873, 32.417736, 29.661453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500801, 32.462811, 29.798115>,  <30.180679, 32.537933, 30.025885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500801, 32.462811, 29.798115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598127, 0.316517, 0.736248,
		0.041961, -0.929809, 0.365641,
		0.800302, -0.187806, -0.569425,
		30.740892, 32.406467, 29.627287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732407, 32.146229, 30.436102>,  <30.180679, 32.537933, 30.025885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732407, 32.146229, 30.436102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.941805, 32.334267, 30.151859>,  <31.067444, 32.447090, 29.981314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.941805, 32.334267, 30.151859>,  <30.732407, 32.146229, 30.436102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941805, 32.334267, 30.151859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626604, 0.352719, 0.694951,
		0.577339, -0.809072, -0.109919,
		0.523494, 0.470098, -0.710606,
		31.098854, 32.475296, 29.938677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041178, 31.443485, 30.579523>,  <30.732407, 32.146229, 30.436102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041178, 31.443485, 30.579523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.242739, 31.200655, 30.825300>,  <31.363676, 31.054956, 30.972767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.242739, 31.200655, 30.825300>,  <31.041178, 31.443485, 30.579523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242739, 31.200655, 30.825300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374262, -0.794570, -0.478106,
		0.778466, 0.010956, -0.627592,
		0.503904, -0.607073, 0.614445,
		31.393909, 31.018534, 31.009634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326284, 30.892427, 30.190458>,  <31.041178, 31.443485, 30.579523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326284, 30.892427, 30.190458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.305998, 30.739948, 30.559698>,  <31.293825, 30.648460, 30.781242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.305998, 30.739948, 30.559698>,  <31.326284, 30.892427, 30.190458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305998, 30.739948, 30.559698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375908, -0.849032, -0.371265,
		0.925268, -0.365830, -0.100235,
		-0.050717, -0.381199, 0.923101,
		31.290783, 30.625589, 30.836628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689079, 30.198048, 30.155931>,  <31.326284, 30.892427, 30.190458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689079, 30.198048, 30.155931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398552, 30.217064, 30.430216>,  <31.224236, 30.228474, 30.594788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398552, 30.217064, 30.430216>,  <31.689079, 30.198048, 30.155931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398552, 30.217064, 30.430216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418513, -0.821955, -0.386312,
		0.545260, -0.567565, 0.616896,
		-0.726318, 0.047539, 0.685713,
		31.180656, 30.231325, 30.635929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569761, 29.535509, 30.322863>,  <31.689079, 30.198048, 30.155931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569761, 29.535509, 30.322863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.241236, 29.707830, 30.472450>,  <31.044121, 29.811224, 30.562202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.241236, 29.707830, 30.472450>,  <31.569761, 29.535509, 30.322863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241236, 29.707830, 30.472450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538075, -0.802782, -0.256937,
		0.189526, -0.412249, 0.891140,
		-0.821313, 0.430804, 0.373969,
		30.994843, 29.837072, 30.584641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178387, 28.887510, 30.558245>,  <31.569761, 29.535509, 30.322863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178387, 28.887510, 30.558245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.904902, 29.177586, 30.525658>,  <30.740810, 29.351631, 30.506105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.904902, 29.177586, 30.525658>,  <31.178387, 28.887510, 30.558245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904902, 29.177586, 30.525658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646025, -0.653407, -0.394602,
		-0.339391, -0.217165, 0.915234,
		-0.683714, 0.725188, -0.081467,
		30.699787, 29.395142, 30.501217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580889, 28.533543, 30.823534>,  <31.178387, 28.887510, 30.558245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580889, 28.533543, 30.823534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423168, 28.856400, 30.647787>,  <30.328537, 29.050114, 30.542339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423168, 28.856400, 30.647787>,  <30.580889, 28.533543, 30.823534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423168, 28.856400, 30.647787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722683, -0.567677, -0.394300,
		-0.567677, 0.162052, 0.807144,
		0.394300, -0.807144, 0.439369,
		30.304878, 29.098543, 30.515976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753971, 28.364088, 30.736506>,  <30.580889, 28.533543, 30.823534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753971, 28.364088, 30.736506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824951, 28.678513, 30.499651>,  <29.867538, 28.867167, 30.357538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824951, 28.678513, 30.499651>,  <29.753971, 28.364088, 30.736506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824951, 28.678513, 30.499651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709316, -0.314925, -0.630629,
		-0.682189, 0.531915, 0.501681,
		0.177449, 0.786059, -0.592134,
		29.878185, 28.914330, 30.322010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120228, 28.671051, 30.630091>,  <29.753971, 28.364088, 30.736506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120228, 28.671051, 30.630091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386934, 28.744678, 30.341219>,  <29.546957, 28.788855, 30.167896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386934, 28.744678, 30.341219>,  <29.120228, 28.671051, 30.630091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386934, 28.744678, 30.341219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628472, -0.381944, -0.677600,
		-0.400558, 0.905669, -0.138983,
		0.666765, 0.184071, -0.722179,
		29.586964, 28.799900, 30.124565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683308, 29.033457, 30.262033>,  <29.120228, 28.671051, 30.630091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683308, 29.033457, 30.262033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975542, 28.896521, 30.025713>,  <29.150883, 28.814358, 29.883921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975542, 28.896521, 30.025713>,  <28.683308, 29.033457, 30.262033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975542, 28.896521, 30.025713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676551, -0.479931, -0.558521,
		-0.092339, 0.807755, -0.582242,
		0.730584, -0.342343, -0.590803,
		29.194717, 28.793818, 29.848473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281582, 29.077358, 29.635454>,  <28.683308, 29.033457, 30.262033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281582, 29.077358, 29.635454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605021, 28.847002, 29.587261>,  <28.799084, 28.708788, 29.558346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605021, 28.847002, 29.587261>,  <28.281582, 29.077358, 29.635454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605021, 28.847002, 29.587261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480514, -0.528220, -0.700065,
		0.339521, 0.623965, -0.703842,
		0.808599, -0.575892, -0.120482,
		28.847601, 28.674234, 29.551117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243225, 28.864965, 28.921640>,  <28.281582, 29.077358, 29.635454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243225, 28.864965, 28.921640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.479139, 28.579987, 29.073730>,  <28.620687, 28.408998, 29.164984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.479139, 28.579987, 29.073730>,  <28.243225, 28.864965, 28.921640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479139, 28.579987, 29.073730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409348, -0.669611, -0.619722,
		0.696122, 0.209859, -0.686566,
		0.589787, -0.712447, 0.380226,
		28.656075, 28.366253, 29.187798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634888, 28.553442, 28.314573>,  <28.243225, 28.864965, 28.921640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634888, 28.553442, 28.314573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604750, 28.284843, 28.609440>,  <28.586666, 28.123684, 28.786360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604750, 28.284843, 28.609440>,  <28.634888, 28.553442, 28.314573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604750, 28.284843, 28.609440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540293, -0.593852, -0.596174,
		0.838097, -0.443204, -0.318062,
		-0.075346, -0.671498, 0.737165,
		28.582146, 28.083393, 28.830589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934330, 28.001122, 27.969000>,  <28.634888, 28.553442, 28.314573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934330, 28.001122, 27.969000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.734524, 27.831038, 28.270908>,  <28.614639, 27.728987, 28.452053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.734524, 27.831038, 28.270908>,  <28.934330, 28.001122, 27.969000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734524, 27.831038, 28.270908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397699, -0.661465, -0.635846,
		0.769623, -0.617787, 0.161306,
		-0.499515, -0.425211, 0.754772,
		28.584669, 27.703474, 28.497339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035166, 27.312805, 28.002407>,  <28.934330, 28.001122, 27.969000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035166, 27.312805, 28.002407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665176, 27.339075, 28.152132>,  <28.443182, 27.354837, 28.241966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665176, 27.339075, 28.152132>,  <29.035166, 27.312805, 28.002407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665176, 27.339075, 28.152132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320801, -0.662980, -0.676420,
		0.203739, -0.745751, 0.634308,
		-0.924974, 0.065674, 0.374312,
		28.387684, 27.358778, 28.264425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608446, 27.741858, 28.217854>,  <29.035166, 27.312805, 28.002407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608446, 27.741858, 28.217854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795366, 27.537991, 27.928890>,  <29.907518, 27.415670, 27.755512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795366, 27.537991, 27.928890>,  <29.608446, 27.741858, 28.217854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795366, 27.537991, 27.928890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853856, 0.048279, 0.518266,
		-0.229265, -0.859016, 0.457742,
		0.467298, -0.509666, -0.722407,
		29.935556, 27.385090, 27.712168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900314, 27.210789, 28.519480>,  <29.608446, 27.741858, 28.217854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900314, 27.210789, 28.519480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099537, 27.314995, 28.188644>,  <30.219070, 27.377520, 27.990143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099537, 27.314995, 28.188644>,  <29.900314, 27.210789, 28.519480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099537, 27.314995, 28.188644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862653, -0.245821, 0.442042,
		-0.088156, -0.933650, -0.347168,
		0.498054, 0.260517, -0.827087,
		30.248953, 27.393150, 27.940517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422770, 26.812304, 28.475273>,  <29.900314, 27.210789, 28.519480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422770, 26.812304, 28.475273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.547354, 27.080118, 28.205544>,  <30.622105, 27.240807, 28.043705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.547354, 27.080118, 28.205544>,  <30.422770, 26.812304, 28.475273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547354, 27.080118, 28.205544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924842, -0.050556, 0.376976,
		0.218308, -0.741057, -0.634962,
		0.311462, 0.669536, -0.674324,
		30.640793, 27.280979, 28.003246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043663, 26.533443, 28.349886>,  <30.422770, 26.812304, 28.475273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043663, 26.533443, 28.349886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.061739, 26.909214, 28.213982>,  <31.072584, 27.134676, 28.132439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.061739, 26.909214, 28.213982>,  <31.043663, 26.533443, 28.349886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061739, 26.909214, 28.213982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936335, 0.078709, 0.342173,
		0.348188, -0.333592, -0.876060,
		0.045192, 0.939426, -0.339759,
		31.075296, 27.191042, 28.112053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678947, 26.568583, 28.237616>,  <31.043663, 26.533443, 28.349886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678947, 26.568583, 28.237616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.553837, 26.946480, 28.276867>,  <31.478771, 27.173218, 28.300419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.553837, 26.946480, 28.276867>,  <31.678947, 26.568583, 28.237616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553837, 26.946480, 28.276867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856780, 0.236030, 0.458495,
		0.409999, 0.227481, -0.883262,
		-0.312775, 0.944744, 0.098130,
		31.460005, 27.229902, 28.306305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217937, 26.936022, 28.075314>,  <31.678947, 26.568583, 28.237616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217937, 26.936022, 28.075314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994272, 27.221300, 28.244400>,  <31.860073, 27.392467, 28.345852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994272, 27.221300, 28.244400>,  <32.217937, 26.936022, 28.075314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994272, 27.221300, 28.244400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803873, 0.341686, 0.486867,
		0.202795, 0.612047, -0.764377,
		-0.559162, 0.713196, 0.422716,
		31.826523, 27.435259, 28.371214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609493, 27.613770, 28.116228>,  <32.217937, 26.936022, 28.075314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609493, 27.613770, 28.116228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.364201, 27.595772, 28.431675>,  <32.217026, 27.584974, 28.620943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.364201, 27.595772, 28.431675>,  <32.609493, 27.613770, 28.116228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364201, 27.595772, 28.431675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728311, 0.354291, 0.586550,
		-0.305791, 0.934052, -0.184494,
		-0.613233, -0.044992, 0.788619,
		32.180229, 27.582273, 28.668261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998531, 28.194836, 27.754641>,  <32.609493, 27.613770, 28.116228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998531, 28.194836, 27.754641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.248844, 27.948244, 27.563494>,  <33.399033, 27.800289, 27.448807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.248844, 27.948244, 27.563494>,  <32.998531, 28.194836, 27.754641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248844, 27.948244, 27.563494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765773, -0.369082, -0.526660,
		0.148304, 0.695508, -0.703046,
		0.625778, -0.616479, -0.477865,
		33.436577, 27.763300, 27.420134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972221, 28.147127, 26.890106>,  <32.998531, 28.194836, 27.754641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972221, 28.147127, 26.890106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.132618, 27.802652, 27.015047>,  <33.228855, 27.595968, 27.090012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.132618, 27.802652, 27.015047>,  <32.972221, 28.147127, 26.890106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132618, 27.802652, 27.015047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516748, -0.494180, -0.699112,
		0.756424, 0.118929, -0.643178,
		0.400990, -0.861187, 0.312354,
		33.252914, 27.544296, 27.108753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284477, 27.889788, 26.301573>,  <32.972221, 28.147127, 26.890106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284477, 27.889788, 26.301573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215927, 27.586216, 26.552860>,  <33.174797, 27.404074, 26.703632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215927, 27.586216, 26.552860>,  <33.284477, 27.889788, 26.301573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215927, 27.586216, 26.552860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438839, -0.512096, -0.738362,
		0.882071, -0.402226, -0.245285,
		-0.171379, -0.758928, 0.628217,
		33.164513, 27.358538, 26.741325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389069, 27.379755, 25.942453>,  <33.284477, 27.889788, 26.301573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389069, 27.379755, 25.942453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.189941, 27.192587, 26.234545>,  <33.070465, 27.080286, 26.409800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.189941, 27.192587, 26.234545>,  <33.389069, 27.379755, 25.942453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189941, 27.192587, 26.234545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421939, -0.604943, -0.675286,
		0.757726, -0.644279, 0.103715,
		-0.497814, -0.467920, 0.730227,
		33.040596, 27.052212, 26.453613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280533, 26.808777, 25.695763>,  <33.389069, 27.379755, 25.942453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280533, 26.808777, 25.695763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.008900, 26.805311, 25.989367>,  <32.845921, 26.803232, 26.165529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.008900, 26.805311, 25.989367>,  <33.280533, 26.808777, 25.695763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008900, 26.805311, 25.989367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672417, -0.393760, -0.626745,
		0.294453, -0.919172, 0.261571,
		-0.679082, -0.008662, 0.734011,
		32.805176, 26.802713, 26.209570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858604, 26.238688, 25.490080>,  <33.280533, 26.808777, 25.695763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858604, 26.238688, 25.490080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.653992, 26.465670, 25.748175>,  <32.531223, 26.601858, 25.903032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.653992, 26.465670, 25.748175>,  <32.858604, 26.238688, 25.490080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653992, 26.465670, 25.748175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849659, -0.222064, -0.478296,
		-0.128128, -0.792894, 0.595736,
		-0.511530, 0.567456, 0.645237,
		32.500534, 26.635906, 25.941746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289585, 25.926363, 25.567055>,  <32.858604, 26.238688, 25.490080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289585, 25.926363, 25.567055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.171932, 26.294266, 25.671003>,  <32.101341, 26.515007, 25.733372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.171932, 26.294266, 25.671003>,  <32.289585, 25.926363, 25.567055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171932, 26.294266, 25.671003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842036, -0.120731, -0.525737,
		-0.452177, -0.373456, 0.809980,
		-0.294130, 0.919758, 0.259871,
		32.083694, 26.570192, 25.748964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584793, 25.955256, 25.762140>,  <32.289585, 25.926363, 25.567055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584793, 25.955256, 25.762140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.632130, 26.343790, 25.679674>,  <31.660532, 26.576910, 25.630194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.632130, 26.343790, 25.679674>,  <31.584793, 25.955256, 25.762140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632130, 26.343790, 25.679674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850969, -0.007789, -0.525158,
		-0.511710, 0.237589, 0.825654,
		0.118341, 0.971335, -0.206167,
		31.667631, 26.635191, 25.617825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874887, 26.046726, 25.958954>,  <31.584793, 25.955256, 25.762140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874887, 26.046726, 25.958954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.551453, 26.177137, 26.154869>,  <30.357391, 26.255384, 26.272419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.551453, 26.177137, 26.154869>,  <30.874887, 26.046726, 25.958954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551453, 26.177137, 26.154869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365646, 0.373738, -0.852422,
		-0.460965, -0.868347, -0.182990,
		-0.808588, 0.326027, 0.489788,
		30.308876, 26.274946, 26.301805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.538074, 32.459763, 35.821278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.675381, 32.617443, 35.480274>,  <41.757763, 32.712051, 35.275673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.675381, 32.617443, 35.480274>,  <41.538074, 32.459763, 35.821278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675381, 32.617443, 35.480274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417338, -0.877152, -0.237559,
		-0.841427, -0.274239, -0.465612,
		0.343264, 0.394206, -0.852509,
		41.778358, 32.735706, 35.224522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848644, 32.932663, 35.894005>,  <41.538074, 32.459763, 35.821278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848644, 32.932663, 35.894005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.071056, 33.228981, 35.743248>,  <41.204506, 33.406773, 35.652794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.071056, 33.228981, 35.743248>,  <40.848644, 32.932663, 35.894005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071056, 33.228981, 35.743248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414512, -0.145884, -0.898275,
		-0.720420, 0.655698, 0.225952,
		0.556034, 0.740796, -0.376892,
		41.237865, 33.451221, 35.630180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423424, 33.388103, 35.531879>,  <40.848644, 32.932663, 35.894005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423424, 33.388103, 35.531879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.773262, 33.411503, 35.339352>,  <40.983166, 33.425545, 35.223835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.773262, 33.411503, 35.339352>,  <40.423424, 33.388103, 35.531879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773262, 33.411503, 35.339352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459053, -0.219633, -0.860832,
		-0.156072, 0.973827, -0.165235,
		0.874592, 0.058500, -0.481317,
		41.035641, 33.429054, 35.194958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449322, 33.754852, 34.890018>,  <40.423424, 33.388103, 35.531879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449322, 33.754852, 34.890018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.749939, 33.495296, 34.842464>,  <40.930309, 33.339565, 34.813931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.749939, 33.495296, 34.842464>,  <40.449322, 33.754852, 34.890018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749939, 33.495296, 34.842464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481927, -0.416976, -0.770634,
		0.450483, 0.636456, -0.626090,
		0.751539, -0.648887, -0.118885,
		40.975399, 33.300629, 34.806797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580257, 33.836266, 34.241512>,  <40.449322, 33.754852, 34.890018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580257, 33.836266, 34.241512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.730370, 33.476921, 34.332821>,  <40.820435, 33.261314, 34.387608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.730370, 33.476921, 34.332821>,  <40.580257, 33.836266, 34.241512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730370, 33.476921, 34.332821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478720, -0.398735, -0.782201,
		0.793722, 0.184263, -0.579701,
		0.375278, -0.898364, 0.228274,
		40.842953, 33.207413, 34.401302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811596, 33.562748, 33.631901>,  <40.580257, 33.836266, 34.241512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811596, 33.562748, 33.631901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740688, 33.241734, 33.859764>,  <40.698143, 33.049126, 33.996483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740688, 33.241734, 33.859764>,  <40.811596, 33.562748, 33.631901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740688, 33.241734, 33.859764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441767, -0.452345, -0.774742,
		0.879443, -0.388989, -0.274351,
		-0.177265, -0.802540, 0.569654,
		40.687508, 33.000973, 34.030659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930786, 32.950424, 33.215790>,  <40.811596, 33.562748, 33.631901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930786, 32.950424, 33.215790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.715118, 32.788204, 33.511040>,  <40.585720, 32.690872, 33.688190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.715118, 32.788204, 33.511040>,  <40.930786, 32.950424, 33.215790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715118, 32.788204, 33.511040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540982, -0.504936, -0.672591,
		0.645477, -0.761949, 0.052847,
		-0.539165, -0.405553, 0.738125,
		40.553368, 32.666538, 33.732479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894974, 32.227055, 33.101040>,  <40.930786, 32.950424, 33.215790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894974, 32.227055, 33.101040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.584385, 32.290100, 33.345089>,  <40.398033, 32.327927, 33.491520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.584385, 32.290100, 33.345089>,  <40.894974, 32.227055, 33.101040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584385, 32.290100, 33.345089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572992, -0.579526, -0.579509,
		0.262246, -0.799568, 0.540295,
		-0.776471, 0.157611, 0.610124,
		40.351444, 32.337383, 33.528126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431526, 31.593992, 33.139572>,  <40.894974, 32.227055, 33.101040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431526, 31.593992, 33.139572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.185329, 31.866058, 33.298843>,  <40.037613, 32.029297, 33.394405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.185329, 31.866058, 33.298843>,  <40.431526, 31.593992, 33.139572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185329, 31.866058, 33.298843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775143, -0.431029, -0.461917,
		-0.142553, -0.592953, 0.792519,
		-0.615493, 0.680163, 0.398179,
		40.000683, 32.070107, 33.418297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843155, 31.225952, 33.202671>,  <40.431526, 31.593992, 33.139572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843155, 31.225952, 33.202671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686325, 31.589884, 33.257057>,  <39.592228, 31.808243, 33.289688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686325, 31.589884, 33.257057>,  <39.843155, 31.225952, 33.202671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686325, 31.589884, 33.257057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811602, -0.272523, -0.516753,
		-0.433103, -0.312956, 0.845269,
		-0.392076, 0.909830, 0.135965,
		39.568703, 31.862833, 33.297848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110966, 31.190071, 33.498180>,  <39.843155, 31.225952, 33.202671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110966, 31.190071, 33.498180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122826, 31.555496, 33.335934>,  <39.129940, 31.774752, 33.238586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122826, 31.555496, 33.335934>,  <39.110966, 31.190071, 33.498180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122826, 31.555496, 33.335934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853790, -0.187871, -0.485538,
		-0.519773, 0.360705, 0.774421,
		0.029645, 0.913563, -0.405617,
		39.131718, 31.829565, 33.214249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335377, 31.564386, 33.636913>,  <39.110966, 31.190071, 33.498180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335377, 31.564386, 33.636913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538658, 31.718758, 33.328941>,  <38.660629, 31.811380, 33.144157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538658, 31.718758, 33.328941>,  <38.335377, 31.564386, 33.636913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538658, 31.718758, 33.328941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738972, -0.263734, -0.619972,
		-0.442321, 0.884026, 0.151161,
		0.508205, 0.385930, -0.769925,
		38.691120, 31.834538, 33.097965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740505, 32.046085, 33.755737>,  <38.335377, 31.564386, 33.636913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740505, 32.046085, 33.755737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.513233, 32.003754, 34.082165>,  <37.376869, 31.978355, 34.278023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.513233, 32.003754, 34.082165>,  <37.740505, 32.046085, 33.755737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513233, 32.003754, 34.082165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552251, 0.686174, 0.473481,
		-0.610075, 0.719698, -0.331426,
		-0.568180, -0.105829, 0.816071,
		37.342781, 31.972006, 34.326984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635445, 32.800823, 34.076950>,  <37.740505, 32.046085, 33.755737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635445, 32.800823, 34.076950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569416, 32.521255, 34.355305>,  <37.529800, 32.353516, 34.522320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569416, 32.521255, 34.355305>,  <37.635445, 32.800823, 34.076950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569416, 32.521255, 34.355305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269816, 0.646652, 0.713471,
		-0.948658, 0.305533, 0.081839,
		-0.165068, -0.698921, 0.695889,
		37.519897, 32.311581, 34.564072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261551, 33.140774, 34.626980>,  <37.635445, 32.800823, 34.076950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261551, 33.140774, 34.626980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391624, 32.813454, 34.816563>,  <37.469669, 32.617062, 34.930313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391624, 32.813454, 34.816563>,  <37.261551, 33.140774, 34.626980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391624, 32.813454, 34.816563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341880, 0.569029, 0.747879,
		-0.881687, -0.081163, 0.464802,
		0.325186, -0.818302, 0.473958,
		37.489182, 32.567963, 34.958752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996490, 33.170544, 35.292351>,  <37.261551, 33.140774, 34.626980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996490, 33.170544, 35.292351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.313713, 32.928982, 35.324249>,  <37.504047, 32.784042, 35.343388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.313713, 32.928982, 35.324249>,  <36.996490, 33.170544, 35.292351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313713, 32.928982, 35.324249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338083, 0.545261, 0.767066,
		-0.506720, -0.581365, 0.636593,
		0.793054, -0.603908, 0.079745,
		37.551628, 32.747810, 35.348171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029816, 32.982517, 36.067429>,  <36.996490, 33.170544, 35.292351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029816, 32.982517, 36.067429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.379765, 32.877670, 35.904510>,  <37.589733, 32.814762, 35.806759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.379765, 32.877670, 35.904510>,  <37.029816, 32.982517, 36.067429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379765, 32.877670, 35.904510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477548, 0.326338, 0.815752,
		-0.080909, -0.908183, 0.410679,
		0.874872, -0.262120, -0.407298,
		37.642227, 32.799034, 35.782322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450317, 32.535137, 36.505333>,  <37.029816, 32.982517, 36.067429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450317, 32.535137, 36.505333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.715343, 32.690922, 36.249420>,  <37.874359, 32.784393, 36.095871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.715343, 32.690922, 36.249420>,  <37.450317, 32.535137, 36.505333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715343, 32.690922, 36.249420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554745, 0.318756, 0.768539,
		0.503255, -0.864124, -0.004858,
		0.662565, 0.389466, -0.639784,
		37.914112, 32.807762, 36.057484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133789, 32.299484, 36.710835>,  <37.450317, 32.535137, 36.505333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133789, 32.299484, 36.710835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.161167, 32.631321, 36.489170>,  <38.177593, 32.830421, 36.356171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.161167, 32.631321, 36.489170>,  <38.133789, 32.299484, 36.710835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161167, 32.631321, 36.489170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511705, 0.447642, 0.733331,
		0.856431, -0.333756, -0.393870,
		0.068441, 0.829592, -0.554159,
		38.181698, 32.880199, 36.322922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741570, 32.456120, 36.959507>,  <38.133789, 32.299484, 36.710835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741570, 32.456120, 36.959507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617664, 32.789932, 36.777248>,  <38.543324, 32.990219, 36.667892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617664, 32.789932, 36.777248>,  <38.741570, 32.456120, 36.959507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617664, 32.789932, 36.777248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601062, 0.543183, 0.586239,
		0.736731, -0.092276, -0.669860,
		-0.309761, 0.834528, -0.455643,
		38.524734, 33.040291, 36.640556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373142, 32.880184, 36.869286>,  <38.741570, 32.456120, 36.959507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373142, 32.880184, 36.869286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.069206, 33.139881, 36.855865>,  <38.886845, 33.295700, 36.847813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.069206, 33.139881, 36.855865>,  <39.373142, 32.880184, 36.869286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069206, 33.139881, 36.855865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443107, 0.554970, 0.704035,
		0.475714, 0.520084, -0.709373,
		-0.759837, 0.649247, -0.033554,
		38.841255, 33.334656, 36.845798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624058, 33.559666, 36.625565>,  <39.373142, 32.880184, 36.869286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624058, 33.559666, 36.625565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.284405, 33.619385, 36.828220>,  <39.080612, 33.655216, 36.949814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.284405, 33.619385, 36.828220>,  <39.624058, 33.559666, 36.625565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284405, 33.619385, 36.828220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480301, 0.617324, 0.623074,
		-0.219736, 0.772412, -0.595899,
		-0.849133, 0.149300, 0.506639,
		39.029663, 33.664173, 36.980213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727074, 34.245590, 36.763378>,  <39.624058, 33.559666, 36.625565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727074, 34.245590, 36.763378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.410362, 34.147087, 36.986969>,  <39.220337, 34.087986, 37.121124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.410362, 34.147087, 36.986969>,  <39.727074, 34.245590, 36.763378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410362, 34.147087, 36.986969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232618, 0.724600, 0.648725,
		-0.564786, 0.643671, -0.516435,
		-0.791774, -0.246259, 0.558973,
		39.172829, 34.073208, 37.154659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489033, 34.891079, 36.943390>,  <39.727074, 34.245590, 36.763378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489033, 34.891079, 36.943390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.310268, 34.647167, 37.205212>,  <39.203011, 34.500820, 37.362305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.310268, 34.647167, 37.205212>,  <39.489033, 34.891079, 36.943390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310268, 34.647167, 37.205212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298544, 0.588080, 0.751687,
		-0.843293, 0.531351, -0.080773,
		-0.446911, -0.609778, 0.654555,
		39.176197, 34.464233, 37.401577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068966, 35.320358, 37.433994>,  <39.489033, 34.891079, 36.943390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068966, 35.320358, 37.433994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.159336, 34.978443, 37.620880>,  <39.213558, 34.773293, 37.733013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.159336, 34.978443, 37.620880>,  <39.068966, 35.320358, 37.433994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159336, 34.978443, 37.620880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453219, 0.516782, 0.726312,
		-0.862293, 0.047657, 0.504163,
		0.225929, -0.854790, 0.467216,
		39.227116, 34.722008, 37.761044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923927, 35.476398, 38.084450>,  <39.068966, 35.320358, 37.433994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923927, 35.476398, 38.084450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161312, 35.157631, 38.129581>,  <39.303741, 34.966370, 38.156662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161312, 35.157631, 38.129581>,  <38.923927, 35.476398, 38.084450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161312, 35.157631, 38.129581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520193, 0.486747, 0.701767,
		-0.614168, -0.357778, 0.703415,
		0.593462, -0.796914, 0.112831,
		39.339352, 34.918556, 38.163429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577389, 36.222740, 38.319534>,  <38.923927, 35.476398, 38.084450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577389, 36.222740, 38.319534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227173, 36.381416, 38.429855>,  <38.017044, 36.476620, 38.496048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227173, 36.381416, 38.429855>,  <38.577389, 36.222740, 38.319534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227173, 36.381416, 38.429855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471564, -0.577400, -0.666510,
		-0.105146, -0.713617, 0.692601,
		-0.875541, 0.396686, 0.275805,
		37.964512, 36.500423, 38.512596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107803, 35.877838, 38.023533>,  <38.577389, 36.222740, 38.319534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107803, 35.877838, 38.023533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814915, 36.105431, 38.173260>,  <37.639183, 36.241985, 38.263096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814915, 36.105431, 38.173260>,  <38.107803, 35.877838, 38.023533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814915, 36.105431, 38.173260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675152, -0.534141, -0.508785,
		-0.089549, -0.625266, 0.775257,
		-0.732223, 0.568978, 0.374318,
		37.595249, 36.276123, 38.285557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564518, 35.489601, 38.158730>,  <38.107803, 35.877838, 38.023533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564518, 35.489601, 38.158730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407692, 35.853127, 38.101688>,  <37.313595, 36.071243, 38.067463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407692, 35.853127, 38.101688>,  <37.564518, 35.489601, 38.158730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407692, 35.853127, 38.101688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758758, -0.407118, -0.508470,
		-0.520163, -0.091151, 0.849189,
		-0.392067, 0.908816, -0.142606,
		37.290073, 36.125771, 38.058907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859879, 35.478531, 38.433376>,  <37.564518, 35.489601, 38.158730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859879, 35.478531, 38.433376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894527, 35.734745, 38.128166>,  <36.915318, 35.888474, 37.945038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894527, 35.734745, 38.128166>,  <36.859879, 35.478531, 38.433376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894527, 35.734745, 38.128166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728140, -0.482024, -0.487303,
		-0.679932, 0.597804, 0.424644,
		0.086624, 0.640534, -0.763029,
		36.920513, 35.926907, 37.899258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194538, 35.756962, 38.126289>,  <36.859879, 35.478531, 38.433376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194538, 35.756962, 38.126289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458954, 35.812885, 37.831406>,  <36.617603, 35.846439, 37.654476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458954, 35.812885, 37.831406>,  <36.194538, 35.756962, 38.126289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458954, 35.812885, 37.831406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641140, -0.405188, -0.651738,
		-0.389826, 0.903480, -0.178209,
		0.661041, 0.139807, -0.737210,
		36.657265, 35.854828, 37.610241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807377, 36.068676, 37.528267>,  <36.194538, 35.756962, 38.126289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807377, 36.068676, 37.528267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145004, 35.902946, 37.392101>,  <36.347580, 35.803509, 37.310402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145004, 35.902946, 37.392101>,  <35.807377, 36.068676, 37.528267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145004, 35.902946, 37.392101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523794, -0.501127, -0.688848,
		0.114816, 0.759743, -0.640006,
		0.844072, -0.414322, -0.340411,
		36.398228, 35.778648, 37.289978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638344, 36.041836, 36.848259>,  <35.807377, 36.068676, 37.528267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638344, 36.041836, 36.848259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969341, 35.817249, 36.847351>,  <36.167942, 35.682495, 36.846806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969341, 35.817249, 36.847351>,  <35.638344, 36.041836, 36.848259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969341, 35.817249, 36.847351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458658, -0.673632, -0.579528,
		0.323859, 0.480597, -0.814949,
		0.827495, -0.561468, -0.002268,
		36.217590, 35.648808, 36.846672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953255, 35.973030, 36.149765>,  <35.638344, 36.041836, 36.848259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953255, 35.973030, 36.149765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082207, 35.657806, 36.359539>,  <36.159576, 35.468670, 36.485405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082207, 35.657806, 36.359539>,  <35.953255, 35.973030, 36.149765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082207, 35.657806, 36.359539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208476, -0.599516, -0.772734,
		0.923369, 0.139781, -0.357563,
		0.322379, -0.788062, 0.524434,
		36.178921, 35.421387, 36.516869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373825, 35.545750, 35.682625>,  <35.953255, 35.973030, 36.149765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373825, 35.545750, 35.682625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250999, 35.297615, 35.971313>,  <36.177303, 35.148735, 36.144527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250999, 35.297615, 35.971313>,  <36.373825, 35.545750, 35.682625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250999, 35.297615, 35.971313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399193, -0.604467, -0.689394,
		0.863919, -0.499796, -0.062025,
		-0.307065, -0.620341, 0.721726,
		36.158878, 35.111511, 36.187832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377850, 34.976200, 35.415905>,  <36.373825, 35.545750, 35.682625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377850, 34.976200, 35.415905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181034, 34.857471, 35.743271>,  <36.062946, 34.786236, 35.939690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181034, 34.857471, 35.743271>,  <36.377850, 34.976200, 35.415905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181034, 34.857471, 35.743271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494780, -0.678151, -0.543419,
		0.716305, -0.672316, 0.186813,
		-0.492036, -0.296822, 0.818411,
		36.033424, 34.768425, 35.988792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374783, 34.209778, 35.430801>,  <36.377850, 34.976200, 35.415905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374783, 34.209778, 35.430801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069523, 34.281292, 35.679199>,  <35.886368, 34.324200, 35.828239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069523, 34.281292, 35.679199>,  <36.374783, 34.209778, 35.430801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069523, 34.281292, 35.679199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580466, -0.611984, -0.537153,
		0.284002, -0.770396, 0.570818,
		-0.763152, 0.178788, 0.620994,
		35.840576, 34.334927, 35.865498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148903, 33.516563, 35.583660>,  <36.374783, 34.209778, 35.430801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148903, 33.516563, 35.583660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860237, 33.777054, 35.677567>,  <35.687038, 33.933346, 35.733910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860237, 33.777054, 35.677567>,  <36.148903, 33.516563, 35.583660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860237, 33.777054, 35.677567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680004, -0.603381, -0.416565,
		-0.129620, -0.460263, 0.878269,
		-0.721660, 0.651222, 0.234771,
		35.643738, 33.972420, 35.747997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670380, 33.141792, 35.998787>,  <36.148903, 33.516563, 35.583660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670380, 33.141792, 35.998787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488865, 33.455952, 35.830395>,  <35.379955, 33.644447, 35.729359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488865, 33.455952, 35.830395>,  <35.670380, 33.141792, 35.998787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488865, 33.455952, 35.830395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710717, -0.603969, -0.360697,
		-0.537549, 0.135516, 0.832272,
		-0.453786, 0.785402, -0.420977,
		35.352730, 33.691574, 35.704102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877300, 32.967182, 36.019066>,  <35.670380, 33.141792, 35.998787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877300, 32.967182, 36.019066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948120, 33.252422, 35.747730>,  <34.990612, 33.423569, 35.584930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948120, 33.252422, 35.747730>,  <34.877300, 32.967182, 36.019066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948120, 33.252422, 35.747730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572805, -0.485809, -0.660215,
		-0.800342, 0.505445, 0.322456,
		0.177050, 0.713103, -0.678335,
		35.001236, 33.466354, 35.544231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269821, 33.211445, 35.765587>,  <34.877300, 32.967182, 36.019066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269821, 33.211445, 35.765587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513363, 33.307461, 35.463150>,  <34.659489, 33.365070, 35.281689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513363, 33.307461, 35.463150>,  <34.269821, 33.211445, 35.765587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513363, 33.307461, 35.463150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589507, -0.500869, -0.633729,
		-0.530823, 0.831571, -0.163452,
		0.608858, 0.240042, -0.756089,
		34.696022, 33.379475, 35.236324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877689, 33.357990, 35.350739>,  <34.269821, 33.211445, 35.765587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877689, 33.357990, 35.350739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205753, 33.288788, 35.132599>,  <34.402592, 33.247265, 35.001717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205753, 33.288788, 35.132599>,  <33.877689, 33.357990, 35.350739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205753, 33.288788, 35.132599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566103, -0.383392, -0.729753,
		-0.082831, 0.907238, -0.412382,
		0.820163, -0.173005, -0.545346,
		34.451801, 33.236885, 34.968994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853115, 33.667183, 34.700089>,  <33.877689, 33.357990, 35.350739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853115, 33.667183, 34.700089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100258, 33.357048, 34.647766>,  <34.248543, 33.170967, 34.616375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100258, 33.357048, 34.647766>,  <33.853115, 33.667183, 34.700089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100258, 33.357048, 34.647766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472622, -0.233256, -0.849836,
		0.628398, 0.586896, -0.510559,
		0.617855, -0.775336, -0.130802,
		34.285614, 33.124447, 34.608524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000431, 33.742081, 34.043480>,  <33.853115, 33.667183, 34.700089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000431, 33.742081, 34.043480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080753, 33.356335, 34.112377>,  <34.128948, 33.124886, 34.153713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080753, 33.356335, 34.112377>,  <34.000431, 33.742081, 34.043480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080753, 33.356335, 34.112377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426192, -0.244314, -0.871017,
		0.882063, 0.101501, -0.460067,
		0.200809, -0.964369, 0.172241,
		34.140995, 33.067024, 34.164051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258739, 33.511269, 33.345959>,  <34.000431, 33.742081, 34.043480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258739, 33.511269, 33.345959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144192, 33.197498, 33.566021>,  <34.075462, 33.009235, 33.698059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144192, 33.197498, 33.566021>,  <34.258739, 33.511269, 33.345959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144192, 33.197498, 33.566021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451321, -0.396074, -0.799647,
		0.845165, -0.477290, -0.240604,
		-0.286366, -0.784423, 0.550158,
		34.058281, 32.962170, 33.731068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026382, 33.015751, 32.802856>,  <34.258739, 33.511269, 33.345959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026382, 33.015751, 32.802856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890869, 32.820702, 33.124714>,  <33.809563, 32.703671, 33.317829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890869, 32.820702, 33.124714>,  <34.026382, 33.015751, 32.802856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890869, 32.820702, 33.124714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577588, -0.567311, -0.586984,
		0.742710, -0.663612, -0.089450,
		-0.338784, -0.487624, 0.804642,
		33.789234, 32.674416, 33.366108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028042, 32.342167, 32.580746>,  <34.026382, 33.015751, 32.802856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028042, 32.342167, 32.580746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788250, 32.344650, 32.900890>,  <33.644375, 32.346142, 33.092979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788250, 32.344650, 32.900890>,  <34.028042, 32.342167, 32.580746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788250, 32.344650, 32.900890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605991, -0.656778, -0.448796,
		0.522876, -0.754058, 0.397488,
		-0.599479, 0.006209, 0.800366,
		33.608406, 32.346512, 33.140999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871689, 31.607767, 32.865925>,  <34.028042, 32.342167, 32.580746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871689, 31.607767, 32.865925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572872, 31.853462, 32.967625>,  <33.393581, 32.000881, 33.028645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572872, 31.853462, 32.967625>,  <33.871689, 31.607767, 32.865925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572872, 31.853462, 32.967625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656123, -0.619739, -0.430611,
		-0.106928, -0.488503, 0.865986,
		-0.747040, 0.614238, 0.254250,
		33.348759, 32.037735, 33.043900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310886, 31.200043, 33.017803>,  <33.871689, 31.607767, 32.865925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310886, 31.200043, 33.017803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160465, 31.559525, 32.927547>,  <33.070213, 31.775213, 32.873394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160465, 31.559525, 32.927547>,  <33.310886, 31.200043, 33.017803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160465, 31.559525, 32.927547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635958, -0.427435, -0.642539,
		-0.673900, -0.098131, 0.732277,
		-0.376054, 0.898704, -0.225641,
		33.047649, 31.829136, 32.859856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607140, 31.144653, 33.173447>,  <33.310886, 31.200043, 33.017803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607140, 31.144653, 33.173447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615509, 31.456758, 32.923409>,  <32.620529, 31.644022, 32.773384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615509, 31.456758, 32.923409>,  <32.607140, 31.144653, 33.173447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615509, 31.456758, 32.923409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637037, -0.471476, -0.609831,
		-0.770549, 0.410972, 0.487192,
		0.020925, 0.780264, -0.625100,
		32.621788, 31.690838, 32.735878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898794, 31.218649, 33.037041>,  <32.607140, 31.144653, 33.173447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898794, 31.218649, 33.037041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092094, 31.404655, 32.740334>,  <32.208076, 31.516260, 32.562309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092094, 31.404655, 32.740334>,  <31.898794, 31.218649, 33.037041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092094, 31.404655, 32.740334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656826, -0.367607, -0.658365,
		-0.578832, 0.805371, 0.127790,
		0.483252, 0.465019, -0.741772,
		32.237068, 31.544161, 32.517803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365997, 31.611670, 32.723148>,  <31.898794, 31.218649, 33.037041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365997, 31.611670, 32.723148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654547, 31.611515, 32.446129>,  <31.827677, 31.611422, 32.279919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654547, 31.611515, 32.446129>,  <31.365997, 31.611670, 32.723148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654547, 31.611515, 32.446129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680660, -0.184877, -0.708888,
		-0.127762, 0.982762, -0.133628,
		0.721372, -0.000386, -0.692547,
		31.870958, 31.611399, 32.238365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145653, 31.890005, 32.031166>,  <31.365997, 31.611670, 32.723148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145653, 31.890005, 32.031166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.471781, 31.679247, 31.935137>,  <31.667458, 31.552792, 31.877520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.471781, 31.679247, 31.935137>,  <31.145653, 31.890005, 32.031166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471781, 31.679247, 31.935137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548093, -0.568640, -0.613386,
		0.186674, 0.631689, -0.752410,
		0.815320, -0.526894, -0.240074,
		31.716377, 31.521179, 31.863115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213263, 31.842752, 31.273314>,  <31.145653, 31.890005, 32.031166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213263, 31.842752, 31.273314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433889, 31.532366, 31.395723>,  <31.566265, 31.346134, 31.469170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433889, 31.532366, 31.395723>,  <31.213263, 31.842752, 31.273314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433889, 31.532366, 31.395723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521897, -0.607234, -0.599074,
		0.650689, 0.170717, -0.739905,
		0.551567, -0.775966, 0.306024,
		31.599360, 31.299576, 31.487530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527882, 32.067066, 30.613094>,  <31.213263, 31.842752, 31.273314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527882, 32.067066, 30.613094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.510962, 32.363476, 30.345037>,  <31.500809, 32.541321, 30.184204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.510962, 32.363476, 30.345037>,  <31.527882, 32.067066, 30.613094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510962, 32.363476, 30.345037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537110, 0.582440, 0.610145,
		0.842451, -0.334130, -0.422651,
		-0.042301, 0.741027, -0.670141,
		31.498272, 32.585785, 30.143995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187489, 32.341137, 30.609861>,  <31.527882, 32.067066, 30.613094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187489, 32.341137, 30.609861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968599, 32.634251, 30.448084>,  <31.837265, 32.810120, 30.351017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968599, 32.634251, 30.448084>,  <32.187489, 32.341137, 30.609861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968599, 32.634251, 30.448084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454747, 0.665972, 0.591343,
		0.702673, 0.139680, -0.697668,
		-0.547226, 0.732783, -0.404441,
		31.804432, 32.854084, 30.326752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665443, 32.809017, 30.345720>,  <32.187489, 32.341137, 30.609861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665443, 32.809017, 30.345720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.326717, 33.016575, 30.392456>,  <32.123482, 33.141109, 30.420498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.326717, 33.016575, 30.392456>,  <32.665443, 32.809017, 30.345720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326717, 33.016575, 30.392456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505733, 0.717482, 0.479014,
		0.164725, 0.464727, -0.869997,
		-0.846817, 0.518892, 0.116840,
		32.072674, 33.172241, 30.427507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892208, 33.490089, 30.073750>,  <32.665443, 32.809017, 30.345720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892208, 33.490089, 30.073750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561275, 33.553757, 30.289225>,  <32.362717, 33.591957, 30.418509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561275, 33.553757, 30.289225>,  <32.892208, 33.490089, 30.073750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561275, 33.553757, 30.289225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426014, 0.802847, 0.417071,
		-0.366099, 0.574545, -0.732031,
		-0.827335, 0.159166, 0.538686,
		32.313076, 33.601505, 30.450830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732262, 34.180653, 30.021406>,  <32.892208, 33.490089, 30.073750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732262, 34.180653, 30.021406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515621, 34.076942, 30.341267>,  <32.385635, 34.014717, 30.533184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515621, 34.076942, 30.341267>,  <32.732262, 34.180653, 30.021406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515621, 34.076942, 30.341267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394404, 0.761680, 0.514090,
		-0.742368, 0.593819, -0.310271,
		-0.541604, -0.259272, 0.799652,
		32.353142, 33.999161, 30.581161>
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
