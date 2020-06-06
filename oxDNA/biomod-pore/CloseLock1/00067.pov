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
	<24.232655, 35.363087, 34.934761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593580, 35.198448, 34.883514>,  <24.810135, 35.099663, 34.852768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593580, 35.198448, 34.883514>,  <24.232655, 35.363087, 34.934761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.593580, 35.198448, 34.883514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188250, 0.108865, 0.976069,
		-0.387801, -0.904839, 0.175714,
		0.902315, -0.411599, -0.128118,
		24.864275, 35.074970, 34.845078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.396927, 34.813198, 35.451027>,  <24.232655, 35.363087, 34.934761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.396927, 34.813198, 35.451027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749868, 34.944744, 35.316387>,  <24.961634, 35.023674, 35.235603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749868, 34.944744, 35.316387>,  <24.396927, 34.813198, 35.451027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749868, 34.944744, 35.316387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394249, -0.126066, 0.910316,
		0.256943, -0.935923, -0.240891,
		0.882354, 0.328870, -0.336595,
		25.014574, 35.043404, 35.215408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753502, 34.308296, 35.580536>,  <24.396927, 34.813198, 35.451027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753502, 34.308296, 35.580536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990608, 34.629238, 35.552654>,  <25.132872, 34.821804, 35.535927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990608, 34.629238, 35.552654>,  <24.753502, 34.308296, 35.580536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990608, 34.629238, 35.552654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330420, -0.163354, 0.929590,
		0.734472, -0.574062, -0.361944,
		0.592768, 0.802352, -0.069703,
		25.168438, 34.869942, 35.531742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484570, 34.173008, 35.665916>,  <24.753502, 34.308296, 35.580536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484570, 34.173008, 35.665916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332478, 34.518829, 35.797348>,  <25.241222, 34.726322, 35.876209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332478, 34.518829, 35.797348>,  <25.484570, 34.173008, 35.665916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332478, 34.518829, 35.797348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339633, -0.199929, 0.919064,
		0.860276, 0.461053, -0.217613,
		-0.380230, 0.864557, 0.328583,
		25.218409, 34.778198, 35.895924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146591, 34.620224, 35.888138>,  <25.484570, 34.173008, 35.665916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146591, 34.620224, 35.888138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790667, 34.686508, 36.058208>,  <25.577112, 34.726276, 36.160252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790667, 34.686508, 36.058208>,  <26.146591, 34.620224, 35.888138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790667, 34.686508, 36.058208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388802, -0.212468, 0.896488,
		0.238892, 0.963015, 0.124629,
		-0.889811, 0.165708, 0.425179,
		25.523724, 34.736221, 36.185760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740454, 34.314266, 35.572964>,  <26.146591, 34.620224, 35.888138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740454, 34.314266, 35.572964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023117, 34.031506, 35.560772>,  <27.192715, 33.861851, 35.553455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023117, 34.031506, 35.560772>,  <26.740454, 34.314266, 35.572964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023117, 34.031506, 35.560772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050468, 0.093331, -0.994355,
		0.705754, 0.701130, 0.101629,
		0.706657, -0.706899, -0.030484,
		27.235115, 33.819435, 35.551628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343262, 34.557800, 35.191444>,  <26.740454, 34.314266, 35.572964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343262, 34.557800, 35.191444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330830, 34.159992, 35.151508>,  <27.323370, 33.921307, 35.127548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330830, 34.159992, 35.151508>,  <27.343262, 34.557800, 35.191444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330830, 34.159992, 35.151508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041646, 0.098509, -0.994264,
		0.998649, -0.035062, 0.038356,
		-0.031082, -0.994518, -0.099836,
		27.321505, 33.861637, 35.121559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999153, 34.402546, 34.834511>,  <27.343262, 34.557800, 35.191444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999153, 34.402546, 34.834511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737602, 34.106102, 34.773582>,  <27.580671, 33.928234, 34.737026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737602, 34.106102, 34.773582>,  <27.999153, 34.402546, 34.834511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737602, 34.106102, 34.773582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064732, 0.145784, -0.987196,
		0.753826, -0.655365, -0.047351,
		-0.653877, -0.741109, -0.152319,
		27.541439, 33.883770, 34.727886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212019, 34.092587, 34.142574>,  <27.999153, 34.402546, 34.834511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212019, 34.092587, 34.142574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836805, 33.963497, 34.193073>,  <27.611677, 33.886044, 34.223373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836805, 33.963497, 34.193073>,  <28.212019, 34.092587, 34.142574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836805, 33.963497, 34.193073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243669, 0.355212, -0.902469,
		0.246404, -0.877310, -0.411840,
		-0.938035, -0.322725, 0.126248,
		27.555395, 33.866680, 34.230946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066006, 33.588524, 33.632034>,  <28.212019, 34.092587, 34.142574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066006, 33.588524, 33.632034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712263, 33.747013, 33.730766>,  <27.500017, 33.842106, 33.790005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712263, 33.747013, 33.730766>,  <28.066006, 33.588524, 33.632034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712263, 33.747013, 33.730766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191491, 0.174308, -0.965892,
		-0.425734, -0.901457, -0.078277,
		-0.884354, 0.396223, 0.246829,
		27.446957, 33.865879, 33.804813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548820, 33.174206, 33.140896>,  <28.066006, 33.588524, 33.632034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548820, 33.174206, 33.140896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339193, 33.477570, 33.295902>,  <27.213417, 33.659588, 33.388905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339193, 33.477570, 33.295902>,  <27.548820, 33.174206, 33.140896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339193, 33.477570, 33.295902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428495, 0.158428, -0.889546,
		-0.736032, -0.632233, 0.241946,
		-0.524069, 0.758407, 0.387517,
		27.181973, 33.705093, 33.412159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817974, 32.961048, 32.989021>,  <27.548820, 33.174206, 33.140896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817974, 32.961048, 32.989021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857794, 33.354164, 33.051262>,  <26.881685, 33.590034, 33.088608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857794, 33.354164, 33.051262>,  <26.817974, 32.961048, 32.989021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857794, 33.354164, 33.051262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474311, 0.184338, -0.860842,
		-0.874711, 0.011893, 0.484499,
		0.099550, 0.982791, 0.155601,
		26.887659, 33.649002, 33.097942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102644, 33.360275, 32.961044>,  <26.817974, 32.961048, 32.989021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102644, 33.360275, 32.961044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395060, 33.615250, 32.863678>,  <26.570509, 33.768234, 32.805260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395060, 33.615250, 32.863678>,  <26.102644, 33.360275, 32.961044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395060, 33.615250, 32.863678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499421, 0.256795, -0.827427,
		-0.464928, 0.726448, 0.506078,
		0.731041, 0.637440, -0.243412,
		26.614372, 33.806480, 32.790653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850822, 34.051758, 32.744827>,  <26.102644, 33.360275, 32.961044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850822, 34.051758, 32.744827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210316, 34.046783, 32.569500>,  <26.426012, 34.043800, 32.464302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210316, 34.046783, 32.569500>,  <25.850822, 34.051758, 32.744827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210316, 34.046783, 32.569500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424113, 0.229242, -0.876114,
		0.111375, 0.973290, 0.200754,
		0.898734, -0.012434, -0.438317,
		26.479937, 34.043053, 32.438004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738585, 34.527039, 32.268005>,  <25.850822, 34.051758, 32.744827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738585, 34.527039, 32.268005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080660, 34.362988, 32.141232>,  <26.285904, 34.264557, 32.065166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080660, 34.362988, 32.141232>,  <25.738585, 34.527039, 32.268005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080660, 34.362988, 32.141232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235145, 0.237936, -0.942387,
		0.461913, 0.880443, 0.107040,
		0.855186, -0.410131, -0.316937,
		26.337215, 34.239948, 32.046150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023550, 34.959564, 31.762987>,  <25.738585, 34.527039, 32.268005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023550, 34.959564, 31.762987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200304, 34.610218, 31.681047>,  <26.306356, 34.400608, 31.631884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200304, 34.610218, 31.681047>,  <26.023550, 34.959564, 31.762987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200304, 34.610218, 31.681047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241518, 0.104098, -0.964797,
		0.863949, 0.475804, -0.164935,
		0.441884, -0.873370, -0.204851,
		26.332869, 34.348206, 31.619593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449852, 34.994564, 31.118547>,  <26.023550, 34.959564, 31.762987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449852, 34.994564, 31.118547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422394, 34.598137, 31.164286>,  <26.405918, 34.360279, 31.191729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422394, 34.598137, 31.164286>,  <26.449852, 34.994564, 31.118547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422394, 34.598137, 31.164286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234231, -0.095401, -0.967489,
		0.969754, -0.093196, -0.225590,
		-0.068645, -0.991067, 0.114345,
		26.401800, 34.300816, 31.198589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874117, 34.692890, 30.667019>,  <26.449852, 34.994564, 31.118547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874117, 34.692890, 30.667019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596395, 34.414135, 30.738888>,  <26.429762, 34.246880, 30.782009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596395, 34.414135, 30.738888>,  <26.874117, 34.692890, 30.667019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596395, 34.414135, 30.738888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246222, -0.004575, -0.969203,
		0.676252, -0.717161, -0.168414,
		-0.694304, -0.696893, 0.179674,
		26.388103, 34.205067, 30.792789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917065, 34.139050, 30.166922>,  <26.874117, 34.692890, 30.667019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917065, 34.139050, 30.166922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552353, 34.036575, 30.295313>,  <26.333527, 33.975090, 30.372349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552353, 34.036575, 30.295313>,  <26.917065, 34.139050, 30.166922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552353, 34.036575, 30.295313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233948, -0.318356, -0.918650,
		0.337533, -0.912698, 0.230336,
		-0.911779, -0.256188, 0.320980,
		26.278820, 33.959721, 30.391607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820663, 33.538914, 29.908617>,  <26.917065, 34.139050, 30.166922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820663, 33.538914, 29.908617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480701, 33.741592, 29.966471>,  <26.276724, 33.863197, 30.001183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480701, 33.741592, 29.966471>,  <26.820663, 33.538914, 29.908617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480701, 33.741592, 29.966471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193080, -0.044075, -0.980193,
		-0.490284, -0.860998, 0.135292,
		-0.849907, 0.506695, 0.144632,
		26.225729, 33.893600, 30.009861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230822, 33.078545, 29.559883>,  <26.820663, 33.538914, 29.908617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230822, 33.078545, 29.559883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080839, 33.447617, 29.595833>,  <25.990850, 33.669060, 29.617403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080839, 33.447617, 29.595833>,  <26.230822, 33.078545, 29.559883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080839, 33.447617, 29.595833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233109, -0.000006, -0.972451,
		-0.897256, -0.385577, 0.215086,
		-0.374956, 0.922676, 0.089876,
		25.968353, 33.724419, 29.622795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674770, 33.074745, 29.058287>,  <26.230822, 33.078545, 29.559883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674770, 33.074745, 29.058287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672533, 33.469429, 29.123245>,  <25.671190, 33.706238, 29.162220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672533, 33.469429, 29.123245>,  <25.674770, 33.074745, 29.058287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672533, 33.469429, 29.123245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348152, 0.150315, -0.925308,
		-0.937422, -0.061713, 0.342684,
		-0.005593, 0.986710, 0.162394,
		25.670855, 33.765442, 29.171963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069490, 33.335125, 28.957888>,  <25.674770, 33.074745, 29.058287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069490, 33.335125, 28.957888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292618, 33.664566, 28.916862>,  <25.426495, 33.862232, 28.892248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292618, 33.664566, 28.916862>,  <25.069490, 33.335125, 28.957888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292618, 33.664566, 28.916862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477811, 0.217632, -0.851077,
		-0.678628, 0.523752, 0.514925,
		0.557818, 0.823602, -0.102563,
		25.459963, 33.911648, 28.886093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.662066, 33.821815, 28.576393>,  <25.069490, 33.335125, 28.957888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.662066, 33.821815, 28.576393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034882, 33.951748, 28.512159>,  <25.258572, 34.029705, 28.473619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034882, 33.951748, 28.512159>,  <24.662066, 33.821815, 28.576393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034882, 33.951748, 28.512159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232581, 0.196446, -0.952531,
		-0.277862, 0.925146, 0.258644,
		0.932040, 0.324828, -0.160587,
		25.314493, 34.049198, 28.463984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601255, 34.522057, 28.225964>,  <24.662066, 33.821815, 28.576393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601255, 34.522057, 28.225964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935467, 34.328785, 28.121321>,  <25.135994, 34.212822, 28.058535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935467, 34.328785, 28.121321>,  <24.601255, 34.522057, 28.225964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935467, 34.328785, 28.121321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322445, -0.045669, -0.945486,
		0.444888, 0.874332, -0.193955,
		0.835526, -0.483175, -0.261607,
		25.186125, 34.183834, 28.042839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700056, 34.732594, 27.460957>,  <24.601255, 34.522057, 28.225964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700056, 34.732594, 27.460957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930243, 34.406239, 27.483484>,  <25.068354, 34.210426, 27.497000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930243, 34.406239, 27.483484>,  <24.700056, 34.732594, 27.460957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930243, 34.406239, 27.483484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026525, -0.087447, -0.995816,
		0.817396, 0.571564, -0.071964,
		0.575465, -0.815885, 0.056318,
		25.102882, 34.161472, 27.500380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276253, 34.723900, 27.006346>,  <24.700056, 34.732594, 27.460957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276253, 34.723900, 27.006346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233019, 34.331123, 27.068445>,  <25.207079, 34.095455, 27.105705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233019, 34.331123, 27.068445>,  <25.276253, 34.723900, 27.006346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233019, 34.331123, 27.068445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028106, -0.153084, -0.987814,
		0.993745, -0.111129, -0.011052,
		-0.108083, -0.981945, 0.155249,
		25.200594, 34.036541, 27.115021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793575, 34.342571, 26.519474>,  <25.276253, 34.723900, 27.006346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793575, 34.342571, 26.519474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504583, 34.095539, 26.643805>,  <25.331188, 33.947319, 26.718403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504583, 34.095539, 26.643805>,  <25.793575, 34.342571, 26.519474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504583, 34.095539, 26.643805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108086, -0.343150, -0.933041,
		0.682890, -0.707700, 0.181167,
		-0.722480, -0.617583, 0.310827,
		25.287840, 33.910263, 26.737053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886305, 33.661045, 26.198980>,  <25.793575, 34.342571, 26.519474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886305, 33.661045, 26.198980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510710, 33.769588, 26.283514>,  <25.285353, 33.834717, 26.334234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510710, 33.769588, 26.283514>,  <25.886305, 33.661045, 26.198980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510710, 33.769588, 26.283514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278223, -0.238024, -0.930557,
		-0.202215, -0.932581, 0.299001,
		-0.938989, 0.271361, 0.211334,
		25.229013, 33.850998, 26.346914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495541, 33.126526, 25.986818>,  <25.886305, 33.661045, 26.198980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495541, 33.126526, 25.986818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336386, 33.491859, 25.952141>,  <25.240892, 33.711060, 25.931334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336386, 33.491859, 25.952141>,  <25.495541, 33.126526, 25.986818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336386, 33.491859, 25.952141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423672, -0.266739, -0.865651,
		-0.813749, -0.307701, 0.493084,
		-0.397887, 0.913329, -0.086694,
		25.217020, 33.765858, 25.926132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772652, 33.087955, 25.785524>,  <25.495541, 33.126526, 25.986818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772652, 33.087955, 25.785524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910589, 33.436642, 25.646269>,  <24.993353, 33.645851, 25.562716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910589, 33.436642, 25.646269>,  <24.772652, 33.087955, 25.785524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910589, 33.436642, 25.646269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580980, -0.093090, -0.808577,
		-0.737254, 0.481095, 0.474345,
		0.344846, 0.871712, -0.348138,
		25.014044, 33.698154, 25.541828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.425156, 32.496189, 25.663239>,  <24.772652, 33.087955, 25.785524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.425156, 32.496189, 25.663239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577948, 32.179176, 25.473089>,  <24.669622, 31.988968, 25.358999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577948, 32.179176, 25.473089>,  <24.425156, 32.496189, 25.663239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577948, 32.179176, 25.473089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681362, -0.106007, 0.724230,
		-0.624371, -0.600542, 0.499511,
		0.381979, -0.792535, -0.475374,
		24.692541, 31.941416, 25.330477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.547033, 31.972572, 26.195896>,  <24.425156, 32.496189, 25.663239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.547033, 31.972572, 26.195896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790760, 31.871649, 25.895210>,  <24.936996, 31.811094, 25.714798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790760, 31.871649, 25.895210>,  <24.547033, 31.972572, 26.195896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790760, 31.871649, 25.895210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754326, -0.107753, 0.647597,
		-0.244394, -0.961629, 0.124668,
		0.609315, -0.252309, -0.751716,
		24.973555, 31.795956, 25.669695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.771601, 31.210461, 26.206173>,  <24.547033, 31.972572, 26.195896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.771601, 31.210461, 26.206173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019318, 31.466698, 26.024570>,  <25.167948, 31.620440, 25.915609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019318, 31.466698, 26.024570>,  <24.771601, 31.210461, 26.206173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.019318, 31.466698, 26.024570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745990, -0.299696, 0.594711,
		0.244904, -0.706982, -0.663475,
		0.619290, 0.640593, -0.454005,
		25.205105, 31.658876, 25.888369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427513, 30.822117, 26.098339>,  <24.771601, 31.210461, 26.206173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427513, 30.822117, 26.098339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505610, 31.212343, 26.138639>,  <25.552467, 31.446480, 26.162819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505610, 31.212343, 26.138639>,  <25.427513, 30.822117, 26.098339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505610, 31.212343, 26.138639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555724, -0.194688, 0.808249,
		0.808116, -0.101814, -0.580157,
		0.195241, 0.975567, 0.100750,
		25.564182, 31.505013, 26.168865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173742, 30.990017, 26.077654>,  <25.427513, 30.822117, 26.098339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173742, 30.990017, 26.077654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989498, 31.278404, 26.284744>,  <25.878952, 31.451437, 26.408998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989498, 31.278404, 26.284744>,  <26.173742, 30.990017, 26.077654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989498, 31.278404, 26.284744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693987, -0.071122, 0.716466,
		0.553372, 0.689307, -0.467585,
		-0.460610, 0.720970, 0.517727,
		25.851315, 31.494696, 26.440062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752996, 31.190704, 26.408504>,  <26.173742, 30.990017, 26.077654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752996, 31.190704, 26.408504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438520, 31.352127, 26.595713>,  <26.249834, 31.448980, 26.708038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438520, 31.352127, 26.595713>,  <26.752996, 31.190704, 26.408504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438520, 31.352127, 26.595713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564750, 0.161677, 0.809270,
		0.250920, 0.900556, -0.355019,
		-0.786191, 0.403559, 0.468021,
		26.202663, 31.473194, 26.736118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929401, 31.840153, 26.819233>,  <26.752996, 31.190704, 26.408504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929401, 31.840153, 26.819233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606945, 31.665380, 26.978849>,  <26.413471, 31.560518, 27.074619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606945, 31.665380, 26.978849>,  <26.929401, 31.840153, 26.819233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606945, 31.665380, 26.978849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481415, -0.092168, 0.871633,
		-0.344064, 0.894761, 0.284645,
		-0.806139, -0.436930, 0.399040,
		26.365103, 31.534302, 27.098562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986654, 32.079842, 27.535147>,  <26.929401, 31.840153, 26.819233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986654, 32.079842, 27.535147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733158, 31.770487, 27.541359>,  <26.581060, 31.584873, 27.545086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733158, 31.770487, 27.541359>,  <26.986654, 32.079842, 27.535147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733158, 31.770487, 27.541359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214623, -0.156510, 0.964076,
		-0.743174, 0.614308, 0.265174,
		-0.633742, -0.773389, 0.015531,
		26.543036, 31.538469, 27.546019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577709, 32.118729, 28.169266>,  <26.986654, 32.079842, 27.535147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577709, 32.118729, 28.169266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554056, 31.738609, 28.046999>,  <26.539864, 31.510536, 27.973639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554056, 31.738609, 28.046999>,  <26.577709, 32.118729, 28.169266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554056, 31.738609, 28.046999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311224, -0.308490, 0.898873,
		-0.948495, -0.041976, 0.313999,
		-0.059135, -0.950301, -0.305665,
		26.536316, 31.453520, 27.955299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245867, 31.841148, 28.689539>,  <26.577709, 32.118729, 28.169266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245867, 31.841148, 28.689539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416677, 31.524576, 28.514593>,  <26.519163, 31.334633, 28.409626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416677, 31.524576, 28.514593>,  <26.245867, 31.841148, 28.689539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416677, 31.524576, 28.514593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230337, -0.372523, 0.898984,
		-0.874410, -0.484632, 0.023218,
		0.427027, -0.791428, -0.437367,
		26.544786, 31.287148, 28.383383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905218, 31.174557, 28.935850>,  <26.245867, 31.841148, 28.689539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905218, 31.174557, 28.935850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283218, 31.127487, 28.813782>,  <26.510017, 31.099245, 28.740541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283218, 31.127487, 28.813782>,  <25.905218, 31.174557, 28.935850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283218, 31.127487, 28.813782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223003, -0.450721, 0.864361,
		-0.239258, -0.884875, -0.399690,
		0.945000, -0.117673, -0.305169,
		26.566719, 31.092184, 28.722231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048506, 30.658714, 29.298584>,  <25.905218, 31.174557, 28.935850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048506, 30.658714, 29.298584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418901, 30.714685, 29.158318>,  <26.641138, 30.748268, 29.074158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418901, 30.714685, 29.158318>,  <26.048506, 30.658714, 29.298584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418901, 30.714685, 29.158318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375393, -0.440406, 0.815551,
		-0.040317, -0.886827, -0.460339,
		0.925989, 0.139927, -0.350664,
		26.696697, 30.756664, 29.053118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278103, 29.991470, 29.551321>,  <26.048506, 30.658714, 29.298584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278103, 29.991470, 29.551321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552229, 30.274269, 29.481468>,  <26.716705, 30.443949, 29.439556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552229, 30.274269, 29.481468>,  <26.278103, 29.991470, 29.551321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552229, 30.274269, 29.481468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259646, -0.013174, 0.965614,
		0.680387, -0.707093, -0.192598,
		0.685316, 0.706998, -0.174630,
		26.757824, 30.486368, 29.429079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801298, 29.798149, 30.013243>,  <26.278103, 29.991470, 29.551321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801298, 29.798149, 30.013243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932276, 30.168468, 29.937687>,  <27.010862, 30.390659, 29.892353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932276, 30.168468, 29.937687>,  <26.801298, 29.798149, 30.013243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932276, 30.168468, 29.937687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292883, 0.090614, 0.951845,
		0.898332, -0.366997, -0.241480,
		0.327443, 0.925798, -0.188888,
		27.030508, 30.446207, 29.881020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449663, 29.953674, 30.280735>,  <26.801298, 29.798149, 30.013243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449663, 29.953674, 30.280735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326830, 30.330986, 30.230261>,  <27.253130, 30.557373, 30.199976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326830, 30.330986, 30.230261>,  <27.449663, 29.953674, 30.280735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326830, 30.330986, 30.230261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402147, 0.248788, 0.881125,
		0.862541, 0.219834, -0.455736,
		-0.307083, 0.943280, -0.126185,
		27.234705, 30.613970, 30.192406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096283, 30.339987, 30.578909>,  <27.449663, 29.953674, 30.280735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096283, 30.339987, 30.578909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767101, 30.566885, 30.591398>,  <27.569592, 30.703024, 30.598892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767101, 30.566885, 30.591398>,  <28.096283, 30.339987, 30.578909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767101, 30.566885, 30.591398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203523, 0.243067, 0.948418,
		0.530398, 0.786860, -0.315481,
		-0.822955, 0.567247, 0.031222,
		27.520214, 30.737059, 30.600765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380684, 31.022032, 30.802019>,  <28.096283, 30.339987, 30.578909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380684, 31.022032, 30.802019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990187, 31.025681, 30.888613>,  <27.755888, 31.027870, 30.940569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990187, 31.025681, 30.888613>,  <28.380684, 31.022032, 30.802019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990187, 31.025681, 30.888613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207092, 0.333113, 0.919863,
		-0.063722, 0.942843, -0.327089,
		-0.976244, 0.009122, 0.216482,
		27.697313, 31.028418, 30.953558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443899, 31.486450, 31.152437>,  <28.380684, 31.022032, 30.802019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443899, 31.486450, 31.152437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065556, 31.373590, 31.216612>,  <27.838549, 31.305874, 31.255117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065556, 31.373590, 31.216612>,  <28.443899, 31.486450, 31.152437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065556, 31.373590, 31.216612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044354, 0.377302, 0.925027,
		-0.321529, 0.882063, -0.344361,
		-0.945860, -0.282149, 0.160437,
		27.781797, 31.288946, 31.264744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980186, 32.078312, 31.283424>,  <28.443899, 31.486450, 31.152437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980186, 32.078312, 31.283424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822519, 31.755079, 31.458529>,  <27.727919, 31.561138, 31.563591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822519, 31.755079, 31.458529>,  <27.980186, 32.078312, 31.283424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822519, 31.755079, 31.458529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057258, 0.453804, 0.889260,
		-0.917253, 0.375582, -0.132605,
		-0.394167, -0.808084, 0.437758,
		27.704269, 31.512653, 31.589855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467400, 32.313763, 31.708292>,  <27.980186, 32.078312, 31.283424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467400, 32.313763, 31.708292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558168, 31.946226, 31.837433>,  <27.612629, 31.725704, 31.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558168, 31.946226, 31.837433>,  <27.467400, 32.313763, 31.708292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558168, 31.946226, 31.837433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064189, 0.344888, 0.936447,
		-0.971796, -0.191776, 0.137242,
		0.226921, -0.918844, 0.322850,
		27.626245, 31.670572, 31.934288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155626, 32.267075, 32.401600>,  <27.467400, 32.313763, 31.708292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155626, 32.267075, 32.401600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438639, 31.985285, 32.379269>,  <27.608446, 31.816212, 32.365871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438639, 31.985285, 32.379269>,  <27.155626, 32.267075, 32.401600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438639, 31.985285, 32.379269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257304, 0.183235, 0.948799,
		-0.658173, -0.685670, 0.310909,
		0.707533, -0.704472, -0.055825,
		27.650898, 31.773943, 32.362522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096348, 31.807909, 32.943470>,  <27.155626, 32.267075, 32.401600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096348, 31.807909, 32.943470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468477, 31.733170, 32.817242>,  <27.691755, 31.688326, 32.741505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468477, 31.733170, 32.817242>,  <27.096348, 31.807909, 32.943470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468477, 31.733170, 32.817242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324074, 0.016064, 0.945895,
		-0.171669, -0.982258, 0.075497,
		0.930325, -0.186847, -0.315567,
		27.747576, 31.677116, 32.722572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199499, 31.320799, 33.383652>,  <27.096348, 31.807909, 32.943470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199499, 31.320799, 33.383652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566280, 31.416037, 33.255581>,  <27.786348, 31.473179, 33.178738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566280, 31.416037, 33.255581>,  <27.199499, 31.320799, 33.383652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566280, 31.416037, 33.255581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357255, -0.132600, 0.924546,
		0.177674, -0.962148, -0.206648,
		0.916952, 0.238094, -0.320173,
		27.841366, 31.487465, 33.159531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610838, 30.919746, 33.678921>,  <27.199499, 31.320799, 33.383652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610838, 30.919746, 33.678921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845261, 31.228333, 33.579823>,  <27.985914, 31.413485, 33.520363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845261, 31.228333, 33.579823>,  <27.610838, 30.919746, 33.678921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845261, 31.228333, 33.579823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377553, 0.010540, 0.925928,
		0.716932, -0.636184, -0.285093,
		0.586056, 0.771465, -0.247749,
		28.021078, 31.459772, 33.505497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328157, 30.708817, 33.830406>,  <27.610838, 30.919746, 33.678921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328157, 30.708817, 33.830406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330738, 31.107491, 33.797962>,  <28.332287, 31.346695, 33.778496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330738, 31.107491, 33.797962>,  <28.328157, 30.708817, 33.830406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330738, 31.107491, 33.797962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576905, 0.062541, 0.814413,
		0.816786, -0.052044, -0.574589,
		0.006449, 0.996685, -0.081107,
		28.332672, 31.406496, 33.773628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035620, 30.842407, 33.929497>,  <28.328157, 30.708817, 33.830406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035620, 30.842407, 33.929497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841221, 31.184811, 33.999989>,  <28.724581, 31.390253, 34.042282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841221, 31.184811, 33.999989>,  <29.035620, 30.842407, 33.929497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841221, 31.184811, 33.999989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598527, 0.179065, 0.780833,
		0.636844, 0.484961, -0.599369,
		-0.485999, 0.856008, 0.176226,
		28.695421, 31.441612, 34.052856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540865, 31.309219, 34.120270>,  <29.035620, 30.842407, 33.929497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540865, 31.309219, 34.120270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218269, 31.486326, 34.277004>,  <29.024712, 31.592590, 34.371044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218269, 31.486326, 34.277004>,  <29.540865, 31.309219, 34.120270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218269, 31.486326, 34.277004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480512, 0.104678, 0.870718,
		0.344508, 0.890506, -0.297176,
		-0.806488, 0.442766, 0.391837,
		28.976322, 31.619156, 34.394554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774948, 31.960588, 34.435131>,  <29.540865, 31.309219, 34.120270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774948, 31.960588, 34.435131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463276, 31.807310, 34.633541>,  <29.276274, 31.715343, 34.752586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463276, 31.807310, 34.633541>,  <29.774948, 31.960588, 34.435131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463276, 31.807310, 34.633541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544401, -0.021512, 0.838549,
		-0.310658, 0.923417, 0.225374,
		-0.779179, -0.383196, 0.496026,
		29.229523, 31.692352, 34.782349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481421, 32.146420, 34.257912>,  <29.774948, 31.960588, 34.435131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481421, 32.146420, 34.257912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708832, 32.451145, 34.133713>,  <30.845280, 32.633980, 34.059193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708832, 32.451145, 34.133713>,  <30.481421, 32.146420, 34.257912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708832, 32.451145, 34.133713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020014, 0.364508, 0.930985,
		0.822419, -0.535507, 0.191987,
		0.568530, 0.761817, -0.310497,
		30.879391, 32.679691, 34.040565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102066, 32.133049, 34.672886>,  <30.481421, 32.146420, 34.257912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102066, 32.133049, 34.672886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087278, 32.502174, 34.519497>,  <31.078405, 32.723648, 34.427464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087278, 32.502174, 34.519497>,  <31.102066, 32.133049, 34.672886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087278, 32.502174, 34.519497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290376, 0.377101, 0.879475,
		0.956198, -0.078838, -0.281903,
		-0.036970, 0.922810, -0.383476,
		31.076187, 32.779018, 34.404453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620943, 32.456142, 34.945805>,  <31.102066, 32.133049, 34.672886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620943, 32.456142, 34.945805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378897, 32.752380, 34.828941>,  <31.233669, 32.930122, 34.758823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378897, 32.752380, 34.828941>,  <31.620943, 32.456142, 34.945805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378897, 32.752380, 34.828941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077937, 0.420311, 0.904027,
		0.792312, 0.524273, -0.312057,
		-0.605118, 0.740592, -0.292157,
		31.197361, 32.974560, 34.741295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993759, 33.033905, 34.979465>,  <31.620943, 32.456142, 34.945805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993759, 33.033905, 34.979465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609634, 33.126732, 35.041355>,  <31.379158, 33.182430, 35.078487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609634, 33.126732, 35.041355>,  <31.993759, 33.033905, 34.979465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609634, 33.126732, 35.041355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254922, 0.505163, 0.824515,
		0.113187, 0.831236, -0.544275,
		-0.960314, 0.232072, 0.154723,
		31.321541, 33.196354, 35.087772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746422, 33.674236, 34.690716>,  <31.993759, 33.033905, 34.979465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746422, 33.674236, 34.690716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626266, 33.541656, 35.048466>,  <31.554173, 33.462109, 35.263115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626266, 33.541656, 35.048466>,  <31.746422, 33.674236, 34.690716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626266, 33.541656, 35.048466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357761, 0.830070, 0.427774,
		-0.884179, 0.448472, -0.130765,
		-0.300389, -0.331446, 0.894377,
		31.536150, 33.442223, 35.316780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354280, 34.226871, 34.960258>,  <31.746422, 33.674236, 34.690716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354280, 34.226871, 34.960258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494715, 33.995350, 35.254665>,  <31.578976, 33.856438, 35.431309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494715, 33.995350, 35.254665>,  <31.354280, 34.226871, 34.960258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494715, 33.995350, 35.254665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502322, 0.779795, 0.373621,
		-0.790198, 0.238547, 0.564520,
		0.351084, -0.578805, 0.736020,
		31.600040, 33.821709, 35.475471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112513, 34.499870, 35.606464>,  <31.354280, 34.226871, 34.960258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112513, 34.499870, 35.606464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449808, 34.294121, 35.668907>,  <31.652185, 34.170673, 35.706375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449808, 34.294121, 35.668907>,  <31.112513, 34.499870, 35.606464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449808, 34.294121, 35.668907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467875, 0.845307, 0.257969,
		-0.264654, -0.144490, 0.953458,
		0.843239, -0.514372, 0.156110,
		31.702780, 34.139809, 35.715740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264200, 34.500343, 36.370754>,  <31.112513, 34.499870, 35.606464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264200, 34.500343, 36.370754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592363, 34.464252, 36.144909>,  <31.789261, 34.442600, 36.009403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592363, 34.464252, 36.144909>,  <31.264200, 34.500343, 36.370754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592363, 34.464252, 36.144909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317935, 0.892722, 0.319319,
		0.475231, -0.441482, 0.761084,
		0.820410, -0.090225, -0.564612,
		31.838486, 34.437183, 35.975525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785563, 34.546474, 36.776237>,  <31.264200, 34.500343, 36.370754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785563, 34.546474, 36.776237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962240, 34.630726, 36.427402>,  <32.068249, 34.681278, 36.218102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962240, 34.630726, 36.427402>,  <31.785563, 34.546474, 36.776237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962240, 34.630726, 36.427402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451618, 0.787712, 0.418988,
		0.775207, -0.578916, 0.252806,
		0.441697, 0.210630, -0.872089,
		32.094749, 34.693916, 36.165775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413300, 34.607964, 36.918839>,  <31.785563, 34.546474, 36.776237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413300, 34.607964, 36.918839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380951, 34.823547, 36.583462>,  <32.361542, 34.952900, 36.382236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380951, 34.823547, 36.583462>,  <32.413300, 34.607964, 36.918839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380951, 34.823547, 36.583462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512080, 0.744153, 0.428964,
		0.855122, -0.394657, -0.336173,
		-0.080871, 0.538964, -0.838438,
		32.356689, 34.985237, 36.331932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110584, 34.914055, 36.867039>,  <32.413300, 34.607964, 36.918839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110584, 34.914055, 36.867039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867634, 35.117210, 36.622696>,  <32.721863, 35.239105, 36.476089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867634, 35.117210, 36.622696>,  <33.110584, 34.914055, 36.867039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867634, 35.117210, 36.622696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350995, 0.861379, 0.367191,
		0.712669, 0.008616, -0.701447,
		-0.607376, 0.507890, -0.610854,
		32.685421, 35.269577, 36.439442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524906, 35.382568, 36.422726>,  <33.110584, 34.914055, 36.867039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524906, 35.382568, 36.422726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168789, 35.559692, 36.465248>,  <32.955120, 35.665966, 36.490761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168789, 35.559692, 36.465248>,  <33.524906, 35.382568, 36.422726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168789, 35.559692, 36.465248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422874, 0.717265, 0.553813,
		0.168986, 0.538008, -0.825827,
		-0.890293, 0.442808, 0.106302,
		32.901703, 35.692535, 36.497139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617985, 36.075962, 36.376366>,  <33.524906, 35.382568, 36.422726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617985, 36.075962, 36.376366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262516, 36.050465, 36.558002>,  <33.049236, 36.035168, 36.666985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262516, 36.050465, 36.558002>,  <33.617985, 36.075962, 36.376366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262516, 36.050465, 36.558002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280199, 0.708413, 0.647796,
		-0.362982, 0.702914, -0.611683,
		-0.888669, -0.063745, 0.454097,
		32.995914, 36.031342, 36.694233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499954, 36.820702, 36.469845>,  <33.617985, 36.075962, 36.376366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499954, 36.820702, 36.469845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202259, 36.672977, 36.692451>,  <33.023640, 36.584343, 36.826015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202259, 36.672977, 36.692451>,  <33.499954, 36.820702, 36.469845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202259, 36.672977, 36.692451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138981, 0.729356, 0.669868,
		-0.653291, 0.575889, -0.491490,
		-0.744241, -0.369311, 0.556520,
		32.978985, 36.562183, 36.859406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087494, 37.395237, 36.682278>,  <33.499954, 36.820702, 36.469845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087494, 37.395237, 36.682278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053341, 37.093655, 36.942818>,  <33.032848, 36.912704, 37.099144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053341, 37.093655, 36.942818>,  <33.087494, 37.395237, 36.682278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053341, 37.093655, 36.942818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130755, 0.639608, 0.757499,
		-0.987731, 0.149842, 0.043975,
		-0.085379, -0.753956, 0.651353,
		33.027729, 36.867470, 37.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614059, 37.648865, 37.183567>,  <33.087494, 37.395237, 36.682278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614059, 37.648865, 37.183567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804455, 37.351509, 37.371532>,  <32.918690, 37.173096, 37.484310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804455, 37.351509, 37.371532>,  <32.614059, 37.648865, 37.183567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804455, 37.351509, 37.371532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081890, 0.569463, 0.817928,
		-0.875633, -0.350839, 0.331931,
		0.475984, -0.743387, 0.469911,
		32.947250, 37.128494, 37.512505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348656, 37.706974, 37.763428>,  <32.614059, 37.648865, 37.183567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348656, 37.706974, 37.763428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665524, 37.484268, 37.863415>,  <32.855644, 37.350643, 37.923405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665524, 37.484268, 37.863415>,  <32.348656, 37.706974, 37.763428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665524, 37.484268, 37.863415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107566, 0.530535, 0.840811,
		-0.600749, -0.639176, 0.480162,
		0.792168, -0.556765, 0.249965,
		32.903175, 37.317238, 37.938404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243988, 37.441166, 38.430988>,  <32.348656, 37.706974, 37.763428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243988, 37.441166, 38.430988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642124, 37.452347, 38.394085>,  <32.881008, 37.459057, 38.371944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642124, 37.452347, 38.394085>,  <32.243988, 37.441166, 38.430988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642124, 37.452347, 38.394085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064984, 0.512308, 0.856340,
		0.071197, -0.858347, 0.508106,
		0.995343, 0.027950, -0.092254,
		32.940727, 37.460732, 38.366409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442822, 37.343086, 39.084869>,  <32.243988, 37.441166, 38.430988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442822, 37.343086, 39.084869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785389, 37.444481, 38.904961>,  <32.990929, 37.505318, 38.797016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785389, 37.444481, 38.904961>,  <32.442822, 37.343086, 39.084869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785389, 37.444481, 38.904961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284033, 0.496154, 0.820461,
		0.431125, -0.830409, 0.352920,
		0.856421, 0.253481, -0.449768,
		33.042316, 37.520527, 38.770031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979847, 37.092991, 39.498856>,  <32.442822, 37.343086, 39.084869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979847, 37.092991, 39.498856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119385, 37.404278, 39.289982>,  <33.203110, 37.591049, 39.164658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119385, 37.404278, 39.289982>,  <32.979847, 37.092991, 39.498856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119385, 37.404278, 39.289982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022825, 0.549968, 0.834874,
		0.936901, -0.303163, 0.174092,
		0.348848, 0.778221, -0.522186,
		33.224041, 37.637745, 39.133327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459171, 37.502483, 39.940063>,  <32.979847, 37.092991, 39.498856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459171, 37.502483, 39.940063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336086, 37.758820, 39.658745>,  <33.262234, 37.912621, 39.489952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336086, 37.758820, 39.658745>,  <33.459171, 37.502483, 39.940063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336086, 37.758820, 39.658745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064894, 0.751580, 0.656442,
		0.949263, 0.156357, -0.272859,
		-0.307714, 0.640843, -0.703301,
		33.243771, 37.951073, 39.447754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943508, 38.117859, 39.930828>,  <33.459171, 37.502483, 39.940063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943508, 38.117859, 39.930828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601360, 38.243351, 39.765945>,  <33.396072, 38.318645, 39.667015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601360, 38.243351, 39.765945>,  <33.943508, 38.117859, 39.930828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601360, 38.243351, 39.765945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055920, 0.847014, 0.528622,
		0.514993, 0.429115, -0.742052,
		-0.855368, 0.313733, -0.412210,
		33.344749, 38.337471, 39.642281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070648, 38.805462, 39.897255>,  <33.943508, 38.117859, 39.930828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070648, 38.805462, 39.897255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675320, 38.800465, 39.836502>,  <33.438122, 38.797466, 39.800049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675320, 38.800465, 39.836502>,  <34.070648, 38.805462, 39.897255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675320, 38.800465, 39.836502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102408, 0.792530, 0.601173,
		0.112858, 0.609705, -0.784553,
		-0.988320, -0.012497, -0.151882,
		33.378822, 38.796715, 39.790939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813942, 39.427181, 39.735352>,  <34.070648, 38.805462, 39.897255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813942, 39.427181, 39.735352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489014, 39.243862, 39.879631>,  <33.294056, 39.133869, 39.966198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489014, 39.243862, 39.879631>,  <33.813942, 39.427181, 39.735352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489014, 39.243862, 39.879631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060828, 0.681664, 0.729132,
		-0.580037, 0.570345, -0.581604,
		-0.812316, -0.458301, 0.360697,
		33.245319, 39.106373, 39.987839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463486, 39.962002, 40.055279>,  <33.813942, 39.427181, 39.735352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463486, 39.962002, 40.055279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280209, 39.635025, 40.194908>,  <33.170242, 39.438839, 40.278687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280209, 39.635025, 40.194908>,  <33.463486, 39.962002, 40.055279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280209, 39.635025, 40.194908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030043, 0.406739, 0.913050,
		-0.888346, 0.407864, -0.210923,
		-0.458191, -0.817441, 0.349071,
		33.142750, 39.389793, 40.299629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944645, 40.251404, 40.373360>,  <33.463486, 39.962002, 40.055279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944645, 40.251404, 40.373360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982246, 39.882156, 40.522503>,  <33.004807, 39.660610, 40.611988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982246, 39.882156, 40.522503>,  <32.944645, 40.251404, 40.373360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982246, 39.882156, 40.522503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005884, 0.375022, 0.926997,
		-0.995555, -0.084944, 0.040683,
		0.094000, -0.923116, 0.372855,
		33.010445, 39.605221, 40.634361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423592, 40.236477, 40.817627>,  <32.944645, 40.251404, 40.373360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423592, 40.236477, 40.817627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704796, 39.972420, 40.923447>,  <32.873516, 39.813984, 40.986938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704796, 39.972420, 40.923447>,  <32.423592, 40.236477, 40.817627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704796, 39.972420, 40.923447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071432, 0.435653, 0.897276,
		-0.707587, -0.611894, 0.353423,
		0.703007, -0.660146, 0.264553,
		32.915699, 39.774376, 41.002811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390362, 40.422600, 41.485344>,  <32.423592, 40.236477, 40.817627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390362, 40.422600, 41.485344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687595, 40.158916, 41.439259>,  <32.865936, 40.000706, 41.411610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687595, 40.158916, 41.439259>,  <32.390362, 40.422600, 41.485344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687595, 40.158916, 41.439259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325136, 0.205168, 0.923143,
		-0.584903, -0.723432, 0.366789,
		0.743085, -0.659205, -0.115210,
		32.910522, 39.961155, 41.404694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354454, 39.901127, 42.045460>,  <32.390362, 40.422600, 41.485344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354454, 39.901127, 42.045460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727600, 39.939930, 41.906696>,  <32.951488, 39.963211, 41.823437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727600, 39.939930, 41.906696>,  <32.354454, 39.901127, 42.045460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727600, 39.939930, 41.906696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334017, 0.127616, 0.933888,
		0.134886, -0.987066, 0.086639,
		0.932866, 0.097029, -0.346911,
		33.007462, 39.969032, 41.802624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762798, 39.428020, 42.438942>,  <32.354454, 39.901127, 42.045460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762798, 39.428020, 42.438942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982147, 39.731983, 42.299328>,  <33.113754, 39.914360, 42.215557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982147, 39.731983, 42.299328>,  <32.762798, 39.428020, 42.438942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982147, 39.731983, 42.299328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136176, 0.330671, 0.933870,
		0.825074, -0.559636, 0.077848,
		0.548369, 0.759911, -0.349038,
		33.146660, 39.959957, 42.194618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237904, 39.466530, 42.937920>,  <32.762798, 39.428020, 42.438942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237904, 39.466530, 42.937920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211781, 39.809105, 42.733078>,  <33.196106, 40.014648, 42.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211781, 39.809105, 42.733078>,  <33.237904, 39.466530, 42.937920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211781, 39.809105, 42.733078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315913, 0.504544, 0.803513,
		0.946538, -0.109305, -0.303510,
		-0.065307, 0.856439, -0.512101,
		33.192188, 40.066036, 42.579449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882488, 39.776089, 43.078835>,  <33.237904, 39.466530, 42.937920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882488, 39.776089, 43.078835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630768, 40.069607, 42.976444>,  <33.479736, 40.245720, 42.915012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630768, 40.069607, 42.976444>,  <33.882488, 39.776089, 43.078835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630768, 40.069607, 42.976444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403222, 0.589854, 0.699631,
		0.664374, 0.337064, -0.667079,
		-0.629300, 0.733798, -0.255972,
		33.441978, 40.289745, 42.899654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188812, 40.337315, 43.374592>,  <33.882488, 39.776089, 43.078835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188812, 40.337315, 43.374592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834293, 40.497272, 43.281155>,  <33.621582, 40.593246, 43.225090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834293, 40.497272, 43.281155>,  <34.188812, 40.337315, 43.374592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834293, 40.497272, 43.281155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150983, 0.726327, 0.670562,
		0.437821, 0.559046, -0.704116,
		-0.886294, 0.399896, -0.233595,
		33.568405, 40.617241, 43.211075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260838, 41.138885, 43.218136>,  <34.188812, 40.337315, 43.374592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260838, 41.138885, 43.218136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894028, 41.035004, 43.339211>,  <33.673943, 40.972675, 43.411858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894028, 41.035004, 43.339211>,  <34.260838, 41.138885, 43.218136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894028, 41.035004, 43.339211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023532, 0.722386, 0.691090,
		-0.398135, 0.640870, -0.656334,
		-0.917025, -0.259702, 0.302688,
		33.618919, 40.957092, 43.430016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853909, 41.815601, 43.346043>,  <34.260838, 41.138885, 43.218136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853909, 41.815601, 43.346043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671764, 41.521046, 43.546192>,  <33.562477, 41.344311, 43.666283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671764, 41.521046, 43.546192>,  <33.853909, 41.815601, 43.346043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671764, 41.521046, 43.546192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094383, 0.598782, 0.795332,
		-0.885289, 0.314938, -0.342166,
		-0.455363, -0.736393, 0.500370,
		33.535156, 41.300129, 43.696304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517666, 42.283913, 43.741734>,  <33.853909, 41.815601, 43.346043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517666, 42.283913, 43.741734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496403, 41.911522, 43.886211>,  <33.483646, 41.688087, 43.972897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496403, 41.911522, 43.886211>,  <33.517666, 42.283913, 43.741734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496403, 41.911522, 43.886211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151604, 0.349990, 0.924404,
		-0.987011, 0.103898, 0.122535,
		-0.053158, -0.930974, 0.361195,
		33.480457, 41.632229, 43.994572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159355, 42.349728, 44.304268>,  <33.517666, 42.283913, 43.741734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159355, 42.349728, 44.304268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337715, 42.000015, 44.381012>,  <33.444729, 41.790188, 44.427059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337715, 42.000015, 44.381012>,  <33.159355, 42.349728, 44.304268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337715, 42.000015, 44.381012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143692, 0.281484, 0.948746,
		-0.883475, -0.395475, 0.251140,
		0.445897, -0.874280, 0.191857,
		33.471485, 41.737732, 44.438568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851662, 42.010948, 44.903038>,  <33.159355, 42.349728, 44.304268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851662, 42.010948, 44.903038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225952, 41.871712, 44.880226>,  <33.450527, 41.788170, 44.866539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225952, 41.871712, 44.880226>,  <32.851662, 42.010948, 44.903038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225952, 41.871712, 44.880226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150930, 0.248984, 0.956675,
		-0.318812, -0.903791, 0.285517,
		0.935724, -0.348092, -0.057031,
		33.506668, 41.767284, 44.863117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956829, 41.893703, 45.648930>,  <32.851662, 42.010948, 44.903038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956829, 41.893703, 45.648930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312706, 41.837093, 45.475300>,  <33.526234, 41.803127, 45.371120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312706, 41.837093, 45.475300>,  <32.956829, 41.893703, 45.648930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312706, 41.837093, 45.475300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429551, -0.062703, 0.900863,
		-0.154713, -0.987947, 0.005006,
		0.889691, -0.141525, -0.434075,
		33.579613, 41.794636, 45.345078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319668, 41.206047, 45.826599>,  <32.956829, 41.893703, 45.648930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319668, 41.206047, 45.826599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595791, 41.485355, 45.750805>,  <33.761463, 41.652939, 45.705330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595791, 41.485355, 45.750805>,  <33.319668, 41.206047, 45.826599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595791, 41.485355, 45.750805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321210, -0.061103, 0.945035,
		0.648310, -0.713224, -0.266470,
		0.690303, 0.698268, -0.189481,
		33.802883, 41.694836, 45.693962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796375, 41.037540, 46.304657>,  <33.319668, 41.206047, 45.826599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796375, 41.037540, 46.304657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897926, 41.403980, 46.180527>,  <33.958858, 41.623844, 46.106049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897926, 41.403980, 46.180527>,  <33.796375, 41.037540, 46.304657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897926, 41.403980, 46.180527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291160, 0.233577, 0.927722,
		0.922373, -0.325886, -0.207431,
		0.253880, 0.916101, -0.310330,
		33.974091, 41.678810, 46.087429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395321, 41.162922, 46.641777>,  <33.796375, 41.037540, 46.304657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395321, 41.162922, 46.641777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248863, 41.516872, 46.526585>,  <34.160988, 41.729244, 46.457470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248863, 41.516872, 46.526585>,  <34.395321, 41.162922, 46.641777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248863, 41.516872, 46.526585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259382, 0.394255, 0.881637,
		0.893678, 0.248109, -0.373875,
		-0.366144, 0.884876, -0.287982,
		34.139019, 41.782333, 46.440189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952686, 41.697346, 46.613342>,  <34.395321, 41.162922, 46.641777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952686, 41.697346, 46.613342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585548, 41.847115, 46.666065>,  <34.365265, 41.936974, 46.697701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585548, 41.847115, 46.666065>,  <34.952686, 41.697346, 46.613342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585548, 41.847115, 46.666065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312143, 0.475683, 0.822370,
		0.245212, 0.795951, -0.553475,
		-0.917844, 0.374418, 0.131807,
		34.310196, 41.959438, 46.705608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028896, 42.366943, 46.744190>,  <34.952686, 41.697346, 46.613342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028896, 42.366943, 46.744190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654789, 42.315891, 46.876236>,  <34.430325, 42.285259, 46.955463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654789, 42.315891, 46.876236>,  <35.028896, 42.366943, 46.744190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654789, 42.315891, 46.876236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189699, 0.606659, 0.771997,
		-0.298798, 0.784650, -0.543179,
		-0.935272, -0.127631, 0.330116,
		34.374207, 42.277603, 46.975269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984791, 42.918449, 47.147598>,  <35.028896, 42.366943, 46.744190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984791, 42.918449, 47.147598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666451, 42.708809, 47.268875>,  <34.475445, 42.583023, 47.341640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666451, 42.708809, 47.268875>,  <34.984791, 42.918449, 47.147598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666451, 42.708809, 47.268875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006372, 0.507969, 0.861352,
		-0.605453, 0.683580, -0.407609,
		-0.795855, -0.524106, 0.303196,
		34.427692, 42.551579, 47.359833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727524, 43.325741, 47.615524>,  <34.984791, 42.918449, 47.147598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727524, 43.325741, 47.615524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519871, 43.009930, 47.746460>,  <34.395279, 42.820442, 47.825024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519871, 43.009930, 47.746460>,  <34.727524, 43.325741, 47.615524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519871, 43.009930, 47.746460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182626, 0.476614, 0.859934,
		-0.834955, 0.386638, -0.391613,
		-0.519132, -0.789525, 0.327341,
		34.364132, 42.773071, 47.844662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190712, 43.547325, 47.985073>,  <34.727524, 43.325741, 47.615524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190712, 43.547325, 47.985073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275539, 43.194187, 48.152695>,  <34.326435, 42.982304, 48.253269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275539, 43.194187, 48.152695>,  <34.190712, 43.547325, 47.985073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275539, 43.194187, 48.152695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014345, 0.425952, 0.904632,
		-0.977149, -0.197855, 0.077667,
		0.212069, -0.882846, 0.419057,
		34.339161, 42.929333, 48.278412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645294, 43.401863, 48.495598>,  <34.190712, 43.547325, 47.985073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645294, 43.401863, 48.495598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000263, 43.223816, 48.543518>,  <34.213245, 43.116985, 48.572269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000263, 43.223816, 48.543518>,  <33.645294, 43.401863, 48.495598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000263, 43.223816, 48.543518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023620, 0.215636, 0.976188,
		-0.460355, -0.869119, 0.180846,
		0.887420, -0.445122, 0.119798,
		34.266491, 43.090279, 48.579456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541283, 43.016891, 49.084385>,  <33.645294, 43.401863, 48.495598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541283, 43.016891, 49.084385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929188, 43.099735, 49.032745>,  <34.161930, 43.149441, 49.001762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929188, 43.099735, 49.032745>,  <33.541283, 43.016891, 49.084385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929188, 43.099735, 49.032745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098521, 0.151717, 0.983502,
		0.223285, -0.966480, 0.126724,
		0.969761, 0.207116, -0.129095,
		34.220116, 43.161869, 48.994019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109497, 42.469269, 49.209206>,  <33.541283, 43.016891, 49.084385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109497, 42.469269, 49.209206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166374, 42.852165, 49.309986>,  <34.200500, 43.081902, 49.370453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166374, 42.852165, 49.309986>,  <34.109497, 42.469269, 49.209206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166374, 42.852165, 49.309986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185850, -0.275829, 0.943069,
		0.972236, -0.087269, -0.217122,
		0.142190, 0.957237, 0.251952,
		34.209030, 43.139336, 49.385571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990067, 42.166386, 49.926941>,  <34.109497, 42.469269, 49.209206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990067, 42.166386, 49.926941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227951, 41.959534, 50.173157>,  <34.370682, 41.835423, 50.320889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227951, 41.959534, 50.173157>,  <33.990067, 42.166386, 49.926941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227951, 41.959534, 50.173157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389499, -0.484457, -0.783321,
		0.703284, 0.705604, -0.086690,
		0.594712, -0.517131, 0.615543,
		34.406364, 41.804394, 50.357819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860344, 42.171814, 49.778408>,  <33.990067, 42.166386, 49.926941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860344, 42.171814, 49.778408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764694, 41.824364, 49.951988>,  <34.707302, 41.615894, 50.056137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764694, 41.824364, 49.951988>,  <34.860344, 42.171814, 49.778408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764694, 41.824364, 49.951988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559125, -0.488562, -0.669841,
		0.793850, 0.082454, 0.602498,
		-0.239127, -0.868625, 0.433947,
		34.692955, 41.563778, 50.082172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261387, 42.730911, 49.385807>,  <34.860344, 42.171814, 49.778408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261387, 42.730911, 49.385807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948055, 42.891518, 49.195992>,  <34.760056, 42.987881, 49.082104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948055, 42.891518, 49.195992>,  <35.261387, 42.730911, 49.385807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948055, 42.891518, 49.195992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534599, 0.045615, -0.843874,
		-0.317179, -0.914717, -0.250379,
		-0.783327, 0.401511, -0.474539,
		34.713058, 43.011971, 49.053631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350735, 42.463989, 48.731453>,  <35.261387, 42.730911, 49.385807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350735, 42.463989, 48.731453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122391, 42.792194, 48.719585>,  <34.985386, 42.989117, 48.712463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122391, 42.792194, 48.719585>,  <35.350735, 42.463989, 48.731453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122391, 42.792194, 48.719585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252746, 0.141229, -0.957170,
		-0.781181, -0.553904, -0.288003,
		-0.570855, 0.820515, -0.029672,
		34.951134, 43.038349, 48.710686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037758, 42.249779, 48.575863>,  <35.350735, 42.463989, 48.731453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037758, 42.249779, 48.575863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926239, 42.049957, 48.903942>,  <35.859325, 41.930065, 49.100788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926239, 42.049957, 48.903942>,  <36.037758, 42.249779, 48.575863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926239, 42.049957, 48.903942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124566, -0.828033, -0.546668,
		0.952236, -0.254579, 0.168629,
		-0.278800, -0.499551, 0.820195,
		35.842598, 41.900093, 49.150002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517632, 41.723682, 48.722244>,  <36.037758, 42.249779, 48.575863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517632, 41.723682, 48.722244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138138, 41.670895, 48.837128>,  <35.910442, 41.639221, 48.906055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138138, 41.670895, 48.837128>,  <36.517632, 41.723682, 48.722244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138138, 41.670895, 48.837128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087329, -0.763851, -0.639457,
		0.303770, -0.631757, 0.713167,
		-0.948735, -0.131968, 0.287205,
		35.853516, 41.631306, 48.923290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352489, 40.988216, 48.930958>,  <36.517632, 41.723682, 48.722244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352489, 40.988216, 48.930958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014694, 41.164131, 48.808693>,  <35.812019, 41.269680, 48.735332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014694, 41.164131, 48.808693>,  <36.352489, 40.988216, 48.930958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014694, 41.164131, 48.808693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217505, -0.803152, -0.554651,
		-0.489427, -0.401910, 0.773906,
		-0.844484, 0.439790, -0.305667,
		35.761349, 41.296066, 48.716991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822788, 40.570286, 49.054596>,  <36.352489, 40.988216, 48.930958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822788, 40.570286, 49.054596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690369, 40.805862, 48.759693>,  <35.610916, 40.947208, 48.582752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690369, 40.805862, 48.759693>,  <35.822788, 40.570286, 49.054596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690369, 40.805862, 48.759693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182255, -0.806509, -0.562429,
		-0.925847, -0.051820, 0.374329,
		-0.331044, 0.588946, -0.737260,
		35.591057, 40.982548, 48.538517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173710, 40.266747, 48.883915>,  <35.822788, 40.570286, 49.054596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173710, 40.266747, 48.883915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312984, 40.479389, 48.575069>,  <35.396549, 40.606976, 48.389763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312984, 40.479389, 48.575069>,  <35.173710, 40.266747, 48.883915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312984, 40.479389, 48.575069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356910, -0.686443, -0.633570,
		-0.866822, 0.496176, -0.049275,
		0.348187, 0.531606, -0.772115,
		35.417442, 40.638870, 48.343433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674854, 40.198803, 48.387432>,  <35.173710, 40.266747, 48.883915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674854, 40.198803, 48.387432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991642, 40.315208, 48.172737>,  <35.181717, 40.385052, 48.043919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991642, 40.315208, 48.172737>,  <34.674854, 40.198803, 48.387432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991642, 40.315208, 48.172737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086369, -0.816859, -0.570334,
		-0.604419, 0.498046, -0.621794,
		0.791971, 0.291017, -0.536741,
		35.229233, 40.402515, 48.011715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476078, 40.239853, 47.652142>,  <34.674854, 40.198803, 48.387432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476078, 40.239853, 47.652142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872368, 40.189873, 47.673500>,  <35.110142, 40.159885, 47.686314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872368, 40.189873, 47.673500>,  <34.476078, 40.239853, 47.652142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872368, 40.189873, 47.673500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048156, -0.690319, -0.721901,
		0.127063, 0.712634, -0.689933,
		0.990725, -0.124951, 0.053396,
		35.169586, 40.152386, 47.689518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686569, 40.250767, 46.935417>,  <34.476078, 40.239853, 47.652142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686569, 40.250767, 46.935417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997993, 40.088570, 47.127003>,  <35.184849, 39.991249, 47.241955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997993, 40.088570, 47.127003>,  <34.686569, 40.250767, 46.935417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997993, 40.088570, 47.127003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096505, -0.831498, -0.547081,
		0.620099, 0.379716, -0.686508,
		0.778565, -0.405496, 0.478967,
		35.231564, 39.966919, 47.270691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157684, 40.151463, 46.403259>,  <34.686569, 40.250767, 46.935417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157684, 40.151463, 46.403259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255493, 39.903038, 46.701115>,  <35.314178, 39.753983, 46.879829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255493, 39.903038, 46.701115>,  <35.157684, 40.151463, 46.403259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255493, 39.903038, 46.701115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077212, -0.777987, -0.623517,
		0.966564, 0.094970, -0.238191,
		0.244525, -0.621061, 0.744642,
		35.328850, 39.716721, 46.924507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802742, 39.874447, 46.144325>,  <35.157684, 40.151463, 46.403259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802742, 39.874447, 46.144325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668587, 39.615852, 46.418427>,  <35.588093, 39.460693, 46.582886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668587, 39.615852, 46.418427>,  <35.802742, 39.874447, 46.144325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668587, 39.615852, 46.418427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174166, -0.757392, -0.629305,
		0.925842, -0.091712, 0.366615,
		-0.335386, -0.646488, 0.685251,
		35.567970, 39.421906, 46.624001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242706, 39.349167, 46.190639>,  <35.802742, 39.874447, 46.144325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242706, 39.349167, 46.190639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928883, 39.164494, 46.356197>,  <35.740589, 39.053688, 46.455532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928883, 39.164494, 46.356197>,  <36.242706, 39.349167, 46.190639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928883, 39.164494, 46.356197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134083, -0.778049, -0.613728,
		0.605379, -0.426012, 0.672332,
		-0.784563, -0.461686, 0.413893,
		35.693512, 39.025990, 46.480366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490181, 38.651821, 46.277756>,  <36.242706, 39.349167, 46.190639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490181, 38.651821, 46.277756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090267, 38.644009, 46.280632>,  <35.850319, 38.639320, 46.282356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090267, 38.644009, 46.280632>,  <36.490181, 38.651821, 46.277756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090267, 38.644009, 46.280632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011051, -0.790888, -0.611862,
		0.017637, -0.611650, 0.790932,
		-0.999784, -0.019532, 0.007189,
		35.790333, 38.638149, 46.282787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336712, 37.921417, 46.314156>,  <36.490181, 38.651821, 46.277756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336712, 37.921417, 46.314156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000854, 38.096573, 46.185619>,  <35.799339, 38.201664, 46.108498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000854, 38.096573, 46.185619>,  <36.336712, 37.921417, 46.314156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000854, 38.096573, 46.185619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176838, -0.779794, -0.600541,
		-0.513550, -0.447412, 0.732180,
		-0.839640, 0.437885, -0.321344,
		35.748962, 38.227940, 46.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971596, 37.278751, 46.125416>,  <36.336712, 37.921417, 46.314156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971596, 37.278751, 46.125416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796234, 37.595306, 45.955002>,  <35.691017, 37.785240, 45.852753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796234, 37.595306, 45.955002>,  <35.971596, 37.278751, 46.125416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796234, 37.595306, 45.955002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355833, -0.588114, -0.726295,
		-0.825341, -0.166811, 0.539432,
		-0.438401, 0.791389, -0.426037,
		35.664715, 37.832722, 45.827190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313171, 37.087242, 46.030388>,  <35.971596, 37.278751, 46.125416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313171, 37.087242, 46.030388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360859, 37.396660, 45.781418>,  <35.389469, 37.582310, 45.632034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360859, 37.396660, 45.781418>,  <35.313171, 37.087242, 46.030388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360859, 37.396660, 45.781418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372713, -0.546184, -0.750179,
		-0.920257, 0.321419, 0.223197,
		0.119215, 0.773545, -0.622427,
		35.396622, 37.628723, 45.594688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673859, 37.098541, 45.641346>,  <35.313171, 37.087242, 46.030388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673859, 37.098541, 45.641346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932648, 37.301537, 45.413704>,  <35.087921, 37.423332, 45.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932648, 37.301537, 45.413704>,  <34.673859, 37.098541, 45.641346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932648, 37.301537, 45.413704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461835, -0.333087, -0.822047,
		-0.606741, 0.794676, 0.018878,
		0.646973, 0.507488, -0.569106,
		35.126740, 37.453781, 45.242973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284149, 37.506138, 45.113853>,  <34.673859, 37.098541, 45.641346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284149, 37.506138, 45.113853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647167, 37.429825, 44.964203>,  <34.864979, 37.384037, 44.874413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647167, 37.429825, 44.964203>,  <34.284149, 37.506138, 45.113853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647167, 37.429825, 44.964203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410863, -0.218929, -0.885021,
		0.086939, 0.956908, -0.277073,
		0.907543, -0.190781, -0.374124,
		34.919430, 37.372589, 44.851967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443027, 37.861504, 44.436153>,  <34.284149, 37.506138, 45.113853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443027, 37.861504, 44.436153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730915, 37.585331, 44.407021>,  <34.903648, 37.419628, 44.389542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730915, 37.585331, 44.407021>,  <34.443027, 37.861504, 44.436153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730915, 37.585331, 44.407021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283899, -0.196951, -0.938409,
		0.633564, 0.696069, -0.337763,
		0.719721, -0.690433, -0.072832,
		34.946831, 37.378201, 44.385170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797768, 37.919308, 43.737896>,  <34.443027, 37.861504, 44.436153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797768, 37.919308, 43.737896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889458, 37.551842, 43.866581>,  <34.944473, 37.331360, 43.943794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889458, 37.551842, 43.866581>,  <34.797768, 37.919308, 43.737896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889458, 37.551842, 43.866581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038240, -0.338762, -0.940095,
		0.972621, 0.203194, -0.112784,
		0.229229, -0.918669, 0.321717,
		34.958225, 37.276241, 43.963097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311699, 37.660603, 43.292088>,  <34.797768, 37.919308, 43.737896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311699, 37.660603, 43.292088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152088, 37.340050, 43.470325>,  <35.056320, 37.147717, 43.577271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152088, 37.340050, 43.470325>,  <35.311699, 37.660603, 43.292088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152088, 37.340050, 43.470325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161962, -0.539921, -0.825986,
		0.902522, -0.257420, 0.345237,
		-0.399026, -0.801387, 0.445598,
		35.032379, 37.099632, 43.604004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802410, 37.043041, 43.220737>,  <35.311699, 37.660603, 43.292088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802410, 37.043041, 43.220737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450214, 36.872597, 43.303837>,  <35.238895, 36.770329, 43.353699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450214, 36.872597, 43.303837>,  <35.802410, 37.043041, 43.220737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450214, 36.872597, 43.303837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093647, -0.585947, -0.804920,
		0.464720, -0.689270, 0.555825,
		-0.880492, -0.426114, 0.207753,
		35.186066, 36.744762, 43.366161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870888, 36.276661, 43.070480>,  <35.802410, 37.043041, 43.220737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870888, 36.276661, 43.070480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472187, 36.301811, 43.090618>,  <35.232967, 36.316902, 43.102703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472187, 36.301811, 43.090618>,  <35.870888, 36.276661, 43.070480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472187, 36.301811, 43.090618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080519, -0.761320, -0.643357,
		-0.002119, -0.645321, 0.763909,
		-0.996751, 0.062873, 0.050348,
		35.173161, 36.320675, 43.105721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649090, 35.543823, 43.156990>,  <35.870888, 36.276661, 43.070480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649090, 35.543823, 43.156990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342968, 35.766636, 43.027973>,  <35.159294, 35.900322, 42.950562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342968, 35.766636, 43.027973>,  <35.649090, 35.543823, 43.156990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342968, 35.766636, 43.027973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251155, -0.719794, -0.647161,
		-0.592652, -0.414264, 0.690760,
		-0.765301, 0.557029, -0.322542,
		35.113377, 35.933746, 42.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059082, 35.089947, 43.262802>,  <35.649090, 35.543823, 43.156990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059082, 35.089947, 43.262802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986629, 35.357685, 42.974590>,  <34.943157, 35.518330, 42.801662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986629, 35.357685, 42.974590>,  <35.059082, 35.089947, 43.262802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986629, 35.357685, 42.974590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244921, -0.740266, -0.626115,
		-0.952472, 0.063061, 0.298026,
		-0.181135, 0.669350, -0.720528,
		34.932289, 35.558491, 42.758430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564518, 34.786259, 42.800526>,  <35.059082, 35.089947, 43.262802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564518, 34.786259, 42.800526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683495, 35.086517, 42.564537>,  <34.754879, 35.266670, 42.422943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683495, 35.086517, 42.564537>,  <34.564518, 34.786259, 42.800526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683495, 35.086517, 42.564537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102892, -0.589136, -0.801456,
		-0.949181, 0.299086, -0.097996,
		0.297437, 0.750644, -0.589970,
		34.772724, 35.311710, 42.387547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945232, 34.996414, 42.332729>,  <34.564518, 34.786259, 42.800526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945232, 34.996414, 42.332729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292999, 35.122097, 42.180214>,  <34.501659, 35.197506, 42.088703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292999, 35.122097, 42.180214>,  <33.945232, 34.996414, 42.332729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292999, 35.122097, 42.180214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205264, -0.472262, -0.857225,
		-0.449413, 0.823555, -0.346100,
		0.869422, 0.314207, -0.381287,
		34.553825, 35.216358, 42.065826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755795, 35.319683, 41.753494>,  <33.945232, 34.996414, 42.332729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755795, 35.319683, 41.753494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140846, 35.217598, 41.717232>,  <34.371876, 35.156349, 41.695477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140846, 35.217598, 41.717232>,  <33.755795, 35.319683, 41.753494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140846, 35.217598, 41.717232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203610, -0.461243, -0.863596,
		0.178585, 0.849778, -0.495968,
		0.962627, -0.255210, -0.090652,
		34.429634, 35.141037, 41.690037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835144, 35.434605, 41.075417>,  <33.755795, 35.319683, 41.753494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835144, 35.434605, 41.075417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146687, 35.203182, 41.172295>,  <34.333611, 35.064327, 41.230419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146687, 35.203182, 41.172295>,  <33.835144, 35.434605, 41.075417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146687, 35.203182, 41.172295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120362, -0.516838, -0.847580,
		0.615547, 0.630992, -0.472178,
		0.778855, -0.578557, 0.242191,
		34.380344, 35.029613, 41.244953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138115, 35.381939, 40.519173>,  <33.835144, 35.434605, 41.075417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138115, 35.381939, 40.519173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319153, 35.079456, 40.708191>,  <34.427776, 34.897964, 40.821602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319153, 35.079456, 40.708191>,  <34.138115, 35.381939, 40.519173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319153, 35.079456, 40.708191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057036, -0.553398, -0.830962,
		0.889890, 0.349137, -0.293596,
		0.452596, -0.756210, 0.472550,
		34.454933, 34.852592, 40.849957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579006, 35.121235, 40.067463>,  <34.138115, 35.381939, 40.519173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579006, 35.121235, 40.067463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489437, 34.820873, 40.315979>,  <34.435696, 34.640656, 40.465088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489437, 34.820873, 40.315979>,  <34.579006, 35.121235, 40.067463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489437, 34.820873, 40.315979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294918, -0.555381, -0.777544,
		0.928913, -0.357342, -0.097091,
		-0.223927, -0.750905, 0.621287,
		34.422260, 34.595600, 40.502365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944073, 34.500202, 39.708057>,  <34.579006, 35.121235, 40.067463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944073, 34.500202, 39.708057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678364, 34.349316, 39.966187>,  <34.518936, 34.258781, 40.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678364, 34.349316, 39.966187>,  <34.944073, 34.500202, 39.708057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678364, 34.349316, 39.966187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206117, -0.737419, -0.643218,
		0.718510, -0.560286, 0.412097,
		-0.664274, -0.377218, 0.645327,
		34.479080, 34.236149, 40.159786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125198, 33.816559, 39.674080>,  <34.944073, 34.500202, 39.708057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125198, 33.816559, 39.674080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757523, 33.808697, 39.831413>,  <34.536919, 33.803978, 39.925812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757523, 33.808697, 39.831413>,  <35.125198, 33.816559, 39.674080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757523, 33.808697, 39.831413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228598, -0.786638, -0.573536,
		0.320684, -0.617102, 0.718573,
		-0.919187, -0.019659, 0.393330,
		34.481766, 33.802799, 39.949413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001034, 33.141407, 39.858486>,  <35.125198, 33.816559, 39.674080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001034, 33.141407, 39.858486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625683, 33.279312, 39.868210>,  <34.400475, 33.362057, 39.874043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625683, 33.279312, 39.868210>,  <35.001034, 33.141407, 39.858486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625683, 33.279312, 39.868210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306351, -0.797149, -0.520291,
		-0.160001, -0.495674, 0.853643,
		-0.938376, 0.344761, 0.024306,
		34.344170, 33.382740, 39.875500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669941, 32.531242, 39.955383>,  <35.001034, 33.141407, 39.858486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669941, 32.531242, 39.955383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435234, 32.808838, 39.788490>,  <34.294411, 32.975395, 39.688354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435234, 32.808838, 39.788490>,  <34.669941, 32.531242, 39.955383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435234, 32.808838, 39.788490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203624, -0.625160, -0.753467,
		-0.783734, -0.357153, 0.508137,
		-0.586770, 0.693986, -0.417235,
		34.259201, 33.017033, 39.663319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964207, 32.306858, 39.825764>,  <34.669941, 32.531242, 39.955383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964207, 32.306858, 39.825764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998417, 32.596481, 39.551998>,  <34.018944, 32.770256, 39.387737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998417, 32.596481, 39.551998>,  <33.964207, 32.306858, 39.825764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998417, 32.596481, 39.551998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250102, -0.649339, -0.718198,
		-0.964435, 0.232599, 0.125553,
		0.085526, 0.724056, -0.684418,
		34.024075, 32.813698, 39.346672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558784, 32.053905, 39.392136>,  <33.964207, 32.306858, 39.825764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558784, 32.053905, 39.392136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747810, 32.331841, 39.175293>,  <33.861225, 32.498600, 39.045185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747810, 32.331841, 39.175293>,  <33.558784, 32.053905, 39.392136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747810, 32.331841, 39.175293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148674, -0.543458, -0.826166,
		-0.868664, 0.471016, -0.153515,
		0.472566, 0.694836, -0.542111,
		33.889580, 32.540291, 39.012661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143883, 32.209805, 38.797482>,  <33.558784, 32.053905, 39.392136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143883, 32.209805, 38.797482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502949, 32.351734, 38.692951>,  <33.718388, 32.436890, 38.630234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502949, 32.351734, 38.692951>,  <33.143883, 32.209805, 38.797482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502949, 32.351734, 38.692951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041769, -0.521840, -0.852020,
		-0.438686, 0.775748, -0.453619,
		0.897669, 0.354822, -0.261326,
		33.772251, 32.458179, 38.614552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076202, 32.368370, 38.122250>,  <33.143883, 32.209805, 38.797482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076202, 32.368370, 38.122250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470711, 32.336720, 38.180225>,  <33.707417, 32.317730, 38.215012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470711, 32.336720, 38.180225>,  <33.076202, 32.368370, 38.122250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470711, 32.336720, 38.180225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094013, -0.452505, -0.886793,
		0.135755, 0.888244, -0.438854,
		0.986272, -0.079129, 0.144936,
		33.766594, 32.312981, 38.223705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467705, 32.693516, 37.459602>,  <33.076202, 32.368370, 38.122250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467705, 32.693516, 37.459602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684429, 32.424099, 37.660713>,  <33.814465, 32.262451, 37.781380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684429, 32.424099, 37.660713>,  <33.467705, 32.693516, 37.459602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684429, 32.424099, 37.660713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219019, -0.464380, -0.858127,
		0.811462, 0.575061, -0.104089,
		0.541813, -0.673539, 0.502776,
		33.846973, 32.222038, 37.811546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961910, 32.486958, 36.939762>,  <33.467705, 32.693516, 37.459602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961910, 32.486958, 36.939762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020912, 32.208199, 37.220497>,  <34.056313, 32.040943, 37.388939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020912, 32.208199, 37.220497>,  <33.961910, 32.486958, 36.939762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020912, 32.208199, 37.220497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154311, -0.684691, -0.712311,
		0.976949, 0.213372, 0.006542,
		0.147508, -0.696901, 0.701833,
		34.065166, 31.999128, 37.431046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550598, 32.033390, 36.808681>,  <33.961910, 32.486958, 36.939762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550598, 32.033390, 36.808681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326565, 31.803391, 37.047237>,  <34.192146, 31.665392, 37.190372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326565, 31.803391, 37.047237>,  <34.550598, 32.033390, 36.808681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326565, 31.803391, 37.047237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200252, -0.792523, -0.576027,
		0.803869, -0.203194, 0.559023,
		-0.560083, -0.574996, 0.596395,
		34.158539, 31.630892, 37.226154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995083, 31.426994, 37.077950>,  <34.550598, 32.033390, 36.808681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995083, 31.426994, 37.077950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611668, 31.315319, 37.100765>,  <34.381618, 31.248314, 37.114456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611668, 31.315319, 37.100765>,  <34.995083, 31.426994, 37.077950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611668, 31.315319, 37.100765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158618, -0.689066, -0.707127,
		0.236726, -0.668763, 0.704782,
		-0.958541, -0.279186, 0.057042,
		34.324104, 31.231564, 37.117878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713188, 31.085567, 37.170574>,  <34.995083, 31.426994, 37.077950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713188, 31.085567, 37.170574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890667, 30.981522, 37.513615>,  <35.997154, 30.919094, 37.719437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890667, 30.981522, 37.513615>,  <35.713188, 31.085567, 37.170574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890667, 30.981522, 37.513615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226217, 0.958469, 0.173674,
		-0.867158, 0.116946, 0.484108,
		0.443693, -0.260116, 0.857599,
		36.023773, 30.903486, 37.770893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630062, 31.703419, 37.595745>,  <35.713188, 31.085567, 37.170574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630062, 31.703419, 37.595745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932369, 31.481520, 37.734924>,  <36.113754, 31.348381, 37.818432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932369, 31.481520, 37.734924>,  <35.630062, 31.703419, 37.595745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932369, 31.481520, 37.734924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406425, 0.813996, 0.415004,
		-0.513449, -0.172234, 0.840658,
		0.755770, -0.554748, 0.347946,
		36.159100, 31.315096, 37.839310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710758, 31.950506, 38.246914>,  <35.630062, 31.703419, 37.595745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710758, 31.950506, 38.246914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057446, 31.763620, 38.177048>,  <36.265457, 31.651489, 38.135128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057446, 31.763620, 38.177048>,  <35.710758, 31.950506, 38.246914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057446, 31.763620, 38.177048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488141, 0.722510, 0.489590,
		-0.102542, -0.509600, 0.854279,
		0.866720, -0.467212, -0.174669,
		36.317463, 31.623457, 38.124645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122894, 31.912149, 38.902565>,  <35.710758, 31.950506, 38.246914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122894, 31.912149, 38.902565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409378, 31.886665, 38.624577>,  <36.581268, 31.871374, 38.457783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409378, 31.886665, 38.624577>,  <36.122894, 31.912149, 38.902565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409378, 31.886665, 38.624577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497752, 0.744641, 0.444693,
		0.489175, -0.664417, 0.565029,
		0.716206, -0.063712, -0.694975,
		36.624241, 31.867552, 38.416084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794056, 31.626911, 39.173824>,  <36.122894, 31.912149, 38.902565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794056, 31.626911, 39.173824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860447, 31.838840, 38.841141>,  <36.900284, 31.965998, 38.641529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860447, 31.838840, 38.841141>,  <36.794056, 31.626911, 39.173824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860447, 31.838840, 38.841141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421989, 0.724122, 0.545502,
		0.891278, -0.441514, -0.103390,
		0.165980, 0.529823, -0.831708,
		36.910240, 31.997787, 38.591629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471558, 31.813244, 39.229271>,  <36.794056, 31.626911, 39.173824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471558, 31.813244, 39.229271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372063, 32.067139, 38.936630>,  <37.312366, 32.219475, 38.761047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372063, 32.067139, 38.936630>,  <37.471558, 31.813244, 39.229271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372063, 32.067139, 38.936630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349091, 0.763326, 0.543571,
		0.903473, -0.120186, -0.411451,
		-0.248741, 0.634736, -0.731600,
		37.297440, 32.257561, 38.717152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956348, 32.341919, 39.256908>,  <37.471558, 31.813244, 39.229271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956348, 32.341919, 39.256908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674450, 32.519375, 39.035454>,  <37.505310, 32.625847, 38.902580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674450, 32.519375, 39.035454>,  <37.956348, 32.341919, 39.256908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674450, 32.519375, 39.035454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231357, 0.881422, 0.411788,
		0.670676, 0.162117, -0.723818,
		-0.704747, 0.443637, -0.553641,
		37.463024, 32.652466, 38.869362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222485, 32.976006, 39.020699>,  <37.956348, 32.341919, 39.256908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222485, 32.976006, 39.020699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825863, 33.026600, 39.009209>,  <37.587891, 33.056957, 39.002316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825863, 33.026600, 39.009209>,  <38.222485, 32.976006, 39.020699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825863, 33.026600, 39.009209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095333, 0.860837, 0.499872,
		0.087955, 0.492910, -0.865623,
		-0.991552, 0.126488, -0.028724,
		37.528397, 33.064545, 39.000591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075600, 33.752110, 38.937855>,  <38.222485, 32.976006, 39.020699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075600, 33.752110, 38.937855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764023, 33.598339, 39.136032>,  <37.577076, 33.506077, 39.254936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764023, 33.598339, 39.136032>,  <38.075600, 33.752110, 38.937855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764023, 33.598339, 39.136032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014769, 0.778595, 0.627353,
		-0.626918, 0.495991, -0.600805,
		-0.778945, -0.384426, 0.495440,
		37.530338, 33.483013, 39.284664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825394, 34.332436, 39.185711>,  <38.075600, 33.752110, 38.937855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825394, 34.332436, 39.185711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609127, 34.060417, 39.383789>,  <37.479366, 33.897205, 39.502636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609127, 34.060417, 39.383789>,  <37.825394, 34.332436, 39.185711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609127, 34.060417, 39.383789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138252, 0.652477, 0.745090,
		-0.829801, 0.334381, -0.446788,
		-0.540663, -0.680046, 0.495197,
		37.446930, 33.856403, 39.532349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289352, 34.756802, 39.535263>,  <37.825394, 34.332436, 39.185711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289352, 34.756802, 39.535263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305740, 34.413612, 39.740082>,  <37.315575, 34.207699, 39.862972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305740, 34.413612, 39.740082>,  <37.289352, 34.756802, 39.535263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305740, 34.413612, 39.740082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201453, 0.494864, 0.845297,
		-0.978641, -0.137786, -0.152567,
		0.040970, -0.857977, 0.512051,
		37.318031, 34.156219, 39.893696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683308, 34.790367, 40.055763>,  <37.289352, 34.756802, 39.535263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683308, 34.790367, 40.055763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963795, 34.534477, 40.181648>,  <37.132088, 34.380943, 40.257179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963795, 34.534477, 40.181648>,  <36.683308, 34.790367, 40.055763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963795, 34.534477, 40.181648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076616, 0.371251, 0.925367,
		-0.708817, -0.672997, 0.211315,
		0.701219, -0.639725, 0.314711,
		37.174160, 34.342560, 40.276062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426613, 34.600441, 40.698479>,  <36.683308, 34.790367, 40.055763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426613, 34.600441, 40.698479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792313, 34.440929, 40.727093>,  <37.011734, 34.345222, 40.744259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792313, 34.440929, 40.727093>,  <36.426613, 34.600441, 40.698479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792313, 34.440929, 40.727093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092845, 0.378089, 0.921102,
		-0.394360, -0.835479, 0.382693,
		0.914253, -0.398777, 0.071533,
		37.066589, 34.321297, 40.748554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473782, 34.105011, 41.313904>,  <36.426613, 34.600441, 40.698479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473782, 34.105011, 41.313904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843838, 34.233044, 41.232269>,  <37.065872, 34.309864, 41.183289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843838, 34.233044, 41.232269>,  <36.473782, 34.105011, 41.313904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843838, 34.233044, 41.232269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104321, 0.302548, 0.947408,
		0.364998, -0.897780, 0.246510,
		0.925145, 0.320086, -0.204087,
		37.121380, 34.329071, 41.171043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914272, 33.785267, 41.798687>,  <36.473782, 34.105011, 41.313904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914272, 33.785267, 41.798687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097328, 34.115162, 41.665802>,  <37.207161, 34.313099, 41.586071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097328, 34.115162, 41.665802>,  <36.914272, 33.785267, 41.798687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097328, 34.115162, 41.665802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231716, 0.250098, 0.940085,
		0.858411, -0.507203, -0.076650,
		0.457644, 0.824740, -0.332214,
		37.234623, 34.362583, 41.566139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512070, 33.837120, 42.267941>,  <36.914272, 33.785267, 41.798687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512070, 33.837120, 42.267941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472614, 34.206970, 42.120785>,  <37.448940, 34.428879, 42.032494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472614, 34.206970, 42.120785>,  <37.512070, 33.837120, 42.267941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472614, 34.206970, 42.120785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210996, 0.380716, 0.900298,
		0.972497, 0.011183, -0.232646,
		-0.098640, 0.924624, -0.367886,
		37.443024, 34.484356, 42.010418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975063, 34.251434, 42.657997>,  <37.512070, 33.837120, 42.267941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975063, 34.251434, 42.657997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732201, 34.513329, 42.477921>,  <37.586483, 34.670467, 42.369873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732201, 34.513329, 42.477921>,  <37.975063, 34.251434, 42.657997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732201, 34.513329, 42.477921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152870, 0.652248, 0.742431,
		0.779736, 0.381953, -0.496108,
		-0.607159, 0.654740, -0.450192,
		37.550053, 34.709751, 42.342861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244911, 34.936646, 42.785732>,  <37.975063, 34.251434, 42.657997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244911, 34.936646, 42.785732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862915, 34.982994, 42.676510>,  <37.633717, 35.010803, 42.610977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862915, 34.982994, 42.676510>,  <38.244911, 34.936646, 42.785732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862915, 34.982994, 42.676510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162358, 0.566227, 0.808101,
		0.248250, 0.816064, -0.521931,
		-0.954993, 0.115872, -0.273060,
		37.576416, 35.017757, 42.594593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218971, 35.604282, 42.825069>,  <38.244911, 34.936646, 42.785732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218971, 35.604282, 42.825069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857449, 35.436668, 42.859818>,  <37.640537, 35.336098, 42.880665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857449, 35.436668, 42.859818>,  <38.218971, 35.604282, 42.825069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857449, 35.436668, 42.859818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171229, 0.540135, 0.823975,
		-0.392198, 0.729837, -0.559927,
		-0.903804, -0.419037, 0.086871,
		37.586308, 35.310959, 42.885880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729736, 36.137466, 42.789841>,  <38.218971, 35.604282, 42.825069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729736, 36.137466, 42.789841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530273, 35.841808, 42.970951>,  <37.410595, 35.664413, 43.079617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530273, 35.841808, 42.970951>,  <37.729736, 36.137466, 42.789841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530273, 35.841808, 42.970951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221533, 0.613681, 0.757838,
		-0.838009, 0.277601, -0.469764,
		-0.498662, -0.739144, 0.452772,
		37.380676, 35.620064, 43.106781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091705, 36.398781, 43.217842>,  <37.729736, 36.137466, 42.789841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091705, 36.398781, 43.217842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134178, 36.041599, 43.392818>,  <37.159664, 35.827290, 43.497807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134178, 36.041599, 43.392818>,  <37.091705, 36.398781, 43.217842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134178, 36.041599, 43.392818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062232, 0.445036, 0.893348,
		-0.992397, -0.067636, 0.102826,
		0.106184, -0.892955, 0.437443,
		37.166035, 35.773712, 43.524052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546932, 36.221905, 43.706821>,  <37.091705, 36.398781, 43.217842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546932, 36.221905, 43.706821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890919, 36.055408, 43.824947>,  <37.097309, 35.955513, 43.895824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890919, 36.055408, 43.824947>,  <36.546932, 36.221905, 43.706821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890919, 36.055408, 43.824947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001432, 0.576678, 0.816970,
		-0.510356, -0.702986, 0.495325,
		0.859962, -0.416237, 0.295318,
		37.148907, 35.930538, 43.913544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422184, 35.908760, 44.331703>,  <36.546932, 36.221905, 43.706821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422184, 35.908760, 44.331703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815590, 35.981049, 44.333950>,  <37.051636, 36.024422, 44.335297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815590, 35.981049, 44.333950>,  <36.422184, 35.908760, 44.331703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815590, 35.981049, 44.333950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077925, 0.395653, 0.915088,
		0.163158, -0.900443, 0.403214,
		0.983518, 0.180724, 0.005614,
		37.110645, 36.035267, 44.335632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640564, 35.773018, 45.031643>,  <36.422184, 35.908760, 44.331703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640564, 35.773018, 45.031643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932964, 35.999695, 44.879597>,  <37.108406, 36.135700, 44.788368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932964, 35.999695, 44.879597>,  <36.640564, 35.773018, 45.031643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932964, 35.999695, 44.879597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054836, 0.604037, 0.795068,
		0.680166, -0.560354, 0.472628,
		0.731004, 0.566695, -0.380118,
		37.152267, 36.169704, 44.765560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066360, 36.045856, 45.672825>,  <36.640564, 35.773018, 45.031643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066360, 36.045856, 45.672825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167110, 36.272373, 45.358917>,  <37.227562, 36.408283, 45.170570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167110, 36.272373, 45.358917>,  <37.066360, 36.045856, 45.672825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167110, 36.272373, 45.358917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035443, 0.804975, 0.592249,
		0.967110, -0.176989, 0.182684,
		0.251877, 0.566295, -0.784772,
		37.242672, 36.442261, 45.123486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728279, 36.505268, 45.863197>,  <37.066360, 36.045856, 45.672825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728279, 36.505268, 45.863197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570446, 36.688431, 45.544544>,  <37.475746, 36.798328, 45.353352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570446, 36.688431, 45.544544>,  <37.728279, 36.505268, 45.863197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570446, 36.688431, 45.544544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229736, 0.888608, 0.396985,
		0.889677, -0.026372, -0.455827,
		-0.394582, 0.457908, -0.796633,
		37.452072, 36.825802, 45.305553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302544, 36.987576, 45.496693>,  <37.728279, 36.505268, 45.863197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302544, 36.987576, 45.496693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928436, 37.116016, 45.437138>,  <37.703972, 37.193081, 45.401405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928436, 37.116016, 45.437138>,  <38.302544, 36.987576, 45.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928436, 37.116016, 45.437138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229622, 0.870589, 0.435141,
		0.269342, 0.372786, -0.887967,
		-0.935269, 0.321099, -0.148886,
		37.647854, 37.212345, 45.392471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426384, 37.711540, 45.212719>,  <38.302544, 36.987576, 45.496693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426384, 37.711540, 45.212719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042168, 37.686825, 45.321190>,  <37.811638, 37.671997, 45.386272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042168, 37.686825, 45.321190>,  <38.426384, 37.711540, 45.212719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042168, 37.686825, 45.321190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071450, 0.887475, 0.455284,
		-0.268798, 0.456696, -0.848043,
		-0.960543, -0.061787, 0.271182,
		37.754005, 37.668289, 45.402546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203716, 38.417942, 45.172634>,  <38.426384, 37.711540, 45.212719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203716, 38.417942, 45.172634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915089, 38.242657, 45.387035>,  <37.741913, 38.137486, 45.515678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915089, 38.242657, 45.387035>,  <38.203716, 38.417942, 45.172634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915089, 38.242657, 45.387035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036646, 0.797284, 0.602491,
		-0.691369, 0.415098, -0.591357,
		-0.721572, -0.438215, 0.536006,
		37.698616, 38.111191, 45.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603344, 38.822857, 45.208923>,  <38.203716, 38.417942, 45.172634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603344, 38.822857, 45.208923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610043, 38.593079, 45.536274>,  <37.614063, 38.455212, 45.732685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610043, 38.593079, 45.536274>,  <37.603344, 38.822857, 45.208923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610043, 38.593079, 45.536274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083747, 0.814805, 0.573655,
		-0.996346, -0.078144, -0.034461,
		0.016749, -0.574445, 0.818372,
		37.615067, 38.420746, 45.781784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189857, 39.159386, 45.695244>,  <37.603344, 38.822857, 45.208923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189857, 39.159386, 45.695244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400299, 38.906944, 45.923252>,  <37.526566, 38.755478, 46.060055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400299, 38.906944, 45.923252>,  <37.189857, 39.159386, 45.695244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400299, 38.906944, 45.923252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062554, 0.697183, 0.714159,
		-0.848114, -0.340068, 0.406272,
		0.526108, -0.631102, 0.570018,
		37.558132, 38.717613, 46.094257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012558, 39.422894, 46.272423>,  <37.189857, 39.159386, 45.695244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012558, 39.422894, 46.272423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322830, 39.188015, 46.364971>,  <37.508991, 39.047089, 46.420498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322830, 39.188015, 46.364971>,  <37.012558, 39.422894, 46.272423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322830, 39.188015, 46.364971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292578, 0.659374, 0.692549,
		-0.559217, -0.469501, 0.683261,
		0.775677, -0.587192, 0.231367,
		37.555534, 39.011856, 46.434380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911243, 39.449501, 46.921768>,  <37.012558, 39.422894, 46.272423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911243, 39.449501, 46.921768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287598, 39.329662, 46.858551>,  <37.513409, 39.257759, 46.820621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287598, 39.329662, 46.858551>,  <36.911243, 39.449501, 46.921768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287598, 39.329662, 46.858551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322984, 0.652946, 0.685086,
		-0.102060, -0.695631, 0.711112,
		0.940885, -0.299598, -0.158038,
		37.569862, 39.239784, 46.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052727, 39.387539, 47.575626>,  <36.911243, 39.449501, 46.921768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052727, 39.387539, 47.575626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386093, 39.389336, 47.354576>,  <37.586113, 39.390415, 47.221947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386093, 39.389336, 47.354576>,  <37.052727, 39.387539, 47.575626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386093, 39.389336, 47.354576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393361, 0.697552, 0.598906,
		0.388172, -0.716520, 0.579588,
		0.833421, 0.004491, -0.552621,
		37.636120, 39.390682, 47.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565041, 39.245770, 48.072971>,  <37.052727, 39.387539, 47.575626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565041, 39.245770, 48.072971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755623, 39.430836, 47.773926>,  <37.869972, 39.541874, 47.594498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755623, 39.430836, 47.773926>,  <37.565041, 39.245770, 48.072971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755623, 39.430836, 47.773926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380233, 0.658272, 0.649693,
		0.792724, -0.593820, 0.137719,
		0.476457, 0.462662, -0.747619,
		37.898560, 39.569633, 47.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238693, 39.512665, 48.362198>,  <37.565041, 39.245770, 48.072971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238693, 39.512665, 48.362198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186401, 39.723576, 48.026367>,  <38.155025, 39.850121, 47.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186401, 39.723576, 48.026367>,  <38.238693, 39.512665, 48.362198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186401, 39.723576, 48.026367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383236, 0.807894, 0.447703,
		0.914352, -0.263226, -0.307690,
		-0.130734, 0.527276, -0.839577,
		38.147182, 39.881760, 47.774494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881668, 39.921230, 48.255848>,  <38.238693, 39.512665, 48.362198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881668, 39.921230, 48.255848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602562, 40.110401, 48.040638>,  <38.435101, 40.223904, 47.911514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602562, 40.110401, 48.040638>,  <38.881668, 39.921230, 48.255848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602562, 40.110401, 48.040638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321754, 0.877968, 0.354466,
		0.640002, 0.074223, -0.764780,
		-0.697762, 0.472930, -0.538020,
		38.393234, 40.252281, 47.879230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144939, 40.525009, 48.013569>,  <38.881668, 39.921230, 48.255848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144939, 40.525009, 48.013569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750477, 40.591038, 48.019928>,  <38.513802, 40.630653, 48.023743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750477, 40.591038, 48.019928>,  <39.144939, 40.525009, 48.013569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750477, 40.591038, 48.019928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148480, 0.836217, 0.527916,
		0.073851, 0.522966, -0.849148,
		-0.986154, 0.165068, 0.015895,
		38.454632, 40.640556, 48.024696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824074, 40.687782, 47.891598>,  <39.144939, 40.525009, 48.013569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824074, 40.687782, 47.891598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106834, 40.899738, 47.704193>,  <40.276489, 41.026913, 47.591751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106834, 40.899738, 47.704193>,  <39.824074, 40.687782, 47.891598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106834, 40.899738, 47.704193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045618, -0.626852, -0.777802,
		-0.705840, 0.571201, -0.418950,
		0.706901, 0.529892, -0.468514,
		40.318905, 41.058704, 47.563641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593117, 40.839245, 47.258453>,  <39.824074, 40.687782, 47.891598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593117, 40.839245, 47.258453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988113, 40.864208, 47.200527>,  <40.225109, 40.879185, 47.165771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988113, 40.864208, 47.200527>,  <39.593117, 40.839245, 47.258453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988113, 40.864208, 47.200527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085320, -0.560880, -0.823489,
		-0.132615, 0.825542, -0.548538,
		0.987489, 0.062406, -0.144816,
		40.284359, 40.882931, 47.157082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661388, 41.015965, 46.575653>,  <39.593117, 40.839245, 47.258453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661388, 41.015965, 46.575653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017597, 40.858925, 46.667591>,  <40.231323, 40.764702, 46.722755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017597, 40.858925, 46.667591>,  <39.661388, 41.015965, 46.575653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017597, 40.858925, 46.667591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025839, -0.548070, -0.836034,
		0.454199, 0.738570, -0.498215,
		0.890525, -0.392599, 0.229849,
		40.284756, 40.741146, 46.736546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071846, 41.019577, 45.963543>,  <39.661388, 41.015965, 46.575653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071846, 41.019577, 45.963543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212936, 40.744255, 46.217098>,  <40.297592, 40.579060, 46.369232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212936, 40.744255, 46.217098>,  <40.071846, 41.019577, 45.963543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212936, 40.744255, 46.217098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072854, -0.695574, -0.714751,
		0.932885, 0.205933, -0.295496,
		0.352731, -0.688308, 0.633888,
		40.318756, 40.537762, 46.407265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433346, 40.595352, 45.476627>,  <40.071846, 41.019577, 45.963543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433346, 40.595352, 45.476627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412514, 40.387924, 45.818005>,  <40.400013, 40.263466, 46.022831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412514, 40.387924, 45.818005>,  <40.433346, 40.595352, 45.476627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412514, 40.387924, 45.818005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033780, -0.855032, -0.517474,
		0.998071, 0.001877, 0.062052,
		-0.052085, -0.518572, 0.853446,
		40.396889, 40.232353, 46.074039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047184, 40.190434, 45.395836>,  <40.433346, 40.595352, 45.476627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047184, 40.190434, 45.395836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793819, 40.002228, 45.641571>,  <40.641800, 39.889305, 45.789013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793819, 40.002228, 45.641571>,  <41.047184, 40.190434, 45.395836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793819, 40.002228, 45.641571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073289, -0.826813, -0.557682,
		0.770337, -0.308218, 0.558196,
		-0.633411, -0.470513, 0.614336,
		40.603798, 39.861073, 45.825871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393940, 39.560242, 45.630714>,  <41.047184, 40.190434, 45.395836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393940, 39.560242, 45.630714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004269, 39.474312, 45.658482>,  <40.770466, 39.422752, 45.675144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004269, 39.474312, 45.658482>,  <41.393940, 39.560242, 45.630714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004269, 39.474312, 45.658482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131844, -0.790966, -0.597486,
		0.183265, -0.572907, 0.798868,
		-0.974182, -0.214824, 0.069423,
		40.712013, 39.409866, 45.679310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359486, 38.902840, 45.724270>,  <41.393940, 39.560242, 45.630714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359486, 38.902840, 45.724270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984661, 38.965870, 45.599640>,  <40.759766, 39.003689, 45.524860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984661, 38.965870, 45.599640>,  <41.359486, 38.902840, 45.724270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984661, 38.965870, 45.599640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036964, -0.842585, -0.537294,
		-0.347191, -0.514997, 0.783732,
		-0.937066, 0.157574, -0.311574,
		40.703541, 39.013142, 45.506168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209728, 38.305664, 45.838207>,  <41.359486, 38.902840, 45.724270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209728, 38.305664, 45.838207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906525, 38.428581, 45.608078>,  <40.724602, 38.502331, 45.470001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906525, 38.428581, 45.608078>,  <41.209728, 38.305664, 45.838207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906525, 38.428581, 45.608078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037493, -0.901135, -0.431913,
		-0.651169, -0.305822, 0.694587,
		-0.758006, 0.307291, -0.575325,
		40.679123, 38.520767, 45.435482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657291, 37.838634, 45.997337>,  <41.209728, 38.305664, 45.838207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657291, 37.838634, 45.997337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555717, 38.003559, 45.647362>,  <40.494774, 38.102512, 45.437378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555717, 38.003559, 45.647362>,  <40.657291, 37.838634, 45.997337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555717, 38.003559, 45.647362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293680, -0.894751, -0.336411,
		-0.921557, 0.171524, 0.348299,
		-0.253938, 0.412310, -0.874937,
		40.479538, 38.127251, 45.384880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981266, 37.505459, 45.795944>,  <40.657291, 37.838634, 45.997337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981266, 37.505459, 45.795944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141373, 37.668629, 45.467705>,  <40.237438, 37.766529, 45.270760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141373, 37.668629, 45.467705>,  <39.981266, 37.505459, 45.795944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141373, 37.668629, 45.467705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248343, -0.813667, -0.525615,
		-0.882107, 0.414176, -0.224378,
		0.400266, 0.407925, -0.820600,
		40.261452, 37.791008, 45.221523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501160, 37.497562, 45.198879>,  <39.981266, 37.505459, 45.795944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501160, 37.497562, 45.198879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873077, 37.515259, 45.052719>,  <40.096230, 37.525879, 44.965023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873077, 37.515259, 45.052719>,  <39.501160, 37.497562, 45.198879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873077, 37.515259, 45.052719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231409, -0.701735, -0.673809,
		-0.286226, 0.711063, -0.642233,
		0.929798, 0.044243, -0.365401,
		40.152016, 37.528530, 44.943100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398296, 37.595909, 44.468456>,  <39.501160, 37.497562, 45.198879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398296, 37.595909, 44.468456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763107, 37.444817, 44.532356>,  <39.981995, 37.354160, 44.570698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763107, 37.444817, 44.532356>,  <39.398296, 37.595909, 44.468456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763107, 37.444817, 44.532356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198773, -0.747829, -0.633436,
		0.358739, 0.545957, -0.757124,
		0.912028, -0.377734, 0.159754,
		40.036716, 37.331497, 44.580284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685772, 37.457634, 43.753712>,  <39.398296, 37.595909, 44.468456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685772, 37.457634, 43.753712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909187, 37.231281, 43.996304>,  <40.043236, 37.095470, 44.141857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909187, 37.231281, 43.996304>,  <39.685772, 37.457634, 43.753712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909187, 37.231281, 43.996304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085098, -0.766386, -0.636719,
		0.825103, 0.304021, -0.476210,
		0.558537, -0.565883, 0.606476,
		40.076748, 37.061516, 44.178246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223450, 37.303459, 43.375084>,  <39.685772, 37.457634, 43.753712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223450, 37.303459, 43.375084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218781, 37.039822, 43.675873>,  <40.215981, 36.881638, 43.856346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218781, 37.039822, 43.675873>,  <40.223450, 37.303459, 43.375084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218781, 37.039822, 43.675873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001095, -0.752011, -0.659149,
		0.999931, -0.008518, 0.008056,
		-0.011673, -0.659095, 0.751969,
		40.215279, 36.842094, 43.901463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798531, 36.758133, 43.297562>,  <40.223450, 37.303459, 43.375084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798531, 36.758133, 43.297562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490585, 36.589596, 43.489304>,  <40.305817, 36.488476, 43.604347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490585, 36.589596, 43.489304>,  <40.798531, 36.758133, 43.297562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490585, 36.589596, 43.489304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108407, -0.653845, -0.748822,
		0.628932, -0.628457, 0.457697,
		-0.769865, -0.421341, 0.479353,
		40.259624, 36.463192, 43.633110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852707, 36.019112, 43.226440>,  <40.798531, 36.758133, 43.297562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852707, 36.019112, 43.226440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466198, 36.019993, 43.329445>,  <40.234291, 36.020523, 43.391247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466198, 36.019993, 43.329445>,  <40.852707, 36.019112, 43.226440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466198, 36.019993, 43.329445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197905, -0.646183, -0.737076,
		0.164773, -0.763180, 0.624825,
		-0.966273, 0.002206, 0.257511,
		40.176315, 36.020653, 43.406696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723133, 35.375118, 43.300129>,  <40.852707, 36.019112, 43.226440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723133, 35.375118, 43.300129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337719, 35.478939, 43.274139>,  <40.106468, 35.541233, 43.258545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337719, 35.478939, 43.274139>,  <40.723133, 35.375118, 43.300129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337719, 35.478939, 43.274139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126997, -0.657381, -0.742780,
		-0.235505, -0.707447, 0.666376,
		-0.963540, 0.259556, -0.064973,
		40.048656, 35.556805, 43.254646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250244, 34.775101, 43.236423>,  <40.723133, 35.375118, 43.300129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250244, 34.775101, 43.236423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053471, 35.087807, 43.083145>,  <39.935406, 35.275433, 42.991177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053471, 35.087807, 43.083145>,  <40.250244, 34.775101, 43.236423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053471, 35.087807, 43.083145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230484, -0.541371, -0.808575,
		-0.839568, -0.309448, 0.446506,
		-0.491938, 0.781767, -0.383195,
		39.905888, 35.322338, 42.968185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678089, 34.393822, 42.794323>,  <40.250244, 34.775101, 43.236423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678089, 34.393822, 42.794323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664749, 34.767334, 42.651810>,  <39.656746, 34.991440, 42.566299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664749, 34.767334, 42.651810>,  <39.678089, 34.393822, 42.794323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664749, 34.767334, 42.651810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256581, -0.352536, -0.899936,
		-0.965947, 0.061405, 0.251347,
		-0.033349, 0.933781, -0.356286,
		39.654743, 35.047470, 42.544922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020908, 34.494396, 42.421661>,  <39.678089, 34.393822, 42.794323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020908, 34.494396, 42.421661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269802, 34.770653, 42.274239>,  <39.419140, 34.936409, 42.185783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269802, 34.770653, 42.274239>,  <39.020908, 34.494396, 42.421661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269802, 34.770653, 42.274239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268344, -0.254104, -0.929206,
		-0.735402, 0.677085, 0.027217,
		0.622235, 0.690643, -0.368560,
		39.456474, 34.977844, 42.163670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700470, 34.768444, 41.842937>,  <39.020908, 34.494396, 42.421661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700470, 34.768444, 41.842937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090443, 34.849545, 41.806290>,  <39.324429, 34.898205, 41.784302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090443, 34.849545, 41.806290>,  <38.700470, 34.768444, 41.842937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090443, 34.849545, 41.806290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018676, -0.484910, -0.874364,
		-0.221704, 0.850738, -0.476543,
		0.974935, 0.202750, -0.091618,
		39.382923, 34.910370, 41.778805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811241, 35.239868, 41.267529>,  <38.700470, 34.768444, 41.842937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811241, 35.239868, 41.267529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160210, 35.056309, 41.334816>,  <39.369591, 34.946175, 41.375187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160210, 35.056309, 41.334816>,  <38.811241, 35.239868, 41.267529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160210, 35.056309, 41.334816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058981, -0.440506, -0.895810,
		0.485186, 0.771601, -0.411372,
		0.872420, -0.458897, 0.168218,
		39.421936, 34.918640, 41.385281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240593, 35.339760, 40.685974>,  <38.811241, 35.239868, 41.267529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240593, 35.339760, 40.685974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394787, 35.019131, 40.868790>,  <39.487301, 34.826752, 40.978477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394787, 35.019131, 40.868790>,  <39.240593, 35.339760, 40.685974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394787, 35.019131, 40.868790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250791, -0.385657, -0.887903,
		0.887980, 0.456891, 0.052364,
		0.385480, -0.801573, 0.457040,
		39.510429, 34.778660, 41.005901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717804, 35.089863, 40.192726>,  <39.240593, 35.339760, 40.685974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717804, 35.089863, 40.192726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669083, 34.762920, 40.417973>,  <39.639851, 34.566757, 40.553120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669083, 34.762920, 40.417973>,  <39.717804, 35.089863, 40.192726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669083, 34.762920, 40.417973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010485, -0.568366, -0.822709,
		0.992498, -0.094308, 0.077801,
		-0.121808, -0.817353, 0.563114,
		39.632542, 34.517715, 40.586906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251858, 34.616348, 39.945629>,  <39.717804, 35.089863, 40.192726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251858, 34.616348, 39.945629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989738, 34.383648, 40.138355>,  <39.832466, 34.244026, 40.253990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989738, 34.383648, 40.138355>,  <40.251858, 34.616348, 39.945629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989738, 34.383648, 40.138355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127326, -0.713796, -0.688683,
		0.744560, -0.389947, 0.541823,
		-0.655300, -0.581754, 0.481813,
		39.793148, 34.209122, 40.282898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566902, 34.008678, 39.874317>,  <40.251858, 34.616348, 39.945629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566902, 34.008678, 39.874317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180801, 33.937923, 39.951260>,  <39.949142, 33.895470, 39.997425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180801, 33.937923, 39.951260>,  <40.566902, 34.008678, 39.874317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180801, 33.937923, 39.951260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021116, -0.680879, -0.732091,
		0.260475, -0.710713, 0.653483,
		-0.965250, -0.176892, 0.192360,
		39.891228, 33.884857, 40.008968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504200, 33.317421, 39.897568>,  <40.566902, 34.008678, 39.874317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504200, 33.317421, 39.897568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136341, 33.448769, 39.811378>,  <39.915627, 33.527576, 39.759666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136341, 33.448769, 39.811378>,  <40.504200, 33.317421, 39.897568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136341, 33.448769, 39.811378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069868, -0.676642, -0.732989,
		-0.386489, -0.659035, 0.645213,
		-0.919644, 0.328372, -0.215469,
		39.860447, 33.547279, 39.746738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064968, 32.739338, 39.753548>,  <40.504200, 33.317421, 39.897568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064968, 32.739338, 39.753548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838684, 33.038361, 39.614330>,  <39.702915, 33.217773, 39.530800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838684, 33.038361, 39.614330>,  <40.064968, 32.739338, 39.753548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838684, 33.038361, 39.614330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206478, -0.537039, -0.817897,
		-0.798337, -0.390828, 0.458161,
		-0.565708, 0.747557, -0.348041,
		39.668972, 33.262627, 39.509918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438793, 32.368675, 39.734596>,  <40.064968, 32.739338, 39.753548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438793, 32.368675, 39.734596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443588, 32.702534, 39.514336>,  <39.446465, 32.902847, 39.382179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443588, 32.702534, 39.514336>,  <39.438793, 32.368675, 39.734596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443588, 32.702534, 39.514336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056928, -0.550371, -0.832977,
		-0.998306, -0.021358, -0.054115,
		0.011992, 0.834647, -0.550655,
		39.447186, 32.952927, 39.349140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009159, 32.251007, 39.188965>,  <39.438793, 32.368675, 39.734596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009159, 32.251007, 39.188965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229095, 32.555264, 39.050919>,  <39.361057, 32.737816, 38.968090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229095, 32.555264, 39.050919>,  <39.009159, 32.251007, 39.188965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229095, 32.555264, 39.050919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069253, -0.453274, -0.888677,
		-0.832394, 0.464731, -0.301905,
		0.549841, 0.760637, -0.345118,
		39.394047, 32.783455, 38.947384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697594, 32.465618, 38.615349>,  <39.009159, 32.251007, 39.188965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697594, 32.465618, 38.615349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068813, 32.606304, 38.566338>,  <39.291546, 32.690716, 38.536930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068813, 32.606304, 38.566338>,  <38.697594, 32.465618, 38.615349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068813, 32.606304, 38.566338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004613, -0.318094, -0.948048,
		-0.372419, 0.880404, -0.293586,
		0.928053, 0.351717, -0.122525,
		39.347229, 32.711819, 38.529579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720108, 32.601379, 37.958099>,  <38.697594, 32.465618, 38.615349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720108, 32.601379, 37.958099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112415, 32.600113, 38.036167>,  <39.347797, 32.599354, 38.083008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112415, 32.600113, 38.036167>,  <38.720108, 32.601379, 37.958099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112415, 32.600113, 38.036167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174745, -0.431305, -0.885121,
		0.086982, 0.902200, -0.422455,
		0.980764, -0.003167, 0.195171,
		39.406643, 32.599163, 38.094719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991924, 33.079308, 37.460644>,  <38.720108, 32.601379, 37.958099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991924, 33.079308, 37.460644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275616, 32.825397, 37.583317>,  <39.445831, 32.673054, 37.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275616, 32.825397, 37.583317>,  <38.991924, 33.079308, 37.460644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275616, 32.825397, 37.583317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183495, -0.253815, -0.949688,
		0.680676, 0.729824, -0.063536,
		0.709232, -0.634771, 0.306685,
		39.488384, 32.634968, 37.675323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514744, 33.092022, 37.065453>,  <38.991924, 33.079308, 37.460644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514744, 33.092022, 37.065453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611660, 32.740192, 37.229229>,  <39.669811, 32.529095, 37.327496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611660, 32.740192, 37.229229>,  <39.514744, 33.092022, 37.065453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611660, 32.740192, 37.229229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214217, -0.363100, -0.906790,
		0.946258, 0.307419, 0.100443,
		0.242294, -0.879575, 0.409441,
		39.684349, 32.476318, 37.352062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218845, 32.843655, 36.876263>,  <39.514744, 33.092022, 37.065453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218845, 32.843655, 36.876263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041298, 32.500248, 36.978970>,  <39.934769, 32.294205, 37.040596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041298, 32.500248, 36.978970>,  <40.218845, 32.843655, 36.876263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041298, 32.500248, 36.978970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239695, -0.389854, -0.889134,
		0.863440, -0.333110, 0.378826,
		-0.443866, -0.858517, 0.256771,
		39.908138, 32.242691, 37.056000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706314, 32.266857, 36.745483>,  <40.218845, 32.843655, 36.876263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706314, 32.266857, 36.745483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331184, 32.129543, 36.766018>,  <40.106106, 32.047153, 36.778339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331184, 32.129543, 36.766018>,  <40.706314, 32.266857, 36.745483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331184, 32.129543, 36.766018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065776, -0.320978, -0.944800,
		0.340815, -0.882681, 0.323602,
		-0.937826, -0.343288, 0.051335,
		40.049835, 32.026558, 36.781418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790012, 31.495390, 36.548031>,  <40.706314, 32.266857, 36.745483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790012, 31.495390, 36.548031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408375, 31.614111, 36.531967>,  <40.179394, 31.685343, 36.522327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408375, 31.614111, 36.531967>,  <40.790012, 31.495390, 36.548031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408375, 31.614111, 36.531967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105914, -0.459775, -0.881697,
		-0.280154, -0.836968, 0.470104,
		-0.954094, 0.296802, -0.040161,
		40.122147, 31.703152, 36.519920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554329, 30.889534, 36.397434>,  <40.790012, 31.495390, 36.548031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554329, 30.889534, 36.397434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341957, 31.207899, 36.281063>,  <40.214535, 31.398918, 36.211243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341957, 31.207899, 36.281063>,  <40.554329, 30.889534, 36.397434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341957, 31.207899, 36.281063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236981, -0.469060, -0.850778,
		-0.813607, -0.382757, 0.437653,
		-0.530927, 0.795915, -0.290924,
		40.182678, 31.446674, 36.193787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849361, 31.156494, 35.636879>,  <40.554329, 30.889534, 36.397434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849361, 31.156494, 35.636879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043213, 31.290485, 35.313663>,  <41.159523, 31.370880, 35.119736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043213, 31.290485, 35.313663>,  <40.849361, 31.156494, 35.636879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043213, 31.290485, 35.313663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116810, 0.890710, 0.439307,
		0.866884, -0.307288, 0.392537,
		0.484631, 0.334976, -0.808037,
		41.188602, 31.390978, 35.071251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492023, 31.374979, 35.873199>,  <40.849361, 31.156494, 35.636879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492023, 31.374979, 35.873199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338249, 31.593172, 35.575298>,  <41.245983, 31.724089, 35.396557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338249, 31.593172, 35.575298>,  <41.492023, 31.374979, 35.873199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338249, 31.593172, 35.575298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125813, 0.830181, 0.543112,
		0.914539, 0.115092, -0.387780,
		-0.384436, 0.545484, -0.744752,
		41.222919, 31.756817, 35.351871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996792, 31.773430, 35.515301>,  <41.492023, 31.374979, 35.873199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996792, 31.773430, 35.515301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634678, 31.942993, 35.504242>,  <41.417412, 32.044731, 35.497608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634678, 31.942993, 35.504242>,  <41.996792, 31.773430, 35.515301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634678, 31.942993, 35.504242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295856, 0.675836, 0.675067,
		0.304849, 0.602948, -0.737239,
		-0.905282, 0.423910, -0.027642,
		41.363094, 32.070168, 35.495949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209251, 32.154743, 34.969486>,  <41.996792, 31.773430, 35.515301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209251, 32.154743, 34.969486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998768, 32.492893, 34.932724>,  <41.872478, 32.695786, 34.910667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998768, 32.492893, 34.932724>,  <42.209251, 32.154743, 34.969486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998768, 32.492893, 34.932724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848679, 0.528878, 0.005676,
		0.053403, -0.075008, -0.995752,
		-0.526206, 0.845377, -0.091902,
		41.840908, 32.746506, 34.905155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457878, 32.688217, 34.557106>,  <42.209251, 32.154743, 34.969486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457878, 32.688217, 34.557106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248714, 32.873371, 34.843407>,  <42.123215, 32.984463, 35.015186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248714, 32.873371, 34.843407>,  <42.457878, 32.688217, 34.557106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248714, 32.873371, 34.843407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753414, 0.643723, 0.134124,
		-0.398660, 0.609391, -0.685356,
		-0.522913, 0.462886, 0.715750,
		42.091839, 33.012238, 35.058132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566513, 33.396542, 34.489819>,  <42.457878, 32.688217, 34.557106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566513, 33.396542, 34.489819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473476, 33.331512, 34.873375>,  <42.417656, 33.292496, 35.103508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473476, 33.331512, 34.873375>,  <42.566513, 33.396542, 34.489819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473476, 33.331512, 34.873375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669259, 0.688622, 0.279092,
		-0.705686, 0.706660, -0.051364,
		-0.232593, -0.162576, 0.958890,
		42.403698, 33.282742, 35.161041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921303, 33.919792, 34.576885>,  <42.566513, 33.396542, 34.489819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921303, 33.919792, 34.576885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612293, 33.836334, 34.816772>,  <41.426888, 33.786259, 34.960705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612293, 33.836334, 34.816772>,  <41.921303, 33.919792, 34.576885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612293, 33.836334, 34.816772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628338, -0.387439, 0.674598,
		0.091603, 0.897974, 0.430408,
		-0.772529, -0.208646, 0.599722,
		41.380535, 33.773739, 34.996689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109875, 34.075005, 35.313629>,  <41.921303, 33.919792, 34.576885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109875, 34.075005, 35.313629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774651, 33.857121, 35.325928>,  <41.573517, 33.726391, 35.333305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774651, 33.857121, 35.325928>,  <42.109875, 34.075005, 35.313629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774651, 33.857121, 35.325928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336787, -0.472179, 0.814630,
		-0.429221, 0.693063, 0.579166,
		-0.838060, -0.544711, 0.030745,
		41.523232, 33.693707, 35.335152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700684, 34.113701, 34.723892>,  <42.109875, 34.075005, 35.313629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700684, 34.113701, 34.723892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961266, 34.417042, 34.732830>,  <43.117615, 34.599049, 34.738194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961266, 34.417042, 34.732830>,  <42.700684, 34.113701, 34.723892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961266, 34.417042, 34.732830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015123, -0.016470, 0.999750,
		0.758535, -0.651632, 0.000739,
		0.651457, 0.758357, 0.022348,
		43.156704, 34.644550, 34.739536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165249, 33.967407, 35.258595>,  <42.700684, 34.113701, 34.723892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165249, 33.967407, 35.258595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193417, 34.359596, 35.185143>,  <43.210316, 34.594910, 35.141071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193417, 34.359596, 35.185143>,  <43.165249, 33.967407, 35.258595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193417, 34.359596, 35.185143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174557, 0.169139, 0.970011,
		0.982126, -0.100363, -0.159237,
		0.070420, 0.980469, -0.183635,
		43.214542, 34.653736, 35.130051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820599, 34.187477, 35.432671>,  <43.165249, 33.967407, 35.258595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820599, 34.187477, 35.432671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574799, 34.501575, 35.463078>,  <43.427319, 34.690033, 35.481319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574799, 34.501575, 35.463078>,  <43.820599, 34.187477, 35.432671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574799, 34.501575, 35.463078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188633, 0.052688, 0.980633,
		0.766031, 0.616940, -0.180500,
		-0.614503, 0.785244, 0.076015,
		43.390450, 34.737148, 35.485882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190228, 34.683231, 35.922359>,  <43.820599, 34.187477, 35.432671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190228, 34.683231, 35.922359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822395, 34.839466, 35.905293>,  <43.601696, 34.933208, 35.895050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822395, 34.839466, 35.905293>,  <44.190228, 34.683231, 35.922359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822395, 34.839466, 35.905293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140697, 0.428740, 0.892405,
		0.366857, 0.814631, -0.449214,
		-0.919576, 0.390588, -0.042670,
		43.546524, 34.956642, 35.892490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251808, 35.322495, 36.179981>,  <44.190228, 34.683231, 35.922359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251808, 35.322495, 36.179981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859024, 35.266304, 36.230606>,  <43.623352, 35.232590, 36.260979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859024, 35.266304, 36.230606>,  <44.251808, 35.322495, 36.179981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859024, 35.266304, 36.230606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033026, 0.531633, 0.846331,
		-0.186171, 0.835244, -0.517404,
		-0.981962, -0.140474, 0.126559,
		43.564434, 35.224163, 36.268574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013512, 35.881599, 36.352623>,  <44.251808, 35.322495, 36.179981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013512, 35.881599, 36.352623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716496, 35.638771, 36.465824>,  <43.538284, 35.493073, 36.533745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716496, 35.638771, 36.465824>,  <44.013512, 35.881599, 36.352623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716496, 35.638771, 36.465824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079147, 0.499091, 0.862927,
		-0.665107, 0.618361, -0.418644,
		-0.742542, -0.607073, 0.283007,
		43.493732, 35.456650, 36.550728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345844, 36.288219, 36.601509>,  <44.013512, 35.881599, 36.352623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345844, 36.288219, 36.601509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276878, 35.926880, 36.758598>,  <43.235497, 35.710075, 36.852852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276878, 35.926880, 36.758598>,  <43.345844, 36.288219, 36.601509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276878, 35.926880, 36.758598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183744, 0.421193, 0.888164,
		-0.967735, 0.080974, -0.238606,
		-0.172417, -0.903349, 0.392725,
		43.225155, 35.655876, 36.876415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766315, 36.390129, 37.036240>,  <43.345844, 36.288219, 36.601509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766315, 36.390129, 37.036240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950684, 36.062073, 37.171844>,  <43.061302, 35.865238, 37.253208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950684, 36.062073, 37.171844>,  <42.766315, 36.390129, 37.036240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950684, 36.062073, 37.171844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129824, 0.315585, 0.939974,
		-0.877895, -0.477263, 0.038985,
		0.460918, -0.820138, 0.339011,
		43.088959, 35.816032, 37.273548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276844, 36.049145, 37.475418>,  <42.766315, 36.390129, 37.036240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276844, 36.049145, 37.475418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643475, 35.926792, 37.578430>,  <42.863453, 35.853382, 37.640236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643475, 35.926792, 37.578430>,  <42.276844, 36.049145, 37.475418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643475, 35.926792, 37.578430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100114, 0.447982, 0.888420,
		-0.387120, -0.840088, 0.379987,
		0.916578, -0.305883, 0.257527,
		42.918449, 35.835026, 37.655689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250637, 35.827335, 38.240372>,  <42.276844, 36.049145, 37.475418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250637, 35.827335, 38.240372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645920, 35.824959, 38.179169>,  <42.883091, 35.823532, 38.142448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645920, 35.824959, 38.179169>,  <42.250637, 35.827335, 38.240372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645920, 35.824959, 38.179169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152628, 0.118117, 0.981200,
		0.012240, -0.992982, 0.117631,
		0.988208, -0.005944, -0.153003,
		42.942383, 35.823177, 38.133266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522579, 35.421722, 38.789871>,  <42.250637, 35.827335, 38.240372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522579, 35.421722, 38.789871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807919, 35.661415, 38.644512>,  <42.979122, 35.805229, 38.557297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807919, 35.661415, 38.644512>,  <42.522579, 35.421722, 38.789871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807919, 35.661415, 38.644512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367322, 0.121904, 0.922070,
		0.596832, -0.791241, -0.133150,
		0.713349, 0.599230, -0.363396,
		43.021923, 35.841183, 38.535492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189316, 35.164295, 39.054443>,  <42.522579, 35.421722, 38.789871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189316, 35.164295, 39.054443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251091, 35.554024, 38.988907>,  <43.288155, 35.787861, 38.949585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251091, 35.554024, 38.988907>,  <43.189316, 35.164295, 39.054443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251091, 35.554024, 38.988907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373105, 0.096037, 0.922805,
		0.914845, -0.203647, -0.348693,
		0.154439, 0.974323, -0.163841,
		43.297424, 35.846321, 38.939754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697556, 35.300385, 39.525085>,  <43.189316, 35.164295, 39.054443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697556, 35.300385, 39.525085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622334, 35.680508, 39.425850>,  <43.577198, 35.908581, 39.366310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622334, 35.680508, 39.425850>,  <43.697556, 35.300385, 39.525085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622334, 35.680508, 39.425850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335387, 0.299545, 0.893190,
		0.923119, 0.084766, -0.375053,
		-0.188058, 0.950309, -0.248086,
		43.565918, 35.965599, 39.351425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322235, 35.659794, 39.609196>,  <43.697556, 35.300385, 39.525085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322235, 35.659794, 39.609196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047077, 35.949741, 39.623981>,  <43.881985, 36.123711, 39.632854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047077, 35.949741, 39.623981>,  <44.322235, 35.659794, 39.609196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047077, 35.949741, 39.623981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445754, 0.381718, 0.809688,
		0.572809, 0.573455, -0.585695,
		-0.687890, 0.724873, 0.036968,
		43.840710, 36.167202, 39.635071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702251, 36.314445, 39.679111>,  <44.322235, 35.659794, 39.609196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702251, 36.314445, 39.679111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329453, 36.365681, 39.814739>,  <44.105774, 36.396420, 39.896114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329453, 36.365681, 39.814739>,  <44.702251, 36.314445, 39.679111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329453, 36.365681, 39.814739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359505, 0.445792, 0.819772,
		-0.046155, 0.885925, -0.461526,
		-0.932001, 0.128084, 0.339070,
		44.049850, 36.404106, 39.916462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676403, 36.981998, 39.855709>,  <44.702251, 36.314445, 39.679111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676403, 36.981998, 39.855709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367764, 36.822060, 40.053600>,  <44.182579, 36.726097, 40.172337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367764, 36.822060, 40.053600>,  <44.676403, 36.981998, 39.855709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367764, 36.822060, 40.053600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231093, 0.548405, 0.803647,
		-0.592652, 0.734419, -0.330744,
		-0.771595, -0.399851, 0.494732,
		44.136284, 36.702103, 40.202019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303528, 37.471424, 40.099533>,  <44.676403, 36.981998, 39.855709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303528, 37.471424, 40.099533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169445, 37.180359, 40.338913>,  <44.088993, 37.005718, 40.482540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169445, 37.180359, 40.338913>,  <44.303528, 37.471424, 40.099533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169445, 37.180359, 40.338913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082793, 0.609987, 0.788074,
		-0.938498, 0.313718, -0.144229,
		-0.335211, -0.727666, 0.598445,
		44.068882, 36.962059, 40.518448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750187, 37.791046, 40.564182>,  <44.303528, 37.471424, 40.099533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750187, 37.791046, 40.564182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905399, 37.476009, 40.755650>,  <43.998528, 37.286987, 40.870529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905399, 37.476009, 40.755650>,  <43.750187, 37.791046, 40.564182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905399, 37.476009, 40.755650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136934, 0.562867, 0.815125,
		-0.911416, -0.250751, 0.326260,
		0.388034, -0.787594, 0.478670,
		44.021809, 37.239731, 40.899250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379936, 37.669666, 41.228851>,  <43.750187, 37.791046, 40.564182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379936, 37.669666, 41.228851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734314, 37.488918, 41.270641>,  <43.946941, 37.380470, 41.295715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734314, 37.488918, 41.270641>,  <43.379936, 37.669666, 41.228851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734314, 37.488918, 41.270641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171970, 0.529264, 0.830847,
		-0.430729, -0.718118, 0.546607,
		0.885945, -0.451870, 0.104475,
		44.000099, 37.353359, 41.301983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407707, 37.619850, 41.927177>,  <43.379936, 37.669666, 41.228851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407707, 37.619850, 41.927177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788654, 37.553940, 41.824535>,  <44.017223, 37.514393, 41.762951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788654, 37.553940, 41.824535>,  <43.407707, 37.619850, 41.927177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788654, 37.553940, 41.824535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304714, 0.547781, 0.779157,
		0.012180, -0.820235, 0.571897,
		0.952366, -0.164775, -0.256609,
		44.074364, 37.504509, 41.747551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731308, 37.574409, 42.620365>,  <43.407707, 37.619850, 41.927177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731308, 37.574409, 42.620365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033707, 37.596970, 42.359509>,  <44.215145, 37.610504, 42.202995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033707, 37.596970, 42.359509>,  <43.731308, 37.574409, 42.620365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033707, 37.596970, 42.359509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501433, 0.590493, 0.632362,
		0.420749, -0.805069, 0.418131,
		0.755999, 0.056401, -0.652139,
		44.260506, 37.613892, 42.163868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427685, 37.421638, 42.962097>,  <43.731308, 37.574409, 42.620365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427685, 37.421638, 42.962097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480507, 37.678715, 42.660233>,  <44.512199, 37.832958, 42.479115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480507, 37.678715, 42.660233>,  <44.427685, 37.421638, 42.962097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480507, 37.678715, 42.660233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525816, 0.599965, 0.602960,
		0.840285, -0.476438, -0.258705,
		0.132059, 0.642689, -0.754660,
		44.520126, 37.871521, 42.433834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379341, 36.702877, 43.317326>,  <44.427685, 37.421638, 42.962097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379341, 36.702877, 43.317326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241104, 36.455879, 43.599960>,  <44.158161, 36.307678, 43.769539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241104, 36.455879, 43.599960>,  <44.379341, 36.702877, 43.317326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241104, 36.455879, 43.599960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486004, -0.526341, -0.697685,
		0.802725, -0.584517, -0.118209,
		-0.345591, -0.617499, 0.706585,
		44.137428, 36.270630, 43.811935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452621, 35.891018, 43.087582>,  <44.379341, 36.702877, 43.317326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452621, 35.891018, 43.087582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160896, 35.932800, 43.358047>,  <43.985863, 35.957870, 43.520325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160896, 35.932800, 43.358047>,  <44.452621, 35.891018, 43.087582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160896, 35.932800, 43.358047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656468, -0.385269, -0.648551,
		0.192761, -0.916874, 0.349551,
		-0.729310, 0.104454, 0.676162,
		43.942104, 35.964138, 43.560898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074310, 35.249809, 43.153736>,  <44.452621, 35.891018, 43.087582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074310, 35.249809, 43.153736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826508, 35.556973, 43.218891>,  <43.677826, 35.741268, 43.257984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826508, 35.556973, 43.218891>,  <44.074310, 35.249809, 43.153736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826508, 35.556973, 43.218891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474543, -0.201061, -0.856962,
		-0.625314, -0.608192, 0.488963,
		-0.619508, 0.767904, 0.162887,
		43.640656, 35.787342, 43.267757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662075, 34.843060, 43.201134>,  <44.074310, 35.249809, 43.153736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662075, 34.843060, 43.201134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658916, 35.184582, 43.409348>,  <44.657021, 35.389496, 43.534275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658916, 35.184582, 43.409348>,  <44.662075, 34.843060, 43.201134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658916, 35.184582, 43.409348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741614, -0.344184, 0.575800,
		0.670781, 0.390578, -0.630478,
		-0.007894, 0.853807, 0.520530,
		44.656548, 35.440723, 43.565506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350758, 34.993683, 43.405792>,  <44.662075, 34.843060, 43.201134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350758, 34.993683, 43.405792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.146454, 35.231804, 43.653900>,  <45.023872, 35.374676, 43.802765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.146454, 35.231804, 43.653900>,  <45.350758, 34.993683, 43.405792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146454, 35.231804, 43.653900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579456, -0.294597, 0.759897,
		0.635100, 0.747546, -0.194483,
		-0.510764, 0.595305, 0.620268,
		44.993225, 35.410397, 43.839981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223373, 34.838165, 43.597775>,  <45.350758, 34.993683, 43.405792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223373, 34.838165, 43.597775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206711, 34.911312, 43.204872>,  <46.196712, 34.955200, 42.969131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206711, 34.911312, 43.204872>,  <46.223373, 34.838165, 43.597775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206711, 34.911312, 43.204872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268695, -0.948941, -0.165271,
		-0.962324, 0.257042, 0.088668,
		-0.041659, 0.182869, -0.982254,
		46.194214, 34.966171, 42.910194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945076, 34.473698, 42.909740>,  <46.223373, 34.838165, 43.597775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945076, 34.473698, 42.909740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211819, 34.489285, 42.612072>,  <46.371864, 34.498634, 42.433472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211819, 34.489285, 42.612072>,  <45.945076, 34.473698, 42.909740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211819, 34.489285, 42.612072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541919, -0.660102, -0.520181,
		-0.511494, 0.750165, -0.419078,
		0.666856, 0.038963, -0.744167,
		46.411877, 34.500973, 42.388821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377117, 33.899239, 42.830067>,  <45.945076, 34.473698, 42.909740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377117, 33.899239, 42.830067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131733, 33.583477, 42.839031>,  <44.984501, 33.394020, 42.844410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131733, 33.583477, 42.839031>,  <45.377117, 33.899239, 42.830067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131733, 33.583477, 42.839031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329633, 0.230169, -0.915623,
		0.717638, -0.569090, -0.401414,
		-0.613464, -0.789405, 0.022413,
		44.947693, 33.346657, 42.845757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504025, 33.299538, 42.275837>,  <45.377117, 33.899239, 42.830067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504025, 33.299538, 42.275837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115417, 33.343967, 42.359558>,  <44.882252, 33.370625, 42.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115417, 33.343967, 42.359558>,  <45.504025, 33.299538, 42.275837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115417, 33.343967, 42.359558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214006, -0.032113, -0.976304,
		-0.101728, -0.993292, 0.054970,
		-0.971521, 0.111081, 0.209304,
		44.823959, 33.377293, 42.422348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120762, 32.779514, 41.981243>,  <45.504025, 33.299538, 42.275837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120762, 32.779514, 41.981243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882557, 33.099663, 42.008869>,  <44.739635, 33.291752, 42.025444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882557, 33.099663, 42.008869>,  <45.120762, 32.779514, 41.981243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882557, 33.099663, 42.008869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194442, -0.060186, -0.979066,
		-0.779461, -0.596473, 0.191468,
		-0.595510, 0.800373, 0.069066,
		44.703903, 33.339775, 42.029591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532848, 32.582642, 41.547138>,  <45.120762, 32.779514, 41.981243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532848, 32.582642, 41.547138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534206, 32.980778, 41.585670>,  <44.535023, 33.219662, 41.608791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534206, 32.980778, 41.585670>,  <44.532848, 32.582642, 41.547138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534206, 32.980778, 41.585670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001622, 0.096327, -0.995348,
		-0.999993, 0.003536, -0.001287,
		0.003396, 0.995344, 0.096332,
		44.535225, 33.279381, 41.614571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899967, 32.835125, 41.127151>,  <44.532848, 32.582642, 41.547138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899967, 32.835125, 41.127151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172020, 33.125000, 41.171432>,  <44.335251, 33.298923, 41.198002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172020, 33.125000, 41.171432>,  <43.899967, 32.835125, 41.127151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172020, 33.125000, 41.171432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128556, 0.030766, -0.991225,
		-0.721731, 0.688394, -0.072237,
		0.680131, 0.724684, 0.110702,
		44.376060, 33.342403, 41.204643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649300, 33.362617, 40.782536>,  <43.899967, 32.835125, 41.127151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649300, 33.362617, 40.782536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043110, 33.430645, 40.799404>,  <44.279396, 33.471462, 40.809525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043110, 33.430645, 40.799404>,  <43.649300, 33.362617, 40.782536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043110, 33.430645, 40.799404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044758, -0.011390, -0.998933,
		-0.169411, 0.985366, -0.018826,
		0.984529, 0.170072, 0.042174,
		44.338467, 33.481667, 40.812057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733700, 33.754566, 40.234978>,  <43.649300, 33.362617, 40.782536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733700, 33.754566, 40.234978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117901, 33.689075, 40.324986>,  <44.348419, 33.649780, 40.378990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117901, 33.689075, 40.324986>,  <43.733700, 33.754566, 40.234978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117901, 33.689075, 40.324986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258555, 0.226016, -0.939184,
		0.102907, 0.960266, 0.259420,
		0.960499, -0.163723, 0.225023,
		44.406052, 33.639957, 40.392494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133324, 34.209217, 39.914135>,  <43.733700, 33.754566, 40.234978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133324, 34.209217, 39.914135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441013, 33.970512, 40.005505>,  <44.625626, 33.827290, 40.060326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441013, 33.970512, 40.005505>,  <44.133324, 34.209217, 39.914135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441013, 33.970512, 40.005505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541494, 0.419005, -0.728848,
		0.339236, 0.684335, 0.645449,
		0.769223, -0.596758, 0.228422,
		44.671780, 33.791485, 40.074032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745510, 34.645844, 39.847855>,  <44.133324, 34.209217, 39.914135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745510, 34.645844, 39.847855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856304, 34.262150, 39.825405>,  <44.922783, 34.031933, 39.811935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856304, 34.262150, 39.825405>,  <44.745510, 34.645844, 39.847855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856304, 34.262150, 39.825405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631442, 0.225736, -0.741838,
		0.724264, 0.170044, 0.668227,
		0.276988, -0.959233, -0.056119,
		44.939400, 33.974380, 39.808571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503441, 34.593952, 39.757748>,  <44.745510, 34.645844, 39.847855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503441, 34.593952, 39.757748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362602, 34.246960, 39.617176>,  <45.278099, 34.038765, 39.532833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362602, 34.246960, 39.617176>,  <45.503441, 34.593952, 39.757748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362602, 34.246960, 39.617176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658736, 0.037059, -0.751461,
		0.664904, -0.496083, 0.558394,
		-0.352093, -0.867484, -0.351428,
		45.256973, 33.986713, 39.511749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116901, 34.229229, 39.461426>,  <45.503441, 34.593952, 39.757748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116901, 34.229229, 39.461426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789925, 34.071976, 39.293026>,  <45.593739, 33.977623, 39.191986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789925, 34.071976, 39.293026>,  <46.116901, 34.229229, 39.461426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789925, 34.071976, 39.293026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476705, -0.051456, -0.877556,
		0.323331, -0.918042, 0.229469,
		-0.817441, -0.393130, -0.420998,
		45.544693, 33.954037, 39.166725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376114, 33.745209, 39.026272>,  <46.116901, 34.229229, 39.461426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376114, 33.745209, 39.026272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011276, 33.823009, 38.881912>,  <45.792374, 33.869690, 38.795296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011276, 33.823009, 38.881912>,  <46.376114, 33.745209, 39.026272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011276, 33.823009, 38.881912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357062, -0.055683, -0.932420,
		-0.201454, -0.979320, -0.018661,
		-0.912098, 0.194503, -0.360895,
		45.737648, 33.881359, 38.773643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226280, 33.188004, 38.490231>,  <46.376114, 33.745209, 39.026272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226280, 33.188004, 38.490231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974850, 33.488365, 38.409206>,  <45.823990, 33.668583, 38.360592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974850, 33.488365, 38.409206>,  <46.226280, 33.188004, 38.490231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974850, 33.488365, 38.409206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334340, 0.025736, -0.942101,
		-0.702218, -0.659906, -0.267235,
		-0.628575, 0.750908, -0.202561,
		45.786278, 33.713638, 38.348438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041660, 33.004936, 37.804867>,  <46.226280, 33.188004, 38.490231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041660, 33.004936, 37.804867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907516, 33.380688, 37.833462>,  <45.827030, 33.606136, 37.850616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907516, 33.380688, 37.833462>,  <46.041660, 33.004936, 37.804867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907516, 33.380688, 37.833462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036725, 0.088855, -0.995367,
		-0.941374, -0.331181, -0.064297,
		-0.335360, 0.939375, 0.071483,
		45.806908, 33.662498, 37.854908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540367, 33.047714, 37.335770>,  <46.041660, 33.004936, 37.804867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540367, 33.047714, 37.335770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.615479, 33.435169, 37.400860>,  <45.660545, 33.667641, 37.439915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.615479, 33.435169, 37.400860>,  <45.540367, 33.047714, 37.335770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615479, 33.435169, 37.400860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065888, 0.177721, -0.981873,
		-0.979999, 0.173653, 0.097194,
		0.187778, 0.968638, 0.162724,
		45.671810, 33.725761, 37.449677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986782, 33.505489, 37.005291>,  <45.540367, 33.047714, 37.335770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986782, 33.505489, 37.005291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321995, 33.723373, 37.017876>,  <45.523125, 33.854103, 37.025425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321995, 33.723373, 37.017876>,  <44.986782, 33.505489, 37.005291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321995, 33.723373, 37.017876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041226, 0.120710, -0.991831,
		-0.544058, 0.829892, 0.123616,
		0.838035, 0.544710, 0.031460,
		45.573406, 33.886787, 37.027313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849674, 34.201813, 36.693916>,  <44.986782, 33.505489, 37.005291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849674, 34.201813, 36.693916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248695, 34.174667, 36.700634>,  <45.488110, 34.158379, 36.704666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248695, 34.174667, 36.700634>,  <44.849674, 34.201813, 36.693916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248695, 34.174667, 36.700634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036193, 0.295758, -0.954577,
		0.059816, 0.952849, 0.297491,
		0.997553, -0.067866, 0.016796,
		45.547962, 34.154308, 36.705673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036438, 34.804356, 36.321762>,  <44.849674, 34.201813, 36.693916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036438, 34.804356, 36.321762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354496, 34.561951, 36.330696>,  <45.545330, 34.416508, 36.336056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354496, 34.561951, 36.330696>,  <45.036438, 34.804356, 36.321762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354496, 34.561951, 36.330696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188221, 0.211611, -0.959059,
		0.576471, 0.766794, 0.282325,
		0.795144, -0.606009, 0.022339,
		45.593040, 34.380146, 36.337399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570522, 35.238705, 36.109184>,  <45.036438, 34.804356, 36.321762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570522, 35.238705, 36.109184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670586, 34.858002, 36.038101>,  <45.730625, 34.629581, 35.995453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670586, 34.858002, 36.038101>,  <45.570522, 35.238705, 36.109184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670586, 34.858002, 36.038101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126637, 0.214127, -0.968562,
		0.959888, 0.219789, 0.174093,
		0.250158, -0.951757, -0.177704,
		45.745632, 34.572475, 35.984791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216915, 35.300587, 35.794434>,  <45.570522, 35.238705, 36.109184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216915, 35.300587, 35.794434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022453, 34.967705, 35.687782>,  <45.905777, 34.767975, 35.623791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022453, 34.967705, 35.687782>,  <46.216915, 35.300587, 35.794434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022453, 34.967705, 35.687782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055819, 0.274919, -0.959846,
		0.872087, -0.481519, -0.087201,
		-0.486157, -0.832201, -0.266631,
		45.876606, 34.718044, 35.607792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558838, 35.030636, 35.287479>,  <46.216915, 35.300587, 35.794434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558838, 35.030636, 35.287479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219913, 34.831127, 35.214497>,  <46.016560, 34.711422, 35.170708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219913, 34.831127, 35.214497>,  <46.558838, 35.030636, 35.287479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219913, 34.831127, 35.214497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044928, 0.274994, -0.960396,
		0.529194, -0.821951, -0.210596,
		-0.847311, -0.498774, -0.182454,
		45.965721, 34.681496, 35.159760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661598, 34.636269, 34.610840>,  <46.558838, 35.030636, 35.287479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661598, 34.636269, 34.610840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272167, 34.678303, 34.691929>,  <46.038509, 34.703522, 34.740582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272167, 34.678303, 34.691929>,  <46.661598, 34.636269, 34.610840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272167, 34.678303, 34.691929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177780, 0.208323, -0.961767,
		-0.143297, -0.972398, -0.184138,
		-0.973581, 0.105083, 0.202725,
		45.980091, 34.709827, 34.752747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232624, 34.260979, 34.199234>,  <46.661598, 34.636269, 34.610840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232624, 34.260979, 34.199234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994213, 34.574379, 34.269527>,  <45.851166, 34.762421, 34.311703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994213, 34.574379, 34.269527>,  <46.232624, 34.260979, 34.199234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994213, 34.574379, 34.269527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014311, 0.208457, -0.977927,
		-0.802838, -0.585384, -0.113033,
		-0.596025, 0.783499, 0.175735,
		45.815407, 34.809429, 34.322247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809258, 34.621265, 33.912437>,  <46.232624, 34.260979, 34.199234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809258, 34.621265, 33.912437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781700, 34.974808, 33.727371>,  <46.765163, 35.186932, 33.616333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781700, 34.974808, 33.727371>,  <46.809258, 34.621265, 33.912437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781700, 34.974808, 33.727371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085987, 0.467304, 0.879905,
		0.993911, 0.020838, -0.108195,
		-0.068896, 0.883851, -0.462666,
		46.761032, 35.239964, 33.588570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215782, 35.110138, 34.216221>,  <46.809258, 34.621265, 33.912437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215782, 35.110138, 34.216221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976120, 35.343140, 33.996510>,  <46.832325, 35.482941, 33.864685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976120, 35.343140, 33.996510>,  <47.215782, 35.110138, 34.216221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976120, 35.343140, 33.996510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131209, 0.605334, 0.785083,
		0.789812, 0.542453, -0.286256,
		-0.599151, 0.582508, -0.549274,
		46.796375, 35.517891, 33.831726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.486935, 35.712276, 34.619389>,  <47.215782, 35.110138, 34.216221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.486935, 35.712276, 34.619389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127316, 35.684200, 34.792259>,  <46.911545, 35.667355, 34.895981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127316, 35.684200, 34.792259>,  <47.486935, 35.712276, 34.619389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127316, 35.684200, 34.792259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010417, -0.990217, -0.139148,
		0.437719, -0.120600, 0.890987,
		-0.899052, -0.070189, 0.432180,
		46.857601, 35.663143, 34.921913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287796, 35.322037, 35.196190>,  <47.486935, 35.712276, 34.619389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287796, 35.322037, 35.196190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548229, 35.062511, 35.038639>,  <47.704491, 34.906796, 34.944111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548229, 35.062511, 35.038639>,  <47.287796, 35.322037, 35.196190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548229, 35.062511, 35.038639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384537, -0.729373, 0.565815,
		-0.654386, -0.216934, -0.724374,
		0.651083, -0.648811, -0.393872,
		47.743553, 34.867867, 34.920479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.544640, 41.809631, 40.007290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183308, 41.641415, 40.041115>,  <35.966511, 41.540485, 40.061409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183308, 41.641415, 40.041115>,  <36.544640, 41.809631, 40.007290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183308, 41.641415, 40.041115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152578, -0.499253, -0.852916,
		0.400903, -0.757558, 0.515153,
		-0.903325, -0.420538, 0.084566,
		35.912312, 41.515255, 40.066486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682236, 40.954422, 39.989857>,  <36.544640, 41.809631, 40.007290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682236, 40.954422, 39.989857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.304752, 41.037121, 39.886581>,  <36.078262, 41.086742, 39.824615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.304752, 41.037121, 39.886581>,  <36.682236, 40.954422, 39.989857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304752, 41.037121, 39.886581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054621, -0.672455, -0.738119,
		-0.326228, -0.710675, 0.623311,
		-0.943712, 0.206750, -0.258192,
		36.021641, 41.099144, 39.809124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390568, 40.291050, 39.847637>,  <36.682236, 40.954422, 39.989857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390568, 40.291050, 39.847637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119904, 40.526112, 39.670189>,  <35.957504, 40.667149, 39.563721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119904, 40.526112, 39.670189>,  <36.390568, 40.291050, 39.847637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119904, 40.526112, 39.670189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242624, -0.746806, -0.619204,
		-0.695175, -0.311357, 0.647911,
		-0.676658, 0.587654, -0.443618,
		35.916908, 40.702408, 39.537102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706512, 39.993664, 39.909676>,  <36.390568, 40.291050, 39.847637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706512, 39.993664, 39.909676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707062, 40.227859, 39.585403>,  <35.707390, 40.368378, 39.390839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707062, 40.227859, 39.585403>,  <35.706512, 39.993664, 39.909676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707062, 40.227859, 39.585403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361129, -0.755682, -0.546380,
		-0.932515, 0.293510, 0.210400,
		0.001373, 0.585489, -0.810679,
		35.707474, 40.403507, 39.342201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126781, 39.778236, 39.553051>,  <35.706512, 39.993664, 39.909676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126781, 39.778236, 39.553051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349487, 39.966812, 39.279480>,  <35.483109, 40.079956, 39.115337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349487, 39.966812, 39.279480>,  <35.126781, 39.778236, 39.553051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349487, 39.966812, 39.279480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374856, -0.592149, -0.713332,
		-0.741282, 0.653531, -0.152964,
		0.556762, 0.471441, -0.683929,
		35.516518, 40.108246, 39.074303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696659, 39.809208, 39.008453>,  <35.126781, 39.778236, 39.553051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696659, 39.809208, 39.008453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.044003, 39.883812, 38.824642>,  <35.252407, 39.928574, 38.714355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.044003, 39.883812, 38.824642>,  <34.696659, 39.809208, 39.008453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044003, 39.883812, 38.824642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299851, -0.540594, -0.786033,
		-0.395024, 0.820348, -0.413504,
		0.868358, 0.186512, -0.459530,
		35.304508, 39.939766, 38.686783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537529, 39.766735, 38.304852>,  <34.696659, 39.809208, 39.008453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537529, 39.766735, 38.304852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936043, 39.772530, 38.270912>,  <35.175152, 39.776005, 38.250549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936043, 39.772530, 38.270912>,  <34.537529, 39.766735, 38.304852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936043, 39.772530, 38.270912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054070, -0.661671, -0.747842,
		-0.066970, 0.749655, -0.658432,
		0.996289, 0.014482, -0.084846,
		35.234928, 39.776875, 38.245457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739204, 39.917850, 37.592289>,  <34.537529, 39.766735, 38.304852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739204, 39.917850, 37.592289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.028332, 39.713818, 37.778770>,  <35.201809, 39.591400, 37.890659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.028332, 39.713818, 37.778770>,  <34.739204, 39.917850, 37.592289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028332, 39.713818, 37.778770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013438, -0.684897, -0.728516,
		0.690906, 0.520321, -0.501912,
		0.722820, -0.510080, 0.466207,
		35.245178, 39.560795, 37.918633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062019, 39.589352, 37.032604>,  <34.739204, 39.917850, 37.592289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062019, 39.589352, 37.032604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178783, 39.393360, 37.361164>,  <35.248844, 39.275764, 37.558300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178783, 39.393360, 37.361164>,  <35.062019, 39.589352, 37.032604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178783, 39.393360, 37.361164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243740, -0.792344, -0.559269,
		0.924867, 0.363466, -0.111866,
		0.291912, -0.489983, 0.821404,
		35.266357, 39.246365, 37.607586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721996, 39.294998, 36.917942>,  <35.062019, 39.589352, 37.032604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721996, 39.294998, 36.917942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547035, 39.075130, 37.202629>,  <35.442059, 38.943211, 37.373444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547035, 39.075130, 37.202629>,  <35.721996, 39.294998, 36.917942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547035, 39.075130, 37.202629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317613, -0.834868, -0.449575,
		0.841308, 0.029405, 0.539755,
		-0.437405, -0.549665, 0.711720,
		35.415813, 38.910233, 37.416145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195641, 38.836517, 37.047218>,  <35.721996, 39.294998, 36.917942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195641, 38.836517, 37.047218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856781, 38.670921, 37.180450>,  <35.653465, 38.571564, 37.260391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856781, 38.670921, 37.180450>,  <36.195641, 38.836517, 37.047218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856781, 38.670921, 37.180450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239978, -0.857383, -0.455307,
		0.474071, -0.305782, 0.825684,
		-0.847152, -0.413994, 0.333080,
		35.602634, 38.546722, 37.280373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467567, 38.195175, 37.293129>,  <36.195641, 38.836517, 37.047218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467567, 38.195175, 37.293129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076523, 38.149536, 37.222416>,  <35.841896, 38.122150, 37.179989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076523, 38.149536, 37.222416>,  <36.467567, 38.195175, 37.293129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076523, 38.149536, 37.222416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169048, -0.926178, -0.337072,
		-0.125269, -0.359411, 0.924733,
		-0.977614, -0.114099, -0.176779,
		35.783237, 38.115307, 37.169384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415848, 37.532188, 37.521404>,  <36.467567, 38.195175, 37.293129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415848, 37.532188, 37.521404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103733, 37.594387, 37.279091>,  <35.916462, 37.631706, 37.133705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103733, 37.594387, 37.279091>,  <36.415848, 37.532188, 37.521404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103733, 37.594387, 37.279091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125923, -0.909702, -0.395709,
		-0.612610, -0.385049, 0.690250,
		-0.780290, 0.155497, -0.605779,
		35.869648, 37.641037, 37.097359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934853, 36.987114, 37.545788>,  <36.415848, 37.532188, 37.521404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934853, 36.987114, 37.545788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828087, 37.138943, 37.191460>,  <35.764027, 37.230042, 36.978863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828087, 37.138943, 37.191460>,  <35.934853, 36.987114, 37.545788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828087, 37.138943, 37.191460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144964, -0.892898, -0.426284,
		-0.952756, -0.242192, 0.183300,
		-0.266911, 0.379573, -0.885824,
		35.748013, 37.252815, 36.925713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591564, 36.421787, 37.149948>,  <35.934853, 36.987114, 37.545788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591564, 36.421787, 37.149948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654827, 36.690388, 36.860378>,  <35.692783, 36.851547, 36.686638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654827, 36.690388, 36.860378>,  <35.591564, 36.421787, 37.149948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654827, 36.690388, 36.860378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176575, -0.740569, -0.648367,
		-0.971497, -0.025282, -0.235698,
		0.158158, 0.671505, -0.723925,
		35.702274, 36.891838, 36.643200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136963, 36.187332, 36.553520>,  <35.591564, 36.421787, 37.149948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136963, 36.187332, 36.553520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440655, 36.414288, 36.425999>,  <35.622871, 36.550461, 36.349487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440655, 36.414288, 36.425999>,  <35.136963, 36.187332, 36.553520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440655, 36.414288, 36.425999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169883, -0.645639, -0.744507,
		-0.628258, 0.511094, -0.586579,
		0.759231, 0.567392, -0.318801,
		35.668423, 36.584507, 36.330357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973675, 36.276772, 35.857384>,  <35.136963, 36.187332, 36.553520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973675, 36.276772, 35.857384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365349, 36.350807, 35.890697>,  <35.600353, 36.395229, 35.910686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365349, 36.350807, 35.890697>,  <34.973675, 36.276772, 35.857384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365349, 36.350807, 35.890697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181950, -0.618676, -0.764287,
		-0.089932, 0.763533, -0.639476,
		0.979187, 0.185086, 0.083286,
		35.659103, 36.406334, 35.915684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222301, 36.215706, 35.155209>,  <34.973675, 36.276772, 35.857384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222301, 36.215706, 35.155209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561451, 36.203388, 35.366932>,  <35.764938, 36.195999, 35.493965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561451, 36.203388, 35.366932>,  <35.222301, 36.215706, 35.155209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561451, 36.203388, 35.366932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348855, -0.719376, -0.600665,
		0.399268, 0.693938, -0.599195,
		0.847871, -0.030794, 0.529308,
		35.815811, 36.194149, 35.525723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740795, 36.259415, 34.661938>,  <35.222301, 36.215706, 35.155209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740795, 36.259415, 34.661938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910179, 36.096302, 34.985516>,  <36.011810, 35.998436, 35.179665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910179, 36.096302, 34.985516>,  <35.740795, 36.259415, 34.661938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910179, 36.096302, 34.985516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333563, -0.760042, -0.557738,
		0.842271, 0.506013, -0.185823,
		0.423456, -0.407783, 0.808949,
		36.037216, 35.973969, 35.228199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465950, 36.228188, 34.512348>,  <35.740795, 36.259415, 34.661938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465950, 36.228188, 34.512348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414871, 35.955753, 34.800739>,  <36.384224, 35.792294, 34.973774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414871, 35.955753, 34.800739>,  <36.465950, 36.228188, 34.512348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414871, 35.955753, 34.800739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448958, -0.687884, -0.570309,
		0.884381, 0.250862, 0.393622,
		-0.127698, -0.681090, 0.720979,
		36.376560, 35.751427, 35.017033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146515, 35.812527, 34.580212>,  <36.465950, 36.228188, 34.512348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146515, 35.812527, 34.580212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873344, 35.565323, 34.735989>,  <36.709442, 35.417000, 34.829456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873344, 35.565323, 34.735989>,  <37.146515, 35.812527, 34.580212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873344, 35.565323, 34.735989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417974, -0.767834, -0.485519,
		0.599085, -0.168798, 0.782690,
		-0.682931, -0.618011, 0.389445,
		36.668465, 35.379921, 34.852821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453686, 35.085953, 34.601234>,  <37.146515, 35.812527, 34.580212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453686, 35.085953, 34.601234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055222, 35.051895, 34.593014>,  <36.816143, 35.031460, 34.588081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055222, 35.051895, 34.593014>,  <37.453686, 35.085953, 34.601234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055222, 35.051895, 34.593014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083530, -0.852823, -0.515476,
		0.026359, -0.515212, 0.856658,
		-0.996157, -0.085144, -0.020556,
		36.756374, 35.026352, 34.586845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280964, 35.051662, 35.319962>,  <37.453686, 35.085953, 34.601234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280964, 35.051662, 35.319962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670971, 35.111904, 35.254658>,  <37.904976, 35.148048, 35.215477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670971, 35.111904, 35.254658>,  <37.280964, 35.051662, 35.319962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670971, 35.111904, 35.254658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093971, 0.386302, 0.917573,
		0.201259, -0.909994, 0.362500,
		0.975020, 0.150606, -0.163260,
		37.963478, 35.157085, 35.205681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580555, 34.868088, 36.009346>,  <37.280964, 35.051662, 35.319962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580555, 34.868088, 36.009346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864349, 35.085361, 35.829758>,  <38.034626, 35.215725, 35.722004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864349, 35.085361, 35.829758>,  <37.580555, 34.868088, 36.009346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864349, 35.085361, 35.829758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211057, 0.444073, 0.870778,
		0.672370, -0.712566, 0.200421,
		0.709488, 0.543185, -0.448973,
		38.077194, 35.248318, 35.695065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118359, 34.830357, 36.492599>,  <37.580555, 34.868088, 36.009346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118359, 34.830357, 36.492599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200691, 35.146782, 36.262173>,  <38.250092, 35.336636, 36.123917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200691, 35.146782, 36.262173>,  <38.118359, 34.830357, 36.492599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200691, 35.146782, 36.262173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447216, 0.447565, 0.774392,
		0.870421, -0.417019, -0.261654,
		0.205829, 0.791063, -0.576068,
		38.262440, 35.384102, 36.089352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766552, 35.045910, 36.641041>,  <38.118359, 34.830357, 36.492599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766552, 35.045910, 36.641041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603165, 35.369263, 36.471485>,  <38.505131, 35.563274, 36.369751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603165, 35.369263, 36.471485>,  <38.766552, 35.045910, 36.641041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603165, 35.369263, 36.471485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413000, 0.577818, 0.703959,
		0.813994, 0.112479, -0.569880,
		-0.408467, 0.808378, -0.423886,
		38.480625, 35.611774, 36.344318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227062, 35.564880, 36.653801>,  <38.766552, 35.045910, 36.641041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227062, 35.564880, 36.653801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891602, 35.778671, 36.611858>,  <38.690327, 35.906948, 36.586693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891602, 35.778671, 36.611858>,  <39.227062, 35.564880, 36.653801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891602, 35.778671, 36.611858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321144, 0.640716, 0.697388,
		0.439921, 0.551193, -0.708982,
		-0.838652, 0.534481, -0.104852,
		38.640007, 35.939014, 36.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387356, 36.245693, 36.467316>,  <39.227062, 35.564880, 36.653801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387356, 36.245693, 36.467316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023899, 36.244812, 36.634342>,  <38.805824, 36.244282, 36.734558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023899, 36.244812, 36.634342>,  <39.387356, 36.245693, 36.467316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023899, 36.244812, 36.634342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324988, 0.624171, 0.710488,
		-0.262199, 0.781285, -0.566432,
		-0.908644, -0.002206, 0.417565,
		38.751305, 36.244152, 36.759613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331177, 36.890202, 36.800022>,  <39.387356, 36.245693, 36.467316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331177, 36.890202, 36.800022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.990643, 36.733795, 36.939926>,  <38.786324, 36.639950, 37.023869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.990643, 36.733795, 36.939926>,  <39.331177, 36.890202, 36.800022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990643, 36.733795, 36.939926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075181, 0.750741, 0.656305,
		-0.519207, 0.532440, -0.668529,
		-0.851335, -0.391019, 0.349761,
		38.735241, 36.616489, 37.044853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856365, 37.440437, 36.849213>,  <39.331177, 36.890202, 36.800022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856365, 37.440437, 36.849213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709869, 37.161167, 37.095276>,  <38.621971, 36.993607, 37.242912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709869, 37.161167, 37.095276>,  <38.856365, 37.440437, 36.849213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709869, 37.161167, 37.095276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079558, 0.682163, 0.726859,
		-0.927113, 0.217264, -0.305380,
		-0.366239, -0.698177, 0.615157,
		38.599998, 36.951714, 37.279823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220600, 37.674839, 37.218472>,  <38.856365, 37.440437, 36.849213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220600, 37.674839, 37.218472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390591, 37.397282, 37.450989>,  <38.492584, 37.230747, 37.590500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390591, 37.397282, 37.450989>,  <38.220600, 37.674839, 37.218472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390591, 37.397282, 37.450989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134270, 0.586740, 0.798566,
		-0.895189, -0.417425, 0.156184,
		0.424980, -0.693897, 0.581291,
		38.518085, 37.189114, 37.625378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783825, 37.730179, 37.694027>,  <38.220600, 37.674839, 37.218472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783825, 37.730179, 37.694027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110165, 37.535946, 37.819630>,  <38.305969, 37.419407, 37.894993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110165, 37.535946, 37.819630>,  <37.783825, 37.730179, 37.694027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110165, 37.535946, 37.819630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029595, 0.507241, 0.861296,
		-0.577508, -0.711980, 0.399461,
		0.815848, -0.485583, 0.314007,
		38.354919, 37.390270, 37.913834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648930, 37.385136, 38.316582>,  <37.783825, 37.730179, 37.694027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648930, 37.385136, 38.316582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045380, 37.438305, 38.315979>,  <38.283249, 37.470207, 38.315617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045380, 37.438305, 38.315979>,  <37.648930, 37.385136, 38.316582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045380, 37.438305, 38.315979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070940, 0.538502, 0.839633,
		0.112419, -0.832074, 0.543152,
		0.991126, 0.132922, -0.001510,
		38.342716, 37.478180, 38.315525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874081, 37.381485, 38.984280>,  <37.648930, 37.385136, 38.316582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874081, 37.381485, 38.984280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189392, 37.550888, 38.805729>,  <38.378578, 37.652531, 38.698597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189392, 37.550888, 38.805729>,  <37.874081, 37.381485, 38.984280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189392, 37.550888, 38.805729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062391, 0.666697, 0.742713,
		0.612148, -0.613315, 0.499120,
		0.788279, 0.423510, -0.446382,
		38.425877, 37.677940, 38.671814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399864, 37.439941, 39.408066>,  <37.874081, 37.381485, 38.984280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399864, 37.439941, 39.408066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538731, 37.707932, 39.145584>,  <38.622051, 37.868729, 38.988094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538731, 37.707932, 39.145584>,  <38.399864, 37.439941, 39.408066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538731, 37.707932, 39.145584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340408, 0.561972, 0.753863,
		0.873842, -0.485092, -0.032970,
		0.347164, 0.669980, -0.656204,
		38.642879, 37.908924, 38.948723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060371, 37.619362, 39.671146>,  <38.399864, 37.439941, 39.408066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060371, 37.619362, 39.671146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942825, 37.933678, 39.453457>,  <38.872299, 38.122269, 39.322842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942825, 37.933678, 39.453457>,  <39.060371, 37.619362, 39.671146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942825, 37.933678, 39.453457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228507, 0.610607, 0.758250,
		0.928132, 0.098464, -0.358994,
		-0.293865, 0.785789, -0.544224,
		38.854668, 38.169415, 39.290188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367329, 38.201992, 40.121670>,  <39.060371, 37.619362, 39.671146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367329, 38.201992, 40.121670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167847, 38.376270, 39.821945>,  <39.048157, 38.480835, 39.642109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167847, 38.376270, 39.821945>,  <39.367329, 38.201992, 40.121670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167847, 38.376270, 39.821945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007915, 0.866738, 0.498701,
		0.866738, 0.242773, -0.435692,
		-0.498701, 0.435692, -0.749313,
		39.018238, 38.506977, 39.597153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641163, 38.842098, 40.082119>,  <39.367329, 38.201992, 40.121670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641163, 38.842098, 40.082119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.271091, 38.844917, 39.930332>,  <39.049049, 38.846607, 39.839260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.271091, 38.844917, 39.930332>,  <39.641163, 38.842098, 40.082119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271091, 38.844917, 39.930332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182805, 0.867931, 0.461820,
		0.332606, 0.496634, -0.801703,
		-0.925179, 0.007049, -0.379466,
		38.993538, 38.847031, 39.816494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456333, 39.597889, 40.036167>,  <39.641163, 38.842098, 40.082119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456333, 39.597889, 40.036167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086853, 39.449131, 39.999363>,  <38.865166, 39.359875, 39.977280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086853, 39.449131, 39.999363>,  <39.456333, 39.597889, 40.036167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086853, 39.449131, 39.999363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371966, 0.813078, 0.447823,
		-0.091734, 0.447880, -0.889376,
		-0.923702, -0.371898, -0.092009,
		38.809742, 39.337563, 39.971760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983444, 40.200073, 39.751186>,  <39.456333, 39.597889, 40.036167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983444, 40.200073, 39.751186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755775, 39.922516, 39.927620>,  <38.619175, 39.755981, 40.033482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755775, 39.922516, 39.927620>,  <38.983444, 40.200073, 39.751186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755775, 39.922516, 39.927620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437783, 0.709845, 0.551784,
		-0.695980, 0.120963, -0.707799,
		-0.569173, -0.693893, 0.441083,
		38.585022, 39.714348, 40.059944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.073456, 40.427692, 39.727341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101131, 40.151501, 40.015354>,  <38.117737, 39.985786, 40.188164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101131, 40.151501, 40.015354>,  <38.073456, 40.427692, 39.727341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101131, 40.151501, 40.015354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462316, 0.617387, 0.636473,
		-0.884012, -0.376920, -0.276505,
		0.069189, -0.690482, 0.720033,
		38.121887, 39.944355, 40.231365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433636, 40.326851, 40.024693>,  <38.073456, 40.427692, 39.727341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433636, 40.326851, 40.024693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696259, 40.217339, 40.305828>,  <37.853832, 40.151630, 40.474510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696259, 40.217339, 40.305828>,  <37.433636, 40.326851, 40.024693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696259, 40.217339, 40.305828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443024, 0.614165, 0.653093,
		-0.610462, -0.740165, 0.281942,
		0.656556, -0.273781, 0.702836,
		37.893227, 40.135204, 40.516678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047310, 40.236889, 40.676476>,  <37.433636, 40.326851, 40.024693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047310, 40.236889, 40.676476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430889, 40.307098, 40.765564>,  <37.661037, 40.349224, 40.819016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430889, 40.307098, 40.765564>,  <37.047310, 40.236889, 40.676476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430889, 40.307098, 40.765564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282614, 0.655885, 0.699960,
		-0.023220, -0.734172, 0.678567,
		0.958953, 0.175519, 0.222717,
		37.718575, 40.359753, 40.832378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962997, 40.521721, 41.385033>,  <37.047310, 40.236889, 40.676476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962997, 40.521721, 41.385033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339500, 40.589260, 41.268059>,  <37.565403, 40.629784, 41.197872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339500, 40.589260, 41.268059>,  <36.962997, 40.521721, 41.385033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339500, 40.589260, 41.268059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058756, 0.770917, 0.634219,
		0.332529, -0.614148, 0.715714,
		0.941261, 0.168844, -0.292438,
		37.621880, 40.639912, 41.180328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266838, 40.569725, 42.038670>,  <36.962997, 40.521721, 41.385033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266838, 40.569725, 42.038670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545414, 40.739132, 41.806946>,  <37.712559, 40.840778, 41.667912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545414, 40.739132, 41.806946>,  <37.266838, 40.569725, 42.038670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545414, 40.739132, 41.806946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003787, 0.809432, 0.587202,
		0.717603, -0.406758, 0.565326,
		0.696442, 0.423519, -0.579311,
		37.754345, 40.866188, 41.633152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877033, 40.773312, 42.440243>,  <37.266838, 40.569725, 42.038670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877033, 40.773312, 42.440243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888309, 41.000801, 42.111423>,  <37.895073, 41.137295, 41.914131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888309, 41.000801, 42.111423>,  <37.877033, 40.773312, 42.440243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888309, 41.000801, 42.111423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229420, 0.804100, 0.548443,
		0.972919, 0.173135, 0.153142,
		0.028187, 0.568724, -0.822045,
		37.896767, 41.171417, 41.864811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379875, 41.273914, 42.566406>,  <37.877033, 40.773312, 42.440243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379875, 41.273914, 42.566406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163589, 41.422237, 42.264378>,  <38.033817, 41.511230, 42.083160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163589, 41.422237, 42.264378>,  <38.379875, 41.273914, 42.566406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163589, 41.422237, 42.264378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079671, 0.916145, 0.392850,
		0.837428, 0.152261, -0.524911,
		-0.540710, 0.370803, -0.755074,
		38.001377, 41.533478, 42.037857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745533, 41.785305, 42.218857>,  <38.379875, 41.273914, 42.566406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745533, 41.785305, 42.218857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368057, 41.882847, 42.129421>,  <38.141571, 41.941372, 42.075760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368057, 41.882847, 42.129421>,  <38.745533, 41.785305, 42.218857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368057, 41.882847, 42.129421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171081, 0.938126, 0.301084,
		0.283176, 0.245877, -0.927015,
		-0.943686, 0.243854, -0.223590,
		38.084953, 41.956001, 42.062344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792118, 42.478840, 41.919823>,  <38.745533, 41.785305, 42.218857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792118, 42.478840, 41.919823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.416019, 42.399155, 42.030273>,  <38.190361, 42.351341, 42.096546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.416019, 42.399155, 42.030273>,  <38.792118, 42.478840, 41.919823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416019, 42.399155, 42.030273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036532, 0.865318, 0.499890,
		-0.338527, 0.459933, -0.820891,
		-0.940247, -0.199215, 0.276131,
		38.133945, 42.339390, 42.113113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437050, 43.175476, 42.141922>,  <38.792118, 42.478840, 41.919823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437050, 43.175476, 42.141922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216858, 42.872166, 42.281628>,  <38.084743, 42.690178, 42.365452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216858, 42.872166, 42.281628>,  <38.437050, 43.175476, 42.141922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216858, 42.872166, 42.281628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124209, 0.488091, 0.863910,
		-0.825556, 0.432184, -0.362869,
		-0.550481, -0.758278, 0.349265,
		38.051712, 42.644684, 42.386406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877186, 43.507446, 42.514126>,  <38.437050, 43.175476, 42.141922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877186, 43.507446, 42.514126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874790, 43.134220, 42.657990>,  <37.873352, 42.910286, 42.744308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874790, 43.134220, 42.657990>,  <37.877186, 43.507446, 42.514126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874790, 43.134220, 42.657990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099175, 0.358443, 0.928269,
		-0.995052, -0.030111, -0.094683,
		-0.005987, -0.933066, 0.359655,
		37.872993, 42.854301, 42.765884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369884, 43.565041, 43.034393>,  <37.877186, 43.507446, 42.514126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369884, 43.565041, 43.034393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602531, 43.245182, 43.094116>,  <37.742119, 43.053268, 43.129951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602531, 43.245182, 43.094116>,  <37.369884, 43.565041, 43.034393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602531, 43.245182, 43.094116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136998, 0.277212, 0.950992,
		-0.801843, -0.532659, 0.270780,
		0.581618, -0.799642, 0.149307,
		37.777016, 43.005291, 43.138908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177349, 43.272652, 43.675148>,  <37.369884, 43.565041, 43.034393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177349, 43.272652, 43.675148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541939, 43.116913, 43.622036>,  <37.760693, 43.023468, 43.590168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541939, 43.116913, 43.622036>,  <37.177349, 43.272652, 43.675148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541939, 43.116913, 43.622036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202985, 0.144934, 0.968396,
		-0.357798, -0.909617, 0.211135,
		0.911470, -0.389347, -0.132781,
		37.815380, 43.000111, 43.582203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368656, 42.757366, 44.228779>,  <37.177349, 43.272652, 43.675148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368656, 42.757366, 44.228779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735935, 42.834229, 44.090225>,  <37.956303, 42.880344, 44.007092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735935, 42.834229, 44.090225>,  <37.368656, 42.757366, 44.228779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735935, 42.834229, 44.090225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304215, 0.217967, 0.927332,
		0.253694, -0.956852, 0.141681,
		0.918201, 0.192157, -0.346385,
		38.011395, 42.891876, 43.986309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883629, 42.331341, 44.575947>,  <37.368656, 42.757366, 44.228779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883629, 42.331341, 44.575947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118923, 42.613297, 44.417397>,  <38.260101, 42.782471, 44.322266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118923, 42.613297, 44.417397>,  <37.883629, 42.331341, 44.575947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118923, 42.613297, 44.417397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426405, 0.146117, 0.892653,
		0.687138, -0.694105, -0.214618,
		0.588235, 0.704889, -0.396372,
		38.295395, 42.824764, 44.298485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331367, 42.066647, 44.898911>,  <37.883629, 42.331341, 44.575947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331367, 42.066647, 44.898911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445850, 42.435856, 44.796062>,  <38.514542, 42.657383, 44.734352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445850, 42.435856, 44.796062>,  <38.331367, 42.066647, 44.898911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445850, 42.435856, 44.796062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424802, 0.118299, 0.897523,
		0.858852, -0.366108, -0.358244,
		0.286211, 0.923022, -0.257125,
		38.531715, 42.712761, 44.718925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011570, 42.030594, 45.059109>,  <38.331367, 42.066647, 44.898911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011570, 42.030594, 45.059109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918789, 42.418869, 45.033916>,  <38.863121, 42.651833, 45.018799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918789, 42.418869, 45.033916>,  <39.011570, 42.030594, 45.059109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918789, 42.418869, 45.033916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518029, 0.178073, 0.836622,
		0.823312, 0.161433, -0.544148,
		-0.231956, 0.970685, -0.062983,
		38.849201, 42.710075, 45.015022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567646, 42.325188, 45.289829>,  <39.011570, 42.030594, 45.059109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567646, 42.325188, 45.289829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313614, 42.630741, 45.335693>,  <39.161194, 42.814075, 45.363213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313614, 42.630741, 45.335693>,  <39.567646, 42.325188, 45.289829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313614, 42.630741, 45.335693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342844, 0.145740, 0.928018,
		0.692191, 0.628677, -0.354451,
		-0.635082, 0.763888, 0.114658,
		39.123089, 42.859909, 45.370090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001442, 42.925907, 45.592030>,  <39.567646, 42.325188, 45.289829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001442, 42.925907, 45.592030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616493, 42.999470, 45.672039>,  <39.385525, 43.043610, 45.720047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616493, 42.999470, 45.672039>,  <40.001442, 42.925907, 45.592030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616493, 42.999470, 45.672039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214316, 0.061215, 0.974844,
		0.167037, 0.981035, -0.098326,
		-0.962376, 0.183908, 0.200027,
		39.327782, 43.054642, 45.732048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899181, 43.554005, 45.993896>,  <40.001442, 42.925907, 45.592030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899181, 43.554005, 45.993896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.585056, 43.315544, 46.060688>,  <39.396580, 43.172466, 46.100761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.585056, 43.315544, 46.060688>,  <39.899181, 43.554005, 45.993896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585056, 43.315544, 46.060688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180661, 0.037300, 0.982838,
		-0.592150, 0.802004, 0.078409,
		-0.785315, -0.596153, 0.166978,
		39.349461, 43.136700, 46.110783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650826, 43.875305, 46.549046>,  <39.899181, 43.554005, 45.993896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650826, 43.875305, 46.549046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501888, 43.504570, 46.529713>,  <39.412525, 43.282127, 46.518112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501888, 43.504570, 46.529713>,  <39.650826, 43.875305, 46.549046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501888, 43.504570, 46.529713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227974, -0.141820, 0.963283,
		-0.899661, 0.347650, 0.264100,
		-0.372340, -0.926837, -0.048335,
		39.390186, 43.226521, 46.515213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191360, 43.849194, 47.081940>,  <39.650826, 43.875305, 46.549046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191360, 43.849194, 47.081940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.273117, 43.466461, 46.999283>,  <39.322170, 43.236820, 46.949688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.273117, 43.466461, 46.999283>,  <39.191360, 43.849194, 47.081940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273117, 43.466461, 46.999283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058663, -0.198742, 0.978294,
		-0.977130, -0.212077, 0.015509,
		0.204392, -0.956830, -0.206638,
		39.334435, 43.179413, 46.937290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799408, 43.389435, 47.340294>,  <39.191360, 43.849194, 47.081940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799408, 43.389435, 47.340294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117813, 43.149712, 47.306355>,  <39.308857, 43.005878, 47.285992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117813, 43.149712, 47.306355>,  <38.799408, 43.389435, 47.340294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117813, 43.149712, 47.306355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142436, -0.321705, 0.936065,
		-0.588289, -0.733030, -0.341443,
		0.796008, -0.599311, -0.084846,
		39.356617, 42.969917, 47.280899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219955, 43.803047, 47.637981>,  <38.799408, 43.389435, 47.340294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219955, 43.803047, 47.637981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873112, 43.682491, 47.796623>,  <37.665005, 43.610157, 47.891808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873112, 43.682491, 47.796623>,  <38.219955, 43.803047, 47.637981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873112, 43.682491, 47.796623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435625, 0.072688, -0.897189,
		0.241578, -0.950726, -0.194322,
		-0.867106, -0.301392, 0.396600,
		37.612980, 43.592075, 47.915604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895657, 43.094719, 47.411682>,  <38.219955, 43.803047, 47.637981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895657, 43.094719, 47.411682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581646, 43.299335, 47.551434>,  <37.393238, 43.422104, 47.635284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581646, 43.299335, 47.551434>,  <37.895657, 43.094719, 47.411682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581646, 43.299335, 47.551434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478660, -0.142900, -0.866293,
		-0.393215, -0.847295, 0.357033,
		-0.785026, 0.511537, 0.349376,
		37.346138, 43.452797, 47.656246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292870, 42.737507, 47.195950>,  <37.895657, 43.094719, 47.411682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292870, 42.737507, 47.195950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.160999, 43.111309, 47.249638>,  <37.081879, 43.335590, 47.281853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.160999, 43.111309, 47.249638>,  <37.292870, 42.737507, 47.195950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160999, 43.111309, 47.249638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507940, -0.055727, -0.859588,
		-0.795810, -0.351560, 0.493044,
		-0.329672, 0.934505, 0.134224,
		37.062096, 43.391659, 47.289906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681797, 42.637905, 46.964981>,  <37.292870, 42.737507, 47.195950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681797, 42.637905, 46.964981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716274, 43.036098, 46.980865>,  <36.736961, 43.275017, 46.990398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716274, 43.036098, 46.980865>,  <36.681797, 42.637905, 46.964981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716274, 43.036098, 46.980865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659003, 0.086868, -0.747107,
		-0.747184, 0.038225, 0.663517,
		0.086197, 0.995486, 0.039716,
		36.742134, 43.334743, 46.992779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026199, 42.825886, 47.032185>,  <36.681797, 42.637905, 46.964981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026199, 42.825886, 47.032185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231869, 43.141068, 46.896683>,  <36.355270, 43.330177, 46.815380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231869, 43.141068, 46.896683>,  <36.026199, 42.825886, 47.032185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231869, 43.141068, 46.896683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706813, 0.165547, -0.687757,
		-0.485840, 0.593065, 0.642055,
		0.514175, 0.787952, -0.338756,
		36.386120, 43.377453, 46.795055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602592, 43.340073, 46.822239>,  <36.026199, 42.825886, 47.032185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602592, 43.340073, 46.822239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914501, 43.439823, 46.592537>,  <36.101646, 43.499676, 46.454716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914501, 43.439823, 46.592537>,  <35.602592, 43.340073, 46.822239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914501, 43.439823, 46.592537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624297, 0.240844, -0.743134,
		-0.047016, 0.937979, 0.343490,
		0.779771, 0.249379, -0.574253,
		36.148434, 43.514637, 46.420261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336372, 43.719685, 46.309921>,  <35.602592, 43.340073, 46.822239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336372, 43.719685, 46.309921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697250, 43.650398, 46.151909>,  <35.913776, 43.608826, 46.057102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697250, 43.650398, 46.151909>,  <35.336372, 43.719685, 46.309921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697250, 43.650398, 46.151909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368244, 0.167582, -0.914501,
		0.224609, 0.970521, 0.087404,
		0.902190, -0.173219, -0.395029,
		35.967907, 43.598434, 46.033401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420330, 44.183754, 45.770573>,  <35.336372, 43.719685, 46.309921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420330, 44.183754, 45.770573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695560, 43.911747, 45.669281>,  <35.860699, 43.748543, 45.608505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695560, 43.911747, 45.669281>,  <35.420330, 44.183754, 45.770573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695560, 43.911747, 45.669281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259048, 0.095789, -0.961103,
		0.677825, 0.726910, -0.110248,
		0.688075, -0.680019, -0.253233,
		35.901981, 43.707741, 45.593311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593708, 44.324909, 45.087936>,  <35.420330, 44.183754, 45.770573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593708, 44.324909, 45.087936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755650, 43.959175, 45.091629>,  <35.852814, 43.739735, 45.093845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755650, 43.959175, 45.091629>,  <35.593708, 44.324909, 45.087936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755650, 43.959175, 45.091629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190806, -0.094355, -0.977083,
		0.894251, 0.393815, -0.212661,
		0.404855, -0.914334, 0.009235,
		35.877106, 43.684875, 45.094398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115177, 44.230488, 44.533455>,  <35.593708, 44.324909, 45.087936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115177, 44.230488, 44.533455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965279, 43.870651, 44.623173>,  <35.875340, 43.654751, 44.677002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965279, 43.870651, 44.623173>,  <36.115177, 44.230488, 44.533455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965279, 43.870651, 44.623173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199115, -0.158184, -0.967125,
		0.905495, -0.407084, -0.119844,
		-0.374743, -0.899589, 0.224291,
		35.852856, 43.600773, 44.690460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534409, 43.666286, 44.079075>,  <36.115177, 44.230488, 44.533455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534409, 43.666286, 44.079075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181019, 43.514252, 44.188625>,  <35.968987, 43.423031, 44.254356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181019, 43.514252, 44.188625>,  <36.534409, 43.666286, 44.079075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181019, 43.514252, 44.188625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049684, -0.505282, -0.861523,
		0.465838, -0.774740, 0.427519,
		-0.883474, -0.380089, 0.273872,
		35.915977, 43.400227, 44.270786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586113, 42.924824, 43.950665>,  <36.534409, 43.666286, 44.079075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586113, 42.924824, 43.950665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188583, 42.969143, 43.952980>,  <35.950066, 42.995735, 43.954369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188583, 42.969143, 43.952980>,  <36.586113, 42.924824, 43.950665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188583, 42.969143, 43.952980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067222, -0.559837, -0.825871,
		-0.088268, -0.821161, 0.563829,
		-0.993826, 0.110800, 0.005785,
		35.890434, 43.002384, 43.954716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258499, 42.231956, 43.708969>,  <36.586113, 42.924824, 43.950665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258499, 42.231956, 43.708969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951488, 42.487095, 43.683506>,  <35.767281, 42.640179, 43.668228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951488, 42.487095, 43.683506>,  <36.258499, 42.231956, 43.708969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951488, 42.487095, 43.683506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324533, -0.472296, -0.819521,
		-0.552797, -0.608344, 0.569503,
		-0.767525, 0.637851, -0.063656,
		35.721230, 42.678452, 43.664410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706882, 41.833771, 43.551800>,  <36.258499, 42.231956, 43.708969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706882, 41.833771, 43.551800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612911, 42.202332, 43.427971>,  <35.556530, 42.423466, 43.353676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612911, 42.202332, 43.427971>,  <35.706882, 41.833771, 43.551800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612911, 42.202332, 43.427971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332264, -0.375422, -0.865251,
		-0.913461, -0.100411, 0.394343,
		-0.234926, 0.921399, -0.309571,
		35.542435, 42.478752, 43.335098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103405, 41.687939, 43.199234>,  <35.706882, 41.833771, 43.551800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103405, 41.687939, 43.199234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247982, 42.033642, 43.059284>,  <35.334728, 42.241066, 42.975315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247982, 42.033642, 43.059284>,  <35.103405, 41.687939, 43.199234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247982, 42.033642, 43.059284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224732, -0.283434, -0.932288,
		-0.904906, 0.415597, 0.091782,
		0.361442, 0.864259, -0.349879,
		35.356415, 42.292919, 42.954319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679852, 41.846104, 42.703190>,  <35.103405, 41.687939, 43.199234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679852, 41.846104, 42.703190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983238, 42.089638, 42.610195>,  <35.165272, 42.235760, 42.554398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983238, 42.089638, 42.610195>,  <34.679852, 41.846104, 42.703190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983238, 42.089638, 42.610195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141613, -0.194239, -0.970679,
		-0.636140, 0.769150, -0.061105,
		0.758467, 0.608835, -0.232484,
		35.210777, 42.272289, 42.540451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410614, 42.265842, 42.168255>,  <34.679852, 41.846104, 42.703190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410614, 42.265842, 42.168255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807522, 42.249634, 42.121338>,  <35.045666, 42.239910, 42.093189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807522, 42.249634, 42.121338>,  <34.410614, 42.265842, 42.168255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807522, 42.249634, 42.121338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119866, -0.068459, -0.990427,
		0.032100, 0.996831, -0.072787,
		0.992271, -0.040517, -0.117289,
		35.105202, 42.237480, 42.086151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439774, 42.489857, 41.515312>,  <34.410614, 42.265842, 42.168255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439774, 42.489857, 41.515312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817242, 42.363544, 41.554836>,  <35.043724, 42.287758, 41.578552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817242, 42.363544, 41.554836>,  <34.439774, 42.489857, 41.515312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817242, 42.363544, 41.554836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059877, -0.130723, -0.989609,
		0.325414, 0.939785, -0.104452,
		0.943674, -0.315779, 0.098811,
		35.100346, 42.268810, 41.584480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746799, 42.632324, 40.871727>,  <34.439774, 42.489857, 41.515312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746799, 42.632324, 40.871727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.027889, 42.381584, 41.006329>,  <35.196545, 42.231140, 41.087090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.027889, 42.381584, 41.006329>,  <34.746799, 42.632324, 40.871727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027889, 42.381584, 41.006329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122878, -0.358934, -0.925239,
		0.700770, 0.691538, -0.175206,
		0.702725, -0.626851, 0.336504,
		35.238708, 42.193527, 41.107281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372009, 42.633739, 40.440353>,  <34.746799, 42.632324, 40.871727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372009, 42.633739, 40.440353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410389, 42.263405, 40.586571>,  <35.433418, 42.041203, 40.674301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410389, 42.263405, 40.586571>,  <35.372009, 42.633739, 40.440353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410389, 42.263405, 40.586571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146566, -0.350089, -0.925179,
		0.984536, 0.142350, 0.102104,
		0.095954, -0.925837, 0.365539,
		35.439175, 41.985653, 40.696232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045753, 42.360554, 40.220573>,  <35.372009, 42.633739, 40.440353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045753, 42.360554, 40.220573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830437, 42.036015, 40.311741>,  <35.701244, 41.841290, 40.366440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830437, 42.036015, 40.311741>,  <36.045753, 42.360554, 40.220573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830437, 42.036015, 40.311741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318397, -0.446191, -0.836383,
		0.780295, -0.377654, 0.498515,
		-0.538296, -0.811352, 0.227917,
		35.668949, 41.792610, 40.380116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.314140, 37.833290, 41.417007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001083, 37.737507, 41.646839>,  <44.813251, 37.680035, 41.784737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001083, 37.737507, 41.646839>,  <45.314140, 37.833290, 41.417007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001083, 37.737507, 41.646839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262927, -0.709493, -0.653826,
		0.564222, -0.662781, 0.492316,
		-0.782638, -0.239460, 0.574575,
		44.766293, 37.665668, 41.819210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381226, 37.191296, 41.460949>,  <45.314140, 37.833290, 41.417007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381226, 37.191296, 41.460949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.996380, 37.269260, 41.537205>,  <44.765472, 37.316040, 41.582958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.996380, 37.269260, 41.537205>,  <45.381226, 37.191296, 41.460949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996380, 37.269260, 41.537205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272598, -0.700559, -0.659475,
		0.005019, -0.686460, 0.727151,
		-0.962115, 0.194910, 0.190644,
		44.707745, 37.327732, 41.594398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022907, 36.568760, 41.528847>,  <45.381226, 37.191296, 41.460949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022907, 36.568760, 41.528847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716877, 36.818691, 41.466560>,  <44.533260, 36.968651, 41.429188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716877, 36.818691, 41.466560>,  <45.022907, 36.568760, 41.528847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716877, 36.818691, 41.466560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382071, -0.635123, -0.671297,
		-0.518347, -0.454097, 0.724646,
		-0.765074, 0.624831, -0.155717,
		44.487354, 37.006142, 41.419846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403450, 36.148300, 41.488525>,  <45.022907, 36.568760, 41.528847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403450, 36.148300, 41.488525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.285046, 36.487209, 41.312111>,  <44.214005, 36.690556, 41.206261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.285046, 36.487209, 41.312111>,  <44.403450, 36.148300, 41.488525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285046, 36.487209, 41.312111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512569, -0.530518, -0.675147,
		-0.806010, 0.026215, 0.591321,
		-0.296007, 0.847268, -0.441040,
		44.196243, 36.741390, 41.179798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704048, 35.950150, 41.157921>,  <44.403450, 36.148300, 41.488525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704048, 35.950150, 41.157921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.826599, 36.282146, 40.971485>,  <43.900131, 36.481346, 40.859623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.826599, 36.282146, 40.971485>,  <43.704048, 35.950150, 41.157921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826599, 36.282146, 40.971485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462993, -0.297883, -0.834807,
		-0.831726, 0.471564, 0.293017,
		0.306380, 0.829996, -0.466088,
		43.918514, 36.531147, 40.831657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115292, 36.282711, 40.807953>,  <43.704048, 35.950150, 41.157921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115292, 36.282711, 40.807953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444569, 36.406406, 40.617485>,  <43.642136, 36.480621, 40.503204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444569, 36.406406, 40.617485>,  <43.115292, 36.282711, 40.807953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444569, 36.406406, 40.617485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432881, -0.200846, -0.878792,
		-0.367391, 0.929534, -0.031472,
		0.823188, 0.309236, -0.476166,
		43.691525, 36.499176, 40.474636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766663, 36.582928, 40.240906>,  <43.115292, 36.282711, 40.807953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766663, 36.582928, 40.240906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157799, 36.540440, 40.168736>,  <43.392479, 36.514946, 40.125435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157799, 36.540440, 40.168736>,  <42.766663, 36.582928, 40.240906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157799, 36.540440, 40.168736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187625, -0.062170, -0.980271,
		0.092909, 0.992397, -0.080721,
		0.977837, -0.106221, -0.180423,
		43.451149, 36.508572, 40.114609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824913, 37.007370, 39.679268>,  <42.766663, 36.582928, 40.240906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824913, 37.007370, 39.679268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.139065, 36.761211, 39.652557>,  <43.327557, 36.613518, 39.636532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.139065, 36.761211, 39.652557>,  <42.824913, 37.007370, 39.679268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139065, 36.761211, 39.652557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058293, 0.033867, -0.997725,
		0.616259, 0.787489, -0.009275,
		0.785383, -0.615397, -0.066775,
		43.374680, 36.576591, 39.632526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230564, 37.217747, 39.074306>,  <42.824913, 37.007370, 39.679268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230564, 37.217747, 39.074306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322956, 36.837280, 39.156223>,  <43.378391, 36.609001, 39.205372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322956, 36.837280, 39.156223>,  <43.230564, 37.217747, 39.074306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322956, 36.837280, 39.156223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076642, -0.227616, -0.970730,
		0.969935, 0.208524, -0.125474,
		0.230980, -0.951162, 0.204791,
		43.392250, 36.551933, 39.217659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804546, 36.996590, 38.694714>,  <43.230564, 37.217747, 39.074306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804546, 36.996590, 38.694714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624435, 36.649727, 38.779842>,  <43.516369, 36.441608, 38.830917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624435, 36.649727, 38.779842>,  <43.804546, 36.996590, 38.694714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624435, 36.649727, 38.779842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022724, -0.249401, -0.968134,
		0.892598, -0.431095, 0.132005,
		-0.450280, -0.867154, 0.212819,
		43.489353, 36.389580, 38.843689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951271, 36.661240, 38.136429>,  <43.804546, 36.996590, 38.694714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951271, 36.661240, 38.136429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686218, 36.391945, 38.267677>,  <43.527187, 36.230366, 38.346424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686218, 36.391945, 38.267677>,  <43.951271, 36.661240, 38.136429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686218, 36.391945, 38.267677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194793, -0.268107, -0.943491,
		0.723167, -0.689105, 0.046515,
		-0.662635, -0.673241, 0.328119,
		43.487427, 36.189972, 38.366112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171356, 36.102108, 37.898590>,  <43.951271, 36.661240, 38.136429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171356, 36.102108, 37.898590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793758, 35.994991, 37.975693>,  <43.567200, 35.930721, 38.021954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793758, 35.994991, 37.975693>,  <44.171356, 36.102108, 37.898590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793758, 35.994991, 37.975693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117323, -0.273591, -0.954664,
		0.308389, -0.923815, 0.226851,
		-0.943997, -0.267793, 0.192757,
		43.510559, 35.914654, 38.033520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175217, 35.425713, 37.837631>,  <44.171356, 36.102108, 37.898590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175217, 35.425713, 37.837631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.796398, 35.548084, 37.798622>,  <43.569107, 35.621510, 37.775215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.796398, 35.548084, 37.798622>,  <44.175217, 35.425713, 37.837631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796398, 35.548084, 37.798622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049417, -0.438962, -0.897146,
		-0.317274, -0.844819, 0.430836,
		-0.947045, 0.305931, -0.097523,
		43.512283, 35.639862, 37.769363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693974, 34.767021, 37.709549>,  <44.175217, 35.425713, 37.837631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693974, 34.767021, 37.709549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494354, 35.085754, 37.573307>,  <43.374584, 35.276993, 37.491562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494354, 35.085754, 37.573307>,  <43.693974, 34.767021, 37.709549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494354, 35.085754, 37.573307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132409, -0.458550, -0.878749,
		-0.856400, -0.393437, 0.334345,
		-0.499046, 0.796831, -0.340607,
		43.344639, 35.324802, 37.471127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108986, 34.465565, 37.411106>,  <43.693974, 34.767021, 37.709549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108986, 34.465565, 37.411106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.145599, 34.823826, 37.237011>,  <43.167568, 35.038780, 37.132553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.145599, 34.823826, 37.237011>,  <43.108986, 34.465565, 37.411106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145599, 34.823826, 37.237011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230249, -0.406194, -0.884303,
		-0.968817, 0.181161, 0.169040,
		0.091538, 0.895649, -0.435240,
		43.173061, 35.092522, 37.106438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560604, 34.656204, 36.995579>,  <43.108986, 34.465565, 37.411106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560604, 34.656204, 36.995579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.859921, 34.880077, 36.853130>,  <43.039509, 35.014400, 36.767662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.859921, 34.880077, 36.853130>,  <42.560604, 34.656204, 36.995579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859921, 34.880077, 36.853130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375260, -0.085559, -0.922963,
		-0.547034, 0.824280, 0.146003,
		0.748288, 0.559681, -0.356122,
		43.084408, 35.047981, 36.746292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300385, 34.910877, 36.323872>,  <42.560604, 34.656204, 36.995579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300385, 34.910877, 36.323872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684067, 35.023659, 36.315578>,  <42.914276, 35.091328, 36.310600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684067, 35.023659, 36.315578>,  <42.300385, 34.910877, 36.323872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684067, 35.023659, 36.315578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018122, -0.134517, -0.990745,
		-0.282129, 0.949952, -0.134139,
		0.959205, 0.281949, -0.020736,
		42.971828, 35.108242, 36.309357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306728, 35.259323, 35.764408>,  <42.300385, 34.910877, 36.323872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306728, 35.259323, 35.764408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695591, 35.190769, 35.828342>,  <42.928909, 35.149635, 35.866703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695591, 35.190769, 35.828342>,  <42.306728, 35.259323, 35.764408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695591, 35.190769, 35.828342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156199, -0.034584, -0.987120,
		0.174707, 0.984597, -0.006850,
		0.972152, -0.171387, 0.159835,
		42.987236, 35.139355, 35.876293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673046, 35.795658, 35.520115>,  <42.306728, 35.259323, 35.764408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673046, 35.795658, 35.520115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903824, 35.468975, 35.515751>,  <43.042290, 35.272964, 35.513130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903824, 35.468975, 35.515751>,  <42.673046, 35.795658, 35.520115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903824, 35.468975, 35.515751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004844, 0.009942, -0.999939,
		0.816769, 0.576962, 0.001780,
		0.576944, -0.816711, -0.010915,
		43.076908, 35.223961, 35.512478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154339, 35.910019, 35.044033>,  <42.673046, 35.795658, 35.520115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154339, 35.910019, 35.044033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195801, 35.512978, 35.069324>,  <43.220676, 35.274754, 35.084499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195801, 35.512978, 35.069324>,  <43.154339, 35.910019, 35.044033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195801, 35.512978, 35.069324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141211, -0.048243, -0.988803,
		0.984538, 0.111422, 0.135165,
		0.103654, -0.992602, 0.063232,
		43.226898, 35.215199, 35.088295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832119, 35.704151, 34.757603>,  <43.154339, 35.910019, 35.044033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832119, 35.704151, 34.757603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597023, 35.382229, 34.724472>,  <43.455967, 35.189075, 34.704594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597023, 35.382229, 34.724472>,  <43.832119, 35.704151, 34.757603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597023, 35.382229, 34.724472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082195, 0.042442, -0.995712,
		0.804866, -0.592025, 0.041206,
		-0.587738, -0.804801, -0.082822,
		43.420700, 35.140789, 34.699627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278702, 35.307922, 34.428467>,  <43.832119, 35.704151, 34.757603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278702, 35.307922, 34.428467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892902, 35.214935, 34.378342>,  <43.661423, 35.159145, 34.348267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892902, 35.214935, 34.378342>,  <44.278702, 35.307922, 34.428467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892902, 35.214935, 34.378342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125489, 0.014084, -0.991995,
		0.232370, -0.972503, 0.015588,
		-0.964498, -0.232466, -0.125311,
		43.603554, 35.145195, 34.340748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658955, 34.674053, 34.822006>,  <44.278702, 35.307922, 34.428467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658955, 34.674053, 34.822006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.056744, 34.649757, 34.787750>,  <45.295418, 34.635178, 34.767197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.056744, 34.649757, 34.787750>,  <44.658955, 34.674053, 34.822006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056744, 34.649757, 34.787750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057059, -0.371991, 0.926481,
		-0.088133, -0.926247, -0.366469,
		0.994473, -0.060743, -0.085635,
		45.355087, 34.631535, 34.762058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870831, 34.021385, 34.967251>,  <44.658955, 34.674053, 34.822006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870831, 34.021385, 34.967251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.205654, 34.231800, 35.027401>,  <45.406548, 34.358047, 35.063492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.205654, 34.231800, 35.027401>,  <44.870831, 34.021385, 34.967251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205654, 34.231800, 35.027401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127638, -0.455038, 0.881277,
		0.532010, -0.718490, -0.448037,
		0.837063, 0.526035, 0.150378,
		45.456772, 34.389610, 35.072514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366692, 33.574306, 35.142132>,  <44.870831, 34.021385, 34.967251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366692, 33.574306, 35.142132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.503288, 33.912468, 35.306412>,  <45.585247, 34.115364, 35.404980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.503288, 33.912468, 35.306412>,  <45.366692, 33.574306, 35.142132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503288, 33.912468, 35.306412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189875, -0.490017, 0.850783,
		0.920505, -0.212555, -0.327859,
		0.341495, 0.845402, 0.410704,
		45.605736, 34.166088, 35.429623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850407, 33.307877, 35.667091>,  <45.366692, 33.574306, 35.142132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850407, 33.307877, 35.667091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811630, 33.691532, 35.773415>,  <45.788364, 33.921726, 35.837208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811630, 33.691532, 35.773415>,  <45.850407, 33.307877, 35.667091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811630, 33.691532, 35.773415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034390, -0.263677, 0.963998,
		0.994696, 0.102594, -0.007423,
		-0.096943, 0.959140, 0.265807,
		45.782547, 33.979275, 35.853157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510674, 33.541798, 36.051739>,  <45.850407, 33.307877, 35.667091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510674, 33.541798, 36.051739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.229027, 33.805130, 36.158184>,  <46.060040, 33.963131, 36.222050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.229027, 33.805130, 36.158184>,  <46.510674, 33.541798, 36.051739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229027, 33.805130, 36.158184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160103, -0.217925, 0.962744,
		0.691797, 0.720492, 0.048044,
		-0.704119, 0.658331, 0.266113,
		46.017792, 34.002628, 36.238018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.841091, 33.913784, 36.664196>,  <46.510674, 33.541798, 36.051739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.841091, 33.913784, 36.664196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.445431, 33.969772, 36.682041>,  <46.208035, 34.003365, 36.692749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.445431, 33.969772, 36.682041>,  <46.841091, 33.913784, 36.664196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445431, 33.969772, 36.682041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026255, -0.130363, 0.991119,
		0.144541, 0.981537, 0.125274,
		-0.989150, 0.139968, 0.044613,
		46.148685, 34.011765, 36.695427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747917, 34.420986, 37.219891>,  <46.841091, 33.913784, 36.664196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747917, 34.420986, 37.219891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.383892, 34.263977, 37.166649>,  <46.165478, 34.169773, 37.134705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.383892, 34.263977, 37.166649>,  <46.747917, 34.420986, 37.219891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383892, 34.263977, 37.166649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194938, 0.121949, 0.973205,
		-0.365769, 0.911624, -0.187498,
		-0.910062, -0.392518, -0.133105,
		46.110874, 34.146221, 37.126717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198357, 34.871799, 37.538284>,  <46.747917, 34.420986, 37.219891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198357, 34.871799, 37.538284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.023232, 34.512779, 37.517387>,  <45.918156, 34.297367, 37.504848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.023232, 34.512779, 37.517387>,  <46.198357, 34.871799, 37.538284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023232, 34.512779, 37.517387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440485, 0.163485, 0.882749,
		-0.783768, 0.409489, -0.466932,
		-0.437813, -0.897547, -0.052239,
		45.891888, 34.243515, 37.501717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466881, 34.927589, 37.868607>,  <46.198357, 34.871799, 37.538284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466881, 34.927589, 37.868607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560452, 34.538815, 37.858650>,  <45.616592, 34.305550, 37.852676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560452, 34.538815, 37.858650>,  <45.466881, 34.927589, 37.868607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560452, 34.538815, 37.858650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450934, -0.131143, 0.882870,
		-0.861358, -0.195302, -0.468956,
		0.233927, -0.971936, -0.024893,
		45.630630, 34.247234, 37.851181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871063, 34.693665, 38.113071>,  <45.466881, 34.927589, 37.868607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871063, 34.693665, 38.113071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148205, 34.411602, 38.173351>,  <45.314491, 34.242367, 38.209518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148205, 34.411602, 38.173351>,  <44.871063, 34.693665, 38.113071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148205, 34.411602, 38.173351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488053, -0.304748, 0.817883,
		-0.530808, -0.640224, -0.555299,
		0.692854, -0.705154, 0.150700,
		45.356060, 34.200054, 38.218563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428810, 34.071251, 38.278358>,  <44.871063, 34.693665, 38.113071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428810, 34.071251, 38.278358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.794197, 34.001362, 38.425354>,  <45.013428, 33.959427, 38.513554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.794197, 34.001362, 38.425354>,  <44.428810, 34.071251, 38.278358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794197, 34.001362, 38.425354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405269, -0.309541, 0.860198,
		-0.036543, -0.934695, -0.353566,
		0.913467, -0.174724, 0.367492,
		45.068237, 33.948944, 38.535603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425148, 33.498882, 38.684731>,  <44.428810, 34.071251, 38.278358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425148, 33.498882, 38.684731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.776318, 33.625347, 38.828556>,  <44.987019, 33.701225, 38.914852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.776318, 33.625347, 38.828556>,  <44.425148, 33.498882, 38.684731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776318, 33.625347, 38.828556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256507, -0.323532, 0.910786,
		0.404286, -0.891834, -0.202940,
		0.877928, 0.316162, 0.359561,
		45.039696, 33.720196, 38.936424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652466, 32.933887, 39.080605>,  <44.425148, 33.498882, 38.684731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652466, 32.933887, 39.080605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.849380, 33.249096, 39.228481>,  <44.967529, 33.438221, 39.317207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.849380, 33.249096, 39.228481>,  <44.652466, 32.933887, 39.080605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849380, 33.249096, 39.228481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191165, -0.316475, 0.929139,
		0.849185, -0.528071, -0.005152,
		0.492282, 0.788026, 0.369694,
		44.997066, 33.485504, 39.339390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062531, 32.663971, 39.568485>,  <44.652466, 32.933887, 39.080605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062531, 32.663971, 39.568485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030777, 33.054249, 39.650177>,  <45.011726, 33.288418, 39.699192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030777, 33.054249, 39.650177>,  <45.062531, 32.663971, 39.568485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030777, 33.054249, 39.650177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142147, -0.213866, 0.966466,
		0.986657, 0.047688, 0.155670,
		-0.079381, 0.975698, 0.204234,
		45.006962, 33.346958, 39.711449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506046, 32.844124, 40.188133>,  <45.062531, 32.663971, 39.568485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506046, 32.844124, 40.188133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.233963, 33.134373, 40.146587>,  <45.070713, 33.308521, 40.121658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.233963, 33.134373, 40.146587>,  <45.506046, 32.844124, 40.188133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233963, 33.134373, 40.146587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246584, -0.093075, 0.964642,
		0.690295, 0.681773, 0.242236,
		-0.680212, 0.725619, -0.103865,
		45.029900, 33.352058, 40.115429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520187, 33.111294, 40.819511>,  <45.506046, 32.844124, 40.188133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520187, 33.111294, 40.819511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.208248, 33.306988, 40.663315>,  <45.021084, 33.424404, 40.569595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.208248, 33.306988, 40.663315>,  <45.520187, 33.111294, 40.819511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208248, 33.306988, 40.663315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299495, 0.256168, 0.919065,
		0.549667, 0.833685, -0.053251,
		-0.779852, 0.489231, -0.390492,
		44.974293, 33.453758, 40.546165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605366, 33.835281, 40.981750>,  <45.520187, 33.111294, 40.819511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605366, 33.835281, 40.981750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.225006, 33.730427, 40.915932>,  <44.996792, 33.667515, 40.876442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.225006, 33.730427, 40.915932>,  <45.605366, 33.835281, 40.981750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225006, 33.730427, 40.915932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241667, 0.296726, 0.923878,
		-0.193358, 0.918280, -0.345507,
		-0.950899, -0.262137, -0.164544,
		44.939735, 33.651787, 40.866570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199665, 34.402988, 41.301483>,  <45.605366, 33.835281, 40.981750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199665, 34.402988, 41.301483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944359, 34.095718, 41.281403>,  <44.791176, 33.911354, 41.269352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944359, 34.095718, 41.281403>,  <45.199665, 34.402988, 41.301483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944359, 34.095718, 41.281403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285822, 0.175921, 0.941996,
		-0.714790, 0.615592, -0.331846,
		-0.638264, -0.768179, -0.050203,
		44.752880, 33.865265, 41.266342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662357, 34.569160, 41.668186>,  <45.199665, 34.402988, 41.301483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662357, 34.569160, 41.668186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.600761, 34.174118, 41.656101>,  <44.563805, 33.937092, 41.648849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.600761, 34.174118, 41.656101>,  <44.662357, 34.569160, 41.668186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600761, 34.174118, 41.656101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290509, 0.016029, 0.956738,
		-0.944400, 0.156107, -0.289378,
		-0.153992, -0.987610, -0.030212,
		44.554565, 33.877834, 41.647038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112309, 34.493866, 42.137730>,  <44.662357, 34.569160, 41.668186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112309, 34.493866, 42.137730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276947, 34.132664, 42.088459>,  <44.375729, 33.915943, 42.058895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276947, 34.132664, 42.088459>,  <44.112309, 34.493866, 42.137730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276947, 34.132664, 42.088459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057915, -0.108970, 0.992356,
		-0.909526, -0.415580, 0.007447,
		0.411592, -0.903005, -0.123179,
		44.400425, 33.861763, 42.051506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.595291, 38.081978, 38.261753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233791, 37.963993, 38.385845>,  <39.016891, 37.893204, 38.460300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233791, 37.963993, 38.385845>,  <39.595291, 38.081978, 38.261753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233791, 37.963993, 38.385845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076811, -0.824692, -0.560342,
		0.421124, -0.482577, 0.767968,
		-0.903745, -0.294962, 0.310230,
		38.962669, 37.875504, 38.478912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644230, 37.421844, 38.582325>,  <39.595291, 38.081978, 38.261753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644230, 37.421844, 38.582325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261372, 37.457424, 38.472088>,  <39.031654, 37.478771, 38.405945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261372, 37.457424, 38.472088>,  <39.644230, 37.421844, 38.582325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261372, 37.457424, 38.472088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048382, -0.889160, -0.455031,
		-0.285522, -0.448866, 0.846756,
		-0.957150, 0.088954, -0.275592,
		38.974228, 37.484112, 38.389412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424500, 36.705166, 38.379559>,  <39.644230, 37.421844, 38.582325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424500, 36.705166, 38.379559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122028, 36.931633, 38.248318>,  <38.940548, 37.067513, 38.169571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122028, 36.931633, 38.248318>,  <39.424500, 36.705166, 38.379559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122028, 36.931633, 38.248318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305794, -0.749027, -0.587748,
		-0.578524, -0.344108, 0.739527,
		-0.756175, 0.566169, -0.328104,
		38.895176, 37.101482, 38.149887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877514, 36.144306, 38.278553>,  <39.424500, 36.705166, 38.379559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877514, 36.144306, 38.278553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784691, 36.470779, 38.066895>,  <38.728996, 36.666664, 37.939899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784691, 36.470779, 38.066895>,  <38.877514, 36.144306, 38.278553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784691, 36.470779, 38.066895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265404, -0.576481, -0.772807,
		-0.935794, -0.038897, 0.350394,
		-0.232055, 0.816184, -0.529144,
		38.715073, 36.715633, 37.908150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223541, 35.891487, 37.939606>,  <38.877514, 36.144306, 38.278553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223541, 35.891487, 37.939606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313366, 36.228996, 37.744617>,  <38.367260, 36.431499, 37.627625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313366, 36.228996, 37.744617>,  <38.223541, 35.891487, 37.939606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313366, 36.228996, 37.744617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084294, -0.481548, -0.872356,
		-0.970807, 0.236989, -0.037013,
		0.224563, 0.843770, -0.487467,
		38.380733, 36.482128, 37.598377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623280, 36.149174, 37.598507>,  <38.223541, 35.891487, 37.939606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623280, 36.149174, 37.598507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948574, 36.282242, 37.407516>,  <38.143749, 36.362083, 37.292923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948574, 36.282242, 37.407516>,  <37.623280, 36.149174, 37.598507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948574, 36.282242, 37.407516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230048, -0.569885, -0.788865,
		-0.534535, 0.751375, -0.386921,
		0.813234, 0.332666, -0.477477,
		38.192543, 36.382042, 37.264275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410637, 36.373676, 36.898891>,  <37.623280, 36.149174, 37.598507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410637, 36.373676, 36.898891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807945, 36.327862, 36.892033>,  <38.046329, 36.300373, 36.887917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807945, 36.327862, 36.892033>,  <37.410637, 36.373676, 36.898891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807945, 36.327862, 36.892033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065944, -0.437635, -0.896731,
		0.095206, 0.891827, -0.442244,
		0.993271, -0.114538, -0.017146,
		38.105927, 36.293499, 36.886890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594624, 36.641212, 36.248837>,  <37.410637, 36.373676, 36.898891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594624, 36.641212, 36.248837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903233, 36.413483, 36.362415>,  <38.088398, 36.276844, 36.430561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903233, 36.413483, 36.362415>,  <37.594624, 36.641212, 36.248837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903233, 36.413483, 36.362415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066787, -0.516326, -0.853784,
		0.632691, 0.639746, -0.436379,
		0.771519, -0.569326, 0.283948,
		38.134689, 36.242683, 36.447601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094223, 36.685852, 35.679176>,  <37.594624, 36.641212, 36.248837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094223, 36.685852, 35.679176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201611, 36.357399, 35.880634>,  <38.266041, 36.160328, 36.001511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201611, 36.357399, 35.880634>,  <38.094223, 36.685852, 35.679176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201611, 36.357399, 35.880634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069429, -0.504988, -0.860329,
		0.960784, 0.265936, -0.078561,
		0.268465, -0.821136, 0.503648,
		38.282150, 36.111057, 36.031731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646896, 36.373657, 35.348175>,  <38.094223, 36.685852, 35.679176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646896, 36.373657, 35.348175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517792, 36.056782, 35.555351>,  <38.440331, 35.866657, 35.679657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517792, 36.056782, 35.555351>,  <38.646896, 36.373657, 35.348175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517792, 36.056782, 35.555351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043567, -0.534214, -0.844226,
		0.945478, -0.295047, 0.137910,
		-0.322760, -0.792189, 0.517942,
		38.420963, 35.819126, 35.710735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044411, 35.841949, 35.040920>,  <38.646896, 36.373657, 35.348175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044411, 35.841949, 35.040920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727161, 35.679295, 35.222294>,  <38.536812, 35.581699, 35.331120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727161, 35.679295, 35.222294>,  <39.044411, 35.841949, 35.040920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727161, 35.679295, 35.222294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164081, -0.574297, -0.802035,
		0.586545, -0.710511, 0.388766,
		-0.793122, -0.406641, 0.453433,
		38.489223, 35.557301, 35.358322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234531, 35.069244, 34.999889>,  <39.044411, 35.841949, 35.040920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234531, 35.069244, 34.999889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842400, 35.104080, 35.070740>,  <38.607121, 35.124981, 35.113251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842400, 35.104080, 35.070740>,  <39.234531, 35.069244, 34.999889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842400, 35.104080, 35.070740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197236, -0.466035, -0.862502,
		0.007434, -0.880470, 0.474043,
		-0.980328, 0.087087, 0.177125,
		38.548302, 35.130207, 35.123878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321674, 34.419857, 35.237602>,  <39.234531, 35.069244, 34.999889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321674, 34.419857, 35.237602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161510, 34.108925, 35.043514>,  <39.065414, 33.922367, 34.927063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161510, 34.108925, 35.043514>,  <39.321674, 34.419857, 35.237602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161510, 34.108925, 35.043514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849955, 0.117187, 0.513657,
		-0.342418, 0.618085, -0.707616,
		-0.400407, -0.777327, -0.485218,
		39.041389, 33.875725, 34.897949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716911, 33.815651, 35.706688>,  <39.321674, 34.419857, 35.237602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716911, 33.815651, 35.706688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372013, 33.645023, 35.597458>,  <39.165073, 33.542648, 35.531921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372013, 33.645023, 35.597458>,  <39.716911, 33.815651, 35.706688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372013, 33.645023, 35.597458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295499, 0.861562, -0.412785,
		0.411351, -0.275230, -0.868930,
		-0.862247, -0.426567, -0.273075,
		39.113338, 33.517052, 35.515537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785503, 33.116772, 35.871300>,  <39.716911, 33.815651, 35.706688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785503, 33.116772, 35.871300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757767, 33.233784, 35.489803>,  <39.741123, 33.303993, 35.260906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757767, 33.233784, 35.489803>,  <39.785503, 33.116772, 35.871300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757767, 33.233784, 35.489803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997314, -0.002261, -0.073208,
		-0.023572, -0.956253, -0.291590,
		-0.069346, 0.292532, -0.953738,
		39.736961, 33.321545, 35.203682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320068, 32.533360, 36.114212>,  <39.785503, 33.116772, 35.871300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320068, 32.533360, 36.114212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486366, 32.170082, 36.094852>,  <39.586143, 31.952116, 36.083237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486366, 32.170082, 36.094852>,  <39.320068, 32.533360, 36.114212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486366, 32.170082, 36.094852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048692, -0.075365, 0.995967,
		-0.908177, -0.411711, -0.075554,
		0.415745, -0.908193, -0.048398,
		39.611092, 31.897625, 36.080334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851582, 31.989923, 36.373482>,  <39.320068, 32.533360, 36.114212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851582, 31.989923, 36.373482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232948, 31.873857, 36.406452>,  <39.461769, 31.804218, 36.426235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232948, 31.873857, 36.406452>,  <38.851582, 31.989923, 36.373482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232948, 31.873857, 36.406452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060548, 0.083605, 0.994658,
		-0.295509, -0.953317, 0.062142,
		0.953420, -0.290167, 0.082427,
		39.518974, 31.786808, 36.431179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827625, 31.577982, 36.886398>,  <38.851582, 31.989923, 36.373482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827625, 31.577982, 36.886398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206245, 31.702358, 36.852062>,  <39.433418, 31.776983, 36.831463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206245, 31.702358, 36.852062>,  <38.827625, 31.577982, 36.886398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206245, 31.702358, 36.852062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026633, 0.340531, 0.939856,
		0.321459, -0.887334, 0.330610,
		0.946549, 0.310931, -0.085835,
		39.490208, 31.795639, 36.826309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256096, 31.182791, 37.339985>,  <38.827625, 31.577982, 36.886398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256096, 31.182791, 37.339985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461269, 31.518476, 37.267750>,  <39.584373, 31.719889, 37.224407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461269, 31.518476, 37.267750>,  <39.256096, 31.182791, 37.339985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461269, 31.518476, 37.267750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038152, 0.232455, 0.971859,
		0.857578, -0.491613, 0.151253,
		0.512938, 0.839215, -0.180592,
		39.615150, 31.770241, 37.213573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847561, 31.309919, 37.833088>,  <39.256096, 31.182791, 37.339985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847561, 31.309919, 37.833088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795494, 31.680212, 37.691059>,  <39.764252, 31.902388, 37.605843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795494, 31.680212, 37.691059>,  <39.847561, 31.309919, 37.833088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795494, 31.680212, 37.691059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183904, 0.374452, 0.908826,
		0.974287, 0.053002, -0.218988,
		-0.130170, 0.925730, -0.355076,
		39.756443, 31.957932, 37.584538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461697, 31.784687, 38.011536>,  <39.847561, 31.309919, 37.833088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461697, 31.784687, 38.011536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152302, 32.021576, 37.921207>,  <39.966667, 32.163708, 37.867008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152302, 32.021576, 37.921207>,  <40.461697, 31.784687, 38.011536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152302, 32.021576, 37.921207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088968, 0.454211, 0.886441,
		0.627541, 0.665556, -0.404013,
		-0.773483, 0.592223, -0.225823,
		39.920258, 32.199242, 37.853462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600124, 32.411499, 38.391113>,  <40.461697, 31.784687, 38.011536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600124, 32.411499, 38.391113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228703, 32.522564, 38.292568>,  <40.005852, 32.589203, 38.233440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228703, 32.522564, 38.292568>,  <40.600124, 32.411499, 38.391113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228703, 32.522564, 38.292568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036364, 0.592454, 0.804783,
		0.369419, 0.756241, -0.540027,
		-0.928551, 0.277665, -0.246363,
		39.950138, 32.605862, 38.218658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550686, 33.139454, 38.450737>,  <40.600124, 32.411499, 38.391113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550686, 33.139454, 38.450737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178719, 32.996353, 38.484848>,  <39.955540, 32.910492, 38.505314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178719, 32.996353, 38.484848>,  <40.550686, 33.139454, 38.450737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178719, 32.996353, 38.484848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092064, 0.450921, 0.887803,
		-0.356066, 0.817730, -0.452254,
		-0.929915, -0.357753, 0.085274,
		39.899746, 32.889027, 38.510429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216152, 33.729282, 38.665443>,  <40.550686, 33.139454, 38.450737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216152, 33.729282, 38.665443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945614, 33.441963, 38.730686>,  <39.783291, 33.269573, 38.769833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945614, 33.441963, 38.730686>,  <40.216152, 33.729282, 38.665443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945614, 33.441963, 38.730686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372412, 0.524514, 0.765633,
		-0.635502, 0.457093, -0.622256,
		-0.676348, -0.718297, 0.163103,
		39.742710, 33.226475, 38.779617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505863, 34.033001, 38.578365>,  <40.216152, 33.729282, 38.665443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505863, 34.033001, 38.578365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487534, 33.709366, 38.812729>,  <39.476536, 33.515186, 38.953346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487534, 33.709366, 38.812729>,  <39.505863, 34.033001, 38.578365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487534, 33.709366, 38.812729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252039, 0.576910, 0.776950,
		-0.966632, -0.112070, -0.230355,
		-0.045822, -0.809083, 0.585905,
		39.473785, 33.466640, 38.988499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945007, 34.219193, 38.980114>,  <39.505863, 34.033001, 38.578365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945007, 34.219193, 38.980114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157837, 33.925301, 39.148438>,  <39.285534, 33.748966, 39.249432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157837, 33.925301, 39.148438>,  <38.945007, 34.219193, 38.980114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157837, 33.925301, 39.148438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153087, 0.405325, 0.901264,
		-0.832746, -0.543956, 0.103184,
		0.532071, -0.734727, 0.420805,
		39.317459, 33.704884, 39.274677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680508, 34.023930, 39.621193>,  <38.945007, 34.219193, 38.980114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680508, 34.023930, 39.621193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047165, 33.867290, 39.653229>,  <39.267159, 33.773308, 39.672451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047165, 33.867290, 39.653229>,  <38.680508, 34.023930, 39.621193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047165, 33.867290, 39.653229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084325, 0.385325, 0.918920,
		-0.390703, -0.835571, 0.386228,
		0.916646, -0.391594, 0.080088,
		39.322159, 33.749813, 39.677254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588032, 33.603840, 40.242851>,  <38.680508, 34.023930, 39.621193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588032, 33.603840, 40.242851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975159, 33.685841, 40.184460>,  <39.207436, 33.735043, 40.149426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975159, 33.685841, 40.184460>,  <38.588032, 33.603840, 40.242851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975159, 33.685841, 40.184460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090103, 0.259351, 0.961571,
		0.234977, -0.943777, 0.232533,
		0.967816, 0.204995, -0.145979,
		39.265503, 33.747341, 40.140667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934330, 33.408714, 40.740601>,  <38.588032, 33.603840, 40.242851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934330, 33.408714, 40.740601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683353, 33.689571, 40.605957>,  <37.532768, 33.858086, 40.525169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683353, 33.689571, 40.605957>,  <37.934330, 33.408714, 40.740601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683353, 33.689571, 40.605957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192434, -0.558707, -0.806732,
		-0.754508, -0.441404, 0.485674,
		-0.627444, 0.702146, -0.336608,
		37.495121, 33.900215, 40.504974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333221, 33.059605, 40.607525>,  <37.934330, 33.408714, 40.740601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333221, 33.059605, 40.607525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346706, 33.393280, 40.387348>,  <37.354797, 33.593487, 40.255241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346706, 33.393280, 40.387348>,  <37.333221, 33.059605, 40.607525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346706, 33.393280, 40.387348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340455, -0.508233, -0.791069,
		-0.939656, 0.214072, 0.266870,
		0.033714, 0.834190, -0.550446,
		37.356819, 33.643536, 40.222214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822975, 32.997417, 40.242142>,  <37.333221, 33.059605, 40.607525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822975, 32.997417, 40.242142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027203, 33.263187, 40.023834>,  <37.149738, 33.422649, 39.892849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027203, 33.263187, 40.023834>,  <36.822975, 32.997417, 40.242142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027203, 33.263187, 40.023834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285067, -0.468029, -0.836472,
		-0.811208, 0.582654, -0.049553,
		0.510566, 0.664427, -0.545765,
		37.180374, 33.462517, 39.860104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364216, 33.067635, 39.719791>,  <36.822975, 32.997417, 40.242142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364216, 33.067635, 39.719791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706486, 33.203876, 39.563938>,  <36.911846, 33.285622, 39.470425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706486, 33.203876, 39.563938>,  <36.364216, 33.067635, 39.719791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706486, 33.203876, 39.563938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219325, -0.443267, -0.869143,
		-0.468748, 0.829157, -0.304587,
		0.855670, 0.340606, -0.389636,
		36.963188, 33.306057, 39.447048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239655, 33.242203, 38.973278>,  <36.364216, 33.067635, 39.719791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239655, 33.242203, 38.973278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637234, 33.199295, 38.963848>,  <36.875782, 33.173550, 38.958191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637234, 33.199295, 38.963848>,  <36.239655, 33.242203, 38.973278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637234, 33.199295, 38.963848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085769, -0.624047, -0.776665,
		0.068597, 0.773989, -0.629472,
		0.993951, -0.107266, -0.023577,
		36.935417, 33.167114, 38.956776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450733, 33.284798, 38.260120>,  <36.239655, 33.242203, 38.973278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450733, 33.284798, 38.260120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735390, 33.083019, 38.455711>,  <36.906181, 32.961952, 38.573067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735390, 33.083019, 38.455711>,  <36.450733, 33.284798, 38.260120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735390, 33.083019, 38.455711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014990, -0.706758, -0.707296,
		0.702386, 0.496010, -0.510518,
		0.711639, -0.504447, 0.488982,
		36.948883, 32.931686, 38.602406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896698, 33.014149, 37.775162>,  <36.450733, 33.284798, 38.260120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896698, 33.014149, 37.775162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028912, 32.777412, 38.069229>,  <37.108238, 32.635372, 38.245670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028912, 32.777412, 38.069229>,  <36.896698, 33.014149, 37.775162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028912, 32.777412, 38.069229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116641, -0.798598, -0.590455,
		0.936559, 0.109413, -0.332995,
		0.330533, -0.591837, 0.735172,
		37.128071, 32.599861, 38.289780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305073, 32.507217, 37.428341>,  <36.896698, 33.014149, 37.775162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305073, 32.507217, 37.428341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176804, 32.372421, 37.782425>,  <37.099842, 32.291542, 37.994877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176804, 32.372421, 37.782425>,  <37.305073, 32.507217, 37.428341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176804, 32.372421, 37.782425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377650, -0.811585, -0.445770,
		0.868647, -0.477248, 0.132989,
		-0.320675, -0.336993, 0.885213,
		37.080601, 32.271324, 38.047989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410488, 31.790171, 37.406410>,  <37.305073, 32.507217, 37.428341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410488, 31.790171, 37.406410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178074, 31.815388, 37.730984>,  <37.038628, 31.830517, 37.925728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178074, 31.815388, 37.730984>,  <37.410488, 31.790171, 37.406410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178074, 31.815388, 37.730984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315195, -0.936624, -0.152931,
		0.750368, -0.344618, 0.564080,
		-0.581033, 0.063040, 0.811435,
		37.003765, 31.834299, 37.974415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441101, 31.137890, 37.746387>,  <37.410488, 31.790171, 37.406410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441101, 31.137890, 37.746387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097935, 31.289700, 37.884914>,  <36.892036, 31.380785, 37.968033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097935, 31.289700, 37.884914>,  <37.441101, 31.137890, 37.746387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097935, 31.289700, 37.884914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447214, -0.883450, -0.139697,
		0.252940, -0.274728, 0.927656,
		-0.857917, 0.379526, 0.346322,
		36.840561, 31.403557, 37.988811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194912, 30.650259, 38.284817>,  <37.441101, 31.137890, 37.746387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194912, 30.650259, 38.284817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872177, 30.850891, 38.159958>,  <36.678535, 30.971270, 38.085041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872177, 30.850891, 38.159958>,  <37.194912, 30.650259, 38.284817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872177, 30.850891, 38.159958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468162, -0.865112, -0.180017,
		-0.360333, 0.000891, 0.932823,
		-0.806836, 0.501579, -0.312145,
		36.630127, 31.001366, 38.066315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690731, 30.413982, 38.663895>,  <37.194912, 30.650259, 38.284817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690731, 30.413982, 38.663895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517689, 30.576805, 38.342110>,  <36.413864, 30.674498, 38.149040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517689, 30.576805, 38.342110>,  <36.690731, 30.413982, 38.663895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517689, 30.576805, 38.342110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575863, -0.811303, -0.100844,
		-0.693712, 0.419634, 0.585382,
		-0.432604, 0.407056, -0.804462,
		36.387909, 30.698921, 38.100773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.390511, 34.590973, 43.977383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.290554, 34.959682, 43.858799>,  <37.230579, 35.180908, 43.787651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.290554, 34.959682, 43.858799>,  <37.390511, 34.590973, 43.977383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290554, 34.959682, 43.858799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216077, -0.351537, -0.910896,
		-0.943857, -0.163566, 0.287020,
		-0.249889, 0.921774, -0.296457,
		37.215588, 35.236214, 43.769863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788910, 34.600502, 43.529388>,  <37.390511, 34.590973, 43.977383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788910, 34.600502, 43.529388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.988392, 34.929607, 43.420315>,  <37.108082, 35.127071, 43.354870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.988392, 34.929607, 43.420315>,  <36.788910, 34.600502, 43.529388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988392, 34.929607, 43.420315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184383, -0.206699, -0.960874,
		-0.846934, 0.529471, 0.048621,
		0.498705, 0.822761, -0.272686,
		37.138004, 35.176437, 43.338509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376461, 34.785938, 43.027821>,  <36.788910, 34.600502, 43.529388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376461, 34.785938, 43.027821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728458, 34.968487, 42.975155>,  <36.939655, 35.078014, 42.943558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728458, 34.968487, 42.975155>,  <36.376461, 34.785938, 43.027821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728458, 34.968487, 42.975155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031823, -0.333214, -0.942314,
		-0.473917, 0.825041, -0.307750,
		0.879994, 0.456372, -0.131660,
		36.992458, 35.105400, 42.935658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334465, 35.160923, 42.413609>,  <36.376461, 34.785938, 43.027821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334465, 35.160923, 42.413609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726326, 35.107468, 42.473515>,  <36.961441, 35.075394, 42.509457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726326, 35.107468, 42.473515>,  <36.334465, 35.160923, 42.413609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726326, 35.107468, 42.473515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062764, -0.504771, -0.860969,
		0.190657, 0.852846, -0.486110,
		0.979648, -0.133639, 0.149766,
		37.020222, 35.067375, 42.518444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695492, 35.572403, 41.857861>,  <36.334465, 35.160923, 42.413609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695492, 35.572403, 41.857861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977020, 35.323833, 41.995537>,  <37.145939, 35.174694, 42.078144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977020, 35.323833, 41.995537>,  <36.695492, 35.572403, 41.857861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977020, 35.323833, 41.995537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137240, -0.356445, -0.924182,
		0.696991, 0.697698, -0.165590,
		0.703824, -0.621421, 0.344191,
		37.188168, 35.137405, 42.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215279, 35.598656, 41.403484>,  <36.695492, 35.572403, 41.857861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215279, 35.598656, 41.403484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281757, 35.252533, 41.592636>,  <37.321644, 35.044857, 41.706127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281757, 35.252533, 41.592636>,  <37.215279, 35.598656, 41.403484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281757, 35.252533, 41.592636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116864, -0.458889, -0.880775,
		0.979144, 0.201643, 0.024859,
		0.166195, -0.865310, 0.472883,
		37.331615, 34.992939, 41.734501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943581, 35.305511, 41.096066>,  <37.215279, 35.598656, 41.403484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943581, 35.305511, 41.096066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721340, 35.010876, 41.250336>,  <37.587997, 34.834095, 41.342899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721340, 35.010876, 41.250336>,  <37.943581, 35.305511, 41.096066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721340, 35.010876, 41.250336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103331, -0.521434, -0.847012,
		0.825003, -0.430749, 0.365822,
		-0.555602, -0.736588, 0.385675,
		37.554661, 34.789898, 41.366039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348141, 34.703613, 40.917343>,  <37.943581, 35.305511, 41.096066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348141, 34.703613, 40.917343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.978493, 34.582279, 41.010281>,  <37.756702, 34.509480, 41.066044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.978493, 34.582279, 41.010281>,  <38.348141, 34.703613, 40.917343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978493, 34.582279, 41.010281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004499, -0.599406, -0.800433,
		0.382065, -0.740745, 0.552561,
		-0.924125, -0.303331, 0.232345,
		37.701256, 34.491280, 41.079983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323303, 33.955101, 41.097095>,  <38.348141, 34.703613, 40.917343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323303, 33.955101, 41.097095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969479, 34.072247, 40.951885>,  <37.757183, 34.142536, 40.864758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969479, 34.072247, 40.951885>,  <38.323303, 33.955101, 41.097095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969479, 34.072247, 40.951885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026192, -0.745886, -0.665559,
		-0.465696, -0.598233, 0.652108,
		-0.884557, 0.292868, -0.363025,
		37.704113, 34.160107, 40.842979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919186, 33.512966, 40.904716>,  <38.323303, 33.955101, 41.097095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919186, 33.512966, 40.904716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.195435, 33.727783, 40.710964>,  <39.361183, 33.856674, 40.594711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.195435, 33.727783, 40.710964>,  <38.919186, 33.512966, 40.904716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195435, 33.727783, 40.710964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214516, 0.487504, 0.846358,
		0.690668, -0.688423, 0.221478,
		0.690624, 0.537042, -0.484381,
		39.402622, 33.888897, 40.565651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400169, 33.586304, 41.442329>,  <38.919186, 33.512966, 40.904716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400169, 33.586304, 41.442329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.493359, 33.854427, 41.160503>,  <39.549274, 34.015301, 40.991409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.493359, 33.854427, 41.160503>,  <39.400169, 33.586304, 41.442329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493359, 33.854427, 41.160503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188532, 0.679621, 0.708923,
		0.954032, -0.297995, 0.031962,
		0.232977, 0.670309, -0.704562,
		39.563251, 34.055519, 40.949135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986092, 33.835697, 41.739532>,  <39.400169, 33.586304, 41.442329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986092, 33.835697, 41.739532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855164, 34.120354, 41.490879>,  <39.776608, 34.291145, 41.341686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855164, 34.120354, 41.490879>,  <39.986092, 33.835697, 41.739532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855164, 34.120354, 41.490879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163267, 0.690577, 0.704590,
		0.930702, 0.129133, -0.342226,
		-0.327319, 0.711638, -0.621638,
		39.756969, 34.333843, 41.304386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570564, 34.381443, 41.717518>,  <39.986092, 33.835697, 41.739532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570564, 34.381443, 41.717518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220051, 34.545601, 41.616554>,  <40.009743, 34.644096, 41.555977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220051, 34.545601, 41.616554>,  <40.570564, 34.381443, 41.717518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220051, 34.545601, 41.616554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079108, 0.639331, 0.764851,
		0.475262, 0.650257, -0.592699,
		-0.876281, 0.410392, -0.252409,
		39.957165, 34.668720, 41.540833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671410, 35.072266, 41.860569>,  <40.570564, 34.381443, 41.717518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671410, 35.072266, 41.860569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274593, 35.067486, 41.810425>,  <40.036503, 35.064617, 41.780338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274593, 35.067486, 41.810425>,  <40.671410, 35.072266, 41.860569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274593, 35.067486, 41.810425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099805, 0.681661, 0.724829,
		0.076795, 0.731570, -0.677427,
		-0.992039, -0.011947, -0.125363,
		39.976982, 35.063900, 41.772816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441483, 35.793247, 41.812920>,  <40.671410, 35.072266, 41.860569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441483, 35.793247, 41.812920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124096, 35.568634, 41.906803>,  <39.933662, 35.433868, 41.963135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124096, 35.568634, 41.906803>,  <40.441483, 35.793247, 41.812920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124096, 35.568634, 41.906803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199026, 0.603857, 0.771845,
		-0.575147, 0.565722, -0.590902,
		-0.793470, -0.561529, 0.234713,
		39.886055, 35.400177, 41.977219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872440, 36.205574, 42.056198>,  <40.441483, 35.793247, 41.812920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872440, 36.205574, 42.056198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.787163, 35.844666, 42.206104>,  <39.735996, 35.628120, 42.296047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.787163, 35.844666, 42.206104>,  <39.872440, 36.205574, 42.056198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787163, 35.844666, 42.206104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094727, 0.400866, 0.911226,
		-0.972407, 0.158769, -0.170933,
		-0.213195, -0.902274, 0.374765,
		39.723206, 35.573982, 42.318535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300404, 36.339371, 42.471874>,  <39.872440, 36.205574, 42.056198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300404, 36.339371, 42.471874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.446899, 36.004669, 42.634705>,  <39.534798, 35.803848, 42.732403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.446899, 36.004669, 42.634705>,  <39.300404, 36.339371, 42.471874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446899, 36.004669, 42.634705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003408, 0.438679, 0.898637,
		-0.930513, -0.327732, 0.163514,
		0.366242, -0.836751, 0.407080,
		39.556770, 35.753643, 42.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939190, 36.208691, 43.091728>,  <39.300404, 36.339371, 42.471874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939190, 36.208691, 43.091728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.276028, 36.000801, 43.149380>,  <39.478130, 35.876068, 43.183971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.276028, 36.000801, 43.149380>,  <38.939190, 36.208691, 43.091728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276028, 36.000801, 43.149380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061372, 0.357844, 0.931762,
		-0.535833, -0.775782, 0.333233,
		0.842090, -0.519721, 0.144133,
		39.528656, 35.844887, 43.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967258, 35.974449, 43.824577>,  <38.939190, 36.208691, 43.091728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967258, 35.974449, 43.824577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348015, 35.963875, 43.702457>,  <39.576469, 35.957531, 43.629185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348015, 35.963875, 43.702457>,  <38.967258, 35.974449, 43.824577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348015, 35.963875, 43.702457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272331, 0.529774, 0.803228,
		0.140501, -0.847727, 0.511487,
		0.951890, -0.026439, -0.305296,
		39.633583, 35.955944, 43.610867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390617, 35.849766, 44.436340>,  <38.967258, 35.974449, 43.824577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390617, 35.849766, 44.436340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638893, 36.026810, 44.177467>,  <39.787857, 36.133038, 44.022144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638893, 36.026810, 44.177467>,  <39.390617, 35.849766, 44.436340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638893, 36.026810, 44.177467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429795, 0.498291, 0.752982,
		0.655763, -0.745522, 0.119051,
		0.620687, 0.442610, -0.647182,
		39.825100, 36.159592, 43.983315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042690, 35.928059, 44.841721>,  <39.390617, 35.849766, 44.436340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042690, 35.928059, 44.841721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103001, 36.204113, 44.558601>,  <40.139187, 36.369743, 44.388729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103001, 36.204113, 44.558601>,  <40.042690, 35.928059, 44.841721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103001, 36.204113, 44.558601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351829, 0.631648, 0.690824,
		0.923842, -0.353182, -0.147573,
		0.150773, 0.690133, -0.707803,
		40.148232, 36.411152, 44.346260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787701, 36.241714, 44.865021>,  <40.042690, 35.928059, 44.841721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787701, 36.241714, 44.865021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.548096, 36.509739, 44.689659>,  <40.404335, 36.670555, 44.584442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.548096, 36.509739, 44.689659>,  <40.787701, 36.241714, 44.865021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548096, 36.509739, 44.689659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372656, 0.717875, 0.588034,
		0.708743, 0.188862, -0.679716,
		-0.599008, 0.670065, -0.438408,
		40.368393, 36.710758, 44.558136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210243, 36.815178, 44.726303>,  <40.787701, 36.241714, 44.865021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210243, 36.815178, 44.726303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.844872, 36.966721, 44.666805>,  <40.625648, 37.057644, 44.631107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.844872, 36.966721, 44.666805>,  <41.210243, 36.815178, 44.726303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844872, 36.966721, 44.666805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252779, 0.814483, 0.522226,
		0.318994, 0.439416, -0.839736,
		-0.913425, 0.378854, -0.148740,
		40.570843, 37.080376, 44.622185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.803368, 41.316036, 42.472725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006237, 40.999874, 42.610149>,  <33.127960, 40.810177, 42.692604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006237, 40.999874, 42.610149>,  <32.803368, 41.316036, 42.472725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006237, 40.999874, 42.610149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032888, -0.416099, -0.908724,
		0.861217, 0.449580, -0.237029,
		0.507172, -0.790404, 0.343566,
		33.158390, 40.762753, 42.713219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231636, 41.172894, 41.911102>,  <32.803368, 41.316036, 42.472725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231636, 41.172894, 41.911102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236942, 40.833790, 42.123192>,  <33.240124, 40.630329, 42.250446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236942, 40.833790, 42.123192>,  <33.231636, 41.172894, 41.911102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236942, 40.833790, 42.123192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176406, -0.519965, -0.835773,
		0.984228, 0.104620, 0.142653,
		0.013264, -0.847756, 0.530220,
		33.240921, 40.579464, 42.282257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931221, 40.863361, 41.784428>,  <33.231636, 41.172894, 41.911102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931221, 40.863361, 41.784428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.674580, 40.586357, 41.916348>,  <33.520596, 40.420155, 41.995499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.674580, 40.586357, 41.916348>,  <33.931221, 40.863361, 41.784428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674580, 40.586357, 41.916348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086624, -0.492634, -0.865915,
		0.762127, -0.527008, 0.376065,
		-0.641606, -0.692514, 0.329798,
		33.482098, 40.378605, 42.015285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196331, 40.240524, 41.395290>,  <33.931221, 40.863361, 41.784428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196331, 40.240524, 41.395290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835110, 40.123703, 41.521278>,  <33.618378, 40.053612, 41.596870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835110, 40.123703, 41.521278>,  <34.196331, 40.240524, 41.395290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835110, 40.123703, 41.521278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105228, -0.560507, -0.821437,
		0.416444, -0.774943, 0.475434,
		-0.903051, -0.292053, 0.314965,
		33.564194, 40.036087, 41.615768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190502, 39.459072, 41.411335>,  <34.196331, 40.240524, 41.395290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190502, 39.459072, 41.411335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814655, 39.594620, 41.392185>,  <33.589149, 39.675949, 41.380695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814655, 39.594620, 41.392185>,  <34.190502, 39.459072, 41.411335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814655, 39.594620, 41.392185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218203, -0.700957, -0.679005,
		-0.263649, -0.627558, 0.732571,
		-0.939616, 0.338868, -0.047872,
		33.532772, 39.696281, 41.377823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712772, 38.883205, 41.482613>,  <34.190502, 39.459072, 41.411335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712772, 38.883205, 41.482613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472507, 39.164486, 41.330452>,  <33.328350, 39.333256, 41.239155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472507, 39.164486, 41.330452>,  <33.712772, 38.883205, 41.482613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472507, 39.164486, 41.330452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421898, -0.682950, -0.596306,
		-0.679108, -0.197704, 0.706913,
		-0.600679, 0.703201, -0.380386,
		33.292309, 39.375446, 41.216331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071201, 38.607800, 41.395340>,  <33.712772, 38.883205, 41.482613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071201, 38.607800, 41.395340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086243, 38.892540, 41.114811>,  <33.095268, 39.063385, 40.946495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086243, 38.892540, 41.114811>,  <33.071201, 38.607800, 41.395340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086243, 38.892540, 41.114811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285763, -0.664848, -0.690157,
		-0.957562, 0.226366, 0.178419,
		0.037606, 0.711854, -0.701320,
		33.097523, 39.106094, 40.904415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620575, 38.385479, 40.868164>,  <33.071201, 38.607800, 41.395340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620575, 38.385479, 40.868164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.787601, 38.697971, 40.682552>,  <32.887817, 38.885468, 40.571186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.787601, 38.697971, 40.682552>,  <32.620575, 38.385479, 40.868164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787601, 38.697971, 40.682552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193172, -0.422683, -0.885451,
		-0.887875, 0.459372, -0.025587,
		0.417566, 0.781228, -0.464028,
		32.912872, 38.932339, 40.543343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188560, 38.463791, 40.337460>,  <32.620575, 38.385479, 40.868164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188560, 38.463791, 40.337460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.499691, 38.683662, 40.215588>,  <32.686371, 38.815586, 40.142464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.499691, 38.683662, 40.215588>,  <32.188560, 38.463791, 40.337460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499691, 38.683662, 40.215588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057514, -0.420498, -0.905469,
		-0.625837, 0.721824, -0.295461,
		0.777830, 0.549683, -0.304678,
		32.733040, 38.848568, 40.124184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051136, 38.725368, 39.582367>,  <32.188560, 38.463791, 40.337460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051136, 38.725368, 39.582367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444016, 38.747299, 39.654240>,  <32.679741, 38.760456, 39.697361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444016, 38.747299, 39.654240>,  <32.051136, 38.725368, 39.582367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444016, 38.747299, 39.654240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185123, -0.445050, -0.876162,
		0.031931, 0.893826, -0.447276,
		0.982196, 0.054825, 0.179679,
		32.738674, 38.763748, 39.708145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391132, 38.832458, 39.015545>,  <32.051136, 38.725368, 39.582367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391132, 38.832458, 39.015545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.673355, 38.654701, 39.236347>,  <32.842690, 38.548046, 39.368828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.673355, 38.654701, 39.236347>,  <32.391132, 38.832458, 39.015545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673355, 38.654701, 39.236347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266760, -0.555100, -0.787847,
		0.656532, 0.703120, -0.273106,
		0.705553, -0.444394, 0.552005,
		32.885021, 38.521381, 39.401947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940815, 38.851719, 38.583378>,  <32.391132, 38.832458, 39.015545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940815, 38.851719, 38.583378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038441, 38.565105, 38.844765>,  <33.097015, 38.393139, 39.001595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038441, 38.565105, 38.844765>,  <32.940815, 38.851719, 38.583378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038441, 38.565105, 38.844765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274590, -0.595202, -0.755205,
		0.930071, 0.363756, 0.051482,
		0.244068, -0.716530, 0.653464,
		33.111660, 38.350147, 39.040802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646702, 38.647682, 38.371155>,  <32.940815, 38.851719, 38.583378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646702, 38.647682, 38.371155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496712, 38.351089, 38.593723>,  <33.406715, 38.173134, 38.727264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496712, 38.351089, 38.593723>,  <33.646702, 38.647682, 38.371155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496712, 38.351089, 38.593723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266091, -0.661044, -0.701581,
		0.888025, -0.115019, 0.445177,
		-0.374977, -0.741479, 0.556418,
		33.384220, 38.128647, 38.760647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131832, 38.145279, 38.314213>,  <33.646702, 38.647682, 38.371155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131832, 38.145279, 38.314213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.786060, 37.978558, 38.426674>,  <33.578598, 37.878525, 38.494152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.786060, 37.978558, 38.426674>,  <34.131832, 38.145279, 38.314213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786060, 37.978558, 38.426674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156296, -0.754290, -0.637666,
		0.477849, -0.507272, 0.717172,
		-0.864425, -0.416800, 0.281152,
		33.526733, 37.853519, 38.511021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925095, 38.197216, 38.357914>,  <34.131832, 38.145279, 38.314213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925095, 38.197216, 38.357914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070267, 38.422108, 38.060680>,  <35.157368, 38.557045, 37.882339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070267, 38.422108, 38.060680>,  <34.925095, 38.197216, 38.357914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070267, 38.422108, 38.060680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053967, 0.783440, 0.619119,
		0.930254, -0.264797, 0.253990,
		0.362927, 0.562231, -0.743089,
		35.179146, 38.590778, 37.837753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463440, 38.584000, 38.639633>,  <34.925095, 38.197216, 38.357914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463440, 38.584000, 38.639633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.434010, 38.787975, 38.296810>,  <35.416351, 38.910362, 38.091118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.434010, 38.787975, 38.296810>,  <35.463440, 38.584000, 38.639633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434010, 38.787975, 38.296810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144814, 0.855740, 0.496727,
		0.986720, -0.087567, -0.136807,
		-0.073575, 0.509942, -0.857057,
		35.411938, 38.940956, 38.039692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095497, 38.891376, 38.639782>,  <35.463440, 38.584000, 38.639633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095497, 38.891376, 38.639782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840710, 39.079594, 38.395531>,  <35.687836, 39.192524, 38.248981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840710, 39.079594, 38.395531>,  <36.095497, 38.891376, 38.639782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840710, 39.079594, 38.395531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163782, 0.856625, 0.489255,
		0.753290, 0.211631, -0.622709,
		-0.636969, 0.470539, -0.610625,
		35.649620, 39.220757, 38.212341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462742, 39.553169, 38.377602>,  <36.095497, 38.891376, 38.639782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462742, 39.553169, 38.377602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.068081, 39.617645, 38.368309>,  <35.831284, 39.656330, 38.362732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.068081, 39.617645, 38.368309>,  <36.462742, 39.553169, 38.377602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068081, 39.617645, 38.368309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122144, 0.826794, 0.549083,
		0.107713, 0.538916, -0.835445,
		-0.986650, 0.161188, -0.023231,
		35.772087, 39.666000, 38.361340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423058, 40.290604, 38.175095>,  <36.462742, 39.553169, 38.377602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423058, 40.290604, 38.175095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079193, 40.157635, 38.330261>,  <35.872875, 40.077854, 38.423359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079193, 40.157635, 38.330261>,  <36.423058, 40.290604, 38.175095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079193, 40.157635, 38.330261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087436, 0.843862, 0.529388,
		-0.503327, 0.421177, -0.754501,
		-0.859661, -0.332426, 0.387913,
		35.821297, 40.057907, 38.446636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070866, 40.842041, 38.185127>,  <36.423058, 40.290604, 38.175095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070866, 40.842041, 38.185127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906528, 40.612629, 38.468613>,  <35.807926, 40.474979, 38.638702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906528, 40.612629, 38.468613>,  <36.070866, 40.842041, 38.185127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906528, 40.612629, 38.468613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025665, 0.784312, 0.619836,
		-0.911346, 0.236465, -0.336947,
		-0.410841, -0.573533, 0.708710,
		35.783276, 40.440571, 38.681225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591732, 41.245197, 38.389988>,  <36.070866, 40.842041, 38.185127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591732, 41.245197, 38.389988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634037, 40.971813, 38.678902>,  <35.659420, 40.807781, 38.852249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634037, 40.971813, 38.678902>,  <35.591732, 41.245197, 38.389988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634037, 40.971813, 38.678902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065245, 0.720022, 0.690877,
		-0.992249, -0.120195, 0.031559,
		0.105764, -0.683463, 0.722283,
		35.665768, 40.766773, 38.895588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116730, 41.423279, 38.836102>,  <35.591732, 41.245197, 38.389988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116730, 41.423279, 38.836102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376373, 41.219296, 39.061878>,  <35.532162, 41.096905, 39.197346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376373, 41.219296, 39.061878>,  <35.116730, 41.423279, 38.836102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376373, 41.219296, 39.061878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153642, 0.638828, 0.753852,
		-0.745016, -0.576056, 0.336320,
		0.649112, -0.509958, 0.564444,
		35.571106, 41.066307, 39.231213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757069, 41.218269, 39.412014>,  <35.116730, 41.423279, 38.836102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757069, 41.218269, 39.412014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.138142, 41.194969, 39.531342>,  <35.366787, 41.180988, 39.602940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.138142, 41.194969, 39.531342>,  <34.757069, 41.218269, 39.412014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138142, 41.194969, 39.531342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253910, 0.387022, 0.886422,
		-0.167090, -0.920229, 0.353920,
		0.952686, -0.058249, 0.298323,
		35.423946, 41.177494, 39.620838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796223, 40.869587, 40.120804>,  <34.757069, 41.218269, 39.412014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796223, 40.869587, 40.120804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128952, 41.091156, 40.106693>,  <35.328590, 41.224098, 40.098228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128952, 41.091156, 40.106693>,  <34.796223, 40.869587, 40.120804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128952, 41.091156, 40.106693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110999, 0.228285, 0.967246,
		0.543833, -0.800659, 0.251377,
		0.831820, 0.553923, -0.035277,
		35.378498, 41.257332, 40.096111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169338, 40.632484, 40.699993>,  <34.796223, 40.869587, 40.120804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169338, 40.632484, 40.699993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326527, 40.991283, 40.619038>,  <35.420841, 41.206562, 40.570465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326527, 40.991283, 40.619038>,  <35.169338, 40.632484, 40.699993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326527, 40.991283, 40.619038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028477, 0.208116, 0.977690,
		0.919108, -0.389972, 0.056240,
		0.392976, 0.897001, -0.202387,
		35.444420, 41.260384, 40.558323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716232, 40.780422, 41.129044>,  <35.169338, 40.632484, 40.699993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716232, 40.780422, 41.129044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609196, 41.148102, 41.013477>,  <35.544975, 41.368710, 40.944138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609196, 41.148102, 41.013477>,  <35.716232, 40.780422, 41.129044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609196, 41.148102, 41.013477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079095, 0.319798, 0.944179,
		0.960281, 0.229799, -0.158278,
		-0.267589, 0.919196, -0.288920,
		35.528919, 41.423862, 40.926800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940357, 41.270462, 41.623154>,  <35.716232, 40.780422, 41.129044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940357, 41.270462, 41.623154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703705, 41.550190, 41.462696>,  <35.561714, 41.718029, 41.366421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703705, 41.550190, 41.462696>,  <35.940357, 41.270462, 41.623154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703705, 41.550190, 41.462696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157522, 0.588252, 0.793187,
		0.790671, 0.406085, -0.458187,
		-0.591631, 0.699324, -0.401147,
		35.526215, 41.759987, 41.342354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310051, 41.878242, 41.434837>,  <35.940357, 41.270462, 41.623154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310051, 41.878242, 41.434837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931744, 41.965748, 41.530899>,  <35.704762, 42.018250, 41.588535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931744, 41.965748, 41.530899>,  <36.310051, 41.878242, 41.434837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931744, 41.965748, 41.530899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323267, 0.560777, 0.762251,
		0.032078, 0.798544, -0.601081,
		-0.945764, 0.218761, 0.240154,
		35.648014, 42.031376, 41.602947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899776, 42.164825, 41.574352>,  <36.310051, 41.878242, 41.434837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899776, 42.164825, 41.574352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.273697, 42.112694, 41.706509>,  <37.498051, 42.081413, 41.785805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.273697, 42.112694, 41.706509>,  <36.899776, 42.164825, 41.574352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273697, 42.112694, 41.706509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173464, -0.644214, -0.744915,
		0.309929, 0.753659, -0.579605,
		0.934802, -0.130330, 0.330393,
		37.554138, 42.073593, 41.805626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295811, 42.002647, 41.024658>,  <36.899776, 42.164825, 41.574352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295811, 42.002647, 41.024658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532555, 41.865864, 41.316620>,  <37.674603, 41.783794, 41.491798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532555, 41.865864, 41.316620>,  <37.295811, 42.002647, 41.024658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532555, 41.865864, 41.316620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271212, -0.768261, -0.579844,
		0.759040, 0.541148, -0.361964,
		0.591864, -0.341956, 0.729906,
		37.710114, 41.763279, 41.535591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921059, 41.872032, 40.760914>,  <37.295811, 42.002647, 41.024658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921059, 41.872032, 40.760914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912296, 41.647289, 41.091690>,  <37.907040, 41.512444, 41.290157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912296, 41.647289, 41.091690>,  <37.921059, 41.872032, 40.760914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912296, 41.647289, 41.091690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478992, -0.731926, -0.484613,
		0.877546, 0.385482, 0.285162,
		-0.021908, -0.561861, 0.826942,
		37.905724, 41.478729, 41.339771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507030, 41.532234, 40.767841>,  <37.921059, 41.872032, 40.760914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507030, 41.532234, 40.767841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296555, 41.311104, 41.026302>,  <38.170269, 41.178425, 41.181377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296555, 41.311104, 41.026302>,  <38.507030, 41.532234, 40.767841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296555, 41.311104, 41.026302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164189, -0.811599, -0.560668,
		0.834369, -0.188924, 0.517819,
		-0.526185, -0.552824, 0.646154,
		38.138699, 41.145256, 41.220150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907696, 40.963879, 40.965271>,  <38.507030, 41.532234, 40.767841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907696, 40.963879, 40.965271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.529495, 40.853374, 41.034206>,  <38.302574, 40.787071, 41.075565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.529495, 40.853374, 41.034206>,  <38.907696, 40.963879, 40.965271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529495, 40.853374, 41.034206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159917, -0.855036, -0.493294,
		0.283633, -0.438852, 0.852620,
		-0.945505, -0.276263, 0.172337,
		38.245842, 40.770496, 41.085907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055336, 40.303970, 41.074852>,  <38.907696, 40.963879, 40.965271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055336, 40.303970, 41.074852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.656429, 40.308811, 41.045719>,  <38.417084, 40.311718, 41.028240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.656429, 40.308811, 41.045719>,  <39.055336, 40.303970, 41.074852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656429, 40.308811, 41.045719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032756, -0.811533, -0.583388,
		-0.066167, -0.584182, 0.808922,
		-0.997271, 0.012104, -0.072832,
		38.357246, 40.312443, 41.023869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704731, 39.697292, 41.417946>,  <39.055336, 40.303970, 41.074852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704731, 39.697292, 41.417946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.437084, 39.824482, 41.149269>,  <38.276497, 39.900795, 40.988064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.437084, 39.824482, 41.149269>,  <38.704731, 39.697292, 41.417946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437084, 39.824482, 41.149269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236869, -0.765450, -0.598314,
		-0.704395, -0.559447, 0.436861,
		-0.669120, 0.317971, -0.671694,
		38.236347, 39.919872, 40.947762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402782, 39.102371, 41.212543>,  <38.704731, 39.697292, 41.417946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402782, 39.102371, 41.212543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346916, 39.376133, 40.926304>,  <38.313396, 39.540390, 40.754559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346916, 39.376133, 40.926304>,  <38.402782, 39.102371, 41.212543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346916, 39.376133, 40.926304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092330, -0.710535, -0.697577,
		-0.985885, -0.163497, 0.036045,
		-0.139663, 0.684403, -0.715602,
		38.305016, 39.581455, 40.711624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902508, 38.847050, 40.783371>,  <38.402782, 39.102371, 41.212543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902508, 38.847050, 40.783371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.121658, 39.101170, 40.565666>,  <38.253147, 39.253643, 40.435043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.121658, 39.101170, 40.565666>,  <37.902508, 38.847050, 40.783371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121658, 39.101170, 40.565666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287671, -0.753999, -0.590534,
		-0.785541, 0.166971, -0.595857,
		0.547878, 0.635300, -0.544265,
		38.286022, 39.291759, 40.402386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763527, 38.686596, 40.157780>,  <37.902508, 38.847050, 40.783371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763527, 38.686596, 40.157780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081627, 38.908772, 40.060566>,  <38.272488, 39.042076, 40.002235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081627, 38.908772, 40.060566>,  <37.763527, 38.686596, 40.157780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081627, 38.908772, 40.060566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213809, -0.632044, -0.744853,
		-0.567328, 0.540382, -0.621391,
		0.795251, 0.555435, -0.243037,
		38.320202, 39.075401, 39.987656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718681, 38.892746, 39.459068>,  <37.763527, 38.686596, 40.157780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718681, 38.892746, 39.459068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105522, 38.864815, 39.556919>,  <38.337627, 38.848057, 39.615627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105522, 38.864815, 39.556919>,  <37.718681, 38.892746, 39.459068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105522, 38.864815, 39.556919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171341, -0.531983, -0.829238,
		0.188043, 0.843871, -0.502516,
		0.967100, -0.069831, 0.244625,
		38.395653, 38.843864, 39.630306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055988, 38.967957, 38.874432>,  <37.718681, 38.892746, 39.459068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055988, 38.967957, 38.874432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345291, 38.830009, 39.113750>,  <38.518875, 38.747242, 39.257343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345291, 38.830009, 39.113750>,  <38.055988, 38.967957, 38.874432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345291, 38.830009, 39.113750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438537, -0.439902, -0.783691,
		0.533462, 0.829189, -0.166927,
		0.723259, -0.344866, 0.598301,
		38.562267, 38.726551, 39.293240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683376, 39.249046, 38.611649>,  <38.055988, 38.967957, 38.874432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683376, 39.249046, 38.611649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731491, 38.903378, 38.807091>,  <38.760361, 38.695976, 38.924358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731491, 38.903378, 38.807091>,  <38.683376, 39.249046, 38.611649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731491, 38.903378, 38.807091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293530, -0.439214, -0.849077,
		0.948351, 0.245555, 0.200828,
		0.120289, -0.864172, 0.488607,
		38.767578, 38.644127, 38.953674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019184, 38.783752, 38.068390>,  <38.683376, 39.249046, 38.611649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019184, 38.783752, 38.068390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944332, 38.504299, 38.344620>,  <38.899422, 38.336628, 38.510357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944332, 38.504299, 38.344620>,  <39.019184, 38.783752, 38.068390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944332, 38.504299, 38.344620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470815, -0.680777, -0.561138,
		0.862157, 0.220128, 0.456320,
		-0.187130, -0.698632, 0.690576,
		38.888191, 38.294708, 38.551792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.225380, 34.032845, 27.719521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.914385, 34.225861, 27.880848>,  <25.727789, 34.341671, 27.977644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.914385, 34.225861, 27.880848>,  <26.225380, 34.032845, 27.719521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914385, 34.225861, 27.880848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432308, -0.055698, 0.900004,
		0.456755, 0.874100, -0.165302,
		-0.777487, 0.482543, 0.403321,
		25.681139, 34.370625, 28.001844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430529, 34.610912, 28.203341>,  <26.225380, 34.032845, 27.719521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430529, 34.610912, 28.203341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.076984, 34.449650, 28.298210>,  <25.864857, 34.352890, 28.355131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.076984, 34.449650, 28.298210>,  <26.430529, 34.610912, 28.203341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076984, 34.449650, 28.298210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282299, -0.055481, 0.957721,
		-0.372955, 0.913447, 0.162848,
		-0.883862, -0.403158, 0.237173,
		25.811827, 34.328701, 28.369362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428518, 34.789093, 28.862444>,  <26.430529, 34.610912, 28.203341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428518, 34.789093, 28.862444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.110680, 34.546268, 28.858608>,  <25.919977, 34.400574, 28.856306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.110680, 34.546268, 28.858608>,  <26.428518, 34.789093, 28.862444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110680, 34.546268, 28.858608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105048, -0.153021, 0.982624,
		-0.597981, 0.779782, 0.185361,
		-0.794597, -0.607062, -0.009589,
		25.872301, 34.364151, 28.855732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867743, 35.006138, 29.331198>,  <26.428518, 34.789093, 28.862444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867743, 35.006138, 29.331198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.835205, 34.609592, 29.290060>,  <25.815681, 34.371666, 29.265377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.835205, 34.609592, 29.290060>,  <25.867743, 35.006138, 29.331198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835205, 34.609592, 29.290060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181011, -0.116164, 0.976597,
		-0.980111, 0.060825, 0.188897,
		-0.081345, -0.991366, -0.102844,
		25.810802, 34.312183, 29.259207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307766, 34.866314, 29.833538>,  <25.867743, 35.006138, 29.331198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307766, 34.866314, 29.833538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.502689, 34.527447, 29.748833>,  <25.619642, 34.324127, 29.698009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.502689, 34.527447, 29.748833>,  <25.307766, 34.866314, 29.833538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502689, 34.527447, 29.748833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016594, -0.233478, 0.972221,
		-0.873073, -0.477283, -0.099718,
		0.487306, -0.847165, -0.211763,
		25.648882, 34.273296, 29.685305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991268, 34.265659, 30.220808>,  <25.307766, 34.866314, 29.833538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991268, 34.265659, 30.220808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.361372, 34.140770, 30.134640>,  <25.583435, 34.065834, 30.082939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.361372, 34.140770, 30.134640>,  <24.991268, 34.265659, 30.220808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361372, 34.140770, 30.134640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153076, -0.212278, 0.965145,
		-0.347074, -0.925987, -0.148618,
		0.925261, -0.312227, -0.215422,
		25.638950, 34.047104, 30.070013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079231, 33.806419, 30.777987>,  <24.991268, 34.265659, 30.220808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079231, 33.806419, 30.777987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.452421, 33.864258, 30.646141>,  <25.676336, 33.898960, 30.567034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.452421, 33.864258, 30.646141>,  <25.079231, 33.806419, 30.777987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452421, 33.864258, 30.646141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346217, -0.110092, 0.931673,
		0.098427, -0.983347, -0.152775,
		0.932977, 0.144595, -0.329615,
		25.732315, 33.907635, 30.547256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446133, 33.279522, 31.018208>,  <25.079231, 33.806419, 30.777987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446133, 33.279522, 31.018208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.718424, 33.562950, 30.943869>,  <25.881798, 33.733006, 30.899265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.718424, 33.562950, 30.943869>,  <25.446133, 33.279522, 31.018208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718424, 33.562950, 30.943869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461498, -0.217801, 0.859990,
		0.568884, -0.671188, -0.475266,
		0.680728, 0.708569, -0.185848,
		25.922642, 33.775520, 30.888115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075724, 32.999596, 31.302990>,  <25.446133, 33.279522, 31.018208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075724, 32.999596, 31.302990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199541, 33.375927, 31.247810>,  <26.273830, 33.601727, 31.214703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199541, 33.375927, 31.247810>,  <26.075724, 32.999596, 31.302990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199541, 33.375927, 31.247810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459217, -0.020872, 0.888079,
		0.832649, -0.338246, -0.438504,
		0.309541, 0.940826, -0.137949,
		26.292404, 33.658176, 31.206425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820879, 33.137951, 31.378246>,  <26.075724, 32.999596, 31.302990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820879, 33.137951, 31.378246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693771, 33.507507, 31.463530>,  <26.617506, 33.729240, 31.514700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693771, 33.507507, 31.463530>,  <26.820879, 33.137951, 31.378246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693771, 33.507507, 31.463530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610339, 0.027230, 0.791672,
		0.725609, 0.381697, -0.572537,
		-0.317769, 0.923886, 0.213207,
		26.598440, 33.784672, 31.527491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421263, 33.587425, 31.637774>,  <26.820879, 33.137951, 31.378246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421263, 33.587425, 31.637774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.098339, 33.790749, 31.757687>,  <26.904585, 33.912743, 31.829636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.098339, 33.790749, 31.757687>,  <27.421263, 33.587425, 31.637774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098339, 33.790749, 31.757687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434270, 0.167758, 0.885024,
		0.399577, 0.844675, -0.356177,
		-0.807309, 0.508312, 0.299785,
		26.856146, 33.943241, 31.847622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698469, 34.091782, 32.000210>,  <27.421263, 33.587425, 31.637774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698469, 34.091782, 32.000210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.319363, 34.069530, 32.125843>,  <27.091900, 34.056179, 32.201221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.319363, 34.069530, 32.125843>,  <27.698469, 34.091782, 32.000210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319363, 34.069530, 32.125843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306787, 0.110551, 0.945336,
		-0.087307, 0.992312, -0.087711,
		-0.947765, -0.055625, 0.314080,
		27.035032, 34.052841, 32.220066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500084, 34.673691, 32.434082>,  <27.698469, 34.091782, 32.000210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500084, 34.673691, 32.434082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.264431, 34.369484, 32.543285>,  <27.123039, 34.186958, 32.608807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.264431, 34.369484, 32.543285>,  <27.500084, 34.673691, 32.434082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264431, 34.369484, 32.543285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224404, 0.170591, 0.959448,
		-0.776251, 0.626507, 0.070162,
		-0.589132, -0.760518, 0.273012,
		27.087690, 34.141327, 32.625191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974804, 34.887165, 33.041344>,  <27.500084, 34.673691, 32.434082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974804, 34.887165, 33.041344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996500, 34.488445, 33.064827>,  <27.009518, 34.249214, 33.078915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996500, 34.488445, 33.064827>,  <26.974804, 34.887165, 33.041344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996500, 34.488445, 33.064827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004165, 0.059018, 0.998248,
		-0.998519, -0.053902, 0.007353,
		0.054241, -0.996801, 0.058706,
		27.012772, 34.189404, 33.082439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480320, 34.731651, 33.576004>,  <26.974804, 34.887165, 33.041344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480320, 34.731651, 33.576004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712513, 34.406784, 33.552593>,  <26.851830, 34.211864, 33.538548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712513, 34.406784, 33.552593>,  <26.480320, 34.731651, 33.576004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712513, 34.406784, 33.552593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053581, -0.109814, 0.992507,
		-0.812509, -0.572996, -0.107261,
		0.580481, -0.812168, -0.058523,
		26.886658, 34.163136, 33.535038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252588, 34.272633, 34.125706>,  <26.480320, 34.731651, 33.576004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252588, 34.272633, 34.125706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618256, 34.136906, 34.037018>,  <26.837656, 34.055470, 33.983807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618256, 34.136906, 34.037018>,  <26.252588, 34.272633, 34.125706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618256, 34.136906, 34.037018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010616, -0.526771, 0.849941,
		-0.405192, -0.779344, -0.477956,
		0.914170, -0.339316, -0.221717,
		26.892506, 34.035110, 33.970501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285917, 33.560978, 34.317532>,  <26.252588, 34.272633, 34.125706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285917, 33.560978, 34.317532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.677786, 33.637600, 34.293713>,  <26.912907, 33.683575, 34.279423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.677786, 33.637600, 34.293713>,  <26.285917, 33.560978, 34.317532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677786, 33.637600, 34.293713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143069, -0.459133, 0.876772,
		0.140612, -0.867469, -0.477206,
		0.979673, 0.191557, -0.059548,
		26.971687, 33.695068, 34.275848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738844, 32.931496, 34.528057>,  <26.285917, 33.560978, 34.317532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738844, 32.931496, 34.528057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001230, 33.228909, 34.580009>,  <27.158663, 33.407356, 34.611183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001230, 33.228909, 34.580009>,  <26.738844, 32.931496, 34.528057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001230, 33.228909, 34.580009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203627, -0.340025, 0.918106,
		0.726803, -0.575800, -0.374448,
		0.655967, 0.743530, 0.129883,
		27.198021, 33.451969, 34.618973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339815, 32.606781, 34.926678>,  <26.738844, 32.931496, 34.528057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339815, 32.606781, 34.926678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358606, 32.997295, 35.011208>,  <27.369881, 33.231606, 35.061924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358606, 32.997295, 35.011208>,  <27.339815, 32.606781, 34.926678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358606, 32.997295, 35.011208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318968, -0.215141, 0.923024,
		0.946600, 0.024043, -0.321511,
		0.046978, 0.976287, 0.211321,
		27.372700, 33.290180, 35.074604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939409, 32.210030, 34.831696>,  <27.339815, 32.606781, 34.926678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939409, 32.210030, 34.831696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268402, 32.022091, 34.703468>,  <28.465797, 31.909328, 34.626530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268402, 32.022091, 34.703468>,  <27.939409, 32.210030, 34.831696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268402, 32.022091, 34.703468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319585, 0.084488, -0.943783,
		0.470518, 0.878696, -0.080666,
		0.822483, -0.469847, -0.320571,
		28.515146, 31.881138, 34.607296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119511, 32.590595, 34.282967>,  <27.939409, 32.210030, 34.831696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119511, 32.590595, 34.282967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296671, 32.238144, 34.216686>,  <28.402967, 32.026672, 34.176918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296671, 32.238144, 34.216686>,  <28.119511, 32.590595, 34.282967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296671, 32.238144, 34.216686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278425, 0.040511, -0.959603,
		0.852244, 0.471144, -0.227385,
		0.442900, -0.881126, -0.165704,
		28.429541, 31.973806, 34.166977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456045, 32.714638, 33.693478>,  <28.119511, 32.590595, 34.282967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456045, 32.714638, 33.693478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438797, 32.316410, 33.726925>,  <28.428448, 32.077473, 33.746994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438797, 32.316410, 33.726925>,  <28.456045, 32.714638, 33.693478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438797, 32.316410, 33.726925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283441, -0.068065, -0.956571,
		0.958020, -0.064946, -0.279249,
		-0.043119, -0.995565, 0.083616,
		28.425861, 32.017742, 33.752010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651680, 32.482197, 33.101498>,  <28.456045, 32.714638, 33.693478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651680, 32.482197, 33.101498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.490765, 32.140991, 33.234486>,  <28.394215, 31.936268, 33.314278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.490765, 32.140991, 33.234486>,  <28.651680, 32.482197, 33.101498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490765, 32.140991, 33.234486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177672, -0.283506, -0.942368,
		0.898107, -0.438175, -0.037504,
		-0.402290, -0.853010, 0.332470,
		28.370077, 31.885088, 33.334229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014076, 31.877356, 32.731102>,  <28.651680, 32.482197, 33.101498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014076, 31.877356, 32.731102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.653673, 31.763149, 32.861744>,  <28.437431, 31.694626, 32.940128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.653673, 31.763149, 32.861744>,  <29.014076, 31.877356, 32.731102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653673, 31.763149, 32.861744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188386, -0.420659, -0.887444,
		0.390767, -0.861120, 0.325229,
		-0.901006, -0.285515, 0.326603,
		28.383371, 31.677494, 32.959724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931751, 31.400677, 32.318192>,  <29.014076, 31.877356, 32.731102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931751, 31.400677, 32.318192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567373, 31.491776, 32.455780>,  <28.348747, 31.546434, 32.538334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567373, 31.491776, 32.455780>,  <28.931751, 31.400677, 32.318192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567373, 31.491776, 32.455780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384010, -0.163499, -0.908738,
		-0.150673, -0.959908, 0.236376,
		-0.910952, 0.227693, 0.343980,
		28.294090, 31.560099, 32.558971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492933, 30.807331, 32.251457>,  <28.931751, 31.400677, 32.318192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492933, 30.807331, 32.251457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233624, 31.108528, 32.296608>,  <28.078037, 31.289248, 32.323696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233624, 31.108528, 32.296608>,  <28.492933, 30.807331, 32.251457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233624, 31.108528, 32.296608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449356, -0.258685, -0.855080,
		-0.614671, -0.605046, 0.506061,
		-0.648274, 0.752995, 0.112875,
		28.039141, 31.334427, 32.330471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928257, 30.469696, 32.279655>,  <28.492933, 30.807331, 32.251457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928257, 30.469696, 32.279655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831985, 30.842358, 32.170776>,  <27.774221, 31.065954, 32.105450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831985, 30.842358, 32.170776>,  <27.928257, 30.469696, 32.279655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831985, 30.842358, 32.170776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628799, -0.363300, -0.687477,
		-0.739382, 0.005697, 0.673263,
		-0.240680, 0.931655, -0.272199,
		27.759781, 31.121855, 32.089115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219492, 30.426222, 32.107815>,  <27.928257, 30.469696, 32.279655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219492, 30.426222, 32.107815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348261, 30.768845, 31.946482>,  <27.425522, 30.974419, 31.849682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348261, 30.768845, 31.946482>,  <27.219492, 30.426222, 32.107815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348261, 30.768845, 31.946482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501446, -0.207092, -0.840038,
		-0.803067, 0.472677, 0.362849,
		0.321924, 0.856557, -0.403331,
		27.444838, 31.025812, 31.825483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655775, 30.674280, 31.706190>,  <27.219492, 30.426222, 32.107815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655775, 30.674280, 31.706190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965208, 30.880053, 31.558174>,  <27.150867, 31.003515, 31.469364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965208, 30.880053, 31.558174>,  <26.655775, 30.674280, 31.706190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965208, 30.880053, 31.558174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336527, -0.161296, -0.927757,
		-0.536952, 0.842226, 0.048343,
		0.773584, 0.514430, -0.370040,
		27.197283, 31.034382, 31.447163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398811, 30.957438, 31.211128>,  <26.655775, 30.674280, 31.706190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398811, 30.957438, 31.211128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788465, 30.953268, 31.120842>,  <27.022259, 30.950768, 31.066669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788465, 30.953268, 31.120842>,  <26.398811, 30.957438, 31.211128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788465, 30.953268, 31.120842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223563, -0.189527, -0.956085,
		-0.032814, 0.981820, -0.186955,
		0.974137, -0.010423, -0.225718,
		27.080708, 30.950142, 31.053127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491175, 31.561417, 30.678040>,  <26.398811, 30.957438, 31.211128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491175, 31.561417, 30.678040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795612, 31.305546, 30.635046>,  <26.978275, 31.152023, 30.609249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795612, 31.305546, 30.635046>,  <26.491175, 31.561417, 30.678040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795612, 31.305546, 30.635046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242304, -0.126669, -0.961896,
		0.601686, 0.758137, -0.251402,
		0.761093, -0.639675, -0.107484,
		27.023941, 31.113644, 30.602800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834572, 31.834482, 30.085808>,  <26.491175, 31.561417, 30.678040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834572, 31.834482, 30.085808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.936956, 31.450788, 30.133736>,  <26.998388, 31.220573, 30.162493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.936956, 31.450788, 30.133736>,  <26.834572, 31.834482, 30.085808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936956, 31.450788, 30.133736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060356, -0.139565, -0.988372,
		0.964801, 0.245756, -0.093619,
		0.255964, -0.959232, 0.119819,
		27.013746, 31.163019, 30.169682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342342, 31.681982, 29.685848>,  <26.834572, 31.834482, 30.085808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342342, 31.681982, 29.685848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198229, 31.312307, 29.736568>,  <27.111761, 31.090504, 29.767000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198229, 31.312307, 29.736568>,  <27.342342, 31.681982, 29.685848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198229, 31.312307, 29.736568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036232, -0.149688, -0.988069,
		0.932139, -0.351391, 0.087416,
		-0.360284, -0.924185, 0.126798,
		27.090143, 31.035051, 29.774609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696877, 31.364922, 29.229851>,  <27.342342, 31.681982, 29.685848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696877, 31.364922, 29.229851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402212, 31.103083, 29.297771>,  <27.225412, 30.945980, 29.338524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402212, 31.103083, 29.297771>,  <27.696877, 31.364922, 29.229851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402212, 31.103083, 29.297771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110269, -0.131457, -0.985170,
		0.667211, -0.744461, 0.024658,
		-0.736662, -0.654597, 0.169800,
		27.181213, 30.906704, 29.348711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879364, 30.957132, 28.683767>,  <27.696877, 31.364922, 29.229851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879364, 30.957132, 28.683767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503376, 30.894754, 28.805183>,  <27.277782, 30.857328, 28.878033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503376, 30.894754, 28.805183>,  <27.879364, 30.957132, 28.683767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503376, 30.894754, 28.805183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317388, 0.072695, -0.945505,
		0.125385, -0.985087, -0.117827,
		-0.939970, -0.155949, 0.303540,
		27.221384, 30.847971, 28.896246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616735, 30.471214, 28.231842>,  <27.879364, 30.957132, 28.683767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616735, 30.471214, 28.231842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290806, 30.659859, 28.366686>,  <27.095247, 30.773045, 28.447592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290806, 30.659859, 28.366686>,  <27.616735, 30.471214, 28.231842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290806, 30.659859, 28.366686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320323, 0.118391, -0.939881,
		-0.483168, -0.873824, 0.054599,
		-0.814826, 0.471610, 0.337109,
		27.046358, 30.801342, 28.467819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166594, 30.256847, 27.825041>,  <27.616735, 30.471214, 28.231842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166594, 30.256847, 27.825041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.983294, 30.574795, 27.984133>,  <26.873314, 30.765564, 28.079588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.983294, 30.574795, 27.984133>,  <27.166594, 30.256847, 27.825041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983294, 30.574795, 27.984133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472052, 0.161507, -0.866650,
		-0.753110, -0.584891, 0.301209,
		-0.458248, 0.794869, 0.397732,
		26.845819, 30.813255, 28.103453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446371, 30.159058, 27.714415>,  <27.166594, 30.256847, 27.825041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446371, 30.159058, 27.714415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.477251, 30.551950, 27.782839>,  <26.495779, 30.787685, 27.823893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.477251, 30.551950, 27.782839>,  <26.446371, 30.159058, 27.714415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477251, 30.551950, 27.782839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534997, 0.185590, -0.824218,
		-0.841319, -0.027885, 0.539819,
		0.077202, 0.982231, 0.171059,
		26.500412, 30.846621, 27.834156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721783, 30.543974, 27.745646>,  <26.446371, 30.159058, 27.714415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721783, 30.543974, 27.745646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.961315, 30.857613, 27.680412>,  <26.105034, 31.045795, 27.641272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.961315, 30.857613, 27.680412>,  <25.721783, 30.543974, 27.745646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961315, 30.857613, 27.680412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588488, 0.292686, -0.753669,
		-0.543216, 0.547293, 0.636700,
		0.598831, 0.784095, -0.163083,
		26.140965, 31.092842, 27.631487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287315, 31.228981, 27.732624>,  <25.721783, 30.543974, 27.745646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287315, 31.228981, 27.732624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.625067, 31.320379, 27.538794>,  <25.827717, 31.375217, 27.422495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.625067, 31.320379, 27.538794>,  <25.287315, 31.228981, 27.732624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625067, 31.320379, 27.538794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526062, 0.182406, -0.830654,
		-0.101411, 0.956304, 0.274223,
		0.844378, 0.228496, -0.484577,
		25.878380, 31.388927, 27.393421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136747, 31.896238, 27.476257>,  <25.287315, 31.228981, 27.732624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136747, 31.896238, 27.476257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.455975, 31.791918, 27.258976>,  <25.647511, 31.729326, 27.128607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.455975, 31.791918, 27.258976>,  <25.136747, 31.896238, 27.476257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455975, 31.791918, 27.258976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489058, 0.246280, -0.836761,
		0.352007, 0.933450, 0.069002,
		0.798069, -0.260800, -0.543204,
		25.695395, 31.713678, 27.096014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394276, 32.515133, 27.103779>,  <25.136747, 31.896238, 27.476257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394276, 32.515133, 27.103779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.511683, 32.185886, 26.909325>,  <25.582127, 31.988338, 26.792652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.511683, 32.185886, 26.909325>,  <25.394276, 32.515133, 27.103779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511683, 32.185886, 26.909325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361843, 0.375033, -0.853475,
		0.884826, 0.426413, -0.187761,
		0.293517, -0.823117, -0.486134,
		25.599737, 31.938951, 26.763485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.297329, 37.612217, 44.413029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.939686, 37.562191, 44.585045>,  <40.725101, 37.532177, 44.688255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.939686, 37.562191, 44.585045>,  <41.297329, 37.612217, 44.413029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939686, 37.562191, 44.585045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000717, 0.960615, 0.277880,
		-0.447853, 0.248146, -0.858982,
		-0.894107, -0.125065, 0.430037,
		40.671455, 37.524670, 44.714054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853046, 38.125156, 44.062828>,  <41.297329, 37.612217, 44.413029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853046, 38.125156, 44.062828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.709099, 38.012444, 44.418602>,  <40.622730, 37.944817, 44.632065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.709099, 38.012444, 44.418602>,  <40.853046, 38.125156, 44.062828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709099, 38.012444, 44.418602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158143, 0.921087, 0.355794,
		-0.919502, 0.268697, -0.286910,
		-0.359870, -0.281780, 0.889434,
		40.601139, 37.927910, 44.685432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346203, 38.542259, 44.202541>,  <40.853046, 38.125156, 44.062828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346203, 38.542259, 44.202541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.361668, 38.425926, 44.584938>,  <40.370945, 38.356125, 44.814377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.361668, 38.425926, 44.584938>,  <40.346203, 38.542259, 44.202541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361668, 38.425926, 44.584938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215748, 0.931711, 0.292176,
		-0.975684, -0.217549, -0.026726,
		0.038661, -0.290837, 0.955991,
		40.373264, 38.338676, 44.871735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763149, 38.921257, 44.551369>,  <40.346203, 38.542259, 44.202541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763149, 38.921257, 44.551369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015163, 38.794006, 44.834736>,  <40.166370, 38.717655, 45.004757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015163, 38.794006, 44.834736>,  <39.763149, 38.921257, 44.551369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015163, 38.794006, 44.834736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228585, 0.795851, 0.560687,
		-0.742163, -0.515185, 0.428694,
		0.630034, -0.318129, 0.708415,
		40.204174, 38.698566, 45.047260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433395, 39.043304, 45.201809>,  <39.763149, 38.921257, 44.551369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433395, 39.043304, 45.201809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823555, 39.017864, 45.286240>,  <40.057652, 39.002602, 45.336899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823555, 39.017864, 45.286240>,  <39.433395, 39.043304, 45.201809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823555, 39.017864, 45.286240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106529, 0.702276, 0.703890,
		-0.193001, -0.709058, 0.678223,
		0.975399, -0.063601, 0.211075,
		40.116173, 38.998783, 45.349564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445469, 39.101395, 45.858337>,  <39.433395, 39.043304, 45.201809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445469, 39.101395, 45.858337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.826038, 39.192467, 45.775436>,  <40.054379, 39.247108, 45.725697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.826038, 39.192467, 45.775436>,  <39.445469, 39.101395, 45.858337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826038, 39.192467, 45.775436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009459, 0.694456, 0.719473,
		0.307741, -0.682562, 0.662876,
		0.951423, 0.227681, -0.207256,
		40.111465, 39.260773, 45.713261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681705, 39.269283, 46.548172>,  <39.445469, 39.101395, 45.858337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681705, 39.269283, 46.548172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976101, 39.434193, 46.333378>,  <40.152737, 39.533138, 46.204502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976101, 39.434193, 46.333378>,  <39.681705, 39.269283, 46.548172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976101, 39.434193, 46.333378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125699, 0.696181, 0.706775,
		0.665229, -0.587673, 0.460554,
		0.735983, 0.412276, -0.536990,
		40.196896, 39.557877, 46.172283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283585, 39.330189, 46.994240>,  <39.681705, 39.269283, 46.548172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283585, 39.330189, 46.994240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.324802, 39.609123, 46.710522>,  <40.349533, 39.776485, 46.540291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.324802, 39.609123, 46.710522>,  <40.283585, 39.330189, 46.994240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324802, 39.609123, 46.710522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217779, 0.679975, 0.700147,
		0.970543, -0.226617, -0.081797,
		0.103045, 0.697337, -0.709298,
		40.355717, 39.818325, 46.497734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878098, 39.703606, 47.274689>,  <40.283585, 39.330189, 46.994240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878098, 39.703606, 47.274689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.727329, 39.958809, 47.006104>,  <40.636868, 40.111931, 46.844952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.727329, 39.958809, 47.006104>,  <40.878098, 39.703606, 47.274689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727329, 39.958809, 47.006104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334579, 0.769772, 0.543606,
		0.863704, -0.019760, -0.503612,
		-0.376925, 0.638013, -0.671467,
		40.614250, 40.150211, 46.804665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385426, 40.227940, 47.098454>,  <40.878098, 39.703606, 47.274689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385426, 40.227940, 47.098454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.032913, 40.386269, 46.995174>,  <40.821407, 40.481266, 46.933208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.032913, 40.386269, 46.995174>,  <41.385426, 40.227940, 47.098454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032913, 40.386269, 46.995174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133627, 0.732753, 0.667246,
		0.453308, 0.553529, -0.698654,
		-0.881281, 0.395827, -0.258196,
		40.768528, 40.505016, 46.917717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552208, 40.956863, 47.157383>,  <41.385426, 40.227940, 47.098454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552208, 40.956863, 47.157383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.153736, 40.936710, 47.128872>,  <40.914654, 40.924618, 47.111767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.153736, 40.936710, 47.128872>,  <41.552208, 40.956863, 47.157383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153736, 40.936710, 47.128872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082139, 0.817374, 0.570222,
		0.029530, 0.573900, -0.818393,
		-0.996183, -0.050383, -0.071276,
		40.854881, 40.921597, 47.107491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272953, 41.697926, 46.875755>,  <41.552208, 40.956863, 47.157383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272953, 41.697926, 46.875755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.001644, 41.500206, 47.093239>,  <40.838860, 41.381577, 47.223728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.001644, 41.500206, 47.093239>,  <41.272953, 41.697926, 46.875755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001644, 41.500206, 47.093239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113877, 0.801699, 0.586780,
		-0.725935, 0.336079, -0.600058,
		-0.678270, -0.494297, 0.543710,
		40.798164, 41.351917, 47.256351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539532, 41.953468, 46.886894>,  <41.272953, 41.697926, 46.875755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539532, 41.953468, 46.886894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.589176, 41.767845, 47.237720>,  <40.618961, 41.656471, 47.448215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.589176, 41.767845, 47.237720>,  <40.539532, 41.953468, 46.886894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589176, 41.767845, 47.237720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481026, 0.744959, 0.462223,
		-0.867877, -0.479260, -0.130766,
		0.124110, -0.464054, 0.877069,
		40.626408, 41.628628, 47.500843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992317, 42.254761, 47.156246>,  <40.539532, 41.953468, 46.886894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992317, 42.254761, 47.156246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.199085, 42.103176, 47.463280>,  <40.323147, 42.012226, 47.647499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.199085, 42.103176, 47.463280>,  <39.992317, 42.254761, 47.156246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199085, 42.103176, 47.463280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387060, 0.696303, 0.604438,
		-0.763529, -0.609546, 0.213251,
		0.516921, -0.378965, 0.767579,
		40.354160, 41.989487, 47.693554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649757, 42.059196, 46.485867>,  <39.992317, 42.254761, 47.156246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649757, 42.059196, 46.485867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465336, 42.354786, 46.682377>,  <39.354683, 42.532139, 46.800282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465336, 42.354786, 46.682377>,  <39.649757, 42.059196, 46.485867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465336, 42.354786, 46.682377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349136, 0.357912, -0.866027,
		-0.815804, -0.570804, 0.092986,
		-0.461051, 0.738973, 0.491274,
		39.327019, 42.576477, 46.829758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833954, 42.046711, 46.388275>,  <39.649757, 42.059196, 46.485867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833954, 42.046711, 46.388275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979027, 42.412601, 46.459541>,  <39.066071, 42.632133, 46.502300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979027, 42.412601, 46.459541>,  <38.833954, 42.046711, 46.388275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979027, 42.412601, 46.459541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317161, 0.300930, -0.899361,
		-0.876282, 0.269673, 0.399257,
		0.362682, 0.914723, 0.178170,
		39.087830, 42.687019, 46.512993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273064, 42.574375, 46.407536>,  <38.833954, 42.046711, 46.388275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273064, 42.574375, 46.407536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.606964, 42.771713, 46.309719>,  <38.807304, 42.890114, 46.251030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.606964, 42.771713, 46.309719>,  <38.273064, 42.574375, 46.407536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606964, 42.771713, 46.309719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364778, 0.162804, -0.916751,
		-0.412460, 0.854464, 0.315861,
		0.834754, 0.493342, -0.244540,
		38.857391, 42.919716, 46.236359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051819, 43.218716, 45.997894>,  <38.273064, 42.574375, 46.407536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051819, 43.218716, 45.997894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.438286, 43.154587, 45.917084>,  <38.670166, 43.116108, 45.868599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.438286, 43.154587, 45.917084>,  <38.051819, 43.218716, 45.997894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438286, 43.154587, 45.917084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193715, 0.066032, -0.978833,
		0.170271, 0.984853, 0.032741,
		0.966169, -0.160324, -0.202024,
		38.728138, 43.106491, 45.856476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150795, 43.752323, 45.449150>,  <38.051819, 43.218716, 45.997894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150795, 43.752323, 45.449150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453426, 43.491055, 45.436745>,  <38.635006, 43.334293, 45.429302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453426, 43.491055, 45.436745>,  <38.150795, 43.752323, 45.449150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453426, 43.491055, 45.436745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044779, -0.004438, -0.998987,
		0.652370, 0.757199, -0.032606,
		0.756577, -0.653169, -0.031012,
		38.680401, 43.295105, 45.427441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603882, 43.953484, 44.951488>,  <38.150795, 43.752323, 45.449150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603882, 43.953484, 44.951488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639248, 43.556499, 44.985439>,  <38.660469, 43.318310, 45.005810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639248, 43.556499, 44.985439>,  <38.603882, 43.953484, 44.951488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639248, 43.556499, 44.985439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144357, -0.097077, -0.984752,
		0.985568, 0.074815, -0.151852,
		0.088415, -0.992461, 0.084876,
		38.665771, 43.258762, 45.010902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121971, 43.882954, 44.429688>,  <38.603882, 43.953484, 44.951488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121971, 43.882954, 44.429688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936802, 43.531834, 44.478951>,  <38.825703, 43.321159, 44.508507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936802, 43.531834, 44.478951>,  <39.121971, 43.882954, 44.429688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936802, 43.531834, 44.478951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156643, -0.055743, -0.986081,
		0.872450, -0.475768, -0.111697,
		-0.462920, -0.877802, 0.123159,
		38.797924, 43.268494, 44.515900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021629, 43.762566, 43.725845>,  <39.121971, 43.882954, 44.429688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021629, 43.762566, 43.725845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.818058, 43.471432, 43.909695>,  <38.695915, 43.296753, 44.020004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.818058, 43.471432, 43.909695>,  <39.021629, 43.762566, 43.725845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818058, 43.471432, 43.909695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275368, -0.368231, -0.888019,
		0.815574, -0.578506, -0.013017,
		-0.508931, -0.727830, 0.459622,
		38.665379, 43.253082, 44.047581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112999, 43.136349, 43.456135>,  <39.021629, 43.762566, 43.725845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112999, 43.136349, 43.456135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.776852, 43.043922, 43.652252>,  <38.575165, 42.988464, 43.769924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.776852, 43.043922, 43.652252>,  <39.112999, 43.136349, 43.456135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776852, 43.043922, 43.652252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342321, -0.475071, -0.810632,
		0.420237, -0.849067, 0.320135,
		-0.840367, -0.231069, 0.490296,
		38.524742, 42.974602, 43.799339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936893, 42.493874, 43.299404>,  <39.112999, 43.136349, 43.456135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936893, 42.493874, 43.299404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.586586, 42.633450, 43.432835>,  <38.376404, 42.717197, 43.512894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.586586, 42.633450, 43.432835>,  <38.936893, 42.493874, 43.299404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586586, 42.633450, 43.432835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476096, -0.510110, -0.716324,
		-0.079795, -0.786146, 0.612867,
		-0.875765, 0.348943, 0.333577,
		38.323856, 42.738132, 43.532909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533432, 42.011955, 43.338589>,  <38.936893, 42.493874, 43.299404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533432, 42.011955, 43.338589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274227, 42.314686, 43.304428>,  <38.118702, 42.496323, 43.283932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274227, 42.314686, 43.304428>,  <38.533432, 42.011955, 43.338589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274227, 42.314686, 43.304428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451994, -0.472394, -0.756667,
		-0.613008, -0.451730, 0.648198,
		-0.648015, 0.756824, -0.085401,
		38.079823, 42.541733, 43.278809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869240, 41.647556, 43.248081>,  <38.533432, 42.011955, 43.338589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869240, 41.647556, 43.248081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876167, 42.018887, 43.099533>,  <37.880325, 42.241684, 43.010406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876167, 42.018887, 43.099533>,  <37.869240, 41.647556, 43.248081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876167, 42.018887, 43.099533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423304, -0.329685, -0.843873,
		-0.905822, 0.171819, 0.387252,
		0.017322, 0.928324, -0.371368,
		37.881363, 42.297382, 42.988121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169731, 41.770660, 42.886326>,  <37.869240, 41.647556, 43.248081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169731, 41.770660, 42.886326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444798, 42.025276, 42.746655>,  <37.609837, 42.178047, 42.662853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444798, 42.025276, 42.746655>,  <37.169731, 41.770660, 42.886326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444798, 42.025276, 42.746655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267741, -0.224708, -0.936921,
		-0.674853, 0.737781, 0.015904,
		0.687668, 0.636542, -0.349179,
		37.651096, 42.216240, 42.641899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848240, 42.076458, 42.279938>,  <37.169731, 41.770660, 42.886326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848240, 42.076458, 42.279938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241028, 42.130432, 42.226978>,  <37.476700, 42.162819, 42.195202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241028, 42.130432, 42.226978>,  <36.848240, 42.076458, 42.279938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241028, 42.130432, 42.226978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066896, -0.407029, -0.910962,
		-0.176817, 0.903393, -0.390663,
		0.981968, 0.134940, -0.132403,
		37.535618, 42.170914, 42.187256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373798, 42.546459, 41.894299>,  <36.848240, 42.076458, 42.279938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373798, 42.546459, 41.894299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994411, 42.432339, 41.949451>,  <35.766781, 42.363865, 41.982544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994411, 42.432339, 41.949451>,  <36.373798, 42.546459, 41.894299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994411, 42.432339, 41.949451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003428, 0.425875, 0.904775,
		-0.316858, 0.858622, -0.402950,
		-0.948467, -0.285304, 0.137885,
		35.709873, 42.346748, 41.990818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169193, 43.122654, 42.224651>,  <36.373798, 42.546459, 41.894299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169193, 43.122654, 42.224651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.886028, 42.856049, 42.318138>,  <35.716129, 42.696087, 42.374229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.886028, 42.856049, 42.318138>,  <36.169193, 43.122654, 42.224651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886028, 42.856049, 42.318138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017066, 0.314663, 0.949050,
		-0.706092, 0.675834, -0.211380,
		-0.707914, -0.666510, 0.233715,
		35.673653, 42.656097, 42.388252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675014, 43.507404, 42.572037>,  <36.169193, 43.122654, 42.224651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675014, 43.507404, 42.572037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600918, 43.131596, 42.687267>,  <35.556461, 42.906109, 42.756405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600918, 43.131596, 42.687267>,  <35.675014, 43.507404, 42.572037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600918, 43.131596, 42.687267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005463, 0.294130, 0.955750,
		-0.982679, 0.175467, -0.059617,
		-0.185237, -0.939521, 0.288077,
		35.545345, 42.849739, 42.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179848, 43.705929, 42.963779>,  <35.675014, 43.507404, 42.572037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179848, 43.705929, 42.963779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278015, 43.333408, 43.071442>,  <35.336914, 43.109894, 43.136040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278015, 43.333408, 43.071442>,  <35.179848, 43.705929, 42.963779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278015, 43.333408, 43.071442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035440, 0.268843, 0.962532,
		-0.968770, -0.245760, 0.032973,
		0.245416, -0.931303, 0.269157,
		35.351639, 43.054016, 43.152187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702579, 43.535576, 43.501129>,  <35.179848, 43.705929, 42.963779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702579, 43.535576, 43.501129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023781, 43.300045, 43.537945>,  <35.216499, 43.158726, 43.560036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023781, 43.300045, 43.537945>,  <34.702579, 43.535576, 43.501129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023781, 43.300045, 43.537945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047969, 0.217795, 0.974815,
		-0.594046, -0.778361, 0.203135,
		0.803000, -0.588829, 0.092043,
		35.264683, 43.123398, 43.565559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699253, 43.335865, 44.166885>,  <34.702579, 43.535576, 43.501129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699253, 43.335865, 44.166885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075279, 43.250526, 44.060478>,  <35.300896, 43.199322, 43.996635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075279, 43.250526, 44.060478>,  <34.699253, 43.335865, 44.166885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075279, 43.250526, 44.060478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283772, 0.056856, 0.957205,
		-0.189097, -0.975320, 0.113991,
		0.940062, -0.213352, -0.266017,
		35.357296, 43.186520, 43.980675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897694, 42.700047, 44.526714>,  <34.699253, 43.335865, 44.166885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897694, 42.700047, 44.526714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214554, 42.936497, 44.465965>,  <35.404671, 43.078365, 44.429516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214554, 42.936497, 44.465965>,  <34.897694, 42.700047, 44.526714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214554, 42.936497, 44.465965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195316, -0.009781, 0.980692,
		0.578225, -0.806521, -0.123204,
		0.792154, 0.591125, -0.151871,
		35.452198, 43.113834, 44.420403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772793, 41.979008, 44.876102>,  <34.897694, 42.700047, 44.526714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772793, 41.979008, 44.876102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403767, 41.894199, 45.005047>,  <34.182350, 41.843315, 45.082413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403767, 41.894199, 45.005047>,  <34.772793, 41.979008, 44.876102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403767, 41.894199, 45.005047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231398, -0.364530, -0.901983,
		0.308751, -0.906733, 0.287242,
		-0.922566, -0.212021, 0.322365,
		34.126995, 41.830593, 45.101757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702404, 41.324184, 44.697735>,  <34.772793, 41.979008, 44.876102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702404, 41.324184, 44.697735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332085, 41.463257, 44.757095>,  <34.109894, 41.546700, 44.792709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332085, 41.463257, 44.757095>,  <34.702404, 41.324184, 44.697735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332085, 41.463257, 44.757095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297326, -0.427273, -0.853836,
		-0.233458, -0.834598, 0.498942,
		-0.925794, 0.347683, 0.148397,
		34.054348, 41.567562, 44.801613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274700, 40.777988, 44.526840>,  <34.702404, 41.324184, 44.697735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274700, 40.777988, 44.526840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992973, 41.059284, 44.488068>,  <33.823936, 41.228062, 44.464806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992973, 41.059284, 44.488068>,  <34.274700, 40.777988, 44.526840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992973, 41.059284, 44.488068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418878, -0.521933, -0.743052,
		-0.573137, -0.482737, 0.662177,
		-0.704311, 0.703242, -0.096931,
		33.781681, 41.270256, 44.458988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579845, 40.373787, 44.452755>,  <34.274700, 40.777988, 44.526840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579845, 40.373787, 44.452755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529762, 40.748379, 44.321716>,  <33.499710, 40.973133, 44.243092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529762, 40.748379, 44.321716>,  <33.579845, 40.373787, 44.452755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529762, 40.748379, 44.321716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512369, -0.343793, -0.786947,
		-0.849589, 0.069318, 0.522871,
		-0.125210, 0.936484, -0.327599,
		33.492199, 41.029324, 44.223438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851078, 40.430695, 44.312267>,  <33.579845, 40.373787, 44.452755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851078, 40.430695, 44.312267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065693, 40.703571, 44.113575>,  <33.194462, 40.867298, 43.994358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065693, 40.703571, 44.113575>,  <32.851078, 40.430695, 44.312267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065693, 40.703571, 44.113575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309781, -0.388314, -0.867899,
		-0.784958, 0.619542, 0.002983,
		0.536541, 0.682188, -0.496732,
		33.226654, 40.908226, 43.964554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391369, 40.704361, 43.790459>,  <32.851078, 40.430695, 44.312267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391369, 40.704361, 43.790459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774582, 40.748241, 43.684528>,  <33.004509, 40.774570, 43.620972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774582, 40.748241, 43.684528>,  <32.391369, 40.704361, 43.790459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774582, 40.748241, 43.684528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211959, -0.350835, -0.912134,
		-0.192972, 0.929989, -0.312861,
		0.958037, 0.109702, -0.264821,
		33.061993, 40.781151, 43.605083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332222, 40.982422, 43.156265>,  <32.391369, 40.704361, 43.790459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332222, 40.982422, 43.156265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712746, 40.861115, 43.178341>,  <32.941059, 40.788330, 43.191586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712746, 40.861115, 43.178341>,  <32.332222, 40.982422, 43.156265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712746, 40.861115, 43.178341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022211, -0.246006, -0.969014,
		0.307449, 0.920602, -0.240763,
		0.951306, -0.303269, 0.055187,
		32.998138, 40.770134, 43.194897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.180180, 41.035439, 47.815506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.560093, 40.923092, 47.870674>,  <37.788040, 40.855682, 47.903774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.560093, 40.923092, 47.870674>,  <37.180180, 41.035439, 47.815506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560093, 40.923092, 47.870674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131196, -0.757613, -0.639382,
		0.284069, 0.589182, -0.756419,
		0.949785, -0.280868, 0.137916,
		37.845028, 40.838833, 47.912048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452026, 40.909199, 47.219837>,  <37.180180, 41.035439, 47.815506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452026, 40.909199, 47.219837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.728306, 40.718594, 47.437412>,  <37.894073, 40.604229, 47.567959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.728306, 40.718594, 47.437412>,  <37.452026, 40.909199, 47.219837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728306, 40.718594, 47.437412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002105, -0.753510, -0.657433,
		0.723143, 0.452941, -0.521449,
		0.690695, -0.476516, 0.543942,
		37.935513, 40.575638, 47.600594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988312, 40.737617, 46.798710>,  <37.452026, 40.909199, 47.219837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988312, 40.737617, 46.798710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.000576, 40.460064, 47.086483>,  <38.007935, 40.293533, 47.259148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.000576, 40.460064, 47.086483>,  <37.988312, 40.737617, 46.798710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000576, 40.460064, 47.086483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058328, -0.717307, -0.694312,
		0.997827, 0.063252, 0.018479,
		0.030661, -0.693881, 0.719437,
		38.009773, 40.251900, 47.302315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465366, 40.309101, 46.638485>,  <37.988312, 40.737617, 46.798710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465366, 40.309101, 46.638485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.250107, 40.094841, 46.898785>,  <38.120953, 39.966286, 47.054966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.250107, 40.094841, 46.898785>,  <38.465366, 40.309101, 46.638485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250107, 40.094841, 46.898785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041825, -0.788103, -0.614120,
		0.841811, -0.303271, 0.446521,
		-0.538150, -0.535649, 0.650750,
		38.088661, 39.934147, 47.094009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777485, 39.642670, 46.570347>,  <38.465366, 40.309101, 46.638485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777485, 39.642670, 46.570347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424591, 39.570290, 46.744209>,  <38.212856, 39.526859, 46.848526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424591, 39.570290, 46.744209>,  <38.777485, 39.642670, 46.570347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424591, 39.570290, 46.744209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089358, -0.842057, -0.531936,
		0.462258, -0.508130, 0.726720,
		-0.882232, -0.180953, 0.434653,
		38.159920, 39.516003, 46.874603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775436, 38.929005, 46.561432>,  <38.777485, 39.642670, 46.570347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775436, 38.929005, 46.561432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.392532, 39.007496, 46.646427>,  <38.162788, 39.054588, 46.697422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.392532, 39.007496, 46.646427>,  <38.775436, 38.929005, 46.561432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392532, 39.007496, 46.646427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282548, -0.791445, -0.542016,
		0.061813, -0.578888, 0.813061,
		-0.957260, 0.196225, 0.212485,
		38.105354, 39.066364, 46.710175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536797, 38.258823, 46.786339>,  <38.775436, 38.929005, 46.561432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536797, 38.258823, 46.786339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.219421, 38.477554, 46.679432>,  <38.028996, 38.608791, 46.615288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.219421, 38.477554, 46.679432>,  <38.536797, 38.258823, 46.786339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219421, 38.477554, 46.679432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369749, -0.781857, -0.501981,
		-0.483460, -0.299472, 0.822546,
		-0.793443, 0.546824, -0.267268,
		37.981388, 38.641602, 46.599251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976997, 37.868565, 46.897900>,  <38.536797, 38.258823, 46.786339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976997, 37.868565, 46.897900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.842094, 38.128338, 46.625282>,  <37.761150, 38.284203, 46.461712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.842094, 38.128338, 46.625282>,  <37.976997, 37.868565, 46.897900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842094, 38.128338, 46.625282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393428, -0.754936, -0.524678,
		-0.855261, 0.091185, 0.510112,
		-0.337259, 0.649428, -0.681542,
		37.740917, 38.323166, 46.420818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416683, 37.587944, 46.757961>,  <37.976997, 37.868565, 46.897900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416683, 37.587944, 46.757961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.487995, 37.843334, 46.458477>,  <37.530785, 37.996567, 46.278786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.487995, 37.843334, 46.458477>,  <37.416683, 37.587944, 46.757961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487995, 37.843334, 46.458477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274341, -0.698474, -0.660963,
		-0.944962, 0.323239, 0.050635,
		0.178282, 0.638476, -0.748709,
		37.541481, 38.034878, 46.233864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896729, 37.446629, 46.317097>,  <37.416683, 37.587944, 46.757961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896729, 37.446629, 46.317097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.162205, 37.646179, 46.094154>,  <37.321491, 37.765911, 45.960388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.162205, 37.646179, 46.094154>,  <36.896729, 37.446629, 46.317097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162205, 37.646179, 46.094154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272294, -0.532861, -0.801196,
		-0.696690, 0.683507, -0.217811,
		0.663686, 0.498877, -0.557354,
		37.361309, 37.795841, 45.926949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471531, 37.533566, 45.685459>,  <36.896729, 37.446629, 46.317097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471531, 37.533566, 45.685459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863464, 37.564114, 45.611595>,  <37.098625, 37.582443, 45.567276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863464, 37.564114, 45.611595>,  <36.471531, 37.533566, 45.685459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863464, 37.564114, 45.611595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114796, -0.541270, -0.832975,
		-0.163566, 0.837373, -0.521586,
		0.979830, 0.076371, -0.184661,
		37.157413, 37.587025, 45.556198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500195, 37.766102, 44.988869>,  <36.471531, 37.533566, 45.685459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500195, 37.766102, 44.988869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.837570, 37.579575, 45.095570>,  <37.039997, 37.467659, 45.159588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.837570, 37.579575, 45.095570>,  <36.500195, 37.766102, 44.988869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837570, 37.579575, 45.095570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047591, -0.559439, -0.827504,
		0.535108, 0.685257, -0.494046,
		0.843442, -0.466316, 0.266748,
		37.090603, 37.439678, 45.175594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968445, 38.075249, 44.540302>,  <36.500195, 37.766102, 44.988869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968445, 38.075249, 44.540302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.700169, 37.884182, 44.767284>,  <35.539204, 37.769543, 44.903473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.700169, 37.884182, 44.767284>,  <35.968445, 38.075249, 44.540302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700169, 37.884182, 44.767284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114907, 0.688891, 0.715700,
		-0.732786, 0.545215, -0.407143,
		-0.670688, -0.477671, 0.567458,
		35.498962, 37.740879, 44.937523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640327, 38.590881, 44.773674>,  <35.968445, 38.075249, 44.540302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640327, 38.590881, 44.773674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.536186, 38.289536, 45.015221>,  <35.473701, 38.108727, 45.160149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.536186, 38.289536, 45.015221>,  <35.640327, 38.590881, 44.773674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536186, 38.289536, 45.015221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057150, 0.636366, 0.769268,
		-0.963821, 0.165768, -0.208733,
		-0.260350, -0.753365, 0.603869,
		35.458080, 38.063526, 45.196381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078346, 38.829571, 45.120144>,  <35.640327, 38.590881, 44.773674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078346, 38.829571, 45.120144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.252926, 38.534863, 45.326710>,  <35.357674, 38.358040, 45.450649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.252926, 38.534863, 45.326710>,  <35.078346, 38.829571, 45.120144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252926, 38.534863, 45.326710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049903, 0.592906, 0.803724,
		-0.898344, -0.325014, 0.295541,
		0.436449, -0.736769, 0.516415,
		35.383862, 38.313831, 45.481636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704967, 38.846348, 45.750698>,  <35.078346, 38.829571, 45.120144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704967, 38.846348, 45.750698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022877, 38.626751, 45.854191>,  <35.213623, 38.494991, 45.916286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022877, 38.626751, 45.854191>,  <34.704967, 38.846348, 45.750698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022877, 38.626751, 45.854191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073254, 0.509971, 0.857067,
		-0.602471, -0.662219, 0.445527,
		0.794772, -0.548994, 0.258732,
		35.261307, 38.462051, 45.931812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509212, 38.576679, 46.382065>,  <34.704967, 38.846348, 45.750698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509212, 38.576679, 46.382065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.906105, 38.606213, 46.342026>,  <35.144241, 38.623932, 46.318001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.906105, 38.606213, 46.342026>,  <34.509212, 38.576679, 46.382065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906105, 38.606213, 46.342026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061329, 0.409710, 0.910152,
		0.108212, -0.909223, 0.402000,
		0.992234, 0.073835, -0.100097,
		35.203773, 38.628365, 46.311996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736595, 38.386845, 46.996140>,  <34.509212, 38.576679, 46.382065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736595, 38.386845, 46.996140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.017498, 38.618546, 46.830585>,  <35.186039, 38.757565, 46.731255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.017498, 38.618546, 46.830585>,  <34.736595, 38.386845, 46.996140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017498, 38.618546, 46.830585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172298, 0.425789, 0.888266,
		0.690758, -0.695103, 0.199210,
		0.702258, 0.579254, -0.413882,
		35.228176, 38.792320, 46.706421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259865, 38.494011, 47.482361>,  <34.736595, 38.386845, 46.996140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259865, 38.494011, 47.482361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.353359, 38.797493, 47.239136>,  <35.409454, 38.979584, 47.093201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.353359, 38.797493, 47.239136>,  <35.259865, 38.494011, 47.482361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353359, 38.797493, 47.239136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158902, 0.587165, 0.793717,
		0.959228, -0.282142, 0.016681,
		0.233735, 0.758705, -0.608058,
		35.423481, 39.025105, 47.056717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692551, 38.960579, 47.882206>,  <35.259865, 38.494011, 47.482361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692551, 38.960579, 47.882206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.586620, 39.191933, 47.573574>,  <35.523064, 39.330746, 47.388393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.586620, 39.191933, 47.573574>,  <35.692551, 38.960579, 47.882206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586620, 39.191933, 47.573574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038413, 0.805841, 0.590885,
		0.963531, 0.126842, -0.235624,
		-0.264825, 0.578387, -0.771581,
		35.507172, 39.365448, 47.342098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221737, 39.430599, 47.967262>,  <35.692551, 38.960579, 47.882206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221737, 39.430599, 47.967262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916302, 39.598850, 47.771301>,  <35.733040, 39.699802, 47.653725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916302, 39.598850, 47.771301>,  <36.221737, 39.430599, 47.967262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916302, 39.598850, 47.771301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153054, 0.854995, 0.495538,
		0.627304, 0.303404, -0.717241,
		-0.763586, 0.420629, -0.489905,
		35.687225, 39.725040, 47.624329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472240, 40.091587, 47.833866>,  <36.221737, 39.430599, 47.967262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472240, 40.091587, 47.833866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.075562, 40.103027, 47.783707>,  <35.837555, 40.109890, 47.753613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.075562, 40.103027, 47.783707>,  <36.472240, 40.091587, 47.833866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075562, 40.103027, 47.783707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019414, 0.930507, 0.365760,
		0.127145, 0.365157, -0.922223,
		-0.991694, 0.028601, -0.125399,
		35.778053, 40.111607, 47.746086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341408, 40.772041, 47.428589>,  <36.472240, 40.091587, 47.833866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341408, 40.772041, 47.428589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.983192, 40.681198, 47.581654>,  <35.768265, 40.626694, 47.673492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.983192, 40.681198, 47.581654>,  <36.341408, 40.772041, 47.428589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983192, 40.681198, 47.581654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076725, 0.925881, 0.369942,
		-0.438320, 0.301937, -0.846587,
		-0.895538, -0.227107, 0.382666,
		35.714531, 40.613068, 47.696453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843506, 41.292454, 47.329231>,  <36.341408, 40.772041, 47.428589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843506, 41.292454, 47.329231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686203, 41.095142, 47.639595>,  <35.591824, 40.976757, 47.825813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686203, 41.095142, 47.639595>,  <35.843506, 41.292454, 47.329231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686203, 41.095142, 47.639595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058266, 0.855573, 0.514394,
		-0.917581, 0.157079, -0.365200,
		-0.393255, -0.493277, 0.775905,
		35.568226, 40.947159, 47.872368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308109, 41.764118, 47.582081>,  <35.843506, 41.292454, 47.329231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308109, 41.764118, 47.582081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379147, 41.519115, 47.890182>,  <35.421768, 41.372112, 48.075043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379147, 41.519115, 47.890182>,  <35.308109, 41.764118, 47.582081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379147, 41.519115, 47.890182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184316, 0.748145, 0.637422,
		-0.966690, -0.255171, 0.019969,
		0.177591, -0.612509, 0.770256,
		35.432423, 41.335361, 48.121258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761322, 41.839897, 48.144020>,  <35.308109, 41.764118, 47.582081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761322, 41.839897, 48.144020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.101093, 41.715271, 48.314384>,  <35.304955, 41.640495, 48.416603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.101093, 41.715271, 48.314384>,  <34.761322, 41.839897, 48.144020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101093, 41.715271, 48.314384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059326, 0.745604, 0.663743,
		-0.524358, -0.589070, 0.614854,
		0.849429, -0.311562, 0.425911,
		35.355923, 41.621803, 48.442158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072372, 41.484287, 48.043747>,  <34.761322, 41.839897, 48.144020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072372, 41.484287, 48.043747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.123669, 41.878468, 47.999134>,  <34.154446, 42.114975, 47.972366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.123669, 41.878468, 47.999134>,  <34.072372, 41.484287, 48.043747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123669, 41.878468, 47.999134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394021, -0.052580, -0.917596,
		-0.910111, 0.161619, 0.381545,
		0.128239, 0.985452, -0.111535,
		34.162140, 42.174103, 47.965675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490448, 41.824230, 47.954037>,  <34.072372, 41.484287, 48.043747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490448, 41.824230, 47.954037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.776966, 42.026058, 47.761238>,  <33.948879, 42.147156, 47.645557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.776966, 42.026058, 47.761238>,  <33.490448, 41.824230, 47.954037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776966, 42.026058, 47.761238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450335, -0.193372, -0.871669,
		-0.533025, 0.841436, 0.088714,
		0.716298, 0.504572, -0.482000,
		33.991856, 42.177429, 47.616638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095463, 42.190445, 47.312309>,  <33.490448, 41.824230, 47.954037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095463, 42.190445, 47.312309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.489368, 42.218929, 47.248844>,  <33.725712, 42.236019, 47.210766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.489368, 42.218929, 47.248844>,  <33.095463, 42.190445, 47.312309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489368, 42.218929, 47.248844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148138, -0.134429, -0.979788,
		-0.091104, 0.988361, -0.121831,
		0.984761, 0.071215, -0.158661,
		33.784798, 42.240295, 47.201244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105179, 42.621048, 46.720146>,  <33.095463, 42.190445, 47.312309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105179, 42.621048, 46.720146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.465775, 42.449966, 46.746620>,  <33.682133, 42.347317, 46.762505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.465775, 42.449966, 46.746620>,  <33.105179, 42.621048, 46.720146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465775, 42.449966, 46.746620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026859, -0.097331, -0.994889,
		0.431960, 0.898663, -0.076256,
		0.901492, -0.427705, 0.066181,
		33.736221, 42.321655, 46.766476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587242, 42.908180, 46.098328>,  <33.105179, 42.621048, 46.720146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587242, 42.908180, 46.098328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741776, 42.555458, 46.206520>,  <33.834496, 42.343826, 46.271435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741776, 42.555458, 46.206520>,  <33.587242, 42.908180, 46.098328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741776, 42.555458, 46.206520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106917, -0.248463, -0.962723,
		0.916140, 0.400855, -0.001710,
		0.386337, -0.881806, 0.270485,
		33.857677, 42.290916, 46.287666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111713, 42.915394, 45.698044>,  <33.587242, 42.908180, 46.098328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111713, 42.915394, 45.698044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.074341, 42.535614, 45.817924>,  <34.051918, 42.307747, 45.889854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.074341, 42.535614, 45.817924>,  <34.111713, 42.915394, 45.698044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074341, 42.535614, 45.817924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251583, -0.313766, -0.915564,
		0.963315, -0.010142, 0.268180,
		-0.093432, -0.949446, 0.299704,
		34.046310, 42.250782, 45.907837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654099, 42.566124, 45.301960>,  <34.111713, 42.915394, 45.698044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654099, 42.566124, 45.301960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.374996, 42.302963, 45.415314>,  <34.207535, 42.145069, 45.483326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.374996, 42.302963, 45.415314>,  <34.654099, 42.566124, 45.301960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374996, 42.302963, 45.415314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024445, -0.373504, -0.927306,
		0.715918, -0.653961, 0.244532,
		-0.697756, -0.657898, 0.283385,
		34.165668, 42.105595, 45.500328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415318, 42.416431, 45.021297>,  <34.654099, 42.566124, 45.301960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415318, 42.416431, 45.021297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.519741, 42.788471, 44.917946>,  <35.582394, 43.011696, 44.855934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.519741, 42.788471, 44.917946>,  <35.415318, 42.416431, 45.021297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519741, 42.788471, 44.917946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327162, 0.166566, 0.930172,
		0.908192, -0.327361, -0.260810,
		0.261060, 0.930102, -0.258374,
		35.598061, 43.067501, 44.840435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012127, 42.445110, 45.354305>,  <35.415318, 42.416431, 45.021297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012127, 42.445110, 45.354305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.999348, 42.830162, 45.246735>,  <35.991680, 43.061195, 45.182194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.999348, 42.830162, 45.246735>,  <36.012127, 42.445110, 45.354305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999348, 42.830162, 45.246735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546798, 0.242060, 0.801510,
		0.836655, -0.121442, -0.534098,
		-0.031947, 0.962631, -0.268925,
		35.989765, 43.118950, 45.166058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668026, 42.700211, 45.401340>,  <36.012127, 42.445110, 45.354305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668026, 42.700211, 45.401340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.451004, 43.032215, 45.453060>,  <36.320789, 43.231419, 45.484093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.451004, 43.032215, 45.453060>,  <36.668026, 42.700211, 45.401340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451004, 43.032215, 45.453060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638782, 0.307705, 0.705177,
		0.545519, 0.465189, -0.697142,
		-0.542556, 0.830010, 0.129295,
		36.288239, 43.281219, 45.491848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134102, 43.244087, 45.624454>,  <36.668026, 42.700211, 45.401340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134102, 43.244087, 45.624454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.771839, 43.376247, 45.730755>,  <36.554482, 43.455544, 45.794537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.771839, 43.376247, 45.730755>,  <37.134102, 43.244087, 45.624454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771839, 43.376247, 45.730755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393228, 0.420011, 0.817901,
		0.158613, 0.845239, -0.510306,
		-0.905657, 0.330396, 0.265753,
		36.500141, 43.475365, 45.810482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120548, 44.019829, 45.760475>,  <37.134102, 43.244087, 45.624454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120548, 44.019829, 45.760475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.823116, 43.851143, 45.968029>,  <36.644657, 43.749931, 46.092560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.823116, 43.851143, 45.968029>,  <37.120548, 44.019829, 45.760475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823116, 43.851143, 45.968029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385409, 0.363822, 0.847994,
		-0.546393, 0.830537, -0.107999,
		-0.743583, -0.421714, 0.518886,
		36.600040, 43.724628, 46.123695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927704, 44.489498, 46.203991>,  <37.120548, 44.019829, 45.760475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927704, 44.489498, 46.203991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.779366, 44.162663, 46.380550>,  <36.690361, 43.966560, 46.486488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.779366, 44.162663, 46.380550>,  <36.927704, 44.489498, 46.203991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779366, 44.162663, 46.380550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499895, 0.224931, 0.836367,
		-0.782672, 0.530821, 0.325043,
		-0.370849, -0.817089, 0.441402,
		36.668110, 43.917534, 46.512970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912598, 44.648422, 46.841454>,  <36.927704, 44.489498, 46.203991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912598, 44.648422, 46.841454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840469, 44.262127, 46.916107>,  <36.797192, 44.030350, 46.960899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840469, 44.262127, 46.916107>,  <36.912598, 44.648422, 46.841454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840469, 44.262127, 46.916107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453745, 0.086673, 0.886907,
		-0.872697, 0.244609, 0.422571,
		-0.180319, -0.965740, 0.186630,
		36.786373, 43.972404, 46.972095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681679, 44.595921, 47.569683>,  <36.912598, 44.648422, 46.841454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681679, 44.595921, 47.569683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797588, 44.226463, 47.469349>,  <36.867134, 44.004791, 47.409149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797588, 44.226463, 47.469349>,  <36.681679, 44.595921, 47.569683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797588, 44.226463, 47.469349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359362, -0.137902, 0.922953,
		-0.887067, -0.357591, 0.291960,
		0.289778, -0.923640, -0.250833,
		36.884521, 43.949371, 47.394100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285164, 44.091194, 47.966156>,  <36.681679, 44.595921, 47.569683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285164, 44.091194, 47.966156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.635437, 43.922550, 47.871983>,  <36.845600, 43.821365, 47.815479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.635437, 43.922550, 47.871983>,  <36.285164, 44.091194, 47.966156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635437, 43.922550, 47.871983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285188, 0.058103, 0.956709,
		-0.389676, -0.904916, 0.171117,
		0.875683, -0.421606, -0.235430,
		36.898144, 43.796070, 47.801353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.406403, 34.770592, 34.796150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802105, 34.808250, 34.751396>,  <36.039524, 34.830845, 34.724545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802105, 34.808250, 34.751396>,  <35.406403, 34.770592, 34.796150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802105, 34.808250, 34.751396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026579, 0.636631, 0.770711,
		0.143784, -0.765401, 0.627286,
		0.989252, 0.094143, -0.111881,
		36.098881, 34.836494, 34.717831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741467, 34.698353, 35.398258>,  <35.406403, 34.770592, 34.796150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741467, 34.698353, 35.398258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032787, 34.921898, 35.239639>,  <36.207581, 35.056026, 35.144470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032787, 34.921898, 35.239639>,  <35.741467, 34.698353, 35.398258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032787, 34.921898, 35.239639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134894, 0.684279, 0.716635,
		0.671849, -0.468434, 0.573749,
		0.728300, 0.558866, -0.396543,
		36.251278, 35.089558, 35.120678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222637, 34.995220, 36.021339>,  <35.741467, 34.698353, 35.398258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222637, 34.995220, 36.021339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264328, 35.215424, 35.690022>,  <36.289341, 35.347546, 35.491230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264328, 35.215424, 35.690022>,  <36.222637, 34.995220, 36.021339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264328, 35.215424, 35.690022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156899, 0.831504, 0.532901,
		0.982100, 0.074417, 0.173038,
		0.104225, 0.550511, -0.828296,
		36.295597, 35.380577, 35.441532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726467, 35.404205, 36.279789>,  <36.222637, 34.995220, 36.021339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726467, 35.404205, 36.279789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511204, 35.554844, 35.978176>,  <36.382046, 35.645226, 35.797211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511204, 35.554844, 35.978176>,  <36.726467, 35.404205, 36.279789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511204, 35.554844, 35.978176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248988, 0.783664, 0.569101,
		0.805226, 0.494012, -0.327969,
		-0.538160, 0.376595, -0.754029,
		36.349754, 35.667824, 35.751968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909470, 36.107891, 36.248562>,  <36.726467, 35.404205, 36.279789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909470, 36.107891, 36.248562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594322, 36.148476, 36.005592>,  <36.405235, 36.172825, 35.859810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594322, 36.148476, 36.005592>,  <36.909470, 36.107891, 36.248562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594322, 36.148476, 36.005592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271798, 0.827791, 0.490803,
		0.552619, 0.551786, -0.624615,
		-0.787869, 0.101457, -0.607428,
		36.357960, 36.178913, 35.823364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938301, 36.717377, 35.973515>,  <36.909470, 36.107891, 36.248562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938301, 36.717377, 35.973515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548485, 36.633312, 35.942265>,  <36.314594, 36.582874, 35.923515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548485, 36.633312, 35.942265>,  <36.938301, 36.717377, 35.973515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548485, 36.633312, 35.942265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216553, 0.791933, 0.570918,
		-0.058117, 0.573301, -0.817281,
		-0.974539, -0.210165, -0.078125,
		36.256123, 36.570263, 35.918827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708729, 37.302223, 35.913483>,  <36.938301, 36.717377, 35.973515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708729, 37.302223, 35.913483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400978, 37.090420, 36.056416>,  <36.216328, 36.963337, 36.142174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400978, 37.090420, 36.056416>,  <36.708729, 37.302223, 35.913483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400978, 37.090420, 36.056416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262876, 0.772262, 0.578366,
		-0.582200, 0.351048, -0.733354,
		-0.769376, -0.529506, 0.357329,
		36.170166, 36.931568, 36.163612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095852, 37.707573, 35.737427>,  <36.708729, 37.302223, 35.913483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095852, 37.707573, 35.737427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998844, 37.449497, 36.027229>,  <35.940639, 37.294651, 36.201111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998844, 37.449497, 36.027229>,  <36.095852, 37.707573, 35.737427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998844, 37.449497, 36.027229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407253, 0.745520, 0.527584,
		-0.880528, -0.167109, -0.443559,
		-0.242519, -0.645193, 0.724507,
		35.926090, 37.255939, 36.244583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463047, 37.876091, 35.863590>,  <36.095852, 37.707573, 35.737427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463047, 37.876091, 35.863590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546051, 37.672920, 36.198006>,  <35.595852, 37.551018, 36.398655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546051, 37.672920, 36.198006>,  <35.463047, 37.876091, 35.863590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546051, 37.672920, 36.198006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435153, 0.717495, 0.543915,
		-0.876117, -0.476670, -0.072138,
		0.207509, -0.507924, 0.836034,
		35.608303, 37.520542, 36.448814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838699, 37.817951, 36.331097>,  <35.463047, 37.876091, 35.863590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838699, 37.817951, 36.331097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155807, 37.761234, 36.568214>,  <35.346073, 37.727203, 36.710484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155807, 37.761234, 36.568214>,  <34.838699, 37.817951, 36.331097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155807, 37.761234, 36.568214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350709, 0.689325, 0.633904,
		-0.498510, -0.710441, 0.496751,
		0.792774, -0.141793, 0.592793,
		35.393639, 37.718697, 36.746052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518940, 37.824459, 36.988441>,  <34.838699, 37.817951, 36.331097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518940, 37.824459, 36.988441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901997, 37.927517, 37.039898>,  <35.131828, 37.989349, 37.070774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901997, 37.927517, 37.039898>,  <34.518940, 37.824459, 36.988441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901997, 37.927517, 37.039898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287135, 0.820224, 0.494758,
		0.021954, -0.510737, 0.859456,
		0.957639, 0.257642, 0.128643,
		35.189289, 38.004810, 37.078491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505833, 38.012260, 37.662346>,  <34.518940, 37.824459, 36.988441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505833, 38.012260, 37.662346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846939, 38.186047, 37.546398>,  <35.051605, 38.290318, 37.476830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846939, 38.186047, 37.546398>,  <34.505833, 38.012260, 37.662346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846939, 38.186047, 37.546398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101711, 0.682513, 0.723762,
		0.512290, -0.587718, 0.626215,
		0.852768, 0.434469, -0.289867,
		35.102768, 38.316387, 37.459438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238754, 37.472160, 38.093700>,  <34.505833, 38.012260, 37.662346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238754, 37.472160, 38.093700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849045, 37.469368, 38.183811>,  <33.615219, 37.467693, 38.237877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849045, 37.469368, 38.183811>,  <34.238754, 37.472160, 38.093700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849045, 37.469368, 38.183811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142839, -0.754037, -0.641112,
		0.174343, -0.656795, 0.733638,
		-0.974270, -0.006982, 0.225277,
		33.556763, 37.467274, 38.251392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039047, 36.775635, 38.032452>,  <34.238754, 37.472160, 38.093700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039047, 36.775635, 38.032452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667435, 36.922932, 38.018021>,  <33.444469, 37.011311, 38.009361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667435, 36.922932, 38.018021>,  <34.039047, 36.775635, 38.032452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667435, 36.922932, 38.018021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304612, -0.816539, -0.490383,
		-0.210039, -0.444590, 0.870760,
		-0.929029, 0.368244, -0.036078,
		33.388725, 37.033405, 38.007198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641441, 36.134319, 38.002373>,  <34.039047, 36.775635, 38.032452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641441, 36.134319, 38.002373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425762, 36.445278, 37.872810>,  <33.296352, 36.631851, 37.795071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425762, 36.445278, 37.872810>,  <33.641441, 36.134319, 38.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425762, 36.445278, 37.872810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417217, -0.580672, -0.699107,
		-0.731568, -0.241819, 0.637442,
		-0.539202, 0.777396, -0.323910,
		33.264000, 36.678497, 37.775639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928993, 35.881607, 37.960598>,  <33.641441, 36.134319, 38.002373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928993, 35.881607, 37.960598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981098, 36.188538, 37.709446>,  <33.012363, 36.372696, 37.558754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981098, 36.188538, 37.709446>,  <32.928993, 35.881607, 37.960598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981098, 36.188538, 37.709446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526032, -0.483311, -0.699786,
		-0.840429, 0.421443, 0.340683,
		0.130264, 0.767331, -0.627881,
		33.020176, 36.418736, 37.521080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247921, 35.923115, 37.709030>,  <32.928993, 35.881607, 37.960598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247921, 35.923115, 37.709030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485172, 36.103252, 37.442081>,  <32.627522, 36.211334, 37.281910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485172, 36.103252, 37.442081>,  <32.247921, 35.923115, 37.709030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485172, 36.103252, 37.442081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529755, -0.405901, -0.744718,
		-0.606270, 0.795256, -0.002177,
		0.593125, 0.450347, -0.667376,
		32.663109, 36.238358, 37.241867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756132, 36.154819, 37.144615>,  <32.247921, 35.923115, 37.709030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756132, 36.154819, 37.144615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129715, 36.138493, 37.002598>,  <32.353867, 36.128696, 36.917385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129715, 36.138493, 37.002598>,  <31.756132, 36.154819, 37.144615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129715, 36.138493, 37.002598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347533, -0.335385, -0.875635,
		-0.083332, 0.941196, -0.327422,
		0.933957, -0.040822, -0.355045,
		32.409901, 36.126247, 36.896084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696926, 36.253567, 36.454353>,  <31.756132, 36.154819, 37.144615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696926, 36.253567, 36.454353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057247, 36.080154, 36.464161>,  <32.273441, 35.976105, 36.470047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057247, 36.080154, 36.464161>,  <31.696926, 36.253567, 36.454353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057247, 36.080154, 36.464161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254977, -0.573814, -0.778283,
		0.351483, 0.694827, -0.627435,
		0.900803, -0.433535, 0.024521,
		32.327488, 35.950092, 36.471516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993822, 36.082203, 35.714947>,  <31.696926, 36.253567, 36.454353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993822, 36.082203, 35.714947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213512, 35.829742, 35.934036>,  <32.345325, 35.678265, 36.065491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213512, 35.829742, 35.934036>,  <31.993822, 36.082203, 35.714947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213512, 35.829742, 35.934036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334043, -0.766595, -0.548405,
		0.766006, 0.118237, -0.631866,
		0.549227, -0.631152, 0.547720,
		32.378281, 35.640396, 36.098351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294239, 35.610409, 35.203487>,  <31.993822, 36.082203, 35.714947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294239, 35.610409, 35.203487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317142, 35.420540, 35.554806>,  <32.330883, 35.306618, 35.765598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317142, 35.420540, 35.554806>,  <32.294239, 35.610409, 35.203487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317142, 35.420540, 35.554806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316003, -0.843127, -0.435063,
		0.947029, -0.252633, -0.198274,
		0.057259, -0.474673, 0.878298,
		32.334320, 35.278137, 35.818295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749218, 34.996956, 35.089870>,  <32.294239, 35.610409, 35.203487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749218, 34.996956, 35.089870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529758, 34.907288, 35.412048>,  <32.398083, 34.853489, 35.605354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529758, 34.907288, 35.412048>,  <32.749218, 34.996956, 35.089870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529758, 34.907288, 35.412048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182481, -0.908048, -0.377027,
		0.815897, -0.353832, 0.457290,
		-0.548645, -0.224169, 0.805442,
		32.365166, 34.840038, 35.653683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918530, 34.218636, 35.238739>,  <32.749218, 34.996956, 35.089870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918530, 34.218636, 35.238739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586147, 34.303795, 35.444332>,  <32.386719, 34.354889, 35.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586147, 34.303795, 35.444332>,  <32.918530, 34.218636, 35.238739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586147, 34.303795, 35.444332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374756, -0.897026, -0.234310,
		0.411175, -0.387322, 0.825177,
		-0.830959, 0.212898, 0.513986,
		32.336861, 34.367664, 35.598526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780079, 33.716496, 35.796787>,  <32.918530, 34.218636, 35.238739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780079, 33.716496, 35.796787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430779, 33.858837, 35.663643>,  <32.221199, 33.944241, 35.583755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430779, 33.858837, 35.663643>,  <32.780079, 33.716496, 35.796787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430779, 33.858837, 35.663643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298963, -0.930718, -0.210679,
		-0.384768, -0.084464, 0.919141,
		-0.873255, 0.355851, -0.332859,
		32.168800, 33.965591, 35.563786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811989, 33.102894, 36.272270>,  <32.780079, 33.716496, 35.796787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811989, 33.102894, 36.272270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655605, 32.948067, 36.606297>,  <32.561775, 32.855171, 36.806713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655605, 32.948067, 36.606297>,  <32.811989, 33.102894, 36.272270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655605, 32.948067, 36.606297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447759, -0.712694, -0.539980,
		0.804153, -0.585017, 0.105322,
		-0.390960, -0.387067, 0.835062,
		32.538319, 32.831947, 36.856815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036640, 32.382332, 36.177246>,  <32.811989, 33.102894, 36.272270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036640, 32.382332, 36.177246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708099, 32.406639, 36.404118>,  <32.510975, 32.421223, 36.540241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708099, 32.406639, 36.404118>,  <33.036640, 32.382332, 36.177246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708099, 32.406639, 36.404118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421359, -0.734854, -0.531456,
		0.384498, -0.675497, 0.629178,
		-0.821351, 0.060766, 0.567177,
		32.461693, 32.424870, 36.574272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876877, 31.709717, 36.630085>,  <33.036640, 32.382332, 36.177246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876877, 31.709717, 36.630085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527843, 31.900297, 36.587002>,  <32.318424, 32.014645, 36.561150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527843, 31.900297, 36.587002>,  <32.876877, 31.709717, 36.630085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527843, 31.900297, 36.587002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340953, -0.751972, -0.564172,
		-0.349794, -0.455560, 0.818602,
		-0.872579, 0.476449, -0.107711,
		32.266071, 32.043232, 36.554688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230534, 31.005920, 36.630524>,  <32.876877, 31.709717, 36.630085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230534, 31.005920, 36.630524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582550, 30.895384, 36.785007>,  <33.793762, 30.829062, 36.877697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582550, 30.895384, 36.785007>,  <33.230534, 31.005920, 36.630524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582550, 30.895384, 36.785007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114675, 0.665528, 0.737510,
		-0.460837, -0.693331, 0.554005,
		0.880045, -0.276341, 0.386208,
		33.846565, 30.812481, 36.900871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172874, 30.814501, 37.353065>,  <33.230534, 31.005920, 36.630524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172874, 30.814501, 37.353065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548149, 30.929304, 37.275677>,  <33.773315, 30.998186, 37.229244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548149, 30.929304, 37.275677>,  <33.172874, 30.814501, 37.353065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548149, 30.929304, 37.275677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017576, 0.597740, 0.801497,
		0.345684, -0.748553, 0.565836,
		0.938186, 0.287010, -0.193472,
		33.829605, 31.015408, 37.217636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522152, 30.842339, 38.033283>,  <33.172874, 30.814501, 37.353065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522152, 30.842339, 38.033283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698910, 31.082851, 37.766994>,  <33.804966, 31.227160, 37.607220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698910, 31.082851, 37.766994>,  <33.522152, 30.842339, 38.033283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698910, 31.082851, 37.766994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251955, 0.629052, 0.735400,
		0.860958, -0.492701, 0.126478,
		0.441894, 0.601281, -0.665726,
		33.831478, 31.263235, 37.567276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256569, 31.048128, 38.350746>,  <33.522152, 30.842339, 38.033283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256569, 31.048128, 38.350746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177769, 31.339128, 38.087860>,  <34.130489, 31.513729, 37.930130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177769, 31.339128, 38.087860>,  <34.256569, 31.048128, 38.350746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177769, 31.339128, 38.087860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214566, 0.686093, 0.695153,
		0.956635, -0.004068, -0.291259,
		-0.197003, 0.727503, -0.657214,
		34.118668, 31.557379, 37.890697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723194, 31.545761, 38.524963>,  <34.256569, 31.048128, 38.350746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723194, 31.545761, 38.524963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460026, 31.739336, 38.294159>,  <34.302124, 31.855482, 38.155678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460026, 31.739336, 38.294159>,  <34.723194, 31.545761, 38.524963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460026, 31.739336, 38.294159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077456, 0.805615, 0.587354,
		0.749090, 0.341742, -0.567518,
		-0.657924, 0.483939, -0.577008,
		34.262650, 31.884518, 38.121056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041218, 32.173195, 38.430828>,  <34.723194, 31.545761, 38.524963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041218, 32.173195, 38.430828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647041, 32.220619, 38.382072>,  <34.410538, 32.249073, 38.352821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647041, 32.220619, 38.382072>,  <35.041218, 32.173195, 38.430828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647041, 32.220619, 38.382072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001764, 0.709654, 0.704548,
		0.170027, 0.694503, -0.699111,
		-0.985438, 0.118559, -0.121886,
		34.351410, 32.256187, 38.345509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929924, 32.864761, 38.346661>,  <35.041218, 32.173195, 38.430828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929924, 32.864761, 38.346661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578728, 32.711475, 38.461399>,  <34.368011, 32.619503, 38.530243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578728, 32.711475, 38.461399>,  <34.929924, 32.864761, 38.346661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578728, 32.711475, 38.461399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098140, 0.730621, 0.675693,
		-0.468510, 0.565101, -0.679087,
		-0.877990, -0.383215, 0.286844,
		34.315331, 32.596512, 38.547451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454445, 33.444431, 38.266483>,  <34.929924, 32.864761, 38.346661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454445, 33.444431, 38.266483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280689, 33.176914, 38.507820>,  <34.176437, 33.016403, 38.652622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280689, 33.176914, 38.507820>,  <34.454445, 33.444431, 38.266483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280689, 33.176914, 38.507820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131513, 0.709756, 0.692063,
		-0.891074, 0.221274, -0.396263,
		-0.434386, -0.668793, 0.603345,
		34.150372, 32.976276, 38.688824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015400, 33.826599, 38.542408>,  <34.454445, 33.444431, 38.266483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015400, 33.826599, 38.542408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021229, 33.509575, 38.786255>,  <34.024727, 33.319359, 38.932564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021229, 33.509575, 38.786255>,  <34.015400, 33.826599, 38.542408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021229, 33.509575, 38.786255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140516, 0.602011, 0.786027,
		-0.989971, -0.097115, -0.102595,
		0.014572, -0.792560, 0.609620,
		34.025600, 33.271809, 38.969139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556591, 33.966682, 39.043114>,  <34.015400, 33.826599, 38.542408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556591, 33.966682, 39.043114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759014, 33.672039, 39.222588>,  <33.880466, 33.495255, 39.330273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759014, 33.672039, 39.222588>,  <33.556591, 33.966682, 39.043114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759014, 33.672039, 39.222588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097998, 0.467740, 0.878417,
		-0.856914, -0.488500, 0.164518,
		0.506058, -0.736605, 0.448685,
		33.910831, 33.451057, 39.357193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187248, 33.869213, 39.667545>,  <33.556591, 33.966682, 39.043114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187248, 33.869213, 39.667545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539654, 33.698021, 39.748192>,  <33.751095, 33.595306, 39.796581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539654, 33.698021, 39.748192>,  <33.187248, 33.869213, 39.667545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539654, 33.698021, 39.748192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137961, 0.640055, 0.755842,
		-0.452534, -0.638090, 0.622940,
		0.881011, -0.427985, 0.201615,
		33.803959, 33.569626, 39.808678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234932, 33.879646, 40.381245>,  <33.187248, 33.869213, 39.667545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234932, 33.879646, 40.381245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614109, 33.854790, 40.256317>,  <33.841614, 33.839874, 40.181362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614109, 33.854790, 40.256317>,  <33.234932, 33.879646, 40.381245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614109, 33.854790, 40.256317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296512, 0.529903, 0.794533,
		0.116120, -0.845778, 0.520745,
		0.947944, -0.062146, -0.312316,
		33.898491, 33.836147, 40.162621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620575, 33.670151, 40.921055>,  <33.234932, 33.879646, 40.381245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620575, 33.670151, 40.921055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886482, 33.848648, 40.681404>,  <34.046028, 33.955746, 40.537613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886482, 33.848648, 40.681404>,  <33.620575, 33.670151, 40.921055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886482, 33.848648, 40.681404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276645, 0.597924, 0.752300,
		0.693941, -0.665849, 0.274028,
		0.664766, 0.446243, -0.599128,
		34.085911, 33.982521, 40.501667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308010, 33.576248, 41.228436>,  <33.620575, 33.670151, 40.921055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308010, 33.576248, 41.228436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324905, 33.910461, 41.009312>,  <34.335041, 34.110989, 40.877838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324905, 33.910461, 41.009312>,  <34.308010, 33.576248, 41.228436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324905, 33.910461, 41.009312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353147, 0.500424, 0.790483,
		0.934614, -0.226846, -0.273930,
		0.042237, 0.835534, -0.547813,
		34.337578, 34.161121, 40.844967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889160, 33.801102, 41.486458>,  <34.308010, 33.576248, 41.228436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889160, 33.801102, 41.486458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748802, 34.121361, 41.292202>,  <34.664589, 34.313515, 41.175648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748802, 34.121361, 41.292202>,  <34.889160, 33.801102, 41.486458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748802, 34.121361, 41.292202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331566, 0.591243, 0.735184,
		0.875750, 0.096951, -0.472929,
		-0.350893, 0.800645, -0.485636,
		34.643536, 34.361553, 41.146511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421272, 34.289665, 41.588108>,  <34.889160, 33.801102, 41.486458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421272, 34.289665, 41.588108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113907, 34.519764, 41.475941>,  <34.929485, 34.657822, 41.408642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113907, 34.519764, 41.475941>,  <35.421272, 34.289665, 41.588108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113907, 34.519764, 41.475941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265022, 0.684888, 0.678743,
		0.582495, 0.447241, -0.678731,
		-0.768416, 0.575243, -0.280415,
		34.883381, 34.692337, 41.391815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703285, 34.941422, 41.517296>,  <35.421272, 34.289665, 41.588108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703285, 34.941422, 41.517296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308739, 34.990520, 41.561138>,  <35.072010, 35.019978, 41.587444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308739, 34.990520, 41.561138>,  <35.703285, 34.941422, 41.517296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308739, 34.990520, 41.561138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164060, 0.681614, 0.713082,
		0.012817, 0.721343, -0.692459,
		-0.986367, 0.122745, 0.109607,
		35.012829, 35.027344, 41.594021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629562, 35.686749, 41.536236>,  <35.703285, 34.941422, 41.517296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629562, 35.686749, 41.536236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295753, 35.529793, 41.690948>,  <35.095467, 35.435619, 41.783775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295753, 35.529793, 41.690948>,  <35.629562, 35.686749, 41.536236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295753, 35.529793, 41.690948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006400, 0.695046, 0.718937,
		-0.550937, 0.602444, -0.577520,
		-0.834522, -0.392392, 0.386782,
		35.045395, 35.412075, 41.806984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232975, 36.285179, 41.676365>,  <35.629562, 35.686749, 41.536236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232975, 36.285179, 41.676365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078537, 35.989658, 41.897312>,  <34.985874, 35.812347, 42.029881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078537, 35.989658, 41.897312>,  <35.232975, 36.285179, 41.676365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078537, 35.989658, 41.897312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086703, 0.625209, 0.775626,
		-0.918375, 0.251575, -0.305447,
		-0.386096, -0.738799, 0.552364,
		34.962708, 35.768021, 42.063023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564941, 36.532558, 41.926941>,  <35.232975, 36.285179, 41.676365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564941, 36.532558, 41.926941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684647, 36.232128, 42.162342>,  <34.756470, 36.051872, 42.303581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684647, 36.232128, 42.162342>,  <34.564941, 36.532558, 41.926941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684647, 36.232128, 42.162342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011876, 0.613785, 0.789384,
		-0.954097, -0.243222, 0.174763,
		0.299262, -0.751073, 0.588499,
		34.774426, 36.006805, 42.338890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147312, 36.668968, 42.508690>,  <34.564941, 36.532558, 41.926941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147312, 36.668968, 42.508690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449947, 36.442303, 42.639202>,  <34.631527, 36.306301, 42.717510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449947, 36.442303, 42.639202>,  <34.147312, 36.668968, 42.508690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449947, 36.442303, 42.639202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010629, 0.488266, 0.872630,
		-0.653804, -0.663690, 0.363393,
		0.756589, -0.566667, 0.326285,
		34.676926, 36.272305, 42.737087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878376, 36.524223, 43.110168>,  <34.147312, 36.668968, 42.508690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878376, 36.524223, 43.110168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271809, 36.452477, 43.118191>,  <34.507866, 36.409428, 43.123005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271809, 36.452477, 43.118191>,  <33.878376, 36.524223, 43.110168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271809, 36.452477, 43.118191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071427, 0.488897, 0.869412,
		-0.165755, -0.853701, 0.493680,
		0.983577, -0.179372, 0.020059,
		34.566883, 36.398666, 43.124210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031898, 36.225391, 43.729488>,  <33.878376, 36.524223, 43.110168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031898, 36.225391, 43.729488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379124, 36.390030, 43.618450>,  <34.587460, 36.488811, 43.551826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379124, 36.390030, 43.618450>,  <34.031898, 36.225391, 43.729488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379124, 36.390030, 43.618450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095155, 0.410846, 0.906725,
		0.487254, -0.813507, 0.317474,
		0.868061, 0.411597, -0.277596,
		34.639542, 36.513508, 43.535172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601913, 36.043041, 44.209370>,  <34.031898, 36.225391, 43.729488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601913, 36.043041, 44.209370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712879, 36.384918, 44.033855>,  <34.779461, 36.590046, 43.928547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712879, 36.384918, 44.033855>,  <34.601913, 36.043041, 44.209370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712879, 36.384918, 44.033855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324829, 0.346376, 0.880063,
		0.904171, -0.386676, -0.181539,
		0.277419, 0.854696, -0.438786,
		34.796104, 36.641327, 43.902218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284431, 36.097435, 44.446682>,  <34.601913, 36.043041, 44.209370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284431, 36.097435, 44.446682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189423, 36.454865, 44.294304>,  <35.132416, 36.669323, 44.202877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189423, 36.454865, 44.294304>,  <35.284431, 36.097435, 44.446682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189423, 36.454865, 44.294304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445237, 0.448692, 0.774881,
		0.863335, 0.014443, -0.504425,
		-0.237523, 0.893570, -0.380941,
		35.118164, 36.722935, 44.180023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844692, 36.512341, 44.644043>,  <35.284431, 36.097435, 44.446682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844692, 36.512341, 44.644043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561699, 36.775475, 44.540726>,  <35.391903, 36.933353, 44.478733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561699, 36.775475, 44.540726>,  <35.844692, 36.512341, 44.644043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561699, 36.775475, 44.540726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304762, 0.613738, 0.728317,
		0.637637, 0.436557, -0.634694,
		-0.707488, 0.657833, -0.258296,
		35.349453, 36.972824, 44.463238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165245, 37.195641, 44.498772>,  <35.844692, 36.512341, 44.644043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165245, 37.195641, 44.498772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783318, 37.247395, 44.605782>,  <35.554161, 37.278446, 44.669987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783318, 37.247395, 44.605782>,  <36.165245, 37.195641, 44.498772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783318, 37.247395, 44.605782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273169, 0.736598, 0.618710,
		-0.117007, 0.663839, -0.738666,
		-0.954823, 0.129387, 0.267528,
		35.496872, 37.286209, 44.686039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845215, 37.381641, 44.385296>,  <36.165245, 37.195641, 44.498772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845215, 37.381641, 44.385296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071800, 37.211037, 44.667347>,  <37.207752, 37.108673, 44.836578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071800, 37.211037, 44.667347>,  <36.845215, 37.381641, 44.385296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071800, 37.211037, 44.667347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143021, -0.791779, -0.593827,
		0.811579, 0.437231, -0.387516,
		0.566467, -0.426515, 0.705124,
		37.241741, 37.083084, 44.878883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541847, 37.233345, 44.100060>,  <36.845215, 37.381641, 44.385296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541847, 37.233345, 44.100060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495216, 36.996567, 44.419060>,  <37.467239, 36.854500, 44.610458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495216, 36.996567, 44.419060>,  <37.541847, 37.233345, 44.100060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495216, 36.996567, 44.419060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322453, -0.782034, -0.533336,
		0.939380, 0.194982, 0.282041,
		-0.116575, -0.591950, 0.797500,
		37.460243, 36.818981, 44.658310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081730, 36.824081, 44.119350>,  <37.541847, 37.233345, 44.100060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081730, 36.824081, 44.119350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819092, 36.628220, 44.348827>,  <37.661510, 36.510700, 44.486511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819092, 36.628220, 44.348827>,  <38.081730, 36.824081, 44.119350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819092, 36.628220, 44.348827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216411, -0.850940, -0.478610,
		0.722530, -0.190100, 0.664690,
		-0.656595, -0.489656, 0.573690,
		37.622112, 36.481323, 44.520935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382973, 36.167244, 44.274902>,  <38.081730, 36.824081, 44.119350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382973, 36.167244, 44.274902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984936, 36.131531, 44.291965>,  <37.746113, 36.110104, 44.302204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984936, 36.131531, 44.291965>,  <38.382973, 36.167244, 44.274902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984936, 36.131531, 44.291965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023660, -0.633288, -0.773554,
		0.096078, -0.768749, 0.632293,
		-0.995092, -0.089281, 0.042656,
		37.686409, 36.104748, 44.304764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282532, 35.433754, 44.244534>,  <38.382973, 36.167244, 44.274902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282532, 35.433754, 44.244534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936668, 35.602062, 44.134754>,  <37.729153, 35.703045, 44.068886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936668, 35.602062, 44.134754>,  <38.282532, 35.433754, 44.244534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936668, 35.602062, 44.134754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011307, -0.529885, -0.847994,
		-0.502230, -0.736330, 0.453413,
		-0.864660, 0.420762, -0.274450,
		37.677273, 35.728291, 44.052418>
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
