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
	<23.982723, 34.726868, 34.982323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210703, 35.046879, 35.057270>,  <24.347490, 35.238888, 35.102238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210703, 35.046879, 35.057270>,  <23.982723, 34.726868, 34.982323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.210703, 35.046879, 35.057270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476276, -0.135847, -0.868739,
		-0.669565, 0.584377, -0.458462,
		0.569951, 0.800031, 0.187367,
		24.381689, 35.286888, 35.113480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529745, 34.660316, 35.418449>,  <23.982723, 34.726868, 34.982323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529745, 34.660316, 35.418449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863085, 34.447376, 35.477966>,  <25.063089, 34.319614, 35.513676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863085, 34.447376, 35.477966>,  <24.529745, 34.660316, 35.418449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863085, 34.447376, 35.477966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013540, 0.288758, 0.957306,
		-0.552582, -0.795755, 0.247844,
		0.833348, -0.532346, 0.148788,
		25.113089, 34.287674, 35.522602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515318, 34.129749, 35.960537>,  <24.529745, 34.660316, 35.418449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515318, 34.129749, 35.960537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896441, 34.245163, 35.922775>,  <25.125114, 34.314411, 35.900116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896441, 34.245163, 35.922775>,  <24.515318, 34.129749, 35.960537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896441, 34.245163, 35.922775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006735, 0.290811, 0.956757,
		0.303524, -0.912234, 0.275141,
		0.952800, 0.288546, -0.094412,
		25.182281, 34.331722, 35.894455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781147, 33.928326, 36.544216>,  <24.515318, 34.129749, 35.960537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781147, 33.928326, 36.544216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018341, 34.218658, 36.404766>,  <25.160658, 34.392857, 36.321098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018341, 34.218658, 36.404766>,  <24.781147, 33.928326, 36.544216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018341, 34.218658, 36.404766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214866, 0.274621, 0.937238,
		0.776014, -0.630678, 0.006890,
		0.592987, 0.725830, -0.348622,
		25.196238, 34.436409, 36.300179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301510, 33.858704, 37.022301>,  <24.781147, 33.928326, 36.544216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301510, 33.858704, 37.022301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339928, 34.213463, 36.841553>,  <25.362978, 34.426319, 36.733105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339928, 34.213463, 36.841553>,  <25.301510, 33.858704, 37.022301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339928, 34.213463, 36.841553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204345, 0.426732, 0.880990,
		0.974176, -0.176952, -0.140248,
		0.096045, 0.886898, -0.451871,
		25.368742, 34.479530, 36.705990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913950, 34.164227, 37.138588>,  <25.301510, 33.858704, 37.022301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913950, 34.164227, 37.138588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643959, 34.455200, 37.089199>,  <25.481964, 34.629784, 37.059566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643959, 34.455200, 37.089199>,  <25.913950, 34.164227, 37.138588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643959, 34.455200, 37.089199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158364, 0.306274, 0.938678,
		0.720642, 0.614034, -0.321927,
		-0.674978, 0.727433, -0.123473,
		25.441465, 34.673431, 37.052158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054407, 34.603619, 37.649052>,  <25.913950, 34.164227, 37.138588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054407, 34.603619, 37.649052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689583, 34.746571, 37.568626>,  <25.470688, 34.832344, 37.520370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689583, 34.746571, 37.568626>,  <26.054407, 34.603619, 37.649052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689583, 34.746571, 37.568626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044180, 0.401820, 0.914652,
		0.407672, 0.843100, -0.350694,
		-0.912059, 0.357384, -0.201059,
		25.415966, 34.853786, 37.508308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035488, 35.320957, 37.921902>,  <26.054407, 34.603619, 37.649052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035488, 35.320957, 37.921902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676540, 35.145573, 37.901978>,  <25.461172, 35.040340, 37.890022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676540, 35.145573, 37.901978>,  <26.035488, 35.320957, 37.921902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676540, 35.145573, 37.901978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072731, 0.035632, 0.996715,
		-0.435246, 0.898043, -0.063865,
		-0.897369, -0.438461, -0.049807,
		25.407330, 35.014034, 37.887035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533897, 35.773659, 38.150696>,  <26.035488, 35.320957, 37.921902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533897, 35.773659, 38.150696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348930, 35.423447, 38.206726>,  <25.237949, 35.213322, 38.240345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348930, 35.423447, 38.206726>,  <25.533897, 35.773659, 38.150696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348930, 35.423447, 38.206726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170893, 0.243025, 0.954848,
		-0.870038, 0.417600, -0.262001,
		-0.462417, -0.875528, 0.140076,
		25.210205, 35.160789, 38.248749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839912, 35.945538, 38.553684>,  <25.533897, 35.773659, 38.150696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839912, 35.945538, 38.553684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931494, 35.558647, 38.597595>,  <24.986443, 35.326511, 38.623943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931494, 35.558647, 38.597595>,  <24.839912, 35.945538, 38.553684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931494, 35.558647, 38.597595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174288, 0.070224, 0.982188,
		-0.957708, -0.244008, -0.152498,
		0.228952, -0.967227, 0.109781,
		25.000179, 35.268478, 38.630531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.252687, 35.740448, 38.918694>,  <24.839912, 35.945538, 38.553684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.252687, 35.740448, 38.918694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542858, 35.471214, 38.976261>,  <24.716961, 35.309673, 39.010799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542858, 35.471214, 38.976261>,  <24.252687, 35.740448, 38.918694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542858, 35.471214, 38.976261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080002, 0.125218, 0.988898,
		-0.683634, -0.728887, 0.036989,
		0.725427, -0.673086, 0.143916,
		24.760487, 35.269287, 39.019436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.122690, 35.104908, 39.475128>,  <24.252687, 35.740448, 38.918694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.122690, 35.104908, 39.475128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504887, 35.211586, 39.424671>,  <24.734203, 35.275593, 39.394398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504887, 35.211586, 39.424671>,  <24.122690, 35.104908, 39.475128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.504887, 35.211586, 39.424671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147937, -0.063196, 0.986976,
		0.255253, -0.961706, -0.099838,
		0.955490, 0.266698, -0.126141,
		24.791534, 35.291595, 39.386829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.952690, 35.423035, 40.158485>,  <24.122690, 35.104908, 39.475128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.952690, 35.423035, 40.158485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294573, 35.307472, 40.331001>,  <24.499702, 35.238136, 40.434509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294573, 35.307472, 40.331001>,  <23.952690, 35.423035, 40.158485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294573, 35.307472, 40.331001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371619, -0.239568, -0.896943,
		0.362456, 0.926898, -0.097397,
		0.854708, -0.288907, 0.431285,
		24.550985, 35.220798, 40.460388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655052, 35.801632, 40.039787>,  <23.952690, 35.423035, 40.158485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655052, 35.801632, 40.039787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724087, 35.413830, 40.109375>,  <24.765507, 35.181149, 40.151127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724087, 35.413830, 40.109375>,  <24.655052, 35.801632, 40.039787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724087, 35.413830, 40.109375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388422, -0.095317, -0.916538,
		0.905175, 0.225755, 0.360128,
		0.172587, -0.969510, 0.173967,
		24.775864, 35.122978, 40.161564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327534, 35.789238, 39.799503>,  <24.655052, 35.801632, 40.039787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327534, 35.789238, 39.799503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169218, 35.422157, 39.813206>,  <25.074228, 35.201908, 39.821426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169218, 35.422157, 39.813206>,  <25.327534, 35.789238, 39.799503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169218, 35.422157, 39.813206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360855, -0.189715, -0.913122,
		0.844472, -0.349044, 0.406245,
		-0.395790, -0.917702, 0.034254,
		25.050482, 35.146847, 39.823483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781731, 35.260670, 39.562202>,  <25.327534, 35.789238, 39.799503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781731, 35.260670, 39.562202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407209, 35.133244, 39.503067>,  <25.182497, 35.056789, 39.467587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407209, 35.133244, 39.503067>,  <25.781731, 35.260670, 39.562202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407209, 35.133244, 39.503067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224776, -0.220139, -0.949218,
		0.269842, -0.921984, 0.277722,
		-0.936301, -0.318564, -0.147837,
		25.126318, 35.037674, 39.458717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770721, 34.544964, 39.240562>,  <25.781731, 35.260670, 39.562202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770721, 34.544964, 39.240562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437536, 34.752254, 39.162991>,  <25.237625, 34.876629, 39.116447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437536, 34.752254, 39.162991>,  <25.770721, 34.544964, 39.240562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437536, 34.752254, 39.162991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045156, -0.285653, -0.957269,
		-0.551482, -0.806128, 0.214537,
		-0.832964, 0.518229, -0.193934,
		25.187647, 34.907722, 39.104809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304640, 34.027271, 38.861908>,  <25.770721, 34.544964, 39.240562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304640, 34.027271, 38.861908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184732, 34.404526, 38.804443>,  <25.112789, 34.630878, 38.769962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184732, 34.404526, 38.804443>,  <25.304640, 34.027271, 38.861908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184732, 34.404526, 38.804443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002113, -0.149932, -0.988694,
		-0.954010, -0.296681, 0.042952,
		-0.299767, 0.943133, -0.143664,
		25.094803, 34.687466, 38.761345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708447, 34.001984, 38.516827>,  <25.304640, 34.027271, 38.861908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708447, 34.001984, 38.516827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857803, 34.360538, 38.421268>,  <24.947416, 34.575672, 38.363934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857803, 34.360538, 38.421268>,  <24.708447, 34.001984, 38.516827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857803, 34.360538, 38.421268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210659, -0.168866, -0.962864,
		-0.903439, 0.409851, 0.125778,
		0.373391, 0.896385, -0.238899,
		24.969820, 34.629456, 38.349598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278973, 34.256878, 37.918259>,  <24.708447, 34.001984, 38.516827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278973, 34.256878, 37.918259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.624189, 34.457771, 37.896652>,  <24.831320, 34.578308, 37.883690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.624189, 34.457771, 37.896652>,  <24.278973, 34.256878, 37.918259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.624189, 34.457771, 37.896652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030985, -0.054091, -0.998055,
		-0.504182, 0.863037, -0.031121,
		0.863041, 0.502237, -0.054013,
		24.883102, 34.608444, 37.880447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.132090, 34.591141, 37.244335>,  <24.278973, 34.256878, 37.918259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.132090, 34.591141, 37.244335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529266, 34.627293, 37.275059>,  <24.767572, 34.648983, 37.293495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529266, 34.627293, 37.275059>,  <24.132090, 34.591141, 37.244335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529266, 34.627293, 37.275059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091911, -0.176936, -0.979921,
		-0.074976, 0.980064, -0.183994,
		0.992940, 0.090381, 0.076813,
		24.827148, 34.654408, 37.298103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.257383, 35.202595, 36.957882>,  <24.132090, 34.591141, 37.244335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.257383, 35.202595, 36.957882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542503, 34.924332, 36.922150>,  <24.713575, 34.757374, 36.900711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542503, 34.924332, 36.922150>,  <24.257383, 35.202595, 36.957882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542503, 34.924332, 36.922150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107575, 0.017415, -0.994045,
		0.693066, 0.718166, -0.062421,
		0.712802, -0.695653, -0.089326,
		24.756344, 34.715637, 36.895351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845100, 35.499462, 37.279995>,  <24.257383, 35.202595, 36.957882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845100, 35.499462, 37.279995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222654, 35.373077, 37.318470>,  <25.449186, 35.297245, 37.341553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222654, 35.373077, 37.318470>,  <24.845100, 35.499462, 37.279995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222654, 35.373077, 37.318470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049201, -0.153460, -0.986929,
		0.326596, 0.936277, -0.129303,
		0.943882, -0.315965, 0.096185,
		25.505819, 35.278286, 37.347324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222507, 35.862793, 36.811581>,  <24.845100, 35.499462, 37.279995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222507, 35.862793, 36.811581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366016, 35.494820, 36.874836>,  <25.452122, 35.274036, 36.912788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366016, 35.494820, 36.874836>,  <25.222507, 35.862793, 36.811581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366016, 35.494820, 36.874836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121766, -0.121842, -0.985052,
		0.925449, 0.372665, 0.068303,
		0.358772, -0.919932, 0.158137,
		25.473648, 35.218842, 36.922276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656401, 35.670177, 36.263054>,  <25.222507, 35.862793, 36.811581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656401, 35.670177, 36.263054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587076, 35.294380, 36.381248>,  <25.545483, 35.068901, 36.452164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587076, 35.294380, 36.381248>,  <25.656401, 35.670177, 36.263054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587076, 35.294380, 36.381248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036783, -0.293644, -0.955207,
		0.984180, -0.176416, 0.016334,
		-0.173310, -0.939495, 0.295488,
		25.535084, 35.012531, 36.469894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144909, 35.261738, 35.973812>,  <25.656401, 35.670177, 36.263054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144909, 35.261738, 35.973812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842268, 35.013325, 36.055664>,  <25.660683, 34.864277, 36.104774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842268, 35.013325, 36.055664>,  <26.144909, 35.261738, 35.973812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842268, 35.013325, 36.055664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111201, -0.430596, -0.895668,
		0.644350, -0.654910, 0.394849,
		-0.756603, -0.621032, 0.204628,
		25.615288, 34.827015, 36.117054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445419, 34.687035, 35.777191>,  <26.144909, 35.261738, 35.973812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445419, 34.687035, 35.777191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054403, 34.604130, 35.792450>,  <25.819794, 34.554386, 35.801605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054403, 34.604130, 35.792450>,  <26.445419, 34.687035, 35.777191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054403, 34.604130, 35.792450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084485, -0.551229, -0.830065,
		0.193072, -0.808200, 0.556360,
		-0.977541, -0.207266, 0.038147,
		25.761141, 34.541950, 35.803894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230701, 34.838921, 36.566795>,  <26.445419, 34.687035, 35.777191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230701, 34.838921, 36.566795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542318, 34.820389, 36.816898>,  <26.729288, 34.809269, 36.966961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542318, 34.820389, 36.816898>,  <26.230701, 34.838921, 36.566795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542318, 34.820389, 36.816898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600663, 0.341016, -0.723127,
		-0.179721, 0.938915, 0.293494,
		0.779041, -0.046330, 0.625259,
		26.776031, 34.806488, 37.004475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627577, 35.459335, 36.540337>,  <26.230701, 34.838921, 36.566795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627577, 35.459335, 36.540337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873466, 35.166302, 36.657253>,  <27.021000, 34.990482, 36.727402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873466, 35.166302, 36.657253>,  <26.627577, 35.459335, 36.540337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873466, 35.166302, 36.657253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686593, 0.314625, -0.655440,
		0.388203, 0.603599, 0.696395,
		0.614726, -0.732584, 0.292288,
		27.057884, 34.946526, 36.744938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374596, 35.695694, 36.812107>,  <26.627577, 35.459335, 36.540337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374596, 35.695694, 36.812107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399565, 35.361839, 36.593208>,  <27.414545, 35.161526, 36.461868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399565, 35.361839, 36.593208>,  <27.374596, 35.695694, 36.812107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399565, 35.361839, 36.593208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754472, 0.398410, -0.521576,
		0.653357, -0.380328, 0.654580,
		0.062421, -0.834638, -0.547251,
		27.418291, 35.111446, 36.429031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009319, 35.629642, 36.762310>,  <27.374596, 35.695694, 36.812107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009319, 35.629642, 36.762310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837549, 35.472485, 36.437046>,  <27.734488, 35.378189, 36.241890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837549, 35.472485, 36.437046>,  <28.009319, 35.629642, 36.762310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837549, 35.472485, 36.437046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722614, 0.390582, -0.570328,
		0.541685, -0.832513, 0.116187,
		-0.429425, -0.392896, -0.813158,
		27.708721, 35.354614, 36.193100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376760, 36.086605, 36.274757>,  <28.009319, 35.629642, 36.762310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376760, 36.086605, 36.274757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638552, 36.289982, 36.050919>,  <28.795626, 36.412006, 35.916615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638552, 36.289982, 36.050919>,  <28.376760, 36.086605, 36.274757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638552, 36.289982, 36.050919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227958, 0.838380, 0.495130,
		0.720897, -0.196488, 0.664605,
		0.654478, 0.508440, -0.559595,
		28.834894, 36.442513, 35.883041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823929, 36.579098, 36.683182>,  <28.376760, 36.086605, 36.274757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823929, 36.579098, 36.683182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865221, 36.731483, 36.315659>,  <28.889997, 36.822914, 36.095142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865221, 36.731483, 36.315659>,  <28.823929, 36.579098, 36.683182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865221, 36.731483, 36.315659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122178, 0.921607, 0.368393,
		0.987125, 0.074229, 0.141684,
		0.103232, 0.380960, -0.918810,
		28.896191, 36.845772, 36.040016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424446, 36.965252, 36.759266>,  <28.823929, 36.579098, 36.683182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424446, 36.965252, 36.759266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205221, 37.111431, 36.458313>,  <29.073687, 37.199139, 36.277740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205221, 37.111431, 36.458313>,  <29.424446, 36.965252, 36.759266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205221, 37.111431, 36.458313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011909, 0.902821, 0.429852,
		0.836354, 0.226625, -0.499153,
		-0.548061, 0.365452, -0.752379,
		29.040802, 37.221066, 36.232601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885061, 37.339764, 36.925243>,  <29.424446, 36.965252, 36.759266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885061, 37.339764, 36.925243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135687, 37.320244, 36.614105>,  <29.286062, 37.308533, 36.427422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135687, 37.320244, 36.614105>,  <28.885061, 37.339764, 36.925243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135687, 37.320244, 36.614105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305951, 0.902521, -0.303068,
		0.716808, 0.427872, 0.550556,
		0.626562, -0.048798, -0.777842,
		29.323656, 37.305603, 36.380753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405369, 37.890278, 36.765865>,  <28.885061, 37.339764, 36.925243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405369, 37.890278, 36.765865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321459, 37.758289, 36.397709>,  <29.271112, 37.679096, 36.176815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321459, 37.758289, 36.397709>,  <29.405369, 37.890278, 36.765865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321459, 37.758289, 36.397709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351280, 0.903918, -0.244000,
		0.912467, 0.272128, -0.305533,
		-0.209778, -0.329969, -0.920388,
		29.258526, 37.659298, 36.121593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559608, 38.418545, 36.229820>,  <29.405369, 37.890278, 36.765865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559608, 38.418545, 36.229820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260155, 38.191929, 36.092079>,  <29.080482, 38.055962, 36.009434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260155, 38.191929, 36.092079>,  <29.559608, 38.418545, 36.229820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260155, 38.191929, 36.092079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549759, 0.820783, -0.155178,
		0.370553, 0.073139, -0.925927,
		-0.748636, -0.566538, -0.344352,
		29.035564, 38.021969, 35.988773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263891, 38.730747, 35.541603>,  <29.559608, 38.418545, 36.229820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263891, 38.730747, 35.541603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979237, 38.498589, 35.699951>,  <28.808443, 38.359291, 35.794960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979237, 38.498589, 35.699951>,  <29.263891, 38.730747, 35.541603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979237, 38.498589, 35.699951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660546, 0.744668, -0.095645,
		-0.239276, -0.329553, -0.913314,
		-0.711636, -0.580400, 0.395866,
		28.765745, 38.324467, 35.818710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727829, 38.899055, 35.106243>,  <29.263891, 38.730747, 35.541603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727829, 38.899055, 35.106243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583979, 38.745197, 35.446293>,  <28.497669, 38.652882, 35.650322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583979, 38.745197, 35.446293>,  <28.727829, 38.899055, 35.106243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583979, 38.745197, 35.446293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675778, 0.735608, 0.046964,
		-0.643424, -0.557608, -0.524480,
		-0.359624, -0.384649, 0.850126,
		28.476091, 38.629803, 35.701332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002958, 39.000427, 35.187366>,  <28.727829, 38.899055, 35.106243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002958, 39.000427, 35.187366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067963, 38.949974, 35.578812>,  <28.106964, 38.919704, 35.813679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067963, 38.949974, 35.578812>,  <28.002958, 39.000427, 35.187366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067963, 38.949974, 35.578812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762412, 0.613533, 0.205683,
		-0.626354, -0.779531, 0.003542,
		0.162510, -0.126130, 0.978612,
		28.116716, 38.912136, 35.872395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889179, 39.478386, 35.853779>,  <28.002958, 39.000427, 35.187366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889179, 39.478386, 35.853779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237633, 39.652122, 35.945408>,  <28.446705, 39.756363, 36.000385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237633, 39.652122, 35.945408>,  <27.889179, 39.478386, 35.853779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237633, 39.652122, 35.945408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325522, 0.860064, -0.392843,
		-0.367647, 0.267650, 0.890617,
		0.871132, 0.434343, 0.229074,
		28.498972, 39.782425, 36.014130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052971, 39.473488, 36.558102>,  <27.889179, 39.478386, 35.853779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052971, 39.473488, 36.558102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825424, 39.187721, 36.395126>,  <27.688896, 39.016262, 36.297340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825424, 39.187721, 36.395126>,  <28.052971, 39.473488, 36.558102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825424, 39.187721, 36.395126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822400, -0.489865, -0.289292,
		0.007086, -0.499643, 0.866203,
		-0.568865, -0.714415, -0.407435,
		27.654764, 38.973396, 36.272896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165678, 38.834545, 36.899475>,  <28.052971, 39.473488, 36.558102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165678, 38.834545, 36.899475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058290, 38.757164, 36.522011>,  <27.993858, 38.710735, 36.295532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058290, 38.757164, 36.522011>,  <28.165678, 38.834545, 36.899475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058290, 38.757164, 36.522011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703208, -0.708874, -0.054739,
		-0.658348, -0.678287, 0.326350,
		-0.268470, -0.193455, -0.943663,
		27.977749, 38.699127, 36.238911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944384, 38.154533, 36.792202>,  <28.165678, 38.834545, 36.899475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944384, 38.154533, 36.792202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089994, 38.295597, 36.447384>,  <28.177361, 38.380234, 36.240494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089994, 38.295597, 36.447384>,  <27.944384, 38.154533, 36.792202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089994, 38.295597, 36.447384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559910, -0.822492, -0.100034,
		-0.744301, -0.446251, -0.496867,
		0.364029, 0.352656, -0.862042,
		28.199203, 38.401394, 36.188770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796513, 37.645466, 36.297962>,  <27.944384, 38.154533, 36.792202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796513, 37.645466, 36.297962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096052, 37.871979, 36.160233>,  <28.275776, 38.007885, 36.077595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096052, 37.871979, 36.160233>,  <27.796513, 37.645466, 36.297962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096052, 37.871979, 36.160233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492894, -0.823177, -0.281843,
		-0.443037, 0.041344, -0.895549,
		0.748848, 0.566278, -0.344320,
		28.320707, 38.041862, 36.056938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987261, 37.402122, 35.618847>,  <27.796513, 37.645466, 36.297962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987261, 37.402122, 35.618847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322596, 37.591572, 35.726830>,  <28.523796, 37.705242, 35.791618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322596, 37.591572, 35.726830>,  <27.987261, 37.402122, 35.618847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322596, 37.591572, 35.726830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535410, -0.808520, -0.244195,
		0.102611, 0.349256, -0.931392,
		0.838336, 0.473619, 0.269959,
		28.574097, 37.733658, 35.807816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478821, 37.651573, 35.108608>,  <27.987261, 37.402122, 35.618847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478821, 37.651573, 35.108608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632267, 37.516216, 35.452312>,  <28.724335, 37.435001, 35.658535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632267, 37.516216, 35.452312>,  <28.478821, 37.651573, 35.108608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632267, 37.516216, 35.452312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331016, -0.818238, -0.470017,
		0.862130, 0.464734, -0.201875,
		0.383615, -0.338392, 0.859262,
		28.747351, 37.414700, 35.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000429, 37.299519, 34.870564>,  <28.478821, 37.651573, 35.108608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000429, 37.299519, 34.870564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006920, 37.156502, 35.244068>,  <29.010815, 37.070694, 35.468170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006920, 37.156502, 35.244068>,  <29.000429, 37.299519, 34.870564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006920, 37.156502, 35.244068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385786, -0.859328, -0.335744,
		0.922445, 0.365679, 0.123989,
		0.016227, -0.357539, 0.933757,
		29.011787, 37.049240, 35.524197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534639, 36.932156, 34.873447>,  <29.000429, 37.299519, 34.870564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534639, 36.932156, 34.873447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364294, 36.800377, 35.210518>,  <29.262087, 36.721310, 35.412762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364294, 36.800377, 35.210518>,  <29.534639, 36.932156, 34.873447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364294, 36.800377, 35.210518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520824, -0.850836, -0.069430,
		0.739853, 0.409318, 0.533925,
		-0.425864, -0.329449, 0.842676,
		29.236534, 36.701542, 35.463322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070850, 36.582664, 35.380562>,  <29.534639, 36.932156, 34.873447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070850, 36.582664, 35.380562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707548, 36.433060, 35.455593>,  <29.489567, 36.343296, 35.500610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707548, 36.433060, 35.455593>,  <30.070850, 36.582664, 35.380562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707548, 36.433060, 35.455593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364909, -0.927402, -0.082258,
		0.204726, -0.006262, 0.978799,
		-0.908256, -0.374013, 0.187578,
		29.435072, 36.320854, 35.511868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093218, 36.058910, 35.960510>,  <30.070850, 36.582664, 35.380562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093218, 36.058910, 35.960510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798868, 35.921494, 35.727112>,  <29.622259, 35.839043, 35.587070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798868, 35.921494, 35.727112>,  <30.093218, 36.058910, 35.960510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798868, 35.921494, 35.727112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303659, -0.937655, 0.169097,
		-0.605213, -0.052751, 0.794314,
		-0.735873, -0.343540, -0.583500,
		29.578106, 35.818432, 35.552063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551270, 36.334118, 36.185478>,  <30.093218, 36.058910, 35.960510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551270, 36.334118, 36.185478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794052, 36.612289, 36.339355>,  <30.939720, 36.779190, 36.431683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794052, 36.612289, 36.339355>,  <30.551270, 36.334118, 36.185478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794052, 36.612289, 36.339355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183449, -0.348384, 0.919225,
		0.773274, -0.628499, -0.083878,
		0.606954, 0.695426, 0.384694,
		30.976139, 36.820919, 36.454765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153412, 35.783321, 36.391754>,  <30.551270, 36.334118, 36.185478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153412, 35.783321, 36.391754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212887, 35.537445, 36.081902>,  <31.248571, 35.389919, 35.895992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212887, 35.537445, 36.081902>,  <31.153412, 35.783321, 36.391754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212887, 35.537445, 36.081902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677534, -0.507260, 0.532574,
		-0.720305, -0.604023, 0.341052,
		0.148685, -0.614690, -0.774628,
		31.257492, 35.353039, 35.849514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579533, 35.259380, 36.761688>,  <31.153412, 35.783321, 36.391754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579533, 35.259380, 36.761688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610682, 35.200600, 36.367260>,  <31.629372, 35.165333, 36.130604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610682, 35.200600, 36.367260>,  <31.579533, 35.259380, 36.761688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610682, 35.200600, 36.367260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728431, -0.666908, 0.156914,
		-0.680679, -0.730507, 0.055107,
		0.077875, -0.146950, -0.986074,
		31.634045, 35.156513, 36.071438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101780, 34.737453, 36.751747>,  <31.579533, 35.259380, 36.761688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101780, 34.737453, 36.751747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088383, 34.779945, 36.354237>,  <32.080345, 34.805443, 36.115730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088383, 34.779945, 36.354237>,  <32.101780, 34.737453, 36.751747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088383, 34.779945, 36.354237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793157, -0.602165, -0.091105,
		-0.608095, -0.791273, -0.064089,
		-0.033497, 0.106233, -0.993777,
		32.078335, 34.811813, 36.056103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263977, 33.983456, 36.795685>,  <32.101780, 34.737453, 36.751747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263977, 33.983456, 36.795685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507622, 34.164204, 36.534977>,  <32.653809, 34.272652, 36.378551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507622, 34.164204, 36.534977>,  <32.263977, 33.983456, 36.795685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507622, 34.164204, 36.534977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386086, 0.548910, 0.741374,
		0.692766, -0.703216, 0.159886,
		0.609109, 0.451868, -0.651768,
		32.690353, 34.299763, 36.339447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777218, 34.034958, 37.221138>,  <32.263977, 33.983456, 36.795685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777218, 34.034958, 37.221138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870872, 34.286392, 36.924473>,  <32.927067, 34.437252, 36.746475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870872, 34.286392, 36.924473>,  <32.777218, 34.034958, 37.221138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870872, 34.286392, 36.924473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610722, 0.498463, 0.615266,
		0.756438, -0.597005, -0.267184,
		0.234136, 0.628586, -0.741661,
		32.941113, 34.474968, 36.701973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589664, 34.199436, 37.096619>,  <32.777218, 34.034958, 37.221138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589664, 34.199436, 37.096619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342499, 34.501965, 37.010681>,  <33.194199, 34.683483, 36.959118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342499, 34.501965, 37.010681>,  <33.589664, 34.199436, 37.096619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342499, 34.501965, 37.010681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571086, 0.619554, 0.538529,
		0.540411, 0.210068, -0.814756,
		-0.617913, 0.756323, -0.214847,
		33.157124, 34.728863, 36.946228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014477, 34.812786, 36.822319>,  <33.589664, 34.199436, 37.096619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014477, 34.812786, 36.822319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693302, 34.859577, 37.056107>,  <33.500599, 34.887653, 37.196381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693302, 34.859577, 37.056107>,  <34.014477, 34.812786, 36.822319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693302, 34.859577, 37.056107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559862, 0.484529, 0.672151,
		-0.204567, 0.866918, -0.454538,
		-0.802937, 0.116979, 0.584473,
		33.452419, 34.894672, 37.231449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387463, 35.078377, 37.372150>,  <34.014477, 34.812786, 36.822319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387463, 35.078377, 37.372150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177971, 35.414589, 37.316704>,  <34.052277, 35.616318, 37.283436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177971, 35.414589, 37.316704>,  <34.387463, 35.078377, 37.372150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177971, 35.414589, 37.316704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751639, -0.532525, -0.389172,
		-0.400928, -0.099631, 0.910676,
		-0.523731, 0.840530, -0.138618,
		34.020851, 35.666748, 37.275120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624481, 35.155113, 37.734467>,  <34.387463, 35.078377, 37.372150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624481, 35.155113, 37.734467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690231, 35.314552, 37.373558>,  <33.729683, 35.410217, 37.157013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690231, 35.314552, 37.373558>,  <33.624481, 35.155113, 37.734467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690231, 35.314552, 37.373558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643435, -0.649985, -0.404364,
		-0.747644, 0.647024, 0.149628,
		0.164377, 0.398596, -0.902276,
		33.739544, 35.434132, 37.102875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021893, 35.443859, 37.338539>,  <33.624481, 35.155113, 37.734467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021893, 35.443859, 37.338539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296009, 35.326946, 37.071720>,  <33.460480, 35.256798, 36.911629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296009, 35.326946, 37.071720>,  <33.021893, 35.443859, 37.338539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296009, 35.326946, 37.071720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678869, -0.587978, -0.439795,
		-0.263665, 0.754223, -0.601356,
		0.685287, -0.292283, -0.667047,
		33.501595, 35.239262, 36.871605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849689, 35.630177, 36.548531>,  <33.021893, 35.443859, 37.338539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849689, 35.630177, 36.548531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096493, 35.315552, 36.558506>,  <33.244576, 35.126778, 36.564491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096493, 35.315552, 36.558506>,  <32.849689, 35.630177, 36.548531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096493, 35.315552, 36.558506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636877, -0.517701, -0.571291,
		0.462264, 0.336611, -0.820369,
		0.617009, -0.786561, 0.024935,
		33.281597, 35.079582, 36.565987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154655, 35.458576, 35.890282>,  <32.849689, 35.630177, 36.548531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154655, 35.458576, 35.890282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089176, 35.139309, 36.122192>,  <33.049889, 34.947750, 36.261337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089176, 35.139309, 36.122192>,  <33.154655, 35.458576, 35.890282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089176, 35.139309, 36.122192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339618, -0.506180, -0.792742,
		0.926208, -0.326673, -0.188210,
		-0.163700, -0.798164, 0.579773,
		33.040066, 34.899860, 36.296124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555202, 34.854301, 35.560600>,  <33.154655, 35.458576, 35.890282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555202, 34.854301, 35.560600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278961, 34.684982, 35.795166>,  <33.113216, 34.583389, 35.935905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278961, 34.684982, 35.795166>,  <33.555202, 34.854301, 35.560600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278961, 34.684982, 35.795166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094785, -0.750857, -0.653628,
		0.716995, -0.506981, 0.478423,
		-0.690604, -0.423301, 0.586415,
		33.071781, 34.557991, 35.971092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691956, 34.146301, 35.803822>,  <33.555202, 34.854301, 35.560600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691956, 34.146301, 35.803822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297367, 34.201233, 35.768028>,  <33.060612, 34.234192, 35.746552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297367, 34.201233, 35.768028>,  <33.691956, 34.146301, 35.803822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297367, 34.201233, 35.768028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029365, -0.685182, -0.727780,
		-0.161255, -0.715310, 0.679948,
		-0.986476, 0.137325, -0.089484,
		33.001423, 34.242432, 35.741184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521832, 33.562744, 35.508518>,  <33.691956, 34.146301, 35.803822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521832, 33.562744, 35.508518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196114, 33.790314, 35.462460>,  <33.000683, 33.926853, 35.434826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196114, 33.790314, 35.462460>,  <33.521832, 33.562744, 35.508518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196114, 33.790314, 35.462460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272367, -0.549671, -0.789732,
		-0.512584, -0.611713, 0.602549,
		-0.814294, 0.568919, -0.115142,
		32.951828, 33.960991, 35.427917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987022, 33.163784, 35.541111>,  <33.521832, 33.562744, 35.508518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987022, 33.163784, 35.541111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863327, 33.479355, 35.328709>,  <32.789112, 33.668697, 35.201267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863327, 33.479355, 35.328709>,  <32.987022, 33.163784, 35.541111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863327, 33.479355, 35.328709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307085, -0.611298, -0.729393,
		-0.900040, -0.062492, 0.431303,
		-0.309236, 0.788929, -0.531003,
		32.770557, 33.716034, 35.169407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370548, 33.025204, 35.312378>,  <32.987022, 33.163784, 35.541111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370548, 33.025204, 35.312378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513161, 33.300674, 35.059837>,  <32.598728, 33.465958, 34.908314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513161, 33.300674, 35.059837>,  <32.370548, 33.025204, 35.312378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513161, 33.300674, 35.059837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218246, -0.595673, -0.773008,
		-0.908433, 0.413394, -0.062077,
		0.356535, 0.688679, -0.631351,
		32.620121, 33.507278, 34.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802061, 33.059753, 34.868244>,  <32.370548, 33.025204, 35.312378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802061, 33.059753, 34.868244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102127, 33.216499, 34.655193>,  <32.282166, 33.310547, 34.527363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102127, 33.216499, 34.655193>,  <31.802061, 33.059753, 34.868244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102127, 33.216499, 34.655193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227094, -0.603816, -0.764091,
		-0.621029, 0.694152, -0.363972,
		0.750167, 0.391867, -0.532625,
		32.327179, 33.334061, 34.495407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449760, 33.170143, 34.237209>,  <31.802061, 33.059753, 34.868244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449760, 33.170143, 34.237209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847036, 33.168694, 34.190624>,  <32.085400, 33.167824, 34.162674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847036, 33.168694, 34.190624>,  <31.449760, 33.170143, 34.237209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847036, 33.168694, 34.190624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105706, -0.448553, -0.887483,
		-0.049028, 0.893749, -0.445880,
		0.993188, -0.003621, -0.116466,
		32.144993, 33.167606, 34.155685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546516, 33.298691, 33.506519>,  <31.449760, 33.170143, 34.237209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546516, 33.298691, 33.506519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908525, 33.158169, 33.602451>,  <32.125732, 33.073856, 33.660011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908525, 33.158169, 33.602451>,  <31.546516, 33.298691, 33.506519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908525, 33.158169, 33.602451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013282, -0.586891, -0.809557,
		0.425153, 0.729483, -0.535817,
		0.905024, -0.351302, 0.239830,
		32.180031, 33.052776, 33.674400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922287, 33.375965, 32.857155>,  <31.546516, 33.298691, 33.506519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922287, 33.375965, 32.857155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107529, 33.095741, 33.074318>,  <32.218674, 32.927605, 33.204617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107529, 33.095741, 33.074318>,  <31.922287, 33.375965, 32.857155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107529, 33.095741, 33.074318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323514, -0.436672, -0.839438,
		0.825150, 0.564386, 0.024417,
		0.463105, -0.700561, 0.542907,
		32.246460, 32.885574, 33.237190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613548, 33.380020, 32.590065>,  <31.922287, 33.375965, 32.857155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613548, 33.380020, 32.590065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535542, 33.028267, 32.763802>,  <32.488735, 32.817215, 32.868042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535542, 33.028267, 32.763802>,  <32.613548, 33.380020, 32.590065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535542, 33.028267, 32.763802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224171, -0.471083, -0.853128,
		0.954838, -0.069011, 0.289003,
		-0.195020, -0.879385, 0.434337,
		32.477036, 32.764450, 32.894104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219090, 33.092216, 32.617901>,  <32.613548, 33.380020, 32.590065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219090, 33.092216, 32.617901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971062, 32.780861, 32.657162>,  <32.822247, 32.594048, 32.680717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971062, 32.780861, 32.657162>,  <33.219090, 33.092216, 32.617901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971062, 32.780861, 32.657162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473414, -0.470988, -0.744345,
		0.625617, -0.415075, 0.660542,
		-0.620067, -0.778385, 0.098156,
		32.785042, 32.547344, 32.686607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696686, 32.436607, 32.573540>,  <33.219090, 33.092216, 32.617901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696686, 32.436607, 32.573540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323475, 32.326267, 32.481140>,  <33.099548, 32.260063, 32.425701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323475, 32.326267, 32.481140>,  <33.696686, 32.436607, 32.573540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323475, 32.326267, 32.481140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337600, -0.449168, -0.827209,
		0.124429, -0.849797, 0.512214,
		-0.933030, -0.275852, -0.231002,
		33.043568, 32.243511, 32.411839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743782, 31.778481, 32.306580>,  <33.696686, 32.436607, 32.573540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743782, 31.778481, 32.306580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368362, 31.843065, 32.184559>,  <33.143112, 31.881817, 32.111347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368362, 31.843065, 32.184559>,  <33.743782, 31.778481, 32.306580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368362, 31.843065, 32.184559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223076, -0.390646, -0.893103,
		-0.263370, -0.906270, 0.330622,
		-0.938549, 0.161463, -0.305051,
		33.086800, 31.891504, 32.093044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487247, 31.078400, 31.932171>,  <33.743782, 31.778481, 32.306580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487247, 31.078400, 31.932171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285851, 31.399878, 31.805323>,  <33.165012, 31.592764, 31.729214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285851, 31.399878, 31.805323>,  <33.487247, 31.078400, 31.932171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285851, 31.399878, 31.805323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096524, -0.417065, -0.903737,
		-0.858589, -0.424417, 0.287566,
		-0.503495, 0.803696, -0.317121,
		33.134804, 31.640985, 31.710186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037704, 30.813217, 31.457031>,  <33.487247, 31.078400, 31.932171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037704, 30.813217, 31.457031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982655, 31.195190, 31.351839>,  <32.949623, 31.424376, 31.288723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982655, 31.195190, 31.351839>,  <33.037704, 30.813217, 31.457031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982655, 31.195190, 31.351839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081759, -0.275554, -0.957802,
		-0.987105, -0.110315, 0.115997,
		-0.137623, 0.954935, -0.262982,
		32.941368, 31.481670, 31.272945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440899, 30.908031, 30.999285>,  <33.037704, 30.813217, 31.457031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440899, 30.908031, 30.999285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687668, 31.216370, 30.935783>,  <32.835728, 31.401373, 30.897682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687668, 31.216370, 30.935783>,  <32.440899, 30.908031, 30.999285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687668, 31.216370, 30.935783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178837, -0.059133, -0.982100,
		-0.766435, 0.634271, 0.101375,
		0.616923, 0.770846, -0.158752,
		32.872746, 31.447624, 30.888157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059711, 31.196541, 30.578295>,  <32.440899, 30.908031, 30.999285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059711, 31.196541, 30.578295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429520, 31.340122, 30.527054>,  <32.651405, 31.426271, 30.496309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429520, 31.340122, 30.527054>,  <32.059711, 31.196541, 30.578295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429520, 31.340122, 30.527054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117701, -0.050776, -0.991750,
		-0.362499, 0.931972, -0.004694,
		0.924522, 0.358956, -0.128101,
		32.706875, 31.447809, 30.488623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009251, 31.747692, 30.112305>,  <32.059711, 31.196541, 30.578295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009251, 31.747692, 30.112305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383034, 31.605713, 30.100948>,  <32.607304, 31.520525, 30.094135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383034, 31.605713, 30.100948>,  <32.009251, 31.747692, 30.112305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383034, 31.605713, 30.100948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083753, -0.141596, -0.986375,
		0.346090, 0.924102, -0.162042,
		0.934456, -0.354946, -0.028391,
		32.663372, 31.499229, 30.092430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242741, 32.038696, 29.583982>,  <32.009251, 31.747692, 30.112305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242741, 32.038696, 29.583982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509399, 31.746647, 29.643974>,  <32.669395, 31.571417, 29.679970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509399, 31.746647, 29.643974>,  <32.242741, 32.038696, 29.583982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509399, 31.746647, 29.643974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011319, -0.211107, -0.977397,
		0.745287, 0.649882, -0.148998,
		0.666648, -0.730128, 0.149979,
		32.709393, 31.527609, 29.688969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758144, 32.198936, 29.152866>,  <32.242741, 32.038696, 29.583982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758144, 32.198936, 29.152866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720848, 31.809156, 29.234594>,  <32.698471, 31.575287, 29.283630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720848, 31.809156, 29.234594>,  <32.758144, 32.198936, 29.152866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720848, 31.809156, 29.234594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187340, -0.184377, -0.964836,
		0.977860, -0.128237, -0.165363,
		-0.093239, -0.974454, 0.204319,
		32.692875, 31.516821, 29.295891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809345, 32.006222, 28.563116>,  <32.758144, 32.198936, 29.152866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809345, 32.006222, 28.563116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732994, 31.656868, 28.742344>,  <32.687183, 31.447256, 28.849880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732994, 31.656868, 28.742344>,  <32.809345, 32.006222, 28.563116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732994, 31.656868, 28.742344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293267, -0.384875, -0.875138,
		0.936782, -0.298448, -0.182671,
		-0.190878, -0.873384, 0.448069,
		32.675732, 31.394854, 28.876764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126808, 31.405912, 28.095791>,  <32.809345, 32.006222, 28.563116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126808, 31.405912, 28.095791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851143, 31.244638, 28.336620>,  <32.685741, 31.147873, 28.481117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851143, 31.244638, 28.336620>,  <33.126808, 31.405912, 28.095791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851143, 31.244638, 28.336620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476795, -0.373351, -0.795787,
		0.545634, -0.835494, 0.065063,
		-0.689166, -0.403187, 0.602072,
		32.644394, 31.123682, 28.517242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126598, 30.797846, 27.860943>,  <33.126808, 31.405912, 28.095791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126598, 30.797846, 27.860943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788326, 30.823473, 28.072872>,  <32.585361, 30.838848, 28.200029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788326, 30.823473, 28.072872>,  <33.126598, 30.797846, 27.860943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788326, 30.823473, 28.072872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492730, -0.475120, -0.729025,
		0.205025, -0.877585, 0.433369,
		-0.845684, 0.064066, 0.529824,
		32.534622, 30.842693, 28.231819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814884, 30.125738, 27.824764>,  <33.126598, 30.797846, 27.860943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814884, 30.125738, 27.824764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526379, 30.392349, 27.900152>,  <32.353275, 30.552317, 27.945385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526379, 30.392349, 27.900152>,  <32.814884, 30.125738, 27.824764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526379, 30.392349, 27.900152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589016, -0.447021, -0.673225,
		-0.364474, -0.596584, 0.715015,
		-0.721262, 0.666529, 0.188470,
		32.310001, 30.592308, 27.956694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200752, 29.715899, 27.854549>,  <32.814884, 30.125738, 27.824764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200752, 29.715899, 27.854549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089302, 30.095730, 27.797045>,  <32.022430, 30.323629, 27.762543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089302, 30.095730, 27.797045>,  <32.200752, 29.715899, 27.854549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089302, 30.095730, 27.797045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666488, -0.298957, -0.682948,
		-0.691492, -0.094472, 0.716180,
		-0.278626, 0.949579, -0.143761,
		32.005714, 30.380604, 27.753916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435974, 29.756847, 27.877504>,  <32.200752, 29.715899, 27.854549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435974, 29.756847, 27.877504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558876, 30.075935, 27.669952>,  <31.632618, 30.267387, 27.545422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558876, 30.075935, 27.669952>,  <31.435974, 29.756847, 27.877504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558876, 30.075935, 27.669952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565829, -0.285258, -0.773605,
		-0.765135, 0.531292, 0.363726,
		0.307254, 0.797720, -0.518882,
		31.651052, 30.315250, 27.514288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987890, 29.633060, 27.377951>,  <31.435974, 29.756847, 27.877504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987890, 29.633060, 27.377951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196192, 29.939314, 27.226891>,  <31.321173, 30.123066, 27.136253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196192, 29.939314, 27.226891>,  <30.987890, 29.633060, 27.377951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196192, 29.939314, 27.226891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551000, -0.036461, -0.833709,
		-0.652084, 0.642244, 0.402877,
		0.520755, 0.765632, -0.377652,
		31.352419, 30.169004, 27.113594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465492, 30.130781, 27.115156>,  <30.987890, 29.633060, 27.377951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465492, 30.130781, 27.115156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807598, 30.209902, 26.923574>,  <31.012861, 30.257374, 26.808624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807598, 30.209902, 26.923574>,  <30.465492, 30.130781, 27.115156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807598, 30.209902, 26.923574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488655, 0.000263, -0.872477,
		-0.172449, 0.980242, 0.096880,
		0.855264, 0.197799, -0.478955,
		31.064177, 30.269241, 26.779888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297319, 30.656498, 26.643166>,  <30.465492, 30.130781, 27.115156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297319, 30.656498, 26.643166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641161, 30.495846, 26.516817>,  <30.847466, 30.399454, 26.441008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641161, 30.495846, 26.516817>,  <30.297319, 30.656498, 26.643166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641161, 30.495846, 26.516817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350827, -0.014470, -0.936328,
		0.371489, 0.915687, -0.153342,
		0.859603, -0.401632, -0.315872,
		30.899042, 30.375357, 26.422056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408339, 31.061920, 26.048229>,  <30.297319, 30.656498, 26.643166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408339, 31.061920, 26.048229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627878, 30.731670, 25.995901>,  <30.759602, 30.533522, 25.964504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627878, 30.731670, 25.995901>,  <30.408339, 31.061920, 26.048229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627878, 30.731670, 25.995901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338848, -0.076675, -0.937712,
		0.764165, 0.558989, -0.321843,
		0.548848, -0.825622, -0.130820,
		30.792532, 30.483984, 25.956656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680340, 31.220198, 25.438738>,  <30.408339, 31.061920, 26.048229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680340, 31.220198, 25.438738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721773, 30.828403, 25.507881>,  <30.746634, 30.593327, 25.549368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721773, 30.828403, 25.507881>,  <30.680340, 31.220198, 25.438738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721773, 30.828403, 25.507881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237500, -0.193124, -0.951996,
		0.965849, 0.057556, -0.252632,
		0.103582, -0.979485, 0.172859,
		30.752848, 30.534557, 25.559738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072577, 31.069998, 24.947720>,  <30.680340, 31.220198, 25.438738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072577, 31.069998, 24.947720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899422, 30.729237, 25.065615>,  <30.795528, 30.524780, 25.136353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899422, 30.729237, 25.065615>,  <31.072577, 31.069998, 24.947720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899422, 30.729237, 25.065615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272733, -0.187865, -0.943570,
		0.859201, -0.488842, -0.151018,
		-0.432885, -0.851904, 0.294737,
		30.769556, 30.473665, 25.154036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386654, 30.582420, 24.446941>,  <31.072577, 31.069998, 24.947720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386654, 30.582420, 24.446941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047760, 30.449945, 24.613079>,  <30.844423, 30.370461, 24.712761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047760, 30.449945, 24.613079>,  <31.386654, 30.582420, 24.446941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047760, 30.449945, 24.613079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336345, -0.270750, -0.901979,
		0.411179, -0.903885, 0.117996,
		-0.847233, -0.331187, 0.415344,
		30.793591, 30.350590, 24.737682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337845, 29.860306, 24.357138>,  <31.386654, 30.582420, 24.446941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337845, 29.860306, 24.357138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966661, 30.004169, 24.396214>,  <30.743952, 30.090487, 24.419659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966661, 30.004169, 24.396214>,  <31.337845, 29.860306, 24.357138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966661, 30.004169, 24.396214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265201, -0.453078, -0.851110,
		-0.261846, -0.815701, 0.515818,
		-0.927957, 0.359656, 0.097688,
		30.688274, 30.112066, 24.425520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806238, 29.291666, 24.212099>,  <31.337845, 29.860306, 24.357138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806238, 29.291666, 24.212099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667406, 29.662663, 24.156532>,  <30.584106, 29.885260, 24.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667406, 29.662663, 24.156532>,  <30.806238, 29.291666, 24.212099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667406, 29.662663, 24.156532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055013, -0.168004, -0.984250,
		-0.936221, -0.333970, 0.109335,
		-0.347078, 0.927490, -0.138916,
		30.563282, 29.940910, 24.114857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409578, 29.134838, 23.647053>,  <30.806238, 29.291666, 24.212099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409578, 29.134838, 23.647053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363712, 29.532135, 23.654253>,  <30.336193, 29.770514, 23.658573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363712, 29.532135, 23.654253>,  <30.409578, 29.134838, 23.647053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363712, 29.532135, 23.654253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269348, -0.013645, -0.962946,
		-0.956192, -0.115264, 0.269092,
		-0.114664, 0.993241, 0.017999,
		30.329313, 29.830107, 23.659653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961954, 29.183680, 23.147463>,  <30.409578, 29.134838, 23.647053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961954, 29.183680, 23.147463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101055, 29.554419, 23.204069>,  <30.184515, 29.776861, 23.238033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101055, 29.554419, 23.204069>,  <29.961954, 29.183680, 23.147463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101055, 29.554419, 23.204069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057827, 0.129444, -0.989899,
		-0.935802, 0.352422, -0.008583,
		0.347751, 0.926846, 0.141513,
		30.205379, 29.832472, 23.246523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417988, 29.544476, 22.895924>,  <29.961954, 29.183680, 23.147463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417988, 29.544476, 22.895924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772743, 29.729118, 22.888493>,  <29.985598, 29.839905, 22.884035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772743, 29.729118, 22.888493>,  <29.417988, 29.544476, 22.895924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772743, 29.729118, 22.888493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198776, 0.344995, -0.917315,
		-0.417031, 0.817250, 0.397729,
		0.886890, 0.461608, -0.018576,
		30.038811, 29.867601, 22.882919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281488, 30.236372, 22.782303>,  <29.417988, 29.544476, 22.895924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281488, 30.236372, 22.782303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667059, 30.210402, 22.679049>,  <29.898401, 30.194818, 22.617096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667059, 30.210402, 22.679049>,  <29.281488, 30.236372, 22.782303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667059, 30.210402, 22.679049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213642, 0.389728, -0.895806,
		0.158766, 0.918638, 0.361797,
		0.963924, -0.064928, -0.258136,
		29.956236, 30.190924, 22.601608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469896, 30.893198, 22.543844>,  <29.281488, 30.236372, 22.782303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469896, 30.893198, 22.543844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756189, 30.666039, 22.381256>,  <29.927965, 30.529743, 22.283703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756189, 30.666039, 22.381256>,  <29.469896, 30.893198, 22.543844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756189, 30.666039, 22.381256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149319, 0.444125, -0.883435,
		0.682223, 0.692998, 0.233078,
		0.715734, -0.567897, -0.406470,
		29.970909, 30.495670, 22.259315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940880, 31.358730, 22.283773>,  <29.469896, 30.893198, 22.543844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940880, 31.358730, 22.283773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005508, 31.020147, 22.080832>,  <30.044285, 30.816998, 21.959066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005508, 31.020147, 22.080832>,  <29.940880, 31.358730, 22.283773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005508, 31.020147, 22.080832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048680, 0.506646, -0.860779,
		0.985660, 0.163776, 0.040654,
		0.161572, -0.846456, -0.507353,
		30.053980, 30.766211, 21.928625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441576, 31.539085, 21.851322>,  <29.940880, 31.358730, 22.283773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441576, 31.539085, 21.851322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310270, 31.197559, 21.689709>,  <30.231487, 30.992643, 21.592741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310270, 31.197559, 21.689709>,  <30.441576, 31.539085, 21.851322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310270, 31.197559, 21.689709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241185, 0.337796, -0.909793,
		0.913275, -0.396101, 0.095041,
		-0.328265, -0.853814, -0.404034,
		30.211790, 30.941416, 21.568499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795197, 31.481153, 21.343561>,  <30.441576, 31.539085, 21.851322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795197, 31.481153, 21.343561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508381, 31.223494, 21.237034>,  <30.336292, 31.068897, 21.173117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508381, 31.223494, 21.237034>,  <30.795197, 31.481153, 21.343561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508381, 31.223494, 21.237034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146905, 0.233836, -0.961114,
		0.681378, -0.728278, -0.073040,
		-0.717037, -0.644152, -0.266319,
		30.293270, 31.030249, 21.157139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991760, 31.003183, 20.751545>,  <30.795197, 31.481153, 21.343561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991760, 31.003183, 20.751545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592403, 31.016233, 20.733004>,  <30.352789, 31.024063, 20.721878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592403, 31.016233, 20.733004>,  <30.991760, 31.003183, 20.751545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592403, 31.016233, 20.733004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049782, 0.113575, -0.992281,
		-0.027107, -0.992994, -0.115017,
		-0.998392, 0.032623, -0.046355,
		30.292885, 31.026020, 20.719097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799492, 30.451336, 20.409664>,  <30.991760, 31.003183, 20.751545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799492, 30.451336, 20.409664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529545, 30.745304, 20.383003>,  <30.367577, 30.921686, 20.367006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529545, 30.745304, 20.383003>,  <30.799492, 30.451336, 20.409664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529545, 30.745304, 20.383003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215149, 0.109558, -0.970416,
		-0.705878, -0.669243, -0.232054,
		-0.674868, 0.734922, -0.066652,
		30.327084, 30.965780, 20.363007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506868, 30.337778, 19.771646>,  <30.799492, 30.451336, 20.409664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506868, 30.337778, 19.771646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341663, 30.688593, 19.869808>,  <30.242540, 30.899082, 19.928705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341663, 30.688593, 19.869808>,  <30.506868, 30.337778, 19.771646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341663, 30.688593, 19.869808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212443, 0.354805, -0.910484,
		-0.885601, -0.323907, -0.332860,
		-0.413012, 0.877039, 0.245403,
		30.217760, 30.951704, 19.943430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968983, 30.580078, 19.368542>,  <30.506868, 30.337778, 19.771646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968983, 30.580078, 19.368542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153547, 30.905960, 19.509029>,  <30.264286, 31.101490, 19.593321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153547, 30.905960, 19.509029>,  <29.968983, 30.580078, 19.368542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153547, 30.905960, 19.509029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021717, 0.406132, -0.913556,
		-0.886921, 0.413897, 0.205087,
		0.461411, 0.814706, 0.351218,
		30.291971, 31.150372, 19.614395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747099, 30.774233, 19.202747>,  <29.968983, 30.580078, 19.368542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747099, 30.774233, 19.202747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827831, 31.109148, 18.999489>,  <30.876270, 31.310097, 18.877535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827831, 31.109148, 18.999489>,  <30.747099, 30.774233, 19.202747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827831, 31.109148, 18.999489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532299, -0.341737, -0.774516,
		-0.822145, 0.426806, 0.376715,
		0.201830, 0.837289, -0.508145,
		30.888380, 31.360334, 18.847046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471840, 30.558971, 18.547218>,  <30.747099, 30.774233, 19.202747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471840, 30.558971, 18.547218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518677, 30.946602, 18.460337>,  <30.546780, 31.179180, 18.408209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518677, 30.946602, 18.460337>,  <30.471840, 30.558971, 18.547218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518677, 30.946602, 18.460337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348113, -0.164780, -0.922857,
		-0.930111, 0.183672, 0.318053,
		0.117095, 0.969078, -0.217202,
		30.553804, 31.237326, 18.395176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824133, 30.862265, 18.482800>,  <30.471840, 30.558971, 18.547218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824133, 30.862265, 18.482800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122662, 31.023550, 18.270979>,  <30.301779, 31.120321, 18.143887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122662, 31.023550, 18.270979>,  <29.824133, 30.862265, 18.482800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122662, 31.023550, 18.270979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449538, -0.281366, -0.847790,
		-0.490838, 0.870777, -0.028730,
		0.746320, 0.403213, -0.529553,
		30.346558, 31.144514, 18.112114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605959, 31.440399, 18.040241>,  <29.824133, 30.862265, 18.482800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605959, 31.440399, 18.040241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907251, 31.227934, 17.885061>,  <30.088026, 31.100454, 17.791952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907251, 31.227934, 17.885061>,  <29.605959, 31.440399, 18.040241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907251, 31.227934, 17.885061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507302, -0.093709, -0.856658,
		0.418672, 0.842070, -0.340046,
		0.753232, -0.531165, -0.387951,
		30.133221, 31.068584, 17.768677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033173, 31.519896, 18.567766>,  <29.605959, 31.440399, 18.040241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033173, 31.519896, 18.567766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938425, 31.775492, 18.275032>,  <28.881577, 31.928848, 18.099392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938425, 31.775492, 18.275032>,  <29.033173, 31.519896, 18.567766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938425, 31.775492, 18.275032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119412, 0.728415, 0.674650,
		0.964175, 0.247194, -0.096236,
		-0.236869, 0.638989, -0.731837,
		28.867365, 31.967188, 18.055481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426350, 32.039928, 18.652239>,  <29.033173, 31.519896, 18.567766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426350, 32.039928, 18.652239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081600, 32.129406, 18.470190>,  <28.874750, 32.183094, 18.360960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081600, 32.129406, 18.470190>,  <29.426350, 32.039928, 18.652239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081600, 32.129406, 18.470190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210047, 0.659390, 0.721862,
		0.461579, 0.717751, -0.521324,
		-0.861873, 0.223694, -0.455122,
		28.823038, 32.196514, 18.333654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367922, 32.874935, 18.348883>,  <29.426350, 32.039928, 18.652239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367922, 32.874935, 18.348883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032902, 32.689617, 18.464720>,  <28.831890, 32.578426, 18.534222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032902, 32.689617, 18.464720>,  <29.367922, 32.874935, 18.348883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032902, 32.689617, 18.464720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104525, 0.656128, 0.747376,
		-0.536265, 0.595697, -0.597967,
		-0.837552, -0.463295, 0.289593,
		28.781635, 32.550629, 18.551598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680334, 33.280666, 18.357721>,  <29.367922, 32.874935, 18.348883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680334, 33.280666, 18.357721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733063, 33.006634, 18.644299>,  <28.764700, 32.842216, 18.816244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733063, 33.006634, 18.644299>,  <28.680334, 33.280666, 18.357721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733063, 33.006634, 18.644299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164716, 0.727841, 0.665669,
		-0.977492, 0.030260, 0.208789,
		0.131822, -0.685078, 0.716444,
		28.772610, 32.801109, 18.859232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620371, 33.697739, 18.898411>,  <28.680334, 33.280666, 18.357721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620371, 33.697739, 18.898411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707764, 33.340664, 19.056078>,  <28.760199, 33.126419, 19.150679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707764, 33.340664, 19.056078>,  <28.620371, 33.697739, 18.898411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707764, 33.340664, 19.056078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078405, 0.418679, 0.904744,
		-0.972686, -0.166765, 0.161466,
		0.218482, -0.892691, 0.394168,
		28.773308, 33.072857, 19.174328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073719, 33.572464, 19.367607>,  <28.620371, 33.697739, 18.898411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073719, 33.572464, 19.367607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392977, 33.343872, 19.443895>,  <28.584532, 33.206718, 19.489668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392977, 33.343872, 19.443895>,  <28.073719, 33.572464, 19.367607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392977, 33.343872, 19.443895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101790, 0.439935, 0.892242,
		-0.593804, -0.692725, 0.409303,
		0.798145, -0.571480, 0.190723,
		28.632420, 33.172428, 19.501112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976305, 33.188408, 20.091845>,  <28.073719, 33.572464, 19.367607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976305, 33.188408, 20.091845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369675, 33.204762, 20.021183>,  <28.605696, 33.214573, 19.978786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369675, 33.204762, 20.021183>,  <27.976305, 33.188408, 20.091845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369675, 33.204762, 20.021183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143117, 0.423181, 0.894670,
		0.111338, -0.905122, 0.410315,
		0.983423, 0.040888, -0.176654,
		28.664701, 33.217030, 19.968187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192225, 33.015842, 20.725414>,  <27.976305, 33.188408, 20.091845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192225, 33.015842, 20.725414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520958, 33.158985, 20.548088>,  <28.718199, 33.244869, 20.441692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520958, 33.158985, 20.548088>,  <28.192225, 33.015842, 20.725414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520958, 33.158985, 20.548088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343467, 0.309615, 0.886662,
		0.454551, -0.880954, 0.131543,
		0.821836, 0.357852, -0.443314,
		28.767509, 33.266342, 20.415094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805307, 32.729927, 21.050171>,  <28.192225, 33.015842, 20.725414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805307, 32.729927, 21.050171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913078, 33.072090, 20.873226>,  <28.977741, 33.277390, 20.767059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913078, 33.072090, 20.873226>,  <28.805307, 32.729927, 21.050171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913078, 33.072090, 20.873226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266010, 0.375372, 0.887882,
		0.925553, -0.356893, -0.126412,
		0.269427, 0.855408, -0.442364,
		28.993906, 33.328712, 20.740517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388756, 32.913155, 21.338301>,  <28.805307, 32.729927, 21.050171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388756, 32.913155, 21.338301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288755, 33.267551, 21.182083>,  <29.228756, 33.480190, 21.088352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288755, 33.267551, 21.182083>,  <29.388756, 32.913155, 21.338301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288755, 33.267551, 21.182083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367090, 0.459970, 0.808500,
		0.895960, 0.058760, -0.440230,
		-0.250000, 0.885988, -0.390545,
		29.213755, 33.533348, 21.064920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962019, 33.348312, 21.521461>,  <29.388756, 32.913155, 21.338301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962019, 33.348312, 21.521461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665598, 33.603302, 21.437109>,  <29.487745, 33.756294, 21.386497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665598, 33.603302, 21.437109>,  <29.962019, 33.348312, 21.521461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665598, 33.603302, 21.437109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293098, 0.589681, 0.752576,
		0.604098, 0.495890, -0.623827,
		-0.741053, 0.637471, -0.210881,
		29.443281, 33.794544, 21.373844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285086, 33.901997, 21.642887>,  <29.962019, 33.348312, 21.521461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285086, 33.901997, 21.642887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898134, 34.003326, 21.643047>,  <29.665962, 34.064125, 21.643143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898134, 34.003326, 21.643047>,  <30.285086, 33.901997, 21.642887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898134, 34.003326, 21.643047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147505, 0.561993, 0.813883,
		0.205954, 0.787394, -0.581028,
		-0.967381, 0.253326, 0.000400,
		29.607920, 34.079323, 21.643167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250414, 34.661728, 21.653450>,  <30.285086, 33.901997, 21.642887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250414, 34.661728, 21.653450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893890, 34.547756, 21.794521>,  <29.679976, 34.479374, 21.879164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893890, 34.547756, 21.794521>,  <30.250414, 34.661728, 21.653450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893890, 34.547756, 21.794521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129787, 0.584971, 0.800603,
		-0.434419, 0.759359, -0.484411,
		-0.891311, -0.284927, 0.352678,
		29.626497, 34.462276, 21.900324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884691, 35.289410, 21.924871>,  <30.250414, 34.661728, 21.653450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884691, 35.289410, 21.924871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753674, 34.967232, 22.122444>,  <29.675064, 34.773926, 22.240988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753674, 34.967232, 22.122444>,  <29.884691, 35.289410, 21.924871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753674, 34.967232, 22.122444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234764, 0.436999, 0.868284,
		-0.915205, 0.400359, 0.045954,
		-0.327543, -0.805447, 0.493934,
		29.655411, 34.725597, 22.270624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444862, 35.591099, 22.491528>,  <29.884691, 35.289410, 21.924871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444862, 35.591099, 22.491528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524122, 35.210674, 22.586374>,  <29.571678, 34.982422, 22.643282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524122, 35.210674, 22.586374>,  <29.444862, 35.591099, 22.491528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524122, 35.210674, 22.586374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125612, 0.264558, 0.956154,
		-0.972089, -0.159678, 0.171887,
		0.198151, -0.951058, 0.237116,
		29.583567, 34.925358, 22.657509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048279, 35.326778, 23.007051>,  <29.444862, 35.591099, 22.491528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048279, 35.326778, 23.007051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357193, 35.075966, 23.047865>,  <29.542542, 34.925480, 23.072353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357193, 35.075966, 23.047865>,  <29.048279, 35.326778, 23.007051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357193, 35.075966, 23.047865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060875, 0.232916, 0.970590,
		-0.632354, -0.743360, 0.218048,
		0.772284, -0.627030, 0.102033,
		29.588879, 34.887856, 23.078474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997520, 35.323509, 23.712107>,  <29.048279, 35.326778, 23.007051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997520, 35.323509, 23.712107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366987, 35.184433, 23.647669>,  <29.588667, 35.100986, 23.609007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366987, 35.184433, 23.647669>,  <28.997520, 35.323509, 23.712107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366987, 35.184433, 23.647669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239927, 0.196950, 0.950603,
		-0.298786, -0.916692, 0.265336,
		0.923668, -0.347688, -0.161093,
		29.644087, 35.080128, 23.599340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165270, 34.804008, 24.212811>,  <28.997520, 35.323509, 23.712107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165270, 34.804008, 24.212811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522169, 34.927250, 24.080770>,  <29.736309, 35.001194, 24.001547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522169, 34.927250, 24.080770>,  <29.165270, 34.804008, 24.212811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522169, 34.927250, 24.080770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286726, 0.178158, 0.941301,
		0.348826, -0.934523, 0.070621,
		0.892249, 0.308101, -0.330098,
		29.789845, 35.019680, 23.981741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635103, 34.495903, 24.672924>,  <29.165270, 34.804008, 24.212811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635103, 34.495903, 24.672924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843315, 34.800922, 24.519264>,  <29.968243, 34.983932, 24.427067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843315, 34.800922, 24.519264>,  <29.635103, 34.495903, 24.672924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843315, 34.800922, 24.519264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236265, 0.303708, 0.923006,
		0.820505, -0.571212, -0.022074,
		0.520528, 0.762547, -0.384152,
		29.999474, 35.029686, 24.404018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355583, 34.500065, 24.947168>,  <29.635103, 34.495903, 24.672924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355583, 34.500065, 24.947168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285971, 34.876953, 24.832670>,  <30.244204, 35.103085, 24.763971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285971, 34.876953, 24.832670>,  <30.355583, 34.500065, 24.947168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285971, 34.876953, 24.832670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190753, 0.317431, 0.928898,
		0.966088, 0.107054, -0.234974,
		-0.174031, 0.942219, -0.286245,
		30.233761, 35.159618, 24.746798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911665, 34.919361, 25.209492>,  <30.355583, 34.500065, 24.947168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911665, 34.919361, 25.209492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612293, 35.179256, 25.156290>,  <30.432671, 35.335194, 25.124369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612293, 35.179256, 25.156290>,  <30.911665, 34.919361, 25.209492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612293, 35.179256, 25.156290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088375, 0.296460, 0.950948,
		0.657302, 0.699961, -0.279300,
		-0.748428, 0.649743, -0.133005,
		30.387766, 35.374180, 25.116388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081457, 35.409096, 25.690561>,  <30.911665, 34.919361, 25.209492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081457, 35.409096, 25.690561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720989, 35.555439, 25.597576>,  <30.504707, 35.643246, 25.541784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720989, 35.555439, 25.597576>,  <31.081457, 35.409096, 25.690561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720989, 35.555439, 25.597576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011132, 0.555648, 0.831343,
		0.433319, 0.746595, -0.504807,
		-0.901172, 0.365856, -0.232462,
		30.450638, 35.665195, 25.527838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061068, 36.114723, 25.702091>,  <31.081457, 35.409096, 25.690561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061068, 36.114723, 25.702091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674889, 36.024120, 25.753633>,  <30.443182, 35.969757, 25.784559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674889, 36.024120, 25.753633>,  <31.061068, 36.114723, 25.702091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674889, 36.024120, 25.753633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008809, 0.522553, 0.852561,
		-0.260450, 0.821968, -0.506493,
		-0.965447, -0.226511, 0.128858,
		30.385254, 35.956165, 25.792292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829206, 36.646511, 26.042747>,  <31.061068, 36.114723, 25.702091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829206, 36.646511, 26.042747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538094, 36.381729, 26.114464>,  <30.363426, 36.222858, 26.157494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538094, 36.381729, 26.114464>,  <30.829206, 36.646511, 26.042747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538094, 36.381729, 26.114464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118158, 0.378551, 0.918008,
		-0.675553, 0.646925, -0.353718,
		-0.727782, -0.661957, 0.179292,
		30.319759, 36.183144, 26.168251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491016, 36.990219, 26.394375>,  <30.829206, 36.646511, 26.042747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491016, 36.990219, 26.394375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350367, 36.628830, 26.492430>,  <30.265978, 36.411995, 26.551262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350367, 36.628830, 26.492430>,  <30.491016, 36.990219, 26.394375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350367, 36.628830, 26.492430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109402, 0.299721, 0.947733,
		-0.929727, 0.306426, -0.204230,
		-0.351623, -0.903477, 0.245135,
		30.244881, 36.357788, 26.565969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785423, 37.015331, 26.801043>,  <30.491016, 36.990219, 26.394375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785423, 37.015331, 26.801043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970299, 36.676739, 26.906759>,  <30.081224, 36.473583, 26.970188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970299, 36.676739, 26.906759>,  <29.785423, 37.015331, 26.801043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970299, 36.676739, 26.906759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300244, 0.131056, 0.944816,
		-0.834408, -0.516034, -0.193579,
		0.462187, -0.846483, 0.264289,
		30.108955, 36.422794, 26.986046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437506, 36.813961, 27.414303>,  <29.785423, 37.015331, 26.801043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437506, 36.813961, 27.414303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739363, 36.551643, 27.405750>,  <29.920477, 36.394253, 27.400620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739363, 36.551643, 27.405750>,  <29.437506, 36.813961, 27.414303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739363, 36.551643, 27.405750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012240, -0.046651, 0.998836,
		-0.656024, -0.753501, -0.043231,
		0.754641, -0.655790, -0.021381,
		29.965755, 36.354908, 27.399336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196465, 36.211510, 27.781422>,  <29.437506, 36.813961, 27.414303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196465, 36.211510, 27.781422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596178, 36.220512, 27.793566>,  <29.836006, 36.225914, 27.800852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596178, 36.220512, 27.793566>,  <29.196465, 36.211510, 27.781422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596178, 36.220512, 27.793566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023771, -0.250239, 0.967892,
		0.029382, -0.967922, -0.249526,
		0.999285, 0.022508, 0.030361,
		29.895964, 36.227264, 27.802673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369452, 35.647045, 28.003584>,  <29.196465, 36.211510, 27.781422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369452, 35.647045, 28.003584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688444, 35.869396, 28.097410>,  <29.879839, 36.002808, 28.153706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688444, 35.869396, 28.097410>,  <29.369452, 35.647045, 28.003584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688444, 35.869396, 28.097410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030241, -0.351462, 0.935714,
		0.602586, -0.753307, -0.263474,
		0.797480, 0.555881, 0.234567,
		29.927689, 36.036160, 28.167780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830706, 35.157566, 28.344994>,  <29.369452, 35.647045, 28.003584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830706, 35.157566, 28.344994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955101, 35.519722, 28.460621>,  <30.029737, 35.737015, 28.529997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955101, 35.519722, 28.460621>,  <29.830706, 35.157566, 28.344994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955101, 35.519722, 28.460621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066906, -0.324252, 0.943601,
		0.948056, -0.274107, -0.161414,
		0.310987, 0.905387, 0.289070,
		30.048397, 35.791340, 28.547342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389626, 35.052162, 28.716593>,  <29.830706, 35.157566, 28.344994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389626, 35.052162, 28.716593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296619, 35.431995, 28.800709>,  <30.240816, 35.659897, 28.851179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296619, 35.431995, 28.800709>,  <30.389626, 35.052162, 28.716593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296619, 35.431995, 28.800709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244651, -0.152161, 0.957598,
		0.941320, 0.274104, -0.196938,
		-0.232515, 0.949587, 0.210291,
		30.226866, 35.716873, 28.863796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934210, 35.255070, 29.164288>,  <30.389626, 35.052162, 28.716593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934210, 35.255070, 29.164288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651583, 35.528576, 29.237202>,  <30.482006, 35.692680, 29.280951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651583, 35.528576, 29.237202>,  <30.934210, 35.255070, 29.164288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651583, 35.528576, 29.237202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249828, 0.000021, 0.968290,
		0.662078, 0.729703, -0.170838,
		-0.706568, 0.683764, 0.182286,
		30.439611, 35.733704, 29.291887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269789, 35.767067, 29.443785>,  <30.934210, 35.255070, 29.164288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269789, 35.767067, 29.443785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890514, 35.806576, 29.564573>,  <30.662951, 35.830280, 29.637047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890514, 35.806576, 29.564573>,  <31.269789, 35.767067, 29.443785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890514, 35.806576, 29.564573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287244, -0.139646, 0.947623,
		0.135771, 0.985263, 0.104038,
		-0.948186, 0.098775, 0.301970,
		30.606058, 35.836208, 29.655165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213089, 36.289928, 29.942829>,  <31.269789, 35.767067, 29.443785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213089, 36.289928, 29.942829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883278, 36.074669, 30.012745>,  <30.685390, 35.945515, 30.054693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883278, 36.074669, 30.012745>,  <31.213089, 36.289928, 29.942829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883278, 36.074669, 30.012745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202998, 0.006998, 0.979154,
		-0.528151, 0.842823, 0.103473,
		-0.824529, -0.538146, 0.174787,
		30.635920, 35.913223, 30.065182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869780, 36.608242, 30.459427>,  <31.213089, 36.289928, 29.942829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869780, 36.608242, 30.459427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744892, 36.228245, 30.457207>,  <30.669960, 36.000248, 30.455875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744892, 36.228245, 30.457207>,  <30.869780, 36.608242, 30.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744892, 36.228245, 30.457207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361334, -0.124152, 0.924134,
		-0.878611, 0.286526, 0.382028,
		-0.312218, -0.949994, -0.005550,
		30.651226, 35.943245, 30.455542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544716, 36.473686, 31.138708>,  <30.869780, 36.608242, 30.459427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544716, 36.473686, 31.138708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594376, 36.106094, 30.989008>,  <30.624172, 35.885540, 30.899189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594376, 36.106094, 30.989008>,  <30.544716, 36.473686, 31.138708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594376, 36.106094, 30.989008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251373, -0.335735, 0.907796,
		-0.959895, -0.206779, 0.189325,
		0.124150, -0.918980, -0.374249,
		30.631620, 35.830399, 30.876734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159513, 36.079277, 31.601519>,  <30.544716, 36.473686, 31.138708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159513, 36.079277, 31.601519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414661, 35.834610, 31.414335>,  <30.567751, 35.687809, 31.302025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414661, 35.834610, 31.414335>,  <30.159513, 36.079277, 31.601519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414661, 35.834610, 31.414335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399817, -0.256321, 0.880026,
		-0.658229, -0.748441, 0.081055,
		0.637872, -0.611666, -0.467957,
		30.606024, 35.651112, 31.273949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105648, 35.480339, 31.880610>,  <30.159513, 36.079277, 31.601519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105648, 35.480339, 31.880610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475874, 35.498764, 31.730297>,  <30.698009, 35.509819, 31.640110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475874, 35.498764, 31.730297>,  <30.105648, 35.480339, 31.880610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475874, 35.498764, 31.730297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365262, -0.369744, 0.854326,
		-0.099586, -0.927991, -0.359048,
		0.925563, 0.046067, -0.375781,
		30.753542, 35.512585, 31.617563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413290, 34.962128, 32.132736>,  <30.105648, 35.480339, 31.880610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413290, 34.962128, 32.132736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734941, 35.173477, 32.023777>,  <30.927933, 35.300285, 31.958403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734941, 35.173477, 32.023777>,  <30.413290, 34.962128, 32.132736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734941, 35.173477, 32.023777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385691, -0.115043, 0.915427,
		0.452350, -0.841181, -0.296298,
		0.804128, 0.528374, -0.272396,
		30.976179, 35.331989, 31.942059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939312, 34.624371, 32.338619>,  <30.413290, 34.962128, 32.132736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939312, 34.624371, 32.338619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080395, 34.996792, 32.301250>,  <31.165045, 35.220245, 32.278828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080395, 34.996792, 32.301250>,  <30.939312, 34.624371, 32.338619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080395, 34.996792, 32.301250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387534, -0.054471, 0.920245,
		0.851712, -0.360782, -0.380029,
		0.352709, 0.931058, -0.093422,
		31.186207, 35.276108, 32.273224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635443, 34.594280, 32.632084>,  <30.939312, 34.624371, 32.338619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635443, 34.594280, 32.632084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551279, 34.985313, 32.635345>,  <31.500780, 35.219933, 32.637302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551279, 34.985313, 32.635345>,  <31.635443, 34.594280, 32.632084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551279, 34.985313, 32.635345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485801, 0.097320, 0.868635,
		0.848366, 0.186729, -0.495386,
		-0.210410, 0.977579, 0.008150,
		31.488155, 35.278587, 32.637791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227291, 34.964207, 32.538834>,  <31.635443, 34.594280, 32.632084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227291, 34.964207, 32.538834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967691, 35.189323, 32.743607>,  <31.811934, 35.324394, 32.866470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967691, 35.189323, 32.743607>,  <32.227291, 34.964207, 32.538834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967691, 35.189323, 32.743607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646987, 0.054253, 0.760569,
		0.400268, 0.824817, -0.399328,
		-0.648995, 0.562791, 0.511929,
		31.772993, 35.358162, 32.897186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686604, 35.578377, 32.951885>,  <32.227291, 34.964207, 32.538834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686604, 35.578377, 32.951885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320061, 35.563145, 33.111305>,  <32.100136, 35.554005, 33.206959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320061, 35.563145, 33.111305>,  <32.686604, 35.578377, 32.951885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320061, 35.563145, 33.111305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391837, 0.119082, 0.912296,
		-0.082202, 0.992154, -0.094200,
		-0.916355, -0.038081, 0.398551,
		32.045155, 35.551720, 33.230869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686245, 36.059261, 33.437057>,  <32.686604, 35.578377, 32.951885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686245, 36.059261, 33.437057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378803, 35.828659, 33.547977>,  <32.194340, 35.690296, 33.614529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378803, 35.828659, 33.547977>,  <32.686245, 36.059261, 33.437057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378803, 35.828659, 33.547977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278808, 0.088260, 0.956283,
		-0.575778, 0.812311, 0.092898,
		-0.768600, -0.576507, 0.277297,
		32.148224, 35.655708, 33.631168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085598, 36.398197, 32.949856>,  <32.686245, 36.059261, 33.437057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085598, 36.398197, 32.949856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482582, 36.400448, 32.900887>,  <33.720772, 36.401798, 32.871506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482582, 36.400448, 32.900887>,  <33.085598, 36.398197, 32.949856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482582, 36.400448, 32.900887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102671, 0.583602, -0.805523,
		0.066916, 0.812020, 0.579781,
		0.992462, 0.005624, -0.122423,
		33.780319, 36.402134, 32.864159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157532, 37.022747, 32.728924>,  <33.085598, 36.398197, 32.949856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157532, 37.022747, 32.728924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476871, 36.816967, 32.603718>,  <33.668476, 36.693497, 32.528595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476871, 36.816967, 32.603718>,  <33.157532, 37.022747, 32.728924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476871, 36.816967, 32.603718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054860, 0.579763, -0.812936,
		0.599693, 0.631834, 0.491075,
		0.798347, -0.514453, -0.313017,
		33.716377, 36.662632, 32.509811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414928, 37.512924, 32.409531>,  <33.157532, 37.022747, 32.728924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414928, 37.512924, 32.409531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616917, 37.196095, 32.272343>,  <33.738110, 37.005997, 32.190029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616917, 37.196095, 32.272343>,  <33.414928, 37.512924, 32.409531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616917, 37.196095, 32.272343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083648, 0.440387, -0.893903,
		0.859075, 0.422704, 0.288636,
		0.504968, -0.792074, -0.342968,
		33.768406, 36.958473, 32.169453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006226, 37.751308, 32.051136>,  <33.414928, 37.512924, 32.409531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006226, 37.751308, 32.051136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928440, 37.388523, 31.901682>,  <33.881767, 37.170853, 31.812010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928440, 37.388523, 31.901682>,  <34.006226, 37.751308, 32.051136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928440, 37.388523, 31.901682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185540, 0.340021, -0.921933,
		0.963202, -0.248610, 0.102154,
		-0.194468, -0.906961, -0.373636,
		33.870098, 37.116436, 31.789591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473366, 37.730644, 31.491383>,  <34.006226, 37.751308, 32.051136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473366, 37.730644, 31.491383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217007, 37.439079, 31.395096>,  <34.063190, 37.264141, 31.337324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217007, 37.439079, 31.395096>,  <34.473366, 37.730644, 31.491383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217007, 37.439079, 31.395096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130083, 0.205919, -0.969884,
		0.756527, -0.652906, -0.037153,
		-0.640894, -0.728911, -0.240716,
		34.024738, 37.220406, 31.322882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780746, 37.219765, 30.936094>,  <34.473366, 37.730644, 31.491383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780746, 37.219765, 30.936094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384995, 37.161633, 30.935764>,  <34.147541, 37.126751, 30.935566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384995, 37.161633, 30.935764>,  <34.780746, 37.219765, 30.936094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384995, 37.161633, 30.935764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022207, 0.156795, -0.987382,
		0.143615, -0.976882, -0.158357,
		-0.989385, -0.145320, -0.000825,
		34.088181, 37.118031, 30.935516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599579, 36.693886, 30.497372>,  <34.780746, 37.219765, 30.936094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599579, 36.693886, 30.497372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318684, 36.978386, 30.509920>,  <34.150146, 37.149086, 30.517450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318684, 36.978386, 30.509920>,  <34.599579, 36.693886, 30.497372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318684, 36.978386, 30.509920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035458, 0.009072, -0.999330,
		-0.711060, -0.702878, 0.018849,
		-0.702236, 0.711252, 0.031373,
		34.108013, 37.191761, 30.519333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535221, 36.839153, 29.859346>,  <34.599579, 36.693886, 30.497372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535221, 36.839153, 29.859346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242176, 37.075161, 29.995083>,  <34.066349, 37.216766, 30.076525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242176, 37.075161, 29.995083>,  <34.535221, 36.839153, 29.859346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242176, 37.075161, 29.995083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327699, 0.131215, -0.935626,
		-0.596565, -0.796655, 0.097219,
		-0.732614, 0.590020, 0.339342,
		34.022392, 37.252167, 30.096886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989159, 36.611721, 29.660192>,  <34.535221, 36.839153, 29.859346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989159, 36.611721, 29.660192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878372, 36.989708, 29.729858>,  <33.811901, 37.216499, 29.771658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878372, 36.989708, 29.729858>,  <33.989159, 36.611721, 29.660192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878372, 36.989708, 29.729858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268388, 0.097963, -0.958317,
		-0.922637, -0.312163, 0.226485,
		-0.276964, 0.944964, 0.174165,
		33.795284, 37.273197, 29.782108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499500, 36.736122, 29.208891>,  <33.989159, 36.611721, 29.660192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499500, 36.736122, 29.208891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535458, 37.120083, 29.315109>,  <33.557034, 37.350460, 29.378841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535458, 37.120083, 29.315109>,  <33.499500, 36.736122, 29.208891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535458, 37.120083, 29.315109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480312, 0.275356, -0.832754,
		-0.872478, -0.052684, 0.485804,
		0.089897, 0.959897, 0.265547,
		33.562428, 37.408051, 29.394773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929745, 37.055744, 29.064939>,  <33.499500, 36.736122, 29.208891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929745, 37.055744, 29.064939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201881, 37.348869, 29.069397>,  <33.365162, 37.524746, 29.072071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201881, 37.348869, 29.069397>,  <32.929745, 37.055744, 29.064939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201881, 37.348869, 29.069397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259578, 0.255154, -0.931405,
		-0.685388, 0.630780, 0.363813,
		0.680340, 0.732812, 0.011143,
		33.405983, 37.568714, 29.072741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674908, 37.791241, 28.839483>,  <32.929745, 37.055744, 29.064939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674908, 37.791241, 28.839483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069103, 37.833313, 28.786192>,  <33.305622, 37.858559, 28.754217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069103, 37.833313, 28.786192>,  <32.674908, 37.791241, 28.839483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069103, 37.833313, 28.786192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148595, 0.155187, -0.976646,
		-0.082051, 0.982270, 0.168564,
		0.985488, 0.105182, -0.133227,
		33.364750, 37.864868, 28.746223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827789, 38.431149, 28.431646>,  <32.674908, 37.791241, 28.839483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827789, 38.431149, 28.431646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129765, 38.171741, 28.392664>,  <33.310947, 38.016098, 28.369274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129765, 38.171741, 28.392664>,  <32.827789, 38.431149, 28.431646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129765, 38.171741, 28.392664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011678, 0.135290, -0.990737,
		0.655697, 0.749079, 0.094561,
		0.754934, -0.648519, -0.097457,
		33.356243, 37.977184, 28.363426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253445, 38.858524, 28.054453>,  <32.827789, 38.431149, 28.431646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253445, 38.858524, 28.054453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361412, 38.477821, 27.996075>,  <33.426193, 38.249401, 27.961048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361412, 38.477821, 27.996075>,  <33.253445, 38.858524, 28.054453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361412, 38.477821, 27.996075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176703, 0.100037, -0.979167,
		0.946531, 0.290083, -0.141177,
		0.269917, -0.951759, -0.145947,
		33.442387, 38.192295, 27.952291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631474, 38.831146, 27.392374>,  <33.253445, 38.858524, 28.054453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631474, 38.831146, 27.392374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529602, 38.451130, 27.464548>,  <33.468479, 38.223118, 27.507853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529602, 38.451130, 27.464548>,  <33.631474, 38.831146, 27.392374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529602, 38.451130, 27.464548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220273, -0.124693, -0.967436,
		0.941605, -0.286129, -0.177512,
		-0.254677, -0.950043, 0.180438,
		33.453197, 38.166119, 27.518679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920017, 38.504074, 26.816355>,  <33.631474, 38.831146, 27.392374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920017, 38.504074, 26.816355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632088, 38.271042, 26.967325>,  <33.459328, 38.131222, 27.057907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632088, 38.271042, 26.967325>,  <33.920017, 38.504074, 26.816355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632088, 38.271042, 26.967325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279427, -0.254535, -0.925814,
		0.635430, -0.771888, 0.020432,
		-0.719826, -0.582581, 0.377426,
		33.416142, 38.096268, 27.080553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103748, 37.812439, 26.550833>,  <33.920017, 38.504074, 26.816355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103748, 37.812439, 26.550833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718388, 37.810760, 26.658043>,  <33.487171, 37.809753, 26.722368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718388, 37.810760, 26.658043>,  <34.103748, 37.812439, 26.550833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718388, 37.810760, 26.658043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240316, -0.429429, -0.870539,
		0.118755, -0.903091, 0.412704,
		-0.963403, -0.004201, 0.268024,
		33.429367, 37.809502, 26.738451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885014, 37.170937, 26.516068>,  <34.103748, 37.812439, 26.550833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885014, 37.170937, 26.516068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541645, 37.371033, 26.470673>,  <33.335625, 37.491089, 26.443436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541645, 37.371033, 26.470673>,  <33.885014, 37.170937, 26.516068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541645, 37.371033, 26.470673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221280, -0.560734, -0.797880,
		-0.462765, -0.659803, 0.592037,
		-0.858419, 0.500237, -0.113487,
		33.284119, 37.521103, 26.436626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374207, 36.664429, 26.408142>,  <33.885014, 37.170937, 26.516068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374207, 36.664429, 26.408142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191433, 36.995758, 26.278465>,  <33.081768, 37.194553, 26.200659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191433, 36.995758, 26.278465>,  <33.374207, 36.664429, 26.408142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191433, 36.995758, 26.278465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292592, -0.484148, -0.824616,
		-0.840003, -0.281935, 0.463581,
		-0.456930, 0.828320, -0.324194,
		33.054356, 37.244255, 26.181208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763073, 36.423046, 26.020105>,  <33.374207, 36.664429, 26.408142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763073, 36.423046, 26.020105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758034, 36.810318, 25.920124>,  <32.755009, 37.042679, 25.860136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758034, 36.810318, 25.920124>,  <32.763073, 36.423046, 26.020105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758034, 36.810318, 25.920124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452972, -0.228381, -0.861777,
		-0.891436, 0.102362, 0.441434,
		-0.012602, 0.968176, -0.249954,
		32.754253, 37.100769, 25.845139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073299, 36.528625, 25.845474>,  <32.763073, 36.423046, 26.020105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073299, 36.528625, 25.845474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326283, 36.776394, 25.659437>,  <32.478073, 36.925053, 25.547815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326283, 36.776394, 25.659437>,  <32.073299, 36.528625, 25.845474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326283, 36.776394, 25.659437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434888, -0.212915, -0.874951,
		-0.640987, 0.755637, 0.134717,
		0.632462, 0.619419, -0.465093,
		32.516022, 36.962219, 25.519909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653202, 36.973835, 25.470774>,  <32.073299, 36.528625, 25.845474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653202, 36.973835, 25.470774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015327, 36.989513, 25.301600>,  <32.232601, 36.998920, 25.200094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015327, 36.989513, 25.301600>,  <31.653202, 36.973835, 25.470774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015327, 36.989513, 25.301600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419025, -0.080499, -0.904399,
		-0.069493, 0.995984, -0.056454,
		0.905311, 0.039194, -0.422936,
		32.286922, 37.001270, 25.174719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520134, 37.297924, 24.826441>,  <31.653202, 36.973835, 25.470774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520134, 37.297924, 24.826441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873968, 37.119816, 24.770952>,  <32.086269, 37.012951, 24.737659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873968, 37.119816, 24.770952>,  <31.520134, 37.297924, 24.826441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873968, 37.119816, 24.770952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198040, -0.089325, -0.976115,
		0.422242, 0.890930, -0.167197,
		0.884586, -0.445269, -0.138723,
		32.139343, 36.986237, 24.729336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743780, 37.528584, 24.179625>,  <31.520134, 37.297924, 24.826441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743780, 37.528584, 24.179625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961069, 37.195599, 24.223282>,  <32.091442, 36.995808, 24.249475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961069, 37.195599, 24.223282>,  <31.743780, 37.528584, 24.179625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961069, 37.195599, 24.223282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184302, -0.245055, -0.951830,
		0.819112, 0.496939, -0.286544,
		0.543220, -0.832466, 0.109141,
		32.124035, 36.945858, 24.256023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097805, 37.490921, 23.541897>,  <31.743780, 37.528584, 24.179625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097805, 37.490921, 23.541897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165535, 37.136135, 23.713768>,  <32.206173, 36.923264, 23.816891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165535, 37.136135, 23.713768>,  <32.097805, 37.490921, 23.541897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165535, 37.136135, 23.713768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102071, -0.449408, -0.887476,
		0.980261, 0.106411, -0.166628,
		0.169321, -0.886966, 0.429676,
		32.216331, 36.870045, 23.842670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686485, 37.115204, 23.165569>,  <32.097805, 37.490921, 23.541897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686485, 37.115204, 23.165569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444229, 36.856323, 23.350754>,  <32.298874, 36.700996, 23.461864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444229, 36.856323, 23.350754>,  <32.686485, 37.115204, 23.165569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444229, 36.856323, 23.350754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098387, -0.516433, -0.850657,
		0.789631, -0.560743, 0.249098,
		-0.605642, -0.647197, 0.462961,
		32.262535, 36.662163, 23.489643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949856, 36.492531, 23.113760>,  <32.686485, 37.115204, 23.165569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949856, 36.492531, 23.113760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562649, 36.397739, 23.146727>,  <32.330326, 36.340866, 23.166508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562649, 36.397739, 23.146727>,  <32.949856, 36.492531, 23.113760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562649, 36.397739, 23.146727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112624, -0.703946, -0.701267,
		0.224203, -0.669553, 0.708118,
		-0.968013, -0.236978, 0.082419,
		32.272243, 36.326645, 23.171452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943607, 35.781879, 23.072502>,  <32.949856, 36.492531, 23.113760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943607, 35.781879, 23.072502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565578, 35.882793, 22.989370>,  <32.338760, 35.943344, 22.939491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565578, 35.882793, 22.989370>,  <32.943607, 35.781879, 23.072502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565578, 35.882793, 22.989370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062794, -0.764112, -0.642020,
		-0.320778, -0.593703, 0.737982,
		-0.945070, 0.252287, -0.207830,
		32.282059, 35.958481, 22.927021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560387, 35.158943, 23.002476>,  <32.943607, 35.781879, 23.072502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560387, 35.158943, 23.002476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328087, 35.416927, 22.803776>,  <32.188709, 35.571716, 22.684555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328087, 35.416927, 22.803776>,  <32.560387, 35.158943, 23.002476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328087, 35.416927, 22.803776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201706, -0.705168, -0.679745,
		-0.788701, -0.294562, 0.539615,
		-0.580746, 0.644959, -0.496752,
		32.153862, 35.610416, 22.654751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011116, 34.760956, 22.676907>,  <32.560387, 35.158943, 23.002476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011116, 34.760956, 22.676907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992563, 35.106297, 22.475922>,  <31.981432, 35.313499, 22.355330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992563, 35.106297, 22.475922>,  <32.011116, 34.760956, 22.676907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992563, 35.106297, 22.475922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001044, -0.502963, -0.864307,
		-0.998923, -0.040615, 0.022428,
		-0.046384, 0.863353, -0.502464,
		31.978647, 35.365303, 22.325182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497435, 34.632210, 22.160236>,  <32.011116, 34.760956, 22.676907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497435, 34.632210, 22.160236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705397, 34.948891, 22.031921>,  <31.830173, 35.138901, 21.954933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705397, 34.948891, 22.031921>,  <31.497435, 34.632210, 22.160236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705397, 34.948891, 22.031921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123321, -0.441159, -0.888915,
		-0.845275, 0.422593, -0.326995,
		0.519906, 0.791703, -0.320786,
		31.861368, 35.186401, 21.935686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164482, 34.838211, 21.571844>,  <31.497435, 34.632210, 22.160236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164482, 34.838211, 21.571844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544323, 34.961884, 21.551210>,  <31.772228, 35.036087, 21.538830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544323, 34.961884, 21.551210>,  <31.164482, 34.838211, 21.571844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544323, 34.961884, 21.551210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109722, -0.482012, -0.869267,
		-0.293628, 0.819798, -0.491644,
		0.949602, 0.309186, -0.051582,
		31.829203, 35.054638, 21.535736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248425, 35.007492, 20.843084>,  <31.164482, 34.838211, 21.571844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248425, 35.007492, 20.843084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606504, 34.930569, 21.003899>,  <31.821352, 34.884415, 21.100388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606504, 34.930569, 21.003899>,  <31.248425, 35.007492, 20.843084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606504, 34.930569, 21.003899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240034, -0.552032, -0.798527,
		0.375498, 0.811345, -0.448019,
		0.895201, -0.192305, 0.402037,
		31.875065, 34.872879, 21.124510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803486, 35.185692, 20.326580>,  <31.248425, 35.007492, 20.843084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803486, 35.185692, 20.326580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974957, 34.947102, 20.598007>,  <32.077839, 34.803947, 20.760864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974957, 34.947102, 20.598007>,  <31.803486, 35.185692, 20.326580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974957, 34.947102, 20.598007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385774, -0.558317, -0.734480,
		0.816955, 0.576628, -0.009233,
		0.428676, -0.596475, 0.678567,
		32.103558, 34.768158, 20.801577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515446, 35.007137, 20.030704>,  <31.803486, 35.185692, 20.326580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515446, 35.007137, 20.030704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445045, 34.727036, 20.307447>,  <32.402805, 34.558975, 20.473494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445045, 34.727036, 20.307447>,  <32.515446, 35.007137, 20.030704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445045, 34.727036, 20.307447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488064, -0.672436, -0.556438,
		0.854878, 0.239736, 0.460120,
		-0.176003, -0.700254, 0.691858,
		32.392246, 34.516960, 20.515005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197857, 34.638115, 20.113655>,  <32.515446, 35.007137, 20.030704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197857, 34.638115, 20.113655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883942, 34.415810, 20.223375>,  <32.695591, 34.282429, 20.289207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883942, 34.415810, 20.223375>,  <33.197857, 34.638115, 20.113655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883942, 34.415810, 20.223375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293889, -0.723373, -0.624788,
		0.545655, -0.409711, 0.731025,
		-0.784787, -0.555759, 0.274302,
		32.648506, 34.249081, 20.305666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531212, 34.041451, 20.124983>,  <33.197857, 34.638115, 20.113655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531212, 34.041451, 20.124983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138683, 33.968987, 20.099077>,  <32.903168, 33.925507, 20.083534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138683, 33.968987, 20.099077>,  <33.531212, 34.041451, 20.124983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138683, 33.968987, 20.099077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157414, -0.562537, -0.811648,
		0.110607, -0.806680, 0.580545,
		-0.981319, -0.181160, -0.064762,
		32.844288, 33.914639, 20.079649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405697, 33.295033, 19.888050>,  <33.531212, 34.041451, 20.124983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405697, 33.295033, 19.888050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071556, 33.504463, 19.821053>,  <32.871071, 33.630119, 19.780855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071556, 33.504463, 19.821053>,  <33.405697, 33.295033, 19.888050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071556, 33.504463, 19.821053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020921, -0.334751, -0.942074,
		-0.549315, -0.783461, 0.290589,
		-0.835353, 0.523575, -0.167493,
		32.820950, 33.661537, 19.770805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956028, 33.218349, 19.529257>,  <33.405697, 33.295033, 19.888050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956028, 33.218349, 19.529257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291412, 33.010323, 19.464111>,  <34.492641, 32.885506, 19.425024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291412, 33.010323, 19.464111>,  <33.956028, 33.218349, 19.529257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291412, 33.010323, 19.464111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310298, 0.209914, 0.927174,
		-0.448002, -0.827931, 0.337378,
		0.838457, -0.520063, -0.162863,
		34.542950, 32.854305, 19.415253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017147, 32.689548, 20.114567>,  <33.956028, 33.218349, 19.529257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017147, 32.689548, 20.114567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367912, 32.777714, 19.943712>,  <34.578369, 32.830612, 19.841200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367912, 32.777714, 19.943712>,  <34.017147, 32.689548, 20.114567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367912, 32.777714, 19.943712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365632, 0.270941, 0.890452,
		0.311993, -0.937023, 0.157003,
		0.876912, 0.220409, -0.427137,
		34.630985, 32.843838, 19.815571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510620, 32.364311, 20.585241>,  <34.017147, 32.689548, 20.114567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510620, 32.364311, 20.585241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697449, 32.644165, 20.368959>,  <34.809547, 32.812077, 20.239191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697449, 32.644165, 20.368959>,  <34.510620, 32.364311, 20.585241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697449, 32.644165, 20.368959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242064, 0.486969, 0.839206,
		0.850439, -0.522856, 0.058095,
		0.467074, 0.699631, -0.540703,
		34.837570, 32.854053, 20.206749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124119, 32.427402, 21.019108>,  <34.510620, 32.364311, 20.585241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124119, 32.427402, 21.019108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127052, 32.743469, 20.773968>,  <35.128811, 32.933109, 20.626883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127052, 32.743469, 20.773968>,  <35.124119, 32.427402, 21.019108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127052, 32.743469, 20.773968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419659, 0.553855, 0.719119,
		0.907652, -0.262462, -0.327538,
		0.007333, 0.790164, -0.612852,
		35.129253, 32.980518, 20.590113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861580, 32.773232, 21.022570>,  <35.124119, 32.427402, 21.019108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861580, 32.773232, 21.022570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598564, 33.050896, 20.905416>,  <35.440754, 33.217495, 20.835125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598564, 33.050896, 20.905416>,  <35.861580, 32.773232, 21.022570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598564, 33.050896, 20.905416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354916, 0.628290, 0.692305,
		0.664587, 0.351270, -0.659495,
		-0.657540, 0.694163, -0.292882,
		35.401302, 33.259144, 20.817553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240997, 33.406910, 20.911427>,  <35.861580, 32.773232, 21.022570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240997, 33.406910, 20.911427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860043, 33.514305, 20.969233>,  <35.631470, 33.578743, 21.003916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860043, 33.514305, 20.969233>,  <36.240997, 33.406910, 20.911427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860043, 33.514305, 20.969233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291144, 0.659983, 0.692573,
		0.090568, 0.701669, -0.706724,
		-0.952383, 0.268483, 0.144514,
		35.574329, 33.594849, 21.012587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452251, 33.938576, 21.234665>,  <36.240997, 33.406910, 20.911427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452251, 33.938576, 21.234665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054096, 33.914391, 21.264448>,  <35.815201, 33.899879, 21.282318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054096, 33.914391, 21.264448>,  <36.452251, 33.938576, 21.234665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054096, 33.914391, 21.264448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012188, 0.690285, 0.723435,
		-0.095136, 0.721008, -0.686365,
		-0.995390, -0.060459, 0.074458,
		35.755478, 33.896252, 21.286785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137600, 34.585510, 21.009537>,  <36.452251, 33.938576, 21.234665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137600, 34.585510, 21.009537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916901, 34.386974, 21.277632>,  <35.784481, 34.267853, 21.438488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916901, 34.386974, 21.277632>,  <36.137600, 34.585510, 21.009537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916901, 34.386974, 21.277632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001514, 0.804226, 0.594321,
		-0.834007, 0.326903, -0.444484,
		-0.551752, -0.496341, 0.670235,
		35.751373, 34.238071, 21.478703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669430, 35.104919, 21.233887>,  <36.137600, 34.585510, 21.009537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669430, 35.104919, 21.233887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637798, 34.821369, 21.514240>,  <35.618820, 34.651237, 21.682453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637798, 34.821369, 21.514240>,  <35.669430, 35.104919, 21.233887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637798, 34.821369, 21.514240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148150, 0.703637, 0.694944,
		-0.985799, -0.048883, -0.160660,
		-0.079076, -0.708876, 0.700886,
		35.614075, 34.608707, 21.724506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129711, 35.362156, 21.508270>,  <35.669430, 35.104919, 21.233887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129711, 35.362156, 21.508270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305885, 35.100800, 21.754553>,  <35.411591, 34.943985, 21.902323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305885, 35.100800, 21.754553>,  <35.129711, 35.362156, 21.508270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305885, 35.100800, 21.754553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087181, 0.651438, 0.753677,
		-0.893543, -0.385622, 0.229951,
		0.440432, -0.653395, 0.615707,
		35.438015, 34.904781, 21.939264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817883, 35.375019, 22.205591>,  <35.129711, 35.362156, 21.508270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817883, 35.375019, 22.205591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135517, 35.158176, 22.315527>,  <35.326099, 35.028069, 22.381489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135517, 35.158176, 22.315527>,  <34.817883, 35.375019, 22.205591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135517, 35.158176, 22.315527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009891, 0.440604, 0.897647,
		-0.607719, -0.715532, 0.344517,
		0.794091, -0.542109, 0.274841,
		35.373745, 34.995544, 22.397980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659576, 35.040123, 22.783970>,  <34.817883, 35.375019, 22.205591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659576, 35.040123, 22.783970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059155, 35.053856, 22.796104>,  <35.298901, 35.062096, 22.803385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059155, 35.053856, 22.796104>,  <34.659576, 35.040123, 22.783970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059155, 35.053856, 22.796104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038902, 0.285885, 0.957474,
		0.024202, -0.957649, 0.286920,
		0.998950, 0.034335, 0.030336,
		35.358841, 35.064156, 22.805204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835579, 34.856865, 23.501986>,  <34.659576, 35.040123, 22.783970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835579, 34.856865, 23.501986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146408, 35.051350, 23.342110>,  <35.332905, 35.168041, 23.246183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146408, 35.051350, 23.342110>,  <34.835579, 34.856865, 23.501986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146408, 35.051350, 23.342110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182554, 0.433621, 0.882409,
		0.602351, -0.758664, 0.248197,
		0.777076, 0.486210, -0.399689,
		35.379532, 35.197212, 23.222202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384708, 34.615818, 23.874350>,  <34.835579, 34.856865, 23.501986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384708, 34.615818, 23.874350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472931, 34.966885, 23.704145>,  <35.525864, 35.177525, 23.602024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472931, 34.966885, 23.704145>,  <35.384708, 34.615818, 23.874350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472931, 34.966885, 23.704145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166294, 0.396028, 0.903055,
		0.961094, -0.269932, -0.058605,
		0.220554, 0.877667, -0.425508,
		35.539097, 35.230186, 23.576492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090050, 34.739372, 24.086727>,  <35.384708, 34.615818, 23.874350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090050, 34.739372, 24.086727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923840, 35.090954, 23.993109>,  <35.824116, 35.301903, 23.936937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923840, 35.090954, 23.993109>,  <36.090050, 34.739372, 24.086727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923840, 35.090954, 23.993109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316609, 0.380985, 0.868683,
		0.852701, 0.286858, -0.436593,
		-0.415524, 0.878956, -0.234044,
		35.799183, 35.354641, 23.922895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505981, 35.227516, 24.333208>,  <36.090050, 34.739372, 24.086727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505981, 35.227516, 24.333208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191177, 35.469761, 24.286131>,  <36.002296, 35.615108, 24.257885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191177, 35.469761, 24.286131>,  <36.505981, 35.227516, 24.333208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191177, 35.469761, 24.286131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215854, 0.449007, 0.867064,
		0.577951, 0.656981, -0.484096,
		-0.787007, 0.605614, -0.117692,
		35.955074, 35.651443, 24.250824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722904, 35.787102, 24.650293>,  <36.505981, 35.227516, 24.333208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722904, 35.787102, 24.650293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325024, 35.827126, 24.640797>,  <36.086296, 35.851139, 24.635098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325024, 35.827126, 24.640797>,  <36.722904, 35.787102, 24.650293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325024, 35.827126, 24.640797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015116, 0.370633, 0.928656,
		0.101722, 0.923374, -0.370180,
		-0.994698, 0.100060, -0.023744,
		36.026615, 35.857143, 24.633673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550690, 36.370766, 25.006981>,  <36.722904, 35.787102, 24.650293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550690, 36.370766, 25.006981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197052, 36.184479, 25.022421>,  <35.984871, 36.072704, 25.031685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197052, 36.184479, 25.022421>,  <36.550690, 36.370766, 25.006981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197052, 36.184479, 25.022421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098908, 0.267209, 0.958549,
		-0.456729, 0.843626, -0.282300,
		-0.884090, -0.465719, 0.038601,
		35.931824, 36.044762, 25.034000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066570, 36.885574, 25.276426>,  <36.550690, 36.370766, 25.006981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066570, 36.885574, 25.276426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898884, 36.529102, 25.345776>,  <35.798271, 36.315220, 25.387386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898884, 36.529102, 25.345776>,  <36.066570, 36.885574, 25.276426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898884, 36.529102, 25.345776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167918, 0.263779, 0.949855,
		-0.892224, 0.369078, -0.260225,
		-0.419212, -0.891180, 0.173375,
		35.773121, 36.261749, 25.397787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472652, 37.080738, 25.749989>,  <36.066570, 36.885574, 25.276426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472652, 37.080738, 25.749989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525551, 36.686447, 25.791653>,  <35.557289, 36.449871, 25.816652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525551, 36.686447, 25.791653>,  <35.472652, 37.080738, 25.749989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525551, 36.686447, 25.791653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126375, 0.087460, 0.988120,
		-0.983128, -0.143838, -0.113005,
		0.132245, -0.985729, 0.104162,
		35.565224, 36.390728, 25.822901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875092, 36.844837, 26.032013>,  <35.472652, 37.080738, 25.749989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875092, 36.844837, 26.032013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141010, 36.558086, 26.116041>,  <35.300564, 36.386036, 26.166458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141010, 36.558086, 26.116041>,  <34.875092, 36.844837, 26.032013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141010, 36.558086, 26.116041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164153, 0.134147, 0.977271,
		-0.728763, -0.684173, -0.028496,
		0.664800, -0.716876, 0.210070,
		35.340450, 36.343025, 26.179062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577686, 36.495079, 26.498470>,  <34.875092, 36.844837, 26.032013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577686, 36.495079, 26.498470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966682, 36.427094, 26.562191>,  <35.200081, 36.386303, 26.600424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966682, 36.427094, 26.562191>,  <34.577686, 36.495079, 26.498470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966682, 36.427094, 26.562191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171466, -0.059365, 0.983400,
		-0.157685, -0.983661, -0.086874,
		0.972489, -0.169963, 0.159303,
		35.258430, 36.376106, 26.609982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541130, 36.155163, 27.093494>,  <34.577686, 36.495079, 26.498470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541130, 36.155163, 27.093494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934803, 36.225964, 27.090452>,  <35.171005, 36.268444, 27.088627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934803, 36.225964, 27.090452>,  <34.541130, 36.155163, 27.093494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934803, 36.225964, 27.090452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018697, -0.061086, 0.997957,
		0.176177, -0.982313, -0.063429,
		0.984181, 0.177003, -0.007604,
		35.230057, 36.279064, 27.088171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774128, 35.809994, 27.701275>,  <34.541130, 36.155163, 27.093494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774128, 35.809994, 27.701275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057903, 36.069759, 27.591763>,  <35.228168, 36.225620, 27.526054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057903, 36.069759, 27.591763>,  <34.774128, 35.809994, 27.701275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057903, 36.069759, 27.591763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262017, 0.117587, 0.957873,
		0.654248, -0.751290, -0.086736,
		0.709441, 0.649413, -0.273782,
		35.270737, 36.264584, 27.509628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464249, 35.569801, 28.058594>,  <34.774128, 35.809994, 27.701275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464249, 35.569801, 28.058594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479004, 35.959850, 27.971163>,  <35.487858, 36.193878, 27.918703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479004, 35.959850, 27.971163>,  <35.464249, 35.569801, 28.058594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479004, 35.959850, 27.971163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194539, 0.207537, 0.958688,
		0.980201, -0.077882, -0.182045,
		0.036883, 0.975122, -0.218579,
		35.490070, 36.252388, 27.905588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123425, 35.837463, 28.372332>,  <35.464249, 35.569801, 28.058594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123425, 35.837463, 28.372332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925915, 36.180553, 28.315060>,  <35.807407, 36.386406, 28.280697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925915, 36.180553, 28.315060>,  <36.123425, 35.837463, 28.372332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925915, 36.180553, 28.315060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576705, 0.446231, 0.684317,
		0.650846, 0.255324, -0.714989,
		-0.493773, 0.857722, -0.143180,
		35.777782, 36.437870, 28.272106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611919, 36.367096, 28.308550>,  <36.123425, 35.837463, 28.372332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611919, 36.367096, 28.308550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282822, 36.567505, 28.415936>,  <36.085365, 36.687752, 28.480368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282822, 36.567505, 28.415936>,  <36.611919, 36.367096, 28.308550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282822, 36.567505, 28.415936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503937, 0.424438, 0.752263,
		0.262955, 0.754207, -0.601687,
		-0.822741, 0.501023, 0.268465,
		36.035999, 36.717812, 28.496475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750847, 37.159904, 28.343069>,  <36.611919, 36.367096, 28.308550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750847, 37.159904, 28.343069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447388, 37.057320, 28.582628>,  <36.265312, 36.995770, 28.726364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447388, 37.057320, 28.582628>,  <36.750847, 37.159904, 28.343069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447388, 37.057320, 28.582628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491901, 0.377267, 0.784667,
		-0.427184, 0.889885, -0.160057,
		-0.758648, -0.256465, 0.598898,
		36.219791, 36.980381, 28.762297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697140, 37.722282, 28.735609>,  <36.750847, 37.159904, 28.343069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697140, 37.722282, 28.735609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488007, 37.448761, 28.939203>,  <36.362526, 37.284649, 29.061359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488007, 37.448761, 28.939203>,  <36.697140, 37.722282, 28.735609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488007, 37.448761, 28.939203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471847, 0.265127, 0.840873,
		-0.709933, 0.679799, 0.184031,
		-0.522833, -0.683799, 0.508983,
		36.331158, 37.243622, 29.091898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346191, 38.046120, 29.414211>,  <36.697140, 37.722282, 28.735609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346191, 38.046120, 29.414211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355850, 37.652725, 29.485960>,  <36.361645, 37.416687, 29.529009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355850, 37.652725, 29.485960>,  <36.346191, 38.046120, 29.414211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355850, 37.652725, 29.485960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244130, 0.179795, 0.952929,
		-0.969442, 0.020777, 0.244440,
		0.024150, -0.983485, 0.179373,
		36.363094, 37.357681, 29.539772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169357, 38.001503, 30.089693>,  <36.346191, 38.046120, 29.414211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169357, 38.001503, 30.089693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322727, 37.637806, 30.024872>,  <36.414749, 37.419586, 29.985979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322727, 37.637806, 30.024872>,  <36.169357, 38.001503, 30.089693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322727, 37.637806, 30.024872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235393, -0.073458, 0.969120,
		-0.893069, -0.409734, 0.185863,
		0.383428, -0.909243, -0.162052,
		36.437756, 37.365032, 29.976255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830482, 37.487228, 30.565529>,  <36.169357, 38.001503, 30.089693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830482, 37.487228, 30.565529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174271, 37.304520, 30.473726>,  <36.380543, 37.194893, 30.418646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174271, 37.304520, 30.473726>,  <35.830482, 37.487228, 30.565529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174271, 37.304520, 30.473726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141694, -0.218498, 0.965495,
		-0.491156, -0.862334, -0.123071,
		0.859470, -0.456771, -0.229504,
		36.432110, 37.167488, 30.404875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814789, 36.824970, 30.978472>,  <35.830482, 37.487228, 30.565529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814789, 36.824970, 30.978472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190060, 36.885937, 30.854153>,  <36.415222, 36.922516, 30.779560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190060, 36.885937, 30.854153>,  <35.814789, 36.824970, 30.978472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190060, 36.885937, 30.854153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343268, -0.525510, 0.778464,
		-0.044674, -0.837023, -0.545341,
		0.938174, 0.152421, -0.310800,
		36.471512, 36.931664, 30.760912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252499, 36.133675, 30.878881>,  <35.814789, 36.824970, 30.978472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252499, 36.133675, 30.878881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508289, 36.437027, 30.929379>,  <36.661762, 36.619038, 30.959677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508289, 36.437027, 30.929379>,  <36.252499, 36.133675, 30.878881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508289, 36.437027, 30.929379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505750, -0.538632, 0.673864,
		0.579042, -0.367070, -0.727990,
		0.639474, 0.758377, 0.126244,
		36.700130, 36.664539, 30.967251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887234, 35.807201, 30.887810>,  <36.252499, 36.133675, 30.878881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887234, 35.807201, 30.887810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934872, 36.152325, 31.084330>,  <36.963455, 36.359398, 31.202242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934872, 36.152325, 31.084330>,  <36.887234, 35.807201, 30.887810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934872, 36.152325, 31.084330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354545, -0.499154, 0.790660,
		0.927423, 0.080022, -0.365353,
		0.119098, 0.862810, 0.491298,
		36.970600, 36.411167, 31.231720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526112, 35.688011, 31.126438>,  <36.887234, 35.807201, 30.887810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526112, 35.688011, 31.126438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401783, 36.006016, 31.334801>,  <37.327187, 36.196819, 31.459818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401783, 36.006016, 31.334801>,  <37.526112, 35.688011, 31.126438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401783, 36.006016, 31.334801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490348, -0.335363, 0.804420,
		0.814217, 0.505456, -0.285595,
		-0.310820, 0.795013, 0.520907,
		37.308537, 36.244518, 31.491074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134258, 35.962109, 31.319904>,  <37.526112, 35.688011, 31.126438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134258, 35.962109, 31.319904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846222, 36.085587, 31.568476>,  <37.673401, 36.159672, 31.717619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846222, 36.085587, 31.568476>,  <38.134258, 35.962109, 31.319904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846222, 36.085587, 31.568476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617998, -0.121897, 0.776672,
		0.315504, 0.943318, -0.102995,
		-0.720094, 0.308694, 0.621428,
		37.630196, 36.178196, 31.754904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418209, 36.514503, 31.805746>,  <38.134258, 35.962109, 31.319904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418209, 36.514503, 31.805746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092987, 36.368767, 31.987379>,  <37.897854, 36.281322, 32.096359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092987, 36.368767, 31.987379>,  <38.418209, 36.514503, 31.805746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092987, 36.368767, 31.987379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469530, 0.050769, 0.881456,
		-0.344208, 0.929879, 0.129793,
		-0.813057, -0.364346, 0.454081,
		37.849072, 36.259464, 32.123604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484722, 36.836185, 32.417694>,  <38.418209, 36.514503, 31.805746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484722, 36.836185, 32.417694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240273, 36.521412, 32.451775>,  <38.093601, 36.332546, 32.472225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240273, 36.521412, 32.451775>,  <38.484722, 36.836185, 32.417694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240273, 36.521412, 32.451775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381779, -0.198754, 0.902631,
		-0.693378, 0.584148, 0.421899,
		-0.611124, -0.786936, 0.085204,
		38.056934, 36.285332, 32.477337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325733, 36.869591, 33.160694>,  <38.484722, 36.836185, 32.417694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325733, 36.869591, 33.160694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203571, 36.506355, 33.046074>,  <38.130276, 36.288414, 32.977303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203571, 36.506355, 33.046074>,  <38.325733, 36.869591, 33.160694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203571, 36.506355, 33.046074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505114, -0.409591, 0.759667,
		-0.807210, 0.087265, 0.583778,
		-0.305403, -0.908086, -0.286547,
		38.111950, 36.233929, 32.960110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580952, 36.477760, 33.263309>,  <38.325733, 36.869591, 33.160694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580952, 36.477760, 33.263309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688278, 36.820255, 33.439884>,  <37.752674, 37.025753, 33.545830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688278, 36.820255, 33.439884>,  <37.580952, 36.477760, 33.263309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688278, 36.820255, 33.439884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959143, 0.194762, 0.205213,
		0.089737, -0.478458, 0.873513,
		0.268313, 0.856239, 0.441432,
		37.768772, 37.077126, 33.572315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037571, 36.675137, 33.893051>,  <37.580952, 36.477760, 33.263309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037571, 36.675137, 33.893051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203247, 37.032883, 33.825455>,  <37.302650, 37.247532, 33.784897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203247, 37.032883, 33.825455>,  <37.037571, 36.675137, 33.893051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203247, 37.032883, 33.825455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897127, 0.432488, 0.090098,
		0.153666, 0.114286, 0.981492,
		0.414186, 0.894367, -0.168987,
		37.327503, 37.301193, 33.774757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744961, 37.115562, 34.393654>,  <37.037571, 36.675137, 33.893051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744961, 37.115562, 34.393654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889118, 37.361362, 34.112938>,  <36.975613, 37.508842, 33.944508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889118, 37.361362, 34.112938>,  <36.744961, 37.115562, 34.393654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889118, 37.361362, 34.112938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790632, 0.600464, 0.119768,
		0.494995, 0.511690, 0.702249,
		0.360391, 0.614505, -0.701785,
		36.997234, 37.545715, 33.902401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418690, 37.782898, 34.572624>,  <36.744961, 37.115562, 34.393654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418690, 37.782898, 34.572624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570808, 37.864773, 34.211853>,  <36.662079, 37.913898, 33.995388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570808, 37.864773, 34.211853>,  <36.418690, 37.782898, 34.572624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570808, 37.864773, 34.211853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782729, 0.590700, -0.195982,
		0.492656, 0.780498, 0.384854,
		0.380297, 0.204685, -0.901931,
		36.684898, 37.926178, 33.941273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643372, 38.572479, 34.483238>,  <36.418690, 37.782898, 34.572624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643372, 38.572479, 34.483238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545158, 38.398209, 34.136852>,  <36.486229, 38.293644, 33.929020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545158, 38.398209, 34.136852>,  <36.643372, 38.572479, 34.483238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545158, 38.398209, 34.136852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728169, 0.672583, -0.131923,
		0.639910, 0.598178, -0.482389,
		-0.245533, -0.435679, -0.865966,
		36.471500, 38.267506, 33.877064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603481, 39.113289, 34.088558>,  <36.643372, 38.572479, 34.483238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603481, 39.113289, 34.088558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386959, 38.819981, 33.923973>,  <36.257046, 38.643993, 33.825222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386959, 38.819981, 33.923973>,  <36.603481, 39.113289, 34.088558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386959, 38.819981, 33.923973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754514, 0.639568, -0.147174,
		0.371078, 0.230789, -0.899465,
		-0.541304, -0.733273, -0.411463,
		36.224567, 38.599998, 33.800533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198166, 39.404503, 33.522892>,  <36.603481, 39.113289, 34.088558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198166, 39.404503, 33.522892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987019, 39.065720, 33.548260>,  <35.860332, 38.862450, 33.563480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987019, 39.065720, 33.548260>,  <36.198166, 39.404503, 33.522892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987019, 39.065720, 33.548260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849311, 0.526846, -0.033217,
		-0.005278, -0.071396, -0.997434,
		-0.527866, -0.846957, 0.063418,
		35.828659, 38.811634, 33.567284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590332, 39.510429, 33.142834>,  <36.198166, 39.404503, 33.522892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590332, 39.510429, 33.142834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470772, 39.184620, 33.341713>,  <35.399036, 38.989136, 33.461040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470772, 39.184620, 33.341713>,  <35.590332, 39.510429, 33.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470772, 39.184620, 33.341713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932605, 0.359756, 0.028703,
		-0.202250, -0.455112, -0.867161,
		-0.298904, -0.814523, 0.497200,
		35.381100, 38.940262, 33.490871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969311, 39.282921, 32.799248>,  <35.590332, 39.510429, 33.142834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969311, 39.282921, 32.799248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982815, 39.188919, 33.187809>,  <34.990917, 39.132519, 33.420948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982815, 39.188919, 33.187809>,  <34.969311, 39.282921, 32.799248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982815, 39.188919, 33.187809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916486, 0.380404, 0.123878,
		-0.398639, -0.894463, -0.202538,
		0.033758, -0.235006, 0.971407,
		34.992943, 39.118416, 33.479233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195320, 39.034966, 33.138027>,  <34.969311, 39.282921, 32.799248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195320, 39.034966, 33.138027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445786, 39.156536, 33.425236>,  <34.596066, 39.229477, 33.597561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445786, 39.156536, 33.425236>,  <34.195320, 39.034966, 33.138027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445786, 39.156536, 33.425236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779454, 0.266784, 0.566814,
		-0.019286, -0.914579, 0.403947,
		0.626163, 0.303926, 0.718017,
		34.633633, 39.247715, 33.640640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935242, 38.956890, 33.761955>,  <34.195320, 39.034966, 33.138027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935242, 38.956890, 33.761955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221050, 39.199013, 33.902275>,  <34.392536, 39.344288, 33.986465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221050, 39.199013, 33.902275>,  <33.935242, 38.956890, 33.761955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221050, 39.199013, 33.902275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646301, 0.379111, 0.662246,
		0.267872, -0.699910, 0.662095,
		0.714520, 0.605310, 0.350799,
		34.435406, 39.380608, 34.007515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817314, 39.027412, 34.512920>,  <33.935242, 38.956890, 33.761955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817314, 39.027412, 34.512920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046585, 39.340679, 34.416492>,  <34.184147, 39.528641, 34.358635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046585, 39.340679, 34.416492>,  <33.817314, 39.027412, 34.512920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046585, 39.340679, 34.416492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638462, 0.611239, 0.467711,
		0.513645, -0.114171, 0.850373,
		0.573180, 0.783167, -0.241066,
		34.218540, 39.575630, 34.344173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833916, 39.479084, 35.072258>,  <33.817314, 39.027412, 34.512920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833916, 39.479084, 35.072258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916092, 39.686989, 34.740562>,  <33.965397, 39.811729, 34.541546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916092, 39.686989, 34.740562>,  <33.833916, 39.479084, 35.072258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916092, 39.686989, 34.740562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740015, 0.636990, 0.215920,
		0.640447, 0.569297, 0.515489,
		0.205439, 0.519755, -0.829247,
		33.977726, 39.842915, 34.491791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579788, 40.126728, 35.334709>,  <33.833916, 39.479084, 35.072258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579788, 40.126728, 35.334709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575802, 40.099281, 34.935673>,  <33.573410, 40.082813, 34.696251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575802, 40.099281, 34.935673>,  <33.579788, 40.126728, 35.334709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575802, 40.099281, 34.935673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822186, 0.568380, -0.030881,
		0.569132, 0.819899, -0.062086,
		-0.009969, -0.068621, -0.997593,
		33.572811, 40.078693, 34.636395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555859, 40.756054, 35.125481>,  <33.579788, 40.126728, 35.334709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555859, 40.756054, 35.125481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396652, 40.549210, 34.822380>,  <33.301128, 40.425102, 34.640522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396652, 40.549210, 34.822380>,  <33.555859, 40.756054, 35.125481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396652, 40.549210, 34.822380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811496, 0.583690, 0.027926,
		0.427849, 0.626024, -0.651950,
		-0.398019, -0.517106, -0.757748,
		33.277245, 40.394077, 34.595055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152702, 41.205185, 34.745804>,  <33.555859, 40.756054, 35.125481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152702, 41.205185, 34.745804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019535, 40.844769, 34.634602>,  <32.939636, 40.628517, 34.567879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019535, 40.844769, 34.634602>,  <33.152702, 41.205185, 34.745804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019535, 40.844769, 34.634602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912190, 0.382436, -0.147148,
		0.238905, 0.204604, -0.949243,
		-0.332917, -0.901044, -0.278004,
		32.919659, 40.574455, 34.551201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846077, 41.465714, 34.135059>,  <33.152702, 41.205185, 34.745804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846077, 41.465714, 34.135059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688232, 41.107937, 34.219196>,  <32.593525, 40.893269, 34.269680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688232, 41.107937, 34.219196>,  <32.846077, 41.465714, 34.135059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688232, 41.107937, 34.219196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906698, 0.341956, -0.246911,
		0.148920, -0.288153, -0.945934,
		-0.394616, -0.894446, 0.210344,
		32.569847, 40.839603, 34.282299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388363, 41.314812, 33.496803>,  <32.846077, 41.465714, 34.135059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388363, 41.314812, 33.496803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281513, 41.113171, 33.825321>,  <32.217403, 40.992188, 34.022434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281513, 41.113171, 33.825321>,  <32.388363, 41.314812, 33.496803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281513, 41.113171, 33.825321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955930, 0.246363, -0.159699,
		-0.121833, -0.827762, -0.547692,
		-0.267124, -0.504098, 0.821298,
		32.201378, 40.961941, 34.071709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717119, 41.273628, 33.383564>,  <32.388363, 41.314812, 33.496803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717119, 41.273628, 33.383564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713348, 41.158016, 33.766472>,  <31.711086, 41.088650, 33.996216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713348, 41.158016, 33.766472>,  <31.717119, 41.273628, 33.383564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713348, 41.158016, 33.766472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896818, 0.425884, 0.119755,
		-0.442300, -0.857370, -0.263224,
		-0.009428, -0.289031, 0.957273,
		31.710520, 41.071308, 34.053654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086582, 40.910194, 33.504829>,  <31.717119, 41.273628, 33.383564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086582, 40.910194, 33.504829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228924, 41.137112, 33.801895>,  <31.314329, 41.273262, 33.980133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228924, 41.137112, 33.801895>,  <31.086582, 40.910194, 33.504829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228924, 41.137112, 33.801895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848008, 0.529982, 0.001494,
		-0.392750, -0.630315, 0.669664,
		0.355852, 0.567294, 0.742662,
		31.335680, 41.307301, 34.024693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452873, 40.901295, 34.143478>,  <31.086582, 40.910194, 33.504829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452873, 40.901295, 34.143478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689514, 41.214672, 34.067348>,  <30.831499, 41.402699, 34.021671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689514, 41.214672, 34.067348>,  <30.452873, 40.901295, 34.143478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689514, 41.214672, 34.067348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803667, 0.554255, -0.216610,
		-0.064213, 0.281105, 0.957526,
		0.591604, 0.783442, -0.190325,
		30.866995, 41.449703, 34.010250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072712, 41.490074, 34.382565>,  <30.452873, 40.901295, 34.143478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072712, 41.490074, 34.382565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356194, 41.610359, 34.127281>,  <30.526283, 41.682529, 33.974110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356194, 41.610359, 34.127281>,  <30.072712, 41.490074, 34.382565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356194, 41.610359, 34.127281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625765, 0.685697, -0.371803,
		0.325813, 0.662868, 0.674130,
		0.708706, 0.300709, -0.638209,
		30.568806, 41.700573, 33.935818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286179, 42.269600, 34.526470>,  <30.072712, 41.490074, 34.382565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286179, 42.269600, 34.526470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325148, 42.161900, 34.143219>,  <30.348530, 42.097279, 33.913269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325148, 42.161900, 34.143219>,  <30.286179, 42.269600, 34.526470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325148, 42.161900, 34.143219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290617, 0.913054, -0.286137,
		0.951867, 0.306325, 0.010704,
		0.097424, -0.269254, -0.958129,
		30.354376, 42.081123, 33.855782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734993, 41.864998, 34.985188>,  <30.286179, 42.269600, 34.526470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734993, 41.864998, 34.985188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931545, 42.207455, 34.921223>,  <31.049477, 42.412930, 34.882843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931545, 42.207455, 34.921223>,  <30.734993, 41.864998, 34.985188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931545, 42.207455, 34.921223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860365, 0.448626, -0.241880,
		-0.135342, 0.256438, 0.957038,
		0.491380, 0.856139, -0.159913,
		31.078959, 42.464298, 34.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482897, 41.920803, 34.972752>,  <30.734993, 41.864998, 34.985188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482897, 41.920803, 34.972752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250671, 41.595131, 34.969753>,  <31.111336, 41.399727, 34.967957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250671, 41.595131, 34.969753>,  <31.482897, 41.920803, 34.972752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250671, 41.595131, 34.969753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737699, -0.522092, -0.428042,
		0.344592, -0.254033, 0.903728,
		-0.580566, -0.814179, -0.007491,
		31.076502, 41.350876, 34.967506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865328, 41.270374, 35.349415>,  <31.482897, 41.920803, 34.972752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865328, 41.270374, 35.349415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613049, 41.168320, 35.056259>,  <31.461681, 41.107086, 34.880367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613049, 41.168320, 35.056259>,  <31.865328, 41.270374, 35.349415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613049, 41.168320, 35.056259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690297, -0.615930, -0.379631,
		-0.354552, -0.745344, 0.564585,
		-0.630700, -0.255133, -0.732888,
		31.423838, 41.091782, 34.836391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903185, 40.589256, 35.352798>,  <31.865328, 41.270374, 35.349415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903185, 40.589256, 35.352798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823246, 40.694756, 34.975334>,  <31.775282, 40.758057, 34.748856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823246, 40.694756, 34.975334>,  <31.903185, 40.589256, 35.352798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823246, 40.694756, 34.975334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728793, -0.603722, -0.323080,
		-0.654921, -0.752301, -0.071566,
		-0.199847, 0.263749, -0.943662,
		31.763292, 40.773880, 34.692234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702257, 40.039780, 34.883316>,  <31.903185, 40.589256, 35.352798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702257, 40.039780, 34.883316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868616, 40.323692, 34.655899>,  <31.968431, 40.494041, 34.519447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868616, 40.323692, 34.655899>,  <31.702257, 40.039780, 34.883316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868616, 40.323692, 34.655899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659942, -0.665698, -0.348314,
		-0.625703, -0.230341, -0.745277,
		0.415899, 0.709781, -0.568541,
		31.993385, 40.536625, 34.485336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050106, 39.660088, 34.477623>,  <31.702257, 40.039780, 34.883316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050106, 39.660088, 34.477623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203659, 40.017986, 34.386356>,  <32.295792, 40.232727, 34.331596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203659, 40.017986, 34.386356>,  <32.050106, 39.660088, 34.477623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203659, 40.017986, 34.386356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894124, -0.421902, -0.150135,
		-0.230595, -0.146371, -0.961978,
		0.383885, 0.894748, -0.228163,
		32.318825, 40.286411, 34.317909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445103, 39.634285, 33.909397>,  <32.050106, 39.660088, 34.477623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445103, 39.634285, 33.909397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591698, 39.964672, 34.080727>,  <32.679653, 40.162907, 34.183525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591698, 39.964672, 34.080727>,  <32.445103, 39.634285, 33.909397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591698, 39.964672, 34.080727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929142, -0.300744, -0.215052,
		-0.048812, 0.476784, -0.877664,
		0.366485, 0.825972, 0.428320,
		32.701645, 40.212463, 34.209221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951660, 39.739532, 33.526009>,  <32.445103, 39.634285, 33.909397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951660, 39.739532, 33.526009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047783, 39.941471, 33.857643>,  <33.105457, 40.062634, 34.056625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047783, 39.941471, 33.857643>,  <32.951660, 39.739532, 33.526009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047783, 39.941471, 33.857643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960865, -0.244967, -0.129339,
		0.137802, 0.827720, -0.543957,
		0.240309, 0.504846, 0.829085,
		33.119877, 40.092926, 34.106369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479889, 40.153618, 33.376461>,  <32.951660, 39.739532, 33.526009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479889, 40.153618, 33.376461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515057, 40.093884, 33.770409>,  <33.536160, 40.058044, 34.006779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515057, 40.093884, 33.770409>,  <33.479889, 40.153618, 33.376461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515057, 40.093884, 33.770409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971745, -0.204557, -0.117766,
		0.219049, 0.967396, 0.127131,
		0.087921, -0.149335, 0.984870,
		33.541431, 40.049084, 34.065868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799038, 40.642933, 33.542469>,  <33.479889, 40.153618, 33.376461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799038, 40.642933, 33.542469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847668, 40.339676, 33.798733>,  <33.876846, 40.157722, 33.952492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847668, 40.339676, 33.798733>,  <33.799038, 40.642933, 33.542469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847668, 40.339676, 33.798733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967207, -0.054530, -0.248066,
		0.223005, 0.649804, 0.726652,
		0.121570, -0.758143, 0.640655,
		33.884140, 40.112232, 33.990929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343105, 40.756557, 34.096184>,  <33.799038, 40.642933, 33.542469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343105, 40.756557, 34.096184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301609, 40.364460, 34.028831>,  <34.276711, 40.129200, 33.988419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301609, 40.364460, 34.028831>,  <34.343105, 40.756557, 34.096184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301609, 40.364460, 34.028831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984696, -0.077388, -0.156156,
		0.140041, -0.182004, 0.973274,
		-0.103741, -0.980248, -0.168381,
		34.270485, 40.070385, 33.978317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818695, 40.474140, 34.601349>,  <34.343105, 40.756557, 34.096184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818695, 40.474140, 34.601349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776581, 40.245613, 34.275772>,  <34.751312, 40.108498, 34.080425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776581, 40.245613, 34.275772>,  <34.818695, 40.474140, 34.601349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776581, 40.245613, 34.275772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974896, 0.102178, -0.197830,
		0.196191, -0.814343, 0.546218,
		-0.105289, -0.571319, -0.813946,
		34.744995, 40.074219, 34.031590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234100, 39.878242, 34.770645>,  <34.818695, 40.474140, 34.601349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234100, 39.878242, 34.770645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581493, 39.977039, 34.942566>,  <35.789928, 40.036316, 35.045719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581493, 39.977039, 34.942566>,  <35.234100, 39.878242, 34.770645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581493, 39.977039, 34.942566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195936, 0.625388, -0.755314,
		-0.455349, 0.740192, 0.494745,
		0.868485, 0.246993, 0.429801,
		35.842037, 40.051136, 35.071507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044083, 39.173054, 34.588852>,  <35.234100, 39.878242, 34.770645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044083, 39.173054, 34.588852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841450, 39.066681, 34.260792>,  <34.719868, 39.002857, 34.063953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841450, 39.066681, 34.260792>,  <35.044083, 39.173054, 34.588852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841450, 39.066681, 34.260792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856341, -0.265809, -0.442748,
		-0.100263, -0.926620, 0.362385,
		-0.506585, -0.265934, -0.820153,
		34.689476, 38.986900, 34.014748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092991, 38.476814, 34.618511>,  <35.044083, 39.173054, 34.588852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092991, 38.476814, 34.618511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017616, 38.601765, 34.246078>,  <34.972393, 38.676735, 34.022617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017616, 38.601765, 34.246078>,  <35.092991, 38.476814, 34.618511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017616, 38.601765, 34.246078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672067, -0.650290, -0.354187,
		-0.716113, -0.692490, -0.087402,
		-0.188435, 0.312378, -0.931081,
		34.961086, 38.695477, 33.966755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987759, 37.883984, 34.203583>,  <35.092991, 38.476814, 34.618511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987759, 37.883984, 34.203583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117119, 38.204132, 34.001663>,  <35.194736, 38.396221, 33.880512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117119, 38.204132, 34.001663>,  <34.987759, 37.883984, 34.203583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117119, 38.204132, 34.001663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799083, -0.516728, -0.307340,
		-0.506829, -0.303983, -0.806671,
		0.323403, 0.800366, -0.504801,
		35.214138, 38.444241, 33.850224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189964, 37.631115, 33.594624>,  <34.987759, 37.883984, 34.203583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189964, 37.631115, 33.594624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393047, 37.973175, 33.636475>,  <35.514896, 38.178413, 33.661587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393047, 37.973175, 33.636475>,  <35.189964, 37.631115, 33.594624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393047, 37.973175, 33.636475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834397, -0.457844, -0.306854,
		-0.214504, 0.243093, -0.945988,
		0.507709, 0.855152, 0.104627,
		35.545361, 38.229721, 33.667862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662464, 37.605015, 33.071716>,  <35.189964, 37.631115, 33.594624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662464, 37.605015, 33.071716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804600, 37.893616, 33.309425>,  <35.889881, 38.066776, 33.452053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804600, 37.893616, 33.309425>,  <35.662464, 37.605015, 33.071716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804600, 37.893616, 33.309425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933913, -0.300718, -0.193325,
		0.039225, 0.623698, -0.780681,
		0.355341, 0.721505, 0.594275,
		35.911201, 38.110065, 33.487709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307781, 37.689144, 32.785419>,  <35.662464, 37.605015, 33.071716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307781, 37.689144, 32.785419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350243, 37.883049, 33.132694>,  <36.375721, 37.999390, 33.341057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350243, 37.883049, 33.132694>,  <36.307781, 37.689144, 32.785419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350243, 37.883049, 33.132694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970469, -0.240712, 0.015740,
		0.216612, 0.840873, -0.495996,
		0.106157, 0.484758, 0.868182,
		36.382092, 38.028477, 33.393150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814129, 37.944664, 32.627193>,  <36.307781, 37.689144, 32.785419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814129, 37.944664, 32.627193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782307, 37.895046, 33.022827>,  <36.763214, 37.865276, 33.260208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782307, 37.895046, 33.022827>,  <36.814129, 37.944664, 32.627193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782307, 37.895046, 33.022827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922043, -0.386231, 0.025723,
		0.378823, 0.914023, 0.145100,
		-0.079553, -0.124045, 0.989083,
		36.758442, 37.857834, 33.319553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319469, 38.374695, 32.972630>,  <36.814129, 37.944664, 32.627193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319469, 38.374695, 32.972630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211796, 38.091938, 33.234268>,  <37.147190, 37.922283, 33.391251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211796, 38.091938, 33.234268>,  <37.319469, 38.374695, 32.972630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211796, 38.091938, 33.234268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960234, -0.249240, 0.125816,
		0.074088, 0.661953, 0.745875,
		-0.269186, -0.706893, 0.654096,
		37.131039, 37.879871, 33.430496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878529, 38.401745, 33.446774>,  <37.319469, 38.374695, 32.972630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878529, 38.401745, 33.446774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698654, 38.051205, 33.515816>,  <37.590729, 37.840881, 33.557240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698654, 38.051205, 33.515816>,  <37.878529, 38.401745, 33.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698654, 38.051205, 33.515816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892781, -0.435206, 0.116349,
		-0.026844, 0.206419, 0.978095,
		-0.449690, -0.876349, 0.172605,
		37.563747, 37.788300, 33.567596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982414, 38.148518, 34.151470>,  <37.878529, 38.401745, 33.446774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982414, 38.148518, 34.151470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923126, 37.833004, 33.912857>,  <37.887554, 37.643696, 33.769688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923126, 37.833004, 33.912857>,  <37.982414, 38.148518, 34.151470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923126, 37.833004, 33.912857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917061, -0.335410, 0.215636,
		-0.370173, -0.515097, 0.773076,
		-0.148224, -0.788781, -0.596536,
		37.878658, 37.596371, 33.733898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140888, 37.643505, 34.617374>,  <37.982414, 38.148518, 34.151470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140888, 37.643505, 34.617374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228504, 37.529575, 34.244087>,  <38.281075, 37.461216, 34.020115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228504, 37.529575, 34.244087>,  <38.140888, 37.643505, 34.617374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228504, 37.529575, 34.244087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903687, -0.301440, 0.304112,
		-0.367927, -0.909951, 0.191362,
		0.219042, -0.284822, -0.933218,
		38.294216, 37.444130, 33.964123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153862, 36.873493, 34.494003>,  <38.140888, 37.643505, 34.617374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153862, 36.873493, 34.494003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418392, 37.061745, 34.260368>,  <38.577110, 37.174698, 34.120190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418392, 37.061745, 34.260368>,  <38.153862, 36.873493, 34.494003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418392, 37.061745, 34.260368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750078, -0.409362, 0.519428,
		0.005358, -0.781619, -0.623732,
		0.661327, 0.470631, -0.584083,
		38.616791, 37.202934, 34.085144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373421, 36.160789, 34.662418>,  <38.153862, 36.873493, 34.494003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373421, 36.160789, 34.662418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601330, 35.883564, 34.485775>,  <38.738075, 35.717228, 34.379787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601330, 35.883564, 34.485775>,  <38.373421, 36.160789, 34.662418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601330, 35.883564, 34.485775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598303, 0.718218, -0.355241,
		0.563377, -0.061809, 0.823885,
		0.569772, -0.693067, -0.441608,
		38.772263, 35.675644, 34.353294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086613, 36.133160, 34.831253>,  <38.373421, 36.160789, 34.662418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086613, 36.133160, 34.831253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083794, 35.971184, 34.465527>,  <39.082100, 35.873997, 34.246090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083794, 35.971184, 34.465527>,  <39.086613, 36.133160, 34.831253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083794, 35.971184, 34.465527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627636, 0.710014, -0.319301,
		0.778475, -0.576108, 0.249152,
		-0.007051, -0.404944, -0.914314,
		39.081680, 35.849701, 34.191231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813850, 36.061493, 34.575325>,  <39.086613, 36.133160, 34.831253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813850, 36.061493, 34.575325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532833, 36.097809, 34.292992>,  <39.364223, 36.119598, 34.123592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532833, 36.097809, 34.292992>,  <39.813850, 36.061493, 34.575325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532833, 36.097809, 34.292992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466571, 0.807681, -0.360503,
		0.537354, -0.582587, -0.609789,
		-0.702540, 0.090793, -0.705829,
		39.322071, 36.125046, 34.081242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055023, 35.857624, 35.233471>,  <39.813850, 36.061493, 34.575325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055023, 35.857624, 35.233471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229210, 35.616055, 35.500496>,  <40.333721, 35.471111, 35.660709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229210, 35.616055, 35.500496>,  <40.055023, 35.857624, 35.233471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229210, 35.616055, 35.500496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787873, 0.614412, 0.041892,
		-0.435457, 0.507710, 0.743375,
		0.435469, -0.603927, 0.667561,
		40.359852, 35.434875, 35.700764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371021, 36.304554, 35.720711>,  <40.055023, 35.857624, 35.233471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371021, 36.304554, 35.720711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560059, 35.953289, 35.750332>,  <40.673481, 35.742531, 35.768105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560059, 35.953289, 35.750332>,  <40.371021, 36.304554, 35.720711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560059, 35.953289, 35.750332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875766, 0.477360, 0.071842,
		-0.098440, 0.030902, 0.994663,
		0.472593, -0.878164, 0.074054,
		40.701836, 35.689838, 35.772549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991146, 36.255524, 36.194798>,  <40.371021, 36.304554, 35.720711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991146, 36.255524, 36.194798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038258, 35.990589, 35.898838>,  <41.066525, 35.831631, 35.721264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038258, 35.990589, 35.898838>,  <40.991146, 36.255524, 36.194798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038258, 35.990589, 35.898838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964916, 0.252395, -0.072344,
		0.234662, -0.705417, 0.668821,
		0.117775, -0.662332, -0.739895,
		41.073589, 35.791889, 35.676868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416031, 35.544640, 36.338406>,  <40.991146, 36.255524, 36.194798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416031, 35.544640, 36.338406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447243, 35.768333, 36.008274>,  <41.465969, 35.902550, 35.810196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447243, 35.768333, 36.008274>,  <41.416031, 35.544640, 36.338406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447243, 35.768333, 36.008274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910123, 0.297944, 0.287931,
		0.406924, -0.773616, -0.485727,
		0.078028, 0.559238, -0.825327,
		41.470650, 35.936104, 35.760677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954483, 35.323509, 35.903954>,  <41.416031, 35.544640, 36.338406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954483, 35.323509, 35.903954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871799, 35.713860, 35.875851>,  <41.822189, 35.948071, 35.858990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871799, 35.713860, 35.875851>,  <41.954483, 35.323509, 35.903954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871799, 35.713860, 35.875851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869617, 0.216161, 0.443893,
		0.448372, 0.030657, -0.893321,
		-0.206709, 0.975876, -0.070261,
		41.809788, 36.006622, 35.854771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630806, 35.596024, 35.681232>,  <41.954483, 35.323509, 35.903954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630806, 35.596024, 35.681232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443459, 35.889389, 35.878307>,  <42.331051, 36.065407, 35.996552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443459, 35.889389, 35.878307>,  <42.630806, 35.596024, 35.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443459, 35.889389, 35.878307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873149, 0.298968, 0.385005,
		0.135068, 0.610514, -0.780403,
		-0.468366, 0.733410, 0.492689,
		42.302948, 36.109413, 36.026115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890293, 36.356194, 35.540592>,  <42.630806, 35.596024, 35.681232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890293, 36.356194, 35.540592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768696, 36.247288, 35.905769>,  <42.695740, 36.181946, 36.124874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768696, 36.247288, 35.905769>,  <42.890293, 36.356194, 35.540592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768696, 36.247288, 35.905769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913076, 0.190153, 0.360742,
		-0.271815, 0.943247, 0.190792,
		-0.303989, -0.272263, 0.912942,
		42.677498, 36.165607, 36.179653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307770, 36.797264, 35.855534>,  <42.890293, 36.356194, 35.540592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307770, 36.797264, 35.855534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138065, 36.526104, 36.095684>,  <43.036243, 36.363407, 36.239777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138065, 36.526104, 36.095684>,  <43.307770, 36.797264, 35.855534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138065, 36.526104, 36.095684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809106, 0.013937, 0.587497,
		-0.406631, 0.735023, 0.542579,
		-0.424262, -0.677898, 0.600379,
		43.010788, 36.322735, 36.275799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866371, 36.936253, 35.488132>,  <43.307770, 36.797264, 35.855534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866371, 36.936253, 35.488132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078556, 36.958069, 35.826511>,  <44.205868, 36.971157, 36.029541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078556, 36.958069, 35.826511>,  <43.866371, 36.936253, 35.488132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078556, 36.958069, 35.826511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846701, 0.014508, -0.531872,
		-0.041282, 0.998406, -0.038483,
		0.530466, 0.054540, 0.845950,
		44.237698, 36.974430, 36.080296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329166, 37.547707, 35.556454>,  <43.866371, 36.936253, 35.488132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329166, 37.547707, 35.556454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478630, 37.239510, 35.763035>,  <44.568310, 37.054592, 35.886982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478630, 37.239510, 35.763035>,  <44.329166, 37.547707, 35.556454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478630, 37.239510, 35.763035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822926, 0.018470, -0.567848,
		0.427984, 0.637181, 0.640960,
		0.373660, -0.770493, 0.516448,
		44.590729, 37.008362, 35.917969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077072, 37.620205, 35.804108>,  <44.329166, 37.547707, 35.556454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077072, 37.620205, 35.804108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024086, 37.227741, 35.747856>,  <44.992294, 36.992264, 35.714108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024086, 37.227741, 35.747856>,  <45.077072, 37.620205, 35.804108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024086, 37.227741, 35.747856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716887, 0.003134, -0.697183,
		0.684489, -0.193167, 0.702966,
		-0.132470, -0.981161, -0.140624,
		44.984344, 36.933392, 35.705669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628124, 37.106419, 35.925255>,  <45.077072, 37.620205, 35.804108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628124, 37.106419, 35.925255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416050, 36.972305, 35.613747>,  <45.288803, 36.891838, 35.426842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416050, 36.972305, 35.613747>,  <45.628124, 37.106419, 35.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416050, 36.972305, 35.613747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844354, -0.125114, -0.520973,
		0.077240, -0.933771, 0.349436,
		-0.530189, -0.335288, -0.778770,
		45.256992, 36.871719, 35.380116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861435, 36.350719, 35.839485>,  <45.628124, 37.106419, 35.925255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861435, 36.350719, 35.839485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.744793, 36.570164, 35.526054>,  <45.674809, 36.701832, 35.337997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.744793, 36.570164, 35.526054>,  <45.861435, 36.350719, 35.839485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.744793, 36.570164, 35.526054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920993, -0.060211, -0.384898,
		-0.258339, -0.833908, -0.487708,
		-0.291604, 0.548609, -0.783578,
		45.657310, 36.734745, 35.290981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192669, 36.176144, 35.227928>,  <45.861435, 36.350719, 35.839485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192669, 36.176144, 35.227928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058167, 36.535675, 35.115471>,  <45.977463, 36.751392, 35.047997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058167, 36.535675, 35.115471>,  <46.192669, 36.176144, 35.227928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058167, 36.535675, 35.115471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866543, 0.178380, -0.466138,
		-0.368826, -0.400366, -0.838853,
		-0.336260, 0.898826, -0.281143,
		45.957287, 36.805325, 35.031128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928135, 36.241112, 35.109943>,  <46.192669, 36.176144, 35.227928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928135, 36.241112, 35.109943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899990, 35.886459, 34.927101>,  <46.883102, 35.673668, 34.817398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899990, 35.886459, 34.927101>,  <46.928135, 36.241112, 35.109943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.899990, 35.886459, 34.927101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578543, 0.337023, -0.742767,
		0.812611, -0.316715, 0.489238,
		-0.070361, -0.886627, -0.457102,
		46.878883, 35.620472, 34.789970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502071, 35.663399, 35.022034>,  <46.928135, 36.241112, 35.109943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502071, 35.663399, 35.022034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528023, 35.281097, 34.907269>,  <47.543594, 35.051716, 34.838409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528023, 35.281097, 34.907269>,  <47.502071, 35.663399, 35.022034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.528023, 35.281097, 34.907269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203059, 0.268855, -0.941533,
		0.977014, 0.119349, -0.176631,
		0.064883, -0.955758, -0.286910,
		47.547489, 34.994370, 34.821194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.326012, 30.456234, 26.163961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932709, 30.505178, 26.217960>,  <34.696728, 30.534546, 26.250360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932709, 30.505178, 26.217960>,  <35.326012, 30.456234, 26.163961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932709, 30.505178, 26.217960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150026, 0.123277, 0.980966,
		0.103392, 0.984799, -0.139571,
		-0.983261, 0.122363, 0.134999,
		34.637730, 30.541887, 26.258461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163345, 31.118162, 26.572403>,  <35.326012, 30.456234, 26.163961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163345, 31.118162, 26.572403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884155, 30.835672, 26.619862>,  <34.716640, 30.666180, 26.648336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884155, 30.835672, 26.619862>,  <35.163345, 31.118162, 26.572403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884155, 30.835672, 26.619862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057157, 0.110210, 0.992264,
		-0.713834, 0.699360, -0.036559,
		-0.697978, -0.706222, 0.118645,
		34.674763, 30.623806, 26.655455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633133, 31.452965, 26.893381>,  <35.163345, 31.118162, 26.572403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633133, 31.452965, 26.893381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.610176, 31.061699, 26.973280>,  <34.596401, 30.826939, 27.021219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.610176, 31.061699, 26.973280>,  <34.633133, 31.452965, 26.893381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610176, 31.061699, 26.973280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123306, 0.205493, 0.970860,
		-0.990708, 0.031092, -0.132408,
		-0.057395, -0.978164, 0.199749,
		34.592957, 30.768250, 27.033205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207893, 31.435400, 27.401340>,  <34.633133, 31.452965, 26.893381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207893, 31.435400, 27.401340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393261, 31.081074, 27.410929>,  <34.504482, 30.868477, 27.416681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393261, 31.081074, 27.410929>,  <34.207893, 31.435400, 27.401340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393261, 31.081074, 27.410929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130005, 0.094723, 0.986978,
		-0.876553, -0.454264, 0.159057,
		0.463416, -0.885817, 0.023973,
		34.532284, 30.815329, 27.418121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938847, 30.950195, 27.852728>,  <34.207893, 31.435400, 27.401340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938847, 30.950195, 27.852728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.299885, 30.778807, 27.836065>,  <34.516506, 30.675974, 27.826069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.299885, 30.778807, 27.836065>,  <33.938847, 30.950195, 27.852728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299885, 30.778807, 27.836065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065144, 0.040295, 0.997062,
		-0.425536, -0.902655, 0.064283,
		0.902594, -0.428473, -0.041656,
		34.570663, 30.650265, 27.823568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881077, 30.435730, 28.308094>,  <33.938847, 30.950195, 27.852728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881077, 30.435730, 28.308094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276714, 30.492582, 28.292692>,  <34.514099, 30.526693, 28.283451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276714, 30.492582, 28.292692>,  <33.881077, 30.435730, 28.308094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276714, 30.492582, 28.292692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044724, -0.040822, 0.998165,
		0.140301, -0.989005, -0.046734,
		0.989098, 0.142133, -0.038505,
		34.573444, 30.535223, 28.281141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196552, 30.103519, 28.877794>,  <33.881077, 30.435730, 28.308094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196552, 30.103519, 28.877794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471786, 30.377617, 28.782314>,  <34.636929, 30.542076, 28.725025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471786, 30.377617, 28.782314>,  <34.196552, 30.103519, 28.877794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471786, 30.377617, 28.782314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447720, -0.142053, 0.882818,
		0.571037, -0.714327, -0.404542,
		0.688086, 0.685243, -0.238701,
		34.678211, 30.583189, 28.710705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832130, 29.989183, 29.364185>,  <34.196552, 30.103519, 28.877794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832130, 29.989183, 29.364185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.914059, 30.350424, 29.213211>,  <34.963215, 30.567167, 29.122627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.914059, 30.350424, 29.213211>,  <34.832130, 29.989183, 29.364185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914059, 30.350424, 29.213211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484131, 0.241665, 0.840961,
		0.850685, -0.354976, -0.387721,
		0.204822, 0.903100, -0.377435,
		34.975506, 30.621353, 29.099981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505795, 30.125406, 29.647598>,  <34.832130, 29.989183, 29.364185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505795, 30.125406, 29.647598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381416, 30.482441, 29.517000>,  <35.306789, 30.696663, 29.438643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381416, 30.482441, 29.517000>,  <35.505795, 30.125406, 29.647598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381416, 30.482441, 29.517000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354685, 0.427686, 0.831434,
		0.881765, 0.142731, -0.449576,
		-0.310949, 0.892587, -0.326494,
		35.288132, 30.750217, 29.419052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046967, 30.571299, 29.808340>,  <35.505795, 30.125406, 29.647598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046967, 30.571299, 29.808340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732170, 30.811520, 29.751801>,  <35.543293, 30.955652, 29.717876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732170, 30.811520, 29.751801>,  <36.046967, 30.571299, 29.808340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732170, 30.811520, 29.751801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221784, 0.489169, 0.843520,
		0.575720, 0.632495, -0.518166,
		-0.786993, 0.600552, -0.141347,
		35.496071, 30.991686, 29.709396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271778, 31.193525, 29.615892>,  <36.046967, 30.571299, 29.808340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271778, 31.193525, 29.615892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925209, 31.254848, 29.805971>,  <35.717270, 31.291643, 29.920019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925209, 31.254848, 29.805971>,  <36.271778, 31.193525, 29.615892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925209, 31.254848, 29.805971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474734, 0.547865, 0.688819,
		-0.154741, 0.822399, -0.547463,
		-0.866420, 0.153310, 0.475198,
		35.665283, 31.300842, 29.948530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351433, 31.866520, 29.832943>,  <36.271778, 31.193525, 29.615892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351433, 31.866520, 29.832943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051308, 31.726942, 30.057535>,  <35.871231, 31.643196, 30.192291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051308, 31.726942, 30.057535>,  <36.351433, 31.866520, 29.832943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051308, 31.726942, 30.057535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335225, 0.531212, 0.778099,
		-0.569779, 0.772044, -0.281603,
		-0.750317, -0.348945, 0.561482,
		35.826214, 31.622259, 30.225979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245892, 32.387630, 30.260256>,  <36.351433, 31.866520, 29.832943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245892, 32.387630, 30.260256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075413, 32.086098, 30.460293>,  <35.973125, 31.905178, 30.580315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075413, 32.086098, 30.460293>,  <36.245892, 32.387630, 30.260256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075413, 32.086098, 30.460293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109871, 0.505588, 0.855750,
		-0.897935, 0.419661, -0.132653,
		-0.426193, -0.753834, 0.500094,
		35.947556, 31.859947, 30.610321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697979, 32.732292, 30.575701>,  <36.245892, 32.387630, 30.260256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697979, 32.732292, 30.575701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766853, 32.407574, 30.798893>,  <35.808178, 32.212742, 30.932808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766853, 32.407574, 30.798893>,  <35.697979, 32.732292, 30.575701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766853, 32.407574, 30.798893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064272, 0.574492, 0.815983,
		-0.982965, -0.104639, 0.151095,
		0.172186, -0.811794, 0.557981,
		35.818508, 32.164036, 30.966288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361706, 32.955315, 31.151363>,  <35.697979, 32.732292, 30.575701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361706, 32.955315, 31.151363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552944, 32.627571, 31.277901>,  <35.667686, 32.430923, 31.353823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552944, 32.627571, 31.277901>,  <35.361706, 32.955315, 31.151363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552944, 32.627571, 31.277901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029161, 0.374783, 0.926654,
		-0.877825, -0.433802, 0.203075,
		0.478093, -0.819362, 0.316344,
		35.696373, 32.381763, 31.372805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035439, 32.615681, 31.892408>,  <35.361706, 32.955315, 31.151363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035439, 32.615681, 31.892408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414394, 32.493835, 31.853085>,  <35.641769, 32.420731, 31.829491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414394, 32.493835, 31.853085>,  <35.035439, 32.615681, 31.892408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414394, 32.493835, 31.853085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205261, 0.342502, 0.916821,
		-0.245601, -0.888766, 0.387007,
		0.947390, -0.304610, -0.098310,
		35.698612, 32.402454, 31.823591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176392, 32.523182, 32.559181>,  <35.035439, 32.615681, 31.892408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176392, 32.523182, 32.559181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520096, 32.556698, 32.357327>,  <35.726318, 32.576805, 32.236214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520096, 32.556698, 32.357327>,  <35.176392, 32.523182, 32.559181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520096, 32.556698, 32.357327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438770, 0.386430, 0.811266,
		0.262978, -0.918505, 0.295281,
		0.859258, 0.083785, -0.504635,
		35.777874, 32.581833, 32.205936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623726, 32.196121, 33.004101>,  <35.176392, 32.523182, 32.559181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623726, 32.196121, 33.004101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808159, 32.442284, 32.748390>,  <35.918819, 32.589981, 32.594963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808159, 32.442284, 32.748390>,  <35.623726, 32.196121, 33.004101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808159, 32.442284, 32.748390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296240, 0.572339, 0.764637,
		0.836446, -0.541942, 0.081589,
		0.461086, 0.615408, -0.639276,
		35.946484, 32.626907, 32.556606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333038, 32.384495, 33.323860>,  <35.623726, 32.196121, 33.004101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333038, 32.384495, 33.323860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273205, 32.668228, 33.048332>,  <36.237305, 32.838470, 32.883015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273205, 32.668228, 33.048332>,  <36.333038, 32.384495, 33.323860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273205, 32.668228, 33.048332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305067, 0.695775, 0.650254,
		0.940510, -0.112868, -0.320471,
		-0.149583, 0.709336, -0.688816,
		36.228329, 32.881027, 32.841686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978828, 32.865257, 33.367687>,  <36.333038, 32.384495, 33.323860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978828, 32.865257, 33.367687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680161, 33.073963, 33.202644>,  <36.500957, 33.199188, 33.103619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680161, 33.073963, 33.202644>,  <36.978828, 32.865257, 33.367687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680161, 33.073963, 33.202644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104539, 0.704613, 0.701849,
		0.656925, 0.480919, -0.580661,
		-0.746674, 0.521764, -0.412603,
		36.456158, 33.230492, 33.078865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197723, 33.467125, 33.226894>,  <36.978828, 32.865257, 33.367687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197723, 33.467125, 33.226894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802826, 33.517494, 33.265854>,  <36.565887, 33.547718, 33.289230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802826, 33.517494, 33.265854>,  <37.197723, 33.467125, 33.226894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802826, 33.517494, 33.265854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159119, 0.799543, 0.579148,
		-0.004942, 0.587260, -0.809383,
		-0.987247, 0.125926, 0.097396,
		36.506653, 33.555271, 33.295074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425789, 34.100574, 32.830589>,  <37.197723, 33.467125, 33.226894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425789, 34.100574, 32.830589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.784004, 34.266689, 32.766655>,  <37.998932, 34.366360, 32.728294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.784004, 34.266689, 32.766655>,  <37.425789, 34.100574, 32.830589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784004, 34.266689, 32.766655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178156, -0.663763, -0.726416,
		-0.407765, 0.622057, -0.668411,
		0.895538, 0.415288, -0.159836,
		38.052666, 34.391277, 32.718704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484283, 34.199036, 32.061916>,  <37.425789, 34.100574, 32.830589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484283, 34.199036, 32.061916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864349, 34.200954, 32.186596>,  <38.092392, 34.202106, 32.261402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864349, 34.200954, 32.186596>,  <37.484283, 34.199036, 32.061916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864349, 34.200954, 32.186596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259900, -0.564299, -0.783594,
		0.172133, 0.825557, -0.537425,
		0.950170, 0.004795, 0.311697,
		38.149399, 34.202393, 32.280106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852329, 34.470360, 31.512518>,  <37.484283, 34.199036, 32.061916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852329, 34.470360, 31.512518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104504, 34.269341, 31.749159>,  <38.255810, 34.148731, 31.891144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104504, 34.269341, 31.749159>,  <37.852329, 34.470360, 31.512518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104504, 34.269341, 31.749159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389961, -0.453940, -0.801167,
		0.671175, 0.735789, -0.090208,
		0.630440, -0.502546, 0.591602,
		38.293636, 34.118576, 31.926640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582584, 34.486538, 31.199789>,  <37.852329, 34.470360, 31.512518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582584, 34.486538, 31.199789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586658, 34.161591, 31.433010>,  <38.589104, 33.966621, 31.572943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586658, 34.161591, 31.433010>,  <38.582584, 34.486538, 31.199789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586658, 34.161591, 31.433010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342554, -0.544965, -0.765290,
		0.939443, 0.207522, 0.272730,
		0.010187, -0.812371, 0.583051,
		38.589714, 33.917881, 31.607925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190094, 34.201904, 31.125956>,  <38.582584, 34.486538, 31.199789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190094, 34.201904, 31.125956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970062, 33.905354, 31.279720>,  <38.838043, 33.727425, 31.371979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970062, 33.905354, 31.279720>,  <39.190094, 34.201904, 31.125956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970062, 33.905354, 31.279720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097718, -0.514291, -0.852030,
		0.829377, -0.431118, 0.355346,
		-0.550077, -0.741378, 0.384413,
		38.805038, 33.682941, 31.395044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373417, 33.619953, 30.701298>,  <39.190094, 34.201904, 31.125956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373417, 33.619953, 30.701298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051838, 33.464420, 30.881287>,  <38.858891, 33.371101, 30.989281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051838, 33.464420, 30.881287>,  <39.373417, 33.619953, 30.701298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051838, 33.464420, 30.881287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110749, -0.645511, -0.755679,
		0.584296, -0.657360, 0.475894,
		-0.803948, -0.388836, 0.449972,
		38.810654, 33.347771, 31.016277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361916, 32.821774, 30.590145>,  <39.373417, 33.619953, 30.701298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361916, 32.821774, 30.590145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.985092, 32.929077, 30.670702>,  <38.758999, 32.993458, 30.719036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.985092, 32.929077, 30.670702>,  <39.361916, 32.821774, 30.590145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985092, 32.929077, 30.670702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332682, -0.670280, -0.663360,
		-0.042962, -0.691925, 0.720690,
		-0.942060, 0.268260, 0.201394,
		38.702473, 33.009556, 30.731121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976006, 32.215706, 30.798866>,  <39.361916, 32.821774, 30.590145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976006, 32.215706, 30.798866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725460, 32.496254, 30.662775>,  <38.575134, 32.664581, 30.581121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725460, 32.496254, 30.662775>,  <38.976006, 32.215706, 30.798866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725460, 32.496254, 30.662775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238682, -0.588041, -0.772812,
		-0.742092, -0.402855, 0.535730,
		-0.626363, 0.701367, -0.340226,
		38.537552, 32.706665, 30.560707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402699, 31.859343, 30.649279>,  <38.976006, 32.215706, 30.798866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402699, 31.859343, 30.649279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366619, 32.190331, 30.427591>,  <38.344971, 32.388924, 30.294579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366619, 32.190331, 30.427591>,  <38.402699, 31.859343, 30.649279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366619, 32.190331, 30.427591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178166, -0.560914, -0.808475,
		-0.979858, 0.025820, 0.198021,
		-0.090198, 0.827471, -0.554217,
		38.339561, 32.438572, 30.261326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741455, 31.717052, 30.205458>,  <38.402699, 31.859343, 30.649279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741455, 31.717052, 30.205458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934612, 32.029549, 30.047232>,  <38.050507, 32.217045, 29.952295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934612, 32.029549, 30.047232>,  <37.741455, 31.717052, 30.205458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934612, 32.029549, 30.047232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170616, -0.359127, -0.917561,
		-0.858895, 0.510578, -0.040129,
		0.482897, 0.781241, -0.395566,
		38.079483, 32.263920, 29.928562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355911, 31.928324, 29.656172>,  <37.741455, 31.717052, 30.205458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355911, 31.928324, 29.656172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699238, 32.106613, 29.554483>,  <37.905231, 32.213589, 29.493471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699238, 32.106613, 29.554483>,  <37.355911, 31.928324, 29.656172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699238, 32.106613, 29.554483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185868, -0.191722, -0.963689,
		-0.478280, 0.874398, -0.081712,
		0.858313, 0.445725, -0.254219,
		37.956734, 32.240330, 29.478218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220867, 32.355358, 29.060844>,  <37.355911, 31.928324, 29.656172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220867, 32.355358, 29.060844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608570, 32.257915, 29.074627>,  <37.841194, 32.199451, 29.082897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608570, 32.257915, 29.074627>,  <37.220867, 32.355358, 29.060844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608570, 32.257915, 29.074627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059122, -0.366566, -0.928512,
		0.238822, 0.897934, -0.369701,
		0.969262, -0.243606, 0.034456,
		37.899349, 32.184834, 29.084963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456844, 32.578747, 28.469343>,  <37.220867, 32.355358, 29.060844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456844, 32.578747, 28.469343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729851, 32.309532, 28.583321>,  <37.893654, 32.148003, 28.651707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729851, 32.309532, 28.583321>,  <37.456844, 32.578747, 28.469343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729851, 32.309532, 28.583321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028746, -0.364845, -0.930624,
		0.730307, 0.643356, -0.229664,
		0.682514, -0.673039, 0.284943,
		37.934605, 32.107620, 28.668804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062290, 32.600510, 27.907154>,  <37.456844, 32.578747, 28.469343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062290, 32.600510, 27.907154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014706, 32.255489, 28.103868>,  <37.986156, 32.048477, 28.221897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014706, 32.255489, 28.103868>,  <38.062290, 32.600510, 27.907154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014706, 32.255489, 28.103868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025238, -0.492516, -0.869938,
		0.992579, -0.115898, 0.036820,
		-0.118958, -0.862552, 0.491785,
		37.979019, 31.996723, 28.251404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432404, 32.049786, 27.546795>,  <38.062290, 32.600510, 27.907154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432404, 32.049786, 27.546795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198971, 31.829079, 27.785116>,  <38.058910, 31.696653, 27.928108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198971, 31.829079, 27.785116>,  <38.432404, 32.049786, 27.546795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198971, 31.829079, 27.785116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176248, -0.630147, -0.756209,
		0.792695, -0.546321, 0.270497,
		-0.583585, -0.551768, 0.595802,
		38.023895, 31.663548, 27.963858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640781, 31.372263, 27.427088>,  <38.432404, 32.049786, 27.546795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640781, 31.372263, 27.427088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275181, 31.344021, 27.586891>,  <38.055820, 31.327076, 27.682774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275181, 31.344021, 27.586891>,  <38.640781, 31.372263, 27.427088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275181, 31.344021, 27.586891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266151, -0.638870, -0.721809,
		0.306199, -0.766068, 0.565140,
		-0.914006, -0.070605, 0.399511,
		38.000980, 31.322840, 27.706745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528603, 30.674473, 27.510769>,  <38.640781, 31.372263, 27.427088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528603, 30.674473, 27.510769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157101, 30.822718, 27.507526>,  <37.934200, 30.911665, 27.505581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157101, 30.822718, 27.507526>,  <38.528603, 30.674473, 27.510769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157101, 30.822718, 27.507526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227221, -0.586418, -0.777486,
		-0.292896, -0.720251, 0.628848,
		-0.928753, 0.370610, -0.008104,
		37.878475, 30.933901, 27.505095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103439, 30.037748, 27.542379>,  <38.528603, 30.674473, 27.510769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103439, 30.037748, 27.542379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866138, 30.338785, 27.428080>,  <37.723759, 30.519407, 27.359501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866138, 30.338785, 27.428080>,  <38.103439, 30.037748, 27.542379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866138, 30.338785, 27.428080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331027, -0.551626, -0.765591,
		-0.733804, -0.359601, 0.576384,
		-0.593256, 0.752592, -0.285748,
		37.688160, 30.564564, 27.342356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514080, 29.766811, 27.256981>,  <38.103439, 30.037748, 27.542379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514080, 29.766811, 27.256981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440208, 30.134552, 27.118019>,  <37.395885, 30.355196, 27.034643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440208, 30.134552, 27.118019>,  <37.514080, 29.766811, 27.256981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440208, 30.134552, 27.118019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321168, -0.390533, -0.862749,
		-0.928840, -0.047760, 0.367391,
		-0.184683, 0.919349, -0.347403,
		37.384804, 30.410357, 27.013798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.742302, 29.995996, 27.056240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969463, 30.218538, 26.813602>,  <37.105759, 30.352062, 26.668020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969463, 30.218538, 26.813602>,  <36.742302, 29.995996, 27.056240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969463, 30.218538, 26.813602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239984, -0.593029, -0.768586,
		-0.787333, 0.582056, -0.203268,
		0.567904, 0.556352, -0.606595,
		37.139835, 30.385445, 26.631624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272919, 30.146282, 26.518030>,  <36.742302, 29.995996, 27.056240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272919, 30.146282, 26.518030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646675, 30.200569, 26.386278>,  <36.870930, 30.233141, 26.307226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646675, 30.200569, 26.386278>,  <36.272919, 30.146282, 26.518030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646675, 30.200569, 26.386278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243037, -0.433165, -0.867929,
		-0.260470, 0.891038, -0.371761,
		0.934392, 0.135718, -0.329382,
		36.926994, 30.241285, 26.287464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124866, 30.639771, 25.911037>,  <36.272919, 30.146282, 26.518030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124866, 30.639771, 25.911037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496971, 30.497093, 25.876678>,  <36.720234, 30.411488, 25.856062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496971, 30.497093, 25.876678>,  <36.124866, 30.639771, 25.911037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496971, 30.497093, 25.876678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184550, -0.252580, -0.949813,
		0.317095, 0.899430, -0.300793,
		0.930265, -0.356692, -0.085898,
		36.776051, 30.390085, 25.850908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483578, 31.086765, 25.318661>,  <36.124866, 30.639771, 25.911037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483578, 31.086765, 25.318661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643982, 30.727673, 25.391613>,  <36.740227, 30.512217, 25.435385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643982, 30.727673, 25.391613>,  <36.483578, 31.086765, 25.318661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643982, 30.727673, 25.391613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163419, -0.266001, -0.950020,
		0.901378, 0.351167, -0.253377,
		0.401014, -0.897733, 0.182380,
		36.764286, 30.458353, 25.446327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760307, 31.001263, 24.764978>,  <36.483578, 31.086765, 25.318661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760307, 31.001263, 24.764978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732033, 30.630362, 24.912060>,  <36.715069, 30.407822, 25.000309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732033, 30.630362, 24.912060>,  <36.760307, 31.001263, 24.764978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732033, 30.630362, 24.912060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242620, -0.341571, -0.908000,
		0.967543, -0.153397, -0.200825,
		-0.070688, -0.927253, 0.367702,
		36.710827, 30.352186, 25.022371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937687, 30.594185, 24.219824>,  <36.760307, 31.001263, 24.764978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937687, 30.594185, 24.219824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741932, 30.351048, 24.469952>,  <36.624477, 30.205166, 24.620029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741932, 30.351048, 24.469952>,  <36.937687, 30.594185, 24.219824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741932, 30.351048, 24.469952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309925, -0.549017, -0.776226,
		0.815136, -0.573678, 0.080296,
		-0.489387, -0.607844, 0.625321,
		36.595116, 30.168694, 24.657547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144363, 30.041267, 23.955906>,  <36.937687, 30.594185, 24.219824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144363, 30.041267, 23.955906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804012, 29.960243, 24.149801>,  <36.599800, 29.911629, 24.266138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804012, 29.960243, 24.149801>,  <37.144363, 30.041267, 23.955906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804012, 29.960243, 24.149801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317904, -0.536058, -0.782035,
		0.418257, -0.819519, 0.391726,
		-0.850881, -0.202561, 0.484738,
		36.548748, 29.899475, 24.295223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022148, 29.350487, 23.706869>,  <37.144363, 30.041267, 23.955906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022148, 29.350487, 23.706869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677753, 29.484179, 23.860224>,  <36.471115, 29.564394, 23.952236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677753, 29.484179, 23.860224>,  <37.022148, 29.350487, 23.706869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677753, 29.484179, 23.860224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504324, -0.463252, -0.728735,
		-0.065962, -0.820785, 0.567416,
		-0.860991, 0.334230, 0.383385,
		36.419456, 29.584448, 23.975239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439072, 28.748056, 23.694763>,  <37.022148, 29.350487, 23.706869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439072, 28.748056, 23.694763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248035, 29.099455, 23.699724>,  <36.133415, 29.310293, 23.702700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248035, 29.099455, 23.699724>,  <36.439072, 28.748056, 23.694763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248035, 29.099455, 23.699724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596498, -0.313854, -0.738705,
		-0.645058, -0.360193, 0.673914,
		-0.477588, 0.878497, 0.012400,
		36.104759, 29.363005, 23.703444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714195, 28.582325, 23.417084>,  <36.439072, 28.748056, 23.694763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714195, 28.582325, 23.417084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768093, 28.975624, 23.367983>,  <35.800434, 29.211603, 23.338522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768093, 28.975624, 23.367983>,  <35.714195, 28.582325, 23.417084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768093, 28.975624, 23.367983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493756, -0.040778, -0.868644,
		-0.859097, 0.177656, 0.479990,
		0.134747, 0.983248, -0.122751,
		35.808517, 29.270597, 23.331158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955414, 28.808256, 23.185678>,  <35.714195, 28.582325, 23.417084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955414, 28.808256, 23.185678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206932, 29.096704, 23.069334>,  <35.357845, 29.269773, 22.999527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206932, 29.096704, 23.069334>,  <34.955414, 28.808256, 23.185678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206932, 29.096704, 23.069334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481025, 0.066858, -0.874154,
		-0.610923, 0.689578, 0.388916,
		0.628799, 0.721119, -0.290859,
		35.395573, 29.313040, 22.982077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569443, 29.373709, 22.886209>,  <34.955414, 28.808256, 23.185678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569443, 29.373709, 22.886209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937439, 29.385872, 22.729908>,  <35.158237, 29.393169, 22.636127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937439, 29.385872, 22.729908>,  <34.569443, 29.373709, 22.886209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937439, 29.385872, 22.729908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391224, 0.131229, -0.910891,
		0.023581, 0.990885, 0.132626,
		0.919993, 0.030407, -0.390753,
		35.213436, 29.394995, 22.612682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547329, 29.857735, 22.263931>,  <34.569443, 29.373709, 22.886209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547329, 29.857735, 22.263931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897907, 29.669390, 22.223658>,  <35.108253, 29.556383, 22.199493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897907, 29.669390, 22.223658>,  <34.547329, 29.857735, 22.263931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897907, 29.669390, 22.223658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249824, -0.265918, -0.931062,
		0.411627, 0.841176, -0.350695,
		0.876442, -0.470862, -0.100687,
		35.160839, 29.528131, 22.193451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677551, 30.119295, 21.627489>,  <34.547329, 29.857735, 22.263931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677551, 30.119295, 21.627489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900795, 29.789459, 21.664515>,  <35.034740, 29.591557, 21.686729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900795, 29.789459, 21.664515>,  <34.677551, 30.119295, 21.627489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900795, 29.789459, 21.664515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300869, -0.305064, -0.903556,
		0.773301, 0.476431, -0.418352,
		0.558106, -0.824591, 0.092563,
		35.068226, 29.542082, 21.692284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967583, 30.141512, 21.019810>,  <34.677551, 30.119295, 21.627489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967583, 30.141512, 21.019810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988331, 29.765341, 21.154215>,  <35.000778, 29.539639, 21.234858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988331, 29.765341, 21.154215>,  <34.967583, 30.141512, 21.019810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988331, 29.765341, 21.154215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163271, -0.339923, -0.926172,
		0.985217, -0.006819, -0.171177,
		0.051871, -0.940428, 0.336011,
		35.003891, 29.483212, 21.255018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503017, 29.757849, 20.569204>,  <34.967583, 30.141512, 21.019810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503017, 29.757849, 20.569204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278904, 29.460516, 20.715374>,  <35.144436, 29.282116, 20.803076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278904, 29.460516, 20.715374>,  <35.503017, 29.757849, 20.569204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278904, 29.460516, 20.715374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189712, -0.314285, -0.930180,
		0.806282, -0.590490, 0.035070,
		-0.560284, -0.743334, 0.365425,
		35.110817, 29.237516, 20.825001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690521, 29.255081, 20.214605>,  <35.503017, 29.757849, 20.569204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690521, 29.255081, 20.214605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333668, 29.142454, 20.355925>,  <35.119556, 29.074879, 20.440716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333668, 29.142454, 20.355925>,  <35.690521, 29.255081, 20.214605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333668, 29.142454, 20.355925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317370, -0.165957, -0.933667,
		0.321524, -0.945080, 0.058694,
		-0.892131, -0.281569, 0.353299,
		35.066029, 29.057983, 20.461914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576534, 28.672979, 19.925779>,  <35.690521, 29.255081, 20.214605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576534, 28.672979, 19.925779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216671, 28.800301, 20.045307>,  <35.000751, 28.876694, 20.117023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216671, 28.800301, 20.045307>,  <35.576534, 28.672979, 19.925779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216671, 28.800301, 20.045307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364447, -0.170670, -0.915451,
		-0.240391, -0.932499, 0.269550,
		-0.899661, 0.318303, 0.298820,
		34.946774, 28.895792, 20.134953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116100, 28.261362, 19.528845>,  <35.576534, 28.672979, 19.925779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116100, 28.261362, 19.528845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861820, 28.544781, 19.651384>,  <34.709251, 28.714832, 19.724909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861820, 28.544781, 19.651384>,  <35.116100, 28.261362, 19.528845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861820, 28.544781, 19.651384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365164, 0.073627, -0.928027,
		-0.680106, -0.701812, 0.211932,
		-0.635697, 0.708547, 0.306351,
		34.671112, 28.757345, 19.743290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525631, 28.030697, 19.196754>,  <35.116100, 28.261362, 19.528845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525631, 28.030697, 19.196754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435204, 28.410589, 19.283379>,  <34.380947, 28.638525, 19.335354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435204, 28.410589, 19.283379>,  <34.525631, 28.030697, 19.196754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435204, 28.410589, 19.283379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497477, 0.078572, -0.863911,
		-0.837501, -0.303040, 0.454708,
		-0.226073, 0.949733, 0.216560,
		34.367382, 28.695509, 19.348347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771736, 28.131218, 18.962656>,  <34.525631, 28.030697, 19.196754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771736, 28.131218, 18.962656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979565, 28.472954, 18.967531>,  <34.104263, 28.677996, 18.970457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979565, 28.472954, 18.967531>,  <33.771736, 28.131218, 18.962656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979565, 28.472954, 18.967531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540764, 0.339849, -0.769466,
		-0.661526, 0.393203, 0.638572,
		0.519574, 0.854338, 0.012189,
		34.135437, 28.729256, 18.971188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447132, 27.680893, 18.296083>,  <33.771736, 28.131218, 18.962656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447132, 27.680893, 18.296083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225895, 27.470781, 18.554749>,  <33.093155, 27.344715, 18.709948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225895, 27.470781, 18.554749>,  <33.447132, 27.680893, 18.296083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225895, 27.470781, 18.554749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220968, 0.840886, 0.494048,
		-0.803284, 0.130361, -0.581155,
		-0.553090, -0.525278, 0.646664,
		33.059967, 27.313198, 18.748747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710609, 27.902912, 18.434160>,  <33.447132, 27.680893, 18.296083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710609, 27.902912, 18.434160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.893654, 27.743801, 18.752245>,  <33.003483, 27.648335, 18.943096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.893654, 27.743801, 18.752245>,  <32.710609, 27.902912, 18.434160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893654, 27.743801, 18.752245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021990, 0.889014, 0.457351,
		-0.888880, -0.226776, 0.398077,
		0.457613, -0.397776, 0.795214,
		33.030937, 27.624468, 18.990808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222363, 27.826279, 18.937466>,  <32.710609, 27.902912, 18.434160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222363, 27.826279, 18.937466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838785, 27.935638, 18.967625>,  <31.608639, 28.001255, 18.985720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838785, 27.935638, 18.967625>,  <32.222363, 27.826279, 18.937466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838785, 27.935638, 18.967625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232210, 0.604270, 0.762192,
		0.162824, 0.748405, -0.642945,
		-0.958941, 0.273402, 0.075397,
		31.551104, 28.017658, 18.990244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154526, 28.557877, 18.892738>,  <32.222363, 27.826279, 18.937466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154526, 28.557877, 18.892738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.824495, 28.424631, 19.075293>,  <31.626478, 28.344683, 19.184824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.824495, 28.424631, 19.075293>,  <32.154526, 28.557877, 18.892738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824495, 28.424631, 19.075293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245324, 0.516420, 0.820443,
		-0.508989, 0.788888, -0.344363,
		-0.825074, -0.333116, 0.456385,
		31.576973, 28.324696, 19.212208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841173, 29.162788, 19.116930>,  <32.154526, 28.557877, 18.892738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841173, 29.162788, 19.116930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655525, 28.887255, 19.339676>,  <31.544136, 28.721935, 19.473324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655525, 28.887255, 19.339676>,  <31.841173, 29.162788, 19.116930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655525, 28.887255, 19.339676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115470, 0.576262, 0.809067,
		-0.878213, 0.439806, -0.187916,
		-0.464121, -0.688835, 0.556865,
		31.516289, 28.680605, 19.506735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347855, 29.473516, 19.549055>,  <31.841173, 29.162788, 19.116930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347855, 29.473516, 19.549055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443134, 29.142281, 19.752045>,  <31.500303, 28.943539, 19.873838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443134, 29.142281, 19.752045>,  <31.347855, 29.473516, 19.549055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443134, 29.142281, 19.752045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191737, 0.552327, 0.811278,
		-0.952102, -0.095945, 0.290339,
		0.238201, -0.828088, 0.507475,
		31.514595, 28.893854, 19.904287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129801, 29.673738, 20.222309>,  <31.347855, 29.473516, 19.549055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129801, 29.673738, 20.222309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361982, 29.352661, 20.277092>,  <31.501291, 29.160015, 20.309961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361982, 29.352661, 20.277092>,  <31.129801, 29.673738, 20.222309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361982, 29.352661, 20.277092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273742, 0.350754, 0.895565,
		-0.766903, -0.482342, 0.423328,
		0.580453, -0.802694, 0.136957,
		31.536118, 29.111853, 20.318178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003811, 29.488764, 20.925266>,  <31.129801, 29.673738, 20.222309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003811, 29.488764, 20.925266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357712, 29.334688, 20.820312>,  <31.570051, 29.242243, 20.757339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357712, 29.334688, 20.820312>,  <31.003811, 29.488764, 20.925266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357712, 29.334688, 20.820312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395113, 0.321311, 0.860607,
		-0.247187, -0.865095, 0.436472,
		0.884751, -0.385187, -0.262386,
		31.623137, 29.219131, 20.741596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223328, 28.946051, 21.380692>,  <31.003811, 29.488764, 20.925266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223328, 28.946051, 21.380692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.570213, 29.070704, 21.225349>,  <31.778345, 29.145496, 21.132143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.570213, 29.070704, 21.225349>,  <31.223328, 28.946051, 21.380692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570213, 29.070704, 21.225349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340476, 0.197988, 0.919172,
		0.363335, -0.929347, 0.065595,
		0.867216, 0.311634, -0.388356,
		31.830378, 29.164194, 21.108843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706085, 28.531397, 21.738562>,  <31.223328, 28.946051, 21.380692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706085, 28.531397, 21.738562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919943, 28.835611, 21.591190>,  <32.048256, 29.018141, 21.502768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919943, 28.835611, 21.591190>,  <31.706085, 28.531397, 21.738562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919943, 28.835611, 21.591190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549338, 0.018520, 0.835395,
		0.642173, -0.649030, -0.407890,
		0.534642, 0.760537, -0.368429,
		32.080334, 29.063772, 21.480661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285427, 28.423174, 22.038319>,  <31.706085, 28.531397, 21.738562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285427, 28.423174, 22.038319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316029, 28.794807, 21.893572>,  <32.334389, 29.017788, 21.806725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316029, 28.794807, 21.893572>,  <32.285427, 28.423174, 22.038319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316029, 28.794807, 21.893572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499289, 0.278449, 0.820473,
		0.863051, -0.243448, -0.442579,
		0.076507, 0.929085, -0.361866,
		32.338982, 29.073532, 21.785011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047367, 28.668526, 22.121109>,  <32.285427, 28.423174, 22.038319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047367, 28.668526, 22.121109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816277, 28.993006, 22.084929>,  <32.677620, 29.187695, 22.063221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816277, 28.993006, 22.084929>,  <33.047367, 28.668526, 22.121109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816277, 28.993006, 22.084929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419970, 0.390446, 0.819254,
		0.699895, 0.435322, -0.566253,
		-0.577731, 0.811201, -0.090449,
		32.642956, 29.236366, 22.057795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492859, 29.173590, 22.147034>,  <33.047367, 28.668526, 22.121109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492859, 29.173590, 22.147034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144768, 29.346878, 22.240856>,  <32.935913, 29.450851, 22.297150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144768, 29.346878, 22.240856>,  <33.492859, 29.173590, 22.147034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144768, 29.346878, 22.240856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442809, 0.479186, 0.757827,
		0.215909, 0.763349, -0.608836,
		-0.870232, 0.433220, 0.234557,
		32.883698, 29.476845, 22.311224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626587, 29.843737, 22.128874>,  <33.492859, 29.173590, 22.147034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626587, 29.843737, 22.128874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309875, 29.782022, 22.365276>,  <33.119850, 29.744993, 22.507118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309875, 29.782022, 22.365276>,  <33.626587, 29.843737, 22.128874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309875, 29.782022, 22.365276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537235, 0.284487, 0.794006,
		-0.290638, 0.946183, -0.142362,
		-0.791776, -0.154286, 0.591005,
		33.072342, 29.735737, 22.542578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790321, 30.241625, 22.623037>,  <33.626587, 29.843737, 22.128874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790321, 30.241625, 22.623037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495983, 30.013569, 22.769169>,  <33.319378, 29.876736, 22.856848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495983, 30.013569, 22.769169>,  <33.790321, 30.241625, 22.623037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495983, 30.013569, 22.769169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338705, 0.157268, 0.927656,
		-0.586348, 0.806354, 0.077383,
		-0.735850, -0.570140, 0.365330,
		33.275227, 29.842527, 22.878767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360905, 30.633501, 23.054102>,  <33.790321, 30.241625, 22.623037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360905, 30.633501, 23.054102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332176, 30.255610, 23.182058>,  <33.314941, 30.028875, 23.258833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332176, 30.255610, 23.182058>,  <33.360905, 30.633501, 23.054102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332176, 30.255610, 23.182058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310811, 0.283554, 0.907190,
		-0.947755, 0.164578, 0.273268,
		-0.071817, -0.944728, 0.319892,
		33.310631, 29.972191, 23.278027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134354, 30.742296, 23.757832>,  <33.360905, 30.633501, 23.054102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134354, 30.742296, 23.757832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294434, 30.376566, 23.733006>,  <33.390480, 30.157127, 23.718109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294434, 30.376566, 23.733006>,  <33.134354, 30.742296, 23.757832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294434, 30.376566, 23.733006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244245, 0.041138, 0.968840,
		-0.883282, -0.402885, 0.239783,
		0.400195, -0.914326, -0.062066,
		33.414494, 30.102268, 23.714386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049091, 30.499695, 24.463545>,  <33.134354, 30.742296, 23.757832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049091, 30.499695, 24.463545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326927, 30.265867, 24.295818>,  <33.493629, 30.125570, 24.195183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326927, 30.265867, 24.295818>,  <33.049091, 30.499695, 24.463545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326927, 30.265867, 24.295818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480968, -0.056113, 0.874941,
		-0.534991, -0.809402, 0.242183,
		0.694589, -0.584568, -0.419316,
		33.535305, 30.090496, 24.170023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126141, 29.925858, 24.924791>,  <33.049091, 30.499695, 24.463545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126141, 29.925858, 24.924791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.451702, 29.941931, 24.692947>,  <33.647038, 29.951574, 24.553841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.451702, 29.941931, 24.692947>,  <33.126141, 29.925858, 24.924791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451702, 29.941931, 24.692947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579885, -0.118036, 0.806102,
		-0.036022, -0.992196, -0.119372,
		0.813902, 0.040185, -0.579611,
		33.695873, 29.953985, 24.519064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507893, 29.313427, 25.076401>,  <33.126141, 29.925858, 24.924791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507893, 29.313427, 25.076401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759628, 29.588663, 24.931923>,  <33.910671, 29.753805, 24.845236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759628, 29.588663, 24.931923>,  <33.507893, 29.313427, 25.076401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759628, 29.588663, 24.931923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542212, -0.055828, 0.838385,
		0.556721, -0.723473, -0.408226,
		0.629339, 0.688091, -0.361195,
		33.948429, 29.795090, 24.823565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212200, 29.070066, 25.200609>,  <33.507893, 29.313427, 25.076401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212200, 29.070066, 25.200609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262123, 29.459581, 25.124548>,  <34.292076, 29.693291, 25.078911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.262123, 29.459581, 25.124548>,  <34.212200, 29.070066, 25.200609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262123, 29.459581, 25.124548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675830, 0.056880, 0.734860,
		0.726414, -0.220226, -0.651017,
		0.124805, 0.973789, -0.190153,
		34.299564, 29.751719, 25.067501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924072, 29.164457, 25.366955>,  <34.212200, 29.070066, 25.200609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924072, 29.164457, 25.366955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736389, 29.516590, 25.394836>,  <34.623779, 29.727869, 25.411566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736389, 29.516590, 25.394836>,  <34.924072, 29.164457, 25.366955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736389, 29.516590, 25.394836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352300, 0.114227, 0.928890,
		0.809769, 0.460401, -0.363737,
		-0.469210, 0.880331, 0.069702,
		34.595627, 29.780689, 25.415747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320087, 29.788410, 25.683247>,  <34.924072, 29.164457, 25.366955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320087, 29.788410, 25.683247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.944309, 29.910439, 25.745684>,  <34.718842, 29.983656, 25.783146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.944309, 29.910439, 25.745684>,  <35.320087, 29.788410, 25.683247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944309, 29.910439, 25.745684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240422, 0.262175, 0.934592,
		0.244195, 0.915530, -0.319646,
		-0.939450, 0.305073, 0.156092,
		34.662476, 30.001961, 25.792511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.876965, 31.291502, 28.924932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.583908, 31.554367, 28.854078>,  <38.408073, 31.712086, 28.811565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.583908, 31.554367, 28.854078>,  <38.876965, 31.291502, 28.924932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583908, 31.554367, 28.854078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222598, 0.477298, 0.850081,
		0.643186, 0.583374, -0.495970,
		-0.732640, 0.657162, -0.177134,
		38.364117, 31.751516, 28.800938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149479, 31.993956, 29.123873>,  <38.876965, 31.291502, 28.924932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149479, 31.993956, 29.123873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756210, 32.066463, 29.114788>,  <38.520248, 32.109970, 29.109337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756210, 32.066463, 29.114788>,  <39.149479, 31.993956, 29.123873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756210, 32.066463, 29.114788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112726, 0.699791, 0.705398,
		0.143762, 0.690966, -0.708448,
		-0.983171, 0.181270, -0.022713,
		38.461258, 32.120846, 29.107975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165176, 32.543747, 29.419237>,  <39.149479, 31.993956, 29.123873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165176, 32.543747, 29.419237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769981, 32.484890, 29.400352>,  <38.532864, 32.449577, 29.389021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769981, 32.484890, 29.400352>,  <39.165176, 32.543747, 29.419237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769981, 32.484890, 29.400352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136571, 0.688437, 0.712322,
		-0.072310, 0.710213, -0.700263,
		-0.987988, -0.147144, -0.047213,
		38.473583, 32.440746, 29.386189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791595, 33.186005, 29.403025>,  <39.165176, 32.543747, 29.419237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791595, 33.186005, 29.403025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540314, 32.920692, 29.565710>,  <38.389545, 32.761505, 29.663322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540314, 32.920692, 29.565710>,  <38.791595, 33.186005, 29.403025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540314, 32.920692, 29.565710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123769, 0.601270, 0.789402,
		-0.768144, 0.445565, -0.459813,
		-0.628201, -0.663285, 0.406714,
		38.351852, 32.721706, 29.687725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173603, 33.613365, 29.627745>,  <38.791595, 33.186005, 29.403025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173603, 33.613365, 29.627745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.193665, 33.257755, 29.809790>,  <38.205700, 33.044392, 29.919016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.193665, 33.257755, 29.809790>,  <38.173603, 33.613365, 29.627745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193665, 33.257755, 29.809790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137903, 0.445157, 0.884770,
		-0.989175, -0.107133, -0.100274,
		0.050151, -0.889021, 0.455112,
		38.208710, 32.991051, 29.946323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700592, 33.613621, 30.264088>,  <38.173603, 33.613365, 29.627745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700592, 33.613621, 30.264088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.944084, 33.307182, 30.346601>,  <38.090179, 33.123322, 30.396111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.944084, 33.307182, 30.346601>,  <37.700592, 33.613621, 30.264088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944084, 33.307182, 30.346601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021923, 0.243665, 0.969612,
		-0.793076, -0.594752, 0.131531,
		0.608728, -0.766092, 0.206284,
		38.126701, 33.077354, 30.408487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457474, 33.276966, 30.928490>,  <37.700592, 33.613621, 30.264088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457474, 33.276966, 30.928490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850124, 33.227097, 30.870716>,  <38.085716, 33.197174, 30.836052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850124, 33.227097, 30.870716>,  <37.457474, 33.276966, 30.928490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850124, 33.227097, 30.870716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177070, 0.313307, 0.932998,
		-0.071067, -0.941433, 0.329627,
		0.981629, -0.124673, -0.144434,
		38.144611, 33.189693, 30.827385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680115, 32.978096, 31.567104>,  <37.457474, 33.276966, 30.928490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680115, 32.978096, 31.567104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020199, 33.082886, 31.384455>,  <38.224251, 33.145760, 31.274864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020199, 33.082886, 31.384455>,  <37.680115, 32.978096, 31.567104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020199, 33.082886, 31.384455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374504, 0.308603, 0.874363,
		0.369984, -0.914401, 0.164263,
		0.850211, 0.261983, -0.456625,
		38.275261, 33.161480, 31.247467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237480, 32.689842, 32.020180>,  <37.680115, 32.978096, 31.567104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237480, 32.689842, 32.020180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.361813, 32.993950, 31.792015>,  <38.436413, 33.176414, 31.655117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.361813, 32.993950, 31.792015>,  <38.237480, 32.689842, 32.020180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361813, 32.993950, 31.792015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112606, 0.566454, 0.816364,
		0.943770, -0.317985, 0.090462,
		0.310834, 0.760273, -0.570409,
		38.455063, 33.222031, 31.620892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671791, 32.957577, 32.451431>,  <38.237480, 32.689842, 32.020180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671791, 32.957577, 32.451431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626713, 33.250195, 32.182465>,  <38.599667, 33.425766, 32.021084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626713, 33.250195, 32.182465>,  <38.671791, 32.957577, 32.451431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626713, 33.250195, 32.182465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087742, 0.681411, 0.726622,
		0.989748, 0.022887, -0.140979,
		-0.112695, 0.731543, -0.672417,
		38.592903, 33.469658, 31.980740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004173, 33.456589, 32.777439>,  <38.671791, 32.957577, 32.451431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004173, 33.456589, 32.777439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.801422, 33.660763, 32.499584>,  <38.679771, 33.783268, 32.332870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.801422, 33.660763, 32.499584>,  <39.004173, 33.456589, 32.777439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801422, 33.660763, 32.499584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146377, 0.743163, 0.652903,
		0.849496, 0.432625, -0.301980,
		-0.506882, 0.510436, -0.694641,
		38.649357, 33.813892, 32.291191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358055, 34.127876, 32.767231>,  <39.004173, 33.456589, 32.777439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358055, 34.127876, 32.767231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988300, 34.151516, 32.616493>,  <38.766445, 34.165699, 32.526051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988300, 34.151516, 32.616493>,  <39.358055, 34.127876, 32.767231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988300, 34.151516, 32.616493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182771, 0.798520, 0.573551,
		0.334812, 0.599060, -0.727342,
		-0.924389, 0.059095, -0.376845,
		38.710983, 34.169243, 32.503441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259949, 34.840042, 32.481243>,  <39.358055, 34.127876, 32.767231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259949, 34.840042, 32.481243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892628, 34.698795, 32.552837>,  <38.672237, 34.614048, 32.595795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892628, 34.698795, 32.552837>,  <39.259949, 34.840042, 32.481243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892628, 34.698795, 32.552837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224784, 0.837243, 0.498494,
		-0.325883, 0.417533, -0.848214,
		-0.918299, -0.353116, 0.178989,
		38.617138, 34.592861, 32.606533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529175, 35.072987, 32.622944>,  <39.259949, 34.840042, 32.481243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529175, 35.072987, 32.622944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362316, 35.354294, 32.853214>,  <38.262199, 35.523079, 32.991375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362316, 35.354294, 32.853214>,  <38.529175, 35.072987, 32.622944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362316, 35.354294, 32.853214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541216, 0.316634, -0.778991,
		-0.730117, -0.636521, 0.248535,
		-0.417149, 0.703267, 0.575676,
		38.237171, 35.565273, 33.025917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853142, 35.069466, 32.521404>,  <38.529175, 35.072987, 32.622944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853142, 35.069466, 32.521404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923584, 35.442604, 32.647121>,  <37.965847, 35.666489, 32.722549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923584, 35.442604, 32.647121>,  <37.853142, 35.069466, 32.521404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923584, 35.442604, 32.647121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608541, 0.354129, -0.710120,
		-0.773735, -0.066206, 0.630040,
		0.176101, 0.932850, 0.314291,
		37.976414, 35.722458, 32.741409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183258, 35.337444, 32.586086>,  <37.853142, 35.069466, 32.521404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183258, 35.337444, 32.586086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.436420, 35.644825, 32.548306>,  <37.588318, 35.829254, 32.525639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.436420, 35.644825, 32.548306>,  <37.183258, 35.337444, 32.586086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436420, 35.644825, 32.548306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602701, 0.412434, -0.683118,
		-0.485986, 0.489272, 0.724175,
		0.632905, 0.768447, -0.094448,
		37.626293, 35.875359, 32.519970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722183, 35.832985, 32.585049>,  <37.183258, 35.337444, 32.586086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722183, 35.832985, 32.585049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070503, 35.981174, 32.455765>,  <37.279495, 36.070087, 32.378193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070503, 35.981174, 32.455765>,  <36.722183, 35.832985, 32.585049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070503, 35.981174, 32.455765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489266, 0.588423, -0.643722,
		-0.048294, 0.718687, 0.693654,
		0.870796, 0.370469, -0.323212,
		37.331741, 36.092316, 32.358803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625759, 36.552475, 32.512642>,  <36.722183, 35.832985, 32.585049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625759, 36.552475, 32.512642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935139, 36.446053, 32.282516>,  <37.120766, 36.382198, 32.144444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935139, 36.446053, 32.282516>,  <36.625759, 36.552475, 32.512642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935139, 36.446053, 32.282516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372303, 0.543881, -0.752053,
		0.512991, 0.795868, 0.321612,
		0.773453, -0.266060, -0.575310,
		37.167175, 36.366234, 32.109924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838627, 37.180058, 32.307579>,  <36.625759, 36.552475, 32.512642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838627, 37.180058, 32.307579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.995911, 36.916790, 32.050766>,  <37.090282, 36.758831, 31.896679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.995911, 36.916790, 32.050766>,  <36.838627, 37.180058, 32.307579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995911, 36.916790, 32.050766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300986, 0.567661, -0.766269,
		0.868789, 0.494545, 0.025110,
		0.393208, -0.658168, -0.642029,
		37.113873, 36.719341, 31.858158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190567, 37.543732, 31.802736>,  <36.838627, 37.180058, 32.307579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190567, 37.543732, 31.802736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127193, 37.195137, 31.617090>,  <37.089169, 36.985981, 31.505703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127193, 37.195137, 31.617090>,  <37.190567, 37.543732, 31.802736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127193, 37.195137, 31.617090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197018, 0.488504, -0.850028,
		0.967514, -0.043231, -0.249094,
		-0.158431, -0.871490, -0.464117,
		37.079662, 36.933689, 31.477856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486382, 37.682980, 31.095358>,  <37.190567, 37.543732, 31.802736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486382, 37.682980, 31.095358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.266010, 37.351677, 31.054451>,  <37.133785, 37.152893, 31.029907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.266010, 37.351677, 31.054451>,  <37.486382, 37.682980, 31.095358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266010, 37.351677, 31.054451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193771, 0.246150, -0.949665,
		0.811743, -0.503384, -0.296105,
		-0.550932, -0.828260, -0.102269,
		37.100731, 37.103199, 31.023769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669533, 37.260021, 30.506626>,  <37.486382, 37.682980, 31.095358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669533, 37.260021, 30.506626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.282681, 37.190327, 30.580709>,  <37.050568, 37.148510, 30.625158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.282681, 37.190327, 30.580709>,  <37.669533, 37.260021, 30.506626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282681, 37.190327, 30.580709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212244, 0.152002, -0.965323,
		0.140017, -0.972906, -0.183982,
		-0.967134, -0.174211, 0.185210,
		36.992542, 37.138054, 30.636271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529224, 36.652813, 29.987488>,  <37.669533, 37.260021, 30.506626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529224, 36.652813, 29.987488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193764, 36.818497, 30.128958>,  <36.992485, 36.917908, 30.213840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193764, 36.818497, 30.128958>,  <37.529224, 36.652813, 29.987488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193764, 36.818497, 30.128958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455496, -0.177347, -0.872394,
		-0.298630, -0.892737, 0.337404,
		-0.838656, 0.414209, 0.353677,
		36.942165, 36.942760, 30.235062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983459, 36.211502, 29.685701>,  <37.529224, 36.652813, 29.987488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983459, 36.211502, 29.685701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.796009, 36.540985, 29.813385>,  <36.683540, 36.738674, 29.889996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.796009, 36.540985, 29.813385>,  <36.983459, 36.211502, 29.685701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796009, 36.540985, 29.813385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452148, 0.086774, -0.887712,
		-0.758915, -0.560335, 0.331774,
		-0.468626, 0.823708, 0.319208,
		36.655422, 36.788097, 29.909147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319118, 36.086166, 29.706764>,  <36.983459, 36.211502, 29.685701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319118, 36.086166, 29.706764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.331635, 36.482899, 29.657312>,  <36.339142, 36.720940, 29.627642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.331635, 36.482899, 29.657312>,  <36.319118, 36.086166, 29.706764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331635, 36.482899, 29.657312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636519, -0.075594, -0.767547,
		-0.770626, 0.102707, 0.628957,
		0.031287, 0.991835, -0.123630,
		36.341022, 36.780449, 29.620224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655502, 36.357082, 29.738518>,  <36.319118, 36.086166, 29.706764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655502, 36.357082, 29.738518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.879078, 36.615185, 29.530199>,  <36.013222, 36.770046, 29.405207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.879078, 36.615185, 29.530199>,  <35.655502, 36.357082, 29.738518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879078, 36.615185, 29.530199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615129, -0.098528, -0.782246,
		-0.556066, 0.757583, 0.341847,
		0.558934, 0.645260, -0.520799,
		36.046757, 36.808762, 29.373959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195850, 36.872372, 29.491714>,  <35.655502, 36.357082, 29.738518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195850, 36.872372, 29.491714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.515099, 36.852505, 29.251537>,  <35.706650, 36.840584, 29.107431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.515099, 36.852505, 29.251537>,  <35.195850, 36.872372, 29.491714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515099, 36.852505, 29.251537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602402, -0.083092, -0.793856,
		-0.010467, 0.995304, -0.096235,
		0.798125, -0.049663, -0.600442,
		35.754536, 36.837605, 29.071405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995678, 37.296478, 28.950979>,  <35.195850, 36.872372, 29.491714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995678, 37.296478, 28.950979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.307137, 37.083752, 28.817783>,  <35.494011, 36.956116, 28.737865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.307137, 37.083752, 28.817783>,  <34.995678, 37.296478, 28.950979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307137, 37.083752, 28.817783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468441, -0.139624, -0.872392,
		0.417458, 0.835271, -0.357842,
		0.778647, -0.531816, -0.332988,
		35.540730, 36.924206, 28.717886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629135, 37.989319, 28.651466>,  <34.995678, 37.296478, 28.950979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629135, 37.989319, 28.651466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.236355, 37.915920, 28.669817>,  <34.000687, 37.871880, 28.680828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.236355, 37.915920, 28.669817>,  <34.629135, 37.989319, 28.651466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236355, 37.915920, 28.669817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028671, 0.095339, 0.995032,
		-0.186960, 0.978386, -0.088357,
		-0.981949, -0.183498, 0.045876,
		33.941769, 37.860870, 28.683580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248539, 38.539627, 29.102913>,  <34.629135, 37.989319, 28.651466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248539, 38.539627, 29.102913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.010410, 38.218754, 29.084625>,  <33.867535, 38.026230, 29.073652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.010410, 38.218754, 29.084625>,  <34.248539, 38.539627, 29.102913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010410, 38.218754, 29.084625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021748, -0.072966, 0.997097,
		-0.803192, 0.592600, 0.060884,
		-0.595322, -0.802185, -0.045718,
		33.831814, 37.978100, 29.070910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134747, 38.531818, 29.781092>,  <34.248539, 38.539627, 29.102913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134747, 38.531818, 29.781092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945446, 38.199615, 29.663591>,  <33.831863, 38.000294, 29.593092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945446, 38.199615, 29.663591>,  <34.134747, 38.531818, 29.781092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945446, 38.199615, 29.663591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032083, -0.349483, 0.936393,
		-0.880341, 0.433728, 0.192039,
		-0.473255, -0.830507, -0.293749,
		33.803471, 37.950462, 29.575466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448189, 38.464443, 30.092297>,  <34.134747, 38.531818, 29.781092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448189, 38.464443, 30.092297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.558598, 38.089165, 30.008781>,  <33.624844, 37.863998, 29.958672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.558598, 38.089165, 30.008781>,  <33.448189, 38.464443, 30.092297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558598, 38.089165, 30.008781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084783, -0.240148, 0.967027,
		-0.957403, -0.249222, -0.145831,
		0.276026, -0.938199, -0.208788,
		33.641407, 37.807705, 29.946144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006035, 37.986626, 30.398735>,  <33.448189, 38.464443, 30.092297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006035, 37.986626, 30.398735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.346684, 37.790039, 30.325842>,  <33.551071, 37.672089, 30.282106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.346684, 37.790039, 30.325842>,  <33.006035, 37.986626, 30.398735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346684, 37.790039, 30.325842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063523, -0.441873, 0.894826,
		-0.520297, -0.750475, -0.407527,
		0.851619, -0.491463, -0.182233,
		33.602169, 37.642601, 30.271172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778965, 37.230389, 30.370283>,  <33.006035, 37.986626, 30.398735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778965, 37.230389, 30.370283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.170059, 37.259171, 30.449129>,  <33.404716, 37.276440, 30.496437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.170059, 37.259171, 30.449129>,  <32.778965, 37.230389, 30.370283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170059, 37.259171, 30.449129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141057, -0.470096, 0.871271,
		0.155355, -0.879677, -0.449480,
		0.977736, 0.071954, 0.197117,
		33.463379, 37.280758, 30.508265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800213, 36.865917, 31.029497>,  <32.778965, 37.230389, 30.370283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800213, 36.865917, 31.029497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.189011, 36.941727, 30.973927>,  <33.422291, 36.987213, 30.940584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.189011, 36.941727, 30.973927>,  <32.800213, 36.865917, 31.029497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189011, 36.941727, 30.973927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199108, -0.350242, 0.915252,
		0.124801, -0.917285, -0.378169,
		0.971998, 0.189521, -0.138928,
		33.480610, 36.998581, 30.932247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138798, 36.286961, 31.179729>,  <32.800213, 36.865917, 31.029497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138798, 36.286961, 31.179729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434883, 36.554893, 31.203089>,  <33.612534, 36.715652, 31.217104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434883, 36.554893, 31.203089>,  <33.138798, 36.286961, 31.179729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434883, 36.554893, 31.203089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227162, -0.330887, 0.915921,
		0.632835, -0.664712, -0.397087,
		0.740215, 0.669829, 0.058400,
		33.656948, 36.755844, 31.220608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810684, 35.899197, 31.407837>,  <33.138798, 36.286961, 31.179729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810684, 35.899197, 31.407837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.859489, 36.281422, 31.515175>,  <33.888775, 36.510757, 31.579576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.859489, 36.281422, 31.515175>,  <33.810684, 35.899197, 31.407837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859489, 36.281422, 31.515175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242100, -0.290851, 0.925631,
		0.962549, -0.047975, -0.266831,
		0.122015, 0.955565, 0.268343,
		33.896095, 36.568092, 31.595678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311325, 35.811161, 31.870300>,  <33.810684, 35.899197, 31.407837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311325, 35.811161, 31.870300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.186699, 36.181004, 31.957960>,  <34.111923, 36.402908, 32.010555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.186699, 36.181004, 31.957960>,  <34.311325, 35.811161, 31.870300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186699, 36.181004, 31.957960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223940, -0.152687, 0.962568,
		0.923459, 0.348982, -0.159484,
		-0.311568, 0.924607, 0.219152,
		34.093227, 36.458385, 32.023705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799149, 36.145336, 32.205971>,  <34.311325, 35.811161, 31.870300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799149, 36.145336, 32.205971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462685, 36.336067, 32.308014>,  <34.260807, 36.450508, 32.369240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462685, 36.336067, 32.308014>,  <34.799149, 36.145336, 32.205971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462685, 36.336067, 32.308014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216549, -0.135261, 0.966856,
		0.495533, 0.868526, 0.010519,
		-0.841162, 0.476831, 0.255104,
		34.210335, 36.479118, 32.384544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097988, 36.609291, 32.679150>,  <34.799149, 36.145336, 32.205971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097988, 36.609291, 32.679150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.707851, 36.564064, 32.754971>,  <34.473770, 36.536930, 32.800461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.707851, 36.564064, 32.754971>,  <35.097988, 36.609291, 32.679150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707851, 36.564064, 32.754971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219858, -0.422415, 0.879334,
		-0.019354, 0.899323, 0.436856,
		-0.975340, -0.113065, 0.189548,
		34.415249, 36.530144, 32.811836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.377121, 37.721455, 24.871202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116104, 37.479660, 25.053976>,  <32.959496, 37.334583, 25.163641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116104, 37.479660, 25.053976>,  <33.377121, 37.721455, 24.871202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116104, 37.479660, 25.053976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100685, 0.528497, 0.842943,
		-0.751034, 0.596062, -0.284003,
		-0.652542, -0.604484, 0.456933,
		32.920341, 37.298313, 25.191055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967979, 38.253975, 25.336006>,  <33.377121, 37.721455, 24.871202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967979, 38.253975, 25.336006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894878, 37.902580, 25.512577>,  <32.851017, 37.691742, 25.618521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894878, 37.902580, 25.512577>,  <32.967979, 38.253975, 25.336006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894878, 37.902580, 25.512577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127520, 0.424016, 0.896632,
		-0.974854, 0.220153, 0.034535,
		-0.182753, -0.878489, 0.441428,
		32.840054, 37.639034, 25.645006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431751, 38.350948, 25.852243>,  <32.967979, 38.253975, 25.336006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431751, 38.350948, 25.852243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622616, 38.014759, 25.954943>,  <32.737133, 37.813046, 26.016562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622616, 38.014759, 25.954943>,  <32.431751, 38.350948, 25.852243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622616, 38.014759, 25.954943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273971, 0.419857, 0.865251,
		-0.835019, -0.342524, 0.430605,
		0.477162, -0.840474, 0.256747,
		32.765766, 37.762615, 26.031967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100292, 38.079998, 26.453623>,  <32.431751, 38.350948, 25.852243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100292, 38.079998, 26.453623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467758, 37.922405, 26.442022>,  <32.688236, 37.827850, 26.435062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467758, 37.922405, 26.442022>,  <32.100292, 38.079998, 26.453623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467758, 37.922405, 26.442022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055563, 0.056175, 0.996874,
		-0.391119, -0.917401, 0.073497,
		0.918661, -0.393980, -0.029002,
		32.743355, 37.804211, 26.433321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139484, 37.543552, 27.045465>,  <32.100292, 38.079998, 26.453623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139484, 37.543552, 27.045465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520802, 37.633263, 26.964548>,  <32.749592, 37.687088, 26.915997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520802, 37.633263, 26.964548>,  <32.139484, 37.543552, 27.045465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520802, 37.633263, 26.964548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189114, 0.079004, 0.978772,
		0.235500, -0.971317, 0.032900,
		0.953297, 0.224279, -0.202295,
		32.806789, 37.700546, 26.903860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536880, 37.209789, 27.633848>,  <32.139484, 37.543552, 27.045465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536880, 37.209789, 27.633848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784760, 37.484596, 27.482063>,  <32.933487, 37.649479, 27.390993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784760, 37.484596, 27.482063>,  <32.536880, 37.209789, 27.633848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784760, 37.484596, 27.482063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449686, 0.085454, 0.889090,
		0.643244, -0.721602, -0.255985,
		0.619694, 0.687015, -0.379462,
		32.970669, 37.690701, 27.368225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157097, 36.911224, 27.837246>,  <32.536880, 37.209789, 27.633848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157097, 36.911224, 27.837246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254803, 37.280262, 27.717812>,  <33.313427, 37.501686, 27.646151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254803, 37.280262, 27.717812>,  <33.157097, 36.911224, 27.837246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254803, 37.280262, 27.717812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568052, 0.113417, 0.815140,
		0.785909, -0.368720, -0.496379,
		0.244261, 0.922595, -0.298588,
		33.328079, 37.557041, 27.628235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880405, 36.880199, 27.855045>,  <33.157097, 36.911224, 27.837246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880405, 36.880199, 27.855045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761322, 37.260380, 27.890862>,  <33.689873, 37.488487, 27.912352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761322, 37.260380, 27.890862>,  <33.880405, 36.880199, 27.855045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761322, 37.260380, 27.890862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383610, 0.033212, 0.922898,
		0.874194, 0.309100, -0.374490,
		-0.297705, 0.950450, 0.089540,
		33.672012, 37.545513, 27.917723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389713, 37.247566, 28.198668>,  <33.880405, 36.880199, 27.855045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389713, 37.247566, 28.198668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054764, 37.458065, 28.257805>,  <33.853794, 37.584366, 28.293287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054764, 37.458065, 28.257805>,  <34.389713, 37.247566, 28.198668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054764, 37.458065, 28.257805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211609, 0.062702, 0.975341,
		0.504004, 0.848014, -0.163864,
		-0.837378, 0.526251, 0.147846,
		33.803551, 37.615940, 28.302158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054928, 37.438770, 28.083447>,  <34.389713, 37.247566, 28.198668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054928, 37.438770, 28.083447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304115, 37.130058, 28.134468>,  <35.453629, 36.944832, 28.165081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304115, 37.130058, 28.134468>,  <35.054928, 37.438770, 28.083447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304115, 37.130058, 28.134468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036630, -0.191660, -0.980778,
		0.781389, 0.606321, -0.147669,
		0.622969, -0.771778, 0.127551,
		35.491005, 36.898525, 28.172733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650421, 37.523838, 27.578012>,  <35.054928, 37.438770, 28.083447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650421, 37.523838, 27.578012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583706, 37.142097, 27.677124>,  <35.543678, 36.913052, 27.736591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583706, 37.142097, 27.677124>,  <35.650421, 37.523838, 27.578012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583706, 37.142097, 27.677124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112299, -0.268049, -0.956838,
		0.979578, -0.131760, 0.151879,
		-0.166784, -0.954353, 0.247779,
		35.533672, 36.855793, 27.751457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226578, 37.129326, 27.219067>,  <35.650421, 37.523838, 27.578012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226578, 37.129326, 27.219067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952087, 36.857361, 27.322458>,  <35.787395, 36.694180, 27.384493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952087, 36.857361, 27.322458>,  <36.226578, 37.129326, 27.219067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952087, 36.857361, 27.322458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108569, -0.447108, -0.887867,
		0.719243, -0.581212, 0.380634,
		-0.686223, -0.679917, 0.258478,
		35.746220, 36.653385, 27.400002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516853, 36.511452, 26.951015>,  <36.226578, 37.129326, 27.219067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516853, 36.511452, 26.951015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124535, 36.447727, 26.996004>,  <35.889141, 36.409492, 27.022997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124535, 36.447727, 26.996004>,  <36.516853, 36.511452, 26.951015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124535, 36.447727, 26.996004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038010, -0.409505, -0.911516,
		0.191269, -0.898291, 0.395588,
		-0.980802, -0.159308, 0.112470,
		35.830296, 36.399937, 27.029745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399052, 35.831657, 26.821871>,  <36.516853, 36.511452, 26.951015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399052, 35.831657, 26.821871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048203, 36.002018, 26.733086>,  <35.837692, 36.104233, 26.679815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048203, 36.002018, 26.733086>,  <36.399052, 35.831657, 26.821871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048203, 36.002018, 26.733086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013921, -0.439421, -0.898173,
		-0.480068, -0.790897, 0.379496,
		-0.877121, 0.425902, -0.221963,
		35.785065, 36.129787, 26.666498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976200, 35.313404, 26.588100>,  <36.399052, 35.831657, 26.821871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976200, 35.313404, 26.588100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821114, 35.644001, 26.424841>,  <35.728062, 35.842358, 26.326885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821114, 35.644001, 26.424841>,  <35.976200, 35.313404, 26.588100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821114, 35.644001, 26.424841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138615, -0.490025, -0.860617,
		-0.911298, -0.277098, 0.304554,
		-0.387715, 0.826494, -0.408149,
		35.704800, 35.891949, 26.302397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817081, 35.109795, 25.901175>,  <35.976200, 35.313404, 26.588100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817081, 35.109795, 25.901175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693134, 35.489517, 25.880020>,  <35.618767, 35.717350, 25.867329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693134, 35.489517, 25.880020>,  <35.817081, 35.109795, 25.901175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693134, 35.489517, 25.880020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177127, -0.112286, -0.977761,
		-0.934136, -0.293605, 0.202942,
		-0.309864, 0.949309, -0.052885,
		35.600174, 35.774311, 25.864155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296268, 35.083549, 25.572908>,  <35.817081, 35.109795, 25.901175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296268, 35.083549, 25.572908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422852, 35.461071, 25.534782>,  <35.498802, 35.687584, 25.511908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422852, 35.461071, 25.534782>,  <35.296268, 35.083549, 25.572908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422852, 35.461071, 25.534782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196970, -0.032913, -0.979857,
		-0.927932, 0.328856, 0.175486,
		0.316456, 0.943806, -0.095316,
		35.517788, 35.744213, 25.506187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808350, 35.484886, 25.137140>,  <35.296268, 35.083549, 25.572908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808350, 35.484886, 25.137140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160465, 35.670033, 25.095486>,  <35.371735, 35.781120, 25.070494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160465, 35.670033, 25.095486>,  <34.808350, 35.484886, 25.137140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160465, 35.670033, 25.095486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045261, -0.136558, -0.989597,
		-0.472275, 0.875845, -0.099260,
		0.880289, 0.462869, -0.104134,
		35.424553, 35.808895, 25.064245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666126, 35.793259, 24.524399>,  <34.808350, 35.484886, 25.137140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666126, 35.793259, 24.524399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062233, 35.834747, 24.561501>,  <35.299896, 35.859642, 24.583761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062233, 35.834747, 24.561501>,  <34.666126, 35.793259, 24.524399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062233, 35.834747, 24.561501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071213, 0.194904, -0.978234,
		-0.119547, 0.975322, 0.185622,
		0.990271, 0.103726, 0.092756,
		35.359314, 35.865864, 24.589327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848030, 36.323631, 24.148960>,  <34.666126, 35.793259, 24.524399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848030, 36.323631, 24.148960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191929, 36.120636, 24.171917>,  <35.398266, 35.998840, 24.185692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191929, 36.120636, 24.171917>,  <34.848030, 36.323631, 24.148960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191929, 36.120636, 24.171917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054695, -0.020242, -0.998298,
		0.507786, 0.861421, 0.010354,
		0.859745, -0.507488, 0.057394,
		35.449852, 35.968391, 24.189135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141251, 36.449497, 23.525434>,  <34.848030, 36.323631, 24.148960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141251, 36.449497, 23.525434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355450, 36.140701, 23.662416>,  <35.483971, 35.955425, 23.744606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355450, 36.140701, 23.662416>,  <35.141251, 36.449497, 23.525434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355450, 36.140701, 23.662416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289761, -0.212936, -0.933111,
		0.793271, 0.598911, 0.109665,
		0.535499, -0.771987, 0.342457,
		35.516098, 35.909103, 23.765154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851109, 36.415539, 23.148708>,  <35.141251, 36.449497, 23.525434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851109, 36.415539, 23.148708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745327, 36.050655, 23.273888>,  <35.681858, 35.831726, 23.348995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745327, 36.050655, 23.273888>,  <35.851109, 36.415539, 23.148708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745327, 36.050655, 23.273888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084314, -0.345129, -0.934761,
		0.960704, -0.220819, 0.168184,
		-0.264458, -0.912209, 0.312948,
		35.665989, 35.776993, 23.367773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266541, 35.969822, 22.746260>,  <35.851109, 36.415539, 23.148708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266541, 35.969822, 22.746260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988644, 35.722656, 22.893511>,  <35.821907, 35.574356, 22.981861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988644, 35.722656, 22.893511>,  <36.266541, 35.969822, 22.746260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988644, 35.722656, 22.893511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117767, -0.602632, -0.789282,
		0.709555, -0.504991, 0.491442,
		-0.694739, -0.617915, 0.368129,
		35.780224, 35.537281, 23.003950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.769684, 29.211405, 25.740246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.780664, 29.606808, 25.680784>,  <30.787252, 29.844049, 25.645107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.780664, 29.606808, 25.680784>,  <30.769684, 29.211405, 25.740246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780664, 29.606808, 25.680784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665017, 0.092968, 0.741019,
		0.746324, -0.119197, -0.654823,
		0.027450, 0.988509, -0.148652,
		30.788898, 29.903360, 25.636189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487946, 29.436544, 25.704399>,  <30.769684, 29.211405, 25.740246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487946, 29.436544, 25.704399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.270287, 29.759302, 25.796335>,  <31.139690, 29.952957, 25.851496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.270287, 29.759302, 25.796335>,  <31.487946, 29.436544, 25.704399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270287, 29.759302, 25.796335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614964, 0.197241, 0.763489,
		0.570720, 0.556794, -0.603538,
		-0.544149, 0.806893, 0.229839,
		31.107042, 30.001369, 25.865288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959354, 29.881256, 25.971025>,  <31.487946, 29.436544, 25.704399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959354, 29.881256, 25.971025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.623266, 30.043972, 26.114443>,  <31.421614, 30.141602, 26.200493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.623266, 30.043972, 26.114443>,  <31.959354, 29.881256, 25.971025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623266, 30.043972, 26.114443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486934, 0.275098, 0.828985,
		0.238587, 0.871117, -0.429222,
		-0.840221, 0.406788, 0.358541,
		31.371201, 30.166008, 26.222006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154774, 30.560467, 26.110910>,  <31.959354, 29.881256, 25.971025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154774, 30.560467, 26.110910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.821266, 30.499794, 26.323261>,  <31.621162, 30.463390, 26.450672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.821266, 30.499794, 26.323261>,  <32.154774, 30.560467, 26.110910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821266, 30.499794, 26.323261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366826, 0.566443, 0.737957,
		-0.412645, 0.810022, -0.416640,
		-0.833764, -0.151681, 0.530877,
		31.571136, 30.454290, 26.482525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014061, 31.108297, 26.559402>,  <32.154774, 30.560467, 26.110910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014061, 31.108297, 26.559402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.791788, 30.833256, 26.746344>,  <31.658424, 30.668230, 26.858509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.791788, 30.833256, 26.746344>,  <32.014061, 31.108297, 26.559402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791788, 30.833256, 26.746344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244608, 0.402037, 0.882345,
		-0.794599, 0.604620, -0.055210,
		-0.555680, -0.687605, 0.467353,
		31.625084, 30.626974, 26.886549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859106, 31.459513, 27.051733>,  <32.014061, 31.108297, 26.559402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859106, 31.459513, 27.051733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.804243, 31.085268, 27.181854>,  <31.771324, 30.860722, 27.259928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.804243, 31.085268, 27.181854>,  <31.859106, 31.459513, 27.051733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804243, 31.085268, 27.181854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226390, 0.290106, 0.929831,
		-0.964331, 0.201180, 0.172022,
		-0.137159, -0.935609, 0.325303,
		31.763096, 30.804585, 27.279446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485540, 31.620554, 27.629240>,  <31.859106, 31.459513, 27.051733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485540, 31.620554, 27.629240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.623777, 31.247917, 27.674326>,  <31.706720, 31.024336, 27.701378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.623777, 31.247917, 27.674326>,  <31.485540, 31.620554, 27.629240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623777, 31.247917, 27.674326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399852, 0.254858, 0.880435,
		-0.848931, -0.259204, 0.460576,
		0.345593, -0.931591, 0.112714,
		31.727455, 30.968439, 27.708139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422817, 31.522770, 28.299231>,  <31.485540, 31.620554, 27.629240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422817, 31.522770, 28.299231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.675425, 31.236906, 28.178934>,  <31.826988, 31.065388, 28.106756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.675425, 31.236906, 28.178934>,  <31.422817, 31.522770, 28.299231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675425, 31.236906, 28.178934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536239, 0.122414, 0.835142,
		-0.560029, -0.688675, 0.460536,
		0.631518, -0.714661, -0.300739,
		31.864880, 31.022507, 28.088713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388893, 31.076656, 28.801474>,  <31.422817, 31.522770, 28.299231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388893, 31.076656, 28.801474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.736902, 31.015755, 28.613909>,  <31.945707, 30.979214, 28.501369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.736902, 31.015755, 28.613909>,  <31.388893, 31.076656, 28.801474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736902, 31.015755, 28.613909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491872, 0.203409, 0.846574,
		-0.033513, -0.967183, 0.251860,
		0.870022, -0.152254, -0.468913,
		31.997910, 30.970079, 28.473234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717436, 30.764650, 29.317398>,  <31.388893, 31.076656, 28.801474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717436, 30.764650, 29.317398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.006744, 30.846556, 29.053595>,  <32.180328, 30.895699, 28.895313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.006744, 30.846556, 29.053595>,  <31.717436, 30.764650, 29.317398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006744, 30.846556, 29.053595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655308, 0.097740, 0.749012,
		0.217830, -0.973919, -0.063491,
		0.723271, 0.204764, -0.659508,
		32.223724, 30.907986, 28.855742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335892, 30.333826, 29.510056>,  <31.717436, 30.764650, 29.317398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335892, 30.333826, 29.510056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.470406, 30.645760, 29.298862>,  <32.551113, 30.832920, 29.172146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.470406, 30.645760, 29.298862>,  <32.335892, 30.333826, 29.510056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470406, 30.645760, 29.298862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743071, 0.124715, 0.657489,
		0.578581, -0.613435, -0.537533,
		0.336288, 0.779835, -0.527984,
		32.571293, 30.879711, 29.140467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049809, 30.225431, 29.540543>,  <32.335892, 30.333826, 29.510056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049809, 30.225431, 29.540543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.954628, 30.606962, 29.467230>,  <32.897518, 30.835880, 29.423243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.954628, 30.606962, 29.467230>,  <33.049809, 30.225431, 29.540543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954628, 30.606962, 29.467230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700845, 0.299264, 0.647501,
		0.672454, 0.025624, -0.739696,
		-0.237956, 0.953826, -0.183283,
		32.883240, 30.893110, 29.412245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611595, 30.578262, 29.731459>,  <33.049809, 30.225431, 29.540543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611595, 30.578262, 29.731459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339172, 30.871145, 29.733917>,  <33.175720, 31.046875, 29.735392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339172, 30.871145, 29.733917>,  <33.611595, 30.578262, 29.731459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339172, 30.871145, 29.733917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404114, 0.368858, 0.837040,
		0.610620, 0.572552, -0.547108,
		-0.681054, 0.732207, 0.006144,
		33.134857, 31.090807, 29.735760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928284, 31.229422, 29.975937>,  <33.611595, 30.578262, 29.731459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928284, 31.229422, 29.975937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.539188, 31.304327, 30.030664>,  <33.305733, 31.349270, 30.063501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.539188, 31.304327, 30.030664>,  <33.928284, 31.229422, 29.975937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539188, 31.304327, 30.030664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194784, 0.339442, 0.920238,
		0.125885, 0.921798, -0.366663,
		-0.972734, 0.187264, 0.136820,
		33.247368, 31.360506, 30.071711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448292, 31.689259, 29.628836>,  <33.928284, 31.229422, 29.975937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448292, 31.689259, 29.628836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798840, 31.498617, 29.656647>,  <35.009167, 31.384232, 29.673332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798840, 31.498617, 29.656647>,  <34.448292, 31.689259, 29.628836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798840, 31.498617, 29.656647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092422, -0.308069, -0.946864,
		0.472697, 0.823373, -0.314030,
		0.876365, -0.476603, 0.069525,
		35.061749, 31.355637, 29.677504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828579, 31.919712, 29.155338>,  <34.448292, 31.689259, 29.628836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828579, 31.919712, 29.155338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.979904, 31.556181, 29.225658>,  <35.070702, 31.338062, 29.267851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.979904, 31.556181, 29.225658>,  <34.828579, 31.919712, 29.155338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979904, 31.556181, 29.225658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237080, -0.278708, -0.930653,
		0.894802, 0.310402, -0.320905,
		0.378316, -0.908830, 0.175798,
		35.093399, 31.283531, 29.278399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297268, 31.766077, 28.575886>,  <34.828579, 31.919712, 29.155338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297268, 31.766077, 28.575886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.210571, 31.408995, 28.733923>,  <35.158554, 31.194746, 28.828745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.210571, 31.408995, 28.733923>,  <35.297268, 31.766077, 28.575886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210571, 31.408995, 28.733923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037513, -0.396797, -0.917140,
		0.975507, -0.213607, 0.052516,
		-0.216746, -0.892706, 0.395091,
		35.145546, 31.141182, 28.852449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674793, 31.302279, 28.280140>,  <35.297268, 31.766077, 28.575886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674793, 31.302279, 28.280140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.357578, 31.095682, 28.409344>,  <35.167252, 30.971724, 28.486866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.357578, 31.095682, 28.409344>,  <35.674793, 31.302279, 28.280140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357578, 31.095682, 28.409344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067759, -0.452157, -0.889361,
		0.605396, -0.727181, 0.323580,
		-0.793035, -0.516490, 0.323007,
		35.119667, 30.940735, 28.506247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838352, 30.706251, 28.019232>,  <35.674793, 31.302279, 28.280140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838352, 30.706251, 28.019232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.451859, 30.661333, 28.112000>,  <35.219963, 30.634382, 28.167660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.451859, 30.661333, 28.112000>,  <35.838352, 30.706251, 28.019232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451859, 30.661333, 28.112000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154634, -0.467262, -0.870491,
		0.206119, -0.876958, 0.434119,
		-0.966232, -0.112295, 0.231919,
		35.161987, 30.627645, 28.181576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665115, 30.048298, 27.838036>,  <35.838352, 30.706251, 28.019232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665115, 30.048298, 27.838036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.312737, 30.237368, 27.828991>,  <35.101311, 30.350809, 27.823565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.312737, 30.237368, 27.828991>,  <35.665115, 30.048298, 27.838036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312737, 30.237368, 27.828991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133994, -0.294982, -0.946061,
		-0.453852, -0.830398, 0.323199,
		-0.880945, 0.472678, -0.022610,
		35.048454, 30.379171, 27.822208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115368, 29.593586, 27.421171>,  <35.665115, 30.048298, 27.838036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115368, 29.593586, 27.421171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.953697, 29.959435, 27.416964>,  <34.856697, 30.178944, 27.414438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.953697, 29.959435, 27.416964>,  <35.115368, 29.593586, 27.421171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953697, 29.959435, 27.416964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515666, -0.237344, -0.823260,
		-0.755468, -0.327315, 0.567567,
		-0.404174, 0.914622, -0.010520,
		34.832443, 30.233822, 27.413807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455452, 29.449232, 27.156754>,  <35.115368, 29.593586, 27.421171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455452, 29.449232, 27.156754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503754, 29.845083, 27.125624>,  <34.532734, 30.082594, 27.106947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503754, 29.845083, 27.125624>,  <34.455452, 29.449232, 27.156754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503754, 29.845083, 27.125624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407818, -0.022020, -0.912798,
		-0.905043, 0.141961, 0.400929,
		0.120754, 0.989627, -0.077823,
		34.539978, 30.141972, 27.102276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867142, 29.658560, 26.832663>,  <34.455452, 29.449232, 27.156754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867142, 29.658560, 26.832663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136261, 29.949961, 26.781082>,  <34.297733, 30.124802, 26.750134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136261, 29.949961, 26.781082>,  <33.867142, 29.658560, 26.832663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136261, 29.949961, 26.781082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177145, -0.010600, -0.984128,
		-0.718307, 0.684961, 0.121919,
		0.672797, 0.728503, -0.128951,
		34.338100, 30.168512, 26.742397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556862, 30.136072, 26.465477>,  <33.867142, 29.658560, 26.832663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556862, 30.136072, 26.465477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946716, 30.180735, 26.387896>,  <34.180630, 30.207531, 26.341347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946716, 30.180735, 26.387896>,  <33.556862, 30.136072, 26.465477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946716, 30.180735, 26.387896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208622, 0.139569, -0.967986,
		-0.081010, 0.983897, 0.159322,
		0.974636, 0.111654, -0.193956,
		34.239105, 30.214231, 26.329708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540684, 30.637060, 25.846798>,  <33.556862, 30.136072, 26.465477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540684, 30.637060, 25.846798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.892860, 30.447418, 25.849766>,  <34.104164, 30.333633, 25.851547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.892860, 30.447418, 25.849766>,  <33.540684, 30.637060, 25.846798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892860, 30.447418, 25.849766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041370, -0.092395, -0.994863,
		0.472355, 0.875607, -0.100961,
		0.880437, -0.474105, 0.007419,
		34.156990, 30.305187, 25.851992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081436, 30.993338, 25.448345>,  <33.540684, 30.637060, 25.846798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081436, 30.993338, 25.448345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.234467, 30.624071, 25.433376>,  <34.326286, 30.402512, 25.424395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.234467, 30.624071, 25.433376>,  <34.081436, 30.993338, 25.448345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234467, 30.624071, 25.433376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097954, -0.000251, -0.995191,
		0.918716, 0.384403, -0.090524,
		0.382577, -0.923165, -0.037424,
		34.349239, 30.347122, 25.422150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392029, 30.998562, 24.859453>,  <34.081436, 30.993338, 25.448345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392029, 30.998562, 24.859453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.330959, 30.611158, 24.938122>,  <34.294319, 30.378716, 24.985323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.330959, 30.611158, 24.938122>,  <34.392029, 30.998562, 24.859453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330959, 30.611158, 24.938122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111849, -0.180795, -0.977140,
		0.981928, -0.171177, -0.080725,
		-0.152669, -0.968510, 0.196673,
		34.285160, 30.320606, 24.997124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795307, 30.634518, 24.395742>,  <34.392029, 30.998562, 24.859453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795307, 30.634518, 24.395742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.521999, 30.369894, 24.519348>,  <34.358017, 30.211121, 24.593512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.521999, 30.369894, 24.519348>,  <34.795307, 30.634518, 24.395742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521999, 30.369894, 24.519348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181638, -0.255909, -0.949483,
		0.707217, -0.704878, 0.054690,
		-0.683265, -0.661557, 0.309016,
		34.317020, 30.171427, 24.612053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261772, 30.021751, 24.449154>,  <34.795307, 30.634518, 24.395742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261772, 30.021751, 24.449154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.621593, 29.928669, 24.301287>,  <35.837486, 29.872820, 24.212566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.621593, 29.928669, 24.301287>,  <35.261772, 30.021751, 24.449154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621593, 29.928669, 24.301287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388449, 0.039095, 0.920640,
		-0.199789, -0.971761, 0.125563,
		0.899551, -0.232709, -0.369669,
		35.891460, 29.858856, 24.190386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485725, 29.466993, 24.911020>,  <35.261772, 30.021751, 24.449154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485725, 29.466993, 24.911020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815075, 29.600037, 24.727097>,  <36.012684, 29.679863, 24.616743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815075, 29.600037, 24.727097>,  <35.485725, 29.466993, 24.911020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815075, 29.600037, 24.727097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449554, 0.112208, 0.886178,
		0.346344, -0.936366, -0.057136,
		0.823375, 0.332608, -0.459810,
		36.062088, 29.699820, 24.589153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011257, 29.339003, 25.464346>,  <35.485725, 29.466993, 24.911020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011257, 29.339003, 25.464346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.178757, 29.593338, 25.205006>,  <36.279255, 29.745939, 25.049400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.178757, 29.593338, 25.205006>,  <36.011257, 29.339003, 25.464346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178757, 29.593338, 25.205006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597750, 0.344482, 0.723897,
		0.683626, -0.690684, -0.235820,
		0.418749, 0.635836, -0.648353,
		36.304382, 29.784088, 25.010500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689476, 29.117161, 25.434641>,  <36.011257, 29.339003, 25.464346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689476, 29.117161, 25.434641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682430, 29.501455, 25.323879>,  <36.678204, 29.732033, 25.257421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682430, 29.501455, 25.323879>,  <36.689476, 29.117161, 25.434641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682430, 29.501455, 25.323879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599307, 0.231831, 0.766215,
		0.800325, -0.152451, -0.579860,
		-0.017619, 0.960736, -0.276905,
		36.677143, 29.789677, 25.240808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381927, 29.295321, 25.414955>,  <36.689476, 29.117161, 25.434641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381927, 29.295321, 25.414955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176292, 29.637474, 25.440374>,  <37.052914, 29.842766, 25.455626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176292, 29.637474, 25.440374>,  <37.381927, 29.295321, 25.414955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176292, 29.637474, 25.440374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558876, 0.277839, 0.781321,
		0.650672, 0.437182, -0.620885,
		-0.514085, 0.855382, 0.063549,
		37.022068, 29.894089, 25.459438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900047, 29.715939, 25.635111>,  <37.381927, 29.295321, 25.414955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900047, 29.715939, 25.635111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.569164, 29.937876, 25.670618>,  <37.370636, 30.071037, 25.691921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.569164, 29.937876, 25.670618>,  <37.900047, 29.715939, 25.635111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569164, 29.937876, 25.670618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377399, 0.431579, 0.819335,
		0.416291, 0.711261, -0.566401,
		-0.827208, 0.554841, 0.088767,
		37.321003, 30.104328, 25.697248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146729, 30.428965, 25.812685>,  <37.900047, 29.715939, 25.635111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146729, 30.428965, 25.812685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767548, 30.394779, 25.935379>,  <37.540039, 30.374268, 26.008995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767548, 30.394779, 25.935379>,  <38.146729, 30.428965, 25.812685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767548, 30.394779, 25.935379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229879, 0.482886, 0.844972,
		-0.220335, 0.871503, -0.438105,
		-0.947950, -0.085466, 0.306737,
		37.483162, 30.369139, 26.027399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072849, 31.108219, 26.121370>,  <38.146729, 30.428965, 25.812685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072849, 31.108219, 26.121370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759941, 30.899750, 26.257854>,  <37.572197, 30.774668, 26.339745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759941, 30.899750, 26.257854>,  <38.072849, 31.108219, 26.121370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759941, 30.899750, 26.257854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112389, 0.420677, 0.900222,
		-0.612711, 0.742569, -0.270511,
		-0.782275, -0.521174, 0.341210,
		37.525257, 30.743397, 26.360218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560104, 31.537580, 26.460548>,  <38.072849, 31.108219, 26.121370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560104, 31.537580, 26.460548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521992, 31.179054, 26.633772>,  <37.499123, 30.963938, 26.737705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521992, 31.179054, 26.633772>,  <37.560104, 31.537580, 26.460548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521992, 31.179054, 26.633772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093281, 0.441164, 0.892565,
		-0.991070, 0.044651, -0.125644,
		-0.095283, -0.896315, 0.433059,
		37.493408, 30.910160, 26.763689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875084, 31.523779, 26.945889>,  <37.560104, 31.537580, 26.460548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875084, 31.523779, 26.945889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151875, 31.256245, 27.054577>,  <37.317947, 31.095724, 27.119789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151875, 31.256245, 27.054577>,  <36.875084, 31.523779, 26.945889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151875, 31.256245, 27.054577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033369, 0.346347, 0.937513,
		-0.721153, -0.657800, 0.217344,
		0.691972, -0.668838, 0.271719,
		37.359467, 31.055593, 27.136093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631519, 31.314047, 27.578184>,  <36.875084, 31.523779, 26.945889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631519, 31.314047, 27.578184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013538, 31.198366, 27.552141>,  <37.242752, 31.128958, 27.536516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013538, 31.198366, 27.552141>,  <36.631519, 31.314047, 27.578184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013538, 31.198366, 27.552141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166222, 0.340600, 0.925398,
		-0.245453, -0.894625, 0.373362,
		0.955051, -0.289202, -0.065105,
		37.300053, 31.111605, 27.532610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788921, 31.138390, 28.221123>,  <36.631519, 31.314047, 27.578184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788921, 31.138390, 28.221123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151260, 31.198774, 28.062811>,  <37.368664, 31.235004, 27.967823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151260, 31.198774, 28.062811>,  <36.788921, 31.138390, 28.221123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151260, 31.198774, 28.062811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317329, 0.377080, 0.870122,
		0.280594, -0.913795, 0.293675,
		0.905853, 0.150959, -0.395780,
		37.423016, 31.244062, 27.944077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292439, 30.973719, 28.790907>,  <36.788921, 31.138390, 28.221123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292439, 30.973719, 28.790907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.518108, 31.179117, 28.532288>,  <37.653511, 31.302357, 28.377117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.518108, 31.179117, 28.532288>,  <37.292439, 30.973719, 28.790907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518108, 31.179117, 28.532288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543283, 0.358786, 0.759023,
		0.621728, -0.779483, -0.076555,
		0.564179, 0.513497, -0.646547,
		37.687363, 31.333166, 28.338324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060249, 30.840662, 28.780540>,  <37.292439, 30.973719, 28.790907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060249, 30.840662, 28.780540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993984, 31.213928, 28.652941>,  <37.954224, 31.437887, 28.576382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993984, 31.213928, 28.652941>,  <38.060249, 30.840662, 28.780540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993984, 31.213928, 28.652941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596234, 0.352431, 0.721316,
		0.785531, -0.070700, -0.614770,
		-0.165668, 0.933163, -0.318999,
		37.944283, 31.493877, 28.557241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.636002, 35.150299, 22.849966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238201, 35.117092, 22.824429>,  <35.999519, 35.097168, 22.809107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238201, 35.117092, 22.824429>,  <36.636002, 35.150299, 22.849966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238201, 35.117092, 22.824429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103628, -0.691952, -0.714467,
		0.015139, -0.717154, 0.696750,
		-0.994501, -0.083019, -0.063842,
		35.939850, 35.092186, 22.805277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472401, 34.431301, 22.763618>,  <36.636002, 35.150299, 22.849966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472401, 34.431301, 22.763618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.122478, 34.598763, 22.666098>,  <35.912525, 34.699238, 22.607584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.122478, 34.598763, 22.666098>,  <36.472401, 34.431301, 22.763618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122478, 34.598763, 22.666098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109849, -0.661537, -0.741823,
		-0.471852, -0.622171, 0.624707,
		-0.874808, 0.418655, -0.243803,
		35.860035, 34.724358, 22.592957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056648, 33.940758, 22.740095>,  <36.472401, 34.431301, 22.763618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056648, 33.940758, 22.740095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883602, 34.230545, 22.525434>,  <35.779774, 34.404419, 22.396639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883602, 34.230545, 22.525434>,  <36.056648, 33.940758, 22.740095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883602, 34.230545, 22.525434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358085, -0.684340, -0.635180,
		-0.827419, -0.082620, 0.555475,
		-0.432612, 0.724467, -0.536651,
		35.753819, 34.447884, 22.364439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444180, 33.672504, 22.631638>,  <36.056648, 33.940758, 22.740095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444180, 33.672504, 22.631638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504333, 33.958134, 22.358147>,  <35.540428, 34.129513, 22.194052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504333, 33.958134, 22.358147>,  <35.444180, 33.672504, 22.631638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504333, 33.958134, 22.358147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467408, -0.558061, -0.685637,
		-0.871156, 0.422692, 0.249838,
		0.150388, 0.714073, -0.683728,
		35.549450, 34.172356, 22.153028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862812, 33.705879, 22.267557>,  <35.444180, 33.672504, 22.631638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862812, 33.705879, 22.267557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136303, 33.859833, 22.019564>,  <35.300396, 33.952206, 21.870768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136303, 33.859833, 22.019564>,  <34.862812, 33.705879, 22.267557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136303, 33.859833, 22.019564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268712, -0.657109, -0.704274,
		-0.678463, 0.648128, -0.345859,
		0.683727, 0.384887, -0.619983,
		35.341419, 33.975300, 21.833569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559875, 33.994057, 21.737276>,  <34.862812, 33.705879, 22.267557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559875, 33.994057, 21.737276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921925, 33.916447, 21.585957>,  <35.139153, 33.869881, 21.495165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921925, 33.916447, 21.585957>,  <34.559875, 33.994057, 21.737276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921925, 33.916447, 21.585957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423662, -0.337122, -0.840750,
		0.035593, 0.921251, -0.387337,
		0.905121, -0.194024, -0.378300,
		35.193462, 33.858238, 21.472467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325390, 33.962471, 20.997372>,  <34.559875, 33.994057, 21.737276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325390, 33.962471, 20.997372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.707443, 33.845444, 21.015783>,  <34.936676, 33.775227, 21.026831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.707443, 33.845444, 21.015783>,  <34.325390, 33.962471, 20.997372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707443, 33.845444, 21.015783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110081, -0.494979, -0.861904,
		0.274946, 0.818169, -0.504979,
		0.955137, -0.292566, 0.046028,
		34.993984, 33.757675, 21.029593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552803, 34.112846, 20.335100>,  <34.325390, 33.962471, 20.997372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552803, 34.112846, 20.335100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.794792, 33.833569, 20.488216>,  <34.939983, 33.666000, 20.580086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.794792, 33.833569, 20.488216>,  <34.552803, 34.112846, 20.335100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794792, 33.833569, 20.488216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058587, -0.440409, -0.895884,
		0.794089, 0.564410, -0.225529,
		0.604971, -0.698198, 0.382791,
		34.976284, 33.624107, 20.603054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026184, 34.062431, 19.771448>,  <34.552803, 34.112846, 20.335100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026184, 34.062431, 19.771448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070751, 33.743359, 20.008528>,  <35.097492, 33.551914, 20.150776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070751, 33.743359, 20.008528>,  <35.026184, 34.062431, 19.771448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070751, 33.743359, 20.008528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030104, -0.593432, -0.804321,
		0.993317, 0.107460, -0.042107,
		0.111420, -0.797679, 0.592701,
		35.104176, 33.504055, 20.186338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493500, 33.650398, 19.438902>,  <35.026184, 34.062431, 19.771448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493500, 33.650398, 19.438902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251686, 33.438370, 19.676744>,  <35.106598, 33.311153, 19.819450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251686, 33.438370, 19.676744>,  <35.493500, 33.650398, 19.438902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251686, 33.438370, 19.676744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003788, -0.748359, -0.663283,
		0.796568, -0.398727, 0.454419,
		-0.604537, -0.530071, 0.594608,
		35.070324, 33.279346, 19.855127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840557, 33.008102, 19.379494>,  <35.493500, 33.650398, 19.438902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840557, 33.008102, 19.379494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466805, 32.964844, 19.515284>,  <35.242554, 32.938889, 19.596758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466805, 32.964844, 19.515284>,  <35.840557, 33.008102, 19.379494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466805, 32.964844, 19.515284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149720, -0.745431, -0.649551,
		0.323300, -0.657752, 0.680323,
		-0.934377, -0.108143, 0.339477,
		35.186493, 32.932400, 19.617126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768406, 32.351784, 19.332300>,  <35.840557, 33.008102, 19.379494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768406, 32.351784, 19.332300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394840, 32.494667, 19.326637>,  <35.170700, 32.580399, 19.323240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394840, 32.494667, 19.326637>,  <35.768406, 32.351784, 19.332300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394840, 32.494667, 19.326637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136862, -0.393842, -0.908932,
		-0.330252, -0.846931, 0.416704,
		-0.933918, 0.357207, -0.014155,
		35.114666, 32.601830, 19.322390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278645, 31.825113, 19.108028>,  <35.768406, 32.351784, 19.332300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278645, 31.825113, 19.108028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089615, 32.173115, 19.051786>,  <34.976196, 32.381916, 19.018042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089615, 32.173115, 19.051786>,  <35.278645, 31.825113, 19.108028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089615, 32.173115, 19.051786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250850, -0.285736, -0.924894,
		-0.844836, -0.401809, 0.353271,
		-0.472574, 0.870003, -0.140606,
		34.947842, 32.434116, 19.009605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328484, 30.992414, 19.054178>,  <35.278645, 31.825113, 19.108028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328484, 30.992414, 19.054178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010273, 30.995844, 18.811834>,  <34.819347, 30.997902, 18.666428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010273, 30.995844, 18.811834>,  <35.328484, 30.992414, 19.054178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010273, 30.995844, 18.811834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557755, -0.380324, -0.737742,
		-0.236749, -0.924813, 0.297774,
		-0.795524, 0.008574, -0.605860,
		34.771614, 30.998417, 18.630075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186569, 30.314739, 18.940300>,  <35.328484, 30.992414, 19.054178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186569, 30.314739, 18.940300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080338, 30.549519, 18.634371>,  <35.016598, 30.690386, 18.450813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080338, 30.549519, 18.634371>,  <35.186569, 30.314739, 18.940300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080338, 30.549519, 18.634371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611372, -0.510864, -0.604352,
		-0.745446, -0.628097, -0.223168,
		-0.265583, 0.586950, -0.764823,
		35.000664, 30.725603, 18.404924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601646, 29.931686, 18.852915>,  <35.186569, 30.314739, 18.940300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601646, 29.931686, 18.852915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440006, 29.573229, 18.926270>,  <34.343021, 29.358154, 18.970282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440006, 29.573229, 18.926270>,  <34.601646, 29.931686, 18.852915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440006, 29.573229, 18.926270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342853, 0.037477, 0.938641,
		-0.848028, 0.442183, 0.292100,
		-0.404104, -0.896142, 0.183386,
		34.318775, 29.304386, 18.981285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379425, 29.958580, 19.516609>,  <34.601646, 29.931686, 18.852915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379425, 29.958580, 19.516609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332581, 29.562361, 19.488052>,  <34.304474, 29.324629, 19.470919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332581, 29.562361, 19.488052>,  <34.379425, 29.958580, 19.516609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332581, 29.562361, 19.488052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277959, -0.101704, 0.955194,
		-0.953428, 0.092018, 0.287243,
		-0.117109, -0.990550, -0.071390,
		34.297447, 29.265196, 19.466635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994064, 29.788372, 20.098831>,  <34.379425, 29.958580, 19.516609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994064, 29.788372, 20.098831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.200645, 29.463699, 19.989685>,  <34.324593, 29.268896, 19.924198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.200645, 29.463699, 19.989685>,  <33.994064, 29.788372, 20.098831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200645, 29.463699, 19.989685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202046, -0.194149, 0.959939,
		-0.832140, -0.550892, 0.063728,
		0.516450, -0.811680, -0.272865,
		34.355579, 29.220196, 19.907825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740437, 29.165998, 20.488089>,  <33.994064, 29.788372, 20.098831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740437, 29.165998, 20.488089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116562, 29.075438, 20.386456>,  <34.342236, 29.021101, 20.325476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116562, 29.075438, 20.386456>,  <33.740437, 29.165998, 20.488089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116562, 29.075438, 20.386456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211565, -0.195911, 0.957528,
		-0.266564, -0.954128, -0.136319,
		0.940311, -0.226403, -0.254083,
		34.398655, 29.007517, 20.310230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931118, 28.627682, 20.919674>,  <33.740437, 29.165998, 20.488089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931118, 28.627682, 20.919674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294693, 28.721661, 20.781900>,  <34.512836, 28.778048, 20.699236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294693, 28.721661, 20.781900>,  <33.931118, 28.627682, 20.919674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294693, 28.721661, 20.781900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391931, -0.199684, 0.898063,
		0.142221, -0.951276, -0.273584,
		0.908935, 0.234949, -0.344435,
		34.567375, 28.792145, 20.678570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422348, 28.247345, 21.265024>,  <33.931118, 28.627682, 20.919674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422348, 28.247345, 21.265024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.633503, 28.562965, 21.139336>,  <34.760197, 28.752338, 21.063923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.633503, 28.562965, 21.139336>,  <34.422348, 28.247345, 21.265024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633503, 28.562965, 21.139336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458030, 0.047075, 0.887689,
		0.715225, -0.612520, -0.336559,
		0.527884, 0.789052, -0.314222,
		34.791866, 28.799681, 21.045069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092178, 28.212795, 21.584589>,  <34.422348, 28.247345, 21.265024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092178, 28.212795, 21.584589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108784, 28.598219, 21.478886>,  <35.118748, 28.829473, 21.415464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108784, 28.598219, 21.478886>,  <35.092178, 28.212795, 21.584589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108784, 28.598219, 21.478886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516067, 0.205796, 0.831458,
		0.855542, -0.170890, -0.488718,
		0.041512, 0.963558, -0.264258,
		35.121239, 28.887287, 21.399609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768982, 28.443756, 21.673874>,  <35.092178, 28.212795, 21.584589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768982, 28.443756, 21.673874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531681, 28.763926, 21.708220>,  <35.389301, 28.956028, 21.728827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531681, 28.763926, 21.708220>,  <35.768982, 28.443756, 21.673874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531681, 28.763926, 21.708220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503147, 0.285414, 0.815709,
		0.628407, 0.527123, -0.572054,
		-0.593251, 0.800425, 0.085864,
		35.353706, 29.004053, 21.733978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289913, 28.969910, 21.906277>,  <35.768982, 28.443756, 21.673874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289913, 28.969910, 21.906277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948738, 29.162714, 21.986433>,  <35.744034, 29.278397, 22.034527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948738, 29.162714, 21.986433>,  <36.289913, 28.969910, 21.906277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948738, 29.162714, 21.986433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272925, 0.084548, 0.958313,
		0.444974, 0.872076, -0.203667,
		-0.852942, 0.482011, 0.200390,
		35.692856, 29.307318, 22.046551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397102, 29.613058, 22.183756>,  <36.289913, 28.969910, 21.906277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397102, 29.613058, 22.183756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030811, 29.527145, 22.319584>,  <35.811035, 29.475597, 22.401081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030811, 29.527145, 22.319584>,  <36.397102, 29.613058, 22.183756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030811, 29.527145, 22.319584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353822, -0.030585, 0.934812,
		-0.190396, 0.976183, 0.104002,
		-0.915729, -0.214783, 0.339572,
		35.756092, 29.462711, 22.421455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306999, 30.153275, 22.630220>,  <36.397102, 29.613058, 22.183756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306999, 30.153275, 22.630220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038708, 29.871565, 22.723276>,  <35.877735, 29.702539, 22.779110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038708, 29.871565, 22.723276>,  <36.306999, 30.153275, 22.630220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038708, 29.871565, 22.723276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214802, 0.115768, 0.969772,
		-0.709919, 0.700423, 0.073631,
		-0.670727, -0.704276, 0.232638,
		35.837490, 29.660282, 22.793068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943928, 30.501740, 23.170778>,  <36.306999, 30.153275, 22.630220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943928, 30.501740, 23.170778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904305, 30.105419, 23.207653>,  <35.880531, 29.867626, 23.229778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904305, 30.105419, 23.207653>,  <35.943928, 30.501740, 23.170778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904305, 30.105419, 23.207653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266681, 0.062821, 0.961735,
		-0.958681, 0.119854, 0.258005,
		-0.099060, -0.990802, 0.092188,
		35.874588, 29.808178, 23.235310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399784, 30.427341, 23.679684>,  <35.943928, 30.501740, 23.170778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399784, 30.427341, 23.679684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634598, 30.103577, 23.685890>,  <35.775486, 29.909317, 23.689615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634598, 30.103577, 23.685890>,  <35.399784, 30.427341, 23.679684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634598, 30.103577, 23.685890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233834, 0.187878, 0.953951,
		-0.775057, -0.556373, 0.299560,
		0.587034, -0.809414, 0.015517,
		35.810707, 29.860752, 23.690546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796204, 29.896690, 23.787323>,  <35.399784, 30.427341, 23.679684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796204, 29.896690, 23.787323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470337, 29.935467, 24.016033>,  <34.274818, 29.958733, 24.153259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470337, 29.935467, 24.016033>,  <34.796204, 29.896690, 23.787323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470337, 29.935467, 24.016033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576617, -0.030100, -0.816460,
		-0.061942, -0.994834, 0.080422,
		-0.814663, 0.096946, 0.571774,
		34.225937, 29.964548, 24.187565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390530, 29.281082, 23.666100>,  <34.796204, 29.896690, 23.787323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390530, 29.281082, 23.666100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133621, 29.551756, 23.810087>,  <33.979477, 29.714161, 23.896481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133621, 29.551756, 23.810087>,  <34.390530, 29.281082, 23.666100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133621, 29.551756, 23.810087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668857, -0.265460, -0.694379,
		-0.374321, -0.686749, 0.623106,
		-0.642273, 0.676689, 0.359969,
		33.940937, 29.754763, 23.918077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842705, 28.826572, 23.677717>,  <34.390530, 29.281082, 23.666100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842705, 28.826572, 23.677717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.707264, 29.202591, 23.694004>,  <33.625999, 29.428202, 23.703775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.707264, 29.202591, 23.694004>,  <33.842705, 28.826572, 23.677717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707264, 29.202591, 23.694004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653975, -0.204007, -0.728490,
		-0.676509, -0.273297, 0.683845,
		-0.338603, 0.940048, 0.040716,
		33.605682, 29.484606, 23.706219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117744, 28.760218, 23.528467>,  <33.842705, 28.826572, 23.677717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117744, 28.760218, 23.528467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.191875, 29.148506, 23.467335>,  <33.236355, 29.381479, 23.430655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.191875, 29.148506, 23.467335>,  <33.117744, 28.760218, 23.528467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191875, 29.148506, 23.467335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677425, 0.013539, -0.735467,
		-0.711863, 0.239834, 0.660099,
		0.185327, 0.970720, -0.152831,
		33.247475, 29.439722, 23.421486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434052, 29.162577, 23.618858>,  <33.117744, 28.760218, 23.528467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434052, 29.162577, 23.618858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684452, 29.363445, 23.380213>,  <32.834690, 29.483967, 23.237024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684452, 29.363445, 23.380213>,  <32.434052, 29.162577, 23.618858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684452, 29.363445, 23.380213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736461, 0.129129, -0.664042,
		-0.256424, 0.855072, 0.450666,
		0.625997, 0.502173, -0.596615,
		32.872250, 29.514097, 23.201229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969481, 29.587269, 23.299389>,  <32.434052, 29.162577, 23.618858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969481, 29.587269, 23.299389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.302689, 29.597595, 23.078333>,  <32.502613, 29.603790, 22.945700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.302689, 29.597595, 23.078333>,  <31.969481, 29.587269, 23.299389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302689, 29.597595, 23.078333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552458, -0.014365, -0.833417,
		-0.029454, 0.999563, 0.002296,
		0.833020, 0.025816, -0.552640,
		32.552593, 29.605341, 22.912540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863916, 30.135168, 22.795568>,  <31.969481, 29.587269, 23.299389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863916, 30.135168, 22.795568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.162052, 29.921494, 22.636013>,  <32.340935, 29.793289, 22.540279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.162052, 29.921494, 22.636013>,  <31.863916, 30.135168, 22.795568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162052, 29.921494, 22.636013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413021, 0.099689, -0.905249,
		0.523339, 0.839467, -0.146329,
		0.745339, -0.534189, -0.398889,
		32.385654, 29.761236, 22.516346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224211, 30.375620, 22.982101>,  <31.863916, 30.135168, 22.795568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224211, 30.375620, 22.982101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.839298, 30.276936, 22.936230>,  <30.608351, 30.217726, 22.908707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.839298, 30.276936, 22.936230>,  <31.224211, 30.375620, 22.982101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839298, 30.276936, 22.936230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136628, 0.073709, 0.987876,
		-0.235267, 0.966282, -0.104636,
		-0.962280, -0.246711, -0.114680,
		30.550613, 30.202923, 22.901825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805811, 30.979172, 23.286337>,  <31.224211, 30.375620, 22.982101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805811, 30.979172, 23.286337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.614521, 30.627876, 23.285938>,  <30.499746, 30.417099, 23.285700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.614521, 30.627876, 23.285938>,  <30.805811, 30.979172, 23.286337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614521, 30.627876, 23.285938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197679, 0.106535, 0.974460,
		-0.855701, 0.466208, -0.224557,
		-0.478224, -0.878237, -0.000997,
		30.471054, 30.364405, 23.285639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350836, 31.173981, 23.676950>,  <30.805811, 30.979172, 23.286337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350836, 31.173981, 23.676950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.321096, 30.775192, 23.686071>,  <30.303253, 30.535919, 23.691544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.321096, 30.775192, 23.686071>,  <30.350836, 31.173981, 23.676950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321096, 30.775192, 23.686071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238070, 0.039948, 0.970426,
		-0.968398, 0.066720, -0.240319,
		-0.074347, -0.996972, 0.022801,
		30.298792, 30.476101, 23.692911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755903, 30.965889, 24.083746>,  <30.350836, 31.173981, 23.676950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755903, 30.965889, 24.083746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.020332, 30.666277, 24.101347>,  <30.178989, 30.486509, 24.111908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.020332, 30.666277, 24.101347>,  <29.755903, 30.965889, 24.083746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020332, 30.666277, 24.101347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170866, -0.093180, 0.980878,
		-0.730608, -0.655950, -0.189583,
		0.661072, -0.749031, 0.044001,
		30.218655, 30.441568, 24.114548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498463, 30.549105, 24.760441>,  <29.755903, 30.965889, 24.083746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498463, 30.549105, 24.760441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.854616, 30.392849, 24.666956>,  <30.068308, 30.299095, 24.610865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.854616, 30.392849, 24.666956>,  <29.498463, 30.549105, 24.760441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854616, 30.392849, 24.666956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185699, -0.157053, 0.969974,
		-0.415615, -0.907048, -0.067296,
		0.890382, -0.390640, -0.233712,
		30.121731, 30.275658, 24.596842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638710, 29.934080, 25.227720>,  <29.498463, 30.549105, 24.760441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638710, 29.934080, 25.227720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.973125, 30.090948, 25.074234>,  <30.173775, 30.185070, 24.982141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.973125, 30.090948, 25.074234>,  <29.638710, 29.934080, 25.227720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973125, 30.090948, 25.074234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453057, -0.098973, 0.885970,
		0.309475, -0.914552, -0.260422,
		0.836040, 0.392172, -0.383715,
		30.223938, 30.208599, 24.959120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068617, 29.417643, 25.417446>,  <29.638710, 29.934080, 25.227720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068617, 29.417643, 25.417446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.266306, 29.759708, 25.354912>,  <30.384918, 29.964949, 25.317392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.266306, 29.759708, 25.354912>,  <30.068617, 29.417643, 25.417446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266306, 29.759708, 25.354912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457165, -0.102705, 0.883432,
		0.739423, -0.508081, -0.441710,
		0.494220, 0.855164, -0.156335,
		30.414572, 30.016258, 25.308012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.702833, 34.305965, 19.611355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.031307, 34.084606, 19.667086>,  <32.228390, 33.951790, 19.700525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.031307, 34.084606, 19.667086>,  <31.702833, 34.305965, 19.611355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031307, 34.084606, 19.667086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119398, 0.072135, 0.990223,
		-0.558033, -0.829790, -0.006839,
		0.821184, -0.553393, 0.139329,
		32.277664, 33.918587, 19.708885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587366, 33.687733, 20.048729>,  <31.702833, 34.305965, 19.611355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587366, 33.687733, 20.048729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.981489, 33.724934, 20.106031>,  <32.217964, 33.747253, 20.140413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.981489, 33.724934, 20.106031>,  <31.587366, 33.687733, 20.048729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981489, 33.724934, 20.106031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167481, 0.361611, 0.917163,
		0.033494, -0.927679, 0.371874,
		0.985306, 0.093001, 0.143257,
		32.277081, 33.752834, 20.149008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786327, 33.457916, 20.723936>,  <31.587366, 33.687733, 20.048729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786327, 33.457916, 20.723936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073780, 33.709549, 20.605402>,  <32.246254, 33.860531, 20.534281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073780, 33.709549, 20.605402>,  <31.786327, 33.457916, 20.723936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073780, 33.709549, 20.605402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138350, 0.546970, 0.825641,
		0.681487, -0.552335, 0.480105,
		0.718633, 0.629087, -0.296337,
		32.289371, 33.898273, 20.516500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287643, 33.562611, 21.337929>,  <31.786327, 33.457916, 20.723936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287643, 33.562611, 21.337929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.306156, 33.866013, 21.077921>,  <32.317265, 34.048054, 20.921917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.306156, 33.866013, 21.077921>,  <32.287643, 33.562611, 21.337929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306156, 33.866013, 21.077921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238243, 0.640319, 0.730227,
		0.970102, 0.121067, 0.210344,
		0.046281, 0.758508, -0.650019,
		32.320042, 34.093563, 20.882915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742413, 34.064346, 21.685331>,  <32.287643, 33.562611, 21.337929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742413, 34.064346, 21.685331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.559769, 34.280300, 21.402479>,  <32.450184, 34.409874, 21.232767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.559769, 34.280300, 21.402479>,  <32.742413, 34.064346, 21.685331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559769, 34.280300, 21.402479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103305, 0.757275, 0.644874,
		0.883650, 0.367505, -0.290005,
		-0.456608, 0.539884, -0.707131,
		32.422787, 34.442265, 21.190340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095898, 34.732441, 21.584652>,  <32.742413, 34.064346, 21.685331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095898, 34.732441, 21.584652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.721596, 34.784378, 21.453501>,  <32.497013, 34.815540, 21.374809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.721596, 34.784378, 21.453501>,  <33.095898, 34.732441, 21.584652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721596, 34.784378, 21.453501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092551, 0.806741, 0.583612,
		0.340291, 0.576464, -0.742894,
		-0.935754, 0.129842, -0.327879,
		32.440868, 34.823330, 21.355137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021149, 35.538822, 21.486235>,  <33.095898, 34.732441, 21.584652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021149, 35.538822, 21.486235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.650051, 35.389713, 21.493525>,  <32.427391, 35.300247, 21.497898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.650051, 35.389713, 21.493525>,  <33.021149, 35.538822, 21.486235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650051, 35.389713, 21.493525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262435, 0.686305, 0.678316,
		-0.265363, 0.624522, -0.734544,
		-0.927745, -0.372770, 0.018224,
		32.371727, 35.277882, 21.498991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644218, 36.074074, 21.367439>,  <33.021149, 35.538822, 21.486235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644218, 36.074074, 21.367439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.404198, 35.805603, 21.541546>,  <32.260185, 35.644520, 21.646009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.404198, 35.805603, 21.541546>,  <32.644218, 36.074074, 21.367439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404198, 35.805603, 21.541546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290187, 0.689679, 0.663427,
		-0.745472, 0.271781, -0.608610,
		-0.600052, -0.671177, 0.435269,
		32.224182, 35.604252, 21.672127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142326, 36.508789, 21.703110>,  <32.644218, 36.074074, 21.367439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142326, 36.508789, 21.703110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057583, 36.162033, 21.883604>,  <32.006737, 35.953979, 21.991901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057583, 36.162033, 21.883604>,  <32.142326, 36.508789, 21.703110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057583, 36.162033, 21.883604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232431, 0.493163, 0.838311,
		-0.949259, 0.072722, -0.305973,
		-0.211859, -0.866892, 0.451236,
		31.994026, 35.901966, 22.018974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447327, 36.529350, 22.012199>,  <32.142326, 36.508789, 21.703110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447327, 36.529350, 22.012199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.659920, 36.256210, 22.212694>,  <31.787476, 36.092327, 22.332993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.659920, 36.256210, 22.212694>,  <31.447327, 36.529350, 22.012199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659920, 36.256210, 22.212694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216772, 0.462387, 0.859772,
		-0.818864, -0.565607, 0.097727,
		0.531481, -0.682853, 0.501239,
		31.819365, 36.051353, 22.363066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059227, 36.305393, 22.608662>,  <31.447327, 36.529350, 22.012199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059227, 36.305393, 22.608662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434557, 36.203323, 22.701986>,  <31.659754, 36.142082, 22.757980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434557, 36.203323, 22.701986>,  <31.059227, 36.305393, 22.608662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434557, 36.203323, 22.701986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056436, 0.552700, 0.831467,
		-0.341123, -0.793352, 0.504210,
		0.938323, -0.255177, 0.233312,
		31.716053, 36.126770, 22.771980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049614, 36.024086, 23.251097>,  <31.059227, 36.305393, 22.608662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049614, 36.024086, 23.251097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.429314, 36.145828, 23.219358>,  <31.657133, 36.218872, 23.200315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.429314, 36.145828, 23.219358>,  <31.049614, 36.024086, 23.251097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429314, 36.145828, 23.219358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057400, 0.415668, 0.907703,
		0.309243, -0.857082, 0.412042,
		0.949250, 0.304352, -0.079346,
		31.714088, 36.237133, 23.195555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986080, 35.234936, 23.528236>,  <31.049614, 36.024086, 23.251097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986080, 35.234936, 23.528236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.625824, 35.157269, 23.683746>,  <30.409670, 35.110668, 23.777052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.625824, 35.157269, 23.683746>,  <30.986080, 35.234936, 23.528236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625824, 35.157269, 23.683746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288301, -0.402430, -0.868869,
		0.325165, -0.894622, 0.306464,
		-0.900639, -0.194172, 0.388776,
		30.355633, 35.099018, 23.800379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899813, 34.613117, 23.284855>,  <30.986080, 35.234936, 23.528236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899813, 34.613117, 23.284855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535263, 34.745335, 23.382948>,  <30.316534, 34.824665, 23.441803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535263, 34.745335, 23.382948>,  <30.899813, 34.613117, 23.284855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535263, 34.745335, 23.382948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346066, -0.292890, -0.891322,
		-0.222793, -0.897194, 0.381322,
		-0.911374, 0.330543, 0.245234,
		30.261850, 34.844498, 23.456518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485178, 34.041996, 23.087440>,  <30.899813, 34.613117, 23.284855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485178, 34.041996, 23.087440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207304, 34.329327, 23.102474>,  <30.040579, 34.501724, 23.111494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207304, 34.329327, 23.102474>,  <30.485178, 34.041996, 23.087440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207304, 34.329327, 23.102474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468766, -0.412466, -0.781109,
		-0.545591, -0.560244, 0.623263,
		-0.694686, 0.718330, 0.037586,
		29.998898, 34.544827, 23.113750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785894, 33.658070, 22.993254>,  <30.485178, 34.041996, 23.087440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785894, 33.658070, 22.993254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.737803, 34.041180, 22.888788>,  <29.708948, 34.271046, 22.826109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.737803, 34.041180, 22.888788>,  <29.785894, 33.658070, 22.993254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737803, 34.041180, 22.888788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522579, -0.284734, -0.803640,
		-0.844071, 0.039857, 0.534748,
		-0.120230, 0.957778, -0.261164,
		29.701733, 34.328514, 22.810438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094265, 33.709415, 22.787966>,  <29.785894, 33.658070, 22.993254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094265, 33.709415, 22.787966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248407, 34.036369, 22.616671>,  <29.340893, 34.232540, 22.513893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248407, 34.036369, 22.616671>,  <29.094265, 33.709415, 22.787966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248407, 34.036369, 22.616671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291990, -0.332224, -0.896866,
		-0.875353, 0.470654, 0.110643,
		0.385356, 0.817381, -0.428239,
		29.364014, 34.281582, 22.488199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514860, 33.986118, 22.381960>,  <29.094265, 33.709415, 22.787966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514860, 33.986118, 22.381960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857531, 34.123440, 22.227945>,  <29.063133, 34.205833, 22.135536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857531, 34.123440, 22.227945>,  <28.514860, 33.986118, 22.381960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857531, 34.123440, 22.227945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182184, -0.496959, -0.848434,
		-0.482614, 0.796981, -0.363189,
		0.856675, 0.343299, -0.385036,
		29.114532, 34.226429, 22.112434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324196, 34.382557, 21.755001>,  <28.514860, 33.986118, 22.381960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324196, 34.382557, 21.755001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.709909, 34.279526, 21.730289>,  <28.941338, 34.217709, 21.715462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.709909, 34.279526, 21.730289>,  <28.324196, 34.382557, 21.755001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709909, 34.279526, 21.730289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126646, -0.243489, -0.961600,
		0.232640, 0.935077, -0.267413,
		0.964282, -0.257573, -0.061778,
		28.999193, 34.202255, 21.711756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525648, 34.647438, 21.043602>,  <28.324196, 34.382557, 21.755001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525648, 34.647438, 21.043602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792324, 34.372601, 21.159138>,  <28.952330, 34.207699, 21.228460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792324, 34.372601, 21.159138>,  <28.525648, 34.647438, 21.043602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792324, 34.372601, 21.159138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060740, -0.436329, -0.897735,
		0.742854, 0.580968, -0.332631,
		0.666692, -0.687090, 0.288841,
		28.992332, 34.166473, 21.245790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896549, 34.624931, 20.524305>,  <28.525648, 34.647438, 21.043602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896549, 34.624931, 20.524305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992603, 34.276985, 20.696659>,  <29.050236, 34.068218, 20.800072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992603, 34.276985, 20.696659>,  <28.896549, 34.624931, 20.524305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992603, 34.276985, 20.696659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050840, -0.454533, -0.889278,
		0.969407, 0.191641, -0.153374,
		0.240136, -0.869870, 0.430884,
		29.064644, 34.016026, 20.825924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336029, 34.417374, 20.069839>,  <28.896549, 34.624931, 20.524305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336029, 34.417374, 20.069839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.235525, 34.096172, 20.286007>,  <29.175222, 33.903450, 20.415707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.235525, 34.096172, 20.286007>,  <29.336029, 34.417374, 20.069839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235525, 34.096172, 20.286007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051720, -0.546392, -0.835931,
		0.966537, -0.237986, 0.095754,
		-0.251260, -0.803006, 0.540416,
		29.160147, 33.855270, 20.448132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854576, 33.835091, 19.948120>,  <29.336029, 34.417374, 20.069839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854576, 33.835091, 19.948120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509544, 33.677368, 20.074913>,  <29.302525, 33.582733, 20.150988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509544, 33.677368, 20.074913>,  <29.854576, 33.835091, 19.948120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509544, 33.677368, 20.074913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016275, -0.604595, -0.796367,
		0.505657, -0.692090, 0.515095,
		-0.862581, -0.394305, 0.316981,
		29.250771, 33.559078, 20.170008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979259, 33.198502, 19.774324>,  <29.854576, 33.835091, 19.948120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979259, 33.198502, 19.774324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582933, 33.221523, 19.823269>,  <29.345139, 33.235336, 19.852636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582933, 33.221523, 19.823269>,  <29.979259, 33.198502, 19.774324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582933, 33.221523, 19.823269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130375, -0.646715, -0.751507,
		0.035882, -0.760557, 0.648279,
		-0.990815, 0.057554, 0.122363,
		29.285688, 33.238789, 19.859978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689159, 32.501465, 19.875471>,  <29.979259, 33.198502, 19.774324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689159, 32.501465, 19.875471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381718, 32.719379, 19.741335>,  <29.197252, 32.850128, 19.660852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381718, 32.719379, 19.741335>,  <29.689159, 32.501465, 19.875471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381718, 32.719379, 19.741335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234123, -0.727376, -0.645067,
		-0.595341, -0.417291, 0.686612,
		-0.768606, 0.544787, -0.335339,
		29.151136, 32.882816, 19.640732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826233, 32.229755, 20.449760>,  <29.689159, 32.501465, 19.875471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826233, 32.229755, 20.449760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.916813, 31.878351, 20.281507>,  <29.971161, 31.667507, 20.180555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.916813, 31.878351, 20.281507>,  <29.826233, 32.229755, 20.449760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916813, 31.878351, 20.281507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340751, -0.476015, 0.810739,
		-0.912475, -0.040260, -0.407148,
		0.226449, -0.878515, -0.420633,
		29.984747, 31.614798, 20.155317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253786, 31.747250, 20.385572>,  <29.826233, 32.229755, 20.449760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253786, 31.747250, 20.385572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.579435, 31.515493, 20.401108>,  <29.774826, 31.376440, 20.410429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.579435, 31.515493, 20.401108>,  <29.253786, 31.747250, 20.385572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579435, 31.515493, 20.401108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359438, -0.450270, 0.817350,
		-0.456118, -0.679355, -0.574833,
		0.814101, -0.579425, 0.038810,
		29.823673, 31.341677, 20.412760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998539, 30.973894, 20.710100>,  <29.253786, 31.747250, 20.385572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998539, 30.973894, 20.710100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398127, 30.988577, 20.699406>,  <29.637878, 30.997387, 20.692989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398127, 30.988577, 20.699406>,  <28.998539, 30.973894, 20.710100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398127, 30.988577, 20.699406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043855, -0.626855, 0.777901,
		0.011796, -0.778271, -0.627818,
		0.998968, 0.036709, -0.026736,
		29.697817, 30.999590, 20.691385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224367, 30.292772, 20.859901>,  <28.998539, 30.973894, 20.710100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224367, 30.292772, 20.859901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541645, 30.520321, 20.946829>,  <29.732012, 30.656849, 20.998985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541645, 30.520321, 20.946829>,  <29.224367, 30.292772, 20.859901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541645, 30.520321, 20.946829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108809, -0.483517, 0.868546,
		0.599167, -0.665281, -0.445422,
		0.793196, 0.568870, 0.217318,
		29.779604, 30.690981, 21.012024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767033, 29.785408, 21.143587>,  <29.224367, 30.292772, 20.859901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767033, 29.785408, 21.143587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888998, 30.147427, 21.262190>,  <29.962177, 30.364637, 21.333351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888998, 30.147427, 21.262190>,  <29.767033, 29.785408, 21.143587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888998, 30.147427, 21.262190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288182, -0.384417, 0.877026,
		0.907733, -0.181969, -0.378032,
		0.304913, 0.905048, 0.296508,
		29.980473, 30.418941, 21.351143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454865, 29.726097, 21.321594>,  <29.767033, 29.785408, 21.143587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454865, 29.726097, 21.321594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277681, 30.029663, 21.512522>,  <30.171371, 30.211803, 21.627079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277681, 30.029663, 21.512522>,  <30.454865, 29.726097, 21.321594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277681, 30.029663, 21.512522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333042, -0.355015, 0.873526,
		0.832389, 0.545903, -0.095495,
		-0.442958, 0.758917, 0.477319,
		30.144794, 30.257338, 21.655718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949856, 29.835094, 21.784174>,  <30.454865, 29.726097, 21.321594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949856, 29.835094, 21.784174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.633791, 30.030865, 21.931746>,  <30.444153, 30.148327, 22.020288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.633791, 30.030865, 21.931746>,  <30.949856, 29.835094, 21.784174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633791, 30.030865, 21.931746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314630, -0.192660, 0.929457,
		0.525977, 0.850497, -0.001755,
		-0.790162, 0.489426, 0.368927,
		30.396742, 30.177692, 22.042423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255217, 30.041639, 22.325344>,  <30.949856, 29.835094, 21.784174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255217, 30.041639, 22.325344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864752, 30.067505, 22.408218>,  <30.630472, 30.083025, 22.457943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864752, 30.067505, 22.408218>,  <31.255217, 30.041639, 22.325344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864752, 30.067505, 22.408218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198053, -0.125082, 0.972178,
		0.088781, 0.990037, 0.109293,
		-0.976162, 0.064665, 0.207185,
		30.571903, 30.086905, 22.470373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984314, 30.370605, 22.095324>,  <31.255217, 30.041639, 22.325344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984314, 30.370605, 22.095324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.178566, 30.021078, 22.085506>,  <32.295116, 29.811361, 22.079617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.178566, 30.021078, 22.085506>,  <31.984314, 30.370605, 22.095324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178566, 30.021078, 22.085506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191845, -0.079143, -0.978229,
		0.852853, 0.479766, -0.206073,
		0.485631, -0.873820, -0.024544,
		32.324257, 29.758932, 22.078144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324013, 30.331335, 21.460981>,  <31.984314, 30.370605, 22.095324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324013, 30.331335, 21.460981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331795, 29.949446, 21.579723>,  <32.336464, 29.720312, 21.650969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331795, 29.949446, 21.579723>,  <32.324013, 30.331335, 21.460981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331795, 29.949446, 21.579723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247210, -0.292286, -0.923827,
		0.968767, -0.055410, -0.241704,
		0.019457, -0.954724, 0.296855,
		32.337631, 29.663029, 21.668779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695271, 30.022699, 20.876778>,  <32.324013, 30.331335, 21.460981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695271, 30.022699, 20.876778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.529018, 29.715475, 21.071644>,  <32.429268, 29.531139, 21.188564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.529018, 29.715475, 21.071644>,  <32.695271, 30.022699, 20.876778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529018, 29.715475, 21.071644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312680, -0.382313, -0.869521,
		0.854096, -0.513729, -0.081256,
		-0.415633, -0.768062, 0.487165,
		32.404327, 29.485056, 21.217793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927181, 29.455956, 20.473566>,  <32.695271, 30.022699, 20.876778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927181, 29.455956, 20.473566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.597691, 29.372263, 20.684353>,  <32.399998, 29.322046, 20.810825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.597691, 29.372263, 20.684353>,  <32.927181, 29.455956, 20.473566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597691, 29.372263, 20.684353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417886, -0.404114, -0.813672,
		0.383202, -0.890457, 0.245444,
		-0.823728, -0.209233, 0.526967,
		32.350571, 29.309492, 20.842443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761513, 28.653841, 20.549805>,  <32.927181, 29.455956, 20.473566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761513, 28.653841, 20.549805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.403885, 28.828491, 20.589798>,  <32.189308, 28.933281, 20.613794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.403885, 28.828491, 20.589798>,  <32.761513, 28.653841, 20.549805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403885, 28.828491, 20.589798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371091, -0.597011, -0.711245,
		-0.250858, -0.673005, 0.695798,
		-0.894071, 0.436626, 0.099981,
		32.135662, 28.959478, 20.619793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261024, 28.094067, 20.628296>,  <32.761513, 28.653841, 20.549805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261024, 28.094067, 20.628296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.027706, 28.401785, 20.524033>,  <31.887714, 28.586416, 20.461475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.027706, 28.401785, 20.524033>,  <32.261024, 28.094067, 20.628296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027706, 28.401785, 20.524033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327549, -0.516437, -0.791204,
		-0.743285, -0.376131, 0.553221,
		-0.583300, 0.769297, -0.260659,
		31.852716, 28.632574, 20.445835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615471, 27.781153, 20.556999>,  <32.261024, 28.094067, 20.628296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615471, 27.781153, 20.556999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.577000, 28.126167, 20.358292>,  <31.553917, 28.333176, 20.239067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.577000, 28.126167, 20.358292>,  <31.615471, 27.781153, 20.556999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577000, 28.126167, 20.358292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450445, -0.482769, -0.751022,
		-0.887609, 0.151536, 0.434956,
		-0.096176, 0.862538, -0.496768,
		31.548147, 28.384928, 20.209261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042959, 27.728472, 20.243292>,  <31.615471, 27.781153, 20.556999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042959, 27.728472, 20.243292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.194798, 28.028982, 20.027332>,  <31.285900, 28.209288, 19.897757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.194798, 28.028982, 20.027332>,  <31.042959, 27.728472, 20.243292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194798, 28.028982, 20.027332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332202, -0.433970, -0.837444,
		-0.863451, 0.497247, 0.084841,
		0.379598, 0.751276, -0.539898,
		31.308678, 28.254364, 19.865362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530563, 27.845301, 19.797863>,  <31.042959, 27.728472, 20.243292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530563, 27.845301, 19.797863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864603, 27.983995, 19.627039>,  <31.065027, 28.067213, 19.524546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864603, 27.983995, 19.627039>,  <30.530563, 27.845301, 19.797863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864603, 27.983995, 19.627039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165126, -0.582526, -0.795862,
		-0.524728, 0.735144, -0.429213,
		0.835101, 0.346737, -0.427059,
		31.115133, 28.088017, 19.498920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.337147, 33.634491, 33.880058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691261, 33.774685, 33.757793>,  <35.903728, 33.858803, 33.684437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691261, 33.774685, 33.757793>,  <35.337147, 33.634491, 33.880058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691261, 33.774685, 33.757793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192436, -0.322265, -0.926884,
		-0.423366, 0.879376, -0.217850,
		0.885285, 0.350489, -0.305660,
		35.956848, 33.879833, 33.666096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304127, 33.939499, 33.125340>,  <35.337147, 33.634491, 33.880058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304127, 33.939499, 33.125340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679253, 33.820782, 33.197353>,  <35.904327, 33.749550, 33.240562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679253, 33.820782, 33.197353>,  <35.304127, 33.939499, 33.125340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679253, 33.820782, 33.197353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047723, -0.403470, -0.913747,
		0.343835, 0.865519, -0.364217,
		0.937817, -0.296796, 0.180032,
		35.960598, 33.731743, 33.251362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501106, 33.934479, 32.424084>,  <35.304127, 33.939499, 33.125340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501106, 33.934479, 32.424084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769958, 33.717724, 32.625912>,  <35.931271, 33.587669, 32.747009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769958, 33.717724, 32.625912>,  <35.501106, 33.934479, 32.424084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769958, 33.717724, 32.625912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142488, -0.574061, -0.806319,
		0.726590, 0.613850, -0.308634,
		0.672134, -0.541887, 0.504574,
		35.971600, 33.555157, 32.777283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045254, 33.826191, 31.960596>,  <35.501106, 33.934479, 32.424084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045254, 33.826191, 31.960596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100590, 33.544556, 32.239197>,  <36.133793, 33.375572, 32.406357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100590, 33.544556, 32.239197>,  <36.045254, 33.826191, 31.960596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100590, 33.544556, 32.239197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101205, -0.689534, -0.717147,
		0.985200, 0.169702, -0.024135,
		0.138343, -0.704090, 0.696504,
		36.142094, 33.333328, 32.448147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487236, 33.417770, 31.665163>,  <36.045254, 33.826191, 31.960596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487236, 33.417770, 31.665163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350674, 33.185581, 31.960865>,  <36.268738, 33.046268, 32.138287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350674, 33.185581, 31.960865>,  <36.487236, 33.417770, 31.665163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350674, 33.185581, 31.960865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070567, -0.800122, -0.595672,
		0.937263, -0.151198, 0.314128,
		-0.341405, -0.580468, 0.739256,
		36.248253, 33.011440, 32.182640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938179, 32.785957, 31.683817>,  <36.487236, 33.417770, 31.665163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938179, 32.785957, 31.683817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580761, 32.703033, 31.843113>,  <36.366310, 32.653278, 31.938690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580761, 32.703033, 31.843113>,  <36.938179, 32.785957, 31.683817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580761, 32.703033, 31.843113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157388, -0.686082, -0.710296,
		0.420476, -0.697361, 0.580419,
		-0.893548, -0.207311, 0.398238,
		36.312698, 32.640839, 31.962584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890133, 32.021130, 31.785975>,  <36.938179, 32.785957, 31.683817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890133, 32.021130, 31.785975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525757, 32.183849, 31.758533>,  <36.307133, 32.281483, 31.742069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525757, 32.183849, 31.758533>,  <36.890133, 32.021130, 31.785975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525757, 32.183849, 31.758533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289359, -0.748561, -0.596597,
		-0.294052, -0.523611, 0.799603,
		-0.910936, 0.406803, -0.068604,
		36.252476, 32.305889, 31.737953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494217, 31.404222, 31.651741>,  <36.890133, 32.021130, 31.785975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494217, 31.404222, 31.651741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247929, 31.708172, 31.568333>,  <36.100155, 31.890541, 31.518288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247929, 31.708172, 31.568333>,  <36.494217, 31.404222, 31.651741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247929, 31.708172, 31.568333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370049, -0.512483, -0.774871,
		-0.695669, -0.399940, 0.596736,
		-0.615719, 0.759875, -0.208521,
		36.063213, 31.936134, 31.505777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747932, 31.168787, 31.720310>,  <36.494217, 31.404222, 31.651741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747932, 31.168787, 31.720310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825943, 31.456900, 31.454029>,  <35.872749, 31.629766, 31.294260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825943, 31.456900, 31.454029>,  <35.747932, 31.168787, 31.720310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825943, 31.456900, 31.454029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423264, -0.550470, -0.719604,
		-0.884766, 0.422111, 0.197512,
		0.195029, 0.720281, -0.665702,
		35.884453, 31.672983, 31.254318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233547, 30.980984, 31.244625>,  <35.747932, 31.168787, 31.720310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233547, 30.980984, 31.244625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452900, 31.258718, 31.058216>,  <35.584511, 31.425360, 30.946371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452900, 31.258718, 31.058216>,  <35.233547, 30.980984, 31.244625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452900, 31.258718, 31.058216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393124, -0.277807, -0.876514,
		-0.738060, 0.663866, 0.120617,
		0.548380, 0.694337, -0.466020,
		35.617413, 31.467020, 30.918409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741753, 31.277866, 30.816582>,  <35.233547, 30.980984, 31.244625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741753, 31.277866, 30.816582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090752, 31.349026, 30.634548>,  <35.300152, 31.391722, 30.525328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090752, 31.349026, 30.634548>,  <34.741753, 31.277866, 30.816582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090752, 31.349026, 30.634548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344651, -0.436140, -0.831263,
		-0.346361, 0.882119, -0.319218,
		0.872496, 0.177898, -0.455085,
		35.352501, 31.402395, 30.498022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538105, 31.775063, 30.388811>,  <34.741753, 31.277866, 30.816582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538105, 31.775063, 30.388811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875484, 31.612703, 30.248045>,  <35.077911, 31.515287, 30.163586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875484, 31.612703, 30.248045>,  <34.538105, 31.775063, 30.388811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875484, 31.612703, 30.248045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450164, -0.176513, -0.875326,
		0.293176, 0.896710, -0.331600,
		0.843446, -0.405899, -0.351917,
		35.128517, 31.490934, 30.142469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862179, 32.036388, 30.264296>,  <34.538105, 31.775063, 30.388811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862179, 32.036388, 30.264296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517502, 31.846611, 30.336290>,  <33.310696, 31.732744, 30.379488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517502, 31.846611, 30.336290>,  <33.862179, 32.036388, 30.264296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517502, 31.846611, 30.336290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023708, 0.391954, 0.919679,
		-0.506882, 0.788211, -0.348991,
		-0.861689, -0.474443, 0.179988,
		33.258995, 31.704279, 30.390287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485172, 32.530224, 30.588062>,  <33.862179, 32.036388, 30.264296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485172, 32.530224, 30.588062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302479, 32.187038, 30.682119>,  <33.192863, 31.981127, 30.738554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302479, 32.187038, 30.682119>,  <33.485172, 32.530224, 30.588062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302479, 32.187038, 30.682119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276758, 0.388242, 0.879018,
		-0.845458, 0.336399, -0.414772,
		-0.456733, -0.857965, 0.235141,
		33.165459, 31.929649, 30.752663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901783, 32.729889, 30.858967>,  <33.485172, 32.530224, 30.588062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901783, 32.729889, 30.858967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933220, 32.355625, 30.996580>,  <32.952084, 32.131065, 31.079149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933220, 32.355625, 30.996580>,  <32.901783, 32.729889, 30.858967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933220, 32.355625, 30.996580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131200, 0.332392, 0.933971,
		-0.988236, -0.118542, -0.096634,
		0.078594, -0.935662, 0.344034,
		32.956799, 32.074928, 31.099791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316944, 32.609100, 31.310608>,  <32.901783, 32.729889, 30.858967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316944, 32.609100, 31.310608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554581, 32.315697, 31.442680>,  <32.697163, 32.139656, 31.521923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554581, 32.315697, 31.442680>,  <32.316944, 32.609100, 31.310608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554581, 32.315697, 31.442680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361913, 0.122838, 0.924083,
		-0.718381, -0.668489, -0.192489,
		0.594094, -0.733508, 0.330179,
		32.732807, 32.095646, 31.541735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896381, 32.157852, 31.725428>,  <32.316944, 32.609100, 31.310608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896381, 32.157852, 31.725428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274277, 32.089478, 31.837320>,  <32.501015, 32.048450, 31.904455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274277, 32.089478, 31.837320>,  <31.896381, 32.157852, 31.725428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274277, 32.089478, 31.837320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248015, 0.185319, 0.950866,
		-0.214380, -0.967697, 0.132682,
		0.944738, -0.170939, 0.279732,
		32.557697, 32.038197, 31.921240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836693, 31.732798, 32.317253>,  <31.896381, 32.157852, 31.725428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836693, 31.732798, 32.317253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199810, 31.898643, 32.342567>,  <32.417683, 31.998150, 32.357758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199810, 31.898643, 32.342567>,  <31.836693, 31.732798, 32.317253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199810, 31.898643, 32.342567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229742, 0.365329, 0.902083,
		0.350882, -0.833451, 0.426897,
		0.907800, 0.414601, 0.063291,
		32.472149, 32.023026, 32.361553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133274, 31.437746, 32.890713>,  <31.836693, 31.732798, 32.317253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133274, 31.437746, 32.890713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315109, 31.784279, 32.807949>,  <32.424210, 31.992199, 32.758289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315109, 31.784279, 32.807949>,  <32.133274, 31.437746, 32.890713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315109, 31.784279, 32.807949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280327, 0.359653, 0.889981,
		0.845437, -0.346576, 0.406352,
		0.454592, 0.866334, -0.206909,
		32.451488, 32.044178, 32.745876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437565, 31.648102, 33.470898>,  <32.133274, 31.437746, 32.890713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437565, 31.648102, 33.470898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404808, 32.001999, 33.287369>,  <32.385155, 32.214336, 33.177250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404808, 32.001999, 33.287369>,  <32.437565, 31.648102, 33.470898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404808, 32.001999, 33.287369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155440, 0.443400, 0.882743,
		0.984445, 0.143609, 0.101214,
		-0.081892, 0.884745, -0.458825,
		32.380241, 32.267422, 33.149723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913918, 32.013668, 33.968452>,  <32.437565, 31.648102, 33.470898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913918, 32.013668, 33.968452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727119, 32.279339, 33.734947>,  <32.615040, 32.438744, 33.594845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727119, 32.279339, 33.734947>,  <32.913918, 32.013668, 33.968452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727119, 32.279339, 33.734947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034647, 0.673410, 0.738457,
		0.883580, 0.324631, -0.337491,
		-0.466996, 0.664179, -0.583764,
		32.587021, 32.478592, 33.559818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243744, 32.523903, 34.049225>,  <32.913918, 32.013668, 33.968452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243744, 32.523903, 34.049225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906178, 32.694183, 33.918633>,  <32.703636, 32.796352, 33.840279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906178, 32.694183, 33.918633>,  <33.243744, 32.523903, 34.049225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906178, 32.694183, 33.918633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059513, 0.679085, 0.731643,
		0.533167, 0.598014, -0.598424,
		-0.843914, 0.425702, -0.326476,
		32.653004, 32.821896, 33.820690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489246, 33.140575, 33.917713>,  <33.243744, 32.523903, 34.049225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489246, 33.140575, 33.917713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095089, 33.162365, 33.982250>,  <32.858593, 33.175438, 34.020973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095089, 33.162365, 33.982250>,  <33.489246, 33.140575, 33.917713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095089, 33.162365, 33.982250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154834, 0.681017, 0.715711,
		-0.070893, 0.730239, -0.679504,
		-0.985394, 0.054471, 0.161345,
		32.799469, 33.178707, 34.030655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285103, 33.890488, 33.922348>,  <33.489246, 33.140575, 33.917713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285103, 33.890488, 33.922348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968437, 33.723156, 34.100456>,  <32.778439, 33.622757, 34.207321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968437, 33.723156, 34.100456>,  <33.285103, 33.890488, 33.922348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968437, 33.723156, 34.100456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084572, 0.646762, 0.757989,
		-0.605077, 0.637729, -0.476638,
		-0.791663, -0.418331, 0.445275,
		32.730938, 33.597656, 34.234039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827961, 34.386429, 33.946995>,  <33.285103, 33.890488, 33.922348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827961, 34.386429, 33.946995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742222, 34.132996, 34.244350>,  <32.690777, 33.980934, 34.422764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742222, 34.132996, 34.244350>,  <32.827961, 34.386429, 33.946995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742222, 34.132996, 34.244350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165903, 0.726404, 0.666944,
		-0.962565, 0.266289, -0.050591,
		-0.214349, -0.633584, 0.743389,
		32.677917, 33.942921, 34.467365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379761, 34.702976, 34.434364>,  <32.827961, 34.386429, 33.946995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379761, 34.702976, 34.434364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510147, 34.402206, 34.663570>,  <32.588379, 34.221745, 34.801094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510147, 34.402206, 34.663570>,  <32.379761, 34.702976, 34.434364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510147, 34.402206, 34.663570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144681, 0.638663, 0.755763,
		-0.934244, -0.163449, 0.316974,
		0.325968, -0.751927, 0.573019,
		32.607937, 34.176628, 34.835476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000313, 34.737450, 35.007809>,  <32.379761, 34.702976, 34.434364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000313, 34.737450, 35.007809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348507, 34.570068, 35.111462>,  <32.557423, 34.469639, 35.173653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348507, 34.570068, 35.111462>,  <32.000313, 34.737450, 35.007809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348507, 34.570068, 35.111462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187946, 0.769189, 0.610758,
		-0.454898, -0.482953, 0.748214,
		0.870485, -0.418456, 0.259134,
		32.609653, 34.444530, 35.189201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532280, 34.657219, 34.453426>,  <32.000313, 34.737450, 35.007809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532280, 34.657219, 34.453426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699896, 34.998238, 34.328487>,  <31.800465, 35.202850, 34.253525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699896, 34.998238, 34.328487>,  <31.532280, 34.657219, 34.453426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699896, 34.998238, 34.328487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526395, -0.052187, -0.848637,
		-0.739806, 0.520033, 0.426910,
		0.419040, 0.852550, -0.312351,
		31.825607, 35.254002, 34.234783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151810, 34.926281, 34.005684>,  <31.532280, 34.657219, 34.453426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151810, 34.926281, 34.005684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.451185, 35.164242, 33.888432>,  <31.630812, 35.307018, 33.818081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.451185, 35.164242, 33.888432>,  <31.151810, 34.926281, 34.005684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451185, 35.164242, 33.888432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355416, -0.013373, -0.934613,
		-0.559926, 0.803685, 0.201430,
		0.748440, 0.594905, -0.293130,
		31.675716, 35.342712, 33.800491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835522, 35.519581, 33.740162>,  <31.151810, 34.926281, 34.005684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835522, 35.519581, 33.740162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202431, 35.544685, 33.582848>,  <31.422575, 35.559746, 33.488457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202431, 35.544685, 33.582848>,  <30.835522, 35.519581, 33.740162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202431, 35.544685, 33.582848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398172, 0.123389, -0.908974,
		-0.008517, 0.990372, 0.138169,
		0.917271, 0.062757, -0.393288,
		31.477612, 35.563511, 33.464863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910807, 36.204910, 33.377090>,  <30.835522, 35.519581, 33.740162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910807, 36.204910, 33.377090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.166697, 35.931385, 33.236721>,  <31.320230, 35.767269, 33.152500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.166697, 35.931385, 33.236721>,  <30.910807, 36.204910, 33.377090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166697, 35.931385, 33.236721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391073, 0.103461, -0.914526,
		0.661675, 0.722281, -0.201236,
		0.639725, -0.683817, -0.350922,
		31.358614, 35.726238, 33.131443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172304, 36.530869, 32.638550>,  <30.910807, 36.204910, 33.377090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172304, 36.530869, 32.638550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258890, 36.140438, 32.646751>,  <31.310841, 35.906181, 32.651672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258890, 36.140438, 32.646751>,  <31.172304, 36.530869, 32.638550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258890, 36.140438, 32.646751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244026, -0.074428, -0.966909,
		0.945302, 0.204297, -0.254299,
		0.216464, -0.976076, 0.020503,
		31.323830, 35.847614, 32.652901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370819, 36.485378, 31.954042>,  <31.172304, 36.530869, 32.638550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370819, 36.485378, 31.954042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333801, 36.112915, 32.095116>,  <31.311590, 35.889439, 32.179760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333801, 36.112915, 32.095116>,  <31.370819, 36.485378, 31.954042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333801, 36.112915, 32.095116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134202, -0.339305, -0.931054,
		0.986623, -0.133494, -0.093563,
		-0.092544, -0.931156, 0.352681,
		31.306038, 35.833569, 32.200920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956167, 36.130703, 31.574074>,  <31.370819, 36.485378, 31.954042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956167, 36.130703, 31.574074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.655926, 35.887779, 31.678200>,  <31.475780, 35.742023, 31.740675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.655926, 35.887779, 31.678200>,  <31.956167, 36.130703, 31.574074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655926, 35.887779, 31.678200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245677, -0.109206, -0.963181,
		0.613381, -0.786920, -0.067233,
		-0.750604, -0.607314, 0.260313,
		31.430744, 35.705585, 31.756294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941515, 35.464890, 31.125532>,  <31.956167, 36.130703, 31.574074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941515, 35.464890, 31.125532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568241, 35.486019, 31.267731>,  <31.344276, 35.498695, 31.353050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568241, 35.486019, 31.267731>,  <31.941515, 35.464890, 31.125532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568241, 35.486019, 31.267731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359305, -0.160040, -0.919395,
		0.008327, -0.985696, 0.168327,
		-0.933183, 0.052825, 0.355498,
		31.288286, 35.501865, 31.374380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522518, 34.915302, 30.746578>,  <31.941515, 35.464890, 31.125532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522518, 34.915302, 30.746578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232782, 35.140461, 30.905819>,  <31.058941, 35.275555, 31.001364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232782, 35.140461, 30.905819>,  <31.522518, 34.915302, 30.746578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232782, 35.140461, 30.905819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519635, -0.066230, -0.851818,
		-0.453118, -0.823870, 0.340473,
		-0.724337, 0.562896, 0.398101,
		31.015482, 35.309330, 31.025249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903185, 34.618092, 30.457188>,  <31.522518, 34.915302, 30.746578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903185, 34.618092, 30.457188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.811001, 34.989883, 30.572395>,  <30.755690, 35.212959, 30.641520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.811001, 34.989883, 30.572395>,  <30.903185, 34.618092, 30.457188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811001, 34.989883, 30.572395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579383, 0.106730, -0.808037,
		-0.781794, -0.353094, 0.513928,
		-0.230462, 0.929480, 0.288018,
		30.741863, 35.268726, 30.658800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142878, 34.714710, 30.335199>,  <30.903185, 34.618092, 30.457188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142878, 34.714710, 30.335199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273523, 35.086998, 30.401033>,  <30.351910, 35.310371, 30.440535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273523, 35.086998, 30.401033>,  <30.142878, 34.714710, 30.335199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273523, 35.086998, 30.401033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548516, 0.328462, -0.768924,
		-0.769711, 0.160863, 0.617793,
		0.326613, 0.930718, 0.164584,
		30.371508, 35.366215, 30.450409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578659, 35.188080, 30.189413>,  <30.142878, 34.714710, 30.335199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578659, 35.188080, 30.189413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.903498, 35.420937, 30.173397>,  <30.098402, 35.560650, 30.163788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.903498, 35.420937, 30.173397>,  <29.578659, 35.188080, 30.189413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903498, 35.420937, 30.173397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259907, 0.299428, -0.918037,
		-0.522442, 0.755942, 0.394469,
		0.812098, 0.582146, -0.040041,
		30.147127, 35.595581, 30.161385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336092, 35.881130, 30.096176>,  <29.578659, 35.188080, 30.189413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336092, 35.881130, 30.096176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.705339, 35.862770, 29.943470>,  <29.926888, 35.851753, 29.851847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.705339, 35.862770, 29.943470>,  <29.336092, 35.881130, 30.096176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705339, 35.862770, 29.943470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333564, 0.398305, -0.854452,
		0.191276, 0.916104, 0.352374,
		0.923119, -0.045897, -0.381765,
		29.982275, 35.849003, 29.828941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339203, 36.462406, 29.576967>,  <29.336092, 35.881130, 30.096176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339203, 36.462406, 29.576967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.671202, 36.255367, 29.493837>,  <29.870401, 36.131142, 29.443960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.671202, 36.255367, 29.493837>,  <29.339203, 36.462406, 29.576967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671202, 36.255367, 29.493837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016695, 0.395490, -0.918318,
		0.557516, 0.758733, 0.336898,
		0.829998, -0.517601, -0.207825,
		29.920200, 36.100086, 29.431490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815298, 36.912403, 29.157751>,  <29.339203, 36.462406, 29.576967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815298, 36.912403, 29.157751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.980541, 36.553875, 29.093323>,  <30.079687, 36.338757, 29.054667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.980541, 36.553875, 29.093323>,  <29.815298, 36.912403, 29.157751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980541, 36.553875, 29.093323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204906, 0.263817, -0.942557,
		0.887330, 0.356375, 0.292647,
		0.413109, -0.896325, -0.161070,
		30.104473, 36.284977, 29.045002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487030, 37.023182, 28.771996>,  <29.815298, 36.912403, 29.157751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487030, 37.023182, 28.771996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.361294, 36.648079, 28.712931>,  <30.285852, 36.423016, 28.677492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.361294, 36.648079, 28.712931>,  <30.487030, 37.023182, 28.771996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361294, 36.648079, 28.712931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254392, 0.066647, -0.964802,
		0.914590, -0.340840, 0.217608,
		-0.314340, -0.937756, -0.147662,
		30.266993, 36.366753, 28.668633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001537, 36.624290, 28.533373>,  <30.487030, 37.023182, 28.771996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001537, 36.624290, 28.533373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.656662, 36.462669, 28.411142>,  <30.449738, 36.365696, 28.337805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.656662, 36.462669, 28.411142>,  <31.001537, 36.624290, 28.533373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656662, 36.462669, 28.411142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303920, 0.070031, -0.950120,
		0.405296, -0.912052, 0.062419,
		-0.862188, -0.404050, -0.305574,
		30.398006, 36.341454, 28.319469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167181, 36.212723, 27.957956>,  <31.001537, 36.624290, 28.533373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167181, 36.212723, 27.957956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771099, 36.199318, 27.903740>,  <30.533449, 36.191277, 27.871210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771099, 36.199318, 27.903740>,  <31.167181, 36.212723, 27.957956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771099, 36.199318, 27.903740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135603, 0.000428, -0.990763,
		0.033267, -0.999438, 0.004122,
		-0.990204, -0.033519, -0.135541,
		30.474037, 36.189266, 27.863077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978830, 35.553482, 27.548035>,  <31.167181, 36.212723, 27.957956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978830, 35.553482, 27.548035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.671761, 35.804577, 27.496464>,  <30.487518, 35.955235, 27.465521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.671761, 35.804577, 27.496464>,  <30.978830, 35.553482, 27.548035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671761, 35.804577, 27.496464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032261, -0.163072, -0.986087,
		-0.640029, -0.761151, 0.104934,
		-0.767673, 0.627739, -0.128926,
		30.441458, 35.992897, 27.457787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643013, 35.246895, 27.145414>,  <30.978830, 35.553482, 27.548035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643013, 35.246895, 27.145414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.446924, 35.593002, 27.103479>,  <30.329271, 35.800667, 27.078320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.446924, 35.593002, 27.103479>,  <30.643013, 35.246895, 27.145414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446924, 35.593002, 27.103479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096483, -0.065668, -0.993166,
		-0.866241, -0.496986, -0.051292,
		-0.490221, 0.865270, -0.104835,
		30.299858, 35.852585, 27.072029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935549, 35.138691, 26.756420>,  <30.643013, 35.246895, 27.145414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935549, 35.138691, 26.756420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.006380, 35.529736, 26.710943>,  <30.048878, 35.764362, 26.683657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.006380, 35.529736, 26.710943>,  <29.935549, 35.138691, 26.756420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006380, 35.529736, 26.710943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182773, -0.080846, -0.979825,
		-0.967077, 0.194284, 0.164365,
		0.177076, 0.977608, -0.113695,
		30.059504, 35.823017, 26.676834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379265, 35.370613, 26.322584>,  <29.935549, 35.138691, 26.756420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379265, 35.370613, 26.322584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.686466, 35.623512, 26.281721>,  <29.870787, 35.775249, 26.257204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.686466, 35.623512, 26.281721>,  <29.379265, 35.370613, 26.322584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686466, 35.623512, 26.281721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073808, -0.071073, -0.994737,
		-0.636178, 0.771502, -0.007919,
		0.768004, 0.632245, -0.102158,
		29.916868, 35.813187, 26.251074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104366, 35.742355, 25.856833>,  <29.379265, 35.370613, 26.322584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104366, 35.742355, 25.856833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.502790, 35.775948, 25.845449>,  <29.741846, 35.796101, 25.838619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.502790, 35.775948, 25.845449>,  <29.104366, 35.742355, 25.856833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502790, 35.775948, 25.845449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011724, -0.193370, -0.981056,
		-0.087890, 0.977525, -0.191624,
		0.996061, 0.083978, -0.028456,
		29.801609, 35.801140, 25.836912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227268, 35.829479, 25.212141>,  <29.104366, 35.742355, 25.856833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227268, 35.829479, 25.212141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.614222, 35.800312, 25.309177>,  <29.846394, 35.782810, 25.367399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.614222, 35.800312, 25.309177>,  <29.227268, 35.829479, 25.212141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614222, 35.800312, 25.309177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232676, -0.122823, -0.964767,
		0.100145, 0.989746, -0.101851,
		0.967385, -0.072918, 0.242590,
		29.904436, 35.778435, 25.381954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608685, 36.314140, 24.812557>,  <29.227268, 35.829479, 25.212141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608685, 36.314140, 24.812557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.835482, 36.002338, 24.919052>,  <29.971560, 35.815258, 24.982950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.835482, 36.002338, 24.919052>,  <29.608685, 36.314140, 24.812557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835482, 36.002338, 24.919052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194501, -0.187380, -0.962839,
		0.800429, 0.597708, 0.045372,
		0.566995, -0.779508, 0.266239,
		30.005581, 35.768486, 24.998924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190947, 36.452236, 24.345669>,  <29.608685, 36.314140, 24.812557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190947, 36.452236, 24.345669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.173307, 36.065304, 24.445530>,  <30.162724, 35.833145, 24.505445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.173307, 36.065304, 24.445530>,  <30.190947, 36.452236, 24.345669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173307, 36.065304, 24.445530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143053, -0.253432, -0.956717,
		0.988732, -0.006475, 0.149555,
		-0.044096, -0.967331, 0.249650,
		30.160078, 35.775105, 24.520426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638504, 36.029995, 23.863895>,  <30.190947, 36.452236, 24.345669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638504, 36.029995, 23.863895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.444447, 35.722469, 24.030539>,  <30.328012, 35.537952, 24.130524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.444447, 35.722469, 24.030539>,  <30.638504, 36.029995, 23.863895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444447, 35.722469, 24.030539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160709, -0.546706, -0.821757,
		0.859540, -0.331718, 0.388787,
		-0.485143, -0.768814, 0.416606,
		30.298904, 35.491825, 24.155519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401236, 35.803097, 24.053062>,  <30.638504, 36.029995, 23.863895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401236, 35.803097, 24.053062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649755, 36.065647, 23.881876>,  <31.798866, 36.223179, 23.779163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649755, 36.065647, 23.881876>,  <31.401236, 35.803097, 24.053062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649755, 36.065647, 23.881876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305716, 0.299833, 0.903680,
		0.721475, -0.692291, -0.014379,
		0.621299, 0.656378, -0.427967,
		31.836145, 36.262562, 23.753487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020359, 35.723007, 24.420734>,  <31.401236, 35.803097, 24.053062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020359, 35.723007, 24.420734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.080341, 36.071800, 24.234333>,  <32.116329, 36.281075, 24.122492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.080341, 36.071800, 24.234333>,  <32.020359, 35.723007, 24.420734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080341, 36.071800, 24.234333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341685, 0.396583, 0.852040,
		0.927774, -0.286995, -0.238474,
		0.149957, 0.871983, -0.466002,
		32.125328, 36.333397, 24.094532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805172, 35.907997, 24.479252>,  <32.020359, 35.723007, 24.420734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805172, 35.907997, 24.479252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583652, 36.237698, 24.432068>,  <32.450741, 36.435520, 24.403757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583652, 36.237698, 24.432068>,  <32.805172, 35.907997, 24.479252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583652, 36.237698, 24.432068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470009, 0.426390, 0.772841,
		0.687314, 0.372556, -0.623540,
		-0.553798, 0.824254, -0.117960,
		32.417515, 36.484974, 24.396681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227882, 36.458961, 24.470650>,  <32.805172, 35.907997, 24.479252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227882, 36.458961, 24.470650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.863434, 36.570751, 24.591812>,  <32.644764, 36.637825, 24.664509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.863434, 36.570751, 24.591812>,  <33.227882, 36.458961, 24.470650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863434, 36.570751, 24.591812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398931, 0.413468, 0.818473,
		0.103504, 0.866566, -0.488211,
		-0.911121, 0.279478, 0.302904,
		32.590099, 36.654594, 24.682684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482254, 37.072681, 24.586401>,  <33.227882, 36.458961, 24.470650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482254, 37.072681, 24.586401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122936, 37.049225, 24.760588>,  <32.907345, 37.035152, 24.865099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122936, 37.049225, 24.760588>,  <33.482254, 37.072681, 24.586401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122936, 37.049225, 24.760588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332927, 0.555942, 0.761635,
		-0.286756, 0.829150, -0.479876,
		-0.898293, -0.058640, 0.435466,
		32.853447, 37.031631, 24.891228>
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
