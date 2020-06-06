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
	<24.227045, 34.949894, 34.625900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225494, 34.977295, 35.024956>,  <24.224564, 34.993736, 35.264389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225494, 34.977295, 35.024956>,  <24.227045, 34.949894, 34.625900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225494, 34.977295, 35.024956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999682, -0.024587, 0.005574,
		0.024911, 0.997348, -0.068383,
		-0.003878, 0.068500, 0.997644,
		24.224331, 34.997845, 35.324249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553967, 35.498932, 34.835133>,  <24.227045, 34.949894, 34.625900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553967, 35.498932, 34.835133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.584219, 35.192638, 35.090611>,  <24.602371, 35.008862, 35.243896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.584219, 35.192638, 35.090611>,  <24.553967, 35.498932, 34.835133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.584219, 35.192638, 35.090611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988262, -0.027701, -0.150236,
		0.132734, 0.642560, 0.754652,
		0.075631, -0.765735, 0.638694,
		24.606909, 34.962917, 35.282219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246325, 35.670437, 34.678337>,  <24.553967, 35.498932, 34.835133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246325, 35.670437, 34.678337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995792, 35.958977, 34.796566>,  <24.845472, 36.132099, 34.867504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995792, 35.958977, 34.796566>,  <25.246325, 35.670437, 34.678337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995792, 35.958977, 34.796566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777725, 0.552221, 0.300327,
		0.053418, 0.417980, -0.906884,
		-0.626331, 0.721349, 0.295575,
		24.807894, 36.175381, 34.885239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350588, 36.397724, 34.371708>,  <25.246325, 35.670437, 34.678337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350588, 36.397724, 34.371708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204512, 36.411289, 34.743835>,  <25.116865, 36.419430, 34.967110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204512, 36.411289, 34.743835>,  <25.350588, 36.397724, 34.371708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204512, 36.411289, 34.743835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771468, 0.570341, 0.282042,
		-0.521031, 0.820707, -0.234449,
		-0.365190, 0.033917, 0.930315,
		25.094955, 36.421463, 35.022930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.802008, 36.609261, 34.095879>,  <25.350588, 36.397724, 34.371708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.802008, 36.609261, 34.095879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489544, 36.855301, 34.053108>,  <24.302065, 37.002926, 34.027447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489544, 36.855301, 34.053108>,  <24.802008, 36.609261, 34.095879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.489544, 36.855301, 34.053108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611282, 0.788367, 0.069370,
		0.126969, -0.011175, -0.991844,
		-0.781162, 0.615104, -0.106929,
		24.255196, 37.039833, 34.021030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966297, 37.215153, 33.569660>,  <24.802008, 36.609261, 34.095879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966297, 37.215153, 33.569660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702557, 37.326145, 33.849163>,  <24.544312, 37.392738, 34.016865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702557, 37.326145, 33.849163>,  <24.966297, 37.215153, 33.569660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702557, 37.326145, 33.849163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529100, 0.831550, 0.169050,
		-0.534143, 0.481176, -0.695098,
		-0.659351, 0.277479, 0.698757,
		24.504751, 37.409389, 34.058788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906122, 37.926201, 33.645279>,  <24.966297, 37.215153, 33.569660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906122, 37.926201, 33.645279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758411, 37.815865, 34.000256>,  <24.669785, 37.749664, 34.213242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758411, 37.815865, 34.000256>,  <24.906122, 37.926201, 33.645279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758411, 37.815865, 34.000256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312012, 0.862703, 0.397985,
		-0.875376, 0.423858, -0.232510,
		-0.369276, -0.275840, 0.887439,
		24.647629, 37.733112, 34.266487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661064, 38.624714, 33.433689>,  <24.906122, 37.926201, 33.645279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661064, 38.624714, 33.433689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719357, 38.540257, 33.820301>,  <24.754332, 38.489582, 34.052269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719357, 38.540257, 33.820301>,  <24.661064, 38.624714, 33.433689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719357, 38.540257, 33.820301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561781, 0.821834, 0.094828,
		-0.814349, 0.529159, 0.238383,
		0.145732, -0.211142, 0.966531,
		24.763077, 38.476913, 34.110260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.296513, 39.144135, 33.957371>,  <24.661064, 38.624714, 33.433689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.296513, 39.144135, 33.957371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646477, 38.976414, 34.054295>,  <24.856455, 38.875782, 34.112450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646477, 38.976414, 34.054295>,  <24.296513, 39.144135, 33.957371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646477, 38.976414, 34.054295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453227, 0.885233, -0.104629,
		-0.170632, 0.201363, 0.964540,
		0.874911, -0.419303, 0.242312,
		24.908951, 38.850624, 34.126987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.628876, 39.687576, 34.383461>,  <24.296513, 39.144135, 33.957371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.628876, 39.687576, 34.383461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895210, 39.410454, 34.272697>,  <25.055012, 39.244179, 34.206238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895210, 39.410454, 34.272697>,  <24.628876, 39.687576, 34.383461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895210, 39.410454, 34.272697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706092, 0.705028, -0.066105,
		0.241028, -0.151511, 0.958619,
		0.665837, -0.692806, -0.276912,
		25.094961, 39.202610, 34.189625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229782, 39.720089, 34.799480>,  <24.628876, 39.687576, 34.383461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229782, 39.720089, 34.799480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291100, 39.638878, 34.412640>,  <25.327890, 39.590153, 34.180534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291100, 39.638878, 34.412640>,  <25.229782, 39.720089, 34.799480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291100, 39.638878, 34.412640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811287, 0.584619, 0.005865,
		0.564193, -0.785494, 0.254331,
		0.153294, -0.203027, -0.967099,
		25.337088, 39.577969, 34.122509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913738, 39.349514, 34.609089>,  <25.229782, 39.720089, 34.799480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913738, 39.349514, 34.609089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788849, 39.603104, 34.326080>,  <25.713915, 39.755257, 34.156273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788849, 39.603104, 34.326080>,  <25.913738, 39.349514, 34.609089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788849, 39.603104, 34.326080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877180, 0.478361, 0.041546,
		0.364792, -0.607654, -0.705467,
		-0.312222, 0.633977, -0.707524,
		25.695183, 39.793297, 34.113823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623034, 39.431068, 34.447594>,  <25.913738, 39.349514, 34.609089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623034, 39.431068, 34.447594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731396, 39.048164, 34.407055>,  <26.796413, 38.818424, 34.382732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731396, 39.048164, 34.407055>,  <26.623034, 39.431068, 34.447594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731396, 39.048164, 34.407055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923737, 0.228905, 0.307103,
		-0.270778, -0.176812, 0.946265,
		0.270904, -0.957256, -0.101346,
		26.812668, 38.760986, 34.376652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910528, 39.038765, 35.112854>,  <26.623034, 39.431068, 34.447594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910528, 39.038765, 35.112854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085896, 38.948078, 34.764973>,  <27.191116, 38.893665, 34.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085896, 38.948078, 34.764973>,  <26.910528, 39.038765, 35.112854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085896, 38.948078, 34.764973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883010, 0.289078, 0.369767,
		0.167582, -0.930073, 0.326927,
		0.438417, -0.226714, -0.869707,
		27.217421, 38.880066, 34.504059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469240, 38.735252, 35.272388>,  <26.910528, 39.038765, 35.112854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469240, 38.735252, 35.272388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552319, 38.844200, 34.896584>,  <27.602165, 38.909569, 34.671101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552319, 38.844200, 34.896584>,  <27.469240, 38.735252, 35.272388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552319, 38.844200, 34.896584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913254, 0.290125, 0.285999,
		0.350472, -0.917412, -0.188482,
		0.207695, 0.272366, -0.939510,
		27.614628, 38.925911, 34.614731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052492, 38.412750, 35.031494>,  <27.469240, 38.735252, 35.272388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052492, 38.412750, 35.031494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012417, 38.740818, 34.806183>,  <27.988371, 38.937660, 34.670998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012417, 38.740818, 34.806183>,  <28.052492, 38.412750, 35.031494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012417, 38.740818, 34.806183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952708, 0.242321, 0.183378,
		0.286895, -0.518268, -0.805661,
		-0.100190, 0.820170, -0.563279,
		27.982361, 38.986870, 34.637199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655977, 38.369404, 34.492714>,  <28.052492, 38.412750, 35.031494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655977, 38.369404, 34.492714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525745, 38.723167, 34.626469>,  <28.447607, 38.935425, 34.706722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525745, 38.723167, 34.626469>,  <28.655977, 38.369404, 34.492714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525745, 38.723167, 34.626469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898490, 0.179249, 0.400732,
		0.294472, 0.430916, -0.852993,
		-0.325580, 0.884410, 0.334390,
		28.428072, 38.988491, 34.726784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109320, 38.923054, 34.377182>,  <28.655977, 38.369404, 34.492714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109320, 38.923054, 34.377182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930878, 39.046261, 34.713306>,  <28.823812, 39.120186, 34.914982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930878, 39.046261, 34.713306>,  <29.109320, 38.923054, 34.377182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930878, 39.046261, 34.713306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868705, 0.374859, 0.323776,
		-0.215270, 0.874418, -0.434800,
		-0.446105, 0.308014, 0.840308,
		28.797047, 39.138664, 34.965401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424318, 39.517780, 34.455677>,  <29.109320, 38.923054, 34.377182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424318, 39.517780, 34.455677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285084, 39.400421, 34.811825>,  <29.201544, 39.330006, 35.025513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285084, 39.400421, 34.811825>,  <29.424318, 39.517780, 34.455677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285084, 39.400421, 34.811825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822626, 0.359881, 0.440196,
		-0.449580, 0.885664, 0.116091,
		-0.348086, -0.293403, 0.890365,
		29.180658, 39.312401, 35.078934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241982, 40.123276, 34.934124>,  <29.424318, 39.517780, 34.455677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241982, 40.123276, 34.934124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358250, 39.781063, 35.105507>,  <29.428011, 39.575737, 35.208336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358250, 39.781063, 35.105507>,  <29.241982, 40.123276, 34.934124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358250, 39.781063, 35.105507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822643, 0.452134, 0.344722,
		-0.488642, 0.252268, 0.835219,
		0.290668, -0.855533, 0.428458,
		29.445450, 39.524403, 35.234043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667061, 40.648628, 34.585411>,  <29.241982, 40.123276, 34.934124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667061, 40.648628, 34.585411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031567, 40.571476, 34.730957>,  <30.250269, 40.525185, 34.818283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031567, 40.571476, 34.730957>,  <29.667061, 40.648628, 34.585411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031567, 40.571476, 34.730957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290362, 0.927476, -0.235539,
		-0.292046, 0.320291, 0.901178,
		0.911262, -0.192880, 0.363866,
		30.304945, 40.513611, 34.840118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547964, 40.516312, 33.851040>,  <29.667061, 40.648628, 34.585411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547964, 40.516312, 33.851040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861979, 40.689415, 34.028324>,  <30.050386, 40.793278, 34.134693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861979, 40.689415, 34.028324>,  <29.547964, 40.516312, 33.851040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861979, 40.689415, 34.028324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324128, 0.322752, -0.889254,
		-0.527883, 0.841753, 0.113101,
		0.785035, 0.432763, 0.443211,
		30.097488, 40.819244, 34.161289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540379, 41.139057, 33.511524>,  <29.547964, 40.516312, 33.851040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540379, 41.139057, 33.511524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885460, 40.980331, 33.636929>,  <30.092508, 40.885098, 33.712170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885460, 40.980331, 33.636929>,  <29.540379, 41.139057, 33.511524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885460, 40.980331, 33.636929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323916, -0.042495, -0.945131,
		0.388361, 0.916916, 0.091873,
		0.862702, -0.396811, 0.313507,
		30.144270, 40.861290, 33.730980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866352, 41.218239, 32.986858>,  <29.540379, 41.139057, 33.511524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866352, 41.218239, 32.986858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106403, 40.971840, 33.190975>,  <30.250435, 40.824001, 33.313446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106403, 40.971840, 33.190975>,  <29.866352, 41.218239, 32.986858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106403, 40.971840, 33.190975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528103, -0.174030, -0.831157,
		0.600793, 0.768288, 0.220867,
		0.600130, -0.615993, 0.510291,
		30.286442, 40.787041, 33.344063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941189, 41.391239, 32.198399>,  <29.866352, 41.218239, 32.986858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941189, 41.391239, 32.198399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792803, 41.454090, 31.832294>,  <29.703772, 41.491802, 31.612633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792803, 41.454090, 31.832294>,  <29.941189, 41.391239, 32.198399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792803, 41.454090, 31.832294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181666, 0.954259, 0.237459,
		0.910704, 0.254361, -0.325453,
		-0.370966, 0.157131, -0.915256,
		29.681513, 41.501228, 31.557718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965803, 40.759811, 31.773239>,  <29.941189, 41.391239, 32.198399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965803, 40.759811, 31.773239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942287, 40.942055, 31.417944>,  <29.928179, 41.051399, 31.204767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942287, 40.942055, 31.417944>,  <29.965803, 40.759811, 31.773239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942287, 40.942055, 31.417944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163608, -0.873349, -0.458796,
		-0.984772, -0.172295, -0.023198,
		-0.058788, 0.455605, -0.888239,
		29.924650, 41.078735, 31.151472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656776, 40.328590, 31.328382>,  <29.965803, 40.759811, 31.773239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656776, 40.328590, 31.328382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844906, 40.567921, 31.068905>,  <29.957785, 40.711517, 30.913219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844906, 40.567921, 31.068905>,  <29.656776, 40.328590, 31.328382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844906, 40.567921, 31.068905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246552, -0.794886, -0.554408,
		-0.847352, 0.100816, -0.521374,
		0.470326, 0.598325, -0.648692,
		29.986004, 40.747417, 30.874298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410130, 40.201347, 30.600420>,  <29.656776, 40.328590, 31.328382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410130, 40.201347, 30.600420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782469, 40.346699, 30.615816>,  <30.005873, 40.433910, 30.625053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782469, 40.346699, 30.615816>,  <29.410130, 40.201347, 30.600420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782469, 40.346699, 30.615816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304352, -0.712701, -0.632002,
		-0.202222, 0.600012, -0.774010,
		0.930847, 0.363377, 0.038491,
		30.061724, 40.455711, 30.627363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763647, 40.407539, 29.840466>,  <29.410130, 40.201347, 30.600420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763647, 40.407539, 29.840466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014050, 40.295013, 30.131390>,  <30.164291, 40.227497, 30.305944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014050, 40.295013, 30.131390>,  <29.763647, 40.407539, 29.840466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014050, 40.295013, 30.131390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326266, -0.752631, -0.571925,
		0.708286, 0.595324, -0.379368,
		0.626005, -0.281311, 0.727312,
		30.201851, 40.210621, 30.349583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349703, 40.449753, 29.420092>,  <29.763647, 40.407539, 29.840466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349703, 40.449753, 29.420092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364439, 40.213051, 29.742201>,  <30.373281, 40.071030, 29.935467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364439, 40.213051, 29.742201>,  <30.349703, 40.449753, 29.420092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364439, 40.213051, 29.742201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384593, -0.735359, -0.557975,
		0.922351, 0.330259, 0.200494,
		0.036842, -0.591757, 0.805274,
		30.375492, 40.035522, 29.983784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034719, 40.141235, 29.512186>,  <30.349703, 40.449753, 29.420092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034719, 40.141235, 29.512186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740368, 39.919460, 29.667660>,  <30.563757, 39.786396, 29.760944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740368, 39.919460, 29.667660>,  <31.034719, 40.141235, 29.512186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740368, 39.919460, 29.667660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260656, -0.761756, -0.593115,
		0.624930, -0.335149, 0.705080,
		-0.735881, -0.554439, 0.388686,
		30.519604, 39.753128, 29.784266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186935, 39.484146, 29.431875>,  <31.034719, 40.141235, 29.512186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186935, 39.484146, 29.431875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822994, 39.407013, 29.578835>,  <30.604630, 39.360733, 29.667009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822994, 39.407013, 29.578835>,  <31.186935, 39.484146, 29.431875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822994, 39.407013, 29.578835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048514, -0.928815, -0.367354,
		0.412083, -0.316414, 0.854441,
		-0.909854, -0.192833, 0.367399,
		30.550037, 39.349163, 29.689054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175610, 38.944530, 29.932390>,  <31.186935, 39.484146, 29.431875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175610, 38.944530, 29.932390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834812, 38.953854, 29.723177>,  <30.630333, 38.959446, 29.597649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834812, 38.953854, 29.723177>,  <31.175610, 38.944530, 29.932390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834812, 38.953854, 29.723177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172355, -0.930837, -0.322235,
		-0.494370, -0.364690, 0.789050,
		-0.851993, 0.023307, -0.523034,
		30.579214, 38.960846, 29.566267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769503, 38.260056, 30.093925>,  <31.175610, 38.944530, 29.932390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769503, 38.260056, 30.093925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602453, 38.407520, 29.761736>,  <30.502224, 38.495998, 29.562422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602453, 38.407520, 29.761736>,  <30.769503, 38.260056, 30.093925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602453, 38.407520, 29.761736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136085, -0.929060, -0.343989,
		-0.898373, -0.030641, 0.438163,
		-0.417620, 0.368658, -0.830473,
		30.477167, 38.518116, 29.512594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383406, 38.201790, 30.468458>,  <30.769503, 38.260056, 30.093925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383406, 38.201790, 30.468458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209261, 37.843380, 30.503313>,  <31.104774, 37.628334, 30.524227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209261, 37.843380, 30.503313>,  <31.383406, 38.201790, 30.468458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209261, 37.843380, 30.503313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255343, -0.215721, -0.942478,
		0.863285, -0.388069, 0.322711,
		-0.435362, -0.896028, 0.087138,
		31.078651, 37.574570, 30.529455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895100, 37.634457, 30.124815>,  <31.383406, 38.201790, 30.468458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895100, 37.634457, 30.124815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557451, 37.425690, 30.075733>,  <31.354862, 37.300430, 30.046284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557451, 37.425690, 30.075733>,  <31.895100, 37.634457, 30.124815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557451, 37.425690, 30.075733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354790, -0.372170, -0.857679,
		0.401974, -0.767520, 0.499329,
		-0.844122, -0.521922, -0.122705,
		31.304214, 37.269112, 30.038921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018936, 36.918701, 30.000454>,  <31.895100, 37.634457, 30.124815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018936, 36.918701, 30.000454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705736, 37.052982, 29.790991>,  <31.517817, 37.133549, 29.665314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705736, 37.052982, 29.790991>,  <32.018936, 36.918701, 30.000454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705736, 37.052982, 29.790991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263828, -0.583151, -0.768329,
		-0.563296, -0.739758, 0.368043,
		-0.783002, 0.335696, -0.523656,
		31.470837, 37.153694, 29.633894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709696, 36.385563, 29.825329>,  <32.018936, 36.918701, 30.000454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709696, 36.385563, 29.825329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614054, 36.665665, 29.556263>,  <31.556669, 36.833725, 29.394823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614054, 36.665665, 29.556263>,  <31.709696, 36.385563, 29.825329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614054, 36.665665, 29.556263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367710, -0.575863, -0.730186,
		-0.898677, -0.421935, -0.119799,
		-0.239103, 0.700253, -0.672664,
		31.542322, 36.875740, 29.354464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478561, 36.260342, 29.804422>,  <31.709696, 36.385563, 29.825329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478561, 36.260342, 29.804422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387478, 35.880474, 29.718367>,  <32.332829, 35.652554, 29.666733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387478, 35.880474, 29.718367>,  <32.478561, 36.260342, 29.804422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387478, 35.880474, 29.718367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708146, -0.313155, 0.632822,
		-0.668341, -0.008252, 0.743809,
		-0.227705, -0.949666, -0.215138,
		32.319168, 35.595573, 29.653826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225128, 35.890465, 30.445627>,  <32.478561, 36.260342, 29.804422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225128, 35.890465, 30.445627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408737, 35.655678, 30.178862>,  <32.518902, 35.514805, 30.018803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408737, 35.655678, 30.178862>,  <32.225128, 35.890465, 30.445627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408737, 35.655678, 30.178862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655700, -0.282688, 0.700104,
		-0.599465, -0.758656, 0.255114,
		0.459021, -0.586966, -0.666912,
		32.546444, 35.479588, 29.978788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422951, 35.266201, 30.875931>,  <32.225128, 35.890465, 30.445627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422951, 35.266201, 30.875931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661751, 35.292252, 30.556091>,  <32.805031, 35.307884, 30.364187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661751, 35.292252, 30.556091>,  <32.422951, 35.266201, 30.875931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661751, 35.292252, 30.556091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775285, -0.303053, 0.554159,
		-0.206229, -0.950746, -0.231415,
		0.596995, 0.065129, -0.799596,
		32.840851, 35.311790, 30.316212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937012, 34.731277, 30.908501>,  <32.422951, 35.266201, 30.875931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937012, 34.731277, 30.908501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120636, 34.960011, 30.636539>,  <33.230812, 35.097252, 30.473364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120636, 34.960011, 30.636539>,  <32.937012, 34.731277, 30.908501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120636, 34.960011, 30.636539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887489, -0.260485, 0.380145,
		0.040275, -0.777916, -0.627076,
		0.459065, 0.571834, -0.679901,
		33.258354, 35.131561, 30.432570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458485, 34.311741, 30.506725>,  <32.937012, 34.731277, 30.908501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458485, 34.311741, 30.506725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524696, 34.699780, 30.577736>,  <33.564423, 34.932602, 30.620342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524696, 34.699780, 30.577736>,  <33.458485, 34.311741, 30.506725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524696, 34.699780, 30.577736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839275, -0.233097, 0.491207,
		0.517898, 0.067685, -0.852760,
		0.165528, 0.970095, 0.177527,
		33.574356, 34.990807, 30.630995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201008, 34.460831, 30.253044>,  <33.458485, 34.311741, 30.506725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201008, 34.460831, 30.253044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014297, 34.611103, 30.573290>,  <33.902271, 34.701267, 30.765438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014297, 34.611103, 30.573290>,  <34.201008, 34.460831, 30.253044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014297, 34.611103, 30.573290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714942, -0.372570, 0.591650,
		0.520555, 0.848563, -0.094680,
		-0.466777, 0.375677, 0.800616,
		33.874264, 34.723804, 30.813475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621456, 34.998158, 30.596401>,  <34.201008, 34.460831, 30.253044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621456, 34.998158, 30.596401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391483, 34.764400, 30.825462>,  <34.253498, 34.624146, 30.962900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391483, 34.764400, 30.825462>,  <34.621456, 34.998158, 30.596401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391483, 34.764400, 30.825462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797405, -0.243420, 0.552170,
		-0.183290, 0.774099, 0.605951,
		-0.574935, -0.584395, 0.572654,
		34.219002, 34.589081, 30.997259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735214, 35.232922, 31.279715>,  <34.621456, 34.998158, 30.596401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735214, 35.232922, 31.279715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634438, 34.846447, 31.257772>,  <34.573971, 34.614563, 31.244606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634438, 34.846447, 31.257772>,  <34.735214, 35.232922, 31.279715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634438, 34.846447, 31.257772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835292, -0.245733, 0.491837,
		-0.488687, 0.078091, 0.868958,
		-0.251940, -0.966187, -0.054857,
		34.558857, 34.556591, 31.241316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037441, 34.953548, 31.870844>,  <34.735214, 35.232922, 31.279715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037441, 34.953548, 31.870844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963478, 34.633274, 31.642908>,  <34.919098, 34.441109, 31.506147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963478, 34.633274, 31.642908>,  <35.037441, 34.953548, 31.870844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963478, 34.633274, 31.642908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677917, -0.523717, 0.515897,
		-0.711503, -0.290909, 0.639637,
		-0.184910, -0.800683, -0.569838,
		34.908005, 34.393070, 31.471956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985382, 34.400299, 32.326817>,  <35.037441, 34.953548, 31.870844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985382, 34.400299, 32.326817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101322, 34.268356, 31.967443>,  <35.170887, 34.189190, 31.751820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101322, 34.268356, 31.967443>,  <34.985382, 34.400299, 32.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101322, 34.268356, 31.967443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563543, -0.699919, 0.438785,
		-0.773567, -0.633487, -0.016982,
		0.289851, -0.329859, -0.898431,
		35.188278, 34.169399, 31.697914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042995, 33.581306, 32.145088>,  <34.985382, 34.400299, 32.326817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042995, 33.581306, 32.145088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314743, 33.744209, 31.900923>,  <35.477791, 33.841953, 31.754425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314743, 33.744209, 31.900923>,  <35.042995, 33.581306, 32.145088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314743, 33.744209, 31.900923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714947, -0.554714, 0.425609,
		-0.165270, -0.725555, -0.668023,
		0.679365, 0.407261, -0.610411,
		35.518551, 33.866386, 31.717800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482269, 33.081249, 31.913187>,  <35.042995, 33.581306, 32.145088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482269, 33.081249, 31.913187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683395, 33.426529, 31.931351>,  <35.804070, 33.633698, 31.942249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683395, 33.426529, 31.931351>,  <35.482269, 33.081249, 31.913187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683395, 33.426529, 31.931351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713024, -0.443884, 0.542737,
		0.488649, -0.240515, -0.838674,
		0.502811, 0.863203, 0.045411,
		35.834240, 33.685490, 31.944975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347149, 33.141399, 31.749908>,  <35.482269, 33.081249, 31.913187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347149, 33.141399, 31.749908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185078, 33.374798, 32.031437>,  <36.087833, 33.514835, 32.200356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185078, 33.374798, 32.031437>,  <36.347149, 33.141399, 31.749908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185078, 33.374798, 32.031437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598852, -0.412309, 0.686570,
		0.690803, 0.699666, -0.182369,
		-0.405177, 0.583496, 0.703821,
		36.063526, 33.549847, 32.242584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964401, 33.336945, 32.165791>,  <36.347149, 33.141399, 31.749908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964401, 33.336945, 32.165791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636162, 33.418159, 32.379478>,  <36.439217, 33.466888, 32.507690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636162, 33.418159, 32.379478>,  <36.964401, 33.336945, 32.165791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636162, 33.418159, 32.379478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449660, -0.347553, 0.822808,
		0.352733, 0.915413, 0.193903,
		-0.820600, 0.203041, 0.534218,
		36.389980, 33.479073, 32.539745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239799, 33.609314, 32.860859>,  <36.964401, 33.336945, 32.165791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239799, 33.609314, 32.860859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858818, 33.499676, 32.914085>,  <36.630230, 33.433895, 32.946022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858818, 33.499676, 32.914085>,  <37.239799, 33.609314, 32.860859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858818, 33.499676, 32.914085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199374, -0.230401, 0.952452,
		-0.230401, 0.933696, 0.274093,
		-0.952452, -0.274093, 0.133070,
		36.573082, 33.417446, 32.954006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571579, 33.819313, 33.469250>,  <37.239799, 33.609314, 32.860859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571579, 33.819313, 33.469250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755203, 33.581676, 33.733467>,  <37.865379, 33.439095, 33.891998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755203, 33.581676, 33.733467>,  <37.571579, 33.819313, 33.469250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755203, 33.581676, 33.733467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863775, 0.472331, -0.175489,
		-0.207738, 0.651121, 0.729991,
		0.459062, -0.594092, 0.660543,
		37.892921, 33.403450, 33.931629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115265, 34.220650, 33.748951>,  <37.571579, 33.819313, 33.469250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115265, 34.220650, 33.748951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292568, 33.862385, 33.763458>,  <38.398949, 33.647427, 33.772163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292568, 33.862385, 33.763458>,  <38.115265, 34.220650, 33.748951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292568, 33.862385, 33.763458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792167, 0.372460, -0.483473,
		0.419521, 0.243029, 0.874608,
		0.443254, -0.895662, 0.036264,
		38.425545, 33.593685, 33.774338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875454, 34.417011, 33.830467>,  <38.115265, 34.220650, 33.748951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875454, 34.417011, 33.830467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804691, 34.055843, 33.673782>,  <38.762234, 33.839142, 33.579769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804691, 34.055843, 33.673782>,  <38.875454, 34.417011, 33.830467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804691, 34.055843, 33.673782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735194, 0.143378, -0.662519,
		0.654365, -0.405189, 0.638458,
		-0.176904, -0.902920, -0.391714,
		38.751621, 33.784966, 33.556267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415031, 33.827793, 33.901760>,  <38.875454, 34.417011, 33.830467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415031, 33.827793, 33.901760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189507, 33.821774, 33.571453>,  <39.054192, 33.818161, 33.373268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189507, 33.821774, 33.571453>,  <39.415031, 33.827793, 33.901760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189507, 33.821774, 33.571453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818133, 0.126660, -0.560905,
		0.113028, -0.991832, -0.059107,
		-0.563811, -0.015041, -0.825767,
		39.020363, 33.817261, 33.323723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869698, 33.670311, 33.411514>,  <39.415031, 33.827793, 33.901760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869698, 33.670311, 33.411514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553581, 33.745079, 33.178101>,  <39.363911, 33.789940, 33.038052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553581, 33.745079, 33.178101>,  <39.869698, 33.670311, 33.411514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553581, 33.745079, 33.178101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597521, 0.024172, -0.801489,
		-0.135708, -0.982078, -0.130791,
		-0.790286, 0.186919, -0.583531,
		39.316494, 33.801155, 33.003040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861412, 33.139549, 32.918369>,  <39.869698, 33.670311, 33.411514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861412, 33.139549, 32.918369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700039, 33.473415, 32.768394>,  <39.603214, 33.673737, 32.678410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700039, 33.473415, 32.768394>,  <39.861412, 33.139549, 32.918369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700039, 33.473415, 32.768394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582171, -0.081982, -0.808922,
		-0.705918, -0.544621, -0.452844,
		-0.403431, 0.834665, -0.374935,
		39.579010, 33.723816, 32.655914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856506, 32.969360, 32.196198>,  <39.861412, 33.139549, 32.918369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856506, 32.969360, 32.196198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845272, 33.368607, 32.218006>,  <39.838531, 33.608154, 32.231091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845272, 33.368607, 32.218006>,  <39.856506, 32.969360, 32.196198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845272, 33.368607, 32.218006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631294, 0.060002, -0.773219,
		-0.775035, 0.012707, -0.631790,
		-0.028083, 0.998117, 0.054526,
		39.836845, 33.668041, 32.234364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755211, 33.141136, 31.561472>,  <39.856506, 32.969360, 32.196198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755211, 33.141136, 31.561472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931496, 33.456299, 31.733507>,  <40.037266, 33.645397, 31.836729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931496, 33.456299, 31.733507>,  <39.755211, 33.141136, 31.561472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931496, 33.456299, 31.733507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649544, 0.050787, -0.758626,
		-0.619569, 0.613697, -0.489398,
		0.440711, 0.787907, 0.430089,
		40.063709, 33.692669, 31.862534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814934, 33.681374, 31.088461>,  <39.755211, 33.141136, 31.561472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814934, 33.681374, 31.088461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096832, 33.713757, 31.370390>,  <40.265972, 33.733185, 31.539547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096832, 33.713757, 31.370390>,  <39.814934, 33.681374, 31.088461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096832, 33.713757, 31.370390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707609, -0.008521, -0.706553,
		-0.051192, 0.996681, -0.063289,
		0.704747, 0.080954, 0.704825,
		40.308258, 33.738041, 31.581837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405918, 33.728703, 30.676510>,  <39.814934, 33.681374, 31.088461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405918, 33.728703, 30.676510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561432, 33.818501, 31.033934>,  <40.654739, 33.872379, 31.248388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561432, 33.818501, 31.033934>,  <40.405918, 33.728703, 30.676510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561432, 33.818501, 31.033934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870195, 0.229135, -0.436186,
		-0.302666, 0.947154, -0.106268,
		0.388786, 0.224492, 0.893560,
		40.678066, 33.885849, 31.302002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066940, 34.359222, 30.433701>,  <40.405918, 33.728703, 30.676510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066940, 34.359222, 30.433701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148628, 34.689281, 30.223015>,  <40.197639, 34.887318, 30.096603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148628, 34.689281, 30.223015>,  <40.066940, 34.359222, 30.433701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148628, 34.689281, 30.223015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925164, 0.338540, 0.171646,
		0.319947, 0.452244, 0.832532,
		0.204219, 0.825146, -0.526714,
		40.209892, 34.936825, 30.065001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802326, 34.997410, 30.830067>,  <40.066940, 34.359222, 30.433701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802326, 34.997410, 30.830067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813396, 35.088009, 30.440619>,  <39.820038, 35.142368, 30.206949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813396, 35.088009, 30.440619>,  <39.802326, 34.997410, 30.830067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813396, 35.088009, 30.440619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899494, 0.430519, 0.074587,
		0.436055, 0.873700, 0.215650,
		0.027674, 0.226500, -0.973618,
		39.821697, 35.155960, 30.148533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689522, 35.821571, 30.608976>,  <39.802326, 34.997410, 30.830067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689522, 35.821571, 30.608976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578228, 35.578293, 30.311607>,  <39.511452, 35.432323, 30.133186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578228, 35.578293, 30.311607>,  <39.689522, 35.821571, 30.608976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578228, 35.578293, 30.311607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908863, 0.417092, -0.001071,
		0.310728, 0.675373, -0.668819,
		-0.278236, -0.608198, -0.743424,
		39.494759, 35.395832, 30.088581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536247, 36.273762, 30.055872>,  <39.689522, 35.821571, 30.608976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536247, 36.273762, 30.055872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372211, 35.909996, 30.083559>,  <39.273788, 35.691738, 30.100172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372211, 35.909996, 30.083559>,  <39.536247, 36.273762, 30.055872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372211, 35.909996, 30.083559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910825, 0.412286, 0.020459,
		-0.047143, -0.054655, -0.997392,
		-0.410093, -0.909413, 0.069218,
		39.249184, 35.637173, 30.104324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480690, 36.969700, 30.207035>,  <39.536247, 36.273762, 30.055872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480690, 36.969700, 30.207035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378334, 37.046917, 29.828140>,  <39.316921, 37.093246, 29.600803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378334, 37.046917, 29.828140>,  <39.480690, 36.969700, 30.207035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378334, 37.046917, 29.828140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719021, -0.692963, 0.053013,
		-0.646166, 0.694648, 0.316123,
		-0.255887, 0.193044, -0.947236,
		39.301567, 37.104832, 29.543970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764870, 37.047237, 30.198973>,  <39.480690, 36.969700, 30.207035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764870, 37.047237, 30.198973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836750, 36.983112, 29.810745>,  <38.879879, 36.944637, 29.577808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836750, 36.983112, 29.810745>,  <38.764870, 37.047237, 30.198973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836750, 36.983112, 29.810745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847674, -0.525867, -0.070087,
		-0.499154, 0.835322, -0.230397,
		0.179703, -0.160317, -0.970570,
		38.890659, 36.935017, 29.519575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099503, 37.145683, 29.938698>,  <38.764870, 37.047237, 30.198973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099503, 37.145683, 29.938698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300919, 36.926685, 29.671358>,  <38.421768, 36.795284, 29.510954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300919, 36.926685, 29.671358>,  <38.099503, 37.145683, 29.938698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300919, 36.926685, 29.671358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783744, -0.615005, -0.086684,
		-0.363577, 0.567462, -0.738781,
		0.503545, -0.547499, -0.668347,
		38.451981, 36.762436, 29.470854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640377, 36.994591, 29.398794>,  <38.099503, 37.145683, 29.938698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640377, 36.994591, 29.398794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907600, 36.698254, 29.370939>,  <38.067932, 36.520451, 29.354227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907600, 36.698254, 29.370939>,  <37.640377, 36.994591, 29.398794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907600, 36.698254, 29.370939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736994, -0.645849, -0.199299,
		0.102676, 0.184464, -0.977461,
		0.668056, -0.740846, -0.069635,
		38.108017, 36.476002, 29.350048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469898, 36.654633, 28.778883>,  <37.640377, 36.994591, 29.398794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469898, 36.654633, 28.778883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700249, 36.372910, 28.944925>,  <37.838459, 36.203876, 29.044550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700249, 36.372910, 28.944925>,  <37.469898, 36.654633, 28.778883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700249, 36.372910, 28.944925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643544, -0.703680, -0.301139,
		0.504196, -0.093718, -0.858489,
		0.575880, -0.704309, 0.415104,
		37.873013, 36.161617, 29.069456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711025, 36.139660, 28.212080>,  <37.469898, 36.654633, 28.778883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711025, 36.139660, 28.212080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735058, 35.925564, 28.549103>,  <37.749477, 35.797104, 28.751316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735058, 35.925564, 28.549103>,  <37.711025, 36.139660, 28.212080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735058, 35.925564, 28.549103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477750, -0.756545, -0.446537,
		0.876439, -0.375705, -0.301165,
		0.060078, -0.535244, 0.842558,
		37.753082, 35.764992, 28.801870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805706, 35.556793, 27.972307>,  <37.711025, 36.139660, 28.212080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805706, 35.556793, 27.972307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671551, 35.511272, 28.346380>,  <37.591057, 35.483959, 28.570824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671551, 35.511272, 28.346380>,  <37.805706, 35.556793, 27.972307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671551, 35.511272, 28.346380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625498, -0.715397, -0.311383,
		0.704463, -0.689388, 0.168750,
		-0.335387, -0.113805, 0.935181,
		37.570934, 35.477131, 28.626934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802235, 34.812443, 28.071226>,  <37.805706, 35.556793, 27.972307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802235, 34.812443, 28.071226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559536, 34.980179, 28.341341>,  <37.413918, 35.080822, 28.503410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559536, 34.980179, 28.341341>,  <37.802235, 34.812443, 28.071226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559536, 34.980179, 28.341341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638554, -0.763067, -0.099893,
		0.473400, -0.491816, 0.730760,
		-0.606747, 0.419340, 0.675286,
		37.377510, 35.105980, 28.543926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578968, 34.255707, 28.508512>,  <37.802235, 34.812443, 28.071226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578968, 34.255707, 28.508512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325573, 34.562843, 28.546688>,  <37.173534, 34.747124, 28.569593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325573, 34.562843, 28.546688>,  <37.578968, 34.255707, 28.508512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325573, 34.562843, 28.546688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762219, -0.598071, -0.247654,
		-0.133078, -0.229634, 0.964136,
		-0.633492, 0.767840, 0.095442,
		37.135525, 34.793194, 28.575321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066360, 33.916172, 28.767355>,  <37.578968, 34.255707, 28.508512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066360, 33.916172, 28.767355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925888, 34.244797, 28.587711>,  <36.841602, 34.441971, 28.479925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925888, 34.244797, 28.587711>,  <37.066360, 33.916172, 28.767355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925888, 34.244797, 28.587711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798457, -0.513297, -0.314631,
		-0.489018, 0.248105, 0.836245,
		-0.351181, 0.821565, -0.449113,
		36.820534, 34.491268, 28.452978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267887, 33.918667, 28.990082>,  <37.066360, 33.916172, 28.767355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267887, 33.918667, 28.990082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334930, 34.161633, 28.679482>,  <36.375156, 34.307411, 28.493120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334930, 34.161633, 28.679482>,  <36.267887, 33.918667, 28.990082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334930, 34.161633, 28.679482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920452, -0.185689, -0.343930,
		-0.353096, 0.772377, 0.527974,
		0.167605, 0.607415, -0.776502,
		36.385212, 34.343857, 28.446531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723778, 34.359543, 28.925903>,  <36.267887, 33.918667, 28.990082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723778, 34.359543, 28.925903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899227, 34.351120, 28.566534>,  <36.004498, 34.346066, 28.350912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899227, 34.351120, 28.566534>,  <35.723778, 34.359543, 28.925903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899227, 34.351120, 28.566534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898640, -0.001897, -0.438684,
		0.007532, 0.999776, -0.019754,
		0.438623, -0.021056, -0.898424,
		36.030815, 34.344803, 28.297007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643986, 35.057968, 28.494862>,  <35.723778, 34.359543, 28.925903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643986, 35.057968, 28.494862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714558, 34.743881, 28.257439>,  <35.756901, 34.555431, 28.114985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714558, 34.743881, 28.257439>,  <35.643986, 35.057968, 28.494862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714558, 34.743881, 28.257439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842798, 0.191013, -0.503196,
		0.508494, 0.589027, -0.628077,
		0.176426, -0.785214, -0.593560,
		35.767487, 34.508316, 28.079370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168045, 35.181660, 27.984461>,  <35.643986, 35.057968, 28.494862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168045, 35.181660, 27.984461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275074, 34.810932, 27.879078>,  <35.339291, 34.588497, 27.815847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275074, 34.810932, 27.879078>,  <35.168045, 35.181660, 27.984461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275074, 34.810932, 27.879078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886805, -0.129950, -0.443498,
		0.376806, 0.352303, -0.856679,
		0.267571, -0.926820, -0.263458,
		35.355347, 34.532887, 27.800041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887871, 35.092739, 27.358845>,  <35.168045, 35.181660, 27.984461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887871, 35.092739, 27.358845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957081, 34.706711, 27.437542>,  <34.998608, 34.475094, 27.484760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957081, 34.706711, 27.437542>,  <34.887871, 35.092739, 27.358845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957081, 34.706711, 27.437542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819811, -0.251824, -0.514290,
		0.545869, -0.072307, -0.834745,
		0.173022, -0.965068, 0.196741,
		35.008987, 34.417191, 27.496565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854908, 34.626007, 26.742947>,  <34.887871, 35.092739, 27.358845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854908, 34.626007, 26.742947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777805, 34.388783, 27.055645>,  <34.731544, 34.246449, 27.243263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777805, 34.388783, 27.055645>,  <34.854908, 34.626007, 26.742947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777805, 34.388783, 27.055645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803274, -0.362188, -0.472833,
		0.563556, -0.719098, -0.406575,
		-0.192757, -0.593059, 0.781745,
		34.719978, 34.210865, 27.290169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655994, 34.084862, 26.482603>,  <34.854908, 34.626007, 26.742947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655994, 34.084862, 26.482603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540123, 33.991814, 26.853973>,  <34.470600, 33.935986, 27.076796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540123, 33.991814, 26.853973>,  <34.655994, 34.084862, 26.482603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540123, 33.991814, 26.853973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787905, -0.492771, -0.369299,
		0.543409, -0.838488, -0.040541,
		-0.289676, -0.232623, 0.928426,
		34.453220, 33.922028, 27.132502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526505, 33.379757, 26.538982>,  <34.655994, 34.084862, 26.482603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526505, 33.379757, 26.538982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312618, 33.552490, 26.829527>,  <34.184288, 33.656132, 27.003853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312618, 33.552490, 26.829527>,  <34.526505, 33.379757, 26.538982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312618, 33.552490, 26.829527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832184, -0.418421, -0.363860,
		0.146799, -0.799028, 0.583100,
		-0.534715, 0.431832, 0.726362,
		34.152203, 33.682041, 27.047436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984421, 32.927635, 26.653053>,  <34.526505, 33.379757, 26.538982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984421, 32.927635, 26.653053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854008, 33.233990, 26.874727>,  <33.775761, 33.417801, 27.007732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854008, 33.233990, 26.874727>,  <33.984421, 32.927635, 26.653053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854008, 33.233990, 26.874727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944739, -0.285197, -0.161653,
		0.034244, -0.576265, 0.816545,
		-0.326031, 0.765886, 0.554186,
		33.756199, 33.463757, 27.040983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393265, 32.746090, 27.230539>,  <33.984421, 32.927635, 26.653053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393265, 32.746090, 27.230539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360912, 33.117592, 27.085835>,  <33.341499, 33.340492, 26.999012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360912, 33.117592, 27.085835>,  <33.393265, 32.746090, 27.230539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360912, 33.117592, 27.085835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943803, -0.188061, -0.271788,
		-0.320458, 0.319451, 0.891772,
		-0.080884, 0.928754, -0.361765,
		33.336647, 33.396217, 26.977304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802006, 33.002579, 27.465994>,  <33.393265, 32.746090, 27.230539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802006, 33.002579, 27.465994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857609, 33.250839, 27.157326>,  <32.890972, 33.399796, 26.972126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857609, 33.250839, 27.157326>,  <32.802006, 33.002579, 27.465994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857609, 33.250839, 27.157326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907998, -0.231123, -0.349461,
		-0.395242, 0.749252, 0.531417,
		0.139012, 0.620647, -0.771669,
		32.899311, 33.437035, 26.925825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166912, 33.388737, 27.399734>,  <32.802006, 33.002579, 27.465994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166912, 33.388737, 27.399734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329018, 33.448975, 27.039049>,  <32.426281, 33.485119, 26.822638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329018, 33.448975, 27.039049>,  <32.166912, 33.388737, 27.399734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329018, 33.448975, 27.039049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852982, -0.292581, -0.432225,
		-0.328915, 0.944308, 0.009883,
		0.405262, 0.150595, -0.901712,
		32.450596, 33.494152, 26.768536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529385, 33.568939, 27.048277>,  <32.166912, 33.388737, 27.399734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529385, 33.568939, 27.048277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811193, 33.506729, 26.771303>,  <31.980278, 33.469402, 26.605120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811193, 33.506729, 26.771303>,  <31.529385, 33.568939, 27.048277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811193, 33.506729, 26.771303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707648, -0.080122, -0.702007,
		0.053699, 0.984577, -0.166504,
		0.704521, -0.155523, -0.692432,
		32.022549, 33.460072, 26.563574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637468, 34.166645, 26.578831>,  <31.529385, 33.568939, 27.048277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637468, 34.166645, 26.578831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742195, 33.831806, 26.386698>,  <31.805031, 33.630901, 26.271418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742195, 33.831806, 26.386698>,  <31.637468, 34.166645, 26.578831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742195, 33.831806, 26.386698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696673, 0.180502, -0.694310,
		0.667906, 0.516418, -0.535924,
		0.261819, -0.837098, -0.480332,
		31.820742, 33.580677, 26.242598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446230, 34.274399, 25.835392>,  <31.637468, 34.166645, 26.578831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446230, 34.274399, 25.835392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482038, 33.877083, 25.864672>,  <31.503525, 33.638695, 25.882238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482038, 33.877083, 25.864672>,  <31.446230, 34.274399, 25.835392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482038, 33.877083, 25.864672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681730, -0.114689, -0.722559,
		0.726106, 0.014786, -0.687424,
		0.089524, -0.993291, 0.073197,
		31.508896, 33.579094, 25.886631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392000, 34.075890, 25.204060>,  <31.446230, 34.274399, 25.835392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392000, 34.075890, 25.204060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330341, 33.735466, 25.404831>,  <31.293346, 33.531212, 25.525293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330341, 33.735466, 25.404831>,  <31.392000, 34.075890, 25.204060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330341, 33.735466, 25.404831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749663, -0.230171, -0.620506,
		0.643618, -0.471925, -0.602530,
		-0.154148, -0.851063, 0.501927,
		31.284098, 33.480148, 25.555408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298512, 33.639061, 24.674314>,  <31.392000, 34.075890, 25.204060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298512, 33.639061, 24.674314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160648, 33.424603, 24.982536>,  <31.077930, 33.295925, 25.167469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160648, 33.424603, 24.982536>,  <31.298512, 33.639061, 24.674314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160648, 33.424603, 24.982536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778170, -0.295926, -0.553966,
		0.525036, -0.790552, -0.315221,
		-0.344657, -0.536148, 0.770556,
		31.057251, 33.263760, 25.213703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237320, 32.924191, 24.483116>,  <31.298512, 33.639061, 24.674314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237320, 32.924191, 24.483116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985027, 32.949783, 24.792459>,  <30.833652, 32.965137, 24.978065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985027, 32.949783, 24.792459>,  <31.237320, 32.924191, 24.483116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985027, 32.949783, 24.792459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668613, -0.550645, -0.499747,
		0.393872, -0.832284, 0.390088,
		-0.630731, 0.063981, 0.773359,
		30.795809, 32.968979, 25.024467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956688, 32.220825, 24.565437>,  <31.237320, 32.924191, 24.483116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956688, 32.220825, 24.565437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709917, 32.493546, 24.722691>,  <30.561855, 32.657177, 24.817043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709917, 32.493546, 24.722691>,  <30.956688, 32.220825, 24.565437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709917, 32.493546, 24.722691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786366, -0.513631, -0.343238,
		-0.032092, -0.520900, 0.853014,
		-0.616927, 0.681796, 0.393134,
		30.524839, 32.698086, 24.840631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508028, 31.867682, 25.033104>,  <30.956688, 32.220825, 24.565437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508028, 31.867682, 25.033104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348145, 32.216053, 24.918762>,  <30.252214, 32.425076, 24.850157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348145, 32.216053, 24.918762>,  <30.508028, 31.867682, 25.033104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348145, 32.216053, 24.918762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762160, -0.489026, -0.424224,
		-0.509260, 0.048301, 0.859256,
		-0.399708, 0.870931, -0.285854,
		30.228231, 32.477333, 24.833006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832602, 31.883142, 25.316797>,  <30.508028, 31.867682, 25.033104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832602, 31.883142, 25.316797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827509, 32.156860, 25.025160>,  <29.824453, 32.321091, 24.850178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827509, 32.156860, 25.025160>,  <29.832602, 31.883142, 25.316797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827509, 32.156860, 25.025160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840515, -0.402292, -0.362897,
		-0.541638, 0.608196, 0.580281,
		-0.012730, 0.684294, -0.729095,
		29.823690, 32.362148, 24.806431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142963, 32.189289, 25.288387>,  <29.832602, 31.883142, 25.316797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142963, 32.189289, 25.288387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301699, 32.291042, 24.935614>,  <29.396940, 32.352093, 24.723949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301699, 32.291042, 24.935614>,  <29.142963, 32.189289, 25.288387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301699, 32.291042, 24.935614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823532, -0.325644, -0.464489,
		-0.405355, 0.910629, 0.080264,
		0.396839, 0.254383, -0.881934,
		29.420750, 32.367359, 24.671034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529802, 32.360142, 24.905272>,  <29.142963, 32.189289, 25.288387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529802, 32.360142, 24.905272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814325, 32.303165, 24.629953>,  <28.985039, 32.268978, 24.464762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814325, 32.303165, 24.629953>,  <28.529802, 32.360142, 24.905272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814325, 32.303165, 24.629953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654453, -0.491409, -0.574637,
		-0.256381, 0.859201, -0.442766,
		0.711308, -0.142444, -0.688295,
		29.027718, 32.260433, 24.423466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186502, 32.583282, 24.381094>,  <28.529802, 32.360142, 24.905272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186502, 32.583282, 24.381094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486128, 32.362755, 24.234154>,  <28.665903, 32.230438, 24.145990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486128, 32.362755, 24.234154>,  <28.186502, 32.583282, 24.381094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486128, 32.362755, 24.234154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625618, -0.406238, -0.666013,
		0.217956, 0.728708, -0.649215,
		0.749065, -0.551322, -0.367350,
		28.710848, 32.197357, 24.123949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222134, 32.652813, 23.594343>,  <28.186502, 32.583282, 24.381094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222134, 32.652813, 23.594343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379498, 32.296738, 23.686253>,  <28.473915, 32.083092, 23.741398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379498, 32.296738, 23.686253>,  <28.222134, 32.652813, 23.594343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379498, 32.296738, 23.686253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551319, -0.428433, -0.715886,
		0.735715, 0.154958, -0.659327,
		0.393410, -0.890187, 0.229773,
		28.497520, 32.029682, 23.755184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447989, 32.356640, 22.956289>,  <28.222134, 32.652813, 23.594343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447989, 32.356640, 22.956289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439478, 32.055786, 23.219753>,  <28.434372, 31.875273, 23.377832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439478, 32.055786, 23.219753>,  <28.447989, 32.356640, 22.956289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439478, 32.055786, 23.219753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478266, -0.570880, -0.667351,
		0.877957, -0.329215, -0.347576,
		-0.021278, -0.752139, 0.658661,
		28.433094, 31.830145, 23.417351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563944, 31.878401, 22.582815>,  <28.447989, 32.356640, 22.956289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563944, 31.878401, 22.582815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397909, 31.675997, 22.885248>,  <28.298288, 31.554554, 23.066708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397909, 31.675997, 22.885248>,  <28.563944, 31.878401, 22.582815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397909, 31.675997, 22.885248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466433, -0.595165, -0.654385,
		0.781118, -0.624287, 0.011024,
		-0.415085, -0.506009, 0.756082,
		28.273384, 31.524195, 23.112072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547258, 31.176128, 22.420263>,  <28.563944, 31.878401, 22.582815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547258, 31.176128, 22.420263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251181, 31.199928, 22.688166>,  <28.073534, 31.214209, 22.848907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251181, 31.199928, 22.688166>,  <28.547258, 31.176128, 22.420263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251181, 31.199928, 22.688166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550424, -0.625727, -0.552720,
		0.386198, -0.777769, 0.495909,
		-0.740192, 0.059501, 0.669757,
		28.029123, 31.217779, 22.889093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324402, 30.579435, 22.489561>,  <28.547258, 31.176128, 22.420263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324402, 30.579435, 22.489561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001104, 30.773914, 22.622437>,  <27.807125, 30.890602, 22.702162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001104, 30.773914, 22.622437>,  <28.324402, 30.579435, 22.489561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001104, 30.773914, 22.622437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588786, -0.659203, -0.467742,
		-0.008435, -0.573639, 0.819065,
		-0.808245, 0.486199, 0.332191,
		27.758631, 30.919775, 22.722094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800741, 30.155138, 22.765175>,  <28.324402, 30.579435, 22.489561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800741, 30.155138, 22.765175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592751, 30.480961, 22.662317>,  <27.467957, 30.676455, 22.600603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592751, 30.480961, 22.662317>,  <27.800741, 30.155138, 22.765175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592751, 30.480961, 22.662317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625763, -0.568169, -0.534420,
		-0.581419, -0.116972, 0.805152,
		-0.519975, 0.814556, -0.257147,
		27.436758, 30.725328, 22.585175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058405, 29.883705, 22.742035>,  <27.800741, 30.155138, 22.765175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058405, 29.883705, 22.742035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028503, 30.249681, 22.583395>,  <27.010563, 30.469267, 22.488211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028503, 30.249681, 22.583395>,  <27.058405, 29.883705, 22.742035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028503, 30.249681, 22.583395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666375, -0.341710, -0.662706,
		-0.741860, 0.214746, 0.635239,
		-0.074754, 0.914942, -0.396602,
		27.006077, 30.524164, 22.464415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307001, 30.128635, 22.735691>,  <27.058405, 29.883705, 22.742035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307001, 30.128635, 22.735691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501116, 30.309528, 22.436363>,  <26.617584, 30.418064, 22.256767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501116, 30.309528, 22.436363>,  <26.307001, 30.128635, 22.735691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501116, 30.309528, 22.436363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726645, -0.267410, -0.632834,
		-0.486296, 0.850869, 0.198842,
		0.485286, 0.452232, -0.748320,
		26.646702, 30.445198, 22.211866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924969, 30.728453, 22.563822>,  <26.307001, 30.128635, 22.735691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924969, 30.728453, 22.563822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123873, 30.585178, 22.247738>,  <26.243216, 30.499214, 22.058086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123873, 30.585178, 22.247738>,  <25.924969, 30.728453, 22.563822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123873, 30.585178, 22.247738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862361, -0.304002, -0.404866,
		-0.095209, 0.882772, -0.460054,
		0.497261, -0.358186, -0.790212,
		26.273050, 30.477722, 22.010674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629847, 30.997204, 21.854671>,  <25.924969, 30.728453, 22.563822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629847, 30.997204, 21.854671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845694, 30.663696, 21.807959>,  <25.975203, 30.463591, 21.779930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845694, 30.663696, 21.807959>,  <25.629847, 30.997204, 21.854671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845694, 30.663696, 21.807959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601957, -0.285113, -0.745894,
		0.588608, 0.472797, -0.655747,
		0.539619, -0.833771, -0.116784,
		26.007580, 30.413565, 21.772924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893526, 30.947912, 21.222528>,  <25.629847, 30.997204, 21.854671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893526, 30.947912, 21.222528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851112, 30.578011, 21.368727>,  <25.825665, 30.356070, 21.456446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851112, 30.578011, 21.368727>,  <25.893526, 30.947912, 21.222528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851112, 30.578011, 21.368727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566847, -0.245780, -0.786306,
		0.816971, -0.290556, -0.498133,
		-0.106035, -0.924754, 0.365496,
		25.819302, 30.300585, 21.478374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075500, 31.335007, 20.614449>,  <25.893526, 30.947912, 21.222528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075500, 31.335007, 20.614449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248861, 31.177698, 20.290104>,  <26.352879, 31.083313, 20.095497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248861, 31.177698, 20.290104>,  <26.075500, 31.335007, 20.614449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248861, 31.177698, 20.290104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901119, -0.201240, -0.384040,
		-0.012146, 0.897129, -0.441603,
		0.433402, -0.393272, -0.810864,
		26.378881, 31.059717, 20.046844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886230, 31.594986, 19.872566>,  <26.075500, 31.335007, 20.614449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886230, 31.594986, 19.872566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955986, 31.201199, 19.864450>,  <25.997839, 30.964926, 19.859581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955986, 31.201199, 19.864450>,  <25.886230, 31.594986, 19.872566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955986, 31.201199, 19.864450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960550, -0.165548, -0.223465,
		0.216636, 0.058459, -0.974501,
		0.174391, -0.984467, -0.020290,
		26.008303, 30.905859, 19.858364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948469, 31.224304, 19.196365>,  <25.886230, 31.594986, 19.872566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948469, 31.224304, 19.196365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822033, 30.974487, 19.482031>,  <25.746170, 30.824596, 19.653431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822033, 30.974487, 19.482031>,  <25.948469, 31.224304, 19.196365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822033, 30.974487, 19.482031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865033, -0.119414, -0.487296,
		0.389619, -0.771807, -0.502505,
		-0.316093, -0.624543, 0.714165,
		25.727205, 30.787125, 19.696280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633591, 30.558146, 18.967892>,  <25.948469, 31.224304, 19.196365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633591, 30.558146, 18.967892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471178, 30.642622, 19.323540>,  <25.373730, 30.693308, 19.536928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471178, 30.642622, 19.323540>,  <25.633591, 30.558146, 18.967892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471178, 30.642622, 19.323540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890244, 0.128336, -0.437029,
		-0.206403, -0.968983, 0.135903,
		-0.406032, 0.211191, 0.889121,
		25.349369, 30.705980, 19.590277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101305, 30.098537, 19.337259>,  <25.633591, 30.558146, 18.967892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101305, 30.098537, 19.337259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142927, 30.447470, 19.146173>,  <26.167900, 30.656830, 19.031523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142927, 30.447470, 19.146173>,  <26.101305, 30.098537, 19.337259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142927, 30.447470, 19.146173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644377, 0.306744, 0.700491,
		0.757596, -0.380719, -0.530191,
		0.104057, 0.872331, -0.477714,
		26.174145, 30.709169, 19.002859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838196, 30.199690, 19.410194>,  <26.101305, 30.098537, 19.337259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838196, 30.199690, 19.410194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640064, 30.540089, 19.340389>,  <26.521185, 30.744328, 19.298506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640064, 30.540089, 19.340389>,  <26.838196, 30.199690, 19.410194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640064, 30.540089, 19.340389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525551, 0.453513, 0.719807,
		0.691696, 0.264827, -0.671880,
		-0.495331, 0.850995, -0.174513,
		26.491465, 30.795387, 19.288034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184481, 30.728786, 19.022812>,  <26.838196, 30.199690, 19.410194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184481, 30.728786, 19.022812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927114, 30.905582, 19.272823>,  <26.772696, 31.011660, 19.422831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927114, 30.905582, 19.272823>,  <27.184481, 30.728786, 19.022812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927114, 30.905582, 19.272823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765276, 0.391827, 0.510709,
		-0.019176, 0.806918, -0.590352,
		-0.643416, 0.441989, 0.625029,
		26.734089, 31.038179, 19.460333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195168, 31.448284, 18.946913>,  <27.184481, 30.728786, 19.022812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195168, 31.448284, 18.946913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125820, 31.291464, 19.308296>,  <27.084211, 31.197371, 19.525127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125820, 31.291464, 19.308296>,  <27.195168, 31.448284, 18.946913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125820, 31.291464, 19.308296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835839, 0.426606, 0.345515,
		-0.520881, 0.815048, 0.253733,
		-0.173368, -0.392052, 0.903459,
		27.073811, 31.173849, 19.579334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477421, 31.979204, 19.415312>,  <27.195168, 31.448284, 18.946913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477421, 31.979204, 19.415312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401627, 31.671522, 19.659416>,  <27.356150, 31.486914, 19.805880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401627, 31.671522, 19.659416>,  <27.477421, 31.979204, 19.415312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401627, 31.671522, 19.659416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738414, 0.298021, 0.604920,
		-0.647178, 0.565251, 0.511520,
		-0.189488, -0.769204, 0.610262,
		27.344780, 31.440762, 19.842495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367069, 32.241104, 20.042019>,  <27.477421, 31.979204, 19.415312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367069, 32.241104, 20.042019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479172, 31.862919, 20.108410>,  <27.546434, 31.636007, 20.148245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479172, 31.862919, 20.108410>,  <27.367069, 32.241104, 20.042019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479172, 31.862919, 20.108410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722147, 0.321575, 0.612449,
		-0.632424, -0.051785, 0.772889,
		0.280258, -0.945467, 0.165976,
		27.563250, 31.579279, 20.158203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485867, 32.265636, 20.681318>,  <27.367069, 32.241104, 20.042019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485867, 32.265636, 20.681318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686239, 31.944122, 20.552950>,  <27.806463, 31.751213, 20.475929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686239, 31.944122, 20.552950>,  <27.485867, 32.265636, 20.681318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686239, 31.944122, 20.552950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725657, 0.187974, 0.661882,
		-0.471688, -0.564437, 0.677437,
		0.500931, -0.803789, -0.320923,
		27.836519, 31.702986, 20.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781906, 32.000103, 21.187571>,  <27.485867, 32.265636, 20.681318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781906, 32.000103, 21.187571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005505, 31.824371, 20.906284>,  <28.139664, 31.718933, 20.737513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005505, 31.824371, 20.906284>,  <27.781906, 32.000103, 21.187571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005505, 31.824371, 20.906284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829060, 0.282380, 0.482619,
		-0.013454, -0.852791, 0.522079,
		0.558998, -0.439328, -0.703216,
		28.173204, 31.692574, 20.695320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218021, 31.536137, 21.504032>,  <27.781906, 32.000103, 21.187571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218021, 31.536137, 21.504032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393465, 31.618177, 21.154049>,  <28.498732, 31.667402, 20.944059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393465, 31.618177, 21.154049>,  <28.218021, 31.536137, 21.504032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393465, 31.618177, 21.154049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861519, 0.181107, 0.474327,
		0.255745, -0.961839, -0.097262,
		0.438611, 0.205099, -0.874959,
		28.525049, 31.679707, 20.891562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802034, 31.149672, 21.592812>,  <28.218021, 31.536137, 21.504032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802034, 31.149672, 21.592812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885792, 31.385782, 21.280985>,  <28.936047, 31.527449, 21.093889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885792, 31.385782, 21.280985>,  <28.802034, 31.149672, 21.592812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885792, 31.385782, 21.280985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952824, 0.055979, 0.298317,
		0.219730, -0.805256, -0.550710,
		0.209393, 0.590279, -0.779567,
		28.948610, 31.562866, 21.047115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389948, 30.928753, 21.174093>,  <28.802034, 31.149672, 21.592812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389948, 30.928753, 21.174093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363689, 31.326773, 21.144257>,  <29.347935, 31.565584, 21.126354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363689, 31.326773, 21.144257>,  <29.389948, 30.928753, 21.174093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363689, 31.326773, 21.144257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966193, 0.082064, 0.244410,
		0.249322, -0.056027, -0.966798,
		-0.065646, 0.995051, -0.074593,
		29.343996, 31.625288, 21.121878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985950, 31.157568, 21.279079>,  <29.389948, 30.928753, 21.174093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985950, 31.157568, 21.279079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802273, 31.512466, 21.296671>,  <29.692066, 31.725405, 21.307226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802273, 31.512466, 21.296671>,  <29.985950, 31.157568, 21.279079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802273, 31.512466, 21.296671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809491, 0.397536, 0.432075,
		0.365874, 0.234007, -0.900765,
		-0.459195, 0.887246, 0.043978,
		29.664515, 31.778641, 21.309864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553020, 31.622427, 21.317839>,  <29.985950, 31.157568, 21.279079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553020, 31.622427, 21.317839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248564, 31.866056, 21.407007>,  <30.065889, 32.012234, 21.460508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248564, 31.866056, 21.407007>,  <30.553020, 31.622427, 21.317839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248564, 31.866056, 21.407007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619375, 0.580596, 0.528472,
		0.192451, 0.540314, -0.819160,
		-0.761142, 0.609072, 0.222921,
		30.020222, 32.048779, 21.473883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753885, 32.284981, 21.069683>,  <30.553020, 31.622427, 21.317839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753885, 32.284981, 21.069683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478188, 32.339844, 21.354254>,  <30.312769, 32.372761, 21.524996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478188, 32.339844, 21.354254>,  <30.753885, 32.284981, 21.069683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478188, 32.339844, 21.354254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625287, 0.608627, 0.488455,
		-0.366001, 0.781512, -0.505255,
		-0.689246, 0.137154, 0.711428,
		30.271414, 32.380989, 21.567682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597054, 33.065975, 21.070038>,  <30.753885, 32.284981, 21.069683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597054, 33.065975, 21.070038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508659, 32.898697, 21.422464>,  <30.455624, 32.798328, 21.633921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508659, 32.898697, 21.422464>,  <30.597054, 33.065975, 21.070038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508659, 32.898697, 21.422464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371050, 0.799414, 0.472504,
		-0.901936, 0.431335, -0.021486,
		-0.220983, -0.418196, 0.881067,
		30.442364, 32.773239, 21.686785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488640, 33.684273, 21.414198>,  <30.597054, 33.065975, 21.070038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488640, 33.684273, 21.414198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555849, 33.387405, 21.673723>,  <30.596174, 33.209286, 21.829437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555849, 33.387405, 21.673723>,  <30.488640, 33.684273, 21.414198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555849, 33.387405, 21.673723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499590, 0.631496, 0.592977,
		-0.849810, 0.224505, 0.476886,
		0.168025, -0.742166, 0.648812,
		30.606256, 33.164757, 21.868366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286961, 33.913891, 22.137129>,  <30.488640, 33.684273, 21.414198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286961, 33.913891, 22.137129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546074, 33.609806, 22.156939>,  <30.701542, 33.427357, 22.168823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546074, 33.609806, 22.156939>,  <30.286961, 33.913891, 22.137129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546074, 33.609806, 22.156939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590091, 0.541813, 0.598524,
		-0.481838, -0.358492, 0.799572,
		0.647785, -0.760212, 0.049523,
		30.740410, 33.381744, 22.171795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411028, 33.840309, 22.709185>,  <30.286961, 33.913891, 22.137129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411028, 33.840309, 22.709185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736340, 33.662926, 22.558495>,  <30.931526, 33.556496, 22.468081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736340, 33.662926, 22.558495>,  <30.411028, 33.840309, 22.709185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736340, 33.662926, 22.558495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577213, 0.533098, 0.618573,
		-0.073478, -0.720524, 0.689526,
		0.813281, -0.443455, -0.376725,
		30.980324, 33.529888, 22.445477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754856, 33.706947, 23.323187>,  <30.411028, 33.840309, 22.709185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754856, 33.706947, 23.323187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054903, 33.669834, 23.061281>,  <31.234930, 33.647564, 22.904139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054903, 33.669834, 23.061281>,  <30.754856, 33.706947, 23.323187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054903, 33.669834, 23.061281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637127, 0.366678, 0.677950,
		0.177184, -0.925709, 0.334168,
		0.750116, -0.092786, -0.654764,
		31.279938, 33.641998, 22.864851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323198, 33.446938, 23.742676>,  <30.754856, 33.706947, 23.323187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323198, 33.446938, 23.742676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491554, 33.576954, 23.403925>,  <31.592567, 33.654964, 23.200674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491554, 33.576954, 23.403925>,  <31.323198, 33.446938, 23.742676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491554, 33.576954, 23.403925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823579, 0.254397, 0.506952,
		0.380223, -0.910841, -0.160624,
		0.420891, 0.325041, -0.846876,
		31.617821, 33.674465, 23.149862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987497, 33.318375, 23.901266>,  <31.323198, 33.446938, 23.742676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987497, 33.318375, 23.901266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003696, 33.583515, 23.602205>,  <32.013416, 33.742599, 23.422770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003696, 33.583515, 23.602205>,  <31.987497, 33.318375, 23.901266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003696, 33.583515, 23.602205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854931, 0.364301, 0.369294,
		0.517159, -0.654146, -0.551942,
		0.040499, 0.662856, -0.747651,
		32.015846, 33.782372, 23.377911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635105, 33.241089, 23.711006>,  <31.987497, 33.318375, 23.901266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635105, 33.241089, 23.711006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524239, 33.594379, 23.559700>,  <32.457718, 33.806355, 23.468916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524239, 33.594379, 23.559700>,  <32.635105, 33.241089, 23.711006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524239, 33.594379, 23.559700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864434, 0.401087, 0.303124,
		0.419445, -0.242970, -0.874661,
		-0.277164, 0.883230, -0.378265,
		32.441090, 33.859348, 23.446220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327648, 33.558506, 23.597748>,  <32.635105, 33.241089, 23.711006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327648, 33.558506, 23.597748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084229, 33.875526, 23.582067>,  <32.938179, 34.065739, 23.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084229, 33.875526, 23.582067>,  <33.327648, 33.558506, 23.597748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084229, 33.875526, 23.582067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726391, 0.576272, 0.374522,
		0.319418, 0.199439, -0.926389,
		-0.608546, 0.792549, -0.039201,
		32.901665, 34.113293, 23.570307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765526, 34.048729, 23.298206>,  <33.327648, 33.558506, 23.597748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765526, 34.048729, 23.298206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479374, 34.249924, 23.492208>,  <33.307682, 34.370640, 23.608610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479374, 34.249924, 23.492208>,  <33.765526, 34.048729, 23.298206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479374, 34.249924, 23.492208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695761, 0.576736, 0.428127,
		-0.064378, 0.643723, -0.762546,
		-0.715383, 0.502988, 0.485006,
		33.264759, 34.400822, 23.637711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848278, 34.834362, 23.150330>,  <33.765526, 34.048729, 23.298206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848278, 34.834362, 23.150330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659008, 34.799778, 23.501015>,  <33.545444, 34.779030, 23.711426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659008, 34.799778, 23.501015>,  <33.848278, 34.834362, 23.150330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659008, 34.799778, 23.501015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636925, 0.653956, 0.408250,
		-0.608628, 0.751576, -0.254371,
		-0.473179, -0.086457, 0.876714,
		33.517056, 34.773842, 23.764029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813450, 35.526249, 23.371933>,  <33.848278, 34.834362, 23.150330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813450, 35.526249, 23.371933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723171, 35.332462, 23.710011>,  <33.669003, 35.216190, 23.912857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723171, 35.332462, 23.710011>,  <33.813450, 35.526249, 23.371933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723171, 35.332462, 23.710011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651843, 0.569657, 0.500591,
		-0.723991, 0.663915, 0.187227,
		-0.225695, -0.484466, 0.845195,
		33.655464, 35.187122, 23.963570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712757, 36.054253, 23.828672>,  <33.813450, 35.526249, 23.371933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712757, 36.054253, 23.828672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800438, 35.737030, 24.056009>,  <33.853046, 35.546696, 24.192411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800438, 35.737030, 24.056009>,  <33.712757, 36.054253, 23.828672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800438, 35.737030, 24.056009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614455, 0.564687, 0.550974,
		-0.757889, 0.228447, 0.611078,
		0.219199, -0.793058, 0.568341,
		33.866199, 35.499111, 24.226511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799961, 36.320168, 24.578054>,  <33.712757, 36.054253, 23.828672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799961, 36.320168, 24.578054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961163, 35.954525, 24.560184>,  <34.057884, 35.735138, 24.549461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961163, 35.954525, 24.560184>,  <33.799961, 36.320168, 24.578054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961163, 35.954525, 24.560184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732743, 0.293031, 0.614183,
		-0.548337, -0.280256, 0.787898,
		0.403007, -0.914106, -0.044677,
		34.082066, 35.680294, 24.546782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872337, 36.135349, 25.270733>,  <33.799961, 36.320168, 24.578054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872337, 36.135349, 25.270733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137840, 35.920860, 25.062157>,  <34.297142, 35.792168, 24.937012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137840, 35.920860, 25.062157>,  <33.872337, 36.135349, 25.270733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137840, 35.920860, 25.062157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708903, 0.228700, 0.667197,
		-0.238511, -0.812505, 0.531928,
		0.663753, -0.536220, -0.521441,
		34.336967, 35.759995, 24.905724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304203, 35.945015, 25.821569>,  <33.872337, 36.135349, 25.270733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304203, 35.945015, 25.821569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489494, 35.853127, 25.479191>,  <34.600670, 35.797993, 25.273764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489494, 35.853127, 25.479191>,  <34.304203, 35.945015, 25.821569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489494, 35.853127, 25.479191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885169, 0.167356, 0.434128,
		0.043521, -0.958760, 0.280865,
		0.463229, -0.229720, -0.855948,
		34.628464, 35.784210, 25.222406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828403, 35.524647, 26.049252>,  <34.304203, 35.945015, 25.821569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828403, 35.524647, 26.049252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948376, 35.645260, 25.687229>,  <35.020359, 35.717628, 25.470016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948376, 35.645260, 25.687229>,  <34.828403, 35.524647, 26.049252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948376, 35.645260, 25.687229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895953, 0.236752, 0.375788,
		0.327585, -0.923595, -0.199148,
		0.299928, 0.301529, -0.905054,
		35.038353, 35.735718, 25.415712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449615, 35.191296, 25.871914>,  <34.828403, 35.524647, 26.049252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449615, 35.191296, 25.871914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440308, 35.527668, 25.655659>,  <35.434723, 35.729492, 25.525906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440308, 35.527668, 25.655659>,  <35.449615, 35.191296, 25.871914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440308, 35.527668, 25.655659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922074, 0.227019, 0.313434,
		0.386312, -0.491215, -0.780686,
		-0.023267, 0.840934, -0.540637,
		35.433327, 35.779949, 25.493467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107216, 35.284477, 25.846334>,  <35.449615, 35.191296, 25.871914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107216, 35.284477, 25.846334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950600, 35.618397, 25.691513>,  <35.856628, 35.818748, 25.598619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950600, 35.618397, 25.691513>,  <36.107216, 35.284477, 25.846334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950600, 35.618397, 25.691513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887222, 0.454041, 0.081758,
		0.243989, -0.311391, -0.918425,
		-0.391544, 0.834795, -0.387054,
		35.833138, 35.868835, 25.575397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348652, 35.515240, 25.226532>,  <36.107216, 35.284477, 25.846334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348652, 35.515240, 25.226532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224903, 35.845646, 25.414995>,  <36.150654, 36.043888, 25.528072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224903, 35.845646, 25.414995>,  <36.348652, 35.515240, 25.226532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224903, 35.845646, 25.414995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949044, 0.299470, 0.098150,
		-0.060024, 0.477515, -0.876571,
		-0.309375, 0.826013, 0.471159,
		36.132092, 36.093449, 25.556343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792240, 36.041687, 25.008747>,  <36.348652, 35.515240, 25.226532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792240, 36.041687, 25.008747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633335, 36.176109, 25.350332>,  <36.537994, 36.256763, 25.555283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633335, 36.176109, 25.350332>,  <36.792240, 36.041687, 25.008747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633335, 36.176109, 25.350332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888473, 0.373835, 0.266203,
		-0.229783, 0.864475, -0.447082,
		-0.397261, 0.336051, 0.853963,
		36.514156, 36.276924, 25.606522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952061, 36.793934, 25.049129>,  <36.792240, 36.041687, 25.008747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952061, 36.793934, 25.049129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879021, 36.663052, 25.419987>,  <36.835197, 36.584522, 25.642500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879021, 36.663052, 25.419987>,  <36.952061, 36.793934, 25.049129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879021, 36.663052, 25.419987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907810, 0.305998, 0.286787,
		-0.377542, 0.894036, 0.241167,
		-0.182601, -0.327208, 0.927142,
		36.824242, 36.564888, 25.698130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335865, 37.273609, 25.449062>,  <36.952061, 36.793934, 25.049129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335865, 37.273609, 25.449062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229156, 37.003639, 25.724253>,  <37.165131, 36.841656, 25.889366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229156, 37.003639, 25.724253>,  <37.335865, 37.273609, 25.449062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229156, 37.003639, 25.724253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813875, 0.224562, 0.535891,
		-0.516180, 0.702885, 0.489399,
		-0.266769, -0.674926, 0.687975,
		37.149124, 36.801163, 25.930645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554668, 37.577114, 26.076569>,  <37.335865, 37.273609, 25.449062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554668, 37.577114, 26.076569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521366, 37.190800, 26.174814>,  <37.501385, 36.959011, 26.233763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521366, 37.190800, 26.174814>,  <37.554668, 37.577114, 26.076569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521366, 37.190800, 26.174814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886814, 0.040622, 0.460337,
		-0.454564, 0.256142, 0.853090,
		-0.083257, -0.965785, 0.245615,
		37.496387, 36.901066, 26.248499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724861, 37.537411, 26.805658>,  <37.554668, 37.577114, 26.076569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724861, 37.537411, 26.805658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760410, 37.168110, 26.656147>,  <37.781738, 36.946529, 26.566441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760410, 37.168110, 26.656147>,  <37.724861, 37.537411, 26.805658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760410, 37.168110, 26.656147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933426, -0.053758, 0.354718,
		-0.347587, -0.380417, 0.857010,
		0.088870, -0.923251, -0.373777,
		37.787071, 36.891136, 26.544014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908443, 37.206528, 27.417902>,  <37.724861, 37.537411, 26.805658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908443, 37.206528, 27.417902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019829, 36.972389, 27.113317>,  <38.086662, 36.831905, 26.930567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019829, 36.972389, 27.113317>,  <37.908443, 37.206528, 27.417902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019829, 36.972389, 27.113317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928468, -0.038816, 0.369379,
		-0.245773, -0.809851, 0.532670,
		0.278466, -0.585350, -0.761460,
		38.103367, 36.796783, 26.884880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339211, 36.748150, 27.755293>,  <37.908443, 37.206528, 27.417902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339211, 36.748150, 27.755293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422787, 36.734764, 27.364351>,  <38.472935, 36.726734, 27.129786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422787, 36.734764, 27.364351>,  <38.339211, 36.748150, 27.755293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422787, 36.734764, 27.364351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977792, 0.023789, 0.208222,
		0.016282, -0.999157, 0.037693,
		0.208943, -0.033466, -0.977355,
		38.485470, 36.724724, 27.071144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771534, 36.184074, 27.648245>,  <38.339211, 36.748150, 27.755293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771534, 36.184074, 27.648245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833466, 36.457058, 27.362509>,  <38.870625, 36.620846, 27.191067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833466, 36.457058, 27.362509>,  <38.771534, 36.184074, 27.648245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833466, 36.457058, 27.362509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893641, 0.211547, 0.395795,
		0.421229, -0.699645, -0.577117,
		0.154828, 0.682455, -0.714341,
		38.879913, 36.661793, 27.148207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482304, 36.053963, 27.312466>,  <38.771534, 36.184074, 27.648245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482304, 36.053963, 27.312466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384441, 36.436497, 27.248510>,  <39.325726, 36.666019, 27.210138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384441, 36.436497, 27.248510>,  <39.482304, 36.053963, 27.312466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384441, 36.436497, 27.248510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889046, 0.287066, 0.356639,
		0.386964, -0.054893, -0.920459,
		-0.244655, 0.956337, -0.159886,
		39.311047, 36.723396, 27.200544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951004, 35.707481, 27.005171>,  <39.482304, 36.053963, 27.312466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951004, 35.707481, 27.005171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126156, 35.364044, 26.898537>,  <39.231247, 35.157982, 26.834557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126156, 35.364044, 26.898537>,  <38.951004, 35.707481, 27.005171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126156, 35.364044, 26.898537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457936, 0.042163, -0.887984,
		0.773661, 0.510914, -0.374720,
		0.437884, -0.858597, -0.266586,
		39.257523, 35.106464, 26.818562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167664, 35.603638, 26.259830>,  <38.951004, 35.707481, 27.005171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167664, 35.603638, 26.259830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156998, 35.217129, 26.362288>,  <39.150597, 34.985222, 26.423761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156998, 35.217129, 26.362288>,  <39.167664, 35.603638, 26.259830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156998, 35.217129, 26.362288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557646, -0.198280, -0.806050,
		0.829651, -0.164330, -0.533550,
		-0.026666, -0.966271, 0.256141,
		39.148998, 34.927246, 26.439131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157749, 35.218079, 25.638294>,  <39.167664, 35.603638, 26.259830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157749, 35.218079, 25.638294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040611, 34.935741, 25.896294>,  <38.970329, 34.766338, 26.051094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040611, 34.935741, 25.896294>,  <39.157749, 35.218079, 25.638294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040611, 34.935741, 25.896294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562438, -0.418361, -0.713188,
		0.773244, -0.571625, -0.274480,
		-0.292844, -0.705846, 0.644999,
		38.952759, 34.723988, 26.089794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354229, 34.658440, 25.374428>,  <39.157749, 35.218079, 25.638294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354229, 34.658440, 25.374428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063377, 34.560085, 25.630810>,  <38.888866, 34.501072, 25.784639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063377, 34.560085, 25.630810>,  <39.354229, 34.658440, 25.374428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063377, 34.560085, 25.630810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415203, -0.586020, -0.695835,
		0.546711, -0.772088, 0.324017,
		-0.727127, -0.245888, 0.640957,
		38.845238, 34.486320, 25.823097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341816, 33.982864, 25.259146>,  <39.354229, 34.658440, 25.374428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341816, 33.982864, 25.259146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992950, 34.069096, 25.434803>,  <38.783630, 34.120834, 25.540197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992950, 34.069096, 25.434803>,  <39.341816, 33.982864, 25.259146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992950, 34.069096, 25.434803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476266, -0.579278, -0.661519,
		0.111777, -0.786106, 0.607901,
		-0.872168, 0.215580, 0.439145,
		38.731300, 34.133770, 25.566547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977699, 33.257484, 25.383728>,  <39.341816, 33.982864, 25.259146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977699, 33.257484, 25.383728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730804, 33.572105, 25.391165>,  <38.582668, 33.760880, 25.395626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730804, 33.572105, 25.391165>,  <38.977699, 33.257484, 25.383728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730804, 33.572105, 25.391165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644571, -0.491989, -0.585214,
		-0.451153, -0.373204, 0.810666,
		-0.617243, 0.786553, 0.018594,
		38.545631, 33.808071, 25.396742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371902, 33.032436, 25.362780>,  <38.977699, 33.257484, 25.383728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371902, 33.032436, 25.362780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270355, 33.396572, 25.232040>,  <38.209427, 33.615055, 25.153597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270355, 33.396572, 25.232040>,  <38.371902, 33.032436, 25.362780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270355, 33.396572, 25.232040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659564, -0.410098, -0.629917,
		-0.707479, 0.055661, 0.704539,
		-0.253868, 0.910341, -0.326848,
		38.194195, 33.669674, 25.133986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553837, 33.005646, 25.287968>,  <38.371902, 33.032436, 25.362780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553837, 33.005646, 25.287968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690388, 33.321564, 25.084129>,  <37.772316, 33.511116, 24.961826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690388, 33.321564, 25.084129>,  <37.553837, 33.005646, 25.287968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690388, 33.321564, 25.084129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563814, -0.261728, -0.783334,
		-0.752049, 0.554727, 0.355951,
		0.341374, 0.789795, -0.509595,
		37.792801, 33.558502, 24.931252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950130, 33.365730, 24.978340>,  <37.553837, 33.005646, 25.287968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950130, 33.365730, 24.978340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269508, 33.486900, 24.770214>,  <37.461136, 33.559601, 24.645338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269508, 33.486900, 24.770214>,  <36.950130, 33.365730, 24.978340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269508, 33.486900, 24.770214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535783, -0.036723, -0.843557,
		-0.274639, 0.952308, 0.132979,
		0.798442, 0.302921, -0.520316,
		37.509041, 33.577778, 24.614119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754181, 33.887405, 24.577696>,  <36.950130, 33.365730, 24.978340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754181, 33.887405, 24.577696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078922, 33.774212, 24.373415>,  <37.273766, 33.706295, 24.250847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078922, 33.774212, 24.373415>,  <36.754181, 33.887405, 24.577696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078922, 33.774212, 24.373415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525992, 0.025185, -0.850116,
		0.253432, 0.958794, -0.128401,
		0.811852, -0.282985, -0.510701,
		37.322479, 33.689316, 24.220205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726894, 34.194134, 23.931778>,  <36.754181, 33.887405, 24.577696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726894, 34.194134, 23.931778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984322, 33.892788, 23.877726>,  <37.138779, 33.711979, 23.845293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984322, 33.892788, 23.877726>,  <36.726894, 34.194134, 23.931778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984322, 33.892788, 23.877726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442725, -0.222390, -0.868641,
		0.624353, 0.618855, -0.476657,
		0.643566, -0.753367, -0.135132,
		37.177391, 33.666779, 23.837187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980576, 34.224457, 23.271822>,  <36.726894, 34.194134, 23.931778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980576, 34.224457, 23.271822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051338, 33.842407, 23.366850>,  <37.093796, 33.613178, 23.423866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051338, 33.842407, 23.366850>,  <36.980576, 34.224457, 23.271822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051338, 33.842407, 23.366850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442305, -0.292782, -0.847730,
		0.879244, 0.044891, -0.474252,
		0.176908, -0.955125, 0.237572,
		37.104412, 33.555870, 23.438122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148575, 33.869198, 22.628677>,  <36.980576, 34.224457, 23.271822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148575, 33.869198, 22.628677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048203, 33.568913, 22.873125>,  <36.987980, 33.388741, 23.019794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048203, 33.568913, 22.873125>,  <37.148575, 33.869198, 22.628677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048203, 33.568913, 22.873125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604893, -0.371277, -0.704456,
		0.755737, -0.546433, -0.360934,
		-0.250931, -0.750709, 0.611121,
		36.972923, 33.343700, 23.056461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211807, 33.269730, 22.279348>,  <37.148575, 33.869198, 22.628677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211807, 33.269730, 22.279348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939827, 33.201141, 22.564518>,  <36.776638, 33.159988, 22.735620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939827, 33.201141, 22.564518>,  <37.211807, 33.269730, 22.279348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939827, 33.201141, 22.564518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574465, -0.479659, -0.663262,
		0.455693, -0.860537, 0.227640,
		-0.679951, -0.171473, 0.712926,
		36.735840, 33.149700, 22.778397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918999, 32.692783, 22.057055>,  <37.211807, 33.269730, 22.279348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918999, 32.692783, 22.057055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655045, 32.782341, 22.343946>,  <36.496670, 32.836075, 22.516081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655045, 32.782341, 22.343946>,  <36.918999, 32.692783, 22.057055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655045, 32.782341, 22.343946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745225, -0.316812, -0.586746,
		0.095858, -0.921684, 0.375911,
		-0.659888, 0.223894, 0.717231,
		36.457077, 32.849510, 22.559116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468384, 32.137081, 22.093456>,  <36.918999, 32.692783, 22.057055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468384, 32.137081, 22.093456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276260, 32.457809, 22.235661>,  <36.160984, 32.650246, 22.320984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276260, 32.457809, 22.235661>,  <36.468384, 32.137081, 22.093456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276260, 32.457809, 22.235661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858477, -0.346686, -0.377924,
		-0.179776, -0.486720, 0.854859,
		-0.480311, 0.801819, 0.355512,
		36.132168, 32.698357, 22.342314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874161, 31.853207, 22.413099>,  <36.468384, 32.137081, 22.093456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874161, 31.853207, 22.413099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776054, 32.237202, 22.359041>,  <35.717190, 32.467598, 22.326607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776054, 32.237202, 22.359041>,  <35.874161, 31.853207, 22.413099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776054, 32.237202, 22.359041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917060, -0.274956, -0.288793,
		-0.314397, 0.053105, 0.947805,
		-0.245268, 0.959989, -0.135145,
		35.702473, 32.525200, 22.318499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257954, 31.856506, 22.478729>,  <35.874161, 31.853207, 22.413099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257954, 31.856506, 22.478729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277271, 32.216911, 22.306292>,  <35.288860, 32.433155, 22.202829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277271, 32.216911, 22.306292>,  <35.257954, 31.856506, 22.478729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277271, 32.216911, 22.306292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893836, -0.153637, -0.421251,
		-0.445785, 0.405671, 0.797939,
		0.048296, 0.901014, -0.431092,
		35.291759, 32.487217, 22.176964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698273, 32.279308, 22.686146>,  <35.257954, 31.856506, 22.478729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698273, 32.279308, 22.686146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802086, 32.448257, 22.338757>,  <34.864372, 32.549625, 22.130323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802086, 32.448257, 22.338757>,  <34.698273, 32.279308, 22.686146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802086, 32.448257, 22.338757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943839, -0.079477, -0.320703,
		-0.204480, 0.902931, 0.378026,
		0.259528, 0.422374, -0.868473,
		34.879944, 32.574970, 22.078215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120777, 32.720680, 22.555344>,  <34.698273, 32.279308, 22.686146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120777, 32.720680, 22.555344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306076, 32.672470, 22.204145>,  <34.417255, 32.643543, 21.993427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306076, 32.672470, 22.204145>,  <34.120777, 32.720680, 22.555344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306076, 32.672470, 22.204145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884043, -0.132408, -0.448259,
		-0.062226, 0.983840, -0.167889,
		0.463245, -0.120527, -0.877996,
		34.445049, 32.636311, 21.940746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901440, 33.296600, 22.121603>,  <34.120777, 32.720680, 22.555344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901440, 33.296600, 22.121603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994793, 32.956589, 21.932720>,  <34.050804, 32.752583, 21.819389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994793, 32.956589, 21.932720>,  <33.901440, 33.296600, 22.121603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994793, 32.956589, 21.932720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950535, -0.097060, -0.295065,
		0.204982, 0.517713, -0.830636,
		0.233380, -0.850031, -0.472208,
		34.064808, 32.701580, 21.791058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355156, 33.074215, 21.695974>,  <33.901440, 33.296600, 22.121603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355156, 33.074215, 21.695974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558651, 32.738487, 21.619320>,  <33.680748, 32.537052, 21.573326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558651, 32.738487, 21.619320>,  <33.355156, 33.074215, 21.695974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558651, 32.738487, 21.619320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764915, -0.338520, -0.548005,
		0.395078, 0.425380, -0.814227,
		0.508742, -0.839319, -0.191638,
		33.711273, 32.486691, 21.561829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119720, 32.792294, 21.019688>,  <33.355156, 33.074215, 21.695974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119720, 32.792294, 21.019688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291534, 32.477451, 21.196762>,  <33.394623, 32.288548, 21.303007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291534, 32.477451, 21.196762>,  <33.119720, 32.792294, 21.019688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291534, 32.477451, 21.196762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726521, -0.592349, -0.348268,
		0.536346, -0.172026, -0.826281,
		0.429536, -0.787102, 0.442684,
		33.420395, 32.241322, 21.329567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030518, 32.146748, 20.594162>,  <33.119720, 32.792294, 21.019688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030518, 32.146748, 20.594162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119701, 32.018421, 20.962372>,  <33.173210, 31.941425, 21.183298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119701, 32.018421, 20.962372>,  <33.030518, 32.146748, 20.594162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119701, 32.018421, 20.962372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654328, -0.749215, -0.102626,
		0.722595, -0.579444, -0.376962,
		0.222960, -0.320813, 0.920526,
		33.186588, 31.922176, 21.238529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108746, 31.458275, 20.547245>,  <33.030518, 32.146748, 20.594162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108746, 31.458275, 20.547245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029747, 31.518526, 20.934710>,  <32.982349, 31.554676, 21.167189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029747, 31.518526, 20.934710>,  <33.108746, 31.458275, 20.547245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029747, 31.518526, 20.934710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591972, -0.805945, 0.004630,
		0.781386, -0.572506, 0.248339,
		-0.197497, 0.150628, 0.968662,
		32.970497, 31.563715, 21.225307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140839, 30.844851, 20.924782>,  <33.108746, 31.458275, 20.547245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140839, 30.844851, 20.924782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922821, 31.049589, 21.190395>,  <32.792011, 31.172432, 21.349764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922821, 31.049589, 21.190395>,  <33.140839, 30.844851, 20.924782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922821, 31.049589, 21.190395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607673, -0.786846, 0.107732,
		0.577633, -0.344796, 0.739902,
		-0.545044, 0.511849, 0.664032,
		32.759308, 31.203144, 21.389605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886734, 30.393349, 21.349653>,  <33.140839, 30.844851, 20.924782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886734, 30.393349, 21.349653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637764, 30.680050, 21.475416>,  <32.488380, 30.852070, 21.550875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637764, 30.680050, 21.475416>,  <32.886734, 30.393349, 21.349653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637764, 30.680050, 21.475416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679098, -0.694276, 0.238342,
		0.389119, -0.065165, 0.918880,
		-0.622424, 0.716753, 0.314409,
		32.451038, 30.895077, 21.569738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579777, 30.170216, 21.892447>,  <32.886734, 30.393349, 21.349653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579777, 30.170216, 21.892447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319836, 30.453844, 21.782967>,  <32.163872, 30.624022, 21.717279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319836, 30.453844, 21.782967>,  <32.579777, 30.170216, 21.892447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319836, 30.453844, 21.782967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752817, -0.650074, 0.103298,
		-0.104679, 0.273173, 0.956253,
		-0.649853, 0.709070, -0.273698,
		32.124878, 30.666565, 21.700857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988945, 30.189978, 22.411961>,  <32.579777, 30.170216, 21.892447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988945, 30.189978, 22.411961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873989, 30.331882, 22.056084>,  <31.805016, 30.417025, 21.842558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873989, 30.331882, 22.056084>,  <31.988945, 30.189978, 22.411961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873989, 30.331882, 22.056084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770698, -0.637181, -0.005120,
		-0.568711, 0.684212, 0.456532,
		-0.287391, 0.354760, -0.889692,
		31.787771, 30.438311, 21.789177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207525, 30.277155, 22.549004>,  <31.988945, 30.189978, 22.411961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207525, 30.277155, 22.549004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258911, 30.312044, 22.153854>,  <31.289743, 30.332977, 21.916765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258911, 30.312044, 22.153854>,  <31.207525, 30.277155, 22.549004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258911, 30.312044, 22.153854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908285, -0.389562, -0.152512,
		-0.398139, 0.916861, 0.029177,
		0.128466, 0.087222, -0.987871,
		31.297451, 30.338211, 21.857492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508230, 30.471233, 22.321877>,  <31.207525, 30.277155, 22.549004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508230, 30.471233, 22.321877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703537, 30.325068, 22.004873>,  <30.820721, 30.237368, 21.814672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703537, 30.325068, 22.004873>,  <30.508230, 30.471233, 22.321877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703537, 30.325068, 22.004873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810113, -0.527476, -0.255903,
		-0.324517, 0.766969, -0.553577,
		0.488268, -0.365415, -0.792507,
		30.850018, 30.215443, 21.767122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041536, 30.535635, 21.736595>,  <30.508230, 30.471233, 22.321877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041536, 30.535635, 21.736595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306662, 30.247267, 21.655651>,  <30.465736, 30.074245, 21.607084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306662, 30.247267, 21.655651>,  <30.041536, 30.535635, 21.736595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306662, 30.247267, 21.655651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730347, -0.682039, 0.037625,
		-0.165142, 0.122854, -0.978588,
		0.662813, -0.720923, -0.202360,
		30.505505, 30.030991, 21.594944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596004, 30.053122, 21.292801>,  <30.041536, 30.535635, 21.736595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596004, 30.053122, 21.292801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935274, 29.859200, 21.378187>,  <30.138836, 29.742847, 21.429419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935274, 29.859200, 21.378187>,  <29.596004, 30.053122, 21.292801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935274, 29.859200, 21.378187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471470, -0.874610, -0.113018,
		0.241492, -0.004785, -0.970391,
		0.848173, -0.484804, 0.213468,
		30.189726, 29.713758, 21.442228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749378, 29.707645, 20.696554>,  <29.596004, 30.053122, 21.292801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749378, 29.707645, 20.696554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912500, 29.522659, 21.011469>,  <30.010374, 29.411667, 21.200417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912500, 29.522659, 21.011469>,  <29.749378, 29.707645, 20.696554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912500, 29.522659, 21.011469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564879, -0.805214, -0.180397,
		0.717360, -0.371153, -0.589610,
		0.407807, -0.462468, 0.787285,
		30.034843, 29.383919, 21.247654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899340, 28.930063, 20.415134>,  <29.749378, 29.707645, 20.696554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899340, 28.930063, 20.415134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925381, 28.933352, 20.814272>,  <29.941006, 28.935324, 21.053755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925381, 28.933352, 20.814272>,  <29.899340, 28.930063, 20.415134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925381, 28.933352, 20.814272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511119, -0.858559, 0.040420,
		0.857041, -0.512649, -0.051691,
		0.065101, 0.008221, 0.997845,
		29.944912, 28.935818, 21.113625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138676, 28.274517, 20.704914>,  <29.899340, 28.930063, 20.415134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138676, 28.274517, 20.704914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963093, 28.426722, 21.030497>,  <29.857742, 28.518045, 21.225845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963093, 28.426722, 21.030497>,  <30.138676, 28.274517, 20.704914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963093, 28.426722, 21.030497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529870, -0.841237, 0.107512,
		0.725640, -0.384097, 0.570891,
		-0.438959, 0.380513, 0.813956,
		29.831406, 28.540874, 21.274683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119806, 27.811113, 21.219759>,  <30.138676, 28.274517, 20.704914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119806, 27.811113, 21.219759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816401, 28.046614, 21.331493>,  <29.634357, 28.187914, 21.398535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816401, 28.046614, 21.331493>,  <30.119806, 27.811113, 21.219759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816401, 28.046614, 21.331493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589315, -0.802696, 0.091582,
		0.278141, -0.095150, 0.955816,
		-0.758516, 0.588750, 0.279336,
		29.588846, 28.223238, 21.415295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876852, 27.485884, 21.823080>,  <30.119806, 27.811113, 21.219759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876852, 27.485884, 21.823080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601093, 27.706022, 21.634678>,  <29.435638, 27.838106, 21.521637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601093, 27.706022, 21.634678>,  <29.876852, 27.485884, 21.823080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601093, 27.706022, 21.634678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549876, -0.820869, -0.154310,
		-0.471558, 0.152613, 0.868529,
		-0.689399, 0.550349, -0.471005,
		29.394274, 27.871126, 21.493376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307547, 26.910023, 21.660261>,  <29.876852, 27.485884, 21.823080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307547, 26.910023, 21.660261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320910, 26.514326, 21.603291>,  <29.328928, 26.276909, 21.569109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320910, 26.514326, 21.603291>,  <29.307547, 26.910023, 21.660261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320910, 26.514326, 21.603291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927784, -0.022291, 0.372451,
		-0.371619, -0.144583, 0.917058,
		0.033408, -0.989242, -0.142425,
		29.330933, 26.217554, 21.560562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545752, 26.714363, 22.215332>,  <29.307547, 26.910023, 21.660261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545752, 26.714363, 22.215332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614168, 26.388483, 21.993700>,  <29.655218, 26.192955, 21.860720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614168, 26.388483, 21.993700>,  <29.545752, 26.714363, 22.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614168, 26.388483, 21.993700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883809, -0.121684, 0.451747,
		-0.435461, -0.566969, 0.699228,
		0.171042, -0.814702, -0.554081,
		29.665482, 26.144072, 21.827477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921795, 26.298546, 22.649632>,  <29.545752, 26.714363, 22.215332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921795, 26.298546, 22.649632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990360, 26.174665, 22.275530>,  <30.031500, 26.100338, 22.051069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990360, 26.174665, 22.275530>,  <29.921795, 26.298546, 22.649632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990360, 26.174665, 22.275530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980172, -0.042173, 0.193609,
		-0.099403, -0.949899, 0.296331,
		0.171412, -0.309700, -0.935256,
		30.041784, 26.081755, 21.994953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443855, 25.807411, 22.806252>,  <29.921795, 26.298546, 22.649632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443855, 25.807411, 22.806252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443712, 25.901236, 22.417412>,  <30.443626, 25.957531, 22.184107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443712, 25.901236, 22.417412>,  <30.443855, 25.807411, 22.806252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443712, 25.901236, 22.417412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985243, 0.166468, 0.039802,
		0.171160, -0.957742, -0.231159,
		-0.000360, 0.234560, -0.972102,
		30.443604, 25.971603, 22.125782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968243, 25.364288, 22.462315>,  <30.443855, 25.807411, 22.806252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968243, 25.364288, 22.462315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918634, 25.698381, 22.248022>,  <30.888868, 25.898838, 22.119448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918634, 25.698381, 22.248022>,  <30.968243, 25.364288, 22.462315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918634, 25.698381, 22.248022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991908, 0.089576, -0.089974,
		-0.027161, -0.542553, -0.839583,
		-0.124022, 0.835232, -0.535729,
		30.881428, 25.948952, 22.087303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566113, 25.403309, 21.885061>,  <30.968243, 25.364288, 22.462315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566113, 25.403309, 21.885061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407330, 25.769693, 21.908525>,  <31.312059, 25.989523, 21.922604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407330, 25.769693, 21.908525>,  <31.566113, 25.403309, 21.885061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407330, 25.769693, 21.908525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897952, 0.400796, -0.181783,
		-0.190017, -0.019484, -0.981587,
		-0.396958, 0.915960, 0.058662,
		31.288242, 26.044481, 21.926125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828941, 25.792250, 21.328587>,  <31.566113, 25.403309, 21.885061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828941, 25.792250, 21.328587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704163, 26.090742, 21.563814>,  <31.629295, 26.269838, 21.704950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704163, 26.090742, 21.563814>,  <31.828941, 25.792250, 21.328587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704163, 26.090742, 21.563814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849676, 0.496074, -0.178774,
		-0.425133, 0.443901, -0.788805,
		-0.311947, 0.746232, 0.588070,
		31.610579, 26.314611, 21.740234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888475, 26.379761, 20.963200>,  <31.828941, 25.792250, 21.328587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888475, 26.379761, 20.963200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907320, 26.499151, 21.344501>,  <31.918627, 26.570786, 21.573282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907320, 26.499151, 21.344501>,  <31.888475, 26.379761, 20.963200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907320, 26.499151, 21.344501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833405, 0.514332, -0.202234,
		-0.550651, 0.803973, -0.224522,
		0.047112, 0.298478, 0.953253,
		31.921453, 26.588696, 21.630478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172611, 26.969540, 20.945370>,  <31.888475, 26.379761, 20.963200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172611, 26.969540, 20.945370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206383, 26.902098, 21.338194>,  <32.226646, 26.861631, 21.573889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206383, 26.902098, 21.338194>,  <32.172611, 26.969540, 20.945370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206383, 26.902098, 21.338194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812034, 0.582825, 0.030249,
		-0.577470, 0.794913, 0.186123,
		0.084432, -0.168606, 0.982061,
		32.231712, 26.851517, 21.632812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326534, 27.604673, 21.324907>,  <32.172611, 26.969540, 20.945370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326534, 27.604673, 21.324907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469090, 27.347534, 21.596121>,  <32.554623, 27.193251, 21.758848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469090, 27.347534, 21.596121>,  <32.326534, 27.604673, 21.324907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469090, 27.347534, 21.596121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769030, 0.613963, 0.177882,
		-0.530639, 0.458032, 0.713182,
		0.356392, -0.642850, 0.678033,
		32.576008, 27.154678, 21.799530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521336, 28.069572, 21.921688>,  <32.326534, 27.604673, 21.324907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521336, 28.069572, 21.921688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715107, 27.720839, 21.950624>,  <32.831371, 27.511599, 21.967987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715107, 27.720839, 21.950624>,  <32.521336, 28.069572, 21.921688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715107, 27.720839, 21.950624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859813, 0.489741, 0.144483,
		-0.161394, -0.007792, 0.986859,
		0.484431, -0.871833, 0.072342,
		32.860435, 27.459288, 21.972326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011028, 28.064951, 22.455145>,  <32.521336, 28.069572, 21.921688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011028, 28.064951, 22.455145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147449, 27.806047, 22.182457>,  <33.229301, 27.650705, 22.018845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147449, 27.806047, 22.182457>,  <33.011028, 28.064951, 22.455145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147449, 27.806047, 22.182457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930669, 0.334657, 0.147854,
		0.132442, -0.684880, 0.716519,
		0.341050, -0.647260, -0.681718,
		33.249763, 27.611870, 21.977942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408829, 27.588739, 22.793036>,  <33.011028, 28.064951, 22.455145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408829, 27.588739, 22.793036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507111, 27.656092, 22.411192>,  <33.566078, 27.696503, 22.182085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507111, 27.656092, 22.411192>,  <33.408829, 27.588739, 22.793036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507111, 27.656092, 22.411192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855594, 0.425211, 0.295220,
		0.455620, -0.889293, -0.039591,
		0.245702, 0.168382, -0.954609,
		33.580822, 27.706606, 22.124809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178181, 27.673861, 22.726631>,  <33.408829, 27.588739, 22.793036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178181, 27.673861, 22.726631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072178, 27.859684, 22.388647>,  <34.008575, 27.971178, 22.185858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072178, 27.859684, 22.388647>,  <34.178181, 27.673861, 22.726631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072178, 27.859684, 22.388647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848467, 0.528678, 0.024557,
		0.458119, -0.710411, -0.534269,
		-0.265011, 0.464560, -0.844958,
		33.992676, 27.999052, 22.135160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668457, 27.538448, 22.212151>,  <34.178181, 27.673861, 22.726631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668457, 27.538448, 22.212151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497349, 27.889914, 22.127333>,  <34.394684, 28.100792, 22.076441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497349, 27.889914, 22.127333>,  <34.668457, 27.538448, 22.212151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497349, 27.889914, 22.127333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894159, 0.445682, 0.042962,
		0.132254, -0.171225, -0.976315,
		-0.427770, 0.878663, -0.212046,
		34.369019, 28.153513, 22.063719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169827, 27.875677, 21.930981>,  <34.668457, 27.538448, 22.212151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169827, 27.875677, 21.930981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909412, 28.165075, 22.022818>,  <34.753166, 28.338715, 22.077921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909412, 28.165075, 22.022818>,  <35.169827, 27.875677, 21.930981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909412, 28.165075, 22.022818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756234, 0.592194, 0.278239,
		0.065341, 0.354768, -0.932668,
		-0.651031, 0.723495, 0.229593,
		34.714104, 28.382124, 22.091696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409996, 28.513357, 21.518951>,  <35.169827, 27.875677, 21.930981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409996, 28.513357, 21.518951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185020, 28.645954, 21.821941>,  <35.050034, 28.725513, 22.003735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185020, 28.645954, 21.821941>,  <35.409996, 28.513357, 21.518951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185020, 28.645954, 21.821941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765201, 0.555756, 0.324964,
		-0.313248, 0.762395, -0.566241,
		-0.562443, 0.331494, 0.757476,
		35.016289, 28.745403, 22.049185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533054, 29.241179, 21.477125>,  <35.409996, 28.513357, 21.518951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533054, 29.241179, 21.477125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387329, 29.167824, 21.842342>,  <35.299892, 29.123810, 22.061472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387329, 29.167824, 21.842342>,  <35.533054, 29.241179, 21.477125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387329, 29.167824, 21.842342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624741, 0.678951, 0.385648,
		-0.690633, 0.710911, -0.132780,
		-0.364312, -0.183388, 0.913042,
		35.278034, 29.112808, 22.116255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542866, 29.920553, 21.733976>,  <35.533054, 29.241179, 21.477125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542866, 29.920553, 21.733976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492603, 29.691355, 22.057922>,  <35.462444, 29.553835, 22.252291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492603, 29.691355, 22.057922>,  <35.542866, 29.920553, 21.733976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492603, 29.691355, 22.057922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684822, 0.540545, 0.488703,
		-0.717795, 0.616023, 0.324478,
		-0.125658, -0.572998, 0.809866,
		35.454906, 29.519455, 22.300882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326984, 30.345325, 22.227903>,  <35.542866, 29.920553, 21.733976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326984, 30.345325, 22.227903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467121, 30.040886, 22.446257>,  <35.551205, 29.858223, 22.577269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467121, 30.040886, 22.446257>,  <35.326984, 30.345325, 22.227903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467121, 30.040886, 22.446257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657342, 0.614975, 0.435553,
		-0.667203, 0.206237, 0.715756,
		0.350345, -0.761099, 0.545881,
		35.572224, 29.812555, 22.610022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344620, 30.507818, 23.015047>,  <35.326984, 30.345325, 22.227903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344620, 30.507818, 23.015047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611439, 30.218815, 22.942347>,  <35.771530, 30.045414, 22.898727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611439, 30.218815, 22.942347>,  <35.344620, 30.507818, 23.015047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611439, 30.218815, 22.942347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728278, 0.580938, 0.363488,
		-0.157037, -0.374828, 0.913698,
		0.667047, -0.722506, -0.181750,
		35.811554, 30.002064, 22.887821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795654, 30.595318, 23.586349>,  <35.344620, 30.507818, 23.015047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795654, 30.595318, 23.586349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014317, 30.377176, 23.332182>,  <36.145515, 30.246292, 23.179682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014317, 30.377176, 23.332182>,  <35.795654, 30.595318, 23.586349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014317, 30.377176, 23.332182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811393, 0.532484, 0.241043,
		0.206896, -0.647342, 0.733582,
		0.546658, -0.545352, -0.635418,
		36.178314, 30.213570, 23.141556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247272, 30.343138, 23.995531>,  <35.795654, 30.595318, 23.586349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247272, 30.343138, 23.995531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413158, 30.314602, 23.632671>,  <36.512691, 30.297482, 23.414955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413158, 30.314602, 23.632671>,  <36.247272, 30.343138, 23.995531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413158, 30.314602, 23.632671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844669, 0.400972, 0.354619,
		0.338444, -0.913308, 0.226547,
		0.414716, -0.071339, -0.907151,
		36.537575, 30.293201, 23.360527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853142, 29.952541, 24.170670>,  <36.247272, 30.343138, 23.995531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853142, 29.952541, 24.170670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887344, 30.128147, 23.812908>,  <36.907867, 30.233511, 23.598251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887344, 30.128147, 23.812908>,  <36.853142, 29.952541, 24.170670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887344, 30.128147, 23.812908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880252, 0.387239, 0.274230,
		0.466738, -0.810748, -0.353332,
		0.085508, 0.439015, -0.894402,
		36.912998, 30.259851, 23.544588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608265, 29.876688, 24.010353>,  <36.853142, 29.952541, 24.170670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608265, 29.876688, 24.010353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496372, 30.197775, 23.799679>,  <37.429237, 30.390427, 23.673273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496372, 30.197775, 23.799679>,  <37.608265, 29.876688, 24.010353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496372, 30.197775, 23.799679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806063, 0.494372, 0.325359,
		0.521551, -0.333530, -0.785330,
		-0.279728, 0.802716, -0.526687,
		37.412453, 30.438589, 23.641672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159775, 30.154558, 23.681566>,  <37.608265, 29.876688, 24.010353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159775, 30.154558, 23.681566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925102, 30.478466, 23.684946>,  <37.784298, 30.672812, 23.686974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925102, 30.478466, 23.684946>,  <38.159775, 30.154558, 23.681566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925102, 30.478466, 23.684946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732802, 0.526423, 0.431139,
		0.344675, 0.259135, -0.902246,
		-0.586686, 0.809770, 0.008450,
		37.749096, 30.721397, 23.687481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504265, 30.698587, 23.314713>,  <38.159775, 30.154558, 23.681566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504265, 30.698587, 23.314713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243103, 30.886822, 23.552122>,  <38.086407, 30.999763, 23.694567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243103, 30.886822, 23.552122>,  <38.504265, 30.698587, 23.314713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243103, 30.886822, 23.552122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752185, 0.494992, 0.434972,
		-0.089097, 0.730432, -0.677149,
		-0.652901, 0.470587, 0.593522,
		38.047234, 31.027998, 23.730179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800720, 31.411699, 23.297855>,  <38.504265, 30.698587, 23.314713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800720, 31.411699, 23.297855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558254, 31.413622, 23.615984>,  <38.412773, 31.414776, 23.806862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558254, 31.413622, 23.615984>,  <38.800720, 31.411699, 23.297855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558254, 31.413622, 23.615984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652835, 0.574173, 0.494097,
		-0.454277, 0.818720, -0.351184,
		-0.606167, 0.004808, 0.795323,
		38.376404, 31.415064, 23.854580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716862, 32.143600, 23.511284>,  <38.800720, 31.411699, 23.297855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716862, 32.143600, 23.511284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643902, 31.891905, 23.813484>,  <38.600124, 31.740887, 23.994804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643902, 31.891905, 23.813484>,  <38.716862, 32.143600, 23.511284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643902, 31.891905, 23.813484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622970, 0.520512, 0.583930,
		-0.760682, 0.577165, 0.297058,
		-0.182402, -0.629244, 0.755501,
		38.589180, 31.703133, 24.040134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733250, 32.561665, 24.035295>,  <38.716862, 32.143600, 23.511284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733250, 32.561665, 24.035295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765049, 32.218285, 24.237974>,  <38.784130, 32.012257, 24.359581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765049, 32.218285, 24.237974>,  <38.733250, 32.561665, 24.035295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765049, 32.218285, 24.237974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688062, 0.415055, 0.595231,
		-0.721284, 0.301319, 0.623664,
		0.079500, -0.858450, 0.506699,
		38.788898, 31.960751, 24.389984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801720, 32.727844, 24.724937>,  <38.733250, 32.561665, 24.035295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801720, 32.727844, 24.724937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933372, 32.350136, 24.727003>,  <39.012363, 32.123512, 24.728243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933372, 32.350136, 24.727003>,  <38.801720, 32.727844, 24.724937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933372, 32.350136, 24.727003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715005, 0.252783, 0.651819,
		-0.616800, -0.210838, 0.758357,
		0.329128, -0.944271, 0.005166,
		39.032112, 32.066856, 24.728554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990589, 32.482773, 25.425734>,  <38.801720, 32.727844, 24.724937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990589, 32.482773, 25.425734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195045, 32.233089, 25.189398>,  <39.317719, 32.083279, 25.047596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195045, 32.233089, 25.189398>,  <38.990589, 32.482773, 25.425734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195045, 32.233089, 25.189398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765893, 0.018830, 0.642693,
		-0.390051, -0.781027, 0.487705,
		0.511144, -0.624213, -0.590839,
		39.348389, 32.045826, 25.012146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183784, 31.991810, 25.824820>,  <38.990589, 32.482773, 25.425734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183784, 31.991810, 25.824820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444561, 31.955942, 25.523640>,  <39.601025, 31.934422, 25.342932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444561, 31.955942, 25.523640>,  <39.183784, 31.991810, 25.824820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444561, 31.955942, 25.523640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747944, -0.087292, 0.657997,
		-0.124730, -0.992139, 0.010159,
		0.651938, -0.089670, -0.752952,
		39.640141, 31.929041, 25.297754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463360, 31.416903, 26.048141>,  <39.183784, 31.991810, 25.824820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463360, 31.416903, 26.048141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698616, 31.611479, 25.789694>,  <39.839771, 31.728224, 25.634626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698616, 31.611479, 25.789694>,  <39.463360, 31.416903, 26.048141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698616, 31.611479, 25.789694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766830, -0.081513, 0.636653,
		0.257027, -0.869903, -0.420958,
		0.588140, 0.486440, -0.646116,
		39.875057, 31.757410, 25.595860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120628, 30.951359, 25.981815>,  <39.463360, 31.416903, 26.048141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120628, 30.951359, 25.981815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211380, 31.313715, 25.838768>,  <40.265831, 31.531128, 25.752939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211380, 31.313715, 25.838768>,  <40.120628, 30.951359, 25.981815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211380, 31.313715, 25.838768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916129, -0.073897, 0.394013,
		0.330505, -0.417019, -0.846677,
		0.226878, 0.905889, -0.357620,
		40.279442, 31.585482, 25.731482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796432, 30.821863, 25.661783>,  <40.120628, 30.951359, 25.981815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796432, 30.821863, 25.661783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757324, 31.216749, 25.712137>,  <40.733860, 31.453680, 25.742350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757324, 31.216749, 25.712137>,  <40.796432, 30.821863, 25.661783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757324, 31.216749, 25.712137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979004, 0.072674, 0.190448,
		0.178865, 0.141861, -0.973593,
		-0.097772, 0.987215, 0.125883,
		40.727993, 31.512915, 25.749903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387039, 31.093201, 25.535334>,  <40.796432, 30.821863, 25.661783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387039, 31.093201, 25.535334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221138, 31.410215, 25.714159>,  <41.121597, 31.600424, 25.821455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221138, 31.410215, 25.714159>,  <41.387039, 31.093201, 25.535334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221138, 31.410215, 25.714159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899533, 0.283030, 0.332767,
		0.137197, 0.540165, -0.830301,
		-0.414749, 0.792538, 0.447066,
		41.096714, 31.647976, 25.848278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797272, 31.779974, 25.359720>,  <41.387039, 31.093201, 25.535334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797272, 31.779974, 25.359720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603588, 31.808826, 25.708509>,  <41.487377, 31.826138, 25.917784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603588, 31.808826, 25.708509>,  <41.797272, 31.779974, 25.359720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603588, 31.808826, 25.708509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858913, 0.229132, 0.458003,
		-0.166761, 0.970719, -0.172901,
		-0.484209, 0.072130, 0.871974,
		41.458324, 31.830465, 25.970102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178478, 32.368256, 25.639334>,  <41.797272, 31.779974, 25.359720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178478, 32.368256, 25.639334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000336, 32.197163, 25.953964>,  <41.893448, 32.094505, 26.142742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000336, 32.197163, 25.953964>,  <42.178478, 32.368256, 25.639334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000336, 32.197163, 25.953964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798702, 0.207232, 0.564916,
		-0.404636, 0.879830, 0.249338,
		-0.445359, -0.427732, 0.786575,
		41.866730, 32.068844, 26.189938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390514, 32.970745, 26.135498>,  <42.178478, 32.368256, 25.639334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390514, 32.970745, 26.135498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272362, 32.633785, 26.315767>,  <42.201469, 32.431610, 26.423929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272362, 32.633785, 26.315767>,  <42.390514, 32.970745, 26.135498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272362, 32.633785, 26.315767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782397, 0.057418, 0.620127,
		-0.548274, 0.535778, 0.642135,
		-0.295381, -0.842404, 0.450672,
		42.183746, 32.381065, 26.450970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713417, 32.840599, 26.394642>,  <42.390514, 32.970745, 26.135498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713417, 32.840599, 26.394642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449722, 32.623127, 26.602419>,  <41.291504, 32.492645, 26.727085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449722, 32.623127, 26.602419>,  <41.713417, 32.840599, 26.394642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449722, 32.623127, 26.602419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746419, -0.389655, 0.539469,
		-0.090894, 0.743360, 0.662687,
		-0.659239, -0.543676, 0.519441,
		41.251949, 32.460026, 26.758251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856579, 32.848137, 27.089888>,  <41.713417, 32.840599, 26.394642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856579, 32.848137, 27.089888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666031, 32.501820, 27.028601>,  <41.551704, 32.294029, 26.991829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666031, 32.501820, 27.028601>,  <41.856579, 32.848137, 27.089888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666031, 32.501820, 27.028601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759334, -0.492957, 0.424741,
		-0.443267, 0.085990, 0.892256,
		-0.476367, -0.865794, -0.153216,
		41.523121, 32.242081, 26.982635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855148, 32.485844, 27.790926>,  <41.856579, 32.848137, 27.089888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855148, 32.485844, 27.790926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889767, 32.266113, 27.458481>,  <41.910538, 32.134274, 27.259014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889767, 32.266113, 27.458481>,  <41.855148, 32.485844, 27.790926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889767, 32.266113, 27.458481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789593, -0.470886, 0.393458,
		-0.607497, -0.690293, 0.392993,
		0.086547, -0.549329, -0.831112,
		41.915730, 32.101315, 27.209146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934772, 31.780930, 27.999870>,  <41.855148, 32.485844, 27.790926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934772, 31.780930, 27.999870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090282, 31.867760, 27.641712>,  <42.183590, 31.919859, 27.426817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090282, 31.867760, 27.641712>,  <41.934772, 31.780930, 27.999870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090282, 31.867760, 27.641712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882564, -0.366691, 0.294309,
		-0.264446, -0.904663, -0.334146,
		0.388778, 0.217077, -0.895393,
		42.206917, 31.932882, 27.373095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475761, 31.296537, 28.034155>,  <41.934772, 31.780930, 27.999870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475761, 31.296537, 28.034155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541584, 31.553957, 27.735151>,  <42.581078, 31.708408, 27.555750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541584, 31.553957, 27.735151>,  <42.475761, 31.296537, 28.034155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541584, 31.553957, 27.735151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984095, -0.158527, 0.080158,
		-0.066915, -0.748809, -0.659400,
		0.164556, 0.643548, -0.747507,
		42.590950, 31.747021, 27.510899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022942, 31.280203, 28.597078>,  <42.475761, 31.296537, 28.034155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022942, 31.280203, 28.597078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038677, 31.176138, 28.982983>,  <43.048119, 31.113699, 29.214525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038677, 31.176138, 28.982983>,  <43.022942, 31.280203, 28.597078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038677, 31.176138, 28.982983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357082, 0.905415, 0.229601,
		-0.933244, 0.335468, 0.128515,
		0.039336, -0.260164, 0.964763,
		43.050480, 31.098089, 29.272411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584835, 31.644766, 28.992298>,  <43.022942, 31.280203, 28.597078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584835, 31.644766, 28.992298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899994, 31.540264, 29.215357>,  <43.089088, 31.477564, 29.349192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899994, 31.540264, 29.215357>,  <42.584835, 31.644766, 28.992298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899994, 31.540264, 29.215357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268073, 0.960753, 0.071349,
		-0.554401, 0.093274, 0.827007,
		0.787894, -0.261254, 0.557647,
		43.136364, 31.461887, 29.382650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483181, 31.846075, 29.730732>,  <42.584835, 31.644766, 28.992298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483181, 31.846075, 29.730732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863010, 31.850891, 29.605408>,  <43.090908, 31.853781, 29.530212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863010, 31.850891, 29.605408>,  <42.483181, 31.846075, 29.730732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863010, 31.850891, 29.605408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042160, 0.985284, 0.165642,
		0.310695, -0.170498, 0.935093,
		0.949574, 0.012040, -0.313311,
		43.147884, 31.854504, 29.511414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854904, 32.317780, 30.226522>,  <42.483181, 31.846075, 29.730732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854904, 32.317780, 30.226522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008251, 32.318375, 29.857086>,  <43.100262, 32.318729, 29.635424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008251, 32.318375, 29.857086>,  <42.854904, 32.317780, 30.226522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008251, 32.318375, 29.857086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203955, 0.975176, 0.086226,
		0.900793, -0.221428, 0.373553,
		0.383372, 0.001484, -0.923593,
		43.123264, 32.318821, 29.580008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570004, 32.497696, 30.032471>,  <42.854904, 32.317780, 30.226522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570004, 32.497696, 30.032471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365742, 32.623039, 29.712212>,  <43.243183, 32.698246, 29.520056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365742, 32.623039, 29.712212>,  <43.570004, 32.497696, 30.032471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365742, 32.623039, 29.712212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208571, 0.948551, 0.238221,
		0.834103, -0.045342, -0.549742,
		-0.510657, 0.313361, -0.800646,
		43.212543, 32.717049, 29.472017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907646, 33.017025, 29.651815>,  <43.570004, 32.497696, 30.032471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907646, 33.017025, 29.651815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534069, 33.101864, 29.536737>,  <43.309925, 33.152767, 29.467690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534069, 33.101864, 29.536737>,  <43.907646, 33.017025, 29.651815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534069, 33.101864, 29.536737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152146, 0.964248, 0.216974,
		0.323430, 0.158869, -0.932820,
		-0.933940, 0.212101, -0.287696,
		43.253887, 33.165493, 29.450428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812916, 33.699215, 29.289583>,  <43.907646, 33.017025, 29.651815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812916, 33.699215, 29.289583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446404, 33.634865, 29.436302>,  <43.226494, 33.596252, 29.524334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446404, 33.634865, 29.436302>,  <43.812916, 33.699215, 29.289583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446404, 33.634865, 29.436302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099220, 0.978414, 0.181277,
		-0.388042, 0.129708, -0.912469,
		-0.916285, -0.160878, 0.366796,
		43.171516, 33.586601, 29.546341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378510, 34.197937, 28.863653>,  <43.812916, 33.699215, 29.289583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378510, 34.197937, 28.863653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267990, 34.092857, 29.233442>,  <43.201679, 34.029808, 29.455317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267990, 34.092857, 29.233442>,  <43.378510, 34.197937, 28.863653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267990, 34.092857, 29.233442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120811, 0.944793, 0.304582,
		-0.953450, 0.195841, -0.229303,
		-0.276294, -0.262702, 0.924473,
		43.185101, 34.014046, 29.510784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694633, 34.475025, 29.245472>,  <43.378510, 34.197937, 28.863653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694633, 34.475025, 29.245472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979145, 34.388546, 29.513004>,  <43.149853, 34.336658, 29.673523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979145, 34.388546, 29.513004>,  <42.694633, 34.475025, 29.245472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979145, 34.388546, 29.513004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074099, 0.923159, 0.377210,
		-0.698989, -0.317863, 0.640607,
		0.711283, -0.216197, 0.668831,
		43.192532, 34.323689, 29.713654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447571, 34.291862, 29.915751>,  <42.694633, 34.475025, 29.245472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447571, 34.291862, 29.915751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124889, 34.055515, 29.919798>,  <41.931282, 33.913708, 29.922226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124889, 34.055515, 29.919798>,  <42.447571, 34.291862, 29.915751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124889, 34.055515, 29.919798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566402, 0.768190, -0.298450,
		0.168572, -0.246492, -0.954372,
		-0.806704, -0.590868, 0.010119,
		41.882877, 33.878254, 29.922834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935143, 34.165974, 30.479265>,  <42.447571, 34.291862, 29.915751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935143, 34.165974, 30.479265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000462, 34.270332, 30.859846>,  <42.039654, 34.332947, 31.088196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000462, 34.270332, 30.859846>,  <41.935143, 34.165974, 30.479265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000462, 34.270332, 30.859846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950961, -0.215163, 0.222213,
		0.262693, -0.941082, 0.212970,
		0.163297, 0.260900, 0.951454,
		42.049450, 34.348602, 31.145283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748466, 33.504349, 30.987572>,  <41.935143, 34.165974, 30.479265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748466, 33.504349, 30.987572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711967, 33.867790, 31.150597>,  <41.690067, 34.085857, 31.248411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711967, 33.867790, 31.150597>,  <41.748466, 33.504349, 30.987572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711967, 33.867790, 31.150597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866654, -0.274043, 0.416908,
		0.490495, -0.315173, 0.812454,
		-0.091249, 0.908607, 0.407562,
		41.684593, 34.140373, 31.272865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585030, 33.425488, 31.623592>,  <41.748466, 33.504349, 30.987572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585030, 33.425488, 31.623592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446239, 33.797012, 31.571560>,  <41.362965, 34.019928, 31.540340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446239, 33.797012, 31.571560>,  <41.585030, 33.425488, 31.623592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446239, 33.797012, 31.571560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898765, -0.289655, 0.329123,
		0.268014, 0.231108, 0.935285,
		-0.346973, 0.928811, -0.130080,
		41.342148, 34.075657, 31.532536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122982, 33.561840, 32.061470>,  <41.585030, 33.425488, 31.623592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122982, 33.561840, 32.061470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028553, 33.861046, 31.813360>,  <40.971897, 34.040569, 31.664494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028553, 33.861046, 31.813360>,  <41.122982, 33.561840, 32.061470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028553, 33.861046, 31.813360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910076, 0.053566, 0.410965,
		0.340635, 0.661514, 0.668107,
		-0.236072, 0.748017, -0.620275,
		40.957733, 34.085449, 31.627277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014957, 34.271358, 32.375252>,  <41.122982, 33.561840, 32.061470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014957, 34.271358, 32.375252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801567, 34.164944, 32.054096>,  <40.673534, 34.101093, 31.861403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801567, 34.164944, 32.054096>,  <41.014957, 34.271358, 32.375252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801567, 34.164944, 32.054096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845817, 0.166969, 0.506671,
		-0.000736, 0.949392, -0.314093,
		-0.533473, -0.266038, -0.802889,
		40.641525, 34.085133, 31.813231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483387, 34.821663, 32.350735>,  <41.014957, 34.271358, 32.375252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483387, 34.821663, 32.350735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339855, 34.491287, 32.176807>,  <40.253735, 34.293060, 32.072453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339855, 34.491287, 32.176807>,  <40.483387, 34.821663, 32.350735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339855, 34.491287, 32.176807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795630, 0.027063, 0.605179,
		-0.488072, 0.563112, -0.666851,
		-0.358830, -0.825938, -0.434820,
		40.232204, 34.243507, 32.046360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760109, 34.949135, 32.211502>,  <40.483387, 34.821663, 32.350735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760109, 34.949135, 32.211502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779026, 34.549652, 32.219002>,  <39.790379, 34.309963, 32.223503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779026, 34.549652, 32.219002>,  <39.760109, 34.949135, 32.211502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779026, 34.549652, 32.219002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690443, -0.019123, 0.723134,
		-0.721839, -0.047145, -0.690453,
		0.047296, -0.998705, 0.018748,
		39.793217, 34.250042, 32.224625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126740, 34.816036, 32.143337>,  <39.760109, 34.949135, 32.211502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126740, 34.816036, 32.143337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275627, 34.484421, 32.310261>,  <39.364960, 34.285454, 32.410416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275627, 34.484421, 32.310261>,  <39.126740, 34.816036, 32.143337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275627, 34.484421, 32.310261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789686, -0.046625, 0.611737,
		-0.487695, -0.557248, -0.672033,
		0.372223, -0.829036, 0.417312,
		39.387295, 34.235710, 32.435455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579693, 34.582973, 32.451733>,  <39.126740, 34.816036, 32.143337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579693, 34.582973, 32.451733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803432, 34.276154, 32.577442>,  <38.937675, 34.092060, 32.652866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803432, 34.276154, 32.577442>,  <38.579693, 34.582973, 32.451733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803432, 34.276154, 32.577442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752777, -0.311297, 0.580018,
		-0.347074, -0.561003, -0.751542,
		0.559345, -0.767053, 0.314268,
		38.971237, 34.046040, 32.671722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233879, 33.985092, 32.295692>,  <38.579693, 34.582973, 32.451733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233879, 33.985092, 32.295692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466656, 33.929260, 32.616158>,  <38.606323, 33.895763, 32.808437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466656, 33.929260, 32.616158>,  <38.233879, 33.985092, 32.295692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466656, 33.929260, 32.616158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752869, -0.464926, 0.465867,
		0.307456, -0.874278, -0.375644,
		0.581944, -0.139577, 0.801161,
		38.641239, 33.887386, 32.856506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145226, 33.231636, 32.501480>,  <38.233879, 33.985092, 32.295692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145226, 33.231636, 32.501480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286274, 33.431126, 32.818199>,  <38.370903, 33.550819, 33.008228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286274, 33.431126, 32.818199>,  <38.145226, 33.231636, 32.501480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286274, 33.431126, 32.818199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683505, -0.440647, 0.581937,
		0.639126, -0.746397, 0.185499,
		0.352617, 0.498721, 0.791795,
		38.392059, 33.580742, 33.055737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239864, 32.810158, 33.099220>,  <38.145226, 33.231636, 32.501480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239864, 32.810158, 33.099220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172359, 33.189648, 33.206139>,  <38.131859, 33.417339, 33.270290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172359, 33.189648, 33.206139>,  <38.239864, 32.810158, 33.099220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172359, 33.189648, 33.206139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650279, -0.310961, 0.693138,
		0.740714, -0.056844, 0.669411,
		-0.168760, 0.948721, 0.267298,
		38.121731, 33.474262, 33.286327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553673, 32.295197, 33.377510>,  <38.239864, 32.810158, 33.099220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553673, 32.295197, 33.377510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451942, 32.626472, 33.577282>,  <38.390903, 32.825237, 33.697144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451942, 32.626472, 33.577282>,  <38.553673, 32.295197, 33.377510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451942, 32.626472, 33.577282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936714, -0.339412, 0.085831,
		0.240595, -0.445991, 0.862094,
		-0.254325, 0.828186, 0.499427,
		38.375645, 32.874928, 33.727112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211109, 32.087345, 34.042572>,  <38.553673, 32.295197, 33.377510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211109, 32.087345, 34.042572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111156, 32.445354, 33.894791>,  <38.051186, 32.660160, 33.806122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111156, 32.445354, 33.894791>,  <38.211109, 32.087345, 34.042572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111156, 32.445354, 33.894791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934868, -0.322371, -0.148657,
		-0.252151, 0.308239, 0.917283,
		-0.249884, 0.895023, -0.369449,
		38.036190, 32.713860, 33.783955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504993, 32.214424, 34.337830>,  <38.211109, 32.087345, 34.042572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504993, 32.214424, 34.337830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569153, 32.440475, 34.014126>,  <37.607647, 32.576107, 33.819904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569153, 32.440475, 34.014126>,  <37.504993, 32.214424, 34.337830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569153, 32.440475, 34.014126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931851, -0.183641, -0.312937,
		-0.325462, 0.804306, 0.497158,
		0.160399, 0.565126, -0.809262,
		37.617271, 32.610012, 33.771347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518898, 31.644493, 34.900143>,  <37.504993, 32.214424, 34.337830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518898, 31.644493, 34.900143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841747, 31.850904, 34.785416>,  <38.035458, 31.974751, 34.716579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841747, 31.850904, 34.785416>,  <37.518898, 31.644493, 34.900143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841747, 31.850904, 34.785416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186248, 0.238459, 0.953126,
		0.560236, -0.822710, 0.096357,
		0.807123, 0.516029, -0.286822,
		38.083885, 32.005714, 34.699368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208656, 31.369858, 35.250034>,  <37.518898, 31.644493, 34.900143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208656, 31.369858, 35.250034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220081, 31.759481, 35.160240>,  <38.226936, 31.993256, 35.106365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220081, 31.759481, 35.160240>,  <38.208656, 31.369858, 35.250034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220081, 31.759481, 35.160240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120259, 0.219598, 0.968150,
		0.992331, -0.054651, -0.110867,
		0.028564, 0.974059, -0.224486,
		38.228649, 32.051701, 35.092896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820999, 31.615854, 35.771488>,  <38.208656, 31.369858, 35.250034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820999, 31.615854, 35.771488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577053, 31.919907, 35.681812>,  <38.430687, 32.102337, 35.628006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577053, 31.919907, 35.681812>,  <38.820999, 31.615854, 35.771488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577053, 31.919907, 35.681812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390788, 0.534547, 0.749363,
		0.689454, 0.369402, -0.623053,
		-0.609867, 0.760133, -0.224188,
		38.394093, 32.147945, 35.614555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229454, 32.279388, 35.682503>,  <38.820999, 31.615854, 35.771488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229454, 32.279388, 35.682503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852108, 32.381302, 35.767502>,  <38.625702, 32.442451, 35.818501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852108, 32.381302, 35.767502>,  <39.229454, 32.279388, 35.682503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852108, 32.381302, 35.767502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327061, 0.606718, 0.724516,
		0.055670, 0.752980, -0.655684,
		-0.943362, 0.254782, 0.212494,
		38.569099, 32.457737, 35.831249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255039, 32.131260, 34.838493>,  <39.229454, 32.279388, 35.682503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255039, 32.131260, 34.838493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375015, 32.129215, 34.456917>,  <39.447002, 32.127991, 34.227970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375015, 32.129215, 34.456917>,  <39.255039, 32.131260, 34.838493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375015, 32.129215, 34.456917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952084, 0.064257, 0.299010,
		0.059770, -0.997920, 0.024139,
		0.299939, -0.005111, -0.953945,
		39.464996, 32.127682, 34.170734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834679, 31.609278, 34.760860>,  <39.255039, 32.131260, 34.838493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834679, 31.609278, 34.760860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850395, 31.898922, 34.485435>,  <39.859825, 32.072708, 34.320179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850395, 31.898922, 34.485435>,  <39.834679, 31.609278, 34.760860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850395, 31.898922, 34.485435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998046, 0.005067, 0.062276,
		0.048584, -0.689665, -0.722497,
		0.039289, 0.724111, -0.688564,
		39.862183, 32.116154, 34.278866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365932, 31.313566, 34.321625>,  <39.834679, 31.609278, 34.760860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365932, 31.313566, 34.321625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325577, 31.705364, 34.251869>,  <40.301365, 31.940443, 34.210014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325577, 31.705364, 34.251869>,  <40.365932, 31.313566, 34.321625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325577, 31.705364, 34.251869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982180, 0.125994, 0.139459,
		0.158571, -0.157210, -0.974751,
		-0.100888, 0.979495, -0.174387,
		40.295311, 31.999212, 34.199554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891914, 31.573267, 33.857407>,  <40.365932, 31.313566, 34.321625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891914, 31.573267, 33.857407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748848, 31.887136, 34.059937>,  <40.663010, 32.075459, 34.181454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748848, 31.887136, 34.059937>,  <40.891914, 31.573267, 33.857407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748848, 31.887136, 34.059937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907454, 0.420034, -0.009921,
		-0.220458, 0.455918, -0.862286,
		-0.357666, 0.784672, 0.506324,
		40.641548, 32.122540, 34.211834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937042, 32.222641, 33.525227>,  <40.891914, 31.573267, 33.857407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937042, 32.222641, 33.525227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950565, 32.249855, 33.924072>,  <40.958679, 32.266182, 34.163380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950565, 32.249855, 33.924072>,  <40.937042, 32.222641, 33.525227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950565, 32.249855, 33.924072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868613, 0.491472, -0.062986,
		-0.494337, 0.868232, -0.042478,
		0.033810, 0.068034, 0.997110,
		40.960709, 32.270264, 34.223206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994129, 32.950878, 33.730461>,  <40.937042, 32.222641, 33.525227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994129, 32.950878, 33.730461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183155, 32.704876, 33.982952>,  <41.296570, 32.557274, 34.134445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183155, 32.704876, 33.982952>,  <40.994129, 32.950878, 33.730461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183155, 32.704876, 33.982952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813794, 0.579432, -0.044703,
		-0.338261, 0.534815, 0.774308,
		0.472567, -0.615006, 0.631228,
		41.324924, 32.520374, 34.172321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304489, 33.311104, 34.350204>,  <40.994129, 32.950878, 33.730461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304489, 33.311104, 34.350204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521122, 32.998791, 34.225582>,  <41.651100, 32.811401, 34.150806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521122, 32.998791, 34.225582>,  <41.304489, 33.311104, 34.350204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521122, 32.998791, 34.225582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790181, 0.599295, -0.128295,
		0.286886, -0.176705, 0.941526,
		0.541581, -0.780782, -0.311558,
		41.683598, 32.764557, 34.132114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886711, 33.266533, 34.763157>,  <41.304489, 33.311104, 34.350204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886711, 33.266533, 34.763157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952675, 33.103657, 34.403824>,  <41.992252, 33.005932, 34.188225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952675, 33.103657, 34.403824>,  <41.886711, 33.266533, 34.763157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952675, 33.103657, 34.403824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816020, 0.567916, -0.107625,
		0.554001, -0.715308, 0.425931,
		0.164909, -0.407193, -0.898331,
		42.002148, 32.981499, 34.134323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509789, 33.020306, 34.686649>,  <41.886711, 33.266533, 34.763157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509789, 33.020306, 34.686649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399067, 33.106121, 34.311981>,  <42.332634, 33.157608, 34.087181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399067, 33.106121, 34.311981>,  <42.509789, 33.020306, 34.686649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399067, 33.106121, 34.311981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780811, 0.618379, -0.089112,
		0.560100, -0.756031, -0.338682,
		-0.276805, 0.214535, -0.936672,
		42.316025, 33.170483, 34.030979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028522, 32.836411, 34.295494>,  <42.509789, 33.020306, 34.686649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028522, 32.836411, 34.295494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816059, 33.135178, 34.135498>,  <42.688583, 33.314438, 34.039501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816059, 33.135178, 34.135498>,  <43.028522, 32.836411, 34.295494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816059, 33.135178, 34.135498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835490, 0.540191, -0.100749,
		0.140820, -0.387702, -0.910965,
		-0.531155, 0.746915, -0.399990,
		42.656712, 33.359253, 34.015499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207874, 33.003227, 33.565155>,  <43.028522, 32.836411, 34.295494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207874, 33.003227, 33.565155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073124, 33.323147, 33.763882>,  <42.992275, 33.515099, 33.883118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073124, 33.323147, 33.763882>,  <43.207874, 33.003227, 33.565155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073124, 33.323147, 33.763882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848328, 0.486747, -0.208367,
		-0.408478, 0.351271, -0.842469,
		-0.336876, 0.799804, 0.496819,
		42.972061, 33.563087, 33.912926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580128, 33.530209, 33.186535>,  <43.207874, 33.003227, 33.565155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580128, 33.530209, 33.186535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370071, 33.689819, 33.487202>,  <43.244038, 33.785583, 33.667603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370071, 33.689819, 33.487202>,  <43.580128, 33.530209, 33.186535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370071, 33.689819, 33.487202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641024, 0.766426, 0.040980,
		-0.559748, 0.503359, -0.658264,
		-0.525138, 0.399024, 0.751671,
		43.212528, 33.809528, 33.712704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466312, 34.300655, 33.089348>,  <43.580128, 33.530209, 33.186535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466312, 34.300655, 33.089348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447731, 34.193119, 33.474174>,  <43.436581, 34.128597, 33.705070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447731, 34.193119, 33.474174>,  <43.466312, 34.300655, 33.089348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447731, 34.193119, 33.474174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533157, 0.807777, 0.251475,
		-0.844740, 0.524614, 0.105808,
		-0.046458, -0.268843, 0.962063,
		43.433792, 34.112465, 33.762794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421577, 34.885212, 33.425217>,  <43.466312, 34.300655, 33.089348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421577, 34.885212, 33.425217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552334, 34.612713, 33.687222>,  <43.630787, 34.449215, 33.844425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552334, 34.612713, 33.687222>,  <43.421577, 34.885212, 33.425217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552334, 34.612713, 33.687222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569442, 0.695129, 0.438785,
		-0.754241, 0.229559, 0.615161,
		0.326889, -0.681248, 0.655015,
		43.650402, 34.408337, 33.883724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192875, 35.042900, 34.137177>,  <43.421577, 34.885212, 33.425217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192875, 35.042900, 34.137177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552372, 34.873135, 34.093117>,  <43.768070, 34.771275, 34.066681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552372, 34.873135, 34.093117>,  <43.192875, 35.042900, 34.137177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552372, 34.873135, 34.093117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438426, 0.866090, 0.240148,
		-0.006522, -0.264125, 0.964466,
		0.898744, -0.424414, -0.110151,
		43.821995, 34.745811, 34.060070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526466, 35.094196, 34.691753>,  <43.192875, 35.042900, 34.137177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526466, 35.094196, 34.691753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830280, 35.060265, 34.433788>,  <44.012569, 35.039906, 34.279007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830280, 35.060265, 34.433788>,  <43.526466, 35.094196, 34.691753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830280, 35.060265, 34.433788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553069, 0.606086, 0.571642,
		0.342382, -0.790863, 0.507258,
		0.759532, -0.084829, -0.644915,
		44.058140, 35.034817, 34.240314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055740, 34.784512, 35.084736>,  <43.526466, 35.094196, 34.691753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055740, 34.784512, 35.084736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153732, 35.039673, 34.792690>,  <44.212528, 35.192772, 34.617462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153732, 35.039673, 34.792690>,  <44.055740, 34.784512, 35.084736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153732, 35.039673, 34.792690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329605, 0.653407, 0.681484,
		0.911782, -0.407596, -0.050188,
		0.244977, 0.637907, -0.730110,
		44.227226, 35.231045, 34.573658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555580, 35.222134, 35.377064>,  <44.055740, 34.784512, 35.084736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555580, 35.222134, 35.377064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478645, 35.441902, 35.051823>,  <44.432484, 35.573765, 34.856678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478645, 35.441902, 35.051823>,  <44.555580, 35.222134, 35.377064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478645, 35.441902, 35.051823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284546, 0.824203, 0.489615,
		0.939171, -0.137197, -0.314858,
		-0.192333, 0.549423, -0.813106,
		44.420944, 35.606728, 34.807892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348347, 35.031021, 36.114738>,  <44.555580, 35.222134, 35.377064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348347, 35.031021, 36.114738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001068, 35.034058, 36.313202>,  <43.792702, 35.035877, 36.432281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001068, 35.034058, 36.313202>,  <44.348347, 35.031021, 36.114738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001068, 35.034058, 36.313202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011512, -0.999306, 0.035429,
		0.496084, 0.036471, 0.867508,
		-0.868198, 0.007589, 0.496160,
		43.740608, 35.036335, 36.462051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439350, 34.639790, 36.882877>,  <44.348347, 35.031021, 36.114738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439350, 34.639790, 36.882877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082520, 34.652287, 36.702557>,  <43.868420, 34.659786, 36.594364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082520, 34.652287, 36.702557>,  <44.439350, 34.639790, 36.882877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082520, 34.652287, 36.702557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085715, -0.991195, 0.100923,
		-0.443682, 0.128671, 0.886899,
		-0.892076, 0.031242, -0.450804,
		43.814896, 34.661659, 36.567314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149441, 34.620602, 36.704460>,  <44.439350, 34.639790, 36.882877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149441, 34.620602, 36.704460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476902, 34.690090, 36.923412>,  <45.673378, 34.731785, 37.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476902, 34.690090, 36.923412>,  <45.149441, 34.620602, 36.704460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476902, 34.690090, 36.923412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018800, 0.960746, -0.276792,
		-0.573975, 0.216307, 0.789787,
		0.818657, 0.173720, 0.547378,
		45.722500, 34.742207, 37.087627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086205, 35.218876, 37.161156>,  <45.149441, 34.620602, 36.704460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086205, 35.218876, 37.161156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471123, 35.157955, 37.071003>,  <45.702072, 35.121403, 37.016911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471123, 35.157955, 37.071003>,  <45.086205, 35.218876, 37.161156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471123, 35.157955, 37.071003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130910, 0.985594, -0.107086,
		0.238442, 0.073544, 0.968368,
		0.962293, -0.152303, -0.225379,
		45.759811, 35.112263, 37.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599674, 35.634129, 37.629272>,  <45.086205, 35.218876, 37.161156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599674, 35.634129, 37.629272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724419, 35.593365, 37.251415>,  <45.799267, 35.568909, 37.024700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724419, 35.593365, 37.251415>,  <45.599674, 35.634129, 37.629272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724419, 35.593365, 37.251415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084166, 0.987360, -0.134300,
		0.946391, 0.121390, 0.299346,
		0.311865, -0.101906, -0.944646,
		45.817978, 35.562794, 36.968021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021027, 36.156170, 37.490097>,  <45.599674, 35.634129, 37.629272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021027, 36.156170, 37.490097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897545, 36.053131, 37.123852>,  <45.823456, 35.991310, 36.904106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897545, 36.053131, 37.123852>,  <46.021027, 36.156170, 37.490097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897545, 36.053131, 37.123852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089193, 0.950549, -0.297492,
		0.946969, -0.173501, -0.270458,
		-0.308699, -0.257593, -0.915615,
		45.804935, 35.975853, 36.849167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487125, 36.455402, 37.131592>,  <46.021027, 36.156170, 37.490097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487125, 36.455402, 37.131592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164368, 36.419128, 36.898117>,  <45.970711, 36.397366, 36.758030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164368, 36.419128, 36.898117>,  <46.487125, 36.455402, 37.131592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164368, 36.419128, 36.898117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067121, 0.967669, -0.243127,
		0.586866, -0.235356, -0.774723,
		-0.806897, -0.090683, -0.583690,
		45.922298, 36.391922, 36.723011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549324, 36.571423, 36.348343>,  <46.487125, 36.455402, 37.131592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549324, 36.571423, 36.348343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194424, 36.688988, 36.490555>,  <45.981483, 36.759525, 36.575882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194424, 36.688988, 36.490555>,  <46.549324, 36.571423, 36.348343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194424, 36.688988, 36.490555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284277, 0.955369, -0.080358,
		-0.363282, 0.029772, -0.931203,
		-0.887250, 0.293912, 0.355532,
		45.928249, 36.777161, 36.597214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.743851, 35.973576, 36.048008>,  <46.549324, 36.571423, 36.348343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.743851, 35.973576, 36.048008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559875, 35.697571, 35.824459>,  <46.449490, 35.531967, 35.690331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559875, 35.697571, 35.824459>,  <46.743851, 35.973576, 36.048008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559875, 35.697571, 35.824459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838614, -0.544429, -0.017973,
		-0.291864, -0.476943, 0.829060,
		-0.459936, -0.690016, -0.558871,
		46.421894, 35.490566, 35.656799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803532, 35.218502, 36.141590>,  <46.743851, 35.973576, 36.048008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803532, 35.218502, 36.141590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753025, 35.282291, 35.749954>,  <46.722721, 35.320564, 35.514973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753025, 35.282291, 35.749954>,  <46.803532, 35.218502, 36.141590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.753025, 35.282291, 35.749954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770729, -0.605605, -0.198040,
		-0.624526, -0.779622, -0.046441,
		-0.126271, 0.159475, -0.979093,
		46.715145, 35.330135, 35.456226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822189, 34.522652, 35.820614>,  <46.803532, 35.218502, 36.141590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822189, 34.522652, 35.820614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.977974, 34.809231, 35.589088>,  <47.071445, 34.981178, 35.450172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.977974, 34.809231, 35.589088>,  <46.822189, 34.522652, 35.820614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.977974, 34.809231, 35.589088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880217, -0.474546, 0.004877,
		-0.271179, -0.511381, -0.815445,
		0.389461, 0.716446, -0.578814,
		47.094810, 35.024166, 35.415443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268555, 34.314762, 35.140839>,  <46.822189, 34.522652, 35.820614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268555, 34.314762, 35.140839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.412918, 34.646385, 35.311672>,  <47.499538, 34.845360, 35.414173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.412918, 34.646385, 35.311672>,  <47.268555, 34.314762, 35.140839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.412918, 34.646385, 35.311672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870273, -0.464005, 0.165299,
		0.335212, 0.312021, -0.888975,
		0.360912, 0.829061, 0.427083,
		47.521191, 34.895103, 35.439796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.921791, 34.398956, 34.878098>,  <47.268555, 34.314762, 35.140839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.921791, 34.398956, 34.878098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.902905, 34.562977, 35.242435>,  <47.891571, 34.661388, 35.461037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.902905, 34.562977, 35.242435>,  <47.921791, 34.398956, 34.878098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.902905, 34.562977, 35.242435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810228, -0.517588, 0.275015,
		0.584210, 0.750974, -0.307793,
		-0.047219, 0.410049, 0.910840,
		47.888741, 34.685993, 35.515686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584438, 34.756386, 34.355991>,  <47.921791, 34.398956, 34.878098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584438, 34.756386, 34.355991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337925, 35.004112, 34.550579>,  <47.190018, 35.152748, 34.667332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337925, 35.004112, 34.550579>,  <47.584438, 34.756386, 34.355991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.337925, 35.004112, 34.550579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688322, 0.123463, 0.714821,
		0.382639, 0.775374, -0.502377,
		-0.616279, 0.619316, 0.486465,
		47.153042, 35.189907, 34.696518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.993103, 35.106285, 34.813072>,  <47.584438, 34.756386, 34.355991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.993103, 35.106285, 34.813072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616547, 35.164761, 34.934673>,  <47.390614, 35.199848, 35.007633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616547, 35.164761, 34.934673>,  <47.993103, 35.106285, 34.813072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616547, 35.164761, 34.934673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334610, 0.518887, 0.786633,
		-0.042747, 0.842250, -0.537390,
		-0.941387, 0.146190, 0.304006,
		47.334129, 35.208618, 35.025875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.749977, 29.729486, 27.079185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667870, 30.114563, 27.008659>,  <32.618607, 30.345610, 26.966343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667870, 30.114563, 27.008659>,  <32.749977, 29.729486, 27.079185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667870, 30.114563, 27.008659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963920, 0.230055, 0.133911,
		0.169477, -0.142466, -0.975183,
		-0.205268, 0.962693, -0.176315,
		32.606289, 30.403372, 26.955765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431068, 29.954023, 26.697041>,  <32.749977, 29.729486, 27.079185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431068, 29.954023, 26.697041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.233875, 30.289917, 26.788090>,  <33.115559, 30.491453, 26.842720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.233875, 30.289917, 26.788090>,  <33.431068, 29.954023, 26.697041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233875, 30.289917, 26.788090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870039, 0.475601, 0.129755,
		0.000703, 0.262007, -0.965066,
		-0.492983, 0.839736, 0.227623,
		33.085979, 30.541838, 26.856377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791351, 30.451584, 26.440563>,  <33.431068, 29.954023, 26.697041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791351, 30.451584, 26.440563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574554, 30.665323, 26.700016>,  <33.444477, 30.793568, 26.855688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574554, 30.665323, 26.700016>,  <33.791351, 30.451584, 26.440563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574554, 30.665323, 26.700016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817991, 0.512427, 0.261362,
		-0.192717, 0.672228, -0.714821,
		-0.541988, 0.534348, 0.648630,
		33.411957, 30.825628, 26.894606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871197, 31.200735, 26.300589>,  <33.791351, 30.451584, 26.440563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871197, 31.200735, 26.300589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.724495, 31.166548, 26.671143>,  <33.636475, 31.146036, 26.893475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.724495, 31.166548, 26.671143>,  <33.871197, 31.200735, 26.300589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724495, 31.166548, 26.671143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701421, 0.628740, 0.335701,
		-0.611146, 0.772905, -0.170645,
		-0.366756, -0.085468, 0.926383,
		33.614468, 31.140907, 26.949057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845421, 31.874586, 26.594275>,  <33.871197, 31.200735, 26.300589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845421, 31.874586, 26.594275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863529, 31.619848, 26.902140>,  <33.874393, 31.467005, 27.086859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863529, 31.619848, 26.902140>,  <33.845421, 31.874586, 26.594275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863529, 31.619848, 26.902140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858693, 0.418515, 0.295789,
		-0.510486, 0.647514, 0.565800,
		0.045268, -0.636845, 0.769662,
		33.877110, 31.428795, 27.133038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944962, 32.205269, 27.253662>,  <33.845421, 31.874586, 26.594275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944962, 32.205269, 27.253662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076221, 31.844244, 27.365156>,  <34.154976, 31.627628, 27.432053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076221, 31.844244, 27.365156>,  <33.944962, 32.205269, 27.253662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076221, 31.844244, 27.365156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726512, 0.429732, 0.536201,
		-0.603740, 0.026554, 0.796739,
		0.328146, -0.902566, 0.278738,
		34.174664, 31.573475, 27.448778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941902, 32.209797, 28.063131>,  <33.944962, 32.205269, 27.253662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941902, 32.209797, 28.063131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.193989, 31.924675, 27.940014>,  <34.345242, 31.753603, 27.866144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.193989, 31.924675, 27.940014>,  <33.941902, 32.209797, 28.063131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193989, 31.924675, 27.940014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716493, 0.381210, 0.584224,
		-0.299101, -0.588721, 0.750964,
		0.630220, -0.712802, -0.307794,
		34.383053, 31.710835, 27.847675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303410, 31.981918, 28.622885>,  <33.941902, 32.209797, 28.063131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303410, 31.981918, 28.622885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570728, 31.825888, 28.369518>,  <34.731121, 31.732269, 28.217499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570728, 31.825888, 28.369518>,  <34.303410, 31.981918, 28.622885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570728, 31.825888, 28.369518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728100, 0.168470, 0.664446,
		-0.152473, -0.905239, 0.396603,
		0.668298, -0.390077, -0.633418,
		34.771217, 31.708864, 28.179493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822586, 31.456085, 29.010550>,  <34.303410, 31.981918, 28.622885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822586, 31.456085, 29.010550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007854, 31.599640, 28.686407>,  <35.119015, 31.685772, 28.491922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007854, 31.599640, 28.686407>,  <34.822586, 31.456085, 29.010550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007854, 31.599640, 28.686407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847243, 0.089044, 0.523690,
		0.260102, -0.929124, -0.262821,
		0.463171, 0.358886, -0.810354,
		35.146805, 31.707306, 28.443300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545197, 31.317421, 29.093918>,  <34.822586, 31.456085, 29.010550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545197, 31.317421, 29.093918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562096, 31.564728, 28.779985>,  <35.572235, 31.713112, 28.591625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562096, 31.564728, 28.779985>,  <35.545197, 31.317421, 29.093918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562096, 31.564728, 28.779985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971591, 0.157662, 0.176502,
		0.232864, -0.769994, -0.594041,
		0.042248, 0.618266, -0.784833,
		35.574772, 31.750208, 28.544535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126221, 31.113924, 28.674353>,  <35.545197, 31.317421, 29.093918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126221, 31.113924, 28.674353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044083, 31.493845, 28.579943>,  <35.994797, 31.721798, 28.523296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044083, 31.493845, 28.579943>,  <36.126221, 31.113924, 28.674353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044083, 31.493845, 28.579943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977874, 0.208962, -0.009890,
		0.039927, -0.232834, -0.971697,
		-0.205350, 0.949802, -0.236025,
		35.982479, 31.778786, 28.509134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516079, 31.136818, 28.119705>,  <36.126221, 31.113924, 28.674353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516079, 31.136818, 28.119705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440742, 31.518991, 28.210634>,  <36.395542, 31.748295, 28.265192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440742, 31.518991, 28.210634>,  <36.516079, 31.136818, 28.119705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440742, 31.518991, 28.210634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981827, 0.188676, 0.020438,
		-0.023363, 0.227039, -0.973605,
		-0.188337, 0.955434, 0.227321,
		36.384243, 31.805622, 28.278831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862988, 31.519489, 27.585155>,  <36.516079, 31.136818, 28.119705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862988, 31.519489, 27.585155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810394, 31.772938, 27.890110>,  <36.778839, 31.925007, 28.073082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810394, 31.772938, 27.890110>,  <36.862988, 31.519489, 27.585155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810394, 31.772938, 27.890110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912185, 0.378430, -0.157193,
		-0.388111, 0.674769, -0.627740,
		-0.131487, 0.633623, 0.762387,
		36.770947, 31.963024, 28.118826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056805, 32.251648, 27.364363>,  <36.862988, 31.519489, 27.585155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056805, 32.251648, 27.364363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105976, 32.222504, 27.760258>,  <37.135479, 32.205017, 27.997795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105976, 32.222504, 27.760258>,  <37.056805, 32.251648, 27.364363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105976, 32.222504, 27.760258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965791, 0.238242, -0.102416,
		-0.228335, 0.968469, 0.099654,
		0.122928, -0.072859, 0.989737,
		37.142853, 32.200645, 28.057178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431137, 32.789604, 27.496817>,  <37.056805, 32.251648, 27.364363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431137, 32.789604, 27.496817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502743, 32.576904, 27.827923>,  <37.545708, 32.449284, 28.026587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502743, 32.576904, 27.827923>,  <37.431137, 32.789604, 27.496817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502743, 32.576904, 27.827923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936034, 0.351148, 0.023146,
		-0.302975, 0.770671, 0.560599,
		0.179015, -0.531753, 0.827764,
		37.556446, 32.417377, 28.076252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865814, 33.227440, 27.839516>,  <37.431137, 32.789604, 27.496817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865814, 33.227440, 27.839516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934639, 32.881111, 28.027452>,  <37.975933, 32.673313, 28.140215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934639, 32.881111, 28.027452>,  <37.865814, 33.227440, 27.839516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934639, 32.881111, 28.027452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983097, 0.181216, -0.026083,
		-0.062560, 0.466390, 0.882364,
		0.172063, -0.865818, 0.469844,
		37.986259, 32.621365, 28.168406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314468, 33.345978, 28.496284>,  <37.865814, 33.227440, 27.839516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314468, 33.345978, 28.496284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340897, 32.957001, 28.406857>,  <38.356754, 32.723614, 28.353199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340897, 32.957001, 28.406857>,  <38.314468, 33.345978, 28.496284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340897, 32.957001, 28.406857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990742, 0.090564, -0.101132,
		0.118593, -0.214819, 0.969427,
		0.066070, -0.972446, -0.223571,
		38.360718, 32.665268, 28.339785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812374, 33.168140, 28.870066>,  <38.314468, 33.345978, 28.496284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812374, 33.168140, 28.870066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784142, 32.876045, 28.598249>,  <38.767200, 32.700790, 28.435160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784142, 32.876045, 28.598249>,  <38.812374, 33.168140, 28.870066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784142, 32.876045, 28.598249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997418, -0.060725, -0.038346,
		-0.013263, -0.680492, 0.732635,
		-0.070583, -0.730235, -0.679540,
		38.762966, 32.656975, 28.394388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171654, 32.544823, 29.207357>,  <38.812374, 33.168140, 28.870066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171654, 32.544823, 29.207357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.170521, 32.510777, 28.808811>,  <39.169842, 32.490349, 28.569683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.170521, 32.510777, 28.808811>,  <39.171654, 32.544823, 29.207357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170521, 32.510777, 28.808811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972976, -0.230286, 0.016908,
		-0.230889, -0.969394, 0.083465,
		-0.002830, -0.085113, -0.996367,
		39.169670, 32.485241, 28.509901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621841, 31.986979, 29.076738>,  <39.171654, 32.544823, 29.207357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621841, 31.986979, 29.076738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591343, 32.189480, 28.733135>,  <39.573044, 32.310982, 28.526974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591343, 32.189480, 28.733135>,  <39.621841, 31.986979, 29.076738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591343, 32.189480, 28.733135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987970, -0.077888, -0.133595,
		-0.134539, -0.858860, -0.494226,
		-0.076245, 0.506255, -0.859007,
		39.568470, 32.341354, 28.475433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069626, 31.660416, 28.596039>,  <39.621841, 31.986979, 29.076738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069626, 31.660416, 28.596039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015514, 32.026138, 28.443333>,  <39.983047, 32.245571, 28.351709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015514, 32.026138, 28.443333>,  <40.069626, 31.660416, 28.596039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015514, 32.026138, 28.443333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938370, -0.005457, -0.345590,
		-0.318059, -0.404988, -0.857218,
		-0.135282, 0.914306, -0.381764,
		39.974930, 32.300430, 28.328804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625828, 31.512836, 28.081266>,  <40.069626, 31.660416, 28.596039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625828, 31.512836, 28.081266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853977, 31.208872, 27.956554>,  <40.990868, 31.026493, 27.881727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853977, 31.208872, 27.956554>,  <40.625828, 31.512836, 28.081266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853977, 31.208872, 27.956554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821384, -0.527578, -0.216771,
		0.000239, 0.379731, -0.925097,
		0.570375, -0.759912, -0.311779,
		41.025089, 30.980898, 27.863020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352295, 31.288862, 27.459202>,  <40.625828, 31.512836, 28.081266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352295, 31.288862, 27.459202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.562000, 30.972107, 27.584461>,  <40.687824, 30.782053, 27.659616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.562000, 30.972107, 27.584461>,  <40.352295, 31.288862, 27.459202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562000, 30.972107, 27.584461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630576, -0.608154, -0.482206,
		0.572297, 0.055337, -0.818177,
		0.524261, -0.791888, 0.313151,
		40.719280, 30.734541, 27.678406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581036, 30.892946, 26.863422>,  <40.352295, 31.288862, 27.459202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581036, 30.892946, 26.863422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.565769, 30.666826, 27.193022>,  <40.556610, 30.531155, 27.390781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.565769, 30.666826, 27.193022>,  <40.581036, 30.892946, 26.863422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565769, 30.666826, 27.193022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697194, -0.575669, -0.427230,
		0.715866, -0.590795, -0.372153,
		-0.038168, -0.565302, 0.824000,
		40.554317, 30.497236, 27.440222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505737, 30.111259, 26.657974>,  <40.581036, 30.892946, 26.863422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505737, 30.111259, 26.657974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.370888, 30.102146, 27.034447>,  <40.289978, 30.096678, 27.260330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.370888, 30.102146, 27.034447>,  <40.505737, 30.111259, 26.657974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370888, 30.102146, 27.034447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760005, -0.583432, -0.286355,
		0.555641, -0.811842, 0.179374,
		-0.337127, -0.022786, 0.941184,
		40.269749, 30.095310, 27.316801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291771, 29.402828, 26.830914>,  <40.505737, 30.111259, 26.657974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291771, 29.402828, 26.830914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095005, 29.613321, 27.108358>,  <39.976944, 29.739616, 27.274826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.095005, 29.613321, 27.108358>,  <40.291771, 29.402828, 26.830914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095005, 29.613321, 27.108358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851278, -0.457802, -0.256404,
		0.182610, -0.716587, 0.673169,
		-0.491913, 0.526232, 0.693615,
		39.947430, 29.771191, 27.316442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882591, 28.912439, 27.198559>,  <40.291771, 29.402828, 26.830914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882591, 28.912439, 27.198559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.699055, 29.259529, 27.275002>,  <39.588932, 29.467783, 27.320868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.699055, 29.259529, 27.275002>,  <39.882591, 28.912439, 27.198559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699055, 29.259529, 27.275002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875750, -0.477993, 0.067710,
		0.150102, -0.136295, 0.979231,
		-0.458837, 0.867725, 0.191108,
		39.561405, 29.519846, 27.332335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552670, 28.838903, 27.832819>,  <39.882591, 28.912439, 27.198559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552670, 28.838903, 27.832819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355190, 29.134314, 27.649151>,  <39.236702, 29.311560, 27.538950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355190, 29.134314, 27.649151>,  <39.552670, 28.838903, 27.832819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355190, 29.134314, 27.649151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863695, -0.478002, 0.159827,
		-0.101448, 0.475490, 0.873852,
		-0.493699, 0.738527, -0.459171,
		39.207081, 29.355871, 27.511400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970764, 28.934538, 28.197256>,  <39.552670, 28.838903, 27.832819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970764, 28.934538, 28.197256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874065, 29.097433, 27.844957>,  <38.816044, 29.195169, 27.633577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874065, 29.097433, 27.844957>,  <38.970764, 28.934538, 28.197256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874065, 29.097433, 27.844957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863022, -0.505155, 0.003314,
		-0.443564, 0.760905, 0.473576,
		-0.241751, 0.407237, -0.880747,
		38.801540, 29.219604, 27.580734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210976, 29.212576, 28.268841>,  <38.970764, 28.934538, 28.197256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210976, 29.212576, 28.268841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271660, 29.208933, 27.873487>,  <38.308071, 29.206747, 27.636276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271660, 29.208933, 27.873487>,  <38.210976, 29.212576, 28.268841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271660, 29.208933, 27.873487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900625, -0.413283, -0.134435,
		-0.407257, 0.910557, -0.070904,
		0.151714, -0.009109, -0.988382,
		38.317173, 29.206200, 27.576973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631523, 29.538778, 28.015865>,  <38.210976, 29.212576, 28.268841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631523, 29.538778, 28.015865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771648, 29.337643, 27.699781>,  <37.855724, 29.216961, 27.510130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771648, 29.337643, 27.699781>,  <37.631523, 29.538778, 28.015865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771648, 29.337643, 27.699781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893091, -0.433569, -0.120027,
		-0.282257, 0.747778, -0.600965,
		0.350314, -0.502838, -0.790211,
		37.876743, 29.186790, 27.462717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135555, 29.644234, 27.396126>,  <37.631523, 29.538778, 28.015865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135555, 29.644234, 27.396126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349552, 29.329170, 27.273891>,  <37.477951, 29.140133, 27.200550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349552, 29.329170, 27.273891>,  <37.135555, 29.644234, 27.396126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349552, 29.329170, 27.273891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844673, -0.491060, -0.213044,
		0.017743, 0.372098, -0.928024,
		0.534988, -0.787657, -0.305588,
		37.510048, 29.092873, 27.182215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787563, 29.486496, 26.782110>,  <37.135555, 29.644234, 27.396126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787563, 29.486496, 26.782110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995075, 29.161398, 26.888178>,  <37.119583, 28.966339, 26.951818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995075, 29.161398, 26.888178>,  <36.787563, 29.486496, 26.782110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995075, 29.161398, 26.888178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783104, -0.576196, -0.233980,
		0.342956, -0.086271, -0.935381,
		0.518777, -0.812745, 0.265169,
		37.150707, 28.917574, 26.967728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760242, 29.052675, 26.255610>,  <36.787563, 29.486496, 26.782110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760242, 29.052675, 26.255610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858631, 28.837027, 26.577814>,  <36.917664, 28.707638, 26.771137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858631, 28.837027, 26.577814>,  <36.760242, 29.052675, 26.255610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858631, 28.837027, 26.577814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760151, -0.622914, -0.184795,
		0.601391, -0.566855, -0.563032,
		0.245968, -0.539123, 0.805510,
		36.932423, 28.675289, 26.819468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744297, 28.437868, 26.108290>,  <36.760242, 29.052675, 26.255610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744297, 28.437868, 26.108290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677887, 28.407040, 26.501532>,  <36.638039, 28.388542, 26.737476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677887, 28.407040, 26.501532>,  <36.744297, 28.437868, 26.108290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677887, 28.407040, 26.501532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919284, -0.348682, -0.182586,
		0.356863, -0.934067, -0.012961,
		-0.166029, -0.077073, 0.983104,
		36.628078, 28.383919, 26.796463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310833, 27.946901, 26.139124>,  <36.744297, 28.437868, 26.108290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310833, 27.946901, 26.139124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269333, 28.045809, 26.524475>,  <36.244431, 28.105154, 26.755686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269333, 28.045809, 26.524475>,  <36.310833, 27.946901, 26.139124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269333, 28.045809, 26.524475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941721, -0.336052, -0.015168,
		0.319994, -0.908805, 0.267725,
		-0.103755, 0.247269, 0.963376,
		36.238205, 28.119989, 26.813488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868923, 27.362791, 26.569132>,  <36.310833, 27.946901, 26.139124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868923, 27.362791, 26.569132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825962, 27.710487, 26.762165>,  <35.800186, 27.919106, 26.877985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825962, 27.710487, 26.762165>,  <35.868923, 27.362791, 26.569132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825962, 27.710487, 26.762165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985726, -0.156396, 0.062329,
		0.129653, -0.469002, 0.873629,
		-0.107399, 0.869239, 0.482585,
		35.793743, 27.971260, 26.906940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369213, 27.211750, 27.063471>,  <35.868923, 27.362791, 26.569132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369213, 27.211750, 27.063471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382534, 27.607397, 27.006149>,  <35.390526, 27.844786, 26.971756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382534, 27.607397, 27.006149>,  <35.369213, 27.211750, 27.063471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382534, 27.607397, 27.006149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954768, 0.073880, 0.288027,
		0.295480, 0.127229, 0.946839,
		0.033307, 0.989118, -0.143304,
		35.392525, 27.904133, 26.963158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072922, 27.580864, 27.687973>,  <35.369213, 27.211750, 27.063471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072922, 27.580864, 27.687973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029839, 27.821085, 27.371054>,  <35.003990, 27.965218, 27.180902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029839, 27.821085, 27.371054>,  <35.072922, 27.580864, 27.687973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029839, 27.821085, 27.371054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966125, 0.124766, 0.225911,
		0.234523, 0.789790, 0.566772,
		-0.107708, 0.600554, -0.792297,
		34.997524, 28.001251, 27.133366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695427, 28.118570, 27.929834>,  <35.072922, 27.580864, 27.687973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695427, 28.118570, 27.929834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.675110, 28.162418, 27.532764>,  <34.662918, 28.188726, 27.294523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.675110, 28.162418, 27.532764>,  <34.695427, 28.118570, 27.929834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675110, 28.162418, 27.532764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980957, 0.181097, 0.070196,
		0.187465, 0.977337, 0.098332,
		-0.050797, 0.109619, -0.992675,
		34.659870, 28.195305, 27.234962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.130051, 28.684343, 27.902967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172585, 28.516834, 27.542231>,  <34.198105, 28.416328, 27.325788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172585, 28.516834, 27.542231>,  <34.130051, 28.684343, 27.902967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172585, 28.516834, 27.542231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993396, -0.005427, -0.114610,
		0.043101, 0.908074, -0.416586,
		0.106335, -0.418774, -0.901843,
		34.204487, 28.391201, 27.271677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632633, 28.972143, 27.570734>,  <34.130051, 28.684343, 27.902967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632633, 28.972143, 27.570734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724846, 28.652464, 27.348694>,  <33.780174, 28.460657, 27.215469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724846, 28.652464, 27.348694>,  <33.632633, 28.972143, 27.570734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724846, 28.652464, 27.348694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951863, -0.066786, -0.299161,
		0.202016, 0.597347, -0.776123,
		0.230536, -0.799197, -0.555100,
		33.794006, 28.412704, 27.182163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276630, 29.082479, 26.909889>,  <33.632633, 28.972143, 27.570734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276630, 29.082479, 26.909889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356911, 28.691870, 26.941168>,  <33.405079, 28.457504, 26.959934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356911, 28.691870, 26.941168>,  <33.276630, 29.082479, 26.909889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356911, 28.691870, 26.941168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916856, -0.215356, -0.336149,
		0.345099, -0.004230, -0.938557,
		0.200702, -0.976526, 0.078197,
		33.417122, 28.398912, 26.964626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075787, 28.800596, 26.292467>,  <33.276630, 29.082479, 26.909889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075787, 28.800596, 26.292467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086155, 28.474358, 26.523684>,  <33.092377, 28.278614, 26.662413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086155, 28.474358, 26.523684>,  <33.075787, 28.800596, 26.292467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086155, 28.474358, 26.523684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926846, -0.236256, -0.291787,
		0.374546, -0.528191, -0.762056,
		0.025921, -0.815596, 0.578040,
		33.093933, 28.229679, 26.697096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966778, 28.229244, 25.913269>,  <33.075787, 28.800596, 26.292467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966778, 28.229244, 25.913269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878849, 28.098188, 26.280819>,  <32.826092, 28.019554, 26.501348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878849, 28.098188, 26.280819>,  <32.966778, 28.229244, 25.913269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878849, 28.098188, 26.280819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872397, -0.355506, -0.335469,
		0.436578, -0.875366, -0.207685,
		-0.219825, -0.327642, 0.918873,
		32.812901, 27.999895, 26.556480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890060, 27.425076, 25.971300>,  <32.966778, 28.229244, 25.913269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890060, 27.425076, 25.971300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.687737, 27.577839, 26.280699>,  <32.566341, 27.669497, 26.466337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.687737, 27.577839, 26.280699>,  <32.890060, 27.425076, 25.971300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687737, 27.577839, 26.280699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822406, -0.484144, -0.298754,
		0.260387, -0.787242, 0.558971,
		-0.505814, 0.381909, 0.773497,
		32.535992, 27.692411, 26.512749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470646, 26.889223, 26.254663>,  <32.890060, 27.425076, 25.971300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470646, 26.889223, 26.254663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302040, 27.214796, 26.414583>,  <32.200878, 27.410139, 26.510534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302040, 27.214796, 26.414583>,  <32.470646, 26.889223, 26.254663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302040, 27.214796, 26.414583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895446, -0.303974, -0.325233,
		-0.143189, -0.495090, 0.856961,
		-0.421513, 0.813932, 0.399800,
		32.175587, 27.458977, 26.534523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865406, 26.698656, 26.518484>,  <32.470646, 26.889223, 26.254663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865406, 26.698656, 26.518484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.800789, 27.091070, 26.475643>,  <31.762018, 27.326519, 26.449938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.800789, 27.091070, 26.475643>,  <31.865406, 26.698656, 26.518484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800789, 27.091070, 26.475643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914047, -0.189655, -0.358536,
		-0.372050, 0.039978, 0.927351,
		-0.161543, 0.981037, -0.107103,
		31.752325, 27.385382, 26.443512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285389, 26.881041, 26.863312>,  <31.865406, 26.698656, 26.518484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285389, 26.881041, 26.863312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302843, 27.162704, 26.579832>,  <31.313314, 27.331703, 26.409744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302843, 27.162704, 26.579832>,  <31.285389, 26.881041, 26.863312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302843, 27.162704, 26.579832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965558, -0.152408, -0.210881,
		-0.256505, 0.693491, 0.673257,
		0.043634, 0.704161, -0.708699,
		31.315933, 27.373953, 26.367222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640139, 27.073824, 26.842590>,  <31.285389, 26.881041, 26.863312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640139, 27.073824, 26.842590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.776497, 27.255569, 26.513388>,  <30.858313, 27.364616, 26.315866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.776497, 27.255569, 26.513388>,  <30.640139, 27.073824, 26.842590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776497, 27.255569, 26.513388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917921, -0.028170, -0.395762,
		-0.203005, 0.890370, 0.407469,
		0.340896, 0.454366, -0.823007,
		30.878765, 27.391880, 26.266485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175602, 27.624775, 26.708805>,  <30.640139, 27.073824, 26.842590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175602, 27.624775, 26.708805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.361732, 27.549980, 26.362740>,  <30.473410, 27.505104, 26.155100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.361732, 27.549980, 26.362740>,  <30.175602, 27.624775, 26.708805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361732, 27.549980, 26.362740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884841, -0.072862, -0.460161,
		0.023006, 0.979657, -0.199356,
		0.465325, -0.186985, -0.865164,
		30.501329, 27.493885, 26.103189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710318, 27.803383, 26.190447>,  <30.175602, 27.624775, 26.708805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710318, 27.803383, 26.190447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957644, 27.563850, 25.986843>,  <30.106039, 27.420132, 25.864681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957644, 27.563850, 25.986843>,  <29.710318, 27.803383, 26.190447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957644, 27.563850, 25.986843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773971, -0.351394, -0.526775,
		0.136586, 0.719670, -0.680749,
		0.618315, -0.598830, -0.509008,
		30.143139, 27.384201, 25.834141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512289, 27.912155, 25.509012>,  <29.710318, 27.803383, 26.190447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512289, 27.912155, 25.509012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.700203, 27.560373, 25.478382>,  <29.812952, 27.349304, 25.460003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.700203, 27.560373, 25.478382>,  <29.512289, 27.912155, 25.509012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700203, 27.560373, 25.478382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624948, -0.270054, -0.732469,
		0.623492, 0.391959, -0.676480,
		0.469784, -0.879453, -0.076577,
		29.841139, 27.296537, 25.455408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680923, 28.026278, 24.851212>,  <29.512289, 27.912155, 25.509012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680923, 28.026278, 24.851212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722910, 27.639212, 24.942953>,  <29.748102, 27.406971, 24.997997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722910, 27.639212, 24.942953>,  <29.680923, 28.026278, 24.851212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722910, 27.639212, 24.942953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449676, -0.251887, -0.856939,
		0.887003, -0.013185, -0.461576,
		0.104966, -0.967667, 0.229354,
		29.754400, 27.348911, 25.011759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005241, 27.626335, 24.325912>,  <29.680923, 28.026278, 24.851212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005241, 27.626335, 24.325912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772486, 27.369011, 24.524933>,  <29.632832, 27.214617, 24.644346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772486, 27.369011, 24.524933>,  <30.005241, 27.626335, 24.325912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772486, 27.369011, 24.524933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468694, -0.234710, -0.851608,
		0.664628, -0.728741, -0.164940,
		-0.581889, -0.643310, 0.497552,
		29.597919, 27.176018, 24.674198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001038, 27.076494, 23.846931>,  <30.005241, 27.626335, 24.325912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001038, 27.076494, 23.846931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693398, 26.974075, 24.081171>,  <29.508814, 26.912624, 24.221714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693398, 26.974075, 24.081171>,  <30.001038, 27.076494, 23.846931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693398, 26.974075, 24.081171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509077, -0.308552, -0.803515,
		0.386424, -0.916098, 0.106961,
		-0.769101, -0.256046, 0.585597,
		29.462667, 26.897261, 24.256849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822992, 26.286400, 23.772837>,  <30.001038, 27.076494, 23.846931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822992, 26.286400, 23.772837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.501705, 26.494183, 23.889458>,  <29.308933, 26.618853, 23.959431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.501705, 26.494183, 23.889458>,  <29.822992, 26.286400, 23.772837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501705, 26.494183, 23.889458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541206, -0.431896, -0.721500,
		-0.248865, -0.737314, 0.628040,
		-0.803220, 0.519455, 0.291555,
		29.260738, 26.650019, 23.976923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294098, 25.867317, 23.510424>,  <29.822992, 26.286400, 23.772837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294098, 25.867317, 23.510424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.079563, 26.185785, 23.622467>,  <28.950842, 26.376865, 23.689693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.079563, 26.185785, 23.622467>,  <29.294098, 25.867317, 23.510424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079563, 26.185785, 23.622467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725720, -0.265594, -0.634658,
		-0.430900, -0.543668, 0.720243,
		-0.536336, 0.796168, 0.280106,
		28.918663, 26.424635, 23.706499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712229, 25.622084, 23.911142>,  <29.294098, 25.867317, 23.510424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712229, 25.622084, 23.911142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614649, 25.980499, 23.762764>,  <28.556101, 26.195549, 23.673737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614649, 25.980499, 23.762764>,  <28.712229, 25.622084, 23.911142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614649, 25.980499, 23.762764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859476, -0.376937, -0.345283,
		-0.449210, 0.234587, 0.862079,
		-0.243951, 0.896040, -0.370945,
		28.541464, 26.249311, 23.651482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001240, 25.640375, 24.060043>,  <28.712229, 25.622084, 23.911142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001240, 25.640375, 24.060043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.049591, 25.921951, 23.780085>,  <28.078602, 26.090897, 23.612110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.049591, 25.921951, 23.780085>,  <28.001240, 25.640375, 24.060043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049591, 25.921951, 23.780085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832061, -0.312658, -0.458169,
		-0.541353, 0.637739, 0.547929,
		0.120878, 0.703942, -0.699896,
		28.085855, 26.133133, 23.570116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452679, 26.197145, 24.181314>,  <28.001240, 25.640375, 24.060043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452679, 26.197145, 24.181314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.572247, 26.184155, 23.799824>,  <27.643988, 26.176359, 23.570930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.572247, 26.184155, 23.799824>,  <27.452679, 26.197145, 24.181314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572247, 26.184155, 23.799824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880295, -0.395225, -0.262447,
		-0.368412, 0.918010, -0.146732,
		0.298921, -0.032479, -0.953725,
		27.661922, 26.174412, 23.513706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892389, 26.322432, 23.882092>,  <27.452679, 26.197145, 24.181314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892389, 26.322432, 23.882092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.116049, 26.169304, 23.587934>,  <27.250244, 26.077427, 23.411440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.116049, 26.169304, 23.587934>,  <26.892389, 26.322432, 23.882092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116049, 26.169304, 23.587934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778728, -0.546885, -0.307406,
		-0.284494, 0.744557, -0.603903,
		0.559147, -0.382821, -0.735393,
		27.283792, 26.054457, 23.367317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820105, 26.380699, 23.099577>,  <26.892389, 26.322432, 23.882092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820105, 26.380699, 23.099577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.982777, 26.021671, 23.167667>,  <27.080379, 25.806253, 23.208521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.982777, 26.021671, 23.167667>,  <26.820105, 26.380699, 23.099577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982777, 26.021671, 23.167667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875978, -0.436018, -0.206278,
		0.259370, -0.065224, -0.963573,
		0.406681, -0.897571, 0.170225,
		27.104780, 25.752399, 23.218735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513542, 27.049820, 23.044500>,  <26.820105, 26.380699, 23.099577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513542, 27.049820, 23.044500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.378277, 27.384521, 22.872227>,  <26.297117, 27.585342, 22.768864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.378277, 27.384521, 22.872227>,  <26.513542, 27.049820, 23.044500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378277, 27.384521, 22.872227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741693, 0.518654, 0.425311,
		0.579256, -0.175610, -0.796005,
		-0.338162, 0.836755, -0.430682,
		26.276829, 27.635548, 22.743023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028118, 27.453152, 22.966614>,  <26.513542, 27.049820, 23.044500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028118, 27.453152, 22.966614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.744631, 27.735315, 22.962307>,  <26.574539, 27.904613, 22.959723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.744631, 27.735315, 22.962307>,  <27.028118, 27.453152, 22.966614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744631, 27.735315, 22.962307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622210, 0.632172, 0.461751,
		0.332530, 0.320552, -0.886944,
		-0.708716, 0.705411, -0.010765,
		26.532017, 27.946939, 22.959078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383997, 27.975515, 22.657337>,  <27.028118, 27.453152, 22.966614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383997, 27.975515, 22.657337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.078630, 28.154650, 22.843515>,  <26.895411, 28.262131, 22.955223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.078630, 28.154650, 22.843515>,  <27.383997, 27.975515, 22.657337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078630, 28.154650, 22.843515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643319, 0.591650, 0.485892,
		-0.057782, 0.670367, -0.739776,
		-0.763415, 0.447836, 0.465447,
		26.849606, 28.289001, 22.983149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624739, 28.667503, 22.723587>,  <27.383997, 27.975515, 22.657337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624739, 28.667503, 22.723587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.329340, 28.644148, 22.992277>,  <27.152102, 28.630135, 23.153492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.329340, 28.644148, 22.992277>,  <27.624739, 28.667503, 22.723587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329340, 28.644148, 22.992277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474227, 0.663211, 0.579017,
		-0.479305, 0.746151, -0.462088,
		-0.738496, -0.058391, 0.671725,
		27.107792, 28.626631, 23.193794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557390, 29.365410, 22.967115>,  <27.624739, 28.667503, 22.723587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557390, 29.365410, 22.967115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.405746, 29.119289, 23.243574>,  <27.314760, 28.971617, 23.409449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.405746, 29.119289, 23.243574>,  <27.557390, 29.365410, 22.967115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405746, 29.119289, 23.243574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393066, 0.569089, 0.722245,
		-0.837719, 0.545477, 0.026106,
		-0.379111, -0.615299, 0.691145,
		27.292013, 28.934700, 23.450918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313957, 29.775906, 23.520519>,  <27.557390, 29.365410, 22.967115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313957, 29.775906, 23.520519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.352114, 29.425497, 23.709618>,  <27.375008, 29.215252, 23.823076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.352114, 29.425497, 23.709618>,  <27.313957, 29.775906, 23.520519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352114, 29.425497, 23.709618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304960, 0.477793, 0.823840,
		-0.947576, 0.065581, 0.312729,
		0.095392, -0.876021, 0.472745,
		27.380732, 29.162691, 23.851440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083353, 29.887266, 24.226389>,  <27.313957, 29.775906, 23.520519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083353, 29.887266, 24.226389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.321938, 29.566614, 24.242506>,  <27.465088, 29.374224, 24.252176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.321938, 29.566614, 24.242506>,  <27.083353, 29.887266, 24.226389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321938, 29.566614, 24.242506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473103, 0.391684, 0.789149,
		-0.648388, -0.451633, 0.612878,
		0.596461, -0.801630, 0.040294,
		27.500875, 29.326126, 24.254595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250277, 29.823532, 24.937378>,  <27.083353, 29.887266, 24.226389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250277, 29.823532, 24.937378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.511538, 29.583368, 24.752811>,  <27.668293, 29.439270, 24.642073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.511538, 29.583368, 24.752811>,  <27.250277, 29.823532, 24.937378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511538, 29.583368, 24.752811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666240, 0.166054, 0.727015,
		-0.359887, -0.782263, 0.508474,
		0.653151, -0.600409, -0.461414,
		27.707483, 29.403246, 24.614388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475834, 29.246073, 25.377863>,  <27.250277, 29.823532, 24.937378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475834, 29.246073, 25.377863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.769363, 29.304089, 25.112392>,  <27.945480, 29.338898, 24.953110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.769363, 29.304089, 25.112392>,  <27.475834, 29.246073, 25.377863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769363, 29.304089, 25.112392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621927, 0.249643, 0.742217,
		0.273337, -0.957414, 0.092986,
		0.733822, 0.145045, -0.663678,
		27.989510, 29.347601, 24.913290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077923, 29.195051, 25.810541>,  <27.475834, 29.246073, 25.377863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077923, 29.195051, 25.810541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.231733, 29.302891, 25.457394>,  <28.324020, 29.367596, 25.245506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.231733, 29.302891, 25.457394>,  <28.077923, 29.195051, 25.810541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231733, 29.302891, 25.457394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911341, 0.041382, 0.409567,
		0.146954, -0.962083, -0.229785,
		0.384528, 0.269600, -0.882867,
		28.347092, 29.383770, 25.192533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727867, 28.825014, 25.752474>,  <28.077923, 29.195051, 25.810541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727867, 28.825014, 25.752474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748741, 29.148323, 25.517878>,  <28.761267, 29.342308, 25.377119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748741, 29.148323, 25.517878>,  <28.727867, 28.825014, 25.752474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748741, 29.148323, 25.517878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992645, 0.022257, 0.118999,
		0.109237, -0.588387, -0.801166,
		0.052186, 0.808273, -0.586491,
		28.764397, 29.390804, 25.341930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301155, 28.746437, 25.366737>,  <28.727867, 28.825014, 25.752474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301155, 28.746437, 25.366737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.238497, 29.141220, 25.351889>,  <29.200901, 29.378090, 25.342979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.238497, 29.141220, 25.351889>,  <29.301155, 28.746437, 25.366737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238497, 29.141220, 25.351889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972354, 0.160702, 0.169421,
		0.173177, -0.009554, -0.984845,
		-0.156648, 0.986957, -0.037119,
		29.191502, 29.437307, 25.340754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740360, 29.106153, 24.877174>,  <29.301155, 28.746437, 25.366737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740360, 29.106153, 24.877174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.639809, 29.402212, 25.126650>,  <29.579477, 29.579847, 25.276335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.639809, 29.402212, 25.126650>,  <29.740360, 29.106153, 24.877174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639809, 29.402212, 25.126650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967138, 0.166701, 0.191975,
		0.038120, 0.651453, -0.757731,
		-0.251378, 0.740148, 0.623691,
		29.564396, 29.624256, 25.313757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301323, 29.463873, 24.869551>,  <29.740360, 29.106153, 24.877174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301323, 29.463873, 24.869551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.106916, 29.640865, 25.171013>,  <29.990273, 29.747061, 25.351891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.106916, 29.640865, 25.171013>,  <30.301323, 29.463873, 24.869551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106916, 29.640865, 25.171013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865437, 0.363739, 0.344547,
		-0.121680, 0.819699, -0.559721,
		-0.486017, 0.442479, 0.753657,
		29.961111, 29.773609, 25.397110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587135, 30.119104, 24.918114>,  <30.301323, 29.463873, 24.869551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587135, 30.119104, 24.918114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433701, 30.015469, 25.272680>,  <30.341640, 29.953287, 25.485420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433701, 30.015469, 25.272680>,  <30.587135, 30.119104, 24.918114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433701, 30.015469, 25.272680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784035, 0.415844, 0.460828,
		-0.488007, 0.871749, 0.043623,
		-0.383586, -0.259090, 0.886417,
		30.318624, 29.937742, 25.538605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882893, 30.690523, 25.422949>,  <30.587135, 30.119104, 24.918114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882893, 30.690523, 25.422949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.734753, 30.396564, 25.650198>,  <30.645868, 30.220188, 25.786549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.734753, 30.396564, 25.650198>,  <30.882893, 30.690523, 25.422949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734753, 30.396564, 25.650198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652216, 0.229760, 0.722375,
		-0.661404, 0.638071, 0.394221,
		-0.370350, -0.734899, 0.568124,
		30.623648, 30.176094, 25.820635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672117, 30.967592, 26.068310>,  <30.882893, 30.690523, 25.422949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672117, 30.967592, 26.068310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.730232, 30.576405, 26.128265>,  <30.765100, 30.341692, 26.164240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.730232, 30.576405, 26.128265>,  <30.672117, 30.967592, 26.068310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730232, 30.576405, 26.128265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666705, 0.208708, 0.715504,
		-0.731025, -0.004020, 0.682339,
		0.145286, -0.977970, 0.149891,
		30.773817, 30.283014, 26.173233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618309, 30.832838, 26.689156>,  <30.672117, 30.967592, 26.068310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618309, 30.832838, 26.689156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.856096, 30.540041, 26.556013>,  <30.998768, 30.364363, 26.476128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.856096, 30.540041, 26.556013>,  <30.618309, 30.832838, 26.689156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856096, 30.540041, 26.556013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627414, 0.163326, 0.761365,
		-0.502952, -0.661444, 0.556356,
		0.594468, -0.731995, -0.332854,
		31.034437, 30.320442, 26.456158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920332, 30.555143, 27.276800>,  <30.618309, 30.832838, 26.689156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920332, 30.555143, 27.276800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.150434, 30.464947, 26.962288>,  <31.288496, 30.410830, 26.773581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.150434, 30.464947, 26.962288>,  <30.920332, 30.555143, 27.276800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150434, 30.464947, 26.962288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808843, 0.300040, 0.505717,
		0.121880, -0.926893, 0.354986,
		0.575255, -0.225491, -0.786279,
		31.323011, 30.397299, 26.726404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595156, 30.311087, 27.596830>,  <30.920332, 30.555143, 27.276800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595156, 30.311087, 27.596830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697485, 30.379576, 27.216255>,  <31.758883, 30.420670, 26.987909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697485, 30.379576, 27.216255>,  <31.595156, 30.311087, 27.596830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697485, 30.379576, 27.216255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933465, 0.212183, 0.289174,
		0.251391, -0.962113, -0.105548,
		0.255822, 0.171221, -0.951440,
		31.774231, 30.430943, 26.930822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223824, 29.974897, 27.546535>,  <31.595156, 30.311087, 27.596830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223824, 29.974897, 27.546535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211472, 30.235992, 27.243753>,  <32.204060, 30.392649, 27.062084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211472, 30.235992, 27.243753>,  <32.223824, 29.974897, 27.546535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211472, 30.235992, 27.243753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991347, 0.116666, 0.060166,
		0.127583, -0.748547, -0.650692,
		-0.030877, 0.652738, -0.756954,
		32.202209, 30.431814, 27.016666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.173279, 27.783251, 27.826748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.081684, 28.060926, 27.553789>,  <37.026726, 28.227531, 27.390013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.081684, 28.060926, 27.553789>,  <37.173279, 27.783251, 27.826748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081684, 28.060926, 27.553789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955934, 0.292676, -0.023048,
		0.183723, -0.657605, -0.730617,
		-0.228991, 0.694187, -0.682398,
		37.012985, 28.269182, 27.349070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776924, 27.895578, 27.389278>,  <37.173279, 27.783251, 27.826748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776924, 27.895578, 27.389278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590397, 28.225029, 27.260164>,  <37.478481, 28.422699, 27.182695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590397, 28.225029, 27.260164>,  <37.776924, 27.895578, 27.389278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590397, 28.225029, 27.260164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880886, 0.465816, -0.083995,
		0.081177, -0.323504, -0.942738,
		-0.466315, 0.823627, -0.322784,
		37.450500, 28.472116, 27.163328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160564, 28.041670, 26.838972>,  <37.776924, 27.895578, 27.389278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160564, 28.041670, 26.838972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.961193, 28.370483, 26.949120>,  <37.841568, 28.567772, 27.015209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.961193, 28.370483, 26.949120>,  <38.160564, 28.041670, 26.838972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961193, 28.370483, 26.949120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866583, 0.481419, 0.131418,
		-0.024538, 0.304133, -0.952313,
		-0.498430, 0.822034, 0.275370,
		37.811665, 28.617094, 27.031731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348606, 28.566914, 26.396532>,  <38.160564, 28.041670, 26.838972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348606, 28.566914, 26.396532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223827, 28.766829, 26.719742>,  <38.148960, 28.886778, 26.913668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223827, 28.766829, 26.719742>,  <38.348606, 28.566914, 26.396532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223827, 28.766829, 26.719742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768902, 0.632374, -0.094300,
		-0.558104, 0.591875, -0.581553,
		-0.311945, 0.499786, 0.808025,
		38.130245, 28.916765, 26.962149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441730, 29.243961, 26.280842>,  <38.348606, 28.566914, 26.396532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441730, 29.243961, 26.280842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407772, 29.231058, 26.679188>,  <38.387398, 29.223316, 26.918196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407772, 29.231058, 26.679188>,  <38.441730, 29.243961, 26.280842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407772, 29.231058, 26.679188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779173, 0.620807, 0.086535,
		-0.621033, 0.783299, -0.027573,
		-0.084900, -0.032256, 0.995867,
		38.382301, 29.221380, 26.977947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596897, 29.911360, 26.467896>,  <38.441730, 29.243961, 26.280842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596897, 29.911360, 26.467896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.620014, 29.699774, 26.806564>,  <38.633884, 29.572823, 27.009766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.620014, 29.699774, 26.806564>,  <38.596897, 29.911360, 26.467896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620014, 29.699774, 26.806564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718093, 0.611198, 0.332835,
		-0.693543, 0.588755, 0.415170,
		0.057793, -0.528966, 0.846673,
		38.637352, 29.541084, 27.060566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651169, 30.418468, 26.965134>,  <38.596897, 29.911360, 26.467896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651169, 30.418468, 26.965134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815418, 30.095404, 27.134401>,  <38.913967, 29.901566, 27.235962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815418, 30.095404, 27.134401>,  <38.651169, 30.418468, 26.965134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815418, 30.095404, 27.134401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843191, 0.512980, 0.160875,
		-0.347009, 0.290753, 0.891654,
		0.410626, -0.807660, 0.423168,
		38.938606, 29.853106, 27.261353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972122, 30.638153, 27.602859>,  <38.651169, 30.418468, 26.965134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972122, 30.638153, 27.602859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.151451, 30.294731, 27.503349>,  <39.259048, 30.088678, 27.443644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.151451, 30.294731, 27.503349>,  <38.972122, 30.638153, 27.602859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151451, 30.294731, 27.503349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885368, 0.388215, 0.255761,
		-0.123006, -0.334921, 0.934183,
		0.448323, -0.858555, -0.248776,
		39.285950, 30.037165, 27.428717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362343, 30.449108, 28.265896>,  <38.972122, 30.638153, 27.602859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362343, 30.449108, 28.265896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.536316, 30.252985, 27.963787>,  <39.640697, 30.135311, 27.782522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.536316, 30.252985, 27.963787>,  <39.362343, 30.449108, 28.265896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536316, 30.252985, 27.963787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895084, 0.326958, 0.303189,
		0.098287, -0.807897, 0.581069,
		0.434931, -0.490306, -0.755271,
		39.666794, 30.105892, 27.737206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962330, 30.185860, 28.559143>,  <39.362343, 30.449108, 28.265896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962330, 30.185860, 28.559143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041046, 30.152498, 28.168386>,  <40.088276, 30.132481, 27.933933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041046, 30.152498, 28.168386>,  <39.962330, 30.185860, 28.559143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041046, 30.152498, 28.168386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948529, 0.268348, 0.168171,
		0.248120, -0.959705, 0.131922,
		0.196795, -0.083405, -0.976891,
		40.100086, 30.127478, 27.875319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505219, 29.748154, 28.476925>,  <39.962330, 30.185860, 28.559143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505219, 29.748154, 28.476925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523010, 29.995054, 28.162722>,  <40.533684, 30.143194, 27.974199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523010, 29.995054, 28.162722>,  <40.505219, 29.748154, 28.476925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523010, 29.995054, 28.162722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992766, 0.060469, 0.103726,
		0.111524, -0.784440, -0.610095,
		0.044475, 0.617250, -0.785509,
		40.536354, 30.180229, 27.927069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205658, 29.626869, 28.054573>,  <40.505219, 29.748154, 28.476925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205658, 29.626869, 28.054573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078022, 29.990215, 27.946461>,  <41.001442, 30.208223, 27.881594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078022, 29.990215, 27.946461>,  <41.205658, 29.626869, 28.054573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078022, 29.990215, 27.946461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947210, 0.315066, -0.059385,
		0.031214, -0.274963, -0.960948,
		-0.319091, 0.908366, -0.270282,
		40.982296, 30.262726, 27.865376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747025, 29.925510, 27.734976>,  <41.205658, 29.626869, 28.054573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747025, 29.925510, 27.734976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.529362, 30.259424, 27.768522>,  <41.398766, 30.459772, 27.788651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.529362, 30.259424, 27.768522>,  <41.747025, 29.925510, 27.734976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529362, 30.259424, 27.768522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830203, 0.521335, 0.197415,
		0.121077, 0.177049, -0.976726,
		-0.544154, 0.834783, 0.083865,
		41.366116, 30.509859, 27.793682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019951, 30.498165, 27.340246>,  <41.747025, 29.925510, 27.734976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019951, 30.498165, 27.340246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.828415, 30.662304, 27.650684>,  <41.713493, 30.760788, 27.836948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.828415, 30.662304, 27.650684>,  <42.019951, 30.498165, 27.340246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828415, 30.662304, 27.650684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781431, 0.602117, 0.163771,
		-0.400098, 0.684886, -0.608977,
		-0.478840, 0.410349, 0.776097,
		41.684765, 30.785408, 27.883512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873116, 31.230547, 27.240034>,  <42.019951, 30.498165, 27.340246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873116, 31.230547, 27.240034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.945995, 31.547920, 27.007736>,  <41.989723, 31.738344, 26.868357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.945995, 31.547920, 27.007736>,  <41.873116, 31.230547, 27.240034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945995, 31.547920, 27.007736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904189, -0.096856, -0.416007,
		-0.386323, 0.600900, 0.699767,
		0.182202, 0.793434, -0.580745,
		42.000656, 31.785950, 26.833513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234299, 31.450993, 27.090662>,  <41.873116, 31.230547, 27.240034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234299, 31.450993, 27.090662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429668, 31.678640, 26.826073>,  <41.546890, 31.815229, 26.667320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429668, 31.678640, 26.826073>,  <41.234299, 31.450993, 27.090662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429668, 31.678640, 26.826073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853456, 0.153625, -0.498009,
		-0.181807, 0.807777, 0.560752,
		0.488425, 0.569118, -0.661472,
		41.576195, 31.849377, 26.627630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912640, 32.066078, 27.108862>,  <41.234299, 31.450993, 27.090662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912640, 32.066078, 27.108862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086258, 31.972921, 26.760754>,  <41.190430, 31.917027, 26.551889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086258, 31.972921, 26.760754>,  <40.912640, 32.066078, 27.108862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086258, 31.972921, 26.760754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879417, 0.100133, -0.465402,
		0.195532, 0.967333, -0.161348,
		0.434043, -0.232893, -0.870269,
		41.216473, 31.903053, 26.499674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674255, 32.562504, 26.592073>,  <40.912640, 32.066078, 27.108862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674255, 32.562504, 26.592073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.804394, 32.275341, 26.345901>,  <40.882477, 32.103043, 26.198198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.804394, 32.275341, 26.345901>,  <40.674255, 32.562504, 26.592073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804394, 32.275341, 26.345901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849592, 0.063812, -0.523566,
		0.415146, 0.693204, -0.589171,
		0.325341, -0.717911, -0.615432,
		40.901997, 32.059967, 26.161272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462700, 32.827488, 25.896431>,  <40.674255, 32.562504, 26.592073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462700, 32.827488, 25.896431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.543934, 32.436611, 25.871599>,  <40.592674, 32.202084, 25.856699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.543934, 32.436611, 25.871599>,  <40.462700, 32.827488, 25.896431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543934, 32.436611, 25.871599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683244, -0.096007, -0.723851,
		0.701381, 0.189418, -0.687157,
		0.203082, -0.977192, -0.062081,
		40.604858, 32.143456, 25.852974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612228, 32.762501, 25.233967>,  <40.462700, 32.827488, 25.896431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612228, 32.762501, 25.233967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502834, 32.410236, 25.388702>,  <40.437199, 32.198879, 25.481544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502834, 32.410236, 25.388702>,  <40.612228, 32.762501, 25.233967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502834, 32.410236, 25.388702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702496, -0.091849, -0.705736,
		0.657045, -0.464760, -0.593541,
		-0.273481, -0.880660, 0.386841,
		40.420792, 32.146038, 25.504755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470722, 32.331322, 24.597815>,  <40.612228, 32.762501, 25.233967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470722, 32.331322, 24.597815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.298702, 32.150440, 24.910372>,  <40.195492, 32.041912, 25.097906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.298702, 32.150440, 24.910372>,  <40.470722, 32.331322, 24.597815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298702, 32.150440, 24.910372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739401, -0.320210, -0.592243,
		0.518023, -0.832454, -0.196653,
		-0.430045, -0.452201, 0.781393,
		40.169689, 32.014778, 25.144791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407478, 31.733601, 24.306625>,  <40.470722, 32.331322, 24.597815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407478, 31.733601, 24.306625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165909, 31.751169, 24.624958>,  <40.020969, 31.761711, 24.815958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165909, 31.751169, 24.624958>,  <40.407478, 31.733601, 24.306625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165909, 31.751169, 24.624958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794985, -0.104935, -0.597485,
		0.057268, -0.993509, 0.098290,
		-0.603921, 0.043923, 0.795833,
		39.984734, 31.764345, 24.863708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964195, 31.142843, 24.340065>,  <40.407478, 31.733601, 24.306625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964195, 31.142843, 24.340065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.765285, 31.412481, 24.558537>,  <39.645939, 31.574265, 24.689619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.765285, 31.412481, 24.558537>,  <39.964195, 31.142843, 24.340065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765285, 31.412481, 24.558537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850096, -0.252781, -0.461995,
		-0.173366, -0.694043, 0.698748,
		-0.497274, 0.674097, 0.546179,
		39.616104, 31.614710, 24.722391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386963, 30.803383, 24.684505>,  <39.964195, 31.142843, 24.340065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386963, 30.803383, 24.684505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279755, 31.188442, 24.699871>,  <39.215427, 31.419477, 24.709091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279755, 31.188442, 24.699871>,  <39.386963, 30.803383, 24.684505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279755, 31.188442, 24.699871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886827, -0.230941, -0.400256,
		-0.376433, -0.141346, 0.915598,
		-0.268024, 0.962646, 0.038415,
		39.199348, 31.477236, 24.711395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802307, 30.741882, 24.913961>,  <39.386963, 30.803383, 24.684505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802307, 30.741882, 24.913961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815506, 31.108627, 24.754827>,  <38.823425, 31.328674, 24.659348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815506, 31.108627, 24.754827>,  <38.802307, 30.741882, 24.913961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815506, 31.108627, 24.754827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947020, -0.098558, -0.305679,
		-0.319476, 0.386842, 0.865037,
		0.032994, 0.916864, -0.397834,
		38.825405, 31.383686, 24.635477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144272, 31.123837, 25.096703>,  <38.802307, 30.741882, 24.913961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144272, 31.123837, 25.096703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.288189, 31.309793, 24.773117>,  <38.374538, 31.421368, 24.578966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.288189, 31.309793, 24.773117>,  <38.144272, 31.123837, 25.096703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288189, 31.309793, 24.773117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897685, -0.063902, -0.435979,
		-0.254378, 0.883057, 0.394336,
		0.359796, 0.464894, -0.808963,
		38.396130, 31.449261, 24.530428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601330, 31.630835, 24.844622>,  <38.144272, 31.123837, 25.096703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601330, 31.630835, 24.844622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839611, 31.553633, 24.532753>,  <37.982578, 31.507311, 24.345631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839611, 31.553633, 24.532753>,  <37.601330, 31.630835, 24.844622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839611, 31.553633, 24.532753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800037, -0.228740, -0.554634,
		-0.071295, 0.954163, -0.290672,
		0.595699, -0.193006, -0.779674,
		38.018322, 31.495731, 24.298851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109245, 31.758869, 24.264671>,  <37.601330, 31.630835, 24.844622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109245, 31.758869, 24.264671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413116, 31.557692, 24.099775>,  <37.595440, 31.436985, 24.000837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413116, 31.557692, 24.099775>,  <37.109245, 31.758869, 24.264671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413116, 31.557692, 24.099775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645906, -0.509964, -0.568103,
		0.075496, 0.697842, -0.712261,
		0.759675, -0.502943, -0.412241,
		37.641018, 31.406809, 23.976103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352581, 32.328548, 23.693613>,  <37.109245, 31.758869, 24.264671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352581, 32.328548, 23.693613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307343, 32.715340, 23.602257>,  <37.280201, 32.947414, 23.547443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307343, 32.715340, 23.602257>,  <37.352581, 32.328548, 23.693613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307343, 32.715340, 23.602257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750724, 0.233738, 0.617884,
		0.650864, -0.101581, -0.752368,
		-0.113092, 0.966979, -0.228391,
		37.273415, 33.005432, 23.533739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989216, 32.678925, 23.601351>,  <37.352581, 32.328548, 23.693613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989216, 32.678925, 23.601351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.755165, 32.991795, 23.686977>,  <37.614735, 33.179516, 23.738354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.755165, 32.991795, 23.686977>,  <37.989216, 32.678925, 23.601351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755165, 32.991795, 23.686977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643381, 0.287072, 0.709683,
		0.493645, 0.552982, -0.671212,
		-0.585128, 0.782177, 0.214067,
		37.579628, 33.226448, 23.751198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363152, 33.302120, 23.571764>,  <37.989216, 32.678925, 23.601351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363152, 33.302120, 23.571764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039543, 33.416706, 23.777063>,  <37.845379, 33.485458, 23.900244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039543, 33.416706, 23.777063>,  <38.363152, 33.302120, 23.571764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039543, 33.416706, 23.777063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587190, 0.433151, 0.683804,
		-0.026426, 0.854585, -0.518639,
		-0.809018, 0.286469, 0.513250,
		37.796837, 33.502647, 23.931038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506046, 33.917645, 23.848749>,  <38.363152, 33.302120, 23.571764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506046, 33.917645, 23.848749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.193417, 33.820377, 24.078537>,  <38.005840, 33.762016, 24.216410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.193417, 33.820377, 24.078537>,  <38.506046, 33.917645, 23.848749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193417, 33.820377, 24.078537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464078, 0.388737, 0.795936,
		-0.416865, 0.888680, -0.190976,
		-0.781572, -0.243170, 0.574468,
		37.958946, 33.747425, 24.250877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134693, 34.568188, 24.197514>,  <38.506046, 33.917645, 23.848749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134693, 34.568188, 24.197514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062088, 34.248177, 24.426250>,  <38.018524, 34.056168, 24.563492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062088, 34.248177, 24.426250>,  <38.134693, 34.568188, 24.197514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062088, 34.248177, 24.426250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358916, 0.487490, 0.795948,
		-0.915550, 0.349720, 0.198657,
		-0.181516, -0.800031, 0.571841,
		38.007633, 34.008167, 24.597803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753807, 34.878994, 24.808609>,  <38.134693, 34.568188, 24.197514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753807, 34.878994, 24.808609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.864635, 34.510761, 24.918709>,  <37.931133, 34.289822, 24.984770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.864635, 34.510761, 24.918709>,  <37.753807, 34.878994, 24.808609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864635, 34.510761, 24.918709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281272, 0.351627, 0.892885,
		-0.918758, -0.169976, 0.356360,
		0.277075, -0.920579, 0.275251,
		37.947758, 34.234589, 25.001284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581841, 34.738258, 25.528667>,  <37.753807, 34.878994, 24.808609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581841, 34.738258, 25.528667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.864361, 34.458847, 25.482721>,  <38.033875, 34.291199, 25.455154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.864361, 34.458847, 25.482721>,  <37.581841, 34.738258, 25.528667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864361, 34.458847, 25.482721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368528, 0.224279, 0.902156,
		-0.604423, -0.679524, 0.415837,
		0.706300, -0.698532, -0.114864,
		38.076252, 34.249287, 25.448261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540009, 34.266090, 26.117222>,  <37.581841, 34.738258, 25.528667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540009, 34.266090, 26.117222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909870, 34.265621, 25.964901>,  <38.131786, 34.265339, 25.873508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909870, 34.265621, 25.964901>,  <37.540009, 34.266090, 26.117222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909870, 34.265621, 25.964901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367197, 0.267679, 0.890794,
		0.100890, -0.963508, 0.247941,
		0.924656, -0.001171, -0.380803,
		38.187267, 34.265270, 25.850660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003750, 33.888424, 26.576088>,  <37.540009, 34.266090, 26.117222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003750, 33.888424, 26.576088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.252365, 34.120197, 26.365206>,  <38.401535, 34.259262, 26.238676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.252365, 34.120197, 26.365206>,  <38.003750, 33.888424, 26.576088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252365, 34.120197, 26.365206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563061, 0.137477, 0.814900,
		0.544662, -0.803339, -0.240811,
		0.621535, 0.579437, -0.527207,
		38.438828, 34.294029, 26.207043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606144, 33.845184, 26.954226>,  <38.003750, 33.888424, 26.576088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606144, 33.845184, 26.954226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715225, 34.116383, 26.681179>,  <38.780674, 34.279102, 26.517351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715225, 34.116383, 26.681179>,  <38.606144, 33.845184, 26.954226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715225, 34.116383, 26.681179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772275, 0.268883, 0.575580,
		0.573782, -0.684126, -0.450273,
		0.272698, 0.677992, -0.682614,
		38.797035, 34.319778, 26.476395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244991, 33.695698, 26.898653>,  <38.606144, 33.845184, 26.954226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244991, 33.695698, 26.898653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.221951, 34.067436, 26.752775>,  <39.208126, 34.290478, 26.665249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.221951, 34.067436, 26.752775>,  <39.244991, 33.695698, 26.898653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221951, 34.067436, 26.752775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772925, 0.272726, 0.572894,
		0.631877, -0.248880, -0.734023,
		-0.057605, 0.929343, -0.364695,
		39.204670, 34.346241, 26.643366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825859, 33.996368, 26.590691>,  <39.244991, 33.695698, 26.898653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825859, 33.996368, 26.590691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.618412, 34.328346, 26.672890>,  <39.493942, 34.527534, 26.722210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.618412, 34.328346, 26.672890>,  <39.825859, 33.996368, 26.590691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618412, 34.328346, 26.672890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737873, 0.313026, 0.597961,
		0.431947, 0.461745, -0.774734,
		-0.518618, 0.829943, 0.205499,
		39.462826, 34.577328, 26.734539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.659763, 31.886883, 20.860344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487904, 32.126369, 21.130733>,  <34.384789, 32.270061, 21.292967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487904, 32.126369, 21.130733>,  <34.659763, 31.886883, 20.860344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487904, 32.126369, 21.130733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867779, 0.480783, 0.125725,
		-0.249722, 0.640612, -0.726124,
		-0.429649, 0.598719, 0.675972,
		34.359009, 32.305984, 21.333525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044178, 32.451706, 20.719740>,  <34.659763, 31.886883, 20.860344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044178, 32.451706, 20.719740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879601, 32.496464, 21.081556>,  <34.780853, 32.523319, 21.298645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879601, 32.496464, 21.081556>,  <35.044178, 32.451706, 20.719740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879601, 32.496464, 21.081556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853648, 0.395061, 0.339430,
		-0.319369, 0.911815, -0.258063,
		-0.411448, 0.111892, 0.904539,
		34.756165, 32.530033, 21.352919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234940, 33.148979, 20.989452>,  <35.044178, 32.451706, 20.719740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234940, 33.148979, 20.989452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133144, 32.934696, 21.311510>,  <35.072067, 32.806126, 21.504744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133144, 32.934696, 21.311510>,  <35.234940, 33.148979, 20.989452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133144, 32.934696, 21.311510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779376, 0.379291, 0.498710,
		-0.572545, 0.754425, 0.320991,
		-0.254490, -0.535706, 0.805142,
		35.056797, 32.773983, 21.553053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403053, 33.603798, 21.525999>,  <35.234940, 33.148979, 20.989452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403053, 33.603798, 21.525999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346138, 33.274265, 21.745472>,  <35.311989, 33.076546, 21.877155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346138, 33.274265, 21.745472>,  <35.403053, 33.603798, 21.525999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346138, 33.274265, 21.745472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729113, 0.287667, 0.621000,
		-0.669439, 0.488411, 0.559738,
		-0.142285, -0.823834, 0.548682,
		35.303452, 33.027115, 21.910076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367619, 33.819061, 22.195351>,  <35.403053, 33.603798, 21.525999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367619, 33.819061, 22.195351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488667, 33.437817, 22.195425>,  <35.561295, 33.209068, 22.195469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488667, 33.437817, 22.195425>,  <35.367619, 33.819061, 22.195351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488667, 33.437817, 22.195425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782528, 0.248566, 0.570846,
		-0.544127, -0.172602, 0.821057,
		0.302616, -0.953112, 0.000186,
		35.579453, 33.151882, 22.195480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427383, 33.676170, 22.880955>,  <35.367619, 33.819061, 22.195351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427383, 33.676170, 22.880955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653030, 33.392731, 22.711409>,  <35.788418, 33.222668, 22.609682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653030, 33.392731, 22.711409>,  <35.427383, 33.676170, 22.880955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653030, 33.392731, 22.711409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731033, 0.189948, 0.655370,
		-0.383884, -0.679561, 0.625163,
		0.564113, -0.708601, -0.423864,
		35.822266, 33.180149, 22.584249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602345, 33.297405, 23.462517>,  <35.427383, 33.676170, 22.880955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602345, 33.297405, 23.462517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859074, 33.146568, 23.195423>,  <36.013111, 33.056068, 23.035168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859074, 33.146568, 23.195423>,  <35.602345, 33.297405, 23.462517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859074, 33.146568, 23.195423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750051, 0.127405, 0.648993,
		-0.159655, -0.917372, 0.364607,
		0.641821, -0.377089, -0.667735,
		36.051620, 33.033443, 22.995102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991783, 32.886604, 23.826683>,  <35.602345, 33.297405, 23.462517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991783, 32.886604, 23.826683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223949, 32.935982, 23.504721>,  <36.363251, 32.965611, 23.311543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223949, 32.935982, 23.504721>,  <35.991783, 32.886604, 23.826683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223949, 32.935982, 23.504721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770034, 0.238320, 0.591820,
		0.264885, -0.963309, 0.043265,
		0.580416, 0.123449, -0.804909,
		36.398075, 32.973015, 23.263248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599335, 32.351788, 23.834457>,  <35.991783, 32.886604, 23.826683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599335, 32.351788, 23.834457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710537, 32.657089, 23.601166>,  <36.777260, 32.840271, 23.461191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710537, 32.657089, 23.601166>,  <36.599335, 32.351788, 23.834457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710537, 32.657089, 23.601166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876000, 0.047674, 0.479949,
		0.394128, -0.644338, -0.655356,
		0.278006, 0.763253, -0.583230,
		36.793938, 32.886066, 23.426197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855156, 31.693216, 23.595955>,  <36.599335, 32.351788, 23.834457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855156, 31.693216, 23.595955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133759, 31.406441, 23.607738>,  <37.300922, 31.234375, 23.614809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133759, 31.406441, 23.607738>,  <36.855156, 31.693216, 23.595955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133759, 31.406441, 23.607738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534708, -0.545976, -0.644979,
		0.478497, 0.433482, -0.763633,
		0.696511, -0.716941, 0.029461,
		37.342712, 31.191359, 23.616577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913994, 31.442478, 22.924490>,  <36.855156, 31.693216, 23.595955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913994, 31.442478, 22.924490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074852, 31.142679, 23.134834>,  <37.171368, 30.962799, 23.261040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074852, 31.142679, 23.134834>,  <36.913994, 31.442478, 22.924490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074852, 31.142679, 23.134834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586802, -0.651868, -0.480345,
		0.702809, -0.115405, -0.701955,
		0.402148, -0.749499, 0.525859,
		37.195496, 30.917830, 23.292591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073837, 30.912312, 22.442970>,  <36.913994, 31.442478, 22.924490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073837, 30.912312, 22.442970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056221, 30.699963, 22.781492>,  <37.045650, 30.572554, 22.984606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056221, 30.699963, 22.781492>,  <37.073837, 30.912312, 22.442970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056221, 30.699963, 22.781492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630320, -0.642470, -0.435809,
		0.775086, -0.552635, -0.306329,
		-0.044036, -0.530875, 0.846306,
		37.043011, 30.540701, 23.035383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178455, 30.211060, 22.260752>,  <37.073837, 30.912312, 22.442970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178455, 30.211060, 22.260752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975002, 30.226522, 22.604797>,  <36.852932, 30.235800, 22.811224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975002, 30.226522, 22.604797>,  <37.178455, 30.211060, 22.260752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975002, 30.226522, 22.604797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562627, -0.771112, -0.298055,
		0.651722, -0.635525, 0.413964,
		-0.508634, 0.038658, 0.860115,
		36.822411, 30.238119, 22.862831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948311, 29.430229, 22.377653>,  <37.178455, 30.211060, 22.260752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948311, 29.430229, 22.377653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725185, 29.660595, 22.616707>,  <36.591309, 29.798815, 22.760139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725185, 29.660595, 22.616707>,  <36.948311, 29.430229, 22.377653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725185, 29.660595, 22.616707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802416, -0.558208, -0.211028,
		0.212070, -0.597266, 0.773499,
		-0.557813, 0.575914, 0.597635,
		36.557842, 29.833370, 22.795998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625202, 28.965303, 22.793989>,  <36.948311, 29.430229, 22.377653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625202, 28.965303, 22.793989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389412, 29.288401, 22.790754>,  <36.247936, 29.482260, 22.788813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389412, 29.288401, 22.790754>,  <36.625202, 28.965303, 22.793989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389412, 29.288401, 22.790754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800456, -0.585445, -0.128547,
		-0.108568, -0.069301, 0.991671,
		-0.589477, 0.807745, -0.008088,
		36.212570, 29.530724, 22.788328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992672, 28.702354, 23.130808>,  <36.625202, 28.965303, 22.793989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992672, 28.702354, 23.130808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882320, 29.049662, 22.965885>,  <35.816109, 29.258047, 22.866932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882320, 29.049662, 22.965885>,  <35.992672, 28.702354, 23.130808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882320, 29.049662, 22.965885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836573, -0.428131, -0.341832,
		-0.473325, 0.250623, 0.844483,
		-0.275879, 0.868269, -0.412310,
		35.799557, 29.310143, 22.842192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356846, 28.719923, 23.307030>,  <35.992672, 28.702354, 23.130808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356846, 28.719923, 23.307030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390598, 28.989178, 23.013155>,  <35.410851, 29.150730, 22.836830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390598, 28.989178, 23.013155>,  <35.356846, 28.719923, 23.307030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390598, 28.989178, 23.013155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853941, -0.331102, -0.401444,
		-0.513483, 0.661255, 0.546879,
		0.084385, 0.673137, -0.734688,
		35.415913, 29.191118, 22.792749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675961, 29.058060, 23.231108>,  <35.356846, 28.719923, 23.307030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675961, 29.058060, 23.231108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879566, 29.060965, 22.886818>,  <35.001732, 29.062708, 22.680244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879566, 29.060965, 22.886818>,  <34.675961, 29.058060, 23.231108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879566, 29.060965, 22.886818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775903, -0.429059, -0.462475,
		-0.372660, 0.903247, -0.212764,
		0.509018, 0.007262, -0.860725,
		35.032272, 29.063143, 22.628601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181973, 29.272001, 22.882015>,  <34.675961, 29.058060, 23.231108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181973, 29.272001, 22.882015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439987, 29.108240, 22.623924>,  <34.594795, 29.009983, 22.469070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439987, 29.108240, 22.623924>,  <34.181973, 29.272001, 22.882015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439987, 29.108240, 22.623924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763694, -0.374592, -0.525787,
		-0.026439, 0.831908, -0.554283,
		0.645037, -0.409401, -0.645227,
		34.633499, 28.985420, 22.430357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916401, 29.418161, 22.282763>,  <34.181973, 29.272001, 22.882015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916401, 29.418161, 22.282763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147087, 29.097160, 22.221596>,  <34.285500, 28.904560, 22.184896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147087, 29.097160, 22.221596>,  <33.916401, 29.418161, 22.282763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147087, 29.097160, 22.221596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734420, -0.427317, -0.527283,
		0.357804, 0.416398, -0.835816,
		0.576718, -0.802505, -0.152915,
		34.320103, 28.856409, 22.175722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787277, 29.201653, 21.651798>,  <33.916401, 29.418161, 22.282763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787277, 29.201653, 21.651798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971184, 28.876596, 21.795036>,  <34.081528, 28.681562, 21.880980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971184, 28.876596, 21.795036>,  <33.787277, 29.201653, 21.651798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971184, 28.876596, 21.795036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758160, -0.569157, -0.318204,
		0.462398, -0.125196, -0.877789,
		0.459762, -0.812642, 0.358096,
		34.109112, 28.632805, 21.902466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493141, 28.746651, 21.187887>,  <33.787277, 29.201653, 21.651798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493141, 28.746651, 21.187887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665833, 28.519299, 21.468046>,  <33.769447, 28.382887, 21.636141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665833, 28.519299, 21.468046>,  <33.493141, 28.746651, 21.187887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665833, 28.519299, 21.468046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686842, -0.710479, -0.153190,
		0.584687, -0.414925, -0.697122,
		0.431729, -0.568381, 0.700396,
		33.795353, 28.348783, 21.678165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755489, 28.162926, 20.892645>,  <33.493141, 28.746651, 21.187887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755489, 28.162926, 20.892645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686375, 28.034458, 21.265095>,  <33.644905, 27.957376, 21.488565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686375, 28.034458, 21.265095>,  <33.755489, 28.162926, 20.892645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686375, 28.034458, 21.265095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785037, -0.526031, -0.327120,
		0.594862, -0.787490, -0.161240,
		-0.172787, -0.321171, 0.931125,
		33.634541, 27.938107, 21.544432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.948311, 33.187874, 25.982510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.204901, 33.120918, 25.683044>,  <30.358854, 33.080746, 25.503366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.204901, 33.120918, 25.683044>,  <29.948311, 33.187874, 25.982510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204901, 33.120918, 25.683044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765981, 0.085998, 0.637086,
		-0.042258, -0.982133, 0.183383,
		0.641473, -0.167390, -0.748661,
		30.397343, 33.070702, 25.458447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398075, 32.717472, 26.232880>,  <29.948311, 33.187874, 25.982510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398075, 32.717472, 26.232880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.604721, 32.883171, 25.933146>,  <30.728708, 32.982590, 25.753305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.604721, 32.883171, 25.933146>,  <30.398075, 32.717472, 26.232880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604721, 32.883171, 25.933146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799534, 0.079741, 0.595304,
		0.306359, -0.906662, -0.290013,
		0.516613, 0.414252, -0.749337,
		30.759705, 33.007446, 25.708344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071640, 32.388535, 26.311396>,  <30.398075, 32.717472, 26.232880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071640, 32.388535, 26.311396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.129311, 32.710445, 26.081076>,  <31.163914, 32.903591, 25.942884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.129311, 32.710445, 26.081076>,  <31.071640, 32.388535, 26.311396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129311, 32.710445, 26.081076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866068, 0.178852, 0.466839,
		0.478685, -0.565988, -0.671207,
		0.144178, 0.804779, -0.575797,
		31.172564, 32.951878, 25.908337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731651, 32.285797, 26.067307>,  <31.071640, 32.388535, 26.311396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731651, 32.285797, 26.067307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.658972, 32.677319, 26.029514>,  <31.615364, 32.912231, 26.006840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.658972, 32.677319, 26.029514>,  <31.731651, 32.285797, 26.067307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658972, 32.677319, 26.029514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873509, 0.204781, 0.441641,
		0.451628, -0.002285, -0.892203,
		-0.181697, 0.978805, -0.094481,
		31.604464, 32.970959, 26.001169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375164, 32.536144, 25.789995>,  <31.731651, 32.285797, 26.067307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375164, 32.536144, 25.789995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.183331, 32.864365, 25.914379>,  <32.068230, 33.061298, 25.989010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.183331, 32.864365, 25.914379>,  <32.375164, 32.536144, 25.789995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183331, 32.864365, 25.914379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857479, 0.362971, 0.364667,
		0.186359, 0.441529, -0.877680,
		-0.479583, 0.820551, 0.310959,
		32.039455, 33.110531, 26.007668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828140, 33.030529, 25.663301>,  <32.375164, 32.536144, 25.789995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828140, 33.030529, 25.663301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.580891, 33.209385, 25.921909>,  <32.432541, 33.316700, 26.077074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.580891, 33.209385, 25.921909>,  <32.828140, 33.030529, 25.663301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580891, 33.209385, 25.921909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776867, 0.473048, 0.415575,
		-0.120014, 0.759137, -0.639772,
		-0.618121, 0.447143, 0.646521,
		32.395454, 33.343529, 26.115866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971909, 33.665524, 25.609087>,  <32.828140, 33.030529, 25.663301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971909, 33.665524, 25.609087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.791470, 33.626030, 25.963886>,  <32.683208, 33.602333, 26.176765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.791470, 33.626030, 25.963886>,  <32.971909, 33.665524, 25.609087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791470, 33.626030, 25.963886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727833, 0.534477, 0.429644,
		-0.516502, 0.839396, -0.169235,
		-0.451093, -0.098737, 0.886998,
		32.656143, 33.596409, 26.229986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140762, 34.305408, 26.012144>,  <32.971909, 33.665524, 25.609087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140762, 34.305408, 26.012144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.024395, 34.053566, 26.300301>,  <32.954575, 33.902462, 26.473194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.024395, 34.053566, 26.300301>,  <33.140762, 34.305408, 26.012144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024395, 34.053566, 26.300301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854291, 0.168062, 0.491876,
		-0.430757, 0.758522, 0.488971,
		-0.290921, -0.629603, 0.720393,
		32.937119, 33.864685, 26.516418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243805, 34.653961, 26.740511>,  <33.140762, 34.305408, 26.012144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243805, 34.653961, 26.740511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253101, 34.260719, 26.813133>,  <33.258678, 34.024773, 26.856707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253101, 34.260719, 26.813133>,  <33.243805, 34.653961, 26.740511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253101, 34.260719, 26.813133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837738, 0.118255, 0.533115,
		-0.545579, 0.139707, 0.826333,
		0.023238, -0.983106, 0.181555,
		33.260075, 33.965786, 26.867599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249008, 34.544807, 27.499823>,  <33.243805, 34.653961, 26.740511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249008, 34.544807, 27.499823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409260, 34.207607, 27.356239>,  <33.505409, 34.005287, 27.270088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409260, 34.207607, 27.356239>,  <33.249008, 34.544807, 27.499823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409260, 34.207607, 27.356239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739509, 0.066200, 0.669884,
		-0.540948, -0.533828, 0.649926,
		0.400627, -0.842998, -0.358959,
		33.529449, 33.954708, 27.248552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556458, 34.203323, 28.100525>,  <33.249008, 34.544807, 27.499823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556458, 34.203323, 28.100525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.727955, 34.022438, 27.787685>,  <33.830853, 33.913906, 27.599981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.727955, 34.022438, 27.787685>,  <33.556458, 34.203323, 28.100525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727955, 34.022438, 27.787685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901469, 0.157225, 0.403279,
		-0.059404, -0.877942, 0.475068,
		0.428748, -0.452215, -0.782097,
		33.856579, 33.886772, 27.553057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060249, 33.843288, 28.391905>,  <33.556458, 34.203323, 28.100525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060249, 33.843288, 28.391905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.180782, 33.850029, 28.010557>,  <34.253101, 33.854073, 27.781748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.180782, 33.850029, 28.010557>,  <34.060249, 33.843288, 28.391905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180782, 33.850029, 28.010557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915873, 0.273057, 0.294308,
		0.265283, -0.961850, 0.066849,
		0.301333, 0.016850, -0.953370,
		34.271183, 33.855083, 27.724546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658405, 33.478779, 28.358189>,  <34.060249, 33.843288, 28.391905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658405, 33.478779, 28.358189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.688427, 33.692940, 28.021687>,  <34.706440, 33.821438, 27.819786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.688427, 33.692940, 28.021687>,  <34.658405, 33.478779, 28.358189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688427, 33.692940, 28.021687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937515, 0.249551, 0.242465,
		0.339753, -0.806888, -0.483218,
		0.075055, 0.535402, -0.841256,
		34.710945, 33.853561, 27.769310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172935, 33.153160, 27.947449>,  <34.658405, 33.478779, 28.358189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172935, 33.153160, 27.947449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.127293, 33.539242, 27.853336>,  <35.099907, 33.770889, 27.796869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.127293, 33.539242, 27.853336>,  <35.172935, 33.153160, 27.947449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127293, 33.539242, 27.853336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917939, 0.193010, 0.346605,
		0.379957, -0.176424, -0.908024,
		-0.114108, 0.965205, -0.235282,
		35.093060, 33.828804, 27.782751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566338, 32.614178, 27.559635>,  <35.172935, 33.153160, 27.947449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566338, 32.614178, 27.559635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.599373, 32.329750, 27.838938>,  <35.619194, 32.159092, 28.006519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.599373, 32.329750, 27.838938>,  <35.566338, 32.614178, 27.559635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599373, 32.329750, 27.838938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891848, -0.365404, -0.266621,
		0.444731, -0.600718, -0.664344,
		0.082590, -0.711069, 0.698256,
		35.624149, 32.116428, 28.048414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699955, 31.844191, 27.299023>,  <35.566338, 32.614178, 27.559635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699955, 31.844191, 27.299023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.526970, 31.849304, 27.659649>,  <35.423180, 31.852371, 27.876024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.526970, 31.849304, 27.659649>,  <35.699955, 31.844191, 27.299023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526970, 31.849304, 27.659649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838436, -0.373509, -0.396883,
		0.331669, -0.927538, 0.172244,
		-0.432458, 0.012782, 0.901563,
		35.397232, 31.853138, 27.930119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425068, 31.282547, 27.166618>,  <35.699955, 31.844191, 27.299023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425068, 31.282547, 27.166618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228058, 31.390205, 27.497671>,  <35.109852, 31.454802, 27.696302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228058, 31.390205, 27.497671>,  <35.425068, 31.282547, 27.166618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228058, 31.390205, 27.497671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851640, -0.344911, -0.394646,
		0.179242, -0.899220, 0.399094,
		-0.492526, 0.269147, 0.827634,
		35.080299, 31.470949, 27.745962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096592, 30.703028, 27.466686>,  <35.425068, 31.282547, 27.166618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096592, 30.703028, 27.466686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897526, 31.031982, 27.576965>,  <34.778084, 31.229355, 27.643133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897526, 31.031982, 27.576965>,  <35.096592, 30.703028, 27.466686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897526, 31.031982, 27.576965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856954, -0.417088, -0.302765,
		-0.134000, -0.386936, 0.912318,
		-0.497668, 0.822386, 0.275697,
		34.748226, 31.278698, 27.659674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531487, 30.394121, 27.699825>,  <35.096592, 30.703028, 27.466686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531487, 30.394121, 27.699825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.415710, 30.772711, 27.642677>,  <34.346245, 30.999865, 27.608389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.415710, 30.772711, 27.642677>,  <34.531487, 30.394121, 27.699825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415710, 30.772711, 27.642677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906571, -0.318959, -0.276394,
		-0.307167, 0.049515, 0.950366,
		-0.289443, 0.946474, -0.142862,
		34.328880, 31.056652, 27.599817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929043, 30.664326, 28.159096>,  <34.531487, 30.394121, 27.699825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929043, 30.664326, 28.159096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.906273, 30.907078, 27.841995>,  <33.892609, 31.052729, 27.651735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.906273, 30.907078, 27.841995>,  <33.929043, 30.664326, 28.159096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906273, 30.907078, 27.841995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959815, -0.251824, -0.123855,
		-0.274799, 0.753843, 0.596829,
		-0.056928, 0.606881, -0.792751,
		33.889194, 31.089142, 27.604170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301594, 31.016392, 28.196039>,  <33.929043, 30.664326, 28.159096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301594, 31.016392, 28.196039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401833, 31.055687, 27.810801>,  <33.461975, 31.079264, 27.579659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401833, 31.055687, 27.810801>,  <33.301594, 31.016392, 28.196039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401833, 31.055687, 27.810801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905181, -0.329002, -0.269082,
		-0.343294, 0.939206, 0.006476,
		0.250593, 0.098236, -0.963095,
		33.477009, 31.085157, 27.521872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771263, 31.387325, 27.847536>,  <33.301594, 31.016392, 28.196039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771263, 31.387325, 27.847536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.960693, 31.209496, 27.543409>,  <33.074352, 31.102797, 27.360933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.960693, 31.209496, 27.543409>,  <32.771263, 31.387325, 27.847536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960693, 31.209496, 27.543409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880751, -0.241271, -0.407512,
		-0.002272, 0.862635, -0.505821,
		0.473574, -0.444576, -0.760315,
		33.102764, 31.076122, 27.315315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400764, 31.604465, 27.256052>,  <32.771263, 31.387325, 27.847536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400764, 31.604465, 27.256052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.629478, 31.300034, 27.133532>,  <32.766705, 31.117374, 27.060019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.629478, 31.300034, 27.133532>,  <32.400764, 31.604465, 27.256052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629478, 31.300034, 27.133532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725556, -0.294846, -0.621800,
		0.382928, 0.577774, -0.720794,
		0.571783, -0.761080, -0.306302,
		32.801014, 31.071709, 27.041641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303749, 31.611271, 26.539000>,  <32.400764, 31.604465, 27.256052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303749, 31.611271, 26.539000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.423405, 31.247875, 26.655733>,  <32.495197, 31.029839, 26.725773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.423405, 31.247875, 26.655733>,  <32.303749, 31.611271, 26.539000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423405, 31.247875, 26.655733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781425, -0.408754, -0.471481,
		0.547623, -0.087007, -0.832189,
		0.299138, -0.908488, 0.291833,
		32.513145, 30.975328, 26.743282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197945, 31.171867, 25.947521>,  <32.303749, 31.611271, 26.539000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197945, 31.171867, 25.947521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.199368, 30.935022, 26.269859>,  <32.200222, 30.792915, 26.463263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.199368, 30.935022, 26.269859>,  <32.197945, 31.171867, 25.947521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199368, 30.935022, 26.269859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793247, -0.492350, -0.358261,
		0.608890, -0.637961, -0.471443,
		0.003558, -0.592112, 0.805848,
		32.200436, 30.757389, 26.511614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086300, 30.492296, 25.701029>,  <32.197945, 31.171867, 25.947521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086300, 30.492296, 25.701029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.988312, 30.479820, 26.088640>,  <31.929518, 30.472336, 26.321207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.988312, 30.479820, 26.088640>,  <32.086300, 30.492296, 25.701029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988312, 30.479820, 26.088640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771927, -0.598463, -0.214407,
		0.586614, -0.800543, 0.122532,
		-0.244973, -0.031189, 0.969028,
		31.914820, 30.470463, 26.379349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101032, 29.821615, 25.843349>,  <32.086300, 30.492296, 25.701029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101032, 29.821615, 25.843349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.863272, 30.027788, 26.090256>,  <31.720615, 30.151493, 26.238400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.863272, 30.027788, 26.090256>,  <32.101032, 29.821615, 25.843349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863272, 30.027788, 26.090256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779040, -0.559462, -0.283016,
		0.199461, -0.649100, 0.734088,
		-0.594400, 0.515434, 0.617265,
		31.684952, 30.182419, 26.275434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701694, 29.321156, 26.092913>,  <32.101032, 29.821615, 25.843349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701694, 29.321156, 26.092913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.475256, 29.637445, 26.186113>,  <31.339394, 29.827219, 26.242033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.475256, 29.637445, 26.186113>,  <31.701694, 29.321156, 26.092913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475256, 29.637445, 26.186113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821561, -0.517988, -0.238173,
		-0.067638, -0.326253, 0.942860,
		-0.566094, 0.790726, 0.233001,
		31.305428, 29.874662, 26.256014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818424, 28.679167, 26.277311>,  <31.701694, 29.321156, 26.092913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818424, 28.679167, 26.277311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.778913, 28.283922, 26.324430>,  <31.755207, 28.046776, 26.352701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.778913, 28.283922, 26.324430>,  <31.818424, 28.679167, 26.277311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778913, 28.283922, 26.324430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730781, 0.008318, 0.682561,
		-0.675428, 0.153505, 0.721272,
		-0.098777, -0.988113, 0.117797,
		31.749281, 27.987488, 26.359770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819687, 28.560207, 27.093775>,  <31.818424, 28.679167, 26.277311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819687, 28.560207, 27.093775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.918591, 28.219854, 26.908363>,  <31.977932, 28.015642, 26.797115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.918591, 28.219854, 26.908363>,  <31.819687, 28.560207, 27.093775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918591, 28.219854, 26.908363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696437, -0.176539, 0.695564,
		-0.673675, -0.494805, 0.548936,
		0.247259, -0.850883, -0.463531,
		31.992769, 27.964590, 26.769304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904694, 28.047857, 27.578556>,  <31.819687, 28.560207, 27.093775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904694, 28.047857, 27.578556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.098972, 27.919989, 27.253124>,  <32.215538, 27.843267, 27.057865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.098972, 27.919989, 27.253124>,  <31.904694, 28.047857, 27.578556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098972, 27.919989, 27.253124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867869, 0.065168, 0.492501,
		-0.104420, -0.945284, 0.309086,
		0.485696, -0.319673, -0.813578,
		32.244682, 27.824087, 27.009050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473732, 27.665716, 27.782541>,  <31.904694, 28.047857, 27.578556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473732, 27.665716, 27.782541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.563702, 27.761000, 27.404617>,  <32.617683, 27.818169, 27.177862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.563702, 27.761000, 27.404617>,  <32.473732, 27.665716, 27.782541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563702, 27.761000, 27.404617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937936, 0.209772, 0.276173,
		0.263981, -0.948290, -0.176241,
		0.224921, 0.238207, -0.944811,
		32.631180, 27.832462, 27.121174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106773, 27.308668, 27.601803>,  <32.473732, 27.665716, 27.782541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106773, 27.308668, 27.601803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094975, 27.595469, 27.323223>,  <33.087894, 27.767548, 27.156075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094975, 27.595469, 27.323223>,  <33.106773, 27.308668, 27.601803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094975, 27.595469, 27.323223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978055, 0.164469, 0.127904,
		0.206251, -0.677393, -0.706116,
		-0.029493, 0.717000, -0.696449,
		33.086128, 27.810568, 27.114288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655807, 27.111153, 27.116545>,  <33.106773, 27.308668, 27.601803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655807, 27.111153, 27.116545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.586067, 27.499954, 27.053545>,  <33.544224, 27.733236, 27.015745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.586067, 27.499954, 27.053545>,  <33.655807, 27.111153, 27.116545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586067, 27.499954, 27.053545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981692, 0.184042, 0.049085,
		0.076698, -0.146057, -0.986299,
		-0.174351, 0.972006, -0.157498,
		33.533760, 27.791555, 27.006296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964191, 27.353767, 26.514769>,  <33.655807, 27.111153, 27.116545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964191, 27.353767, 26.514769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.917919, 27.678383, 26.743860>,  <33.890156, 27.873152, 26.881315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.917919, 27.678383, 26.743860>,  <33.964191, 27.353767, 26.514769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917919, 27.678383, 26.743860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949577, 0.259520, -0.175933,
		-0.291411, 0.523499, -0.800642,
		-0.115682, 0.811541, 0.572730,
		33.883213, 27.921844, 26.915680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206234, 27.802584, 26.092655>,  <33.964191, 27.353767, 26.514769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206234, 27.802584, 26.092655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224823, 27.971201, 26.454903>,  <34.235977, 28.072371, 26.672251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224823, 27.971201, 26.454903>,  <34.206234, 27.802584, 26.092655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224823, 27.971201, 26.454903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923469, 0.327519, -0.199841,
		-0.380849, 0.845597, -0.374059,
		0.046474, 0.421541, 0.905617,
		34.238766, 28.097664, 26.726587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528950, 28.366890, 25.964020>,  <34.206234, 27.802584, 26.092655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528950, 28.366890, 25.964020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.577553, 28.289658, 26.353472>,  <34.606716, 28.243319, 26.587143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.577553, 28.289658, 26.353472>,  <34.528950, 28.366890, 25.964020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577553, 28.289658, 26.353472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916727, 0.397933, -0.035496,
		-0.380586, 0.896866, 0.225355,
		0.121512, -0.193080, 0.973630,
		34.614006, 28.231733, 26.645561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986012, 28.810389, 26.104362>,  <34.528950, 28.366890, 25.964020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986012, 28.810389, 26.104362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.999699, 28.568716, 26.422808>,  <35.007912, 28.423714, 26.613874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.999699, 28.568716, 26.422808>,  <34.986012, 28.810389, 26.104362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999699, 28.568716, 26.422808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926004, 0.318822, 0.202161,
		-0.375960, 0.730287, 0.570382,
		0.034215, -0.604180, 0.796113,
		35.009964, 28.387463, 26.661642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363304, 29.168123, 26.655228>,  <34.986012, 28.810389, 26.104362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363304, 29.168123, 26.655228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363529, 28.785427, 26.771603>,  <35.363667, 28.555809, 26.841429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363529, 28.785427, 26.771603>,  <35.363304, 29.168123, 26.655228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363529, 28.785427, 26.771603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964770, 0.077066, 0.251554,
		-0.263093, 0.280547, 0.923079,
		0.000565, -0.956741, 0.290939,
		35.363697, 28.498405, 26.858885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647324, 29.163431, 27.401739>,  <35.363304, 29.168123, 26.655228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647324, 29.163431, 27.401739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693058, 28.803522, 27.233294>,  <35.720501, 28.587576, 27.132227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693058, 28.803522, 27.233294>,  <35.647324, 29.163431, 27.401739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693058, 28.803522, 27.233294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926062, -0.056919, 0.373054,
		-0.359634, -0.432632, 0.826736,
		0.114338, -0.899772, -0.421114,
		35.727360, 28.533590, 27.106958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898590, 28.662977, 27.924282>,  <35.647324, 29.163431, 27.401739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898590, 28.662977, 27.924282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018211, 28.551394, 27.559261>,  <36.089985, 28.484444, 27.340248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018211, 28.551394, 27.559261>,  <35.898590, 28.662977, 27.924282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018211, 28.551394, 27.559261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950078, -0.002156, 0.312007,
		-0.089005, -0.960300, 0.264390,
		0.299050, -0.278961, -0.912551,
		36.107925, 28.467705, 27.285496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589371, 28.281681, 28.055628>,  <35.898590, 28.662977, 27.924282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589371, 28.281681, 28.055628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595409, 28.314468, 27.657021>,  <36.599033, 28.334141, 27.417856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595409, 28.314468, 27.657021>,  <36.589371, 28.281681, 28.055628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595409, 28.314468, 27.657021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997462, 0.068115, 0.020717,
		0.069577, -0.994304, -0.080734,
		0.015100, 0.081970, -0.996520,
		36.599937, 28.339060, 27.358065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.853245, 26.446735, 21.631155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.675339, 26.737768, 21.840080>,  <33.568596, 26.912388, 21.965435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.675339, 26.737768, 21.840080>,  <33.853245, 26.446735, 21.631155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675339, 26.737768, 21.840080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894410, -0.391448, -0.216332,
		0.047058, -0.563378, 0.824858,
		-0.444766, 0.727581, 0.522312,
		33.541908, 26.956043, 21.996773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358727, 26.251091, 22.136679>,  <33.853245, 26.446735, 21.631155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358727, 26.251091, 22.136679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219898, 26.624708, 22.102964>,  <33.136600, 26.848879, 22.082735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219898, 26.624708, 22.102964>,  <33.358727, 26.251091, 22.136679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219898, 26.624708, 22.102964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935298, -0.351341, -0.042145,
		-0.068978, 0.064206, 0.995550,
		-0.347072, 0.934044, -0.084287,
		33.115776, 26.904921, 22.077679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971447, 26.306620, 22.677961>,  <33.358727, 26.251091, 22.136679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971447, 26.306620, 22.677961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846333, 26.572237, 22.406309>,  <32.771263, 26.731607, 22.243319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846333, 26.572237, 22.406309>,  <32.971447, 26.306620, 22.677961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846333, 26.572237, 22.406309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946456, -0.278058, 0.164024,
		-0.079919, 0.694070, 0.715458,
		-0.312783, 0.664041, -0.679129,
		32.752499, 26.771450, 22.202570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340534, 26.549664, 22.926960>,  <32.971447, 26.306620, 22.677961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340534, 26.549664, 22.926960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.290882, 26.650824, 22.543161>,  <32.261089, 26.711519, 22.312881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.290882, 26.650824, 22.543161>,  <32.340534, 26.549664, 22.926960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290882, 26.650824, 22.543161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969664, -0.236128, 0.063208,
		-0.210579, 0.938235, 0.274538,
		-0.124130, 0.252900, -0.959497,
		32.253643, 26.726694, 22.255312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755030, 26.948013, 22.887005>,  <32.340534, 26.549664, 22.926960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755030, 26.948013, 22.887005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.803288, 26.861950, 22.499365>,  <31.832243, 26.810312, 22.266781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.803288, 26.861950, 22.499365>,  <31.755030, 26.948013, 22.887005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803288, 26.861950, 22.499365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951039, -0.304882, -0.050709,
		-0.284551, 0.927768, -0.241408,
		0.120647, -0.215159, -0.969098,
		31.839481, 26.797401, 22.208635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267651, 27.300257, 22.538214>,  <31.755030, 26.948013, 22.887005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267651, 27.300257, 22.538214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.369064, 26.994930, 22.300535>,  <31.429913, 26.811735, 22.157928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.369064, 26.994930, 22.300535>,  <31.267651, 27.300257, 22.538214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369064, 26.994930, 22.300535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963248, -0.255565, -0.082698,
		-0.088731, 0.593325, -0.800058,
		0.253533, -0.763317, -0.594196,
		31.445124, 26.765936, 22.122276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823534, 27.279919, 21.996416>,  <31.267651, 27.300257, 22.538214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823534, 27.279919, 21.996416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.965464, 26.906149, 21.984100>,  <31.050621, 26.681887, 21.976711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.965464, 26.906149, 21.984100>,  <30.823534, 27.279919, 21.996416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965464, 26.906149, 21.984100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924341, -0.345670, -0.161574,
		0.140336, 0.085789, -0.986380,
		0.354823, -0.934427, -0.030789,
		31.071911, 26.625820, 21.974863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714834, 26.941864, 21.322071>,  <30.823534, 27.279919, 21.996416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714834, 26.941864, 21.322071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768370, 26.597057, 21.517628>,  <30.800491, 26.390173, 21.634962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768370, 26.597057, 21.517628>,  <30.714834, 26.941864, 21.322071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768370, 26.597057, 21.517628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946101, -0.257961, -0.195830,
		0.294923, -0.436332, -0.850079,
		0.133840, -0.862016, 0.488892,
		30.808521, 26.338453, 21.664295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511021, 26.422031, 20.890230>,  <30.714834, 26.941864, 21.322071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511021, 26.422031, 20.890230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.501081, 26.262707, 21.256996>,  <30.495119, 26.167112, 21.477055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.501081, 26.262707, 21.256996>,  <30.511021, 26.422031, 20.890230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501081, 26.262707, 21.256996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933607, -0.318695, -0.163742,
		0.357437, -0.860105, -0.363950,
		-0.024846, -0.398313, 0.916913,
		30.493628, 26.143213, 21.532070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488131, 25.668465, 20.875977>,  <30.511021, 26.422031, 20.890230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488131, 25.668465, 20.875977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.329285, 25.798904, 21.219128>,  <30.233976, 25.877169, 21.425018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.329285, 25.798904, 21.219128>,  <30.488131, 25.668465, 20.875977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329285, 25.798904, 21.219128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914475, -0.219712, -0.339797,
		0.077679, -0.919448, 0.385462,
		-0.397116, 0.326100, 0.857880,
		30.210150, 25.896734, 21.476492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995197, 25.229332, 20.949104>,  <30.488131, 25.668465, 20.875977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995197, 25.229332, 20.949104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.903774, 25.499811, 21.229252>,  <29.848921, 25.662098, 21.397341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.903774, 25.499811, 21.229252>,  <29.995197, 25.229332, 20.949104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903774, 25.499811, 21.229252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963503, -0.260105, -0.063297,
		0.139368, -0.689276, 0.710967,
		-0.228555, 0.676198, 0.700370,
		29.835207, 25.702671, 21.439363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547121, 24.912474, 21.349684>,  <29.995197, 25.229332, 20.949104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547121, 24.912474, 21.349684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.465858, 25.297689, 21.420427>,  <29.417101, 25.528820, 21.462873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.465858, 25.297689, 21.420427>,  <29.547121, 24.912474, 21.349684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465858, 25.297689, 21.420427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974667, -0.181643, -0.130503,
		-0.093554, -0.198893, 0.975546,
		-0.203157, 0.963041, 0.176860,
		29.404911, 25.586601, 21.473486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916748, 24.802677, 21.391897>,  <29.547121, 24.912474, 21.349684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916748, 24.802677, 21.391897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.958471, 25.200464, 21.396812>,  <28.983505, 25.439137, 21.399761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.958471, 25.200464, 21.396812>,  <28.916748, 24.802677, 21.391897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958471, 25.200464, 21.396812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961230, 0.103979, -0.255394,
		-0.255259, 0.014827, 0.966759,
		0.104309, 0.994469, 0.012289,
		28.989763, 25.498804, 21.400499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489668, 25.114916, 21.914194>,  <28.916748, 24.802677, 21.391897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489668, 25.114916, 21.914194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.543394, 25.363329, 21.605318>,  <28.575630, 25.512377, 21.419992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.543394, 25.363329, 21.605318>,  <28.489668, 25.114916, 21.914194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543394, 25.363329, 21.605318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967717, -0.085507, -0.237092,
		-0.213269, 0.779108, 0.589498,
		0.134314, 0.621031, -0.772192,
		28.583689, 25.549639, 21.373661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123720, 25.543566, 22.452675>,  <28.489668, 25.114916, 21.914194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123720, 25.543566, 22.452675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.864552, 25.702375, 22.712694>,  <27.709049, 25.797661, 22.868706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.864552, 25.702375, 22.712694>,  <28.123720, 25.543566, 22.452675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864552, 25.702375, 22.712694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709857, 0.624208, 0.326292,
		-0.276220, 0.672856, -0.686271,
		-0.647923, 0.397026, 0.650050,
		27.670174, 25.821484, 22.907709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126661, 26.280191, 22.316395>,  <28.123720, 25.543566, 22.452675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126661, 26.280191, 22.316395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.019886, 26.215290, 22.696377>,  <27.955822, 26.176350, 22.924366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.019886, 26.215290, 22.696377>,  <28.126661, 26.280191, 22.316395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019886, 26.215290, 22.696377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625647, 0.720580, 0.298882,
		-0.733015, 0.674121, -0.090836,
		-0.266937, -0.162253, 0.949957,
		27.939804, 26.166615, 22.981363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244703, 26.909441, 22.568172>,  <28.126661, 26.280191, 22.316395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244703, 26.909441, 22.568172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.200682, 26.684275, 22.895834>,  <28.174269, 26.549175, 23.092432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.200682, 26.684275, 22.895834>,  <28.244703, 26.909441, 22.568172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200682, 26.684275, 22.895834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618622, 0.606276, 0.499737,
		-0.777943, 0.561745, 0.281509,
		-0.110052, -0.562914, 0.819156,
		28.167665, 26.515400, 23.141581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128445, 27.380735, 23.158535>,  <28.244703, 26.909441, 22.568172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128445, 27.380735, 23.158535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.276966, 27.038170, 23.302029>,  <28.366079, 26.832630, 23.388124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.276966, 27.038170, 23.302029>,  <28.128445, 27.380735, 23.158535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276966, 27.038170, 23.302029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596007, 0.516082, 0.615170,
		-0.711977, -0.014606, 0.702051,
		0.371301, -0.856414, 0.358734,
		28.388357, 26.781246, 23.409649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148998, 27.543846, 23.870668>,  <28.128445, 27.380735, 23.158535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148998, 27.543846, 23.870668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.373693, 27.221334, 23.796518>,  <28.508511, 27.027828, 23.752028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.373693, 27.221334, 23.796518>,  <28.148998, 27.543846, 23.870668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373693, 27.221334, 23.796518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647925, 0.289420, 0.704578,
		-0.514434, -0.515900, 0.684986,
		0.561740, -0.806278, -0.185377,
		28.542215, 26.979450, 23.740906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170578, 27.185991, 24.438269>,  <28.148998, 27.543846, 23.870668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170578, 27.185991, 24.438269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.509127, 27.024500, 24.299322>,  <28.712255, 26.927605, 24.215954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.509127, 27.024500, 24.299322>,  <28.170578, 27.185991, 24.438269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509127, 27.024500, 24.299322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456694, 0.214578, 0.863358,
		-0.274024, -0.889360, 0.365992,
		0.846370, -0.403727, -0.347366,
		28.763037, 26.903381, 24.195112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503347, 26.735874, 25.048088>,  <28.170578, 27.185991, 24.438269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503347, 26.735874, 25.048088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.802851, 26.784752, 24.787495>,  <28.982553, 26.814077, 24.631140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.802851, 26.784752, 24.787495>,  <28.503347, 26.735874, 25.048088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802851, 26.784752, 24.787495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652147, 0.040036, 0.757034,
		0.118587, -0.991698, -0.049710,
		0.748759, 0.122193, -0.651481,
		29.027479, 26.821409, 24.592051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998621, 26.290689, 25.324018>,  <28.503347, 26.735874, 25.048088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998621, 26.290689, 25.324018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.188417, 26.563107, 25.100935>,  <29.302296, 26.726557, 24.967085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.188417, 26.563107, 25.100935>,  <28.998621, 26.290689, 25.324018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188417, 26.563107, 25.100935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750236, 0.018523, 0.660910,
		0.460440, -0.732007, -0.502156,
		0.474490, 0.681045, -0.557707,
		29.330765, 26.767420, 24.933622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721972, 26.097010, 25.305285>,  <28.998621, 26.290689, 25.324018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721972, 26.097010, 25.305285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759363, 26.481743, 25.202415>,  <29.781797, 26.712584, 25.140694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759363, 26.481743, 25.202415>,  <29.721972, 26.097010, 25.305285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759363, 26.481743, 25.202415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692806, 0.122672, 0.710613,
		0.715040, -0.244599, -0.654897,
		0.093478, 0.961833, -0.257175,
		29.787407, 26.770292, 25.125263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435472, 26.150658, 25.405632>,  <29.721972, 26.097010, 25.305285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435472, 26.150658, 25.405632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.272911, 26.516039, 25.397249>,  <30.175373, 26.735268, 25.392220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.272911, 26.516039, 25.397249>,  <30.435472, 26.150658, 25.405632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272911, 26.516039, 25.397249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689856, 0.321802, 0.648492,
		0.599111, 0.249093, -0.760933,
		-0.406405, 0.913453, -0.020957,
		30.150990, 26.790075, 25.390963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975227, 26.597591, 25.254477>,  <30.435472, 26.150658, 25.405632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975227, 26.597591, 25.254477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.723919, 26.847294, 25.440197>,  <30.573133, 26.997116, 25.551630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.723919, 26.847294, 25.440197>,  <30.975227, 26.597591, 25.254477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723919, 26.847294, 25.440197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762247, 0.613381, 0.206745,
		-0.155733, 0.483805, -0.861208,
		-0.628273, 0.624256, 0.464303,
		30.535437, 27.034571, 25.579487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017494, 27.258781, 24.939831>,  <30.975227, 26.597591, 25.254477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017494, 27.258781, 24.939831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.860008, 27.345747, 25.297091>,  <30.765516, 27.397926, 25.511446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.860008, 27.345747, 25.297091>,  <31.017494, 27.258781, 24.939831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860008, 27.345747, 25.297091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825219, 0.511650, 0.239222,
		-0.404970, 0.831231, -0.380861,
		-0.393716, 0.217416, 0.893151,
		30.741894, 27.410973, 25.565035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140680, 27.940908, 25.139578>,  <31.017494, 27.258781, 24.939831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140680, 27.940908, 25.139578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.065332, 27.799358, 25.506029>,  <31.020124, 27.714428, 25.725899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.065332, 27.799358, 25.506029>,  <31.140680, 27.940908, 25.139578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065332, 27.799358, 25.506029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854401, 0.400925, 0.330543,
		-0.484269, 0.845003, 0.226832,
		-0.188368, -0.353877, 0.916127,
		31.008821, 27.693195, 25.780867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234587, 28.506269, 25.674137>,  <31.140680, 27.940908, 25.139578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234587, 28.506269, 25.674137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269724, 28.166348, 25.882027>,  <31.290806, 27.962395, 26.006760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269724, 28.166348, 25.882027>,  <31.234587, 28.506269, 25.674137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269724, 28.166348, 25.882027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829676, 0.351164, 0.433961,
		-0.551291, 0.393082, 0.735910,
		0.087843, -0.849806, 0.519724,
		31.296076, 27.911406, 26.037945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025587, 29.017828, 26.314270>,  <31.234587, 28.506269, 25.674137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025587, 29.017828, 26.314270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.965061, 29.407688, 26.248354>,  <30.928745, 29.641605, 26.208805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.965061, 29.407688, 26.248354>,  <31.025587, 29.017828, 26.314270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965061, 29.407688, 26.248354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897065, -0.205422, -0.391249,
		-0.415184, 0.088626, 0.905410,
		-0.151317, 0.974653, -0.164791,
		30.919666, 29.700085, 26.198917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236620, 29.093426, 26.457085>,  <31.025587, 29.017828, 26.314270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236620, 29.093426, 26.457085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.347017, 29.429579, 26.270502>,  <30.413256, 29.631271, 26.158552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.347017, 29.429579, 26.270502>,  <30.236620, 29.093426, 26.457085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347017, 29.429579, 26.270502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835175, -0.030517, -0.549137,
		-0.475720, 0.541134, 0.693444,
		0.275994, 0.840383, -0.466459,
		30.429815, 29.681694, 26.130564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686573, 29.568579, 26.623037>,  <30.236620, 29.093426, 26.457085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686573, 29.568579, 26.623037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.887562, 29.700035, 26.303158>,  <30.008154, 29.778910, 26.111231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.887562, 29.700035, 26.303158>,  <29.686573, 29.568579, 26.623037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887562, 29.700035, 26.303158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830583, -0.073396, -0.552037,
		-0.240117, 0.941598, 0.236084,
		0.502470, 0.328641, -0.799699,
		30.038303, 29.798628, 26.063248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320272, 30.198460, 26.448933>,  <29.686573, 29.568579, 26.623037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320272, 30.198460, 26.448933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.528774, 30.057774, 26.137911>,  <29.653875, 29.973362, 25.951298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.528774, 30.057774, 26.137911>,  <29.320272, 30.198460, 26.448933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528774, 30.057774, 26.137911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815335, 0.063841, -0.575460,
		0.252037, 0.933928, -0.253486,
		0.521255, -0.351713, -0.777554,
		29.685150, 29.952259, 25.904644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344170, 30.701153, 25.915613>,  <29.320272, 30.198460, 26.448933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344170, 30.701153, 25.915613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.397894, 30.340214, 25.751793>,  <29.430128, 30.123652, 25.653502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.397894, 30.340214, 25.751793>,  <29.344170, 30.701153, 25.915613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397894, 30.340214, 25.751793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857887, 0.100976, -0.503819,
		0.495974, 0.419016, -0.760549,
		0.134311, -0.902346, -0.409550,
		29.438187, 30.069510, 25.628927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996393, 30.751297, 25.304436>,  <29.344170, 30.701153, 25.915613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996393, 30.751297, 25.304436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.063948, 30.357296, 25.318548>,  <29.104481, 30.120895, 25.327015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.063948, 30.357296, 25.318548>,  <28.996393, 30.751297, 25.304436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063948, 30.357296, 25.318548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875269, -0.166340, -0.454131,
		0.453189, 0.045817, -0.890236,
		0.168888, -0.985004, 0.035281,
		29.114614, 30.061794, 25.329132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824366, 30.527449, 24.651897>,  <28.996393, 30.751297, 25.304436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824366, 30.527449, 24.651897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.813663, 30.185858, 24.859747>,  <28.807243, 29.980904, 24.984457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.813663, 30.185858, 24.859747>,  <28.824366, 30.527449, 24.651897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813663, 30.185858, 24.859747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791369, -0.299496, -0.532951,
		0.610753, -0.425474, -0.667797,
		-0.026754, -0.853975, 0.519625,
		28.805637, 29.929665, 25.015635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068768, 30.952353, 24.081804>,  <28.824366, 30.527449, 24.651897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068768, 30.952353, 24.081804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.887337, 31.294439, 23.981504>,  <28.778479, 31.499691, 23.921324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.887337, 31.294439, 23.981504>,  <29.068768, 30.952353, 24.081804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887337, 31.294439, 23.981504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780283, 0.517018, 0.351925,
		0.430615, -0.036032, -0.901816,
		-0.453575, 0.855216, -0.250751,
		28.751265, 31.551004, 23.906279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527811, 31.344385, 23.580360>,  <29.068768, 30.952353, 24.081804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527811, 31.344385, 23.580360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.303514, 31.602219, 23.788239>,  <29.168938, 31.756918, 23.912966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.303514, 31.602219, 23.788239>,  <29.527811, 31.344385, 23.580360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303514, 31.602219, 23.788239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827956, 0.442421, 0.344605,
		-0.007798, 0.623519, -0.781769,
		-0.560739, 0.644583, 0.519696,
		29.135292, 31.795593, 23.944147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890255, 31.931957, 23.508575>,  <29.527811, 31.344385, 23.580360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890255, 31.931957, 23.508575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.614586, 32.026836, 23.782444>,  <29.449184, 32.083763, 23.946766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.614586, 32.026836, 23.782444>,  <29.890255, 31.931957, 23.508575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614586, 32.026836, 23.782444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684279, 0.523847, 0.507294,
		-0.238335, 0.818121, -0.523331,
		-0.689173, 0.237198, 0.684674,
		29.407835, 32.097996, 23.987846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756172, 32.758209, 23.506285>,  <29.890255, 31.931957, 23.508575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756172, 32.758209, 23.506285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.677982, 32.586262, 23.858875>,  <29.631069, 32.483093, 24.070431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.677982, 32.586262, 23.858875>,  <29.756172, 32.758209, 23.506285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677982, 32.586262, 23.858875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635075, 0.629422, 0.447781,
		-0.747309, 0.647333, 0.149964,
		-0.195473, -0.429869, 0.881478,
		29.619341, 32.457302, 24.123318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798918, 33.315205, 23.917797>,  <29.756172, 32.758209, 23.506285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798918, 33.315205, 23.917797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.797886, 33.011509, 24.178122>,  <29.797266, 32.829292, 24.334316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.797886, 33.011509, 24.178122>,  <29.798918, 33.315205, 23.917797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797886, 33.011509, 24.178122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462717, 0.576043, 0.673846,
		-0.886502, 0.302881, 0.349824,
		-0.002581, -0.759235, 0.650811,
		29.797112, 32.783737, 24.373365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619093, 33.590939, 24.580320>,  <29.798918, 33.315205, 23.917797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619093, 33.590939, 24.580320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.808151, 33.249317, 24.667221>,  <29.921587, 33.044346, 24.719360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.808151, 33.249317, 24.667221>,  <29.619093, 33.590939, 24.580320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808151, 33.249317, 24.667221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648236, 0.503944, 0.570816,
		-0.596989, -0.128965, 0.791816,
		0.472646, -0.854054, 0.217250,
		29.949945, 32.993099, 24.732395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703690, 33.616119, 25.332012>,  <29.619093, 33.590939, 24.580320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703690, 33.616119, 25.332012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.962467, 33.357819, 25.169792>,  <30.117735, 33.202839, 25.072460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.962467, 33.357819, 25.169792>,  <29.703690, 33.616119, 25.332012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962467, 33.357819, 25.169792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697970, 0.287294, 0.655973,
		-0.307082, -0.707440, 0.636577,
		0.646946, -0.645749, -0.405549,
		30.156551, 33.164093, 25.048128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.592594, 28.815760, 21.019402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805490, 28.523972, 21.191261>,  <28.933228, 28.348900, 21.294376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805490, 28.523972, 21.191261>,  <28.592594, 28.815760, 21.019402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805490, 28.523972, 21.191261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546063, 0.683623, 0.484225,
		-0.646944, -0.023108, 0.762187,
		0.532238, -0.729469, 0.429648,
		28.965162, 28.305130, 21.320156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612207, 28.986723, 21.634550>,  <28.592594, 28.815760, 21.019402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612207, 28.986723, 21.634550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923679, 28.747534, 21.558563>,  <29.110563, 28.604021, 21.512972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923679, 28.747534, 21.558563>,  <28.612207, 28.986723, 21.634550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923679, 28.747534, 21.558563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624867, 0.766396, 0.148922,
		0.056537, -0.234665, 0.970431,
		0.778681, -0.597971, -0.189965,
		29.157284, 28.568142, 21.501574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096941, 29.218840, 22.203390>,  <28.612207, 28.986723, 21.634550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096941, 29.218840, 22.203390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313507, 29.007675, 21.941648>,  <29.443447, 28.880976, 21.784603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313507, 29.007675, 21.941648>,  <29.096941, 29.218840, 22.203390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313507, 29.007675, 21.941648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752252, 0.651756, 0.096599,
		0.375484, -0.544540, 0.749992,
		0.541414, -0.527912, -0.654355,
		29.475931, 28.849302, 21.745342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816051, 29.011036, 22.435549>,  <29.096941, 29.218840, 22.203390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816051, 29.011036, 22.435549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854069, 29.007221, 22.037378>,  <29.876879, 29.004932, 21.798475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854069, 29.007221, 22.037378>,  <29.816051, 29.011036, 22.435549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854069, 29.007221, 22.037378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791643, 0.606987, 0.069773,
		0.603546, -0.794655, 0.065239,
		0.095045, -0.009535, -0.995428,
		29.882582, 29.004360, 21.738750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583105, 28.895334, 22.282125>,  <29.816051, 29.011036, 22.435549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583105, 28.895334, 22.282125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.433620, 29.054951, 21.947197>,  <30.343929, 29.150721, 21.746241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.433620, 29.054951, 21.947197>,  <30.583105, 28.895334, 22.282125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433620, 29.054951, 21.947197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751193, 0.659753, -0.020850,
		0.544105, -0.636781, -0.546315,
		-0.373709, 0.399043, -0.837321,
		30.321508, 29.174664, 21.696001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196987, 28.962759, 21.890181>,  <30.583105, 28.895334, 22.282125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196987, 28.962759, 21.890181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.896620, 29.195707, 21.765623>,  <30.716398, 29.335476, 21.690889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.896620, 29.195707, 21.765623>,  <31.196987, 28.962759, 21.890181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896620, 29.195707, 21.765623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656485, 0.709505, -0.256185,
		0.071741, -0.396799, -0.915098,
		-0.750920, 0.582369, -0.311393,
		30.671345, 29.370419, 21.672205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366550, 29.183008, 21.260082>,  <31.196987, 28.962759, 21.890181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366550, 29.183008, 21.260082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102818, 29.444187, 21.409180>,  <30.944578, 29.600895, 21.498638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102818, 29.444187, 21.409180>,  <31.366550, 29.183008, 21.260082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102818, 29.444187, 21.409180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587894, 0.756779, -0.285774,
		-0.468681, 0.030715, -0.882833,
		-0.659332, 0.652949, 0.372745,
		30.905018, 29.640072, 21.521004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414984, 29.646423, 20.724539>,  <31.366550, 29.183008, 21.260082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414984, 29.646423, 20.724539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.255140, 29.813913, 21.050724>,  <31.159235, 29.914408, 21.246435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.255140, 29.813913, 21.050724>,  <31.414984, 29.646423, 20.724539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255140, 29.813913, 21.050724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603181, 0.789975, -0.110056,
		-0.690280, 0.447894, -0.568247,
		-0.399608, 0.418725, 0.815465,
		31.135258, 29.939531, 21.295364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315439, 30.320967, 20.523151>,  <31.414984, 29.646423, 20.724539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315439, 30.320967, 20.523151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328142, 30.331152, 20.922819>,  <31.335764, 30.337263, 21.162621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328142, 30.331152, 20.922819>,  <31.315439, 30.320967, 20.523151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328142, 30.331152, 20.922819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607320, 0.793473, -0.039525,
		-0.793822, 0.608072, 0.009733,
		0.031757, 0.025464, 0.999171,
		31.337669, 30.338791, 21.222570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426954, 31.114397, 20.736172>,  <31.315439, 30.320967, 20.523151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426954, 31.114397, 20.736172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.519085, 30.906445, 21.065212>,  <31.574364, 30.781673, 21.262636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.519085, 30.906445, 21.065212>,  <31.426954, 31.114397, 20.736172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519085, 30.906445, 21.065212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689790, 0.683487, 0.238823,
		-0.686397, 0.512415, 0.516033,
		0.230326, -0.519882, 0.822601,
		31.588182, 30.750481, 21.311993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269203, 31.545532, 21.358868>,  <31.426954, 31.114397, 20.736172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269203, 31.545532, 21.358868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.556667, 31.287344, 21.462322>,  <31.729147, 31.132431, 21.524395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.556667, 31.287344, 21.462322>,  <31.269203, 31.545532, 21.358868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556667, 31.287344, 21.462322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608881, 0.763777, 0.214263,
		-0.335840, 0.003495, 0.941912,
		0.718662, -0.645470, 0.258635,
		31.772266, 31.093702, 21.539913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650694, 31.826838, 21.944742>,  <31.269203, 31.545532, 21.358868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650694, 31.826838, 21.944742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.902012, 31.541950, 21.819527>,  <32.052803, 31.371017, 21.744396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.902012, 31.541950, 21.819527>,  <31.650694, 31.826838, 21.944742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902012, 31.541950, 21.819527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771835, 0.621106, 0.136008,
		0.097563, -0.327068, 0.939951,
		0.628293, -0.712218, -0.313040,
		32.090500, 31.328285, 21.725615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336445, 32.289753, 22.434053>,  <31.650694, 31.826838, 21.944742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336445, 32.289753, 22.434053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.145140, 32.634346, 22.365812>,  <31.030357, 32.841103, 22.324867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.145140, 32.634346, 22.365812>,  <31.336445, 32.289753, 22.434053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145140, 32.634346, 22.365812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811727, -0.507779, -0.288547,
		-0.335208, 0.000481, 0.942144,
		-0.478262, 0.861488, -0.170602,
		31.001661, 32.892792, 22.314632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735237, 32.183388, 22.786850>,  <31.336445, 32.289753, 22.434053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735237, 32.183388, 22.786850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.688469, 32.477493, 22.519802>,  <30.660408, 32.653957, 22.359573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.688469, 32.477493, 22.519802>,  <30.735237, 32.183388, 22.786850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688469, 32.477493, 22.519802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760878, -0.498350, -0.415587,
		-0.638275, 0.459387, 0.617713,
		-0.116922, 0.735262, -0.667621,
		30.653393, 32.698071, 22.319515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010317, 32.199474, 22.771811>,  <30.735237, 32.183388, 22.786850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010317, 32.199474, 22.771811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156563, 32.369671, 22.440683>,  <30.244310, 32.471786, 22.242006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156563, 32.369671, 22.440683>,  <30.010317, 32.199474, 22.771811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156563, 32.369671, 22.440683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792702, -0.323775, -0.516521,
		-0.487800, 0.845063, 0.218906,
		0.365616, 0.425486, -0.827820,
		30.266247, 32.497318, 22.192337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369184, 32.532368, 22.488686>,  <30.010317, 32.199474, 22.771811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369184, 32.532368, 22.488686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.660809, 32.486721, 22.218737>,  <29.835783, 32.459332, 22.056768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.660809, 32.486721, 22.218737>,  <29.369184, 32.532368, 22.488686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660809, 32.486721, 22.218737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656601, -0.395004, -0.642531,
		-0.193254, 0.911564, -0.362909,
		0.729059, -0.114115, -0.674870,
		29.879526, 32.452488, 22.016275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218014, 33.008045, 21.954403>,  <29.369184, 32.532368, 22.488686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218014, 33.008045, 21.954403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.433846, 32.695065, 21.830061>,  <29.563345, 32.507278, 21.755457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.433846, 32.695065, 21.830061>,  <29.218014, 33.008045, 21.954403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433846, 32.695065, 21.830061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787490, -0.338408, -0.515111,
		0.297853, 0.522736, -0.798768,
		0.539577, -0.782449, -0.310854,
		29.595718, 32.460331, 21.736805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975718, 32.842407, 21.228048>,  <29.218014, 33.008045, 21.954403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975718, 32.842407, 21.228048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211098, 32.522346, 21.274494>,  <29.352325, 32.330311, 21.302361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211098, 32.522346, 21.274494>,  <28.975718, 32.842407, 21.228048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211098, 32.522346, 21.274494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606005, -0.531544, -0.591793,
		0.535245, 0.277875, -0.797683,
		0.588449, -0.800154, 0.116113,
		29.387632, 32.282299, 21.309328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271152, 32.797894, 20.597818>,  <28.975718, 32.842407, 21.228048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271152, 32.797894, 20.597818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260809, 32.454334, 20.802414>,  <29.254602, 32.248199, 20.925171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260809, 32.454334, 20.802414>,  <29.271152, 32.797894, 20.597818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260809, 32.454334, 20.802414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685358, -0.357253, -0.634550,
		0.727747, -0.366963, -0.579416,
		-0.025859, -0.858899, 0.511491,
		29.253052, 32.196663, 20.955862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162897, 32.475784, 20.091646>,  <29.271152, 32.797894, 20.597818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162897, 32.475784, 20.091646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122797, 32.177769, 20.355425>,  <29.098738, 31.998960, 20.513693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122797, 32.177769, 20.355425>,  <29.162897, 32.475784, 20.091646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122797, 32.177769, 20.355425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632371, -0.463989, -0.620339,
		0.768152, -0.479204, -0.424625,
		-0.100248, -0.745035, 0.659449,
		29.092722, 31.954258, 20.553259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154747, 31.854942, 19.739283>,  <29.162897, 32.475784, 20.091646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154747, 31.854942, 19.739283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968319, 31.799480, 20.088810>,  <28.856462, 31.766203, 20.298527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968319, 31.799480, 20.088810>,  <29.154747, 31.854942, 19.739283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968319, 31.799480, 20.088810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803422, -0.347296, -0.483630,
		0.370531, -0.927448, 0.050464,
		-0.466068, -0.138656, 0.873816,
		28.828499, 31.757883, 20.350954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865147, 31.164801, 19.721203>,  <29.154747, 31.854942, 19.739283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865147, 31.164801, 19.721203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660971, 31.320671, 20.027824>,  <28.538465, 31.414194, 20.211798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660971, 31.320671, 20.027824>,  <28.865147, 31.164801, 19.721203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660971, 31.320671, 20.027824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855207, -0.323178, -0.405187,
		0.089841, -0.862385, 0.498218,
		-0.510440, 0.389677, 0.766552,
		28.507839, 31.437574, 20.257790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407785, 30.667219, 19.919640>,  <28.865147, 31.164801, 19.721203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407785, 30.667219, 19.919640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234055, 30.990347, 20.079031>,  <28.129816, 31.184223, 20.174665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234055, 30.990347, 20.079031>,  <28.407785, 30.667219, 19.919640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234055, 30.990347, 20.079031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900151, -0.373044, -0.224869,
		-0.033003, -0.456359, 0.889184,
		-0.434325, 0.807821, 0.398481,
		28.103758, 31.232693, 20.198576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909555, 30.376051, 20.291302>,  <28.407785, 30.667219, 19.919640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909555, 30.376051, 20.291302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807016, 30.759497, 20.241747>,  <27.745493, 30.989563, 20.212013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807016, 30.759497, 20.241747>,  <27.909555, 30.376051, 20.291302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807016, 30.759497, 20.241747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907612, -0.282804, -0.310262,
		-0.332457, 0.032908, 0.942544,
		-0.256345, 0.958613, -0.123888,
		27.730112, 31.047081, 20.204580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246956, 30.341278, 20.533201>,  <27.909555, 30.376051, 20.291302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246956, 30.341278, 20.533201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259386, 30.698938, 20.354525>,  <27.266844, 30.913534, 20.247318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259386, 30.698938, 20.354525>,  <27.246956, 30.341278, 20.533201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259386, 30.698938, 20.354525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934531, -0.132523, -0.330287,
		-0.354523, 0.427709, 0.831492,
		0.031075, 0.894149, -0.446690,
		27.268709, 30.967182, 20.220518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670336, 30.735788, 20.739351>,  <27.246956, 30.341278, 20.533201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670336, 30.735788, 20.739351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779444, 30.879307, 20.382282>,  <26.844908, 30.965418, 20.168041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779444, 30.879307, 20.382282>,  <26.670336, 30.735788, 20.739351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779444, 30.879307, 20.382282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919760, -0.174913, -0.351349,
		-0.282203, 0.916881, 0.282297,
		0.272768, 0.358797, -0.892672,
		26.861275, 30.986946, 20.114481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029442, 31.245733, 21.307789>,  <26.670336, 30.735788, 20.739351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029442, 31.245733, 21.307789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.897186, 31.008476, 21.601418>,  <26.817833, 30.866123, 21.777594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.897186, 31.008476, 21.601418>,  <27.029442, 31.245733, 21.307789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897186, 31.008476, 21.601418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578694, 0.487009, 0.654168,
		-0.745513, 0.641097, 0.182222,
		-0.330641, -0.593141, 0.734071,
		26.797995, 30.830534, 21.821638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900730, 31.684591, 21.813335>,  <27.029442, 31.245733, 21.307789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900730, 31.684591, 21.813335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926495, 31.345381, 22.023746>,  <26.941954, 31.141855, 22.149994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926495, 31.345381, 22.023746>,  <26.900730, 31.684591, 21.813335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926495, 31.345381, 22.023746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482407, 0.487899, 0.727487,
		-0.873576, 0.206902, 0.440518,
		0.064410, -0.848024, 0.526028,
		26.945818, 31.090973, 22.181555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849474, 31.926025, 22.547071>,  <26.900730, 31.684591, 21.813335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849474, 31.926025, 22.547071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.005995, 31.558504, 22.567787>,  <27.099907, 31.337992, 22.580215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.005995, 31.558504, 22.567787>,  <26.849474, 31.926025, 22.547071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005995, 31.558504, 22.567787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603227, 0.298591, 0.739568,
		-0.694981, -0.258156, 0.671086,
		0.391304, -0.918803, 0.051789,
		27.123386, 31.282864, 22.583324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882364, 31.809095, 23.150173>,  <26.849474, 31.926025, 22.547071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882364, 31.809095, 23.150173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138115, 31.521790, 23.040417>,  <27.291565, 31.349405, 22.974562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138115, 31.521790, 23.040417>,  <26.882364, 31.809095, 23.150173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138115, 31.521790, 23.040417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589067, 0.228232, 0.775184,
		-0.494162, -0.657272, 0.569032,
		0.639378, -0.718265, -0.274393,
		27.329929, 31.306311, 22.958099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128450, 31.437195, 23.815842>,  <26.882364, 31.809095, 23.150173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128450, 31.437195, 23.815842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386757, 31.382315, 23.515398>,  <27.541740, 31.349386, 23.335133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386757, 31.382315, 23.515398>,  <27.128450, 31.437195, 23.815842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386757, 31.382315, 23.515398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761302, 0.190891, 0.619661,
		0.058362, -0.971976, 0.227722,
		0.645765, -0.137200, -0.751108,
		27.580486, 31.341154, 23.290066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722258, 31.027430, 24.137436>,  <27.128450, 31.437195, 23.815842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722258, 31.027430, 24.137436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911491, 31.155245, 23.809025>,  <28.025032, 31.231934, 23.611979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911491, 31.155245, 23.809025>,  <27.722258, 31.027430, 24.137436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911491, 31.155245, 23.809025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811175, 0.205656, 0.547449,
		0.343781, -0.924986, -0.161910,
		0.473085, 0.319540, -0.821027,
		28.053417, 31.251106, 23.562717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418009, 30.696306, 23.973850>,  <27.722258, 31.027430, 24.137436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418009, 30.696306, 23.973850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413582, 31.067196, 23.824116>,  <28.410925, 31.289730, 23.734274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413582, 31.067196, 23.824116>,  <28.418009, 30.696306, 23.973850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413582, 31.067196, 23.824116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741517, 0.258763, 0.619027,
		0.670843, -0.270727, -0.690418,
		-0.011068, 0.927226, -0.374338,
		28.410261, 31.345364, 23.711815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776825, 30.034893, 24.119015>,  <28.418009, 30.696306, 23.973850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776825, 30.034893, 24.119015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.659739, 29.831482, 24.442919>,  <28.589487, 29.709435, 24.637262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.659739, 29.831482, 24.442919>,  <28.776825, 30.034893, 24.119015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659739, 29.831482, 24.442919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771069, -0.375283, -0.514407,
		0.565481, -0.774958, -0.282260,
		-0.292716, -0.508529, 0.809762,
		28.571924, 29.678923, 24.685848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855291, 29.362602, 23.976732>,  <28.776825, 30.034893, 24.119015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855291, 29.362602, 23.976732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582176, 29.370567, 24.268871>,  <28.418308, 29.375347, 24.444155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582176, 29.370567, 24.268871>,  <28.855291, 29.362602, 23.976732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582176, 29.370567, 24.268871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673589, -0.404338, -0.618699,
		0.282987, -0.914393, 0.289489,
		-0.682785, 0.019913, 0.730347,
		28.377340, 29.376541, 24.487976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592419, 28.669363, 24.055670>,  <28.855291, 29.362602, 23.976732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592419, 28.669363, 24.055670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323275, 28.890680, 24.252089>,  <28.161789, 29.023470, 24.369940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323275, 28.890680, 24.252089>,  <28.592419, 28.669363, 24.055670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323275, 28.890680, 24.252089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736887, -0.442744, -0.510857,
		-0.065246, -0.705581, 0.705619,
		-0.672859, 0.553293, 0.491046,
		28.121416, 29.056669, 24.399403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188618, 28.229052, 24.423363>,  <28.592419, 28.669363, 24.055670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188618, 28.229052, 24.423363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.947100, 28.543829, 24.372532>,  <27.802189, 28.732697, 24.342033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.947100, 28.543829, 24.372532>,  <28.188618, 28.229052, 24.423363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947100, 28.543829, 24.372532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650384, -0.578510, -0.492266,
		-0.460902, -0.214579, 0.861119,
		-0.603796, 0.786944, -0.127077,
		27.765961, 28.779913, 24.334408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552633, 27.964895, 24.390787>,  <28.188618, 28.229052, 24.423363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552633, 27.964895, 24.390787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502571, 28.329300, 24.233616>,  <27.472534, 28.547943, 24.139313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502571, 28.329300, 24.233616>,  <27.552633, 27.964895, 24.390787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502571, 28.329300, 24.233616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697192, -0.362531, -0.618462,
		-0.705875, 0.196544, 0.680523,
		-0.125156, 0.911012, -0.392930,
		27.465025, 28.602604, 24.115736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830563, 28.192860, 24.395063>,  <27.552633, 27.964895, 24.390787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830563, 28.192860, 24.395063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.978249, 28.416235, 24.097923>,  <27.066860, 28.550261, 23.919640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.978249, 28.416235, 24.097923>,  <26.830563, 28.192860, 24.395063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978249, 28.416235, 24.097923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719473, -0.334198, -0.608826,
		-0.588251, 0.759250, 0.278389,
		0.369214, 0.558436, -0.742853,
		27.089012, 28.583765, 23.875067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233152, 28.384081, 24.107248>,  <26.830563, 28.192860, 24.395063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233152, 28.384081, 24.107248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502386, 28.474070, 23.825441>,  <26.663927, 28.528063, 23.656357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502386, 28.474070, 23.825441>,  <26.233152, 28.384081, 24.107248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502386, 28.474070, 23.825441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607701, -0.374666, -0.700232,
		-0.421492, 0.899451, -0.115466,
		0.673086, 0.224973, -0.704516,
		26.704311, 28.541561, 23.614086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789797, 28.636183, 23.729128>,  <26.233152, 28.384081, 24.107248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789797, 28.636183, 23.729128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.104250, 28.526934, 23.507355>,  <26.292923, 28.461384, 23.374290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.104250, 28.526934, 23.507355>,  <25.789797, 28.636183, 23.729128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104250, 28.526934, 23.507355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617731, -0.376298, -0.690513,
		-0.020038, 0.885327, -0.464537,
		0.786134, -0.273122, -0.554434,
		26.340090, 28.444998, 23.341024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588099, 28.757135, 23.035139>,  <25.789797, 28.636183, 23.729128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588099, 28.757135, 23.035139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878487, 28.483084, 23.011250>,  <26.052719, 28.318653, 22.996916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878487, 28.483084, 23.011250>,  <25.588099, 28.757135, 23.035139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878487, 28.483084, 23.011250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370319, -0.316258, -0.873410,
		0.579512, 0.656184, -0.483310,
		0.725969, -0.685130, -0.059722,
		26.096277, 28.277544, 22.993334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.408875, 33.569931, 28.308561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.359451, 33.178104, 28.245081>,  <40.329796, 32.943008, 28.206993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.359451, 33.178104, 28.245081>,  <40.408875, 33.569931, 28.308561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359451, 33.178104, 28.245081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954951, 0.160856, -0.249386,
		0.269818, 0.120740, -0.955311,
		-0.123557, -0.979565, -0.158703,
		40.322384, 32.884235, 28.197470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927238, 33.459911, 27.695585>,  <40.408875, 33.569931, 28.308561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927238, 33.459911, 27.695585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.939049, 33.102787, 27.875372>,  <39.946136, 32.888512, 27.983244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.939049, 33.102787, 27.875372>,  <39.927238, 33.459911, 27.695585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939049, 33.102787, 27.875372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948500, -0.166910, -0.269238,
		0.315398, -0.418367, -0.851759,
		0.029526, -0.892810, 0.449464,
		39.947906, 32.834946, 28.010212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532547, 32.967964, 27.295198>,  <39.927238, 33.459911, 27.695585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532547, 32.967964, 27.295198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545795, 32.766613, 27.640572>,  <39.553745, 32.645802, 27.847795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545795, 32.766613, 27.640572>,  <39.532547, 32.967964, 27.295198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545795, 32.766613, 27.640572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968962, -0.227930, -0.095716,
		0.244983, -0.833464, -0.495299,
		0.033117, -0.503374, 0.863434,
		39.555729, 32.615601, 27.899601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272232, 32.308311, 27.219862>,  <39.532547, 32.967964, 27.295198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272232, 32.308311, 27.219862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237526, 32.381344, 27.611605>,  <39.216702, 32.425163, 27.846649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237526, 32.381344, 27.611605>,  <39.272232, 32.308311, 27.219862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237526, 32.381344, 27.611605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952144, -0.304399, -0.027611,
		0.293074, -0.934883, 0.200251,
		-0.086770, 0.182575, 0.979356,
		39.211494, 32.436115, 27.905411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768757, 31.725588, 27.460997>,  <39.272232, 32.308311, 27.219862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768757, 31.725588, 27.460997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.774338, 31.990259, 27.760860>,  <38.777687, 32.149063, 27.940779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.774338, 31.990259, 27.760860>,  <38.768757, 31.725588, 27.460997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774338, 31.990259, 27.760860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929607, -0.267560, 0.253461,
		0.368288, -0.700423, 0.611368,
		0.013952, 0.661679, 0.749657,
		38.778522, 32.188763, 27.985758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603489, 31.408260, 28.124424>,  <38.768757, 31.725588, 27.460997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603489, 31.408260, 28.124424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531094, 31.793385, 28.204659>,  <38.487656, 32.024460, 28.252800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531094, 31.793385, 28.204659>,  <38.603489, 31.408260, 28.124424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531094, 31.793385, 28.204659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918052, -0.238544, 0.316667,
		0.352741, -0.126839, 0.927085,
		-0.180985, 0.962813, 0.200589,
		38.476799, 32.082230, 28.264835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260334, 31.446753, 28.744226>,  <38.603489, 31.408260, 28.124424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260334, 31.446753, 28.744226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.167175, 31.802496, 28.586847>,  <38.111279, 32.015942, 28.492420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.167175, 31.802496, 28.586847>,  <38.260334, 31.446753, 28.744226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167175, 31.802496, 28.586847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951472, -0.124701, 0.281338,
		0.201147, 0.439878, 0.875241,
		-0.232898, 0.889358, -0.393449,
		38.097305, 32.069302, 28.468813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716007, 31.808266, 29.231720>,  <38.260334, 31.446753, 28.744226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716007, 31.808266, 29.231720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677261, 31.984171, 28.874569>,  <37.654015, 32.089714, 28.660278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677261, 31.984171, 28.874569>,  <37.716007, 31.808266, 29.231720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677261, 31.984171, 28.874569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993924, -0.089845, 0.063580,
		-0.052261, 0.893609, 0.445793,
		-0.096868, 0.439762, -0.892875,
		37.648201, 32.116100, 28.606707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247101, 32.331631, 29.337482>,  <37.716007, 31.808266, 29.231720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247101, 32.331631, 29.337482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223827, 32.270866, 28.942810>,  <37.209862, 32.234409, 28.706007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223827, 32.270866, 28.942810>,  <37.247101, 32.331631, 29.337482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223827, 32.270866, 28.942810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989434, 0.140250, 0.036756,
		0.132798, 0.978393, -0.158467,
		-0.058186, -0.151911, -0.986680,
		37.206371, 32.225292, 28.646807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600426, 32.637486, 29.233040>,  <37.247101, 32.331631, 29.337482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600426, 32.637486, 29.233040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660732, 32.469284, 28.875170>,  <36.696915, 32.368362, 28.660448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660732, 32.469284, 28.875170>,  <36.600426, 32.637486, 29.233040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660732, 32.469284, 28.875170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972409, 0.099890, -0.210813,
		0.178018, 0.901775, -0.393842,
		0.150765, -0.420504, -0.894677,
		36.705963, 32.343132, 28.606768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358700, 33.033627, 28.709856>,  <36.600426, 32.637486, 29.233040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358700, 33.033627, 28.709856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339100, 32.662838, 28.561090>,  <36.327339, 32.440365, 28.471832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339100, 32.662838, 28.561090>,  <36.358700, 33.033627, 28.709856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339100, 32.662838, 28.561090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983703, 0.109282, -0.142775,
		0.172992, 0.358856, -0.917222,
		-0.049000, -0.926973, -0.371913,
		36.324398, 32.384747, 28.449516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930702, 33.011089, 28.139429>,  <36.358700, 33.033627, 28.709856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930702, 33.011089, 28.139429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937923, 32.625336, 28.244991>,  <35.942257, 32.393883, 28.308329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937923, 32.625336, 28.244991>,  <35.930702, 33.011089, 28.139429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937923, 32.625336, 28.244991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966600, -0.084328, -0.242018,
		0.255651, -0.250720, -0.933693,
		0.018057, -0.964380, 0.263904,
		35.943340, 32.336021, 28.324163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845982, 33.389473, 27.471796>,  <35.930702, 33.011089, 28.139429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845982, 33.389473, 27.471796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685638, 33.749622, 27.539486>,  <35.589432, 33.965714, 27.580099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685638, 33.749622, 27.539486>,  <35.845982, 33.389473, 27.471796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685638, 33.749622, 27.539486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904002, 0.358777, 0.232505,
		0.148628, 0.246181, -0.957760,
		-0.400861, 0.900374, 0.169224,
		35.565380, 34.019733, 27.590254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155296, 33.825218, 27.035492>,  <35.845982, 33.389473, 27.471796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155296, 33.825218, 27.035492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028709, 34.007141, 27.368479>,  <35.952759, 34.116295, 27.568272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028709, 34.007141, 27.368479>,  <36.155296, 33.825218, 27.035492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028709, 34.007141, 27.368479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937791, 0.282123, 0.202371,
		-0.142820, 0.844725, -0.515792,
		-0.316465, 0.454803, 0.832469,
		35.933769, 34.143581, 27.618219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573193, 34.432613, 27.092237>,  <36.155296, 33.825218, 27.035492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573193, 34.432613, 27.092237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401592, 34.423557, 27.453445>,  <36.298634, 34.418125, 27.670170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401592, 34.423557, 27.453445>,  <36.573193, 34.432613, 27.092237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401592, 34.423557, 27.453445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801917, 0.450619, 0.392264,
		-0.415799, 0.892429, -0.175162,
		-0.429000, -0.022638, 0.903021,
		36.272892, 34.416767, 27.724352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578526, 35.194237, 27.417356>,  <36.573193, 34.432613, 27.092237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578526, 35.194237, 27.417356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552620, 34.919224, 27.706659>,  <36.537075, 34.754215, 27.880241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552620, 34.919224, 27.706659>,  <36.578526, 35.194237, 27.417356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552620, 34.919224, 27.706659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606917, 0.548182, 0.575455,
		-0.792122, 0.476226, 0.381774,
		-0.064765, -0.687536, 0.723256,
		36.533192, 34.712963, 27.923635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345821, 35.616711, 28.088894>,  <36.578526, 35.194237, 27.417356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345821, 35.616711, 28.088894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518894, 35.267609, 28.179302>,  <36.622738, 35.058147, 28.233547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518894, 35.267609, 28.179302>,  <36.345821, 35.616711, 28.088894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518894, 35.267609, 28.179302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588553, 0.463356, 0.662500,
		-0.682927, -0.153629, 0.714149,
		0.432684, -0.872754, 0.226020,
		36.648701, 35.005783, 28.247108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271965, 35.704918, 28.844397>,  <36.345821, 35.616711, 28.088894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271965, 35.704918, 28.844397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525742, 35.406696, 28.762779>,  <36.678005, 35.227764, 28.713808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525742, 35.406696, 28.762779>,  <36.271965, 35.704918, 28.844397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525742, 35.406696, 28.762779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739459, 0.508515, 0.441150,
		-0.225142, -0.430766, 0.873929,
		0.634438, -0.745556, -0.204046,
		36.716072, 35.183029, 28.701565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568253, 35.479275, 29.494148>,  <36.271965, 35.704918, 28.844397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568253, 35.479275, 29.494148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817097, 35.378887, 29.197502>,  <36.966404, 35.318653, 29.019514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817097, 35.378887, 29.197502>,  <36.568253, 35.479275, 29.494148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817097, 35.378887, 29.197502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710925, 0.577878, 0.400804,
		0.327975, -0.776577, 0.537922,
		0.622108, -0.250968, -0.741618,
		37.003731, 35.303596, 28.975018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216789, 35.290970, 29.833118>,  <36.568253, 35.479275, 29.494148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216789, 35.290970, 29.833118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315468, 35.355827, 29.450945>,  <37.374676, 35.394741, 29.221642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315468, 35.355827, 29.450945>,  <37.216789, 35.290970, 29.833118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315468, 35.355827, 29.450945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858104, 0.421596, 0.293112,
		0.450333, -0.892169, -0.035130,
		0.246695, 0.162143, -0.955432,
		37.389477, 35.404469, 29.164314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858356, 35.031322, 29.811129>,  <37.216789, 35.290970, 29.833118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858356, 35.031322, 29.811129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812820, 35.267620, 29.491613>,  <37.785500, 35.409397, 29.299904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812820, 35.267620, 29.491613>,  <37.858356, 35.031322, 29.811129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812820, 35.267620, 29.491613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781182, 0.549987, 0.295413,
		0.613836, -0.590368, -0.524090,
		-0.113840, 0.590745, -0.798787,
		37.778667, 35.444843, 29.251978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556995, 35.170250, 29.447620>,  <37.858356, 35.031322, 29.811129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556995, 35.170250, 29.447620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344109, 35.488819, 29.332756>,  <38.216377, 35.679962, 29.263838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344109, 35.488819, 29.332756>,  <38.556995, 35.170250, 29.447620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344109, 35.488819, 29.332756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805892, 0.580509, 0.116392,
		0.259396, -0.169475, -0.950785,
		-0.532214, 0.796422, -0.287160,
		38.184444, 35.727745, 29.246609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053932, 35.601032, 29.213911>,  <38.556995, 35.170250, 29.447620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053932, 35.601032, 29.213911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766834, 35.879436, 29.222067>,  <38.594578, 36.046478, 29.226961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766834, 35.879436, 29.222067>,  <39.053932, 35.601032, 29.213911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766834, 35.879436, 29.222067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695843, 0.715881, 0.057595,
		0.025489, 0.055528, -0.998132,
		-0.717742, 0.696011, 0.020391,
		38.551510, 36.088242, 29.228184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986156, 35.969917, 28.604158>,  <39.053932, 35.601032, 29.213911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986156, 35.969917, 28.604158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.844852, 36.228226, 28.874916>,  <38.760071, 36.383213, 29.037371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.844852, 36.228226, 28.874916>,  <38.986156, 35.969917, 28.604158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844852, 36.228226, 28.874916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650412, 0.689599, -0.318461,
		-0.672439, 0.327762, -0.663625,
		-0.353256, 0.645775, 0.676893,
		38.738876, 36.421959, 29.077984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128220, 36.589966, 28.303804>,  <38.986156, 35.969917, 28.604158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128220, 36.589966, 28.303804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.046005, 36.701771, 28.678959>,  <38.996677, 36.768852, 28.904051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.046005, 36.701771, 28.678959>,  <39.128220, 36.589966, 28.303804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046005, 36.701771, 28.678959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643894, 0.760325, -0.085483,
		-0.736991, 0.586329, -0.336248,
		-0.205536, 0.279508, 0.937886,
		38.984344, 36.785622, 28.960325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024189, 37.304794, 28.277727>,  <39.128220, 36.589966, 28.303804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024189, 37.304794, 28.277727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127808, 37.221634, 28.655016>,  <39.189980, 37.171738, 28.881390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127808, 37.221634, 28.655016>,  <39.024189, 37.304794, 28.277727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127808, 37.221634, 28.655016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525914, 0.849460, 0.042802,
		-0.810130, 0.484967, 0.329388,
		0.259045, -0.207905, 0.943224,
		39.205521, 37.159264, 28.937983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058189, 37.934525, 28.025534>,  <39.024189, 37.304794, 28.277727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058189, 37.934525, 28.025534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079487, 38.053150, 27.644123>,  <39.092266, 38.124325, 27.415276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079487, 38.053150, 27.644123>,  <39.058189, 37.934525, 28.025534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079487, 38.053150, 27.644123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190300, 0.940395, 0.281855,
		0.980281, 0.166451, 0.106503,
		0.053240, 0.296565, -0.953528,
		39.095459, 38.142120, 27.358065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229683, 37.507526, 27.442614>,  <39.058189, 37.934525, 28.025534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229683, 37.507526, 27.442614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477734, 37.363789, 27.163670>,  <39.626564, 37.277546, 26.996304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477734, 37.363789, 27.163670>,  <39.229683, 37.507526, 27.442614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477734, 37.363789, 27.163670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725675, -0.600482, -0.335883,
		-0.298053, 0.714348, -0.633144,
		0.620129, -0.359346, -0.697360,
		39.663773, 37.255985, 26.954462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090954, 37.843311, 26.790236>,  <39.229683, 37.507526, 27.442614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090954, 37.843311, 26.790236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.204086, 37.461163, 26.824331>,  <39.271965, 37.231873, 26.844790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.204086, 37.461163, 26.824331>,  <39.090954, 37.843311, 26.790236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204086, 37.461163, 26.824331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871192, -0.293056, -0.393881,
		0.401283, 0.037143, -0.915201,
		0.282835, -0.955374, 0.085239,
		39.288937, 37.174549, 26.849903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029213, 37.514851, 26.157188>,  <39.090954, 37.843311, 26.790236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029213, 37.514851, 26.157188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.993370, 37.238235, 26.443892>,  <38.971863, 37.072266, 26.615913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.993370, 37.238235, 26.443892>,  <39.029213, 37.514851, 26.157188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993370, 37.238235, 26.443892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846868, -0.325862, -0.420272,
		0.524199, -0.644662, -0.556441,
		-0.089611, -0.691538, 0.716760,
		38.966488, 37.030773, 26.658920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920677, 36.746361, 25.824436>,  <39.029213, 37.514851, 26.157188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920677, 36.746361, 25.824436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.775726, 36.733681, 26.197033>,  <38.688755, 36.726074, 26.420591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.775726, 36.733681, 26.197033>,  <38.920677, 36.746361, 25.824436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775726, 36.733681, 26.197033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820296, -0.463639, -0.334893,
		0.442491, -0.885457, 0.142010,
		-0.362374, -0.031697, 0.931493,
		38.667015, 36.724171, 26.476480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467999, 36.126450, 25.830563>,  <38.920677, 36.746361, 25.824436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467999, 36.126450, 25.830563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.352211, 36.318642, 26.161705>,  <38.282738, 36.433956, 26.360390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.352211, 36.318642, 26.161705>,  <38.467999, 36.126450, 25.830563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352211, 36.318642, 26.161705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951125, -0.241566, -0.192374,
		0.107551, -0.843081, 0.526922,
		-0.289473, 0.480478, 0.827856,
		38.265369, 36.462784, 26.410061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998558, 35.649586, 26.181643>,  <38.467999, 36.126450, 25.830563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998558, 35.649586, 26.181643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924911, 36.030651, 26.278419>,  <37.880726, 36.259289, 26.336485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924911, 36.030651, 26.278419>,  <37.998558, 35.649586, 26.181643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924911, 36.030651, 26.278419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953288, -0.113103, -0.280089,
		-0.239466, -0.282206, 0.928986,
		-0.184114, 0.952663, 0.241940,
		37.869678, 36.316448, 26.351002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370483, 35.617962, 26.314989>,  <37.998558, 35.649586, 26.181643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370483, 35.617962, 26.314989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414032, 36.015484, 26.306099>,  <37.440163, 36.253998, 26.300766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414032, 36.015484, 26.306099>,  <37.370483, 35.617962, 26.314989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414032, 36.015484, 26.306099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962360, 0.099773, -0.252801,
		-0.249018, 0.048910, 0.967263,
		0.108871, 0.993807, -0.022224,
		37.446693, 36.313625, 26.299431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871208, 35.839020, 26.804258>,  <37.370483, 35.617962, 26.314989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871208, 35.839020, 26.804258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.942211, 36.129299, 26.538368>,  <36.984814, 36.303467, 26.378834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.942211, 36.129299, 26.538368>,  <36.871208, 35.839020, 26.804258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942211, 36.129299, 26.538368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983906, 0.116785, -0.135242,
		-0.020515, 0.678032, 0.734746,
		0.177505, 0.725696, -0.664724,
		36.995464, 36.347008, 26.338951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404514, 36.360584, 26.946430>,  <36.871208, 35.839020, 26.804258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404514, 36.360584, 26.946430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517300, 36.419998, 26.567287>,  <36.584972, 36.455647, 26.339802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517300, 36.419998, 26.567287>,  <36.404514, 36.360584, 26.946430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517300, 36.419998, 26.567287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957955, -0.011074, -0.286704,
		-0.053081, 0.988846, 0.139165,
		0.281965, 0.148533, -0.947857,
		36.601891, 36.464558, 26.282930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906147, 36.776234, 26.671314>,  <36.404514, 36.360584, 26.946430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906147, 36.776234, 26.671314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092190, 36.604351, 26.361727>,  <36.203815, 36.501221, 26.175974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092190, 36.604351, 26.361727>,  <35.906147, 36.776234, 26.671314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092190, 36.604351, 26.361727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862502, -0.023031, -0.505529,
		0.199402, 0.902676, -0.381333,
		0.465111, -0.429704, -0.773968,
		36.231724, 36.475441, 26.129536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660057, 37.134766, 26.049603>,  <35.906147, 36.776234, 26.671314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660057, 37.134766, 26.049603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788200, 36.779831, 25.916931>,  <35.865086, 36.566872, 25.837328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788200, 36.779831, 25.916931>,  <35.660057, 37.134766, 26.049603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788200, 36.779831, 25.916931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832208, -0.096354, -0.546028,
		0.452551, 0.450947, -0.769314,
		0.320356, -0.887335, -0.331676,
		35.884308, 36.513630, 25.817429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392494, 37.052834, 25.393667>,  <35.660057, 37.134766, 26.049603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392494, 37.052834, 25.393667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530743, 36.680382, 25.440224>,  <35.613693, 36.456909, 25.468157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530743, 36.680382, 25.440224>,  <35.392494, 37.052834, 25.393667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530743, 36.680382, 25.440224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614953, -0.318437, -0.721409,
		0.708787, 0.177760, -0.682659,
		0.345621, -0.931128, 0.116390,
		35.634430, 36.401043, 25.475142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387188, 36.835705, 24.794067>,  <35.392494, 37.052834, 25.393667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387188, 36.835705, 24.794067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408714, 36.487064, 24.988968>,  <35.421631, 36.277882, 25.105909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408714, 36.487064, 24.988968>,  <35.387188, 36.835705, 24.794067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408714, 36.487064, 24.988968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628539, -0.408733, -0.661722,
		0.775914, -0.270645, -0.569832,
		0.053818, -0.871601, 0.487252,
		35.424858, 36.225582, 25.135143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355011, 36.278820, 24.230551>,  <35.387188, 36.835705, 24.794067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355011, 36.278820, 24.230551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259071, 36.108299, 24.579432>,  <35.201508, 36.005985, 24.788761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259071, 36.108299, 24.579432>,  <35.355011, 36.278820, 24.230551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259071, 36.108299, 24.579432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733937, -0.508458, -0.450342,
		0.635462, -0.748154, -0.190930,
		-0.239845, -0.426305, 0.872203,
		35.187119, 35.980408, 24.841093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318783, 35.581772, 24.151129>,  <35.355011, 36.278820, 24.230551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318783, 35.581772, 24.151129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097652, 35.642483, 24.478872>,  <34.964973, 35.678909, 24.675518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097652, 35.642483, 24.478872>,  <35.318783, 35.581772, 24.151129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097652, 35.642483, 24.478872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746797, -0.526476, -0.406346,
		0.369698, -0.836533, 0.404397,
		-0.552826, 0.151777, 0.819357,
		34.931805, 35.688015, 24.724680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109463, 34.865540, 24.299383>,  <35.318783, 35.581772, 24.151129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109463, 34.865540, 24.299383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877819, 35.124702, 24.497313>,  <34.738831, 35.280201, 24.616070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877819, 35.124702, 24.497313>,  <35.109463, 34.865540, 24.299383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877819, 35.124702, 24.497313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814138, -0.491274, -0.309561,
		0.042529, -0.582127, 0.811985,
		-0.579111, 0.647902, 0.494825,
		34.704086, 35.319073, 24.645760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595516, 34.459103, 24.590240>,  <35.109463, 34.865540, 24.299383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595516, 34.459103, 24.590240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447529, 34.830391, 24.574579>,  <34.358738, 35.053165, 24.565184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447529, 34.830391, 24.574579>,  <34.595516, 34.459103, 24.590240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447529, 34.830391, 24.574579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919734, -0.371886, -0.125662,
		-0.131201, -0.010483, 0.991300,
		-0.369968, 0.928220, -0.039151,
		34.336540, 35.108856, 24.562834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053600, 34.408333, 24.957443>,  <34.595516, 34.459103, 24.590240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053600, 34.408333, 24.957443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006027, 34.746056, 24.748447>,  <33.977482, 34.948689, 24.623049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006027, 34.746056, 24.748447>,  <34.053600, 34.408333, 24.957443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006027, 34.746056, 24.748447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962348, -0.227562, -0.148667,
		-0.244420, 0.485137, 0.839584,
		-0.118933, 0.844309, -0.522492,
		33.970348, 34.999348, 24.591700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360378, 34.579762, 25.045925>,  <34.053600, 34.408333, 24.957443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360378, 34.579762, 25.045925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475986, 34.756565, 24.706255>,  <33.545353, 34.862648, 24.502453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475986, 34.756565, 24.706255>,  <33.360378, 34.579762, 25.045925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475986, 34.756565, 24.706255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788996, -0.392384, -0.472780,
		-0.542174, 0.806638, 0.235334,
		0.289021, 0.442007, -0.849174,
		33.562695, 34.889168, 24.451502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743134, 34.888554, 24.806639>,  <33.360378, 34.579762, 25.045925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743134, 34.888554, 24.806639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983795, 34.851631, 24.489277>,  <33.128193, 34.829479, 24.298861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983795, 34.851631, 24.489277>,  <32.743134, 34.888554, 24.806639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983795, 34.851631, 24.489277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790711, -0.209431, -0.575252,
		-0.113066, 0.973457, -0.198992,
		0.601658, -0.092304, -0.793403,
		33.164291, 34.823940, 24.251257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298862, 35.138885, 24.243624>,  <32.743134, 34.888554, 24.806639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298862, 35.138885, 24.243624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582722, 34.917263, 24.069534>,  <32.753036, 34.784290, 23.965080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582722, 34.917263, 24.069534>,  <32.298862, 35.138885, 24.243624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582722, 34.917263, 24.069534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629480, -0.221121, -0.744890,
		0.316476, 0.802573, -0.505687,
		0.709646, -0.554060, -0.435224,
		32.795616, 34.751045, 23.938967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241997, 35.288006, 23.454163>,  <32.298862, 35.138885, 24.243624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241997, 35.288006, 23.454163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428711, 34.936916, 23.497450>,  <32.540741, 34.726261, 23.523422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428711, 34.936916, 23.497450>,  <32.241997, 35.288006, 23.454163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428711, 34.936916, 23.497450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662487, -0.428106, -0.614684,
		0.585851, 0.215234, -0.781315,
		0.466787, -0.877724, 0.108217,
		32.568748, 34.673599, 23.529915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455463, 34.954826, 22.767614>,  <32.241997, 35.288006, 23.454163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455463, 34.954826, 22.767614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394096, 34.655369, 23.025602>,  <32.357277, 34.475693, 23.180395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394096, 34.655369, 23.025602>,  <32.455463, 34.954826, 22.767614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394096, 34.655369, 23.025602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639132, -0.422616, -0.642578,
		0.753640, -0.510805, -0.413648,
		-0.153418, -0.748648, 0.644972,
		32.348072, 34.430775, 23.219093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082741, 34.564484, 22.324144>,  <32.455463, 34.954826, 22.767614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082741, 34.564484, 22.324144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069168, 34.325562, 22.644663>,  <32.061024, 34.182209, 22.836973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069168, 34.325562, 22.644663>,  <32.082741, 34.564484, 22.324144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069168, 34.325562, 22.644663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579747, -0.641316, -0.502600,
		0.814090, -0.481603, -0.324526,
		-0.033930, -0.597305, 0.801297,
		32.058990, 34.146370, 22.885052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364117, 33.946026, 22.131548>,  <32.082741, 34.564484, 22.324144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364117, 33.946026, 22.131548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102036, 33.896278, 22.429607>,  <31.944788, 33.866428, 22.608442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102036, 33.896278, 22.429607>,  <32.364117, 33.946026, 22.131548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102036, 33.896278, 22.429607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559123, -0.583475, -0.589015,
		0.508030, -0.802552, 0.312755,
		-0.655200, -0.124369, 0.745148,
		31.905476, 33.858967, 22.653152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191662, 33.327679, 21.973503>,  <32.364117, 33.946026, 22.131548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191662, 33.327679, 21.973503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926138, 33.425194, 22.256325>,  <31.766823, 33.483704, 22.426018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926138, 33.425194, 22.256325>,  <32.191662, 33.327679, 21.973503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926138, 33.425194, 22.256325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703339, -0.524941, -0.479323,
		0.254307, -0.815477, 0.519928,
		-0.663809, 0.243791, 0.707053,
		31.726995, 33.498333, 22.468441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896042, 32.671261, 22.077896>,  <32.191662, 33.327679, 21.973503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896042, 32.671261, 22.077896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.626688, 32.942703, 22.195230>,  <31.465076, 33.105568, 22.265631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.626688, 32.942703, 22.195230>,  <31.896042, 32.671261, 22.077896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626688, 32.942703, 22.195230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725498, -0.530286, -0.438689,
		-0.142146, -0.508221, 0.849415,
		-0.673384, 0.678607, 0.293336,
		31.424673, 33.146286, 22.283232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255722, 32.029163, 22.264772>,  <31.896042, 32.671261, 22.077896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255722, 32.029163, 22.264772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.408264, 31.757349, 22.014076>,  <32.499790, 31.594261, 21.863659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.408264, 31.757349, 22.014076>,  <32.255722, 32.029163, 22.264772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408264, 31.757349, 22.014076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868257, 0.496023, -0.009498,
		0.317332, -0.540550, 0.779170,
		0.381352, -0.679534, -0.626741,
		32.522671, 31.553490, 21.826054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879230, 31.815142, 22.459864>,  <32.255722, 32.029163, 22.264772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879230, 31.815142, 22.459864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899822, 31.695652, 22.078684>,  <32.912178, 31.623959, 21.849976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899822, 31.695652, 22.078684>,  <32.879230, 31.815142, 22.459864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899822, 31.695652, 22.078684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956433, 0.289331, -0.039030,
		0.287377, -0.909424, 0.300603,
		0.051478, -0.298723, -0.952950,
		32.915264, 31.606035, 21.792799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461082, 31.377531, 22.351526>,  <32.879230, 31.815142, 22.459864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461082, 31.377531, 22.351526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381794, 31.521099, 21.986696>,  <33.334221, 31.607241, 21.767797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381794, 31.521099, 21.986696>,  <33.461082, 31.377531, 22.351526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381794, 31.521099, 21.986696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943953, 0.320480, -0.079035,
		0.263935, -0.876624, -0.402329,
		-0.198223, 0.358919, -0.912077,
		33.322327, 31.628775, 21.713074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009605, 31.226593, 21.837830>,  <33.461082, 31.377531, 22.351526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009605, 31.226593, 21.837830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822212, 31.545292, 21.685137>,  <33.709778, 31.736511, 21.593521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822212, 31.545292, 21.685137>,  <34.009605, 31.226593, 21.837830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822212, 31.545292, 21.685137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873728, 0.481834, -0.066598,
		0.130869, -0.364728, -0.921871,
		-0.468479, 0.796749, -0.381730,
		33.681667, 31.784317, 21.570618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332417, 31.366747, 21.259092>,  <34.009605, 31.226593, 21.837830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332417, 31.366747, 21.259092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150417, 31.712032, 21.346586>,  <34.041218, 31.919203, 21.399082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150417, 31.712032, 21.346586>,  <34.332417, 31.366747, 21.259092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150417, 31.712032, 21.346586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881044, 0.472065, -0.030269,
		-0.129386, 0.178943, -0.975315,
		-0.454996, 0.863211, 0.218735,
		34.013920, 31.970995, 21.412207>
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
