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
	<23.995993, 35.372505, 35.121845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.111135, 34.990585, 35.092171>,  <24.180222, 34.761433, 35.074368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.111135, 34.990585, 35.092171>,  <23.995993, 35.372505, 35.121845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.111135, 34.990585, 35.092171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776991, 0.187561, 0.600921,
		-0.559842, -0.230621, 0.795859,
		0.287857, -0.954796, -0.074186,
		24.197493, 34.704147, 35.069916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.161644, 35.117901, 35.814495>,  <23.995993, 35.372505, 35.121845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.161644, 35.117901, 35.814495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364197, 34.894089, 35.552044>,  <24.485729, 34.759800, 35.394573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364197, 34.894089, 35.552044>,  <24.161644, 35.117901, 35.814495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364197, 34.894089, 35.552044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831670, 0.115876, 0.543044,
		-0.227820, -0.820670, 0.524022,
		0.506382, -0.559530, -0.656128,
		24.516111, 34.726231, 35.355206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.662863, 34.795643, 36.189812>,  <24.161644, 35.117901, 35.814495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.662863, 34.795643, 36.189812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801283, 34.809788, 35.814793>,  <24.884335, 34.818275, 35.589783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801283, 34.809788, 35.814793>,  <24.662863, 34.795643, 36.189812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801283, 34.809788, 35.814793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919416, 0.186260, 0.346383,
		0.186873, -0.981864, 0.031954,
		0.346053, 0.035350, -0.937549,
		24.905098, 34.820396, 35.533527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178789, 34.312885, 36.232346>,  <24.662863, 34.795643, 36.189812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178789, 34.312885, 36.232346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239452, 34.545403, 35.912571>,  <25.275850, 34.684914, 35.720707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239452, 34.545403, 35.912571>,  <25.178789, 34.312885, 36.232346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239452, 34.545403, 35.912571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887790, 0.275459, 0.368715,
		0.434543, -0.765650, -0.474291,
		0.151659, 0.581294, -0.799436,
		25.284950, 34.719791, 35.672741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766687, 34.114418, 36.024055>,  <25.178789, 34.312885, 36.232346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766687, 34.114418, 36.024055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734964, 34.483974, 35.874317>,  <25.715931, 34.705708, 35.784473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734964, 34.483974, 35.874317>,  <25.766687, 34.114418, 36.024055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734964, 34.483974, 35.874317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930280, 0.203524, 0.305219,
		0.358177, -0.324039, -0.875618,
		-0.079307, 0.923892, -0.374345,
		25.711172, 34.761143, 35.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370132, 34.247498, 35.498249>,  <25.766687, 34.114418, 36.024055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370132, 34.247498, 35.498249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245356, 34.563271, 35.709717>,  <26.170488, 34.752735, 35.836597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245356, 34.563271, 35.709717>,  <26.370132, 34.247498, 35.498249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245356, 34.563271, 35.709717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932778, 0.148694, 0.328354,
		0.180601, 0.595561, -0.782745,
		-0.311944, 0.789428, 0.528672,
		26.151772, 34.800098, 35.868317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813522, 34.810177, 35.390682>,  <26.370132, 34.247498, 35.498249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813522, 34.810177, 35.390682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649942, 34.888508, 35.747200>,  <26.551794, 34.935505, 35.961113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649942, 34.888508, 35.747200>,  <26.813522, 34.810177, 35.390682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649942, 34.888508, 35.747200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894650, -0.106498, 0.433889,
		0.179888, 0.974839, -0.131643,
		-0.408952, 0.195826, 0.891297,
		26.527256, 34.947254, 36.014587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172571, 35.443764, 35.720070>,  <26.813522, 34.810177, 35.390682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172571, 35.443764, 35.720070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024929, 35.205990, 36.005844>,  <26.936344, 35.063328, 36.177307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024929, 35.205990, 36.005844>,  <27.172571, 35.443764, 35.720070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024929, 35.205990, 36.005844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829959, 0.135118, 0.541212,
		-0.418246, 0.792714, 0.443481,
		-0.369104, -0.594431, 0.714433,
		26.914198, 35.027660, 36.220173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537642, 35.625858, 36.337215>,  <27.172571, 35.443764, 35.720070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537642, 35.625858, 36.337215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343098, 35.303070, 36.471233>,  <27.226372, 35.109398, 36.551643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343098, 35.303070, 36.471233>,  <27.537642, 35.625858, 36.337215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343098, 35.303070, 36.471233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692679, -0.122363, 0.710790,
		-0.532587, 0.577781, 0.618482,
		-0.486361, -0.806967, 0.335048,
		27.197189, 35.060978, 36.571747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389803, 35.674622, 37.125694>,  <27.537642, 35.625858, 36.337215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389803, 35.674622, 37.125694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394627, 35.291592, 37.010517>,  <27.397520, 35.061775, 36.941410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394627, 35.291592, 37.010517>,  <27.389803, 35.674622, 37.125694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394627, 35.291592, 37.010517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518976, -0.240150, 0.820361,
		-0.854704, -0.159329, 0.494060,
		0.012058, -0.957571, -0.287945,
		27.398245, 35.004322, 36.924133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153986, 35.187202, 37.676380>,  <27.389803, 35.674622, 37.125694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153986, 35.187202, 37.676380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405205, 34.985489, 37.439312>,  <27.555937, 34.864460, 37.297073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405205, 34.985489, 37.439312>,  <27.153986, 35.187202, 37.676380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405205, 34.985489, 37.439312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616457, -0.142382, 0.774408,
		-0.474909, -0.851717, 0.221448,
		0.628047, -0.504287, -0.592666,
		27.593618, 34.834202, 37.261513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352455, 34.670895, 38.087757>,  <27.153986, 35.187202, 37.676380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352455, 34.670895, 38.087757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631845, 34.706131, 37.803680>,  <27.799479, 34.727272, 37.633236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631845, 34.706131, 37.803680>,  <27.352455, 34.670895, 38.087757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631845, 34.706131, 37.803680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713453, -0.163157, 0.681443,
		-0.055841, -0.982659, -0.176813,
		0.698474, 0.088095, -0.710192,
		27.841389, 34.732559, 37.590622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721476, 34.037041, 38.025703>,  <27.352455, 34.670895, 38.087757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721476, 34.037041, 38.025703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932714, 34.364376, 37.934986>,  <28.059458, 34.560776, 37.880554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932714, 34.364376, 37.934986>,  <27.721476, 34.037041, 38.025703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932714, 34.364376, 37.934986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632808, -0.201145, 0.747726,
		0.566276, -0.538387, -0.624076,
		0.528096, 0.818340, -0.226792,
		28.091143, 34.609879, 37.866947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330030, 33.875809, 37.674740>,  <27.721476, 34.037041, 38.025703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330030, 33.875809, 37.674740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409307, 34.240120, 37.819626>,  <28.456875, 34.458706, 37.906555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409307, 34.240120, 37.819626>,  <28.330030, 33.875809, 37.674740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409307, 34.240120, 37.819626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792243, -0.366444, 0.487924,
		0.577122, 0.190256, -0.794186,
		0.198194, 0.910780, 0.362212,
		28.468765, 34.513355, 37.928291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021887, 34.156231, 37.484379>,  <28.330030, 33.875809, 37.674740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021887, 34.156231, 37.484379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902676, 34.275593, 37.847065>,  <28.831148, 34.347210, 38.064678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902676, 34.275593, 37.847065>,  <29.021887, 34.156231, 37.484379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902676, 34.275593, 37.847065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884455, -0.270969, 0.379888,
		0.359052, 0.915168, -0.183167,
		-0.298029, 0.298403, 0.906717,
		28.813267, 34.365112, 38.119080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645906, 34.344414, 36.853233>,  <29.021887, 34.156231, 37.484379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645906, 34.344414, 36.853233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327980, 34.362537, 37.095295>,  <28.137224, 34.373409, 37.240532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327980, 34.362537, 37.095295>,  <28.645906, 34.344414, 36.853233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327980, 34.362537, 37.095295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579778, 0.237839, -0.779288,
		-0.179237, -0.970247, -0.162771,
		-0.794815, 0.045306, 0.605158,
		28.089535, 34.376129, 37.276844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162439, 33.883026, 36.612885>,  <28.645906, 34.344414, 36.853233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162439, 33.883026, 36.612885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966766, 34.166733, 36.815918>,  <27.849363, 34.336956, 36.937737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966766, 34.166733, 36.815918>,  <28.162439, 33.883026, 36.612885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966766, 34.166733, 36.815918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561042, 0.189689, -0.805760,
		-0.667782, -0.678940, 0.305136,
		-0.489182, 0.709267, 0.507585,
		27.820011, 34.379513, 36.968193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537201, 33.863106, 36.331654>,  <28.162439, 33.883026, 36.612885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537201, 33.863106, 36.331654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501682, 34.204124, 36.537674>,  <27.480371, 34.408733, 36.661285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501682, 34.204124, 36.537674>,  <27.537201, 33.863106, 36.331654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501682, 34.204124, 36.537674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724239, 0.299734, -0.620997,
		-0.683807, -0.428167, 0.590831,
		-0.088799, 0.852545, 0.515055,
		27.475042, 34.459888, 36.692192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922504, 33.833202, 36.745838>,  <27.537201, 33.863106, 36.331654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922504, 33.833202, 36.745838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029369, 34.210350, 36.666218>,  <27.093489, 34.436638, 36.618446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029369, 34.210350, 36.666218>,  <26.922504, 33.833202, 36.745838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029369, 34.210350, 36.666218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945422, 0.216470, -0.243553,
		-0.186550, 0.253258, 0.949242,
		0.267164, 0.942869, -0.199053,
		27.109518, 34.493210, 36.606503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479473, 34.125511, 37.076813>,  <26.922504, 33.833202, 36.745838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479473, 34.125511, 37.076813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612431, 34.410526, 36.829651>,  <26.692205, 34.581535, 36.681355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612431, 34.410526, 36.829651>,  <26.479473, 34.125511, 37.076813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612431, 34.410526, 36.829651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932451, 0.149913, -0.328727,
		-0.141597, 0.685435, 0.714233,
		0.332394, 0.712534, -0.617908,
		26.712149, 34.624287, 36.644279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408400, 34.825695, 37.275818>,  <26.479473, 34.125511, 37.076813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408400, 34.825695, 37.275818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546831, 35.023365, 36.956814>,  <26.629890, 35.141968, 36.765411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546831, 35.023365, 36.956814>,  <26.408400, 34.825695, 37.275818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546831, 35.023365, 36.956814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856520, -0.180488, -0.483526,
		-0.382886, 0.850422, 0.360806,
		0.346080, 0.494173, -0.797510,
		26.650656, 35.171616, 36.717560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998323, 35.422409, 37.092747>,  <26.408400, 34.825695, 37.275818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998323, 35.422409, 37.092747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168360, 35.286652, 36.757099>,  <26.270382, 35.205196, 36.555710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168360, 35.286652, 36.757099>,  <25.998323, 35.422409, 37.092747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168360, 35.286652, 36.757099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898786, -0.048518, -0.435694,
		0.107158, 0.939394, -0.325664,
		0.425089, -0.339390, -0.839115,
		26.295887, 35.184834, 36.505363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829487, 35.811840, 36.521492>,  <25.998323, 35.422409, 37.092747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829487, 35.811840, 36.521492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935238, 35.468822, 36.344986>,  <25.998688, 35.263012, 36.239082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935238, 35.468822, 36.344986>,  <25.829487, 35.811840, 36.521492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935238, 35.468822, 36.344986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755305, 0.100398, -0.647638,
		0.599683, 0.504512, -0.621167,
		0.264377, -0.857548, -0.441267,
		26.014551, 35.211559, 36.212605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889702, 36.017464, 35.919022>,  <25.829487, 35.811840, 36.521492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889702, 36.017464, 35.919022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840897, 35.620453, 35.917625>,  <25.811613, 35.382248, 35.916786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840897, 35.620453, 35.917625>,  <25.889702, 36.017464, 35.919022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840897, 35.620453, 35.917625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646029, 0.082087, -0.758886,
		0.753498, -0.090336, -0.651214,
		-0.122011, -0.992523, -0.003492,
		25.804293, 35.322697, 35.916576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646744, 35.930672, 35.213181>,  <25.889702, 36.017464, 35.919022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646744, 35.930672, 35.213181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663546, 35.570633, 35.386642>,  <25.673626, 35.354610, 35.490719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663546, 35.570633, 35.386642>,  <25.646744, 35.930672, 35.213181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663546, 35.570633, 35.386642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690268, -0.339942, -0.638725,
		0.722333, -0.272510, -0.635588,
		0.042004, -0.900099, 0.433657,
		25.676147, 35.300602, 35.516739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525347, 35.493214, 34.677410>,  <25.646744, 35.930672, 35.213181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525347, 35.493214, 34.677410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420874, 35.275589, 34.996353>,  <25.358189, 35.145012, 35.187717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420874, 35.275589, 34.996353>,  <25.525347, 35.493214, 34.677410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420874, 35.275589, 34.996353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748666, -0.407248, -0.523115,
		0.609329, -0.733583, -0.300956,
		-0.261184, -0.544064, 0.797356,
		25.342518, 35.112370, 35.235561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283266, 34.927078, 34.296223>,  <25.525347, 35.493214, 34.677410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283266, 34.927078, 34.296223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169228, 34.912449, 34.679344>,  <25.100805, 34.903671, 34.909218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169228, 34.912449, 34.679344>,  <25.283266, 34.927078, 34.296223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169228, 34.912449, 34.679344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933800, -0.214790, -0.286153,
		0.216192, -0.975975, 0.027081,
		-0.285095, -0.036576, 0.957801,
		25.083698, 34.901478, 34.966686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958450, 34.161469, 34.534847>,  <25.283266, 34.927078, 34.296223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958450, 34.161469, 34.534847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807358, 34.492477, 34.700993>,  <24.716702, 34.691082, 34.800678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807358, 34.492477, 34.700993>,  <24.958450, 34.161469, 34.534847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807358, 34.492477, 34.700993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918150, -0.276788, -0.283531,
		-0.119661, -0.488464, 0.864340,
		-0.377734, 0.827521, 0.415363,
		24.694038, 34.740734, 34.825600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710327, 33.874725, 34.652718>,  <24.958450, 34.161469, 34.534847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710327, 33.874725, 34.652718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758974, 34.271748, 34.650318>,  <25.788162, 34.509960, 34.648880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758974, 34.271748, 34.650318>,  <25.710327, 33.874725, 34.652718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758974, 34.271748, 34.650318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962893, -0.119445, -0.242011,
		-0.240927, 0.023656, -0.970255,
		0.121617, 0.992559, -0.005999,
		25.795460, 34.569515, 34.648518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321705, 34.184166, 34.471966>,  <25.710327, 33.874725, 34.652718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321705, 34.184166, 34.471966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524738, 34.523518, 34.532116>,  <26.646559, 34.727127, 34.568207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524738, 34.523518, 34.532116>,  <26.321705, 34.184166, 34.471966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524738, 34.523518, 34.532116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742369, 0.519216, -0.423442,
		-0.437317, 0.103298, 0.893355,
		0.507586, 0.848377, 0.150376,
		26.677013, 34.778030, 34.577229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137468, 33.731518, 33.946827>,  <26.321705, 34.184166, 34.471966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137468, 33.731518, 33.946827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523014, 33.714272, 33.841675>,  <26.754341, 33.703922, 33.778584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523014, 33.714272, 33.841675>,  <26.137468, 33.731518, 33.946827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523014, 33.714272, 33.841675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138091, -0.924749, -0.354641,
		-0.227810, 0.378127, -0.897286,
		0.963864, -0.043116, -0.262883,
		26.812174, 33.701336, 33.762810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078335, 33.602070, 33.195587>,  <26.137468, 33.731518, 33.946827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078335, 33.602070, 33.195587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412821, 33.459045, 33.361912>,  <26.613512, 33.373230, 33.461708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412821, 33.459045, 33.361912>,  <26.078335, 33.602070, 33.195587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412821, 33.459045, 33.361912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129926, -0.865804, -0.483221,
		0.532792, 0.350051, -0.770453,
		0.836213, -0.357558, 0.415813,
		26.663685, 33.351776, 33.486656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608553, 33.351982, 32.645039>,  <26.078335, 33.602070, 33.195587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608553, 33.351982, 32.645039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712263, 33.147789, 32.972984>,  <26.774490, 33.025272, 33.169754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712263, 33.147789, 32.972984>,  <26.608553, 33.351982, 32.645039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712263, 33.147789, 32.972984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002618, -0.849265, -0.527960,
		0.965799, 0.134742, -0.221532,
		0.259278, -0.510483, 0.819867,
		26.790047, 32.994644, 33.218945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232332, 32.992191, 32.461842>,  <26.608553, 33.351982, 32.645039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232332, 32.992191, 32.461842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021551, 32.801029, 32.742962>,  <26.895082, 32.686333, 32.911633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021551, 32.801029, 32.742962>,  <27.232332, 32.992191, 32.461842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021551, 32.801029, 32.742962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241136, -0.708874, -0.662835,
		0.814969, -0.518753, 0.258303,
		-0.526952, -0.477904, 0.702801,
		26.863466, 32.657658, 32.953804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583147, 32.436302, 32.678761>,  <27.232332, 32.992191, 32.461842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583147, 32.436302, 32.678761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323660, 32.382519, 32.978382>,  <27.167969, 32.350250, 33.158157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323660, 32.382519, 32.978382>,  <27.583147, 32.436302, 32.678761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323660, 32.382519, 32.978382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118571, -0.990106, -0.075042,
		0.751736, 0.040136, 0.658241,
		-0.648717, -0.134460, 0.749057,
		27.129045, 32.342182, 33.203098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832029, 31.861835, 33.161377>,  <27.583147, 32.436302, 32.678761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832029, 31.861835, 33.161377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435093, 31.894030, 33.198856>,  <27.196930, 31.913345, 33.221344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435093, 31.894030, 33.198856>,  <27.832029, 31.861835, 33.161377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435093, 31.894030, 33.198856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088189, -0.992787, -0.081215,
		0.086483, -0.088856, 0.992283,
		-0.992342, 0.080484, 0.093696,
		27.137390, 31.918175, 33.226967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663252, 31.307407, 33.525345>,  <27.832029, 31.861835, 33.161377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663252, 31.307407, 33.525345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321590, 31.423721, 33.352898>,  <27.116594, 31.493509, 33.249428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321590, 31.423721, 33.352898>,  <27.663252, 31.307407, 33.525345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321590, 31.423721, 33.352898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207585, -0.950790, -0.230014,
		-0.476791, -0.106973, 0.872483,
		-0.854154, 0.290783, -0.431122,
		27.065344, 31.510956, 33.223560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161207, 30.799261, 33.604515>,  <27.663252, 31.307407, 33.525345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161207, 30.799261, 33.604515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038317, 30.994759, 33.277897>,  <26.964582, 31.112057, 33.081928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038317, 30.994759, 33.277897>,  <27.161207, 30.799261, 33.604515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038317, 30.994759, 33.277897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090135, -0.869128, -0.486305,
		-0.947358, -0.075807, 0.311073,
		-0.307228, 0.488744, -0.816542,
		26.946148, 31.141382, 33.032936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552391, 30.531219, 33.255173>,  <27.161207, 30.799261, 33.604515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552391, 30.531219, 33.255173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754080, 30.699654, 32.953590>,  <26.875093, 30.800714, 32.772640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754080, 30.699654, 32.953590>,  <26.552391, 30.531219, 33.255173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754080, 30.699654, 32.953590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134253, -0.824226, -0.550116,
		-0.853075, 0.378601, -0.359061,
		0.504222, 0.421085, -0.753955,
		26.905346, 30.825979, 32.727406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628706, 30.408953, 32.517319>,  <26.552391, 30.531219, 33.255173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628706, 30.408953, 32.517319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421373, 30.165037, 32.277489>,  <26.296974, 30.018688, 32.133591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421373, 30.165037, 32.277489>,  <26.628706, 30.408953, 32.517319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421373, 30.165037, 32.277489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568158, 0.278460, -0.774375,
		0.639163, -0.742037, 0.202121,
		-0.518332, -0.609788, -0.599575,
		26.265873, 29.982101, 32.097618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170095, 30.059238, 31.967777>,  <26.628706, 30.408953, 32.517319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170095, 30.059238, 31.967777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855225, 30.292032, 31.886152>,  <26.666302, 30.431709, 31.837177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855225, 30.292032, 31.886152>,  <27.170095, 30.059238, 31.967777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855225, 30.292032, 31.886152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339341, 0.685023, 0.644664,
		0.514973, 0.438219, -0.736727,
		-0.787179, 0.581986, -0.204063,
		26.619070, 30.466629, 31.824934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440487, 30.655910, 32.101452>,  <27.170095, 30.059238, 31.967777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440487, 30.655910, 32.101452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048309, 30.730997, 32.077801>,  <26.813004, 30.776049, 32.063610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048309, 30.730997, 32.077801>,  <27.440487, 30.655910, 32.101452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048309, 30.730997, 32.077801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086707, 0.681683, 0.726492,
		0.176679, 0.707156, -0.684627,
		-0.980442, 0.187718, -0.059124,
		26.754177, 30.787312, 32.060062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213745, 31.315102, 31.789396>,  <27.440487, 30.655910, 32.101452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213745, 31.315102, 31.789396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967619, 31.185459, 32.076824>,  <26.819944, 31.107674, 32.249283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967619, 31.185459, 32.076824>,  <27.213745, 31.315102, 31.789396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967619, 31.185459, 32.076824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236218, 0.793864, 0.560339,
		-0.752057, 0.514524, -0.411916,
		-0.615313, -0.324105, 0.718571,
		26.783026, 31.088228, 32.292397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674662, 31.838396, 31.922192>,  <27.213745, 31.315102, 31.789396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674662, 31.838396, 31.922192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721395, 31.613117, 32.249401>,  <26.749435, 31.477951, 32.445728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721395, 31.613117, 32.249401>,  <26.674662, 31.838396, 31.922192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721395, 31.613117, 32.249401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168246, 0.822982, 0.542580,
		-0.978797, 0.074237, 0.190908,
		0.116834, -0.563195, 0.818023,
		26.756445, 31.444159, 32.494808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145117, 31.988766, 32.451824>,  <26.674662, 31.838396, 31.922192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145117, 31.988766, 32.451824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431675, 31.837353, 32.686256>,  <26.603609, 31.746506, 32.826916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431675, 31.837353, 32.686256>,  <26.145117, 31.988766, 32.451824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431675, 31.837353, 32.686256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039265, 0.860568, 0.507819,
		-0.696590, -0.340786, 0.631369,
		0.716394, -0.378533, 0.586083,
		26.646593, 31.723793, 32.862080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879093, 31.932499, 33.217644>,  <26.145117, 31.988766, 32.451824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879093, 31.932499, 33.217644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267788, 31.993071, 33.145203>,  <26.501005, 32.029415, 33.101738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267788, 31.993071, 33.145203>,  <25.879093, 31.932499, 33.217644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267788, 31.993071, 33.145203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013669, 0.801954, 0.597229,
		0.235672, -0.577874, 0.781358,
		0.971736, 0.151430, -0.181100,
		26.559309, 32.038498, 33.090874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261972, 31.998161, 33.882793>,  <25.879093, 31.932499, 33.217644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261972, 31.998161, 33.882793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462025, 32.214417, 33.612213>,  <26.582056, 32.344170, 33.449863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462025, 32.214417, 33.612213>,  <26.261972, 31.998161, 33.882793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462025, 32.214417, 33.612213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071403, 0.752757, 0.654415,
		0.863002, -0.375592, 0.337872,
		0.500129, 0.540637, -0.676450,
		26.612062, 32.376606, 33.409279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884275, 32.270763, 34.244991>,  <26.261972, 31.998161, 33.882793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884275, 32.270763, 34.244991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826124, 32.509644, 33.929470>,  <26.791233, 32.652973, 33.740158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826124, 32.509644, 33.929470>,  <26.884275, 32.270763, 34.244991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826124, 32.509644, 33.929470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163793, 0.800800, 0.576099,
		0.975724, -0.045448, -0.214237,
		-0.145379, 0.597205, -0.788804,
		26.782511, 32.688805, 33.692829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491192, 32.617012, 34.155399>,  <26.884275, 32.270763, 34.244991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491192, 32.617012, 34.155399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148346, 32.792282, 34.047062>,  <26.942638, 32.897446, 33.982059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148346, 32.792282, 34.047062>,  <27.491192, 32.617012, 34.155399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148346, 32.792282, 34.047062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148212, 0.713317, 0.684990,
		0.493346, 0.546971, -0.676337,
		-0.857113, 0.438179, -0.270845,
		26.891212, 32.923737, 33.965809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528931, 33.341923, 34.109829>,  <27.491192, 32.617012, 34.155399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528931, 33.341923, 34.109829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142752, 33.317249, 34.211102>,  <26.911043, 33.302444, 34.271866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142752, 33.317249, 34.211102>,  <27.528931, 33.341923, 34.109829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142752, 33.317249, 34.211102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111114, 0.781381, 0.614083,
		-0.235712, 0.620998, -0.747530,
		-0.965450, -0.061685, 0.253183,
		26.853117, 33.298744, 34.287056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560972, 34.056065, 33.936935>,  <27.528931, 33.341923, 34.109829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560972, 34.056065, 33.936935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579679, 34.356667, 33.673706>,  <27.590904, 34.537025, 33.515770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579679, 34.356667, 33.673706>,  <27.560972, 34.056065, 33.936935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579679, 34.356667, 33.673706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740912, -0.467952, -0.481737,
		-0.669972, -0.465042, -0.578683,
		0.046768, 0.751503, -0.658070,
		27.593710, 34.582119, 33.476284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618692, 33.689468, 33.205296>,  <27.560972, 34.056065, 33.936935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618692, 33.689468, 33.205296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760546, 34.062347, 33.234287>,  <27.845657, 34.286076, 33.251682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760546, 34.062347, 33.234287>,  <27.618692, 33.689468, 33.205296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760546, 34.062347, 33.234287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740939, -0.232899, -0.629895,
		-0.570304, 0.277082, -0.773291,
		0.354632, 0.932193, 0.072478,
		27.866936, 34.342007, 33.256031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647650, 34.233418, 32.601254>,  <27.618692, 33.689468, 33.205296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647650, 34.233418, 32.601254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959988, 34.303688, 32.841057>,  <28.147390, 34.345852, 32.984940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959988, 34.303688, 32.841057>,  <27.647650, 34.233418, 32.601254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959988, 34.303688, 32.841057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622444, -0.300674, -0.722606,
		0.053312, 0.937407, -0.344130,
		0.780847, 0.175678, 0.599513,
		28.194242, 34.356392, 33.020912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134953, 34.075336, 32.114830>,  <27.647650, 34.233418, 32.601254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134953, 34.075336, 32.114830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356628, 34.106426, 32.446331>,  <28.489634, 34.125080, 32.645233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356628, 34.106426, 32.446331>,  <28.134953, 34.075336, 32.114830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356628, 34.106426, 32.446331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822058, -0.207481, -0.530256,
		0.130737, 0.975146, -0.178878,
		0.554191, 0.077724, 0.828753,
		28.522886, 34.129742, 32.694958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650324, 34.672649, 32.092491>,  <28.134953, 34.075336, 32.114830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650324, 34.672649, 32.092491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773962, 34.398293, 32.356010>,  <28.848145, 34.233677, 32.514122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773962, 34.398293, 32.356010>,  <28.650324, 34.672649, 32.092491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773962, 34.398293, 32.356010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904884, -0.001057, -0.425658,
		0.292652, 0.727702, 0.620327,
		0.309096, -0.685893, 0.658795,
		28.866692, 34.192524, 32.553650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364504, 34.916485, 32.173344>,  <28.650324, 34.672649, 32.092491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364504, 34.916485, 32.173344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341324, 34.538338, 32.301666>,  <29.327415, 34.311447, 32.378662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341324, 34.538338, 32.301666>,  <29.364504, 34.916485, 32.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341324, 34.538338, 32.301666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943107, -0.157227, -0.292965,
		0.327400, 0.285580, 0.900696,
		-0.057949, -0.945370, 0.320809,
		29.323938, 34.254726, 32.397907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918034, 34.670235, 32.698460>,  <29.364504, 34.916485, 32.173344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918034, 34.670235, 32.698460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815584, 34.339172, 32.498703>,  <29.754114, 34.140537, 32.378849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815584, 34.339172, 32.498703>,  <29.918034, 34.670235, 32.698460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815584, 34.339172, 32.498703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966598, -0.214225, -0.140696,
		0.009465, -0.518746, 0.854876,
		-0.256121, -0.827653, -0.499392,
		29.738749, 34.090878, 32.348885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430607, 34.124805, 32.858982>,  <29.918034, 34.670235, 32.698460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430607, 34.124805, 32.858982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300783, 34.000927, 32.501492>,  <30.222889, 33.926601, 32.286999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300783, 34.000927, 32.501492>,  <30.430607, 34.124805, 32.858982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300783, 34.000927, 32.501492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912161, -0.352467, -0.209117,
		-0.250247, -0.883094, 0.396891,
		-0.324561, -0.309697, -0.893727,
		30.203415, 33.908016, 32.233372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447758, 34.337715, 33.600060>,  <30.430607, 34.124805, 32.858982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447758, 34.337715, 33.600060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532965, 34.668400, 33.808357>,  <30.584089, 34.866810, 33.933334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532965, 34.668400, 33.808357>,  <30.447758, 34.337715, 33.600060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532965, 34.668400, 33.808357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976515, 0.197747, 0.085523,
		-0.032273, -0.526732, 0.849419,
		0.213017, 0.826710, 0.520744,
		30.596870, 34.916412, 33.964581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332344, 34.084114, 34.255547>,  <30.447758, 34.337715, 33.600060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332344, 34.084114, 34.255547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721584, 34.141029, 34.328026>,  <30.955128, 34.175179, 34.371513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721584, 34.141029, 34.328026>,  <30.332344, 34.084114, 34.255547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721584, 34.141029, 34.328026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084616, -0.510795, 0.855528,
		0.214286, -0.847846, -0.485014,
		0.973099, 0.142288, 0.181198,
		31.013514, 34.183716, 34.382385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629673, 33.386482, 34.364861>,  <30.332344, 34.084114, 34.255547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629673, 33.386482, 34.364861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881210, 33.659439, 34.513939>,  <31.032133, 33.823212, 34.603386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881210, 33.659439, 34.513939>,  <30.629673, 33.386482, 34.364861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881210, 33.659439, 34.513939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082640, -0.535275, 0.840626,
		0.773130, -0.497820, -0.392996,
		0.628841, 0.682390, 0.372697,
		31.069862, 33.864155, 34.625748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224136, 32.988239, 34.691166>,  <30.629673, 33.386482, 34.364861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224136, 32.988239, 34.691166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209776, 33.357456, 34.844376>,  <31.201159, 33.578987, 34.936302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209776, 33.357456, 34.844376>,  <31.224136, 32.988239, 34.691166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209776, 33.357456, 34.844376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094517, -0.384686, 0.918196,
		0.994875, -0.003237, 0.101055,
		-0.035902, 0.923042, 0.383021,
		31.199005, 33.634369, 34.959282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799545, 33.170166, 35.307373>,  <31.224136, 32.988239, 34.691166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799545, 33.170166, 35.307373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912106, 32.839050, 35.501518>,  <30.979643, 32.640381, 35.618004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912106, 32.839050, 35.501518>,  <30.799545, 33.170166, 35.307373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912106, 32.839050, 35.501518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800608, -0.076301, -0.594310,
		0.528998, 0.555824, 0.641265,
		0.281403, -0.827791, 0.485360,
		30.996527, 32.590714, 35.647125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484156, 33.268333, 35.640652>,  <30.799545, 33.170166, 35.307373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484156, 33.268333, 35.640652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389441, 32.891487, 35.545704>,  <31.332611, 32.665379, 35.488735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389441, 32.891487, 35.545704>,  <31.484156, 33.268333, 35.640652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389441, 32.891487, 35.545704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830819, -0.069693, -0.552161,
		0.503659, -0.327955, 0.799233,
		-0.236786, -0.942119, -0.237370,
		31.318405, 32.608852, 35.474491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172073, 32.970608, 35.570526>,  <31.484156, 33.268333, 35.640652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172073, 32.970608, 35.570526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950737, 32.670734, 35.425316>,  <31.817936, 32.490810, 35.338192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950737, 32.670734, 35.425316>,  <32.172073, 32.970608, 35.570526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950737, 32.670734, 35.425316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797016, -0.349893, -0.492280,
		0.242036, -0.561733, 0.791122,
		-0.553338, -0.749687, -0.363024,
		31.784735, 32.445827, 35.316410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590874, 32.350895, 35.634689>,  <32.172073, 32.970608, 35.570526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590874, 32.350895, 35.634689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320068, 32.365448, 35.340660>,  <32.157585, 32.374180, 35.164242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320068, 32.365448, 35.340660>,  <32.590874, 32.350895, 35.634689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320068, 32.365448, 35.340660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656525, -0.421530, -0.625529,
		-0.332615, -0.906084, 0.261493,
		-0.677010, 0.036384, -0.735074,
		32.116966, 32.376362, 35.120136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332687, 31.739885, 35.355652>,  <32.590874, 32.350895, 35.634689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332687, 31.739885, 35.355652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321980, 31.997465, 35.049812>,  <32.315556, 32.152012, 34.866310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321980, 31.997465, 35.049812>,  <32.332687, 31.739885, 35.355652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321980, 31.997465, 35.049812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532646, -0.638059, -0.556030,
		-0.845915, -0.422147, -0.325914,
		-0.026774, 0.643951, -0.764598,
		32.313946, 32.190651, 34.820435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257484, 31.351507, 34.725399>,  <32.332687, 31.739885, 35.355652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257484, 31.351507, 34.725399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402653, 31.697866, 34.587700>,  <32.489754, 31.905682, 34.505081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402653, 31.697866, 34.587700>,  <32.257484, 31.351507, 34.725399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402653, 31.697866, 34.587700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618732, -0.500170, -0.605806,
		-0.696750, 0.006862, -0.717281,
		0.362919, 0.865900, -0.344248,
		32.511528, 31.957636, 34.484425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055454, 31.370378, 34.077644>,  <32.257484, 31.351507, 34.725399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055454, 31.370378, 34.077644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363491, 31.625547, 34.079140>,  <32.548313, 31.778648, 34.080036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363491, 31.625547, 34.079140>,  <32.055454, 31.370378, 34.077644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363491, 31.625547, 34.079140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374142, -0.446895, -0.812590,
		-0.516698, 0.627168, -0.582824,
		0.770092, 0.637922, 0.003740,
		32.594517, 31.816923, 34.080261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121098, 31.495567, 33.313610>,  <32.055454, 31.370378, 34.077644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121098, 31.495567, 33.313610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461475, 31.567976, 33.510841>,  <32.665703, 31.611422, 33.629181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461475, 31.567976, 33.510841>,  <32.121098, 31.495567, 33.313610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461475, 31.567976, 33.510841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519473, -0.428972, -0.739007,
		0.077740, 0.884994, -0.459067,
		0.850943, 0.181023, 0.493078,
		32.716759, 31.622282, 33.658764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569160, 31.895422, 32.821682>,  <32.121098, 31.495567, 33.313610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569160, 31.895422, 32.821682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804585, 31.724058, 33.095928>,  <32.945839, 31.621239, 33.260475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804585, 31.724058, 33.095928>,  <32.569160, 31.895422, 32.821682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804585, 31.724058, 33.095928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567206, -0.385489, -0.727789,
		0.576088, 0.817229, 0.016115,
		0.588558, -0.428411, 0.685612,
		32.981152, 31.595535, 33.301613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346352, 32.101078, 32.666157>,  <32.569160, 31.895422, 32.821682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346352, 32.101078, 32.666157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333858, 31.744513, 32.847004>,  <33.326363, 31.530573, 32.955513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333858, 31.744513, 32.847004>,  <33.346352, 32.101078, 32.666157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333858, 31.744513, 32.847004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565677, -0.388688, -0.727277,
		0.824035, 0.233035, 0.516392,
		-0.031234, -0.891413, 0.452115,
		33.324490, 31.477089, 32.982639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868408, 31.797770, 32.340031>,  <33.346352, 32.101078, 32.666157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868408, 31.797770, 32.340031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772293, 31.480350, 32.563652>,  <33.714622, 31.289900, 32.697826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772293, 31.480350, 32.563652>,  <33.868408, 31.797770, 32.340031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772293, 31.480350, 32.563652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457384, -0.600547, -0.655853,
		0.856189, 0.098106, 0.507263,
		-0.240292, -0.793548, 0.559054,
		33.700207, 31.242287, 32.731369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484287, 31.559408, 32.530228>,  <33.868408, 31.797770, 32.340031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484287, 31.559408, 32.530228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200012, 31.278381, 32.515648>,  <34.029449, 31.109766, 32.506901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200012, 31.278381, 32.515648>,  <34.484287, 31.559408, 32.530228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200012, 31.278381, 32.515648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508338, -0.477014, -0.716972,
		0.486335, -0.528069, 0.696148,
		-0.710683, -0.702567, -0.036449,
		33.986809, 31.067612, 32.504715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812115, 30.979780, 32.419422>,  <34.484287, 31.559408, 32.530228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812115, 30.979780, 32.419422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446655, 30.828806, 32.359047>,  <34.227379, 30.738220, 32.322823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446655, 30.828806, 32.359047>,  <34.812115, 30.979780, 32.419422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446655, 30.828806, 32.359047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347886, -0.533949, -0.770632,
		0.210274, -0.756597, 0.619149,
		-0.913652, -0.377437, -0.150934,
		34.172558, 30.715574, 32.313766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969231, 30.265905, 32.176392>,  <34.812115, 30.979780, 32.419422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969231, 30.265905, 32.176392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591640, 30.350443, 32.075008>,  <34.365086, 30.401165, 32.014179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591640, 30.350443, 32.075008>,  <34.969231, 30.265905, 32.176392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591640, 30.350443, 32.075008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117047, -0.503689, -0.855919,
		-0.308557, -0.837635, 0.450733,
		-0.943977, 0.211343, -0.253460,
		34.308449, 30.413845, 31.998970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710793, 29.577803, 31.928328>,  <34.969231, 30.265905, 32.176392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710793, 29.577803, 31.928328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464207, 29.864182, 31.797243>,  <34.316257, 30.036009, 31.718592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464207, 29.864182, 31.797243>,  <34.710793, 29.577803, 31.928328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464207, 29.864182, 31.797243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126132, -0.321038, -0.938630,
		-0.777217, -0.619964, 0.107604,
		-0.616461, 0.715947, -0.327713,
		34.279270, 30.078966, 31.698929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280819, 29.340416, 31.406466>,  <34.710793, 29.577803, 31.928328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280819, 29.340416, 31.406466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292507, 29.731794, 31.324694>,  <34.299519, 29.966621, 31.275631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292507, 29.731794, 31.324694>,  <34.280819, 29.340416, 31.406466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292507, 29.731794, 31.324694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282450, -0.204264, -0.937282,
		-0.958837, -0.030357, -0.282329,
		0.029216, 0.978445, -0.204430,
		34.301273, 30.025328, 31.263365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941151, 29.400345, 30.706791>,  <34.280819, 29.340416, 31.406466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941151, 29.400345, 30.706791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158474, 29.729174, 30.774921>,  <34.288868, 29.926472, 30.815800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158474, 29.729174, 30.774921>,  <33.941151, 29.400345, 30.706791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158474, 29.729174, 30.774921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317030, -0.013037, -0.948326,
		-0.777374, 0.569231, -0.267706,
		0.543307, 0.822074, 0.170329,
		34.321465, 29.975796, 30.826019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826145, 29.841120, 30.123192>,  <33.941151, 29.400345, 30.706791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826145, 29.841120, 30.123192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158127, 29.980453, 30.297470>,  <34.357315, 30.064054, 30.402037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158127, 29.980453, 30.297470>,  <33.826145, 29.841120, 30.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158127, 29.980453, 30.297470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344056, 0.295144, -0.891356,
		-0.439084, 0.889693, 0.125111,
		0.829958, 0.348335, 0.435697,
		34.407116, 30.084953, 30.428179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905197, 30.581442, 29.769756>,  <33.826145, 29.841120, 30.123192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905197, 30.581442, 29.769756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245182, 30.458103, 29.940628>,  <34.449173, 30.384100, 30.043152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245182, 30.458103, 29.940628>,  <33.905197, 30.581442, 29.769756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245182, 30.458103, 29.940628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504673, 0.243816, -0.828166,
		0.151208, 0.919498, 0.362849,
		0.849965, -0.308346, 0.427179,
		34.500172, 30.365599, 30.068783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385414, 31.218573, 29.881575>,  <33.905197, 30.581442, 29.769756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385414, 31.218573, 29.881575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612270, 30.890690, 29.849506>,  <34.748386, 30.693960, 29.830265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612270, 30.890690, 29.849506>,  <34.385414, 31.218573, 29.881575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612270, 30.890690, 29.849506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513737, 0.428162, -0.743473,
		0.643756, 0.380470, 0.663943,
		0.567144, -0.819707, -0.080170,
		34.782413, 30.644777, 29.825455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962769, 31.423767, 29.696665>,  <34.385414, 31.218573, 29.881575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962769, 31.423767, 29.696665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006100, 31.041460, 29.587288>,  <35.032101, 30.812075, 29.521662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006100, 31.041460, 29.587288>,  <34.962769, 31.423767, 29.696665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006100, 31.041460, 29.587288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473172, 0.291477, -0.831354,
		0.874284, -0.039323, 0.483819,
		0.108331, -0.955769, -0.273441,
		35.038597, 30.754730, 29.505255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643688, 31.298752, 29.439072>,  <34.962769, 31.423767, 29.696665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643688, 31.298752, 29.439072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480553, 30.976494, 29.267212>,  <35.382671, 30.783138, 29.164097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480553, 30.976494, 29.267212>,  <35.643688, 31.298752, 29.439072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480553, 30.976494, 29.267212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409185, 0.259388, -0.874806,
		0.816231, -0.532588, 0.223869,
		-0.407843, -0.805647, -0.429647,
		35.358200, 30.734800, 29.138317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153446, 30.892323, 29.045868>,  <35.643688, 31.298752, 29.439072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153446, 30.892323, 29.045868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793797, 30.805092, 28.894072>,  <35.578007, 30.752752, 28.802994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793797, 30.805092, 28.894072>,  <36.153446, 30.892323, 29.045868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793797, 30.805092, 28.894072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345557, 0.178449, -0.921274,
		0.268633, -0.959477, -0.085089,
		-0.899126, -0.218081, -0.379491,
		35.524059, 30.739668, 28.780224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280960, 30.534405, 28.446766>,  <36.153446, 30.892323, 29.045868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280960, 30.534405, 28.446766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899048, 30.629023, 28.374722>,  <35.669899, 30.685793, 28.331495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899048, 30.629023, 28.374722>,  <36.280960, 30.534405, 28.446766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899048, 30.629023, 28.374722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244092, 0.277804, -0.929109,
		-0.169742, -0.931059, -0.322981,
		-0.954781, 0.236546, -0.180109,
		35.612614, 30.699986, 28.320688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154938, 30.322603, 27.831882>,  <36.280960, 30.534405, 28.446766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154938, 30.322603, 27.831882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846340, 30.573694, 27.873373>,  <35.661182, 30.724350, 27.898268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846340, 30.573694, 27.873373>,  <36.154938, 30.322603, 27.831882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846340, 30.573694, 27.873373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234450, 0.432040, -0.870847,
		-0.591470, -0.647532, -0.480485,
		-0.771490, 0.627730, 0.103724,
		35.614895, 30.762012, 27.904490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887005, 30.345535, 27.265995>,  <36.154938, 30.322603, 27.831882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887005, 30.345535, 27.265995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731087, 30.671633, 27.437315>,  <35.637535, 30.867290, 27.540108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731087, 30.671633, 27.437315>,  <35.887005, 30.345535, 27.265995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731087, 30.671633, 27.437315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072000, 0.490642, -0.868381,
		-0.918083, -0.307652, -0.249947,
		-0.389794, 0.815243, 0.428300,
		35.614147, 30.916206, 27.565805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468395, 30.535379, 26.784023>,  <35.887005, 30.345535, 27.265995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468395, 30.535379, 26.784023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569370, 30.851618, 27.007177>,  <35.629955, 31.041361, 27.141069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569370, 30.851618, 27.007177>,  <35.468395, 30.535379, 26.784023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569370, 30.851618, 27.007177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022099, 0.571699, -0.820166,
		-0.967361, 0.219367, 0.126846,
		0.252435, 0.790594, 0.557887,
		35.645100, 31.088797, 27.174543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043098, 31.080042, 26.479950>,  <35.468395, 30.535379, 26.784023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043098, 31.080042, 26.479950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364388, 31.233261, 26.662426>,  <35.557159, 31.325193, 26.771912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364388, 31.233261, 26.662426>,  <35.043098, 31.080042, 26.479950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364388, 31.233261, 26.662426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123803, 0.641761, -0.756846,
		-0.582674, 0.664393, 0.468053,
		0.803221, 0.383048, 0.456191,
		35.605354, 31.348175, 26.799284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972492, 31.747679, 26.391207>,  <35.043098, 31.080042, 26.479950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972492, 31.747679, 26.391207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354984, 31.728807, 26.506727>,  <35.584480, 31.717484, 26.576040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354984, 31.728807, 26.506727>,  <34.972492, 31.747679, 26.391207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354984, 31.728807, 26.506727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260993, 0.583837, -0.768776,
		-0.132342, 0.810498, 0.570594,
		0.956226, -0.047180, 0.288801,
		35.641853, 31.714653, 26.593367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275875, 32.400364, 26.423752>,  <34.972492, 31.747679, 26.391207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275875, 32.400364, 26.423752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575584, 32.144779, 26.354101>,  <35.755409, 31.991428, 26.312311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575584, 32.144779, 26.354101>,  <35.275875, 32.400364, 26.423752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575584, 32.144779, 26.354101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297753, 0.559872, -0.773231,
		0.591555, 0.527512, 0.609749,
		0.749270, -0.638963, -0.174127,
		35.800365, 31.953091, 26.301863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787987, 32.751823, 25.948723>,  <35.275875, 32.400364, 26.423752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787987, 32.751823, 25.948723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922794, 32.375324, 25.939972>,  <36.003677, 32.149426, 25.934721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922794, 32.375324, 25.939972>,  <35.787987, 32.751823, 25.948723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922794, 32.375324, 25.939972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329022, 0.139515, -0.933959,
		0.882137, 0.307561, 0.356709,
		0.337015, -0.941245, -0.021877,
		36.023899, 32.092949, 25.933409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444485, 32.796333, 25.659201>,  <35.787987, 32.751823, 25.948723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444485, 32.796333, 25.659201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325520, 32.417332, 25.612238>,  <36.254139, 32.189930, 25.584061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325520, 32.417332, 25.612238>,  <36.444485, 32.796333, 25.659201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325520, 32.417332, 25.612238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257155, 0.038929, -0.965586,
		0.919465, -0.317371, 0.232077,
		-0.297414, -0.947502, -0.117408,
		36.236294, 32.133080, 25.577015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928238, 32.512264, 25.198435>,  <36.444485, 32.796333, 25.659201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928238, 32.512264, 25.198435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608730, 32.273315, 25.169838>,  <36.417027, 32.129944, 25.152679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608730, 32.273315, 25.169838>,  <36.928238, 32.512264, 25.198435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608730, 32.273315, 25.169838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117748, -0.038690, -0.992289,
		0.590005, -0.801027, 0.101244,
		-0.798768, -0.597377, -0.071492,
		36.369099, 32.094101, 25.148390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146343, 31.898689, 24.823574>,  <36.928238, 32.512264, 25.198435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146343, 31.898689, 24.823574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749325, 31.939730, 24.797256>,  <36.511116, 31.964354, 24.781466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749325, 31.939730, 24.797256>,  <37.146343, 31.898689, 24.823574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749325, 31.939730, 24.797256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041966, -0.219145, -0.974789,
		-0.114431, -0.970283, 0.213205,
		-0.992544, 0.102599, -0.065796,
		36.451561, 31.970510, 24.777517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839352, 31.256262, 24.503284>,  <37.146343, 31.898689, 24.823574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839352, 31.256262, 24.503284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546761, 31.521286, 24.438847>,  <36.371204, 31.680302, 24.400185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546761, 31.521286, 24.438847>,  <36.839352, 31.256262, 24.503284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546761, 31.521286, 24.438847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023220, -0.260320, -0.965243,
		-0.681469, -0.702314, 0.205803,
		-0.731478, 0.662562, -0.161092,
		36.327316, 31.720055, 24.390518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504025, 30.886034, 23.930914>,  <36.839352, 31.256262, 24.503284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504025, 30.886034, 23.930914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365776, 31.261362, 23.926783>,  <36.282825, 31.486559, 23.924303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365776, 31.261362, 23.926783>,  <36.504025, 30.886034, 23.930914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365776, 31.261362, 23.926783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011774, -0.015343, -0.999813,
		-0.938301, -0.345433, 0.016350,
		-0.345619, 0.938318, -0.010329,
		36.262089, 31.542858, 23.923683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007755, 30.828678, 23.440353>,  <36.504025, 30.886034, 23.930914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007755, 30.828678, 23.440353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088524, 31.218000, 23.483992>,  <36.136986, 31.451593, 23.510174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088524, 31.218000, 23.483992>,  <36.007755, 30.828678, 23.440353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088524, 31.218000, 23.483992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183112, 0.071908, -0.980459,
		-0.962131, 0.217956, -0.163704,
		0.201925, 0.973306, 0.109095,
		36.149101, 31.509993, 23.516720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502556, 31.144867, 22.958633>,  <36.007755, 30.828678, 23.440353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502556, 31.144867, 22.958633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819050, 31.387255, 22.991493>,  <36.008945, 31.532688, 23.011209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819050, 31.387255, 22.991493>,  <35.502556, 31.144867, 22.958633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819050, 31.387255, 22.991493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005091, 0.140858, -0.990017,
		-0.611492, 0.782917, 0.114536,
		0.791234, 0.605970, 0.082148,
		36.056419, 31.569046, 23.016138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392609, 31.752680, 22.545452>,  <35.502556, 31.144867, 22.958633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392609, 31.752680, 22.545452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788998, 31.729584, 22.593845>,  <36.026833, 31.715725, 22.622881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788998, 31.729584, 22.593845>,  <35.392609, 31.752680, 22.545452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788998, 31.729584, 22.593845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123955, 0.051046, -0.990974,
		0.051046, 0.997025, 0.057742,
		0.990974, -0.057742, 0.120981,
		36.086288, 31.712261, 22.630140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559990, 32.130478, 21.986502>,  <35.392609, 31.752680, 22.545452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559990, 32.130478, 21.986502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932873, 31.996948, 22.042427>,  <36.156605, 31.916830, 22.075983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932873, 31.996948, 22.042427>,  <35.559990, 32.130478, 21.986502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932873, 31.996948, 22.042427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137830, -0.029750, -0.990009,
		0.334649, 0.942166, 0.018278,
		0.932209, -0.333824, 0.139815,
		36.212536, 31.896801, 22.084372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051140, 32.624920, 21.682383>,  <35.559990, 32.130478, 21.986502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051140, 32.624920, 21.682383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254272, 32.281677, 21.712746>,  <36.376152, 32.075733, 21.730963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254272, 32.281677, 21.712746>,  <36.051140, 32.624920, 21.682383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254272, 32.281677, 21.712746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271947, 0.076082, -0.959300,
		0.817406, 0.507804, 0.271996,
		0.507830, -0.858106, 0.075906,
		36.406620, 32.024246, 21.735518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601063, 32.820538, 21.516619>,  <36.051140, 32.624920, 21.682383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601063, 32.820538, 21.516619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625839, 32.425545, 21.458588>,  <36.640705, 32.188549, 21.423769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625839, 32.425545, 21.458588>,  <36.601063, 32.820538, 21.516619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625839, 32.425545, 21.458588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437695, 0.157513, -0.885219,
		0.896987, -0.008665, 0.441972,
		0.061946, -0.987479, -0.145080,
		36.644424, 32.129299, 21.415064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251755, 32.642296, 21.278919>,  <36.601063, 32.820538, 21.516619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251755, 32.642296, 21.278919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022621, 32.327290, 21.187990>,  <36.885139, 32.138287, 21.133432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022621, 32.327290, 21.187990>,  <37.251755, 32.642296, 21.278919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022621, 32.327290, 21.187990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371343, -0.002093, -0.928493,
		0.730731, -0.616287, 0.293639,
		-0.572833, -0.787519, -0.227325,
		36.850773, 32.091034, 21.119793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769711, 32.112103, 20.959112>,  <37.251755, 32.642296, 21.278919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769711, 32.112103, 20.959112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389519, 32.066628, 20.843418>,  <37.161404, 32.039341, 20.774002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389519, 32.066628, 20.843418>,  <37.769711, 32.112103, 20.959112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389519, 32.066628, 20.843418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284138, 0.059085, -0.956961,
		0.125890, -0.991758, -0.023854,
		-0.950483, -0.113694, -0.289234,
		37.104374, 32.032520, 20.756647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867737, 31.937080, 20.288004>,  <37.769711, 32.112103, 20.959112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867737, 31.937080, 20.288004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470711, 31.981720, 20.307465>,  <37.232494, 32.008503, 20.319141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470711, 31.981720, 20.307465>,  <37.867737, 31.937080, 20.288004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470711, 31.981720, 20.307465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009367, 0.328438, -0.944479,
		-0.121384, -0.937909, -0.324950,
		-0.992561, 0.111600, 0.048652,
		37.172943, 32.015202, 20.322060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479603, 31.543657, 19.696091>,  <37.867737, 31.937080, 20.288004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479603, 31.543657, 19.696091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212379, 31.822922, 19.799057>,  <37.052044, 31.990480, 19.860838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212379, 31.822922, 19.799057>,  <37.479603, 31.543657, 19.696091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212379, 31.822922, 19.799057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037440, 0.377041, -0.925439,
		-0.743164, -0.608612, -0.278026,
		-0.668061, 0.698162, 0.257417,
		37.011963, 32.032372, 19.876282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037220, 31.565914, 19.124109>,  <37.479603, 31.543657, 19.696091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037220, 31.565914, 19.124109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989311, 31.916960, 19.309774>,  <36.960564, 32.127586, 19.421173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989311, 31.916960, 19.309774>,  <37.037220, 31.565914, 19.124109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989311, 31.916960, 19.309774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027666, 0.464399, -0.885194,
		-0.992415, -0.118867, -0.031344,
		-0.119776, 0.877613, 0.464165,
		36.953377, 32.180244, 19.449024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529667, 31.923273, 18.780802>,  <37.037220, 31.565914, 19.124109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529667, 31.923273, 18.780802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739796, 32.215691, 18.954979>,  <36.865875, 32.391140, 19.059484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739796, 32.215691, 18.954979>,  <36.529667, 31.923273, 18.780802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739796, 32.215691, 18.954979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109913, 0.449155, -0.886667,
		-0.843772, 0.513650, 0.155602,
		0.525326, 0.731043, 0.435441,
		36.897392, 32.435005, 19.085611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219452, 32.692677, 18.711273>,  <36.529667, 31.923273, 18.780802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219452, 32.692677, 18.711273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615017, 32.639622, 18.737997>,  <36.852356, 32.607788, 18.754032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615017, 32.639622, 18.737997>,  <36.219452, 32.692677, 18.711273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615017, 32.639622, 18.737997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105367, 0.309596, -0.945012,
		0.104657, 0.941572, 0.320139,
		0.988911, -0.132634, 0.066809,
		36.911690, 32.599831, 18.758039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564953, 33.418285, 18.581192>,  <36.219452, 32.692677, 18.711273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564953, 33.418285, 18.581192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781498, 33.100899, 18.469957>,  <36.911427, 32.910465, 18.403217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781498, 33.100899, 18.469957>,  <36.564953, 33.418285, 18.581192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781498, 33.100899, 18.469957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046006, 0.302294, -0.952104,
		0.839529, 0.528227, 0.127147,
		0.541363, -0.793470, -0.278086,
		36.943909, 32.862858, 18.386532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262535, 33.834648, 18.451101>,  <36.564953, 33.418285, 18.581192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262535, 33.834648, 18.451101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233452, 34.191105, 18.271957>,  <37.216000, 34.404980, 18.164471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233452, 34.191105, 18.271957>,  <37.262535, 33.834648, 18.451101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233452, 34.191105, 18.271957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643811, -0.384895, -0.661334,
		-0.761722, 0.240251, 0.601713,
		-0.072710, 0.891143, -0.447859,
		37.211639, 34.458447, 18.137600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241589, 34.147861, 19.188303>,  <37.262535, 33.834648, 18.451101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241589, 34.147861, 19.188303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485661, 34.420059, 19.350590>,  <37.632103, 34.583378, 19.447962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485661, 34.420059, 19.350590>,  <37.241589, 34.147861, 19.188303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485661, 34.420059, 19.350590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530693, 0.029167, -0.847062,
		-0.588258, 0.732169, -0.343338,
		0.610179, 0.680498, 0.405715,
		37.668713, 34.624210, 19.472303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353626, 34.607590, 18.602053>,  <37.241589, 34.147861, 19.188303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353626, 34.607590, 18.602053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649071, 34.654686, 18.867561>,  <37.826336, 34.682945, 19.026867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649071, 34.654686, 18.867561>,  <37.353626, 34.607590, 18.602053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649071, 34.654686, 18.867561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654629, 0.109873, -0.747923,
		-0.160994, 0.986947, 0.004075,
		0.738608, 0.117743, 0.663773,
		37.870651, 34.690010, 19.066694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142719, 34.932732, 18.610056>,  <37.353626, 34.607590, 18.602053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142719, 34.932732, 18.610056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069500, 34.553894, 18.504593>,  <38.025570, 34.326591, 18.441315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069500, 34.553894, 18.504593>,  <38.142719, 34.932732, 18.610056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069500, 34.553894, 18.504593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916924, -0.261204, 0.301699,
		-0.354605, -0.186530, 0.916221,
		-0.183045, -0.947090, -0.263658,
		38.014587, 34.269768, 18.425495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213718, 34.255821, 18.968714>,  <38.142719, 34.932732, 18.610056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213718, 34.255821, 18.968714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565350, 34.443745, 18.936476>,  <38.776329, 34.556499, 18.917133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565350, 34.443745, 18.936476>,  <38.213718, 34.255821, 18.968714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565350, 34.443745, 18.936476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347639, 0.747567, 0.565942,
		0.326135, -0.469491, 0.820496,
		0.879081, 0.469810, -0.080595,
		38.829075, 34.584686, 18.912296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682770, 34.330467, 19.653419>,  <38.213718, 34.255821, 18.968714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682770, 34.330467, 19.653419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633511, 34.617664, 19.379391>,  <38.603954, 34.789982, 19.214973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633511, 34.617664, 19.379391>,  <38.682770, 34.330467, 19.653419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633511, 34.617664, 19.379391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651165, 0.462476, 0.601748,
		0.748879, 0.520197, 0.410579,
		-0.123145, 0.717991, -0.685072,
		38.596565, 34.833061, 19.173868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758785, 34.935539, 19.948231>,  <38.682770, 34.330467, 19.653419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758785, 34.935539, 19.948231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483875, 34.942654, 19.657759>,  <38.318932, 34.946922, 19.483475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483875, 34.942654, 19.657759>,  <38.758785, 34.935539, 19.948231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483875, 34.942654, 19.657759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686271, 0.311774, 0.657137,
		0.238095, 0.949990, -0.202065,
		-0.687272, 0.017789, -0.726182,
		38.277695, 34.947990, 19.439903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510574, 35.568779, 19.881344>,  <38.758785, 34.935539, 19.948231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510574, 35.568779, 19.881344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240799, 35.293922, 19.773289>,  <38.078934, 35.129009, 19.708456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240799, 35.293922, 19.773289>,  <38.510574, 35.568779, 19.881344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240799, 35.293922, 19.773289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567388, 0.248231, 0.785144,
		-0.472446, 0.682805, -0.557290,
		-0.674437, -0.687138, -0.270139,
		38.038467, 35.087780, 19.692247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853359, 35.898586, 19.882725>,  <38.510574, 35.568779, 19.881344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853359, 35.898586, 19.882725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749084, 35.512478, 19.889519>,  <37.686520, 35.280811, 19.893595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749084, 35.512478, 19.889519>,  <37.853359, 35.898586, 19.882725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749084, 35.512478, 19.889519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710820, 0.203810, 0.673198,
		-0.653283, 0.163419, -0.739267,
		-0.260684, -0.965275, 0.016984,
		37.670879, 35.222897, 19.894613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066025, 35.873924, 19.957048>,  <37.853359, 35.898586, 19.882725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066025, 35.873924, 19.957048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213116, 35.517742, 20.064281>,  <37.301369, 35.304035, 20.128622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213116, 35.517742, 20.064281>,  <37.066025, 35.873924, 19.957048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213116, 35.517742, 20.064281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733851, -0.100804, 0.671789,
		-0.571172, -0.443771, -0.690529,
		0.367728, -0.890453, 0.268085,
		37.323433, 35.250607, 20.144707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410583, 35.610828, 20.070711>,  <37.066025, 35.873924, 19.957048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410583, 35.610828, 20.070711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680744, 35.378922, 20.253006>,  <36.842842, 35.239777, 20.362383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680744, 35.378922, 20.253006>,  <36.410583, 35.610828, 20.070711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680744, 35.378922, 20.253006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608321, -0.088679, 0.788721,
		-0.416864, -0.809938, -0.412582,
		0.675403, -0.579772, 0.455735,
		36.883366, 35.204990, 20.389727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076714, 35.122250, 20.446571>,  <36.410583, 35.610828, 20.070711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076714, 35.122250, 20.446571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422718, 35.154255, 20.644707>,  <36.630322, 35.173458, 20.763588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422718, 35.154255, 20.644707>,  <36.076714, 35.122250, 20.446571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422718, 35.154255, 20.644707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493689, -0.040644, 0.868688,
		0.089638, -0.995965, 0.004344,
		0.865006, 0.080013, 0.495340,
		36.682220, 35.178257, 20.793308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980316, 34.699493, 20.946375>,  <36.076714, 35.122250, 20.446571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980316, 34.699493, 20.946375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327557, 34.847740, 21.078465>,  <36.535900, 34.936687, 21.157719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327557, 34.847740, 21.078465>,  <35.980316, 34.699493, 20.946375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327557, 34.847740, 21.078465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254077, -0.239755, 0.936996,
		0.426439, -0.897308, -0.113966,
		0.868098, 0.370615, 0.330226,
		36.587986, 34.958923, 21.177532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236084, 34.236988, 21.451380>,  <35.980316, 34.699493, 20.946375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236084, 34.236988, 21.451380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431297, 34.576202, 21.533995>,  <36.548424, 34.779732, 21.583563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431297, 34.576202, 21.533995>,  <36.236084, 34.236988, 21.451380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431297, 34.576202, 21.533995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301464, -0.058294, 0.951694,
		0.819112, -0.526721, 0.227203,
		0.488033, 0.848037, 0.206537,
		36.577705, 34.830612, 21.595955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588104, 34.166149, 22.056839>,  <36.236084, 34.236988, 21.451380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588104, 34.166149, 22.056839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576565, 34.565731, 22.042652>,  <36.569641, 34.805481, 22.034140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576565, 34.565731, 22.042652>,  <36.588104, 34.166149, 22.056839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576565, 34.565731, 22.042652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135996, 0.031232, 0.990217,
		0.990289, 0.033388, 0.134953,
		-0.028846, 0.998954, -0.035469,
		36.567909, 34.865417, 22.032011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960407, 34.435307, 22.635511>,  <36.588104, 34.166149, 22.056839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960407, 34.435307, 22.635511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742001, 34.749355, 22.518587>,  <36.610958, 34.937786, 22.448433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742001, 34.749355, 22.518587>,  <36.960407, 34.435307, 22.635511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742001, 34.749355, 22.518587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253470, 0.177744, 0.950873,
		0.798511, 0.593283, 0.101955,
		-0.546015, 0.785126, -0.292310,
		36.578197, 34.984894, 22.430895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240486, 35.049969, 22.994606>,  <36.960407, 34.435307, 22.635511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240486, 35.049969, 22.994606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848488, 35.068470, 22.917183>,  <36.613289, 35.079571, 22.870729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848488, 35.068470, 22.917183>,  <37.240486, 35.049969, 22.994606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848488, 35.068470, 22.917183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185079, 0.145671, 0.971867,
		0.073144, 0.988251, -0.134198,
		-0.979998, 0.046249, -0.193559,
		36.554489, 35.082344, 22.859116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017063, 35.711662, 23.268007>,  <37.240486, 35.049969, 22.994606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017063, 35.711662, 23.268007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685581, 35.494061, 23.215368>,  <36.486694, 35.363499, 23.183784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685581, 35.494061, 23.215368>,  <37.017063, 35.711662, 23.268007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685581, 35.494061, 23.215368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377029, 0.368823, 0.849599,
		-0.413647, 0.753679, -0.510748,
		-0.828701, -0.544001, -0.131596,
		36.436970, 35.330860, 23.175890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504570, 36.086388, 23.555910>,  <37.017063, 35.711662, 23.268007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504570, 36.086388, 23.555910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296444, 35.746948, 23.517632>,  <36.171570, 35.543285, 23.494665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296444, 35.746948, 23.517632>,  <36.504570, 36.086388, 23.555910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296444, 35.746948, 23.517632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518782, 0.225086, 0.824743,
		-0.678334, 0.478771, -0.557352,
		-0.520315, -0.848596, -0.095694,
		36.140350, 35.492371, 23.488924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965420, 36.309013, 23.816233>,  <36.504570, 36.086388, 23.555910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965420, 36.309013, 23.816233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913723, 35.912415, 23.822386>,  <35.882706, 35.674458, 23.826078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913723, 35.912415, 23.822386>,  <35.965420, 36.309013, 23.816233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913723, 35.912415, 23.822386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523854, 0.081440, 0.847906,
		-0.841947, 0.101524, -0.529923,
		-0.129240, -0.991494, 0.015384,
		35.874950, 35.614967, 23.827002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285164, 36.162006, 23.958883>,  <35.965420, 36.309013, 23.816233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285164, 36.162006, 23.958883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472088, 35.832542, 24.087383>,  <35.584244, 35.634865, 24.164482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472088, 35.832542, 24.087383>,  <35.285164, 36.162006, 23.958883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472088, 35.832542, 24.087383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529045, 0.030598, 0.848042,
		-0.708329, -0.566256, -0.421455,
		0.467313, -0.823661, 0.321248,
		35.612282, 35.585445, 24.183758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820683, 35.650032, 24.196369>,  <35.285164, 36.162006, 23.958883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820683, 35.650032, 24.196369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155220, 35.525650, 24.376961>,  <35.355942, 35.451023, 24.485315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155220, 35.525650, 24.376961>,  <34.820683, 35.650032, 24.196369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155220, 35.525650, 24.376961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487189, -0.044014, 0.872187,
		-0.251336, -0.949406, -0.188303,
		0.836347, -0.310951, 0.451478,
		35.406124, 35.432365, 24.512403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555153, 35.198185, 24.678902>,  <34.820683, 35.650032, 24.196369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555153, 35.198185, 24.678902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914730, 35.311832, 24.812279>,  <35.130474, 35.380020, 24.892305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914730, 35.311832, 24.812279>,  <34.555153, 35.198185, 24.678902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914730, 35.311832, 24.812279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343237, -0.016146, 0.939110,
		0.272200, -0.958654, 0.083005,
		0.898941, 0.284116, 0.333441,
		35.184414, 35.397068, 24.912312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612537, 34.918911, 25.242781>,  <34.555153, 35.198185, 24.678902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612537, 34.918911, 25.242781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908825, 35.184937, 25.280767>,  <35.086597, 35.344551, 25.303558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908825, 35.184937, 25.280767>,  <34.612537, 34.918911, 25.242781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908825, 35.184937, 25.280767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212719, 0.098099, 0.972177,
		0.637244, -0.740315, 0.214136,
		0.740723, 0.665064, 0.094966,
		35.131042, 35.384457, 25.309258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165058, 34.628185, 25.554630>,  <34.612537, 34.918911, 25.242781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165058, 34.628185, 25.554630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235149, 35.018200, 25.609169>,  <35.277206, 35.252209, 25.641891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235149, 35.018200, 25.609169>,  <35.165058, 34.628185, 25.554630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235149, 35.018200, 25.609169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034365, -0.132345, 0.990608,
		0.983927, -0.178270, 0.010317,
		0.175231, 0.975041, 0.136344,
		35.287720, 35.310711, 25.650072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535213, 34.728447, 26.150291>,  <35.165058, 34.628185, 25.554630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535213, 34.728447, 26.150291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396511, 35.102985, 26.128323>,  <35.313290, 35.327709, 26.115141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396511, 35.102985, 26.128323>,  <35.535213, 34.728447, 26.150291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396511, 35.102985, 26.128323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151437, 0.001896, 0.988465,
		0.925649, 0.351075, 0.141140,
		-0.346758, 0.936346, -0.054920,
		35.292484, 35.383888, 26.111847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886593, 35.102112, 26.721786>,  <35.535213, 34.728447, 26.150291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886593, 35.102112, 26.721786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581806, 35.331596, 26.601618>,  <35.398933, 35.469288, 26.529516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581806, 35.331596, 26.601618>,  <35.886593, 35.102112, 26.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581806, 35.331596, 26.601618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199168, 0.233808, 0.951665,
		0.616224, 0.784975, -0.063889,
		-0.761971, 0.573714, -0.300420,
		35.353214, 35.503712, 26.511492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890991, 35.685219, 27.207026>,  <35.886593, 35.102112, 26.721786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890991, 35.685219, 27.207026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519524, 35.694077, 27.058924>,  <35.296642, 35.699390, 26.970062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519524, 35.694077, 27.058924>,  <35.890991, 35.685219, 27.207026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519524, 35.694077, 27.058924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353709, 0.247630, 0.901981,
		0.111664, 0.968601, -0.222132,
		-0.928666, 0.022149, -0.370254,
		35.240925, 35.700722, 26.947847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717392, 36.333054, 27.419067>,  <35.890991, 35.685219, 27.207026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717392, 36.333054, 27.419067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389896, 36.109661, 27.365751>,  <35.193398, 35.975624, 27.333761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389896, 36.109661, 27.365751>,  <35.717392, 36.333054, 27.419067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389896, 36.109661, 27.365751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290441, 0.202586, 0.935202,
		-0.495289, 0.804400, -0.328070,
		-0.818739, -0.558480, -0.133292,
		35.144276, 35.942116, 27.325764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160118, 36.665936, 27.744135>,  <35.717392, 36.333054, 27.419067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160118, 36.665936, 27.744135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052082, 36.283375, 27.699673>,  <34.987263, 36.053841, 27.672997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052082, 36.283375, 27.699673>,  <35.160118, 36.665936, 27.744135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052082, 36.283375, 27.699673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221734, -0.050558, 0.973796,
		-0.936956, 0.287657, -0.198411,
		-0.270088, -0.956398, -0.111154,
		34.971054, 35.996456, 27.666327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575611, 36.557259, 28.195152>,  <35.160118, 36.665936, 27.744135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575611, 36.557259, 28.195152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722279, 36.191029, 28.129097>,  <34.810280, 35.971291, 28.089464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722279, 36.191029, 28.129097>,  <34.575611, 36.557259, 28.195152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722279, 36.191029, 28.129097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001248, -0.177987, 0.984032,
		-0.930352, -0.360604, -0.066404,
		0.366665, -0.915580, -0.165141,
		34.832279, 35.916355, 28.079556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224739, 36.205685, 28.566811>,  <34.575611, 36.557259, 28.195152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224739, 36.205685, 28.566811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517963, 35.939701, 28.509609>,  <34.693897, 35.780109, 28.475288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517963, 35.939701, 28.509609>,  <34.224739, 36.205685, 28.566811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517963, 35.939701, 28.509609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011345, -0.222173, 0.974941,
		-0.680070, -0.713068, -0.170410,
		0.733060, -0.664961, -0.143003,
		34.737881, 35.740211, 28.466709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922878, 35.540546, 28.846966>,  <34.224739, 36.205685, 28.566811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922878, 35.540546, 28.846966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322014, 35.516426, 28.836531>,  <34.561497, 35.501953, 28.830271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322014, 35.516426, 28.836531>,  <33.922878, 35.540546, 28.846966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322014, 35.516426, 28.836531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012331, -0.561844, 0.827151,
		-0.064537, -0.825042, -0.561374,
		0.997839, -0.060304, -0.026086,
		34.621365, 35.498333, 28.828705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001377, 34.855278, 28.999563>,  <33.922878, 35.540546, 28.846966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001377, 34.855278, 28.999563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363602, 35.013214, 29.061604>,  <34.580936, 35.107975, 29.098827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363602, 35.013214, 29.061604>,  <34.001377, 34.855278, 28.999563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363602, 35.013214, 29.061604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103789, -0.560732, 0.821467,
		0.411319, -0.727792, -0.548758,
		0.905563, 0.394840, 0.155103,
		34.635269, 35.131664, 29.108135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507046, 34.321884, 29.150030>,  <34.001377, 34.855278, 28.999563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507046, 34.321884, 29.150030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670307, 34.650394, 29.309492>,  <34.768265, 34.847500, 29.405170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670307, 34.650394, 29.309492>,  <34.507046, 34.321884, 29.150030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670307, 34.650394, 29.309492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088420, -0.470196, 0.878122,
		0.908623, -0.323156, -0.264527,
		0.408150, 0.821271, 0.398657,
		34.792751, 34.896774, 29.429089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210083, 34.081020, 29.523994>,  <34.507046, 34.321884, 29.150030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210083, 34.081020, 29.523994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069561, 34.420059, 29.683079>,  <34.985249, 34.623482, 29.778528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069561, 34.420059, 29.683079>,  <35.210083, 34.081020, 29.523994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069561, 34.420059, 29.683079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012060, -0.428845, 0.903298,
		0.936184, 0.312534, 0.160876,
		-0.351302, 0.847593, 0.397709,
		34.964169, 34.674335, 29.802391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380829, 33.989918, 30.227442>,  <35.210083, 34.081020, 29.523994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380829, 33.989918, 30.227442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121143, 34.292522, 30.258989>,  <34.965332, 34.474083, 30.277918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121143, 34.292522, 30.258989>,  <35.380829, 33.989918, 30.227442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121143, 34.292522, 30.258989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083505, -0.173957, 0.981207,
		0.756011, 0.630424, 0.176107,
		-0.649211, 0.756508, 0.078870,
		34.926380, 34.519474, 30.282650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563274, 34.321724, 30.924232>,  <35.380829, 33.989918, 30.227442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563274, 34.321724, 30.924232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201077, 34.457401, 30.822227>,  <34.983757, 34.538807, 30.761024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201077, 34.457401, 30.822227>,  <35.563274, 34.321724, 30.924232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201077, 34.457401, 30.822227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224215, 0.127796, 0.966124,
		0.360288, 0.931997, -0.039667,
		-0.905494, 0.339189, -0.255011,
		34.929428, 34.559158, 30.745724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411961, 34.859249, 31.334312>,  <35.563274, 34.321724, 30.924232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411961, 34.859249, 31.334312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047455, 34.741852, 31.218750>,  <34.828751, 34.671413, 31.149412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047455, 34.741852, 31.218750>,  <35.411961, 34.859249, 31.334312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047455, 34.741852, 31.218750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267118, -0.112726, 0.957048,
		-0.313453, 0.949292, 0.024326,
		-0.911260, -0.293492, -0.288908,
		34.774078, 34.653805, 31.132078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052986, 35.163483, 31.843922>,  <35.411961, 34.859249, 31.334312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052986, 35.163483, 31.843922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824234, 34.881035, 31.676903>,  <34.686981, 34.711567, 31.576693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824234, 34.881035, 31.676903>,  <35.052986, 35.163483, 31.843922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824234, 34.881035, 31.676903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412525, -0.192409, 0.890394,
		-0.709064, 0.681451, -0.181256,
		-0.571884, -0.706119, -0.417546,
		34.652668, 34.669201, 31.551640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444019, 35.368572, 32.193661>,  <35.052986, 35.163483, 31.843922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444019, 35.368572, 32.193661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425552, 34.992989, 32.057297>,  <34.414471, 34.767639, 31.975477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425552, 34.992989, 32.057297>,  <34.444019, 35.368572, 32.193661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425552, 34.992989, 32.057297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388327, -0.297562, 0.872158,
		-0.920364, 0.172655, -0.350885,
		-0.046172, -0.938961, -0.340912,
		34.411701, 34.711300, 31.955023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675613, 35.161175, 32.306595>,  <34.444019, 35.368572, 32.193661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675613, 35.161175, 32.306595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872776, 34.817497, 32.251698>,  <33.991074, 34.611290, 32.218761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872776, 34.817497, 32.251698>,  <33.675613, 35.161175, 32.306595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872776, 34.817497, 32.251698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442476, -0.383340, 0.810719,
		-0.749173, -0.338881, -0.569122,
		0.492905, -0.859192, -0.137241,
		34.020649, 34.559738, 32.210526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209553, 34.493336, 32.255840>,  <33.675613, 35.161175, 32.306595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209553, 34.493336, 32.255840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568733, 34.388912, 32.397560>,  <33.784241, 34.326256, 32.482594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568733, 34.388912, 32.397560>,  <33.209553, 34.493336, 32.255840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568733, 34.388912, 32.397560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439683, -0.497355, 0.747875,
		-0.019027, -0.827336, -0.561385,
		0.897951, -0.261061, 0.354302,
		33.838120, 34.310593, 32.503849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128731, 33.767128, 32.600643>,  <33.209553, 34.493336, 32.255840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128731, 33.767128, 32.600643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489975, 33.898029, 32.711857>,  <33.706722, 33.976570, 32.778584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489975, 33.898029, 32.711857>,  <33.128731, 33.767128, 32.600643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489975, 33.898029, 32.711857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096823, -0.475606, 0.874313,
		0.418360, -0.816518, -0.397837,
		0.903106, 0.327258, 0.278033,
		33.760906, 33.996208, 32.795265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450047, 33.178116, 32.889744>,  <33.128731, 33.767128, 32.600643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450047, 33.178116, 32.889744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657196, 33.486496, 33.038040>,  <33.781487, 33.671524, 33.127018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657196, 33.486496, 33.038040>,  <33.450047, 33.178116, 32.889744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657196, 33.486496, 33.038040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031017, -0.450018, 0.892481,
		0.854897, -0.450689, -0.256963,
		0.517870, 0.770949, 0.370740,
		33.812557, 33.717781, 33.149261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942459, 32.888512, 33.273277>,  <33.450047, 33.178116, 32.889744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942459, 32.888512, 33.273277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954231, 33.262035, 33.415905>,  <33.961292, 33.486149, 33.501480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954231, 33.262035, 33.415905>,  <33.942459, 32.888512, 33.273277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954231, 33.262035, 33.415905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072721, -0.357776, 0.930972,
		0.996918, -0.001465, -0.078436,
		0.029427, 0.933806, 0.356567,
		33.963058, 33.542179, 33.522877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544674, 32.912067, 33.693474>,  <33.942459, 32.888512, 33.273277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544674, 32.912067, 33.693474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288719, 33.193943, 33.816086>,  <34.135147, 33.363068, 33.889652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288719, 33.193943, 33.816086>,  <34.544674, 32.912067, 33.693474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288719, 33.193943, 33.816086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146765, -0.279477, 0.948869,
		0.754321, 0.652160, 0.075411,
		-0.639891, 0.704684, 0.306529,
		34.096752, 33.405350, 33.908043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029533, 33.295135, 34.074478>,  <34.544674, 32.912067, 33.693474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029533, 33.295135, 34.074478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415138, 33.246861, 34.169235>,  <35.646500, 33.217896, 34.226089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415138, 33.246861, 34.169235>,  <35.029533, 33.295135, 34.074478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415138, 33.246861, 34.169235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265591, 0.396372, -0.878835,
		0.012168, 0.910123, 0.414160,
		0.964009, -0.120691, 0.236897,
		35.704342, 33.210651, 34.240303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401871, 33.888947, 33.733150>,  <35.029533, 33.295135, 34.074478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401871, 33.888947, 33.733150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706867, 33.638332, 33.797718>,  <35.889866, 33.487965, 33.836460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706867, 33.638332, 33.797718>,  <35.401871, 33.888947, 33.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706867, 33.638332, 33.797718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483527, 0.386055, -0.785597,
		0.429888, 0.677063, 0.597312,
		0.762494, -0.626536, 0.161418,
		35.935616, 33.450371, 33.846142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935310, 34.263393, 33.561249>,  <35.401871, 33.888947, 33.733150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935310, 34.263393, 33.561249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070503, 33.887043, 33.552074>,  <36.151619, 33.661232, 33.546570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070503, 33.887043, 33.552074>,  <35.935310, 34.263393, 33.561249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070503, 33.887043, 33.552074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537577, 0.213003, -0.815868,
		0.772514, 0.263418, 0.577783,
		0.337984, -0.940872, -0.022940,
		36.171898, 33.604782, 33.545193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575920, 34.307995, 33.568050>,  <35.935310, 34.263393, 33.561249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575920, 34.307995, 33.568050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524731, 33.940029, 33.419796>,  <36.494015, 33.719250, 33.330845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524731, 33.940029, 33.419796>,  <36.575920, 34.307995, 33.568050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524731, 33.940029, 33.419796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548233, 0.245805, -0.799388,
		0.826476, -0.305498, 0.472873,
		-0.127977, -0.919919, -0.370636,
		36.486340, 33.664055, 33.308605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211136, 34.053776, 33.467194>,  <36.575920, 34.307995, 33.568050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211136, 34.053776, 33.467194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964710, 33.873440, 33.208828>,  <36.816856, 33.765236, 33.053806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964710, 33.873440, 33.208828>,  <37.211136, 34.053776, 33.467194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964710, 33.873440, 33.208828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512989, 0.392640, -0.763332,
		0.597755, -0.801609, -0.010614,
		-0.616061, -0.450841, -0.645919,
		36.779892, 33.738186, 33.015053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653526, 33.771893, 32.952896>,  <37.211136, 34.053776, 33.467194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653526, 33.771893, 32.952896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292610, 33.763161, 32.780663>,  <37.076061, 33.757923, 32.677322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292610, 33.763161, 32.780663>,  <37.653526, 33.771893, 32.952896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292610, 33.763161, 32.780663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403590, 0.308479, -0.861368,
		0.151628, -0.950981, -0.269527,
		-0.902288, -0.021829, -0.430581,
		37.021923, 33.756611, 32.651489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746574, 33.461720, 32.370438>,  <37.653526, 33.771893, 32.952896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746574, 33.461720, 32.370438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407310, 33.658024, 32.290661>,  <37.203751, 33.775806, 32.242794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407310, 33.658024, 32.290661>,  <37.746574, 33.461720, 32.370438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407310, 33.658024, 32.290661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379869, 0.301035, -0.874687,
		-0.369223, -0.817637, -0.441750,
		-0.848159, 0.490762, -0.199446,
		37.152863, 33.805252, 32.230827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675251, 33.325790, 31.686342>,  <37.746574, 33.461720, 32.370438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675251, 33.325790, 31.686342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397377, 33.612476, 31.710754>,  <37.230652, 33.784489, 31.725403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397377, 33.612476, 31.710754>,  <37.675251, 33.325790, 31.686342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397377, 33.612476, 31.710754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185263, 0.260261, -0.947598,
		-0.695046, -0.646976, -0.313581,
		-0.694687, 0.716719, 0.061032,
		37.188972, 33.827492, 31.729065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192863, 33.297871, 31.126524>,  <37.675251, 33.325790, 31.686342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192863, 33.297871, 31.126524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192501, 33.673859, 31.263023>,  <37.192284, 33.899452, 31.344923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192501, 33.673859, 31.263023>,  <37.192863, 33.297871, 31.126524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192501, 33.673859, 31.263023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111085, 0.339232, -0.934121,
		-0.993810, 0.037061, -0.104725,
		-0.000906, 0.939972, 0.341249,
		37.192230, 33.955849, 31.365398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885952, 33.722095, 30.564306>,  <37.192863, 33.297871, 31.126524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885952, 33.722095, 30.564306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003647, 34.016346, 30.808367>,  <37.074265, 34.192894, 30.954803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003647, 34.016346, 30.808367>,  <36.885952, 33.722095, 30.564306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003647, 34.016346, 30.808367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122598, 0.604087, -0.787432,
		-0.947838, 0.306491, 0.087557,
		0.294233, 0.735623, 0.610152,
		37.091915, 34.237034, 30.991413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426773, 34.344933, 30.527500>,  <36.885952, 33.722095, 30.564306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426773, 34.344933, 30.527500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798847, 34.447430, 30.632639>,  <37.022091, 34.508930, 30.695723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798847, 34.447430, 30.632639>,  <36.426773, 34.344933, 30.527500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798847, 34.447430, 30.632639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101692, 0.508137, -0.855252,
		-0.352716, 0.822275, 0.446604,
		0.930188, 0.256245, 0.262847,
		37.077904, 34.524303, 30.711493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526009, 35.018028, 30.260757>,  <36.426773, 34.344933, 30.527500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526009, 35.018028, 30.260757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898056, 34.934940, 30.381912>,  <37.121284, 34.885090, 30.454605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898056, 34.934940, 30.381912>,  <36.526009, 35.018028, 30.260757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898056, 34.934940, 30.381912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367076, 0.552542, -0.748299,
		-0.011923, 0.807187, 0.590176,
		0.930114, -0.207718, 0.302887,
		37.177090, 34.872623, 30.472778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949123, 35.630810, 30.218618>,  <36.526009, 35.018028, 30.260757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949123, 35.630810, 30.218618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202503, 35.324417, 30.174784>,  <37.354530, 35.140583, 30.148483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202503, 35.324417, 30.174784>,  <36.949123, 35.630810, 30.218618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202503, 35.324417, 30.174784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314459, 0.384241, -0.868029,
		0.707002, 0.515395, 0.484268,
		0.633453, -0.765981, -0.109589,
		37.392540, 35.094624, 30.141907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471256, 35.917061, 29.813093>,  <36.949123, 35.630810, 30.218618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471256, 35.917061, 29.813093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556145, 35.526451, 29.798277>,  <37.607079, 35.292088, 29.789387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556145, 35.526451, 29.798277>,  <37.471256, 35.917061, 29.813093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556145, 35.526451, 29.798277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424909, 0.126342, -0.896376,
		0.880008, 0.174491, 0.441745,
		0.212220, -0.976520, -0.037039,
		37.619812, 35.233494, 29.787165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165043, 35.902733, 29.539078>,  <37.471256, 35.917061, 29.813093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165043, 35.902733, 29.539078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983429, 35.552017, 29.475716>,  <37.874462, 35.341587, 29.437698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983429, 35.552017, 29.475716>,  <38.165043, 35.902733, 29.539078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983429, 35.552017, 29.475716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274531, 0.031466, -0.961063,
		0.847635, -0.479843, 0.226420,
		-0.454035, -0.876790, -0.158404,
		37.847218, 35.288979, 29.428194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656990, 35.458179, 29.225986>,  <38.165043, 35.902733, 29.539078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656990, 35.458179, 29.225986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290199, 35.320820, 29.144762>,  <38.070126, 35.238403, 29.096027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290199, 35.320820, 29.144762>,  <38.656990, 35.458179, 29.225986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290199, 35.320820, 29.144762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220866, -0.013106, -0.975216,
		0.332223, -0.939100, 0.087862,
		-0.916977, -0.343395, -0.203061,
		38.015106, 35.217800, 29.083843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838718, 34.958687, 28.656797>,  <38.656990, 35.458179, 29.225986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838718, 34.958687, 28.656797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442242, 35.009251, 28.640968>,  <38.204357, 35.039589, 28.631472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442242, 35.009251, 28.640968>,  <38.838718, 34.958687, 28.656797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442242, 35.009251, 28.640968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041404, 0.011902, -0.999072,
		-0.125827, -0.991906, -0.017031,
		-0.991188, 0.126415, -0.039571,
		38.144886, 35.047176, 28.629097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680107, 34.447899, 28.199524>,  <38.838718, 34.958687, 28.656797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680107, 34.447899, 28.199524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390659, 34.723885, 28.192245>,  <38.216991, 34.889477, 28.187878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390659, 34.723885, 28.192245>,  <38.680107, 34.447899, 28.199524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390659, 34.723885, 28.192245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093062, -0.123659, -0.987951,
		-0.683898, -0.713206, 0.153691,
		-0.723618, 0.689961, -0.018198,
		38.173573, 34.930874, 28.186787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270908, 34.216042, 27.615097>,  <38.680107, 34.447899, 28.199524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270908, 34.216042, 27.615097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122509, 34.583431, 27.669886>,  <38.033470, 34.803867, 27.702759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122509, 34.583431, 27.669886>,  <38.270908, 34.216042, 27.615097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122509, 34.583431, 27.669886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293994, 0.023741, -0.955513,
		-0.880867, -0.394763, 0.261218,
		-0.371000, 0.918476, 0.136970,
		38.011208, 34.858974, 27.710978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616856, 34.180210, 27.513575>,  <38.270908, 34.216042, 27.615097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616856, 34.180210, 27.513575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749897, 34.549572, 27.436945>,  <37.829723, 34.771191, 27.390968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749897, 34.549572, 27.436945>,  <37.616856, 34.180210, 27.513575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749897, 34.549572, 27.436945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330332, -0.076194, -0.940784,
		-0.883320, 0.376193, 0.279687,
		0.332605, 0.923403, -0.191573,
		37.849678, 34.826591, 27.379473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033569, 34.533260, 27.197733>,  <37.616856, 34.180210, 27.513575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033569, 34.533260, 27.197733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337597, 34.769600, 27.089518>,  <37.520012, 34.911404, 27.024590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337597, 34.769600, 27.089518>,  <37.033569, 34.533260, 27.197733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337597, 34.769600, 27.089518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467349, 0.207735, -0.859320,
		-0.451531, 0.779577, 0.434027,
		0.760069, 0.590852, -0.270536,
		37.565617, 34.946854, 27.008356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649113, 34.984138, 26.732183>,  <37.033569, 34.533260, 27.197733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649113, 34.984138, 26.732183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046978, 34.992966, 26.691853>,  <37.285698, 34.998260, 26.667654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046978, 34.992966, 26.691853>,  <36.649113, 34.984138, 26.732183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046978, 34.992966, 26.691853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102904, 0.136406, -0.985294,
		-0.007991, 0.990407, 0.137948,
		0.994659, 0.022069, -0.100827,
		37.345375, 34.999588, 26.661604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865372, 35.606647, 26.412786>,  <36.649113, 34.984138, 26.732183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865372, 35.606647, 26.412786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144161, 35.333969, 26.323784>,  <37.311436, 35.170361, 26.270382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144161, 35.333969, 26.323784>,  <36.865372, 35.606647, 26.412786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144161, 35.333969, 26.323784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139790, 0.175175, -0.974563,
		0.703336, 0.710352, 0.026798,
		0.696977, -0.681699, -0.222507,
		37.353252, 35.129459, 26.257032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313587, 35.836124, 25.794302>,  <36.865372, 35.606647, 26.412786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313587, 35.836124, 25.794302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410450, 35.448032, 25.795822>,  <37.468567, 35.215176, 25.796734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410450, 35.448032, 25.795822>,  <37.313587, 35.836124, 25.794302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410450, 35.448032, 25.795822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130329, 0.028646, -0.991057,
		0.961445, 0.240484, 0.133386,
		0.242154, -0.970230, 0.003801,
		37.483097, 35.156963, 25.796963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794849, 35.853607, 25.251699>,  <37.313587, 35.836124, 25.794302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794849, 35.853607, 25.251699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741734, 35.466766, 25.338488>,  <37.709866, 35.234661, 25.390560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741734, 35.466766, 25.338488>,  <37.794849, 35.853607, 25.251699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741734, 35.466766, 25.338488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388758, -0.252189, -0.886153,
		0.911720, -0.033324, 0.409458,
		-0.132791, -0.967104, 0.216971,
		37.701897, 35.176636, 25.403580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458340, 35.503529, 25.147669>,  <37.794849, 35.853607, 25.251699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458340, 35.503529, 25.147669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178795, 35.217743, 25.134197>,  <38.011066, 35.046272, 25.126114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178795, 35.217743, 25.134197>,  <38.458340, 35.503529, 25.147669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178795, 35.217743, 25.134197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445330, -0.397792, -0.802149,
		0.559709, -0.575589, 0.596174,
		-0.698861, -0.714464, -0.033679,
		37.969135, 35.003403, 25.124094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795643, 34.823490, 25.038050>,  <38.458340, 35.503529, 25.147669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795643, 34.823490, 25.038050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419140, 34.815300, 24.903219>,  <38.193237, 34.810387, 24.822321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419140, 34.815300, 24.903219>,  <38.795643, 34.823490, 25.038050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419140, 34.815300, 24.903219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321604, -0.358821, -0.876253,
		-0.103004, -0.933182, 0.344328,
		-0.941255, -0.020480, -0.337075,
		38.136765, 34.809155, 24.802097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756893, 34.153809, 24.660265>,  <38.795643, 34.823490, 25.038050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756893, 34.153809, 24.660265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443157, 34.369923, 24.538351>,  <38.254913, 34.499592, 24.465202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443157, 34.369923, 24.538351>,  <38.756893, 34.153809, 24.660265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443157, 34.369923, 24.538351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175354, -0.278180, -0.944387,
		-0.595026, -0.794169, 0.123447,
		-0.784344, 0.540287, -0.304785,
		38.207855, 34.532009, 24.446915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525707, 33.716705, 24.185688>,  <38.756893, 34.153809, 24.660265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525707, 33.716705, 24.185688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392006, 34.083782, 24.099794>,  <38.311787, 34.304028, 24.048258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392006, 34.083782, 24.099794>,  <38.525707, 33.716705, 24.185688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392006, 34.083782, 24.099794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160910, -0.168929, -0.972405,
		-0.928647, -0.359580, -0.091201,
		-0.334250, 0.917696, -0.214735,
		38.291729, 34.359093, 24.035374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023476, 33.654552, 23.634872>,  <38.525707, 33.716705, 24.185688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023476, 33.654552, 23.634872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156082, 34.031853, 23.627079>,  <38.235645, 34.258232, 23.622402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156082, 34.031853, 23.627079>,  <38.023476, 33.654552, 23.634872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156082, 34.031853, 23.627079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264367, -0.112699, -0.957815,
		-0.905654, 0.312378, -0.286725,
		0.331513, 0.943249, -0.019484,
		38.255535, 34.314827, 23.621233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822865, 33.933155, 22.996363>,  <38.023476, 33.654552, 23.634872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822865, 33.933155, 22.996363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121704, 34.179504, 23.096397>,  <38.301006, 34.327312, 23.156418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121704, 34.179504, 23.096397>,  <37.822865, 33.933155, 22.996363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121704, 34.179504, 23.096397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370903, -0.074027, -0.925716,
		-0.551611, 0.784360, -0.283735,
		0.747099, 0.615873, 0.250087,
		38.345833, 34.364265, 23.171423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856274, 34.338932, 22.374104>,  <37.822865, 33.933155, 22.996363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856274, 34.338932, 22.374104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185677, 34.364708, 22.599558>,  <38.383316, 34.380173, 22.734831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185677, 34.364708, 22.599558>,  <37.856274, 34.338932, 22.374104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185677, 34.364708, 22.599558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565961, -0.024835, -0.824058,
		-0.039108, 0.997612, -0.056924,
		0.823504, 0.064444, 0.563638,
		38.432728, 34.384041, 22.768650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345512, 34.809860, 22.059778>,  <37.856274, 34.338932, 22.374104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345512, 34.809860, 22.059778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607014, 34.611748, 22.288622>,  <38.763912, 34.492882, 22.425928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607014, 34.611748, 22.288622>,  <38.345512, 34.809860, 22.059778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607014, 34.611748, 22.288622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560403, -0.191157, -0.805859,
		0.508487, 0.847442, 0.152587,
		0.653751, -0.495278, 0.572110,
		38.803139, 34.463165, 22.460255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048630, 35.005608, 21.816956>,  <38.345512, 34.809860, 22.059778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048630, 35.005608, 21.816956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085777, 34.666752, 22.026232>,  <39.108067, 34.463440, 22.151798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085777, 34.666752, 22.026232>,  <39.048630, 35.005608, 21.816956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085777, 34.666752, 22.026232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469726, -0.426039, -0.773206,
		0.877914, 0.317561, 0.358360,
		0.092865, -0.847140, 0.523193,
		39.113636, 34.412609, 22.183189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784431, 34.830334, 21.733604>,  <39.048630, 35.005608, 21.816956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784431, 34.830334, 21.733604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572670, 34.496170, 21.792688>,  <39.445614, 34.295673, 21.828138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572670, 34.496170, 21.792688>,  <39.784431, 34.830334, 21.733604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572670, 34.496170, 21.792688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432966, -0.415787, -0.799788,
		0.729567, -0.359461, 0.581825,
		-0.529408, -0.835409, 0.147710,
		39.413849, 34.245548, 21.837002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296127, 34.320866, 21.774984>,  <39.784431, 34.830334, 21.733604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296127, 34.320866, 21.774984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961967, 34.115765, 21.695791>,  <39.761471, 33.992706, 21.648275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961967, 34.115765, 21.695791>,  <40.296127, 34.320866, 21.774984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961967, 34.115765, 21.695791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499249, -0.557195, -0.663539,
		0.229914, -0.653163, 0.721470,
		-0.835399, -0.512750, -0.197984,
		39.711349, 33.961941, 21.636396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506172, 33.709404, 21.761299>,  <40.296127, 34.320866, 21.774984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506172, 33.709404, 21.761299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156853, 33.689945, 21.567400>,  <39.947262, 33.678268, 21.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156853, 33.689945, 21.567400>,  <40.506172, 33.709404, 21.761299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156853, 33.689945, 21.567400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432112, -0.536888, -0.724590,
		-0.225004, -0.842250, 0.489886,
		-0.873300, -0.048650, -0.484748,
		39.894863, 33.675350, 21.421976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470066, 32.960590, 21.458347>,  <40.506172, 33.709404, 21.761299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470066, 32.960590, 21.458347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200569, 33.180466, 21.260798>,  <40.038872, 33.312389, 21.142267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200569, 33.180466, 21.260798>,  <40.470066, 32.960590, 21.458347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200569, 33.180466, 21.260798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389962, -0.303225, -0.869474,
		-0.627696, -0.778393, -0.010063,
		-0.673741, 0.549689, -0.493876,
		39.998447, 33.345371, 21.112635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744095, 32.776661, 20.837410>,  <40.470066, 32.960590, 21.458347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744095, 32.776661, 20.837410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126522, 32.733837, 20.946573>,  <41.355976, 32.708141, 21.012072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126522, 32.733837, 20.946573>,  <40.744095, 32.776661, 20.837410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126522, 32.733837, 20.946573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286440, -0.143024, 0.947363,
		-0.062388, -0.983912, -0.167406,
		0.956065, -0.107056, 0.272909,
		41.413342, 32.701721, 21.028446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728031, 32.220703, 21.285528>,  <40.744095, 32.776661, 20.837410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728031, 32.220703, 21.285528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080006, 32.387566, 21.376480>,  <41.291191, 32.487682, 21.431051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080006, 32.387566, 21.376480>,  <40.728031, 32.220703, 21.285528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080006, 32.387566, 21.376480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205564, -0.097188, 0.973806,
		0.428323, -0.903626, 0.000232,
		0.879933, 0.417151, 0.227381,
		41.343987, 32.512711, 21.444695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139519, 31.664902, 21.696243>,  <40.728031, 32.220703, 21.285528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139519, 31.664902, 21.696243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287144, 32.028858, 21.772020>,  <41.375721, 32.247231, 21.817488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287144, 32.028858, 21.772020>,  <41.139519, 31.664902, 21.696243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287144, 32.028858, 21.772020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169956, -0.134324, 0.976254,
		0.913731, -0.392500, 0.105067,
		0.369067, 0.909890, 0.189444,
		41.397865, 32.301826, 21.828854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554768, 31.584599, 22.232365>,  <41.139519, 31.664902, 21.696243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554768, 31.584599, 22.232365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517822, 31.982281, 22.254351>,  <41.495655, 32.220890, 22.267542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517822, 31.982281, 22.254351>,  <41.554768, 31.584599, 22.232365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517822, 31.982281, 22.254351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143432, -0.041343, 0.988796,
		0.985340, 0.099215, -0.138783,
		-0.092366, 0.994207, 0.054967,
		41.490112, 32.280544, 22.270842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060066, 31.830303, 22.713728>,  <41.554768, 31.584599, 22.232365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060066, 31.830303, 22.713728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771358, 32.107048, 22.706015>,  <41.598133, 32.273094, 22.701387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771358, 32.107048, 22.706015>,  <42.060066, 31.830303, 22.713728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771358, 32.107048, 22.706015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066137, 0.096674, 0.993116,
		0.688965, 0.715527, -0.115534,
		-0.721771, 0.691864, -0.019282,
		41.554829, 32.314606, 22.700230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297882, 32.325642, 23.104853>,  <42.060066, 31.830303, 22.713728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297882, 32.325642, 23.104853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908474, 32.416122, 23.091681>,  <41.674828, 32.470409, 23.083778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908474, 32.416122, 23.091681>,  <42.297882, 32.325642, 23.104853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908474, 32.416122, 23.091681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021544, 0.234205, 0.971949,
		0.227569, 0.945505, -0.232877,
		-0.973524, 0.226202, -0.032928,
		41.616417, 32.483982, 23.081802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180084, 32.962273, 23.371088>,  <42.297882, 32.325642, 23.104853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180084, 32.962273, 23.371088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820892, 32.790466, 23.409346>,  <41.605377, 32.687382, 23.432301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820892, 32.790466, 23.409346>,  <42.180084, 32.962273, 23.371088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820892, 32.790466, 23.409346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009953, 0.237131, 0.971427,
		-0.439920, 0.871372, -0.217215,
		-0.897982, -0.429512, 0.095646,
		41.551498, 32.661613, 23.438040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904850, 33.342049, 23.895658>,  <42.180084, 32.962273, 23.371088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904850, 33.342049, 23.895658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668888, 33.019855, 23.873003>,  <41.527309, 32.826542, 23.859409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668888, 33.019855, 23.873003>,  <41.904850, 33.342049, 23.895658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668888, 33.019855, 23.873003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169665, 0.055067, 0.983962,
		-0.789443, 0.590058, -0.169147,
		-0.589909, -0.805480, -0.056640,
		41.491917, 32.778210, 23.856010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271526, 33.515884, 24.108927>,  <41.904850, 33.342049, 23.895658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271526, 33.515884, 24.108927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277897, 33.117519, 24.144497>,  <41.281719, 32.878502, 24.165838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277897, 33.117519, 24.144497>,  <41.271526, 33.515884, 24.108927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277897, 33.117519, 24.144497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377268, 0.076379, 0.922949,
		-0.925967, -0.048244, -0.374510,
		0.015922, -0.995911, 0.088925,
		41.282673, 32.818745, 24.171175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662003, 33.366192, 24.369829>,  <41.271526, 33.515884, 24.108927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662003, 33.366192, 24.369829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865437, 33.031712, 24.451914>,  <40.987495, 32.831024, 24.501165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865437, 33.031712, 24.451914>,  <40.662003, 33.366192, 24.369829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865437, 33.031712, 24.451914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396068, -0.015582, 0.918089,
		-0.764509, -0.548202, -0.339117,
		0.508582, -0.836201, 0.205213,
		41.018013, 32.780853, 24.513477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165337, 32.917938, 24.626534>,  <40.662003, 33.366192, 24.369829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165337, 32.917938, 24.626534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521301, 32.788837, 24.755457>,  <40.734882, 32.711376, 24.832811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521301, 32.788837, 24.755457>,  <40.165337, 32.917938, 24.626534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521301, 32.788837, 24.755457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369759, -0.096713, 0.924081,
		-0.267082, -0.941528, -0.205409,
		0.889913, -0.322757, 0.322307,
		40.788277, 32.692009, 24.852150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996914, 32.442673, 25.115839>,  <40.165337, 32.917938, 24.626534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996914, 32.442673, 25.115839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382504, 32.497902, 25.206776>,  <40.613857, 32.531040, 25.261337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382504, 32.497902, 25.206776>,  <39.996914, 32.442673, 25.115839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382504, 32.497902, 25.206776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223210, -0.044907, 0.973735,
		0.144656, -0.989403, -0.012470,
		0.963977, 0.138073, 0.227341,
		40.671696, 32.539322, 25.274979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175274, 31.938639, 25.679541>,  <39.996914, 32.442673, 25.115839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175274, 31.938639, 25.679541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455883, 32.221676, 25.713409>,  <40.624249, 32.391499, 25.733730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455883, 32.221676, 25.713409>,  <40.175274, 31.938639, 25.679541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455883, 32.221676, 25.713409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178332, 0.059270, 0.982184,
		0.689969, -0.704128, 0.167767,
		0.701527, 0.707595, 0.084674,
		40.666340, 32.433956, 25.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634342, 31.677431, 26.095152>,  <40.175274, 31.938639, 25.679541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634342, 31.677431, 26.095152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679844, 32.073868, 26.122856>,  <40.707146, 32.311729, 26.139479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679844, 32.073868, 26.122856>,  <40.634342, 31.677431, 26.095152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679844, 32.073868, 26.122856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049191, -0.064010, 0.996736,
		0.992291, -0.116786, 0.041472,
		0.113751, 0.991092, 0.069261,
		40.713970, 32.371197, 26.143635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110832, 31.828260, 26.524519>,  <40.634342, 31.677431, 26.095152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110832, 31.828260, 26.524519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921864, 32.180538, 26.538321>,  <40.808483, 32.391907, 26.546602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921864, 32.180538, 26.538321>,  <41.110832, 31.828260, 26.524519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921864, 32.180538, 26.538321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072096, -0.000402, 0.997398,
		0.878417, 0.473684, -0.063304,
		-0.472425, 0.880695, 0.034504,
		40.780136, 32.444748, 26.548672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404018, 32.207958, 27.109722>,  <41.110832, 31.828260, 26.524519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404018, 32.207958, 27.109722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109333, 32.465778, 27.027939>,  <40.932522, 32.620472, 26.978868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109333, 32.465778, 27.027939>,  <41.404018, 32.207958, 27.109722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109333, 32.465778, 27.027939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076755, 0.380116, 0.921748,
		0.671834, 0.663372, -0.329510,
		-0.736714, 0.644554, -0.204458,
		40.888317, 32.659145, 26.966602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538761, 32.910656, 27.294109>,  <41.404018, 32.207958, 27.109722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538761, 32.910656, 27.294109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139675, 32.925205, 27.316889>,  <40.900223, 32.933933, 27.330557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139675, 32.925205, 27.316889>,  <41.538761, 32.910656, 27.294109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139675, 32.925205, 27.316889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067529, 0.566600, 0.821222,
		-0.002397, 0.823190, -0.567761,
		-0.997715, 0.036372, 0.056948,
		40.840363, 32.936115, 27.333973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403294, 33.555580, 27.559435>,  <41.538761, 32.910656, 27.294109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403294, 33.555580, 27.559435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074017, 33.335716, 27.616341>,  <40.876450, 33.203800, 27.650484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074017, 33.335716, 27.616341>,  <41.403294, 33.555580, 27.559435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074017, 33.335716, 27.616341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207353, 0.524305, 0.825899,
		-0.528550, 0.650372, -0.545575,
		-0.823189, -0.549655, 0.142265,
		40.827061, 33.170818, 27.659019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771824, 34.122482, 27.612158>,  <41.403294, 33.555580, 27.559435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771824, 34.122482, 27.612158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677959, 33.767475, 27.770775>,  <40.621639, 33.554470, 27.865944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677959, 33.767475, 27.770775>,  <40.771824, 34.122482, 27.612158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677959, 33.767475, 27.770775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496430, 0.460140, 0.736090,
		-0.835758, -0.024124, -0.548568,
		-0.234661, -0.887519, 0.396542,
		40.607563, 33.501221, 27.889738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134941, 34.319588, 28.016356>,  <40.771824, 34.122482, 27.612158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134941, 34.319588, 28.016356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235817, 33.965244, 28.172127>,  <40.296341, 33.752640, 28.265589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235817, 33.965244, 28.172127>,  <40.134941, 34.319588, 28.016356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235817, 33.965244, 28.172127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505636, 0.222494, 0.833564,
		-0.825066, -0.407123, -0.391812,
		0.252187, -0.885859, 0.389428,
		40.311474, 33.699486, 28.288956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537376, 34.105965, 28.490324>,  <40.134941, 34.319588, 28.016356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537376, 34.105965, 28.490324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839230, 33.863846, 28.591637>,  <40.020340, 33.718575, 28.652424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839230, 33.863846, 28.591637>,  <39.537376, 34.105965, 28.490324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839230, 33.863846, 28.591637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321631, -0.004778, 0.946853,
		-0.571917, -0.795985, -0.198288,
		0.754629, -0.605297, 0.253281,
		40.065617, 33.682259, 28.667622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264450, 33.499481, 28.778280>,  <39.537376, 34.105965, 28.490324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264450, 33.499481, 28.778280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634010, 33.530312, 28.928200>,  <39.855747, 33.548809, 29.018150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634010, 33.530312, 28.928200>,  <39.264450, 33.499481, 28.778280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634010, 33.530312, 28.928200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362105, -0.140451, 0.921495,
		0.123668, -0.987083, -0.101852,
		0.923898, 0.077078, 0.374797,
		39.911179, 33.553436, 29.040638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366478, 32.957497, 29.361790>,  <39.264450, 33.499481, 28.778280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366478, 32.957497, 29.361790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660698, 33.222679, 29.417587>,  <39.837231, 33.381790, 29.451067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660698, 33.222679, 29.417587>,  <39.366478, 32.957497, 29.361790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660698, 33.222679, 29.417587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095605, -0.102270, 0.990152,
		0.670695, -0.741638, -0.011842,
		0.735546, 0.662958, 0.139496,
		39.881363, 33.421566, 29.459436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790737, 32.727200, 29.966433>,  <39.366478, 32.957497, 29.361790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790737, 32.727200, 29.966433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864597, 33.118587, 29.929564>,  <39.908913, 33.353420, 29.907442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864597, 33.118587, 29.929564>,  <39.790737, 32.727200, 29.966433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864597, 33.118587, 29.929564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085631, 0.109447, 0.990297,
		0.979066, -0.174968, 0.103997,
		0.184652, 0.978472, -0.092173,
		39.919994, 33.412128, 29.901911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225620, 32.890797, 30.458372>,  <39.790737, 32.727200, 29.966433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225620, 32.890797, 30.458372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076744, 33.253910, 30.381014>,  <39.987419, 33.471779, 30.334599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076744, 33.253910, 30.381014>,  <40.225620, 32.890797, 30.458372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076744, 33.253910, 30.381014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025773, 0.198176, 0.979828,
		0.927799, 0.369665, -0.050362,
		-0.372188, 0.907785, -0.193395,
		39.965088, 33.526245, 30.322996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528168, 33.261993, 30.970806>,  <40.225620, 32.890797, 30.458372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528168, 33.261993, 30.970806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205143, 33.453724, 30.833349>,  <40.011326, 33.568760, 30.750875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205143, 33.453724, 30.833349>,  <40.528168, 33.261993, 30.970806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205143, 33.453724, 30.833349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241169, 0.263342, 0.934071,
		0.538215, 0.837199, -0.097068,
		-0.807565, 0.479321, -0.343641,
		39.962872, 33.597519, 30.730257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590103, 33.832478, 31.383772>,  <40.528168, 33.261993, 30.970806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590103, 33.832478, 31.383772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211277, 33.844822, 31.255953>,  <39.983982, 33.852226, 31.179262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211277, 33.844822, 31.255953>,  <40.590103, 33.832478, 31.383772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211277, 33.844822, 31.255953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318149, 0.042949, 0.947068,
		0.042949, 0.998601, -0.030858,
		-0.947068, 0.030858, -0.319548,
		39.927158, 33.854080, 31.160088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251690, 34.382263, 31.778469>,  <40.590103, 33.832478, 31.383772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251690, 34.382263, 31.778469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976303, 34.116882, 31.661276>,  <39.811069, 33.957653, 31.590960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976303, 34.116882, 31.661276>,  <40.251690, 34.382263, 31.778469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976303, 34.116882, 31.661276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382710, -0.010819, 0.923805,
		-0.616073, 0.748139, -0.246462,
		-0.688468, -0.663454, -0.292985,
		39.769764, 33.917847, 31.573380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696545, 34.546886, 32.150146>,  <40.251690, 34.382263, 31.778469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696545, 34.546886, 32.150146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607410, 34.175446, 32.031460>,  <39.553932, 33.952579, 31.960249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607410, 34.175446, 32.031460>,  <39.696545, 34.546886, 32.150146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607410, 34.175446, 32.031460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487055, -0.157607, 0.859033,
		-0.844466, 0.335937, -0.417161,
		-0.222834, -0.928605, -0.296714,
		39.540562, 33.896866, 31.942446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042526, 34.472309, 32.472717>,  <39.696545, 34.546886, 32.150146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042526, 34.472309, 32.472717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165504, 34.101658, 32.386147>,  <39.239292, 33.879269, 32.334202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165504, 34.101658, 32.386147>,  <39.042526, 34.472309, 32.472717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165504, 34.101658, 32.386147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325076, -0.316039, 0.891316,
		-0.894318, -0.203672, -0.398388,
		0.307442, -0.926626, -0.216431,
		39.257736, 33.823669, 32.321217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468781, 34.062855, 32.881363>,  <39.042526, 34.472309, 32.472717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468781, 34.062855, 32.881363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810009, 33.859814, 32.833031>,  <39.014748, 33.737988, 32.804031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810009, 33.859814, 32.833031>,  <38.468781, 34.062855, 32.881363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810009, 33.859814, 32.833031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159515, -0.474190, 0.865851,
		-0.496819, -0.719355, -0.485489,
		0.853069, -0.507614, -0.120838,
		39.065929, 33.707531, 32.796780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284378, 33.351852, 33.045284>,  <38.468781, 34.062855, 32.881363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284378, 33.351852, 33.045284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683125, 33.360096, 33.075840>,  <38.922371, 33.365040, 33.094173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683125, 33.360096, 33.075840>,  <38.284378, 33.351852, 33.045284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683125, 33.360096, 33.075840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059904, -0.434084, 0.898878,
		0.051678, -0.900637, -0.431489,
		0.996866, 0.020605, 0.076385,
		38.982185, 33.366276, 33.098755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406033, 32.694611, 33.311680>,  <38.284378, 33.351852, 33.045284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406033, 32.694611, 33.311680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737595, 32.905003, 33.387848>,  <38.936531, 33.031239, 33.433548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737595, 32.905003, 33.387848>,  <38.406033, 32.694611, 33.311680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737595, 32.905003, 33.387848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075562, -0.442573, 0.893543,
		0.554265, -0.726272, -0.406595,
		0.828903, 0.525983, 0.190425,
		38.986267, 33.062798, 33.444977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823502, 32.226517, 33.668728>,  <38.406033, 32.694611, 33.311680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823502, 32.226517, 33.668728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980766, 32.585468, 33.748867>,  <39.075127, 32.800838, 33.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980766, 32.585468, 33.748867>,  <38.823502, 32.226517, 33.668728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980766, 32.585468, 33.748867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176513, -0.287504, 0.941374,
		0.902367, -0.334748, -0.271434,
		0.393161, 0.897376, 0.200347,
		39.098713, 32.854683, 33.808971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523144, 32.079391, 33.991917>,  <38.823502, 32.226517, 33.668728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523144, 32.079391, 33.991917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383339, 32.437229, 34.103306>,  <39.299458, 32.651932, 34.170139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383339, 32.437229, 34.103306>,  <39.523144, 32.079391, 33.991917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383339, 32.437229, 34.103306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143742, -0.242506, 0.959442,
		0.925840, 0.375364, -0.043832,
		-0.349511, 0.894591, 0.278477,
		39.278484, 32.705605, 34.186848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931870, 32.264355, 34.493309>,  <39.523144, 32.079391, 33.991917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931870, 32.264355, 34.493309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653667, 32.543163, 34.563099>,  <39.486748, 32.710449, 34.604973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653667, 32.543163, 34.563099>,  <39.931870, 32.264355, 34.493309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653667, 32.543163, 34.563099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208837, -0.036241, 0.977279,
		0.687504, 0.716137, -0.120357,
		-0.695504, 0.697018, 0.174472,
		39.445015, 32.752270, 34.615440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201138, 32.773628, 34.943947>,  <39.931870, 32.264355, 34.493309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201138, 32.773628, 34.943947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804451, 32.805088, 34.984566>,  <39.566441, 32.823963, 35.008938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804451, 32.805088, 34.984566>,  <40.201138, 32.773628, 34.943947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804451, 32.805088, 34.984566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104129, 0.029485, 0.994127,
		0.075195, 0.996466, -0.037430,
		-0.991717, 0.078651, 0.101544,
		39.506935, 32.828682, 35.015030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150990, 33.205910, 35.546177>,  <40.201138, 32.773628, 34.943947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150990, 33.205910, 35.546177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787544, 33.041580, 35.516125>,  <39.569477, 32.942982, 35.498093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787544, 33.041580, 35.516125>,  <40.150990, 33.205910, 35.546177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787544, 33.041580, 35.516125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103717, 0.047706, 0.993462,
		-0.404550, 0.910467, -0.085955,
		-0.908615, -0.410820, -0.075131,
		39.514961, 32.918335, 35.493584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645786, 33.687622, 35.947433>,  <40.150990, 33.205910, 35.546177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645786, 33.687622, 35.947433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493710, 33.319450, 35.911091>,  <39.402462, 33.098545, 35.889286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493710, 33.319450, 35.911091>,  <39.645786, 33.687622, 35.947433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493710, 33.319450, 35.911091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011690, -0.103010, 0.994612,
		-0.924833, 0.377083, 0.049924,
		-0.380193, -0.920433, -0.090859,
		39.379650, 33.043320, 35.883835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945553, 33.664864, 36.332085>,  <39.645786, 33.687622, 35.947433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945553, 33.664864, 36.332085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093807, 33.297215, 36.278645>,  <39.182758, 33.076626, 36.246582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093807, 33.297215, 36.278645>,  <38.945553, 33.664864, 36.332085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093807, 33.297215, 36.278645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136317, -0.088457, 0.986708,
		-0.918721, -0.383919, 0.092506,
		0.370633, -0.919120, -0.133602,
		39.204998, 33.021477, 36.238564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649952, 33.201138, 36.775448>,  <38.945553, 33.664864, 36.332085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649952, 33.201138, 36.775448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992210, 33.014473, 36.685921>,  <39.197567, 32.902473, 36.632202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992210, 33.014473, 36.685921>,  <38.649952, 33.201138, 36.775448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992210, 33.014473, 36.685921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136246, -0.214104, 0.967262,
		-0.499308, -0.858128, -0.119616,
		0.855645, -0.466665, -0.223820,
		39.248905, 32.874474, 36.618774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561443, 32.564022, 37.205292>,  <38.649952, 33.201138, 36.775448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561443, 32.564022, 37.205292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951782, 32.576412, 37.118786>,  <39.185986, 32.583847, 37.066883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951782, 32.576412, 37.118786>,  <38.561443, 32.564022, 37.205292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951782, 32.576412, 37.118786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217745, -0.218712, 0.951185,
		-0.017832, -0.975298, -0.220175,
		0.975842, 0.030981, -0.216266,
		39.244534, 32.585705, 37.053905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870232, 31.895218, 37.331478>,  <38.561443, 32.564022, 37.205292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870232, 31.895218, 37.331478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159885, 32.168854, 37.366463>,  <39.333679, 32.333035, 37.387455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159885, 32.168854, 37.366463>,  <38.870232, 31.895218, 37.331478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159885, 32.168854, 37.366463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284816, -0.412138, 0.865461,
		0.628098, -0.601801, -0.493283,
		0.724136, 0.684089, 0.087460,
		39.377125, 32.374081, 37.392700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148727, 31.689669, 37.911320>,  <38.870232, 31.895218, 37.331478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148727, 31.689669, 37.911320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301830, 32.055870, 37.861767>,  <39.393692, 32.275593, 37.832035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301830, 32.055870, 37.861767>,  <39.148727, 31.689669, 37.911320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301830, 32.055870, 37.861767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436443, -0.060998, 0.897662,
		0.814256, -0.397658, -0.422913,
		0.382759, 0.915504, -0.123886,
		39.416656, 32.330521, 37.824600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874611, 31.600992, 38.166847>,  <39.148727, 31.689669, 37.911320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874611, 31.600992, 38.166847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779182, 31.988598, 38.192459>,  <39.721928, 32.221161, 38.207825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779182, 31.988598, 38.192459>,  <39.874611, 31.600992, 38.166847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779182, 31.988598, 38.192459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216460, -0.011212, 0.976227,
		0.946694, 0.246756, -0.207078,
		-0.238568, 0.969013, 0.064027,
		39.707611, 32.279301, 38.211666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268444, 31.815117, 38.809837>,  <39.874611, 31.600992, 38.166847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268444, 31.815117, 38.809837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058411, 32.147060, 38.734344>,  <39.932388, 32.346226, 38.689049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058411, 32.147060, 38.734344>,  <40.268444, 31.815117, 38.809837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058411, 32.147060, 38.734344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165120, 0.316891, 0.933978,
		0.834877, 0.459255, -0.303422,
		-0.525086, 0.829858, -0.188733,
		39.900887, 32.396019, 38.677723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706921, 32.336506, 38.877426>,  <40.268444, 31.815117, 38.809837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706921, 32.336506, 38.877426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346943, 32.500992, 38.935406>,  <40.130959, 32.599686, 38.970192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346943, 32.500992, 38.935406>,  <40.706921, 32.336506, 38.877426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346943, 32.500992, 38.935406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282614, 0.297002, 0.912096,
		0.332020, 0.861795, -0.383500,
		-0.899940, 0.411217, 0.144945,
		40.076962, 32.624355, 38.978889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888126, 33.025509, 39.159660>,  <40.706921, 32.336506, 38.877426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888126, 33.025509, 39.159660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511406, 32.932285, 39.256561>,  <40.285374, 32.876350, 39.314701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511406, 32.932285, 39.256561>,  <40.888126, 33.025509, 39.159660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511406, 32.932285, 39.256561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154775, 0.339087, 0.927936,
		-0.298413, 0.911428, -0.283281,
		-0.941804, -0.233063, 0.242254,
		40.228867, 32.862366, 39.329239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615139, 33.590294, 39.648975>,  <40.888126, 33.025509, 39.159660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615139, 33.590294, 39.648975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377113, 33.282875, 39.742985>,  <40.234299, 33.098423, 39.799393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377113, 33.282875, 39.742985>,  <40.615139, 33.590294, 39.648975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377113, 33.282875, 39.742985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014668, 0.282002, 0.959301,
		-0.803548, 0.574289, -0.156535,
		-0.595059, -0.768548, 0.235026,
		40.198597, 33.052311, 39.813492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113197, 33.883728, 39.976891>,  <40.615139, 33.590294, 39.648975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113197, 33.883728, 39.976891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140537, 33.506031, 40.105724>,  <40.156940, 33.279415, 40.183025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140537, 33.506031, 40.105724>,  <40.113197, 33.883728, 39.976891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140537, 33.506031, 40.105724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017506, 0.323930, 0.945919,
		-0.997508, -0.059016, 0.038671,
		0.068351, -0.944239, 0.322089,
		40.161041, 33.222759, 40.202351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803917, 33.974678, 40.614609>,  <40.113197, 33.883728, 39.976891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803917, 33.974678, 40.614609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988510, 33.620880, 40.642048>,  <40.099266, 33.408604, 40.658512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988510, 33.620880, 40.642048>,  <39.803917, 33.974678, 40.614609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988510, 33.620880, 40.642048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088035, 0.122597, 0.988544,
		-0.882769, -0.450160, 0.134443,
		0.461485, -0.884492, 0.068595,
		40.126957, 33.355534, 40.662624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512619, 33.636250, 41.168579>,  <39.803917, 33.974678, 40.614609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512619, 33.636250, 41.168579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878292, 33.476555, 41.140621>,  <40.097694, 33.380737, 41.123848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878292, 33.476555, 41.140621>,  <39.512619, 33.636250, 41.168579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878292, 33.476555, 41.140621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202541, 0.300621, 0.931989,
		-0.351078, -0.866160, 0.355684,
		0.914178, -0.399241, -0.069891,
		40.152546, 33.356781, 41.119656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543190, 33.148354, 41.732407>,  <39.512619, 33.636250, 41.168579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543190, 33.148354, 41.732407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913811, 33.236214, 41.610260>,  <40.136185, 33.288929, 41.536972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913811, 33.236214, 41.610260>,  <39.543190, 33.148354, 41.732407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913811, 33.236214, 41.610260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256131, 0.226121, 0.939823,
		0.275486, -0.949010, 0.153253,
		0.926556, 0.219655, -0.305364,
		40.191776, 33.302109, 41.518650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876011, 32.834949, 42.248966>,  <39.543190, 33.148354, 41.732407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876011, 32.834949, 42.248966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096786, 33.121918, 42.078941>,  <40.229252, 33.294098, 41.976929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096786, 33.121918, 42.078941>,  <39.876011, 32.834949, 42.248966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096786, 33.121918, 42.078941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323146, 0.285892, 0.902132,
		0.768726, -0.635278, -0.074035,
		0.551939, 0.717417, -0.425060,
		40.262367, 33.337143, 41.951424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553326, 32.725533, 42.573410>,  <39.876011, 32.834949, 42.248966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553326, 32.725533, 42.573410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533943, 33.105320, 42.449375>,  <40.522312, 33.333195, 42.374954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533943, 33.105320, 42.449375>,  <40.553326, 32.725533, 42.573410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533943, 33.105320, 42.449375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252528, 0.312012, 0.915903,
		0.966375, -0.033920, -0.254889,
		-0.048461, 0.949473, -0.310086,
		40.519405, 33.390163, 42.356350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007847, 33.034195, 43.018776>,  <40.553326, 32.725533, 42.573410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007847, 33.034195, 43.018776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859009, 33.367874, 42.855968>,  <40.769707, 33.568081, 42.758286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859009, 33.367874, 42.855968>,  <41.007847, 33.034195, 43.018776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859009, 33.367874, 42.855968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179666, 0.494943, 0.850148,
		0.910641, 0.243208, -0.334041,
		-0.372094, 0.834195, -0.407019,
		40.747379, 33.618134, 42.733864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424988, 33.548847, 43.187672>,  <41.007847, 33.034195, 43.018776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424988, 33.548847, 43.187672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072254, 33.731922, 43.142254>,  <40.860615, 33.841766, 43.115002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072254, 33.731922, 43.142254>,  <41.424988, 33.548847, 43.187672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072254, 33.731922, 43.142254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138799, 0.482044, 0.865083,
		0.450675, 0.747097, -0.488608,
		-0.881832, 0.457689, -0.113548,
		40.807705, 33.869228, 43.108189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456909, 34.351906, 43.289341>,  <41.424988, 33.548847, 43.187672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456909, 34.351906, 43.289341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071110, 34.270588, 43.356762>,  <40.839630, 34.221798, 43.397213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071110, 34.270588, 43.356762>,  <41.456909, 34.351906, 43.289341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071110, 34.270588, 43.356762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037807, 0.525378, 0.850028,
		-0.261361, 0.826225, -0.499042,
		-0.964501, -0.203297, 0.168551,
		40.781761, 34.209599, 43.407326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084869, 34.967403, 43.422665>,  <41.456909, 34.351906, 43.289341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084869, 34.967403, 43.422665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870651, 34.674934, 43.591698>,  <40.742123, 34.499451, 43.693119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870651, 34.674934, 43.591698>,  <41.084869, 34.967403, 43.422665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870651, 34.674934, 43.591698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083809, 0.451904, 0.888121,
		-0.840339, 0.511042, -0.180735,
		-0.535542, -0.731176, 0.422583,
		40.709988, 34.455582, 43.718472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581993, 35.342453, 43.796516>,  <41.084869, 34.967403, 43.422665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581993, 35.342453, 43.796516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633041, 34.973396, 43.942085>,  <40.663670, 34.751961, 44.029427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633041, 34.973396, 43.942085>,  <40.581993, 35.342453, 43.796516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633041, 34.973396, 43.942085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205215, 0.383547, 0.900432,
		-0.970360, -0.040234, 0.238290,
		0.127623, -0.922645, 0.363922,
		40.671329, 34.696602, 44.051262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146317, 35.415707, 44.418564>,  <40.581993, 35.342453, 43.796516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146317, 35.415707, 44.418564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475410, 35.188782, 44.432796>,  <40.672867, 35.052628, 44.441334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475410, 35.188782, 44.432796>,  <40.146317, 35.415707, 44.418564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475410, 35.188782, 44.432796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180303, 0.319814, 0.930167,
		-0.539072, -0.758866, 0.365410,
		0.822735, -0.567311, 0.035577,
		40.722233, 35.018589, 44.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245792, 34.847801, 44.959709>,  <40.146317, 35.415707, 44.418564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245792, 34.847801, 44.959709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577919, 35.046070, 44.857822>,  <40.777195, 35.165031, 44.796688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577919, 35.046070, 44.857822>,  <40.245792, 34.847801, 44.959709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577919, 35.046070, 44.857822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048441, 0.391144, 0.919054,
		0.555185, -0.775443, 0.300762,
		0.830315, 0.495676, -0.254720,
		40.827015, 35.194771, 44.781406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844963, 34.682392, 45.365288>,  <40.245792, 34.847801, 44.959709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844963, 34.682392, 45.365288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851791, 35.066364, 45.253403>,  <40.855888, 35.296749, 45.186272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851791, 35.066364, 45.253403>,  <40.844963, 34.682392, 45.365288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851791, 35.066364, 45.253403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096501, 0.280029, 0.955129,
		0.995187, 0.010691, 0.097414,
		0.017068, 0.959932, -0.279713,
		40.856911, 35.354343, 45.169487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305885, 34.340248, 44.896126>,  <40.844963, 34.682392, 45.365288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305885, 34.340248, 44.896126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918568, 34.337078, 44.995998>,  <40.686176, 34.335175, 45.055920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918568, 34.337078, 44.995998>,  <41.305885, 34.340248, 44.896126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918568, 34.337078, 44.995998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244161, -0.181227, -0.952650,
		0.052799, -0.983409, 0.173546,
		-0.968296, -0.007926, 0.249679,
		40.628078, 34.334702, 45.070904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100380, 33.756096, 44.543453>,  <41.305885, 34.340248, 44.896126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100380, 33.756096, 44.543453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821629, 34.033260, 44.617462>,  <40.654377, 34.199558, 44.661865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821629, 34.033260, 44.617462>,  <41.100380, 33.756096, 44.543453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821629, 34.033260, 44.617462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329233, -0.079890, -0.940863,
		-0.637155, -0.716581, 0.283804,
		-0.696878, 0.692913, 0.185020,
		40.612564, 34.241135, 44.672970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582066, 33.440796, 44.417576>,  <41.100380, 33.756096, 44.543453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582066, 33.440796, 44.417576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513561, 33.829800, 44.354469>,  <40.472458, 34.063202, 44.316605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513561, 33.829800, 44.354469>,  <40.582066, 33.440796, 44.417576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513561, 33.829800, 44.354469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278257, -0.201355, -0.939164,
		-0.945115, -0.116945, 0.305093,
		-0.171262, 0.972512, -0.157763,
		40.462181, 34.121552, 44.307140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876221, 33.559669, 44.062244>,  <40.582066, 33.440796, 44.417576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876221, 33.559669, 44.062244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139034, 33.844875, 43.964329>,  <40.296722, 34.015999, 43.905579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139034, 33.844875, 43.964329>,  <39.876221, 33.559669, 44.062244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139034, 33.844875, 43.964329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182577, -0.164539, -0.969326,
		-0.731417, 0.681574, 0.022071,
		0.657035, 0.713011, -0.244786,
		40.336143, 34.058777, 43.890892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535263, 33.877171, 43.440300>,  <39.876221, 33.559669, 44.062244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535263, 33.877171, 43.440300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917412, 33.995251, 43.435902>,  <40.146702, 34.066101, 43.433262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917412, 33.995251, 43.435902>,  <39.535263, 33.877171, 43.440300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917412, 33.995251, 43.435902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038561, -0.161538, -0.986113,
		-0.292880, 0.941680, -0.165712,
		0.955371, 0.295203, -0.010999,
		40.204021, 34.083813, 43.432602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672577, 34.468525, 42.983734>,  <39.535263, 33.877171, 43.440300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672577, 34.468525, 42.983734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020237, 34.273914, 43.019230>,  <40.228832, 34.157150, 43.040527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020237, 34.273914, 43.019230>,  <39.672577, 34.468525, 42.983734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020237, 34.273914, 43.019230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010735, -0.160840, -0.986922,
		0.494434, 0.858735, -0.134571,
		0.869149, -0.486524, 0.088743,
		40.280983, 34.127956, 43.045853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047794, 34.725605, 42.459476>,  <39.672577, 34.468525, 42.983734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047794, 34.725605, 42.459476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225578, 34.374088, 42.528973>,  <40.332249, 34.163177, 42.570671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225578, 34.374088, 42.528973>,  <40.047794, 34.725605, 42.459476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225578, 34.374088, 42.528973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113424, -0.247594, -0.962202,
		0.888590, 0.407953, -0.209721,
		0.444459, -0.878790, 0.173737,
		40.358917, 34.110451, 42.581093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394497, 34.610306, 41.853302>,  <40.047794, 34.725605, 42.459476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394497, 34.610306, 41.853302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420551, 34.252926, 42.031067>,  <40.436184, 34.038498, 42.137726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420551, 34.252926, 42.031067>,  <40.394497, 34.610306, 41.853302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420551, 34.252926, 42.031067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059411, -0.448038, -0.892038,
		0.996106, 0.031702, -0.082265,
		0.065138, -0.893452, 0.444410,
		40.440094, 33.984890, 42.164391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887512, 34.376316, 41.450954>,  <40.394497, 34.610306, 41.853302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887512, 34.376316, 41.450954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707939, 34.056755, 41.611061>,  <40.600197, 33.865017, 41.707123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707939, 34.056755, 41.611061>,  <40.887512, 34.376316, 41.450954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707939, 34.056755, 41.611061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068034, -0.416081, -0.906779,
		0.890972, -0.434315, 0.132440,
		-0.448933, -0.798904, 0.400265,
		40.573257, 33.817085, 41.731140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304447, 34.013157, 41.059246>,  <40.887512, 34.376316, 41.450954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304447, 34.013157, 41.059246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070377, 33.823479, 41.322369>,  <40.929935, 33.709671, 41.480240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070377, 33.823479, 41.322369>,  <41.304447, 34.013157, 41.059246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070377, 33.823479, 41.322369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434652, -0.501402, -0.748113,
		0.684578, -0.723693, 0.087298,
		-0.585176, -0.474198, 0.657804,
		40.894825, 33.681221, 41.519711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467808, 33.292004, 41.076172>,  <41.304447, 34.013157, 41.059246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467808, 33.292004, 41.076172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093845, 33.310467, 41.216923>,  <40.869469, 33.321545, 41.301373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093845, 33.310467, 41.216923>,  <41.467808, 33.292004, 41.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093845, 33.310467, 41.216923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329106, -0.483824, -0.810928,
		0.132817, -0.873947, 0.467521,
		-0.934906, 0.046159, 0.351881,
		40.813374, 33.324314, 41.322487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233192, 32.604099, 41.066177>,  <41.467808, 33.292004, 41.076172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233192, 32.604099, 41.066177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916584, 32.848473, 41.059837>,  <40.726620, 32.995094, 41.056034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916584, 32.848473, 41.059837>,  <41.233192, 32.604099, 41.066177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916584, 32.848473, 41.059837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326254, -0.444342, -0.834337,
		-0.516766, -0.655228, 0.551026,
		-0.791525, 0.610931, -0.015850,
		40.679127, 33.031754, 41.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653702, 32.176167, 40.880386>,  <41.233192, 32.604099, 41.066177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653702, 32.176167, 40.880386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507462, 32.540337, 40.802975>,  <40.419716, 32.758839, 40.756527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507462, 32.540337, 40.802975>,  <40.653702, 32.176167, 40.880386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507462, 32.540337, 40.802975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352477, -0.327863, -0.876508,
		-0.861449, -0.252240, 0.440773,
		-0.365604, 0.910429, -0.193528,
		40.397781, 32.813465, 40.744915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052872, 32.049046, 40.469894>,  <40.653702, 32.176167, 40.880386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052872, 32.049046, 40.469894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078949, 32.447613, 40.448368>,  <40.094597, 32.686752, 40.435452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078949, 32.447613, 40.448368>,  <40.052872, 32.049046, 40.469894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078949, 32.447613, 40.448368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520173, -0.012086, -0.853975,
		-0.851569, 0.083664, 0.517524,
		0.065192, 0.996421, -0.053812,
		40.098507, 32.746540, 40.432224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404972, 32.291771, 40.330120>,  <40.052872, 32.049046, 40.469894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404972, 32.291771, 40.330120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633392, 32.549763, 40.126984>,  <39.770447, 32.704556, 40.005100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633392, 32.549763, 40.126984>,  <39.404972, 32.291771, 40.330120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633392, 32.549763, 40.126984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573584, -0.129079, -0.808913,
		-0.587282, 0.753222, 0.296238,
		0.571053, 0.644977, -0.507842,
		39.804707, 32.743256, 39.974632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004730, 32.636616, 39.801327>,  <39.404972, 32.291771, 40.330120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004730, 32.636616, 39.801327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368740, 32.691521, 39.644859>,  <39.587147, 32.724464, 39.550980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368740, 32.691521, 39.644859>,  <39.004730, 32.636616, 39.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368740, 32.691521, 39.644859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374484, -0.132502, -0.917717,
		-0.177796, 0.981633, -0.069179,
		0.910028, 0.137260, -0.391164,
		39.641747, 32.732700, 39.527512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868370, 33.014675, 39.273472>,  <39.004730, 32.636616, 39.801327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868370, 33.014675, 39.273472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239517, 32.903450, 39.174080>,  <39.462204, 32.836716, 39.114445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239517, 32.903450, 39.174080>,  <38.868370, 33.014675, 39.273472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239517, 32.903450, 39.174080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282119, -0.087693, -0.955363,
		0.243862, 0.956551, -0.159814,
		0.927868, -0.278064, -0.248476,
		39.517879, 32.820030, 39.099537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923119, 33.305416, 38.628494>,  <38.868370, 33.014675, 39.273472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923119, 33.305416, 38.628494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240150, 33.061962, 38.613640>,  <39.430370, 32.915890, 38.604729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240150, 33.061962, 38.613640>,  <38.923119, 33.305416, 38.628494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240150, 33.061962, 38.613640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099668, -0.069229, -0.992610,
		0.601565, 0.790425, -0.115531,
		0.792582, -0.608634, -0.037134,
		39.477924, 32.879372, 38.602501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202187, 33.476517, 38.104862>,  <38.923119, 33.305416, 38.628494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202187, 33.476517, 38.104862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371098, 33.117115, 38.152805>,  <39.472443, 32.901474, 38.181572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371098, 33.117115, 38.152805>,  <39.202187, 33.476517, 38.104862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371098, 33.117115, 38.152805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073315, -0.097936, -0.992488,
		0.903497, 0.427892, 0.024518,
		0.422277, -0.898508, 0.119856,
		39.497780, 32.847561, 38.188763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860493, 33.471775, 37.726517>,  <39.202187, 33.476517, 38.104862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860493, 33.471775, 37.726517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744915, 33.089001, 37.737679>,  <39.675568, 32.859337, 37.744377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744915, 33.089001, 37.737679>,  <39.860493, 33.471775, 37.726517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744915, 33.089001, 37.737679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024722, -0.021682, -0.999459,
		0.957026, -0.289481, -0.017393,
		-0.288948, -0.956938, 0.027907,
		39.658230, 32.801918, 37.746052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395760, 33.160233, 37.455994>,  <39.860493, 33.471775, 37.726517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395760, 33.160233, 37.455994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084072, 32.910854, 37.430252>,  <39.897060, 32.761227, 37.414806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084072, 32.910854, 37.430252>,  <40.395760, 33.160233, 37.455994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084072, 32.910854, 37.430252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002922, 0.106289, -0.994331,
		0.626750, -0.774609, -0.084643,
		-0.779215, -0.623444, -0.064353,
		39.850307, 32.723820, 37.410946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515644, 32.847374, 36.793133>,  <40.395760, 33.160233, 37.455994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515644, 32.847374, 36.793133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136829, 32.736298, 36.857639>,  <39.909538, 32.669651, 36.896343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136829, 32.736298, 36.857639>,  <40.515644, 32.847374, 36.793133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136829, 32.736298, 36.857639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199028, 0.113486, -0.973401,
		0.252005, -0.953943, -0.162744,
		-0.947039, -0.277692, 0.161262,
		39.852718, 32.652988, 36.906017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420879, 32.435555, 36.324066>,  <40.515644, 32.847374, 36.793133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420879, 32.435555, 36.324066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059441, 32.570801, 36.429287>,  <39.842579, 32.651947, 36.492420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059441, 32.570801, 36.429287>,  <40.420879, 32.435555, 36.324066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059441, 32.570801, 36.429287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203262, 0.202144, -0.958030,
		-0.377097, -0.919140, -0.113931,
		-0.903594, 0.338113, 0.263054,
		39.788361, 32.672234, 36.508202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256851, 32.541435, 36.361710>,  <40.420879, 32.435555, 36.324066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256851, 32.541435, 36.361710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531197, 32.820229, 36.445435>,  <41.695805, 32.987503, 36.495670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531197, 32.820229, 36.445435>,  <41.256851, 32.541435, 36.361710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531197, 32.820229, 36.445435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079101, -0.214513, 0.973513,
		0.723420, -0.684252, -0.091994,
		0.685862, 0.696981, 0.209308,
		41.736954, 33.029324, 36.508228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747818, 32.280502, 36.906235>,  <41.256851, 32.541435, 36.361710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747818, 32.280502, 36.906235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735935, 32.679451, 36.932671>,  <41.728806, 32.918819, 36.948532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735935, 32.679451, 36.932671>,  <41.747818, 32.280502, 36.906235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735935, 32.679451, 36.932671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105733, -0.068879, 0.992006,
		0.993951, 0.022478, 0.107501,
		-0.029702, 0.997372, 0.066086,
		41.727024, 32.978664, 36.952496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376480, 32.527901, 37.242455>,  <41.747818, 32.280502, 36.906235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376480, 32.527901, 37.242455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015335, 32.686131, 37.309811>,  <41.798649, 32.781067, 37.350224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015335, 32.686131, 37.309811>,  <42.376480, 32.527901, 37.242455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015335, 32.686131, 37.309811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046605, -0.299315, 0.953016,
		0.427391, 0.868292, 0.251805,
		-0.902865, 0.395574, 0.168391,
		41.744476, 32.804802, 37.360329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180477, 32.595257, 37.329315>,  <42.376480, 32.527901, 37.242455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180477, 32.595257, 37.329315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297745, 32.814789, 37.016178>,  <43.368103, 32.946507, 36.828297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297745, 32.814789, 37.016178>,  <43.180477, 32.595257, 37.329315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297745, 32.814789, 37.016178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225058, 0.756192, 0.614429,
		0.929195, -0.356313, 0.098171,
		0.293165, 0.548830, -0.782841,
		43.385693, 32.979439, 36.781326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865021, 32.873417, 37.344978>,  <43.180477, 32.595257, 37.329315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865021, 32.873417, 37.344978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659512, 33.136955, 37.125179>,  <43.536205, 33.295078, 36.993301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659512, 33.136955, 37.125179>,  <43.865021, 32.873417, 37.344978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659512, 33.136955, 37.125179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132120, 0.693620, 0.708121,
		0.847689, 0.291217, -0.443414,
		-0.513778, 0.658851, -0.549498,
		43.505379, 33.334610, 36.960331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207928, 33.531330, 37.083229>,  <43.865021, 32.873417, 37.344978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207928, 33.531330, 37.083229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829529, 33.593842, 37.196838>,  <43.602489, 33.631348, 37.265003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829529, 33.593842, 37.196838>,  <44.207928, 33.531330, 37.083229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829529, 33.593842, 37.196838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312058, 0.676310, 0.667251,
		-0.087811, 0.719849, -0.688554,
		-0.945996, 0.156276, 0.284022,
		43.545731, 33.640724, 37.282043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938751, 34.131519, 37.210670>,  <44.207928, 33.531330, 37.083229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938751, 34.131519, 37.210670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329575, 34.064796, 37.157707>,  <44.564068, 34.024765, 37.125927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329575, 34.064796, 37.157707>,  <43.938751, 34.131519, 37.210670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329575, 34.064796, 37.157707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065142, 0.826012, -0.559875,
		0.202763, 0.538405, 0.817928,
		0.977059, -0.166804, -0.132412,
		44.622692, 34.014755, 37.117985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273479, 34.744354, 37.276157>,  <43.938751, 34.131519, 37.210670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273479, 34.744354, 37.276157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542812, 34.532829, 37.069477>,  <44.704414, 34.405914, 36.945469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542812, 34.532829, 37.069477>,  <44.273479, 34.744354, 37.276157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542812, 34.532829, 37.069477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186439, 0.797728, -0.573473,
		0.715444, 0.289807, 0.635729,
		0.673335, -0.528812, -0.516698,
		44.744812, 34.374187, 36.914467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008045, 35.084026, 37.292145>,  <44.273479, 34.744354, 37.276157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008045, 35.084026, 37.292145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920475, 34.876919, 36.961330>,  <44.867931, 34.752655, 36.762840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920475, 34.876919, 36.961330>,  <45.008045, 35.084026, 37.292145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920475, 34.876919, 36.961330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004899, 0.847004, -0.531564,
		0.975728, -0.120426, -0.182898,
		-0.218929, -0.517766, -0.827036,
		44.854797, 34.721588, 36.713219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896065, 35.797504, 37.320385>,  <45.008045, 35.084026, 37.292145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896065, 35.797504, 37.320385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530041, 35.952946, 37.277191>,  <44.310429, 36.046211, 37.251274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530041, 35.952946, 37.277191>,  <44.896065, 35.797504, 37.320385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530041, 35.952946, 37.277191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118233, 0.514433, 0.849341,
		0.385608, 0.764426, -0.516681,
		-0.915056, 0.388602, -0.107989,
		44.255524, 36.069527, 37.244793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770138, 36.591351, 37.040215>,  <44.896065, 35.797504, 37.320385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770138, 36.591351, 37.040215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069653, 36.391685, 37.214638>,  <45.249363, 36.271885, 37.319290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069653, 36.391685, 37.214638>,  <44.770138, 36.591351, 37.040215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069653, 36.391685, 37.214638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662591, 0.547020, -0.511607,
		0.016845, 0.672014, 0.740347,
		0.748792, -0.499165, 0.436056,
		45.294289, 36.241936, 37.345455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166759, 36.688614, 36.743851>,  <44.770138, 36.591351, 37.040215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166759, 36.688614, 36.743851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409168, 36.370575, 36.734402>,  <44.554611, 36.179752, 36.728733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409168, 36.370575, 36.734402>,  <44.166759, 36.688614, 36.743851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409168, 36.370575, 36.734402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351215, -0.240815, -0.904796,
		0.713716, 0.556618, -0.425189,
		0.606018, -0.795100, -0.023619,
		44.590973, 36.132046, 36.727314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516918, 36.715027, 36.109013>,  <44.166759, 36.688614, 36.743851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516918, 36.715027, 36.109013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460468, 36.347755, 36.257088>,  <44.426598, 36.127392, 36.345932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460468, 36.347755, 36.257088>,  <44.516918, 36.715027, 36.109013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460468, 36.347755, 36.257088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424892, -0.281562, -0.860343,
		0.894176, -0.278703, -0.350391,
		-0.141124, -0.918176, 0.370185,
		44.418133, 36.072304, 36.368145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026318, 36.161617, 35.786079>,  <44.516918, 36.715027, 36.109013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026318, 36.161617, 35.786079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220837, 35.903137, 36.021347>,  <44.337547, 35.748051, 36.162506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220837, 35.903137, 36.021347>,  <44.026318, 36.161617, 35.786079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220837, 35.903137, 36.021347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783215, 0.023917, -0.621290,
		0.387408, 0.762796, 0.517742,
		0.486301, -0.646196, 0.588168,
		44.366726, 35.709278, 36.197796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603863, 36.131908, 35.363171>,  <44.026318, 36.161617, 35.786079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603863, 36.131908, 35.363171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641193, 35.894745, 35.683105>,  <44.663593, 35.752445, 35.875069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641193, 35.894745, 35.683105>,  <44.603863, 36.131908, 35.363171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641193, 35.894745, 35.683105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906696, -0.281277, -0.314303,
		0.411331, 0.754546, 0.511339,
		0.093328, -0.592911, 0.799841,
		44.669193, 35.716873, 35.923058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249641, 36.508163, 35.415024>,  <44.603863, 36.131908, 35.363171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249641, 36.508163, 35.415024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109707, 36.134506, 35.443275>,  <45.025745, 35.910313, 35.460228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109707, 36.134506, 35.443275>,  <45.249641, 36.508163, 35.415024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109707, 36.134506, 35.443275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802756, -0.337783, -0.491412,
		0.482908, -0.115215, 0.868059,
		-0.349834, -0.934146, 0.070629,
		45.004757, 35.854263, 35.464462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793446, 36.009132, 35.723957>,  <45.249641, 36.508163, 35.415024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793446, 36.009132, 35.723957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536285, 35.813049, 35.488541>,  <45.381989, 35.695400, 35.347290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536285, 35.813049, 35.488541>,  <45.793446, 36.009132, 35.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536285, 35.813049, 35.488541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763336, -0.346593, -0.545152,
		0.063257, -0.799728, 0.597020,
		-0.642897, -0.490212, -0.588537,
		45.343418, 35.665985, 35.311981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877918, 35.222790, 35.559174>,  <45.793446, 36.009132, 35.723957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877918, 35.222790, 35.559174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775101, 35.449356, 35.245968>,  <45.713409, 35.585297, 35.058044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775101, 35.449356, 35.245968>,  <45.877918, 35.222790, 35.559174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775101, 35.449356, 35.245968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901803, -0.150672, -0.405030,
		-0.347392, -0.810231, -0.472064,
		-0.257041, 0.566413, -0.783011,
		45.697987, 35.619278, 35.011063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994503, 34.897198, 35.060627>,  <45.877918, 35.222790, 35.559174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994503, 34.897198, 35.060627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014626, 35.268894, 34.914215>,  <46.026699, 35.491913, 34.826370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014626, 35.268894, 34.914215>,  <45.994503, 34.897198, 35.060627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014626, 35.268894, 34.914215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824388, -0.245522, -0.510004,
		-0.563785, -0.276091, -0.778409,
		0.050309, 0.929243, -0.366027,
		46.029716, 35.547668, 34.804405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686176, 34.944992, 35.305244>,  <45.994503, 34.897198, 35.060627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686176, 34.944992, 35.305244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854137, 35.159866, 35.012638>,  <46.954914, 35.288792, 34.837074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854137, 35.159866, 35.012638>,  <46.686176, 34.944992, 35.305244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854137, 35.159866, 35.012638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744373, 0.257278, 0.616212,
		0.519225, -0.803266, -0.291839,
		0.419899, 0.537189, -0.731514,
		46.980106, 35.321022, 34.793182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360954, 34.802471, 35.255707>,  <46.686176, 34.944992, 35.305244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360954, 34.802471, 35.255707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401321, 35.169395, 35.101639>,  <47.425541, 35.389549, 35.009197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401321, 35.169395, 35.101639>,  <47.360954, 34.802471, 35.255707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401321, 35.169395, 35.101639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669995, 0.223541, 0.707909,
		0.735474, -0.329502, -0.592035,
		0.100914, 0.917310, -0.385174,
		47.431595, 35.444588, 34.986088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.150654, 29.631241, 26.908569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799133, 29.518049, 26.754877>,  <38.588223, 29.450134, 26.662663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799133, 29.518049, 26.754877>,  <39.150654, 29.631241, 26.908569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799133, 29.518049, 26.754877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434311, 0.140724, 0.889702,
		-0.197694, 0.948747, -0.246568,
		-0.878801, -0.282977, -0.384231,
		38.535492, 29.433157, 26.639608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666107, 30.058943, 27.177502>,  <39.150654, 29.631241, 26.908569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666107, 30.058943, 27.177502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.447758, 29.746494, 27.056261>,  <38.316746, 29.559025, 26.983517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.447758, 29.746494, 27.056261>,  <38.666107, 30.058943, 27.177502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447758, 29.746494, 27.056261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517328, 0.029651, 0.855274,
		-0.659083, 0.623678, -0.420280,
		-0.545877, -0.781119, -0.303103,
		38.283997, 29.512159, 26.965330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988731, 30.305727, 27.320465>,  <38.666107, 30.058943, 27.177502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988731, 30.305727, 27.320465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971035, 29.907295, 27.289814>,  <37.960419, 29.668236, 27.271423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971035, 29.907295, 27.289814>,  <37.988731, 30.305727, 27.320465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971035, 29.907295, 27.289814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699923, -0.023828, 0.713822,
		-0.712848, 0.085213, -0.696123,
		-0.044240, -0.996078, -0.076628,
		37.957764, 29.608471, 27.266825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273838, 30.181547, 27.423252>,  <37.988731, 30.305727, 27.320465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273838, 30.181547, 27.423252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471428, 29.846281, 27.515743>,  <37.589981, 29.645121, 27.571238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471428, 29.846281, 27.515743>,  <37.273838, 30.181547, 27.423252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471428, 29.846281, 27.515743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511688, -0.065224, 0.856692,
		-0.702968, -0.541502, -0.461099,
		0.493975, -0.838166, 0.231229,
		37.619621, 29.594831, 27.585112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717453, 29.719009, 27.375322>,  <37.273838, 30.181547, 27.423252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717453, 29.719009, 27.375322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.031662, 29.582968, 27.582123>,  <37.220188, 29.501343, 27.706203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.031662, 29.582968, 27.582123>,  <36.717453, 29.719009, 27.375322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031662, 29.582968, 27.582123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551355, -0.005267, 0.834254,
		-0.281010, -0.940373, -0.191655,
		0.785519, -0.340104, 0.517000,
		37.267319, 29.480936, 27.737223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489079, 29.222843, 27.887066>,  <36.717453, 29.719009, 27.375322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489079, 29.222843, 27.887066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842243, 29.327389, 28.043097>,  <37.054142, 29.390116, 28.136715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842243, 29.327389, 28.043097>,  <36.489079, 29.222843, 27.887066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842243, 29.327389, 28.043097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339188, -0.219452, 0.914764,
		0.324689, -0.939963, -0.105105,
		0.882909, 0.261364, 0.390078,
		37.107117, 29.405798, 28.160120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490803, 28.786932, 28.505522>,  <36.489079, 29.222843, 27.887066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490803, 28.786932, 28.505522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789288, 29.042982, 28.578623>,  <36.968380, 29.196613, 28.622484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789288, 29.042982, 28.578623>,  <36.490803, 28.786932, 28.505522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789288, 29.042982, 28.578623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211341, -0.032526, 0.976871,
		0.631266, -0.767580, 0.111014,
		0.746216, 0.640127, 0.182754,
		37.013153, 29.235020, 28.633450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943333, 28.412481, 28.957569>,  <36.490803, 28.786932, 28.505522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943333, 28.412481, 28.957569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.044975, 28.795532, 29.011801>,  <37.105961, 29.025362, 29.044340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.044975, 28.795532, 29.011801>,  <36.943333, 28.412481, 28.957569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044975, 28.795532, 29.011801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066085, -0.122662, 0.990246,
		0.964916, -0.260587, 0.032115,
		0.254106, 0.957626, 0.135580,
		37.121208, 29.082821, 29.052475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401707, 28.415422, 29.401987>,  <36.943333, 28.412481, 28.957569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401707, 28.415422, 29.401987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276901, 28.794786, 29.424507>,  <37.202019, 29.022404, 29.438019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276901, 28.794786, 29.424507>,  <37.401707, 28.415422, 29.401987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276901, 28.794786, 29.424507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196195, 0.006339, 0.980545,
		0.929599, 0.316990, -0.188050,
		-0.312015, 0.948408, 0.056299,
		37.183296, 29.079309, 29.441397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873528, 28.852749, 29.854046>,  <37.401707, 28.415422, 29.401987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873528, 28.852749, 29.854046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545620, 29.081577, 29.843321>,  <37.348877, 29.218874, 29.836885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545620, 29.081577, 29.843321>,  <37.873528, 28.852749, 29.854046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545620, 29.081577, 29.843321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203840, 0.335211, 0.919828,
		0.535195, 0.748578, -0.391405,
		-0.819766, 0.572071, -0.026813,
		37.299690, 29.253199, 29.835278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120037, 29.564430, 29.965548>,  <37.873528, 28.852749, 29.854046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120037, 29.564430, 29.965548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730770, 29.551483, 30.056679>,  <37.497211, 29.543715, 30.111357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730770, 29.551483, 30.056679>,  <38.120037, 29.564430, 29.965548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730770, 29.551483, 30.056679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207572, 0.303890, 0.929819,
		-0.099332, 0.952157, -0.289016,
		-0.973163, -0.032369, 0.227828,
		37.438820, 29.541773, 30.125027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056118, 30.115854, 30.390867>,  <38.120037, 29.564430, 29.965548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056118, 30.115854, 30.390867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.735569, 29.885155, 30.454309>,  <37.543240, 29.746735, 30.492374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.735569, 29.885155, 30.454309>,  <38.056118, 30.115854, 30.390867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735569, 29.885155, 30.454309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205965, -0.017118, 0.978410,
		-0.561582, 0.816742, 0.132508,
		-0.801376, -0.576749, 0.158607,
		37.495155, 29.712130, 30.501892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604027, 30.497070, 30.784960>,  <38.056118, 30.115854, 30.390867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604027, 30.497070, 30.784960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474510, 30.126068, 30.859684>,  <37.396801, 29.903467, 30.904518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474510, 30.126068, 30.859684>,  <37.604027, 30.497070, 30.784960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474510, 30.126068, 30.859684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071340, 0.172949, 0.982344,
		-0.943435, 0.331401, 0.010169,
		-0.323791, -0.927503, 0.186808,
		37.377373, 29.847816, 30.915726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087845, 30.491467, 31.447554>,  <37.604027, 30.497070, 30.784960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087845, 30.491467, 31.447554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195129, 30.110577, 31.389130>,  <37.259499, 29.882044, 31.354074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195129, 30.110577, 31.389130>,  <37.087845, 30.491467, 31.447554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195129, 30.110577, 31.389130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034831, -0.141932, 0.989263,
		-0.962730, -0.270419, -0.004901,
		0.268212, -0.952223, -0.146061,
		37.275593, 29.824909, 31.345312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645924, 30.080622, 31.845369>,  <37.087845, 30.491467, 31.447554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645924, 30.080622, 31.845369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.990162, 29.886993, 31.782055>,  <37.196705, 29.770817, 31.744066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.990162, 29.886993, 31.782055>,  <36.645924, 30.080622, 31.845369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990162, 29.886993, 31.782055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090810, -0.159962, 0.982937,
		-0.501132, -0.860283, -0.093703,
		0.860593, -0.484072, -0.158284,
		37.248341, 29.741772, 31.734570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586353, 29.466927, 32.272713>,  <36.645924, 30.080622, 31.845369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586353, 29.466927, 32.272713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978672, 29.486446, 32.197189>,  <37.214066, 29.498159, 32.151875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978672, 29.486446, 32.197189>,  <36.586353, 29.466927, 32.272713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978672, 29.486446, 32.197189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190116, -0.023735, 0.981475,
		0.043418, -0.998527, -0.032557,
		0.980801, 0.048803, -0.188805,
		37.272911, 29.501087, 32.140549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845894, 29.079632, 32.767338>,  <36.586353, 29.466927, 32.272713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845894, 29.079632, 32.767338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143223, 29.316126, 32.642178>,  <37.321621, 29.458023, 32.567081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143223, 29.316126, 32.642178>,  <36.845894, 29.079632, 32.767338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143223, 29.316126, 32.642178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240908, 0.199773, 0.949765,
		0.624045, -0.781365, 0.006062,
		0.743324, 0.591236, -0.312904,
		37.366219, 29.493496, 32.548306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376492, 28.938604, 33.173134>,  <36.845894, 29.079632, 32.767338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376492, 28.938604, 33.173134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468273, 29.304405, 33.039845>,  <37.523342, 29.523886, 32.959869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468273, 29.304405, 33.039845>,  <37.376492, 28.938604, 33.173134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468273, 29.304405, 33.039845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064580, 0.327298, 0.942712,
		0.971174, -0.237832, 0.016043,
		0.229458, 0.914501, -0.333223,
		37.537109, 29.578756, 32.939877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881500, 29.179556, 33.604061>,  <37.376492, 28.938604, 33.173134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881500, 29.179556, 33.604061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763783, 29.535227, 33.463917>,  <37.693153, 29.748631, 33.379829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763783, 29.535227, 33.463917>,  <37.881500, 29.179556, 33.604061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763783, 29.535227, 33.463917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183298, 0.412304, 0.892416,
		0.937972, 0.198413, -0.284324,
		-0.294295, 0.889178, -0.350361,
		37.675495, 29.801981, 33.358807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464935, 29.578840, 33.819702>,  <37.881500, 29.179556, 33.604061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464935, 29.578840, 33.819702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.145519, 29.813797, 33.767086>,  <37.953869, 29.954771, 33.735516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.145519, 29.813797, 33.767086>,  <38.464935, 29.578840, 33.819702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145519, 29.813797, 33.767086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195686, 0.459976, 0.866100,
		0.569245, 0.665877, -0.482254,
		-0.798541, 0.587393, -0.131536,
		37.905956, 29.990015, 33.727627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764065, 30.240236, 33.851471>,  <38.464935, 29.578840, 33.819702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764065, 30.240236, 33.851471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373322, 30.298672, 33.913967>,  <38.138878, 30.333733, 33.951466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373322, 30.298672, 33.913967>,  <38.764065, 30.240236, 33.851471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373322, 30.298672, 33.913967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212504, 0.579433, 0.786829,
		0.024414, 0.801820, -0.597067,
		-0.976855, 0.146089, 0.156244,
		38.080265, 30.342499, 33.960842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685703, 30.954935, 33.865814>,  <38.764065, 30.240236, 33.851471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685703, 30.954935, 33.865814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.375130, 30.796766, 34.062099>,  <38.188786, 30.701866, 34.179871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.375130, 30.796766, 34.062099>,  <38.685703, 30.954935, 33.865814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375130, 30.796766, 34.062099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139189, 0.651831, 0.745482,
		-0.614641, 0.647116, -0.451063,
		-0.776430, -0.395420, 0.490713,
		38.142200, 30.678141, 34.209312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095882, 30.752151, 34.372845>,  <38.685703, 30.954935, 33.865814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095882, 30.752151, 34.372845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455532, 30.727169, 34.546131>,  <39.671322, 30.712179, 34.650105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455532, 30.727169, 34.546131>,  <39.095882, 30.752151, 34.372845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455532, 30.727169, 34.546131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436716, 0.061708, -0.897481,
		0.029321, 0.996138, 0.082759,
		0.899122, -0.062457, 0.433220,
		39.725269, 30.708431, 34.676098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483589, 31.059286, 33.900288>,  <39.095882, 30.752151, 34.372845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483589, 31.059286, 33.900288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731697, 30.874859, 34.154114>,  <39.880562, 30.764202, 34.306412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731697, 30.874859, 34.154114>,  <39.483589, 31.059286, 33.900288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731697, 30.874859, 34.154114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608697, -0.227309, -0.760144,
		0.494722, 0.857756, 0.139658,
		0.620273, -0.461069, 0.634568,
		39.917778, 30.736538, 34.344482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053120, 31.471245, 33.872589>,  <39.483589, 31.059286, 33.900288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053120, 31.471245, 33.872589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147221, 31.095463, 33.972256>,  <40.203682, 30.869993, 34.032055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147221, 31.095463, 33.972256>,  <40.053120, 31.471245, 33.872589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147221, 31.095463, 33.972256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566912, -0.075597, -0.820302,
		0.789472, 0.334233, 0.514803,
		0.235255, -0.939454, 0.249163,
		40.217796, 30.813627, 34.047005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753845, 31.361597, 33.751442>,  <40.053120, 31.471245, 33.872589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753845, 31.361597, 33.751442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.582523, 31.000834, 33.729137>,  <40.479729, 30.784374, 33.715755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.582523, 31.000834, 33.729137>,  <40.753845, 31.361597, 33.751442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582523, 31.000834, 33.729137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424146, -0.146167, -0.893720,
		0.797905, -0.406438, 0.445147,
		-0.428307, -0.901911, -0.055762,
		40.454033, 30.730261, 33.712410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271240, 30.907833, 33.524639>,  <40.753845, 31.361597, 33.751442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271240, 30.907833, 33.524639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.952908, 30.675812, 33.455143>,  <40.761906, 30.536598, 33.413445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.952908, 30.675812, 33.455143>,  <41.271240, 30.907833, 33.524639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952908, 30.675812, 33.455143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428411, -0.336620, -0.838541,
		0.427917, -0.741770, 0.516395,
		-0.795834, -0.580055, -0.173737,
		40.714157, 30.501795, 33.403023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465202, 30.352428, 33.167076>,  <41.271240, 30.907833, 33.524639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465202, 30.352428, 33.167076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079277, 30.327465, 33.064915>,  <40.847721, 30.312487, 33.003616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079277, 30.327465, 33.064915>,  <41.465202, 30.352428, 33.167076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079277, 30.327465, 33.064915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253265, -0.481423, -0.839100,
		-0.070593, -0.874264, 0.480291,
		-0.964818, -0.062407, -0.255406,
		40.789833, 30.308743, 32.988293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369560, 29.734493, 32.733257>,  <41.465202, 30.352428, 33.167076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369560, 29.734493, 32.733257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044338, 29.952662, 32.651806>,  <40.849205, 30.083563, 32.602936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044338, 29.952662, 32.651806>,  <41.369560, 29.734493, 32.733257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044338, 29.952662, 32.651806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107637, -0.202905, -0.973264,
		-0.572156, -0.813232, 0.106265,
		-0.813051, 0.545421, -0.203627,
		40.800423, 30.116287, 32.590717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019623, 29.288738, 32.189198>,  <41.369560, 29.734493, 32.733257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019623, 29.288738, 32.189198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.850399, 29.650587, 32.168495>,  <40.748863, 29.867697, 32.156075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.850399, 29.650587, 32.168495>,  <41.019623, 29.288738, 32.189198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850399, 29.650587, 32.168495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049667, -0.080187, -0.995542,
		-0.904738, -0.418606, 0.078854,
		-0.423063, 0.904621, -0.051757,
		40.723480, 29.921974, 32.152969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495800, 29.213108, 31.751635>,  <41.019623, 29.288738, 32.189198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495800, 29.213108, 31.751635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.561581, 29.607403, 31.765932>,  <40.601048, 29.843979, 31.774511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.561581, 29.607403, 31.765932>,  <40.495800, 29.213108, 31.751635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561581, 29.607403, 31.765932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046446, 0.043935, -0.997954,
		-0.985291, 0.162454, 0.053009,
		0.164451, 0.985737, 0.035743,
		40.610916, 29.903124, 31.776655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972691, 29.492590, 31.268322>,  <40.495800, 29.213108, 31.751635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972691, 29.492590, 31.268322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.251019, 29.778673, 31.294600>,  <40.418015, 29.950323, 31.310366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.251019, 29.778673, 31.294600>,  <39.972691, 29.492590, 31.268322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251019, 29.778673, 31.294600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024566, 0.067713, -0.997402,
		-0.717799, 0.695624, 0.029546,
		0.695817, 0.715208, 0.065693,
		40.459763, 29.993237, 31.314308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756306, 30.038332, 30.861408>,  <39.972691, 29.492590, 31.268322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756306, 30.038332, 30.861408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.151062, 30.097794, 30.886528>,  <40.387917, 30.133471, 30.901600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.151062, 30.097794, 30.886528>,  <39.756306, 30.038332, 30.861408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151062, 30.097794, 30.886528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047806, 0.102360, -0.993598,
		-0.154128, 0.983578, 0.093912,
		0.986894, 0.148652, 0.062798,
		40.447128, 30.142389, 30.905367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818985, 30.503971, 30.388081>,  <39.756306, 30.038332, 30.861408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818985, 30.503971, 30.388081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195316, 30.385763, 30.454420>,  <40.421116, 30.314838, 30.494223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195316, 30.385763, 30.454420>,  <39.818985, 30.503971, 30.388081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195316, 30.385763, 30.454420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208436, 0.118774, -0.970797,
		0.267190, 0.947925, 0.173343,
		0.940832, -0.295518, 0.165847,
		40.477566, 30.297108, 30.504173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218941, 30.965139, 30.123850>,  <39.818985, 30.503971, 30.388081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218941, 30.965139, 30.123850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445335, 30.635651, 30.137371>,  <40.581173, 30.437958, 30.145485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445335, 30.635651, 30.137371>,  <40.218941, 30.965139, 30.123850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445335, 30.635651, 30.137371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084950, 0.017486, -0.996232,
		0.820026, 0.566725, 0.079871,
		0.565986, -0.823721, 0.033804,
		40.615131, 30.388535, 30.147512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897114, 31.159437, 29.742851>,  <40.218941, 30.965139, 30.123850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897114, 31.159437, 29.742851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.832310, 30.764746, 29.738541>,  <40.793427, 30.527931, 29.735954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.832310, 30.764746, 29.738541>,  <40.897114, 31.159437, 29.742851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832310, 30.764746, 29.738541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222677, -0.025915, -0.974548,
		0.961337, -0.160282, 0.223921,
		-0.162005, -0.986731, -0.010778,
		40.783707, 30.468727, 29.735308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385315, 30.910500, 29.272383>,  <40.897114, 31.159437, 29.742851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385315, 30.910500, 29.272383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.149731, 30.590284, 29.316685>,  <41.008381, 30.398155, 29.343266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.149731, 30.590284, 29.316685>,  <41.385315, 30.910500, 29.272383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149731, 30.590284, 29.316685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157061, -0.247814, -0.955992,
		0.792753, -0.545646, 0.271686,
		-0.588961, -0.800536, 0.110756,
		40.973042, 30.350124, 29.349911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809429, 30.319006, 28.952536>,  <41.385315, 30.910500, 29.272383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809429, 30.319006, 28.952536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433853, 30.181499, 28.946535>,  <41.208508, 30.098995, 28.942936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433853, 30.181499, 28.946535>,  <41.809429, 30.319006, 28.952536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433853, 30.181499, 28.946535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137136, -0.333873, -0.932589,
		0.315583, -0.877699, 0.360628,
		-0.938936, -0.343765, -0.014999,
		41.152172, 30.078371, 28.942036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882843, 29.637766, 28.665314>,  <41.809429, 30.319006, 28.952536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882843, 29.637766, 28.665314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.508675, 29.770763, 28.617260>,  <41.284172, 29.850561, 28.588427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.508675, 29.770763, 28.617260>,  <41.882843, 29.637766, 28.665314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508675, 29.770763, 28.617260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039581, -0.239187, -0.970167,
		-0.351310, -0.912270, 0.210580,
		-0.935422, 0.332495, -0.120137,
		41.228046, 29.870512, 28.581219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587227, 29.115126, 28.279007>,  <41.882843, 29.637766, 28.665314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587227, 29.115126, 28.279007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.345100, 29.430717, 28.236849>,  <41.199825, 29.620071, 28.211554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.345100, 29.430717, 28.236849>,  <41.587227, 29.115126, 28.279007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345100, 29.430717, 28.236849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108331, -0.212835, -0.971064,
		-0.788580, -0.576381, 0.214303,
		-0.605314, 0.788978, -0.105397,
		41.163506, 29.667410, 28.205229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.974514, 28.860584, 27.877392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998558, 29.253469, 27.806240>,  <41.012985, 29.489201, 27.763550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998558, 29.253469, 27.806240>,  <40.974514, 28.860584, 27.877392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998558, 29.253469, 27.806240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028056, -0.179792, -0.983305,
		-0.997797, 0.054118, -0.038365,
		0.060112, 0.982215, -0.177877,
		41.016590, 29.548134, 27.752876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526581, 28.895840, 27.428354>,  <40.974514, 28.860584, 27.877392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526581, 28.895840, 27.428354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717648, 29.245775, 27.396118>,  <40.832287, 29.455736, 27.376776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717648, 29.245775, 27.396118>,  <40.526581, 28.895840, 27.428354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717648, 29.245775, 27.396118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359880, 0.111160, -0.926353,
		-0.801449, 0.471491, 0.367934,
		0.477667, 0.874837, -0.080591,
		40.860947, 29.508226, 27.371941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134941, 29.328386, 27.050455>,  <40.526581, 28.895840, 27.428354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134941, 29.328386, 27.050455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.510406, 29.461151, 27.013060>,  <40.735687, 29.540810, 26.990622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.510406, 29.461151, 27.013060>,  <40.134941, 29.328386, 27.050455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510406, 29.461151, 27.013060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114465, 0.044168, -0.992445,
		-0.325273, 0.942276, 0.079451,
		0.938667, 0.331910, -0.093491,
		40.792007, 29.560724, 26.985012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014183, 29.839870, 26.590422>,  <40.134941, 29.328386, 27.050455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014183, 29.839870, 26.590422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409805, 29.784006, 26.571392>,  <40.647179, 29.750488, 26.559975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409805, 29.784006, 26.571392>,  <40.014183, 29.839870, 26.590422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409805, 29.784006, 26.571392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010832, 0.252853, -0.967444,
		0.147141, 0.957372, 0.248573,
		0.989056, -0.139658, -0.047575,
		40.706524, 29.742109, 26.557119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272114, 30.429607, 26.138456>,  <40.014183, 29.839870, 26.590422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272114, 30.429607, 26.138456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559776, 30.151836, 26.148142>,  <40.732372, 29.985174, 26.153954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559776, 30.151836, 26.148142>,  <40.272114, 30.429607, 26.138456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559776, 30.151836, 26.148142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153786, 0.125084, -0.980155,
		0.677616, 0.708609, 0.196748,
		0.719157, -0.694426, 0.024215,
		40.775524, 29.943508, 26.155407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848949, 30.667385, 25.661751>,  <40.272114, 30.429607, 26.138456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848949, 30.667385, 25.661751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841156, 30.270327, 25.709536>,  <40.836479, 30.032091, 25.738207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841156, 30.270327, 25.709536>,  <40.848949, 30.667385, 25.661751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841156, 30.270327, 25.709536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236543, -0.120669, -0.964099,
		0.971426, 0.009473, 0.237155,
		-0.019484, -0.992647, 0.119461,
		40.835312, 29.972532, 25.745375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445621, 30.462479, 25.446747>,  <40.848949, 30.667385, 25.661751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445621, 30.462479, 25.446747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.262028, 30.110683, 25.396414>,  <41.151871, 29.899607, 25.366215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.262028, 30.110683, 25.396414>,  <41.445621, 30.462479, 25.446747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262028, 30.110683, 25.396414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378824, -0.065625, -0.923139,
		0.803630, -0.471378, 0.363292,
		-0.458989, -0.879486, -0.125832,
		41.124332, 29.846838, 25.358664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810738, 30.037163, 24.990095>,  <41.445621, 30.462479, 25.446747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810738, 30.037163, 24.990095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.445435, 29.875345, 24.970873>,  <41.226254, 29.778255, 24.959339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.445435, 29.875345, 24.970873>,  <41.810738, 30.037163, 24.990095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445435, 29.875345, 24.970873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183028, -0.302044, -0.935559,
		0.363960, -0.863199, 0.349886,
		-0.913254, -0.404545, -0.048058,
		41.171459, 29.753983, 24.956455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916885, 29.289825, 24.824551>,  <41.810738, 30.037163, 24.990095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916885, 29.289825, 24.824551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.540108, 29.387678, 24.732550>,  <41.314041, 29.446390, 24.677349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.540108, 29.387678, 24.732550>,  <41.916885, 29.289825, 24.824551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540108, 29.387678, 24.732550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116930, -0.403134, -0.907640,
		-0.314760, -0.881838, 0.351124,
		-0.941941, 0.244632, -0.230004,
		41.257526, 29.461069, 24.663548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752033, 28.828739, 24.339674>,  <41.916885, 29.289825, 24.824551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752033, 28.828739, 24.339674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480701, 29.117460, 24.284714>,  <41.317902, 29.290693, 24.251738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480701, 29.117460, 24.284714>,  <41.752033, 28.828739, 24.339674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480701, 29.117460, 24.284714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084966, -0.262800, -0.961102,
		-0.729833, -0.640265, 0.239592,
		-0.678324, 0.721801, -0.137399,
		41.277203, 29.334002, 24.243494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277782, 28.570738, 23.753460>,  <41.752033, 28.828739, 24.339674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277782, 28.570738, 23.753460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.202744, 28.963593, 23.759333>,  <41.157719, 29.199305, 23.762856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.202744, 28.963593, 23.759333>,  <41.277782, 28.570738, 23.753460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202744, 28.963593, 23.759333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199162, -0.023397, -0.979687,
		-0.961843, -0.186710, 0.199994,
		-0.187597, 0.982136, 0.014681,
		41.146465, 29.258234, 23.763737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705803, 28.659897, 23.267193>,  <41.277782, 28.570738, 23.753460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705803, 28.659897, 23.267193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865982, 29.025517, 23.292971>,  <40.962090, 29.244888, 23.308437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865982, 29.025517, 23.292971>,  <40.705803, 28.659897, 23.267193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865982, 29.025517, 23.292971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195382, 0.153884, -0.968579,
		-0.895248, 0.375273, 0.240211,
		0.400446, 0.914051, 0.064443,
		40.986115, 29.299732, 23.312304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330166, 29.101101, 22.727428>,  <40.705803, 28.659897, 23.267193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330166, 29.101101, 22.727428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.652664, 29.316406, 22.825600>,  <40.846165, 29.445589, 22.884502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.652664, 29.316406, 22.825600>,  <40.330166, 29.101101, 22.727428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652664, 29.316406, 22.825600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094345, 0.526553, -0.844891,
		-0.584004, 0.658038, 0.475316,
		0.806250, 0.538263, 0.245426,
		40.894539, 29.477884, 22.899227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204010, 29.804674, 22.613407>,  <40.330166, 29.101101, 22.727428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204010, 29.804674, 22.613407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.603207, 29.784407, 22.598177>,  <40.842724, 29.772245, 22.589039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.603207, 29.784407, 22.598177>,  <40.204010, 29.804674, 22.613407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603207, 29.784407, 22.598177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017539, 0.356476, -0.934140,
		0.060905, 0.932930, 0.354870,
		0.997989, -0.050669, -0.038074,
		40.902603, 29.769205, 22.586756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502563, 30.546230, 22.408960>,  <40.204010, 29.804674, 22.613407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502563, 30.546230, 22.408960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.748737, 30.239326, 22.336800>,  <40.896442, 30.055183, 22.293503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.748737, 30.239326, 22.336800>,  <40.502563, 30.546230, 22.408960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748737, 30.239326, 22.336800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248917, 0.406370, -0.879149,
		0.747847, 0.496158, 0.441081,
		0.615439, -0.767262, -0.180401,
		40.933369, 30.009148, 22.282679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226513, 30.757217, 22.315594>,  <40.502563, 30.546230, 22.408960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226513, 30.757217, 22.315594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.190502, 30.421938, 22.100441>,  <41.168896, 30.220770, 21.971350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.190502, 30.421938, 22.100441>,  <41.226513, 30.757217, 22.315594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190502, 30.421938, 22.100441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234618, 0.507028, -0.829383,
		0.967910, -0.200861, 0.151012,
		-0.090023, -0.838199, -0.537884,
		41.163494, 30.170479, 21.939075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705544, 30.847479, 21.757072>,  <41.226513, 30.757217, 22.315594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705544, 30.847479, 21.757072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.464668, 30.554415, 21.630217>,  <41.320141, 30.378576, 21.554104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.464668, 30.554415, 21.630217>,  <41.705544, 30.847479, 21.757072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464668, 30.554415, 21.630217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030586, 0.418122, -0.907876,
		0.797766, -0.537014, -0.274199,
		-0.602191, -0.732659, -0.317138,
		41.284012, 30.334618, 21.535074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014088, 30.643183, 21.129791>,  <41.705544, 30.847479, 21.757072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014088, 30.643183, 21.129791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.635899, 30.517622, 21.095055>,  <41.408985, 30.442286, 21.074213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.635899, 30.517622, 21.095055>,  <42.014088, 30.643183, 21.129791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635899, 30.517622, 21.095055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047617, 0.397003, -0.916582,
		0.322190, -0.862472, -0.390304,
		-0.945477, -0.313898, -0.086842,
		41.352257, 30.423452, 21.069002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957146, 30.360775, 20.419315>,  <42.014088, 30.643183, 21.129791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957146, 30.360775, 20.419315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.579250, 30.418993, 20.536818>,  <41.352512, 30.453924, 20.607319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.579250, 30.418993, 20.536818>,  <41.957146, 30.360775, 20.419315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579250, 30.418993, 20.536818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210740, 0.416781, -0.884241,
		-0.251128, -0.897280, -0.363076,
		-0.944735, 0.145543, 0.293758,
		41.295830, 30.462656, 20.624945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501259, 30.143524, 19.932152>,  <41.957146, 30.360775, 20.419315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501259, 30.143524, 19.932152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.251476, 30.404572, 20.103798>,  <41.101608, 30.561201, 20.206785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.251476, 30.404572, 20.103798>,  <41.501259, 30.143524, 19.932152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251476, 30.404572, 20.103798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105468, 0.473914, -0.874232,
		-0.773905, -0.591179, -0.227109,
		-0.624458, 0.652620, 0.429115,
		41.064140, 30.600357, 20.232533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773911, 30.098755, 19.647432>,  <41.501259, 30.143524, 19.932152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773911, 30.098755, 19.647432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841526, 30.462576, 19.799295>,  <40.882095, 30.680868, 19.890413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841526, 30.462576, 19.799295>,  <40.773911, 30.098755, 19.647432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841526, 30.462576, 19.799295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257125, 0.412557, -0.873890,
		-0.951480, 0.050098, 0.303605,
		0.169034, 0.909553, 0.379659,
		40.892235, 30.735441, 19.913193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175404, 30.511847, 19.407444>,  <40.773911, 30.098755, 19.647432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175404, 30.511847, 19.407444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462563, 30.775362, 19.497438>,  <40.634857, 30.933472, 19.551435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462563, 30.775362, 19.497438>,  <40.175404, 30.511847, 19.407444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462563, 30.775362, 19.497438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038828, 0.360574, -0.931922,
		-0.695063, 0.660290, 0.284435,
		0.717899, 0.658789, 0.224985,
		40.677933, 30.973000, 19.564934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964638, 31.225080, 19.303122>,  <40.175404, 30.511847, 19.407444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964638, 31.225080, 19.303122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363499, 31.236393, 19.275162>,  <40.602814, 31.243181, 19.258387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363499, 31.236393, 19.275162>,  <39.964638, 31.225080, 19.303122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363499, 31.236393, 19.275162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073533, 0.570008, -0.818342,
		0.016699, 0.821152, 0.570465,
		0.997153, 0.028282, -0.069900,
		40.662643, 31.244877, 19.254192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489620, 30.854237, 19.631527>,  <39.964638, 31.225080, 19.303122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489620, 30.854237, 19.631527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.848488, 30.956446, 19.775633>,  <40.063808, 31.017771, 19.862097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.848488, 30.956446, 19.775633>,  <39.489620, 30.854237, 19.631527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848488, 30.956446, 19.775633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224413, 0.438823, -0.870100,
		-0.380422, 0.861477, 0.336357,
		0.897172, 0.255522, 0.360264,
		40.117638, 31.033102, 19.883713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200062, 30.209856, 19.322735>,  <39.489620, 30.854237, 19.631527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200062, 30.209856, 19.322735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417641, 29.880430, 19.258408>,  <39.548187, 29.682775, 19.219810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417641, 29.880430, 19.258408>,  <39.200062, 30.209856, 19.322735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417641, 29.880430, 19.258408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831716, 0.503753, 0.233413,
		-0.111217, -0.260722, 0.958986,
		0.543948, -0.823564, -0.160820,
		39.580826, 29.633362, 19.210161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701942, 29.944101, 18.913376>,  <39.200062, 30.209856, 19.322735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701942, 29.944101, 18.913376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433723, 29.655483, 18.982355>,  <38.272793, 29.482311, 19.023743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433723, 29.655483, 18.982355>,  <38.701942, 29.944101, 18.913376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433723, 29.655483, 18.982355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365656, 0.523702, 0.769436,
		-0.645496, 0.452886, -0.615004,
		-0.670546, -0.721547, 0.172447,
		38.232559, 29.439018, 19.034090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005466, 30.228567, 18.930367>,  <38.701942, 29.944101, 18.913376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005466, 30.228567, 18.930367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.038811, 29.900478, 19.156742>,  <38.058819, 29.703625, 19.292566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.038811, 29.900478, 19.156742>,  <38.005466, 30.228567, 18.930367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038811, 29.900478, 19.156742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263621, 0.529530, 0.806289,
		-0.961018, -0.216405, -0.172087,
		0.083359, -0.820223, 0.565937,
		38.063820, 29.654411, 19.326523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557949, 30.384489, 19.501925>,  <38.005466, 30.228567, 18.930367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557949, 30.384489, 19.501925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772045, 30.066082, 19.614975>,  <37.900501, 29.875038, 19.682804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772045, 30.066082, 19.614975>,  <37.557949, 30.384489, 19.501925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772045, 30.066082, 19.614975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141223, 0.245548, 0.959042,
		-0.832811, -0.553231, 0.019011,
		0.535240, -0.796016, 0.282624,
		37.932617, 29.827276, 19.699762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133820, 30.041512, 20.107084>,  <37.557949, 30.384489, 19.501925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133820, 30.041512, 20.107084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513092, 29.914448, 20.109720>,  <37.740654, 29.838209, 20.111301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513092, 29.914448, 20.109720>,  <37.133820, 30.041512, 20.107084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513092, 29.914448, 20.109720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025643, -0.055830, 0.998111,
		-0.316690, -0.946560, -0.061082,
		0.948182, -0.317658, 0.006592,
		37.797546, 29.819151, 20.111698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165554, 29.627113, 20.635683>,  <37.133820, 30.041512, 20.107084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165554, 29.627113, 20.635683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547974, 29.734049, 20.587507>,  <37.777424, 29.798210, 20.558601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547974, 29.734049, 20.587507>,  <37.165554, 29.627113, 20.635683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547974, 29.734049, 20.587507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100279, 0.087872, 0.991071,
		0.275536, -0.959588, 0.057201,
		0.956046, 0.267339, -0.120438,
		37.834789, 29.814251, 20.551376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483646, 29.176262, 21.092316>,  <37.165554, 29.627113, 20.635683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483646, 29.176262, 21.092316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740093, 29.475092, 21.022055>,  <37.893959, 29.654390, 20.979898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740093, 29.475092, 21.022055>,  <37.483646, 29.176262, 21.092316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740093, 29.475092, 21.022055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354317, -0.085107, 0.931244,
		0.680759, -0.659270, -0.319264,
		0.641113, 0.747074, -0.175654,
		37.932426, 29.699215, 20.969358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209175, 28.923508, 21.337551>,  <37.483646, 29.176262, 21.092316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209175, 28.923508, 21.337551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267097, 29.318470, 21.312050>,  <38.301849, 29.555447, 21.296749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267097, 29.318470, 21.312050>,  <38.209175, 28.923508, 21.337551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267097, 29.318470, 21.312050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360208, 0.007408, 0.932843,
		0.921565, -0.158042, -0.354598,
		0.144802, 0.987405, -0.063755,
		38.310539, 29.614691, 21.292923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770832, 29.100527, 21.754225>,  <38.209175, 28.923508, 21.337551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770832, 29.100527, 21.754225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625217, 29.470633, 21.711576>,  <38.537849, 29.692696, 21.685987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625217, 29.470633, 21.711576>,  <38.770832, 29.100527, 21.754225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625217, 29.470633, 21.711576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035209, 0.128064, 0.991141,
		0.930720, 0.357054, -0.079197,
		-0.364033, 0.925263, -0.106621,
		38.516006, 29.748211, 21.679590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282143, 29.591227, 22.040443>,  <38.770832, 29.100527, 21.754225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282143, 29.591227, 22.040443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911625, 29.738392, 22.073006>,  <38.689316, 29.826691, 22.092543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911625, 29.738392, 22.073006>,  <39.282143, 29.591227, 22.040443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911625, 29.738392, 22.073006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083070, -0.011345, 0.996479,
		0.367541, 0.929791, -0.020054,
		-0.926290, 0.367913, 0.081408,
		38.633739, 29.848766, 22.097427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276054, 29.925650, 22.697857>,  <39.282143, 29.591227, 22.040443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276054, 29.925650, 22.697857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879761, 29.921425, 22.643698>,  <38.641983, 29.918890, 22.611202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879761, 29.921425, 22.643698>,  <39.276054, 29.925650, 22.697857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879761, 29.921425, 22.643698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135040, -0.029384, 0.990404,
		-0.014441, 0.999512, 0.027685,
		-0.990735, -0.010564, -0.135399,
		38.582539, 29.918255, 22.603079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911572, 30.583302, 23.026163>,  <39.276054, 29.925650, 22.697857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911572, 30.583302, 23.026163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661270, 30.272497, 22.998787>,  <38.511089, 30.086014, 22.982361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661270, 30.272497, 22.998787>,  <38.911572, 30.583302, 23.026163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661270, 30.272497, 22.998787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024140, -0.068410, 0.997365,
		-0.779646, 0.625759, 0.024051,
		-0.625756, -0.777011, -0.068441,
		38.473545, 30.039394, 22.978254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567471, 30.555618, 23.638964>,  <38.911572, 30.583302, 23.026163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567471, 30.555618, 23.638964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.473305, 30.190977, 23.504169>,  <38.416805, 29.972193, 23.423292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.473305, 30.190977, 23.504169>,  <38.567471, 30.555618, 23.638964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473305, 30.190977, 23.504169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042390, -0.336771, 0.940632,
		-0.970971, 0.235720, 0.040637,
		-0.235411, -0.911604, -0.336987,
		38.402683, 29.917496, 23.403072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993683, 30.296591, 24.098782>,  <38.567471, 30.555618, 23.638964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993683, 30.296591, 24.098782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165302, 29.973064, 23.937914>,  <38.268272, 29.778950, 23.841393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165302, 29.973064, 23.937914>,  <37.993683, 30.296591, 24.098782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165302, 29.973064, 23.937914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002027, -0.446092, 0.894985,
		-0.903281, -0.383173, -0.193033,
		0.429045, -0.808814, -0.402170,
		38.294014, 29.730421, 23.817263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733406, 29.777277, 24.401598>,  <37.993683, 30.296591, 24.098782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733406, 29.777277, 24.401598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.059532, 29.578573, 24.282612>,  <38.255207, 29.459351, 24.211220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.059532, 29.578573, 24.282612>,  <37.733406, 29.777277, 24.401598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059532, 29.578573, 24.282612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050848, -0.450333, 0.891412,
		-0.576778, -0.741909, -0.341905,
		0.815317, -0.496762, -0.297466,
		38.304127, 29.429544, 24.193373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568218, 29.149693, 24.655722>,  <37.733406, 29.777277, 24.401598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568218, 29.149693, 24.655722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963272, 29.168095, 24.595779>,  <38.200306, 29.179136, 24.559814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963272, 29.168095, 24.595779>,  <37.568218, 29.149693, 24.655722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963272, 29.168095, 24.595779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156363, -0.357046, 0.920907,
		-0.011140, -0.932953, -0.359825,
		0.987637, 0.046005, -0.149857,
		38.259563, 29.181896, 24.550823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824528, 28.593712, 24.916327>,  <37.568218, 29.149693, 24.655722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824528, 28.593712, 24.916327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128300, 28.852501, 24.943714>,  <38.310562, 29.007774, 24.960148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128300, 28.852501, 24.943714>,  <37.824528, 28.593712, 24.916327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128300, 28.852501, 24.943714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115200, -0.237308, 0.964580,
		0.640305, -0.724646, -0.254751,
		0.759433, 0.646972, 0.068470,
		38.356129, 29.046593, 24.964254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293240, 28.271164, 25.471821>,  <37.824528, 28.593712, 24.916327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293240, 28.271164, 25.471821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.395695, 28.653723, 25.415689>,  <38.457169, 28.883259, 25.382011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.395695, 28.653723, 25.415689>,  <38.293240, 28.271164, 25.471821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395695, 28.653723, 25.415689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161735, 0.100720, 0.981681,
		0.953013, -0.274145, -0.128884,
		0.256141, 0.956399, -0.140327,
		38.472538, 28.940643, 25.373592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035267, 28.371983, 25.824333>,  <38.293240, 28.271164, 25.471821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035267, 28.371983, 25.824333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818287, 28.706705, 25.794661>,  <38.688099, 28.907537, 25.776857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818287, 28.706705, 25.794661>,  <39.035267, 28.371983, 25.824333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818287, 28.706705, 25.794661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114550, 0.161153, 0.980259,
		0.832240, 0.523247, -0.183274,
		-0.542453, 0.836805, -0.074180,
		38.655552, 28.957747, 25.772408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332916, 28.882980, 26.276388>,  <39.035267, 28.371983, 25.824333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332916, 28.882980, 26.276388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962605, 29.012672, 26.198605>,  <38.740417, 29.090487, 26.151936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962605, 29.012672, 26.198605>,  <39.332916, 28.882980, 26.276388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962605, 29.012672, 26.198605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187075, 0.054111, 0.980854,
		0.328543, 0.944430, 0.010560,
		-0.925777, 0.324228, -0.194457,
		38.684872, 29.109941, 26.140268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.707031, 29.953257, 30.570766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317608, 30.042196, 30.549780>,  <41.083954, 30.095560, 30.537188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317608, 30.042196, 30.549780>,  <41.707031, 29.953257, 30.570766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317608, 30.042196, 30.549780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018785, 0.306798, 0.951589,
		0.227682, 0.925438, -0.302861,
		-0.973554, 0.222349, -0.052469,
		41.025543, 30.108902, 30.534039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688019, 30.433105, 30.991686>,  <41.707031, 29.953257, 30.570766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688019, 30.433105, 30.991686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299667, 30.342567, 30.960276>,  <41.066658, 30.288244, 30.941429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299667, 30.342567, 30.960276>,  <41.688019, 30.433105, 30.991686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299667, 30.342567, 30.960276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131212, 0.228120, 0.964751,
		-0.200455, 0.946958, -0.251176,
		-0.970877, -0.226346, -0.078524,
		41.008404, 30.274664, 30.936718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436333, 30.864466, 31.529507>,  <41.688019, 30.433105, 30.991686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436333, 30.864466, 31.529507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135471, 30.608738, 31.465597>,  <40.954952, 30.455301, 31.427252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135471, 30.608738, 31.465597>,  <41.436333, 30.864466, 31.529507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135471, 30.608738, 31.465597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227575, 0.024461, 0.973453,
		-0.618441, 0.768550, -0.163893,
		-0.752157, -0.639321, -0.159775,
		40.909824, 30.416941, 31.417665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858604, 31.197454, 31.815758>,  <41.436333, 30.864466, 31.529507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858604, 31.197454, 31.815758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772732, 30.807962, 31.785387>,  <40.721207, 30.574268, 31.767164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772732, 30.807962, 31.785387>,  <40.858604, 31.197454, 31.815758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772732, 30.807962, 31.785387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281000, -0.012876, 0.959622,
		-0.935389, 0.227348, -0.270853,
		-0.214680, -0.973729, -0.075929,
		40.708328, 30.515844, 31.762608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189400, 31.118656, 32.021416>,  <40.858604, 31.197454, 31.815758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189400, 31.118656, 32.021416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.367283, 30.766766, 32.088726>,  <40.474014, 30.555632, 32.129112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.367283, 30.766766, 32.088726>,  <40.189400, 31.118656, 32.021416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367283, 30.766766, 32.088726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336438, 0.010043, 0.941652,
		-0.830084, -0.475377, -0.291507,
		0.444712, -0.879725, 0.168271,
		40.500698, 30.502848, 32.139206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710072, 30.714939, 32.293411>,  <40.189400, 31.118656, 32.021416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710072, 30.714939, 32.293411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055557, 30.545614, 32.402817>,  <40.262848, 30.444019, 32.468460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055557, 30.545614, 32.402817>,  <39.710072, 30.714939, 32.293411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055557, 30.545614, 32.402817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284440, 0.038577, 0.957917,
		-0.416049, -0.905162, -0.087088,
		0.863711, -0.423312, 0.273515,
		40.314671, 30.418621, 32.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551186, 30.166759, 32.714725>,  <39.710072, 30.714939, 32.293411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551186, 30.166759, 32.714725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933613, 30.248779, 32.798519>,  <40.163071, 30.297991, 32.848793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933613, 30.248779, 32.798519>,  <39.551186, 30.166759, 32.714725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933613, 30.248779, 32.798519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223175, 0.045840, 0.973700,
		0.190058, -0.977677, 0.089590,
		0.956071, 0.205053, 0.209481,
		40.220432, 30.310295, 32.861362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681549, 29.774609, 33.181171>,  <39.551186, 30.166759, 32.714725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681549, 29.774609, 33.181171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988285, 30.020445, 33.255177>,  <40.172329, 30.167946, 33.299580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988285, 30.020445, 33.255177>,  <39.681549, 29.774609, 33.181171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988285, 30.020445, 33.255177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176758, -0.074893, 0.981401,
		0.617016, -0.785283, 0.051202,
		0.766842, 0.614591, 0.185015,
		40.218338, 30.204823, 33.310680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975094, 29.536928, 33.792927>,  <39.681549, 29.774609, 33.181171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975094, 29.536928, 33.792927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.137970, 29.900471, 33.756763>,  <40.235695, 30.118597, 33.735065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.137970, 29.900471, 33.756763>,  <39.975094, 29.536928, 33.792927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137970, 29.900471, 33.756763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137274, 0.158760, 0.977728,
		0.902968, -0.385712, 0.189408,
		0.407192, 0.908857, -0.090408,
		40.260128, 30.173128, 33.729641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405254, 29.535414, 34.331268>,  <39.975094, 29.536928, 33.792927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405254, 29.535414, 34.331268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338287, 29.923437, 34.260887>,  <40.298107, 30.156252, 34.218658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338287, 29.923437, 34.260887>,  <40.405254, 29.535414, 34.331268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338287, 29.923437, 34.260887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159745, 0.149417, 0.975785,
		0.972858, 0.191473, 0.129947,
		-0.167420, 0.970058, -0.175948,
		40.288063, 30.214455, 34.208103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689800, 29.920433, 34.924171>,  <40.405254, 29.535414, 34.331268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689800, 29.920433, 34.924171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440437, 30.179152, 34.748440>,  <40.290817, 30.334383, 34.643002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440437, 30.179152, 34.748440>,  <40.689800, 29.920433, 34.924171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440437, 30.179152, 34.748440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302147, 0.318949, 0.898320,
		0.721155, 0.692765, -0.003409,
		-0.623412, 0.646799, -0.439328,
		40.253414, 30.373192, 34.616642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753151, 30.475801, 35.356308>,  <40.689800, 29.920433, 34.924171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753151, 30.475801, 35.356308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420887, 30.507391, 35.135849>,  <40.221527, 30.526344, 35.003574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420887, 30.507391, 35.135849>,  <40.753151, 30.475801, 35.356308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420887, 30.507391, 35.135849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506686, 0.303136, 0.807080,
		0.230811, 0.949669, -0.211789,
		-0.830660, 0.078972, -0.551152,
		40.171688, 30.531082, 34.970505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325676, 30.867975, 35.738136>,  <40.753151, 30.475801, 35.356308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325676, 30.867975, 35.738136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.073475, 30.679697, 35.491261>,  <39.922153, 30.566730, 35.343136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.073475, 30.679697, 35.491261>,  <40.325676, 30.867975, 35.738136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073475, 30.679697, 35.491261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727741, 0.081950, 0.680938,
		-0.269934, 0.878483, -0.394213,
		-0.630498, -0.470693, -0.617187,
		39.884327, 30.538488, 35.306103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656639, 31.248943, 35.583439>,  <40.325676, 30.867975, 35.738136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656639, 31.248943, 35.583439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588989, 30.854767, 35.576504>,  <39.548401, 30.618261, 35.572342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588989, 30.854767, 35.576504>,  <39.656639, 31.248943, 35.583439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588989, 30.854767, 35.576504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882398, 0.143554, 0.448070,
		-0.439058, 0.091082, -0.893830,
		-0.169124, -0.985442, -0.017342,
		39.538254, 30.559134, 35.571301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643036, 31.786394, 36.095589>,  <39.656639, 31.248943, 35.583439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643036, 31.786394, 36.095589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510880, 32.161854, 36.135151>,  <39.431583, 32.387131, 36.158886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510880, 32.161854, 36.135151>,  <39.643036, 31.786394, 36.095589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510880, 32.161854, 36.135151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334342, -0.018402, -0.942272,
		-0.882641, -0.344387, 0.319909,
		-0.330394, 0.938647, 0.098901,
		39.411762, 32.443447, 36.164822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008919, 31.776367, 35.689312>,  <39.643036, 31.786394, 36.095589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008919, 31.776367, 35.689312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.116577, 32.155876, 35.755512>,  <39.181171, 32.383583, 35.795231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.116577, 32.155876, 35.755512>,  <39.008919, 31.776367, 35.689312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116577, 32.155876, 35.755512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247279, 0.234153, -0.940226,
		-0.930813, 0.212135, 0.297633,
		0.269147, 0.948773, 0.165496,
		39.197323, 32.440510, 35.805161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419270, 32.228928, 35.470181>,  <39.008919, 31.776367, 35.689312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419270, 32.228928, 35.470181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753586, 32.448414, 35.477921>,  <38.954174, 32.580105, 35.482563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753586, 32.448414, 35.477921>,  <38.419270, 32.228928, 35.470181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753586, 32.448414, 35.477921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108484, 0.199581, -0.973858,
		-0.538231, 0.811838, 0.226334,
		0.835786, 0.548714, 0.019349,
		39.004322, 32.613029, 35.483727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234142, 32.970165, 35.255230>,  <38.419270, 32.228928, 35.470181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234142, 32.970165, 35.255230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619255, 32.900314, 35.172707>,  <38.850323, 32.858402, 35.123192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619255, 32.900314, 35.172707>,  <38.234142, 32.970165, 35.255230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619255, 32.900314, 35.172707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172206, 0.192032, -0.966162,
		0.208338, 0.965727, 0.154812,
		0.962777, -0.174628, -0.206312,
		38.908089, 32.847927, 35.110813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528728, 33.583046, 34.892559>,  <38.234142, 32.970165, 35.255230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528728, 33.583046, 34.892559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.825527, 33.329227, 34.806030>,  <39.003605, 33.176937, 34.754112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.825527, 33.329227, 34.806030>,  <38.528728, 33.583046, 34.892559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825527, 33.329227, 34.806030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042751, 0.366801, -0.929317,
		0.669043, 0.680299, 0.299291,
		0.741993, -0.634548, -0.216322,
		39.048126, 33.138863, 34.741135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944508, 33.997864, 34.528770>,  <38.528728, 33.583046, 34.892559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944508, 33.997864, 34.528770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024647, 33.615334, 34.443630>,  <39.072731, 33.385815, 34.392548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024647, 33.615334, 34.443630>,  <38.944508, 33.997864, 34.528770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024647, 33.615334, 34.443630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026076, 0.222382, -0.974611,
		0.979378, 0.189712, 0.069491,
		0.200349, -0.956324, -0.212849,
		39.084751, 33.328438, 34.379776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583569, 34.021202, 34.168835>,  <38.944508, 33.997864, 34.528770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583569, 34.021202, 34.168835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.424854, 33.670341, 34.060635>,  <39.329624, 33.459827, 33.995716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.424854, 33.670341, 34.060635>,  <39.583569, 34.021202, 34.168835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424854, 33.670341, 34.060635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153051, 0.227344, -0.961712,
		0.905061, -0.422994, 0.044041,
		-0.396786, -0.877149, -0.270500,
		39.305817, 33.407196, 33.979485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093433, 33.796391, 33.716949>,  <39.583569, 34.021202, 34.168835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093433, 33.796391, 33.716949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.747124, 33.612946, 33.636845>,  <39.539337, 33.502880, 33.588783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.747124, 33.612946, 33.636845>,  <40.093433, 33.796391, 33.716949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747124, 33.612946, 33.636845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169560, 0.107673, -0.979620,
		0.470828, -0.882090, -0.015459,
		-0.865777, -0.458611, -0.200263,
		39.487389, 33.475361, 33.576767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259354, 33.325600, 33.191830>,  <40.093433, 33.796391, 33.716949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259354, 33.325600, 33.191830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.862198, 33.368374, 33.170937>,  <39.623905, 33.394039, 33.158401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.862198, 33.368374, 33.170937>,  <40.259354, 33.325600, 33.191830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862198, 33.368374, 33.170937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068183, 0.151425, -0.986114,
		-0.097542, -0.982667, -0.157640,
		-0.992893, 0.106935, -0.052231,
		39.564331, 33.400455, 33.155266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099812, 32.947636, 32.636311>,  <40.259354, 33.325600, 33.191830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099812, 32.947636, 32.636311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769318, 33.168209, 32.682377>,  <39.571022, 33.300552, 32.710018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769318, 33.168209, 32.682377>,  <40.099812, 32.947636, 32.636311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769318, 33.168209, 32.682377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002371, 0.201034, -0.979581,
		-0.563327, -0.809633, -0.164793,
		-0.826231, 0.551433, 0.115168,
		39.521450, 33.333637, 32.716927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690456, 32.629314, 32.078651>,  <40.099812, 32.947636, 32.636311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690456, 32.629314, 32.078651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551552, 32.998436, 32.145393>,  <39.468208, 33.219910, 32.185436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551552, 32.998436, 32.145393>,  <39.690456, 32.629314, 32.078651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551552, 32.998436, 32.145393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146223, 0.229030, -0.962374,
		-0.926300, -0.309793, -0.214468,
		-0.347257, 0.922807, 0.166851,
		39.447376, 33.275280, 32.195450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071606, 32.745087, 31.602228>,  <39.690456, 32.629314, 32.078651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071606, 32.745087, 31.602228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.230442, 33.094154, 31.715906>,  <39.325745, 33.303596, 31.784113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.230442, 33.094154, 31.715906>,  <39.071606, 32.745087, 31.602228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230442, 33.094154, 31.715906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155482, 0.241213, -0.957936,
		-0.904512, 0.424577, -0.039900,
		0.397094, 0.872668, 0.284195,
		39.349571, 33.355953, 31.801165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740910, 33.212448, 31.205088>,  <39.071606, 32.745087, 31.602228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740910, 33.212448, 31.205088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060612, 33.422443, 31.322107>,  <39.252434, 33.548439, 31.392319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060612, 33.422443, 31.322107>,  <38.740910, 33.212448, 31.205088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060612, 33.422443, 31.322107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140147, 0.310550, -0.940169,
		-0.584427, 0.792432, 0.174633,
		0.799252, 0.524986, 0.292551,
		39.300388, 33.579941, 31.409872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700775, 33.778339, 30.759596>,  <38.740910, 33.212448, 31.205088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700775, 33.778339, 30.759596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082817, 33.772999, 30.877985>,  <39.312042, 33.769794, 30.949018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082817, 33.772999, 30.877985>,  <38.700775, 33.778339, 30.759596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082817, 33.772999, 30.877985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283505, 0.331317, -0.899919,
		-0.086045, 0.943425, 0.320228,
		0.955103, -0.013353, 0.295973,
		39.369347, 33.768993, 30.966778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389668, 34.425453, 30.806963>,  <38.700775, 33.778339, 30.759596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389668, 34.425453, 30.806963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.036163, 34.584526, 30.708326>,  <37.824059, 34.679970, 30.649143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.036163, 34.584526, 30.708326>,  <38.389668, 34.425453, 30.806963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036163, 34.584526, 30.708326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339151, -0.181301, 0.923096,
		0.322394, 0.899432, 0.295102,
		-0.883764, 0.397684, -0.246593,
		37.771034, 34.703831, 30.634348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146889, 35.045200, 31.277119>,  <38.389668, 34.425453, 30.806963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146889, 35.045200, 31.277119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.834518, 34.863251, 31.105886>,  <37.647099, 34.754082, 31.003147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.834518, 34.863251, 31.105886>,  <38.146889, 35.045200, 31.277119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834518, 34.863251, 31.105886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333239, -0.276263, 0.901460,
		-0.528312, 0.846623, 0.064159,
		-0.780922, -0.454872, -0.428081,
		37.600243, 34.726788, 30.977463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701538, 35.077694, 31.733942>,  <38.146889, 35.045200, 31.277119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701538, 35.077694, 31.733942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493645, 34.820808, 31.508575>,  <37.368908, 34.666676, 31.373356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493645, 34.820808, 31.508575>,  <37.701538, 35.077694, 31.733942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493645, 34.820808, 31.508575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371111, -0.424300, 0.825982,
		-0.769513, 0.638383, -0.017808,
		-0.519737, -0.642212, -0.563415,
		37.337723, 34.628143, 31.339550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948654, 35.114758, 31.907894>,  <37.701538, 35.077694, 31.733942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948654, 35.114758, 31.907894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.033371, 34.761890, 31.739647>,  <37.084202, 34.550171, 31.638699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.033371, 34.761890, 31.739647>,  <36.948654, 35.114758, 31.907894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033371, 34.761890, 31.739647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477510, -0.468922, 0.743033,
		-0.852718, 0.043479, -0.520559,
		0.211795, -0.882169, -0.420620,
		37.096909, 34.497238, 31.613461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345695, 34.869640, 31.662586>,  <36.948654, 35.114758, 31.907894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345695, 34.869640, 31.662586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599831, 34.564072, 31.707806>,  <36.752312, 34.380730, 31.734938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599831, 34.564072, 31.707806>,  <36.345695, 34.869640, 31.662586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599831, 34.564072, 31.707806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561426, -0.356403, 0.746845,
		-0.530238, -0.537964, -0.655319,
		0.635333, -0.763919, 0.113049,
		36.790432, 34.334896, 31.741720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031712, 34.408833, 32.077427>,  <36.345695, 34.869640, 31.662586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031712, 34.408833, 32.077427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.370003, 34.195679, 32.088600>,  <36.572979, 34.067787, 32.095303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.370003, 34.195679, 32.088600>,  <36.031712, 34.408833, 32.077427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370003, 34.195679, 32.088600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376761, -0.559239, 0.738446,
		-0.377884, -0.635049, -0.673734,
		0.845727, -0.532884, 0.027934,
		36.623722, 34.035812, 32.096981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852280, 33.679165, 32.037685>,  <36.031712, 34.408833, 32.077427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852280, 33.679165, 32.037685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.214012, 33.682461, 32.208389>,  <36.431049, 33.684437, 32.310810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.214012, 33.682461, 32.208389>,  <35.852280, 33.679165, 32.037685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214012, 33.682461, 32.208389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345552, -0.572795, 0.743304,
		0.250570, -0.819657, -0.515147,
		0.904328, 0.008240, 0.426759,
		36.485310, 33.684933, 32.336418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918373, 33.015785, 32.311295>,  <35.852280, 33.679165, 32.037685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918373, 33.015785, 32.311295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.196522, 33.228256, 32.504917>,  <36.363411, 33.355740, 32.621090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.196522, 33.228256, 32.504917>,  <35.918373, 33.015785, 32.311295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196522, 33.228256, 32.504917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093111, -0.601292, 0.793585,
		0.712590, -0.596910, -0.368665,
		0.695375, 0.531174, 0.484054,
		36.405136, 33.387608, 32.650135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227497, 32.500847, 32.812191>,  <35.918373, 33.015785, 32.311295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227497, 32.500847, 32.812191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.307453, 32.863052, 32.961899>,  <36.355427, 33.080376, 33.051723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.307453, 32.863052, 32.961899>,  <36.227497, 32.500847, 32.812191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307453, 32.863052, 32.961899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281139, -0.312912, 0.907219,
		0.938618, -0.286570, 0.192028,
		0.199894, 0.905518, 0.374271,
		36.367420, 33.134708, 33.074181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562237, 32.368279, 33.419727>,  <36.227497, 32.500847, 32.812191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562237, 32.368279, 33.419727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439484, 32.747414, 33.454193>,  <36.365829, 32.974895, 33.474873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439484, 32.747414, 33.454193>,  <36.562237, 32.368279, 33.419727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439484, 32.747414, 33.454193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395430, -0.209327, 0.894325,
		0.865711, 0.240385, 0.439043,
		-0.306886, 0.947838, 0.086161,
		36.347420, 33.031765, 33.480042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877903, 32.597466, 34.019863>,  <36.562237, 32.368279, 33.419727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877903, 32.597466, 34.019863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576546, 32.854294, 33.963081>,  <36.395733, 33.008389, 33.929012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576546, 32.854294, 33.963081>,  <36.877903, 32.597466, 34.019863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576546, 32.854294, 33.963081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153231, 0.038518, 0.987439,
		0.639470, 0.765681, 0.069366,
		-0.753392, 0.642067, -0.141957,
		36.350529, 33.046913, 33.920494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969185, 33.182423, 34.575214>,  <36.877903, 32.597466, 34.019863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969185, 33.182423, 34.575214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.583679, 33.208946, 34.471855>,  <36.352375, 33.224861, 34.409840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.583679, 33.208946, 34.471855>,  <36.969185, 33.182423, 34.575214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583679, 33.208946, 34.471855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262629, -0.065887, 0.962645,
		0.046806, 0.995621, 0.080914,
		-0.963761, 0.066308, -0.258396,
		36.294552, 33.228840, 34.394337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.574856, 35.662800, 26.697077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266918, 35.425732, 26.791800>,  <38.082153, 35.283489, 26.848633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266918, 35.425732, 26.791800>,  <38.574856, 35.662800, 26.697077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266918, 35.425732, 26.791800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200601, 0.127533, 0.971336,
		-0.605884, 0.795283, 0.020710,
		-0.769846, -0.592672, 0.236805,
		38.035965, 35.247929, 26.862841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132759, 36.065918, 27.186720>,  <38.574856, 35.662800, 26.697077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132759, 36.065918, 27.186720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072475, 35.675110, 27.247007>,  <38.036304, 35.440624, 27.283180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072475, 35.675110, 27.247007>,  <38.132759, 36.065918, 27.186720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072475, 35.675110, 27.247007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053535, 0.160304, 0.985615,
		-0.987127, 0.140475, -0.076465,
		-0.150712, -0.977021, 0.150720,
		38.027264, 35.382004, 27.292223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724678, 36.125175, 27.778484>,  <38.132759, 36.065918, 27.186720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724678, 36.125175, 27.778484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796017, 35.731766, 27.766691>,  <37.838821, 35.495720, 27.759615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796017, 35.731766, 27.766691>,  <37.724678, 36.125175, 27.778484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796017, 35.731766, 27.766691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137113, -0.054511, 0.989055,
		-0.974368, -0.172352, -0.144576,
		0.178346, -0.983526, -0.029482,
		37.849522, 35.436707, 27.757847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208641, 35.825920, 28.250175>,  <37.724678, 36.125175, 27.778484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208641, 35.825920, 28.250175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488850, 35.543102, 28.211491>,  <37.656975, 35.373409, 28.188280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488850, 35.543102, 28.211491>,  <37.208641, 35.825920, 28.250175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488850, 35.543102, 28.211491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061076, -0.194428, 0.979014,
		-0.711014, -0.679912, -0.179384,
		0.700520, -0.707049, -0.096714,
		37.699005, 35.330986, 28.182476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882778, 35.289902, 28.449722>,  <37.208641, 35.825920, 28.250175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882778, 35.289902, 28.449722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270962, 35.214226, 28.509600>,  <37.503872, 35.168819, 28.545527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270962, 35.214226, 28.509600>,  <36.882778, 35.289902, 28.449722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270962, 35.214226, 28.509600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177894, -0.142056, 0.973742,
		-0.162964, -0.971609, -0.171517,
		0.970462, -0.189197, 0.149694,
		37.562099, 35.157471, 28.554508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975819, 34.574039, 28.605413>,  <36.882778, 35.289902, 28.449722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975819, 34.574039, 28.605413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277828, 34.785423, 28.760679>,  <37.459034, 34.912254, 28.853840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277828, 34.785423, 28.760679>,  <36.975819, 34.574039, 28.605413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277828, 34.785423, 28.760679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160767, -0.424722, 0.890935,
		0.635687, -0.735078, -0.235715,
		0.755020, 0.528460, 0.388167,
		37.504333, 34.943962, 28.877129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109516, 34.209606, 29.216789>,  <36.975819, 34.574039, 28.605413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109516, 34.209606, 29.216789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359959, 34.514515, 29.282421>,  <37.510223, 34.697460, 29.321800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359959, 34.514515, 29.282421>,  <37.109516, 34.209606, 29.216789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359959, 34.514515, 29.282421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073315, -0.151944, 0.985666,
		0.776280, -0.629165, -0.039247,
		0.626111, 0.762275, 0.164078,
		37.547791, 34.743198, 29.331644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608734, 33.942299, 29.638321>,  <37.109516, 34.209606, 29.216789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608734, 33.942299, 29.638321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645374, 34.338268, 29.681522>,  <37.667358, 34.575851, 29.707443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645374, 34.338268, 29.681522>,  <37.608734, 33.942299, 29.638321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645374, 34.338268, 29.681522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006040, -0.109009, 0.994022,
		0.995778, -0.090396, -0.015964,
		0.091596, 0.989922, 0.108003,
		37.672852, 34.635246, 29.713923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248672, 34.181610, 29.997288>,  <37.608734, 33.942299, 29.638321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248672, 34.181610, 29.997288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966949, 34.460205, 30.052229>,  <37.797916, 34.627361, 30.085194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966949, 34.460205, 30.052229>,  <38.248672, 34.181610, 29.997288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966949, 34.460205, 30.052229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219632, 0.029796, 0.975128,
		0.675067, 0.716954, -0.173955,
		-0.704305, 0.696483, 0.137352,
		37.755657, 34.669151, 30.093435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992790, 34.339626, 30.286909>,  <38.248672, 34.181610, 29.997288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992790, 34.339626, 30.286909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293602, 34.113861, 30.423086>,  <39.474087, 33.978401, 30.504791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293602, 34.113861, 30.423086>,  <38.992790, 34.339626, 30.286909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293602, 34.113861, 30.423086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418123, 0.009216, -0.908344,
		0.509539, 0.825444, 0.242923,
		0.752026, -0.564408, 0.340442,
		39.519211, 33.944538, 30.525219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532497, 34.680538, 29.989470>,  <38.992790, 34.339626, 30.286909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532497, 34.680538, 29.989470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642647, 34.314140, 30.106178>,  <39.708736, 34.094303, 30.176203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642647, 34.314140, 30.106178>,  <39.532497, 34.680538, 29.989470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642647, 34.314140, 30.106178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276573, -0.215189, -0.936590,
		0.920695, 0.338605, 0.194083,
		0.275369, -0.915992, 0.291772,
		39.725258, 34.039341, 30.193710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102692, 34.649715, 29.638346>,  <39.532497, 34.680538, 29.989470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102692, 34.649715, 29.638346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030319, 34.269199, 29.738199>,  <39.986897, 34.040890, 29.798111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030319, 34.269199, 29.738199>,  <40.102692, 34.649715, 29.638346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030319, 34.269199, 29.738199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275393, -0.292670, -0.915698,
		0.944152, -0.096928, 0.314931,
		-0.180928, -0.951288, 0.249631,
		39.976040, 33.983814, 29.813089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767078, 34.365513, 29.533052>,  <40.102692, 34.649715, 29.638346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767078, 34.365513, 29.533052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491196, 34.075893, 29.529757>,  <40.325668, 33.902122, 29.527779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491196, 34.075893, 29.529757>,  <40.767078, 34.365513, 29.533052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491196, 34.075893, 29.529757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327459, -0.301740, -0.895390,
		0.645817, -0.620252, 0.445206,
		-0.689704, -0.724045, -0.008239,
		40.284283, 33.858681, 29.527285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100903, 33.671082, 29.479424>,  <40.767078, 34.365513, 29.533052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100903, 33.671082, 29.479424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722000, 33.618500, 29.362511>,  <40.494659, 33.586952, 29.292364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722000, 33.618500, 29.362511>,  <41.100903, 33.671082, 29.479424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722000, 33.618500, 29.362511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320338, -0.361219, -0.875731,
		0.009542, -0.923169, 0.384276,
		-0.947255, -0.131455, -0.292280,
		40.437824, 33.579063, 29.274826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126438, 33.018600, 29.086130>,  <41.100903, 33.671082, 29.479424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126438, 33.018600, 29.086130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796440, 33.219048, 28.981617>,  <40.598442, 33.339317, 28.918909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796440, 33.219048, 28.981617>,  <41.126438, 33.018600, 29.086130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796440, 33.219048, 28.981617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203142, -0.168479, -0.964546,
		-0.527373, -0.848819, 0.037195,
		-0.824992, 0.501119, -0.261282,
		40.548943, 33.369385, 28.903233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718769, 32.576141, 28.805836>,  <41.126438, 33.018600, 29.086130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718769, 32.576141, 28.805836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588646, 32.910889, 28.629734>,  <40.510574, 33.111736, 28.524073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588646, 32.910889, 28.629734>,  <40.718769, 32.576141, 28.805836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588646, 32.910889, 28.629734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221032, -0.385384, -0.895893,
		-0.919414, -0.388748, -0.059608,
		-0.325305, 0.836871, -0.440253,
		40.491055, 33.161949, 28.497658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195969, 32.363251, 28.368847>,  <40.718769, 32.576141, 28.805836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195969, 32.363251, 28.368847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297153, 32.716171, 28.210073>,  <40.357864, 32.927921, 28.114809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297153, 32.716171, 28.210073>,  <40.195969, 32.363251, 28.368847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297153, 32.716171, 28.210073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128044, -0.437201, -0.890202,
		-0.958965, 0.174363, -0.223569,
		0.252963, 0.882299, -0.396935,
		40.373043, 32.980862, 28.090994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735527, 32.463154, 27.797846>,  <40.195969, 32.363251, 28.368847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735527, 32.463154, 27.797846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055328, 32.700844, 27.762787>,  <40.247211, 32.843460, 27.741753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055328, 32.700844, 27.762787>,  <39.735527, 32.463154, 27.797846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055328, 32.700844, 27.762787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170226, -0.364090, -0.915675,
		-0.576030, 0.717170, -0.392246,
		0.799508, 0.594227, -0.087646,
		40.295181, 32.879112, 27.736492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551674, 33.000423, 27.309334>,  <39.735527, 32.463154, 27.797846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551674, 33.000423, 27.309334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951187, 32.983944, 27.298548>,  <40.190895, 32.974056, 27.292076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951187, 32.983944, 27.298548>,  <39.551674, 33.000423, 27.309334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951187, 32.983944, 27.298548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028052, -0.026030, -0.999268,
		0.040466, 0.998812, -0.027154,
		0.998787, -0.041198, -0.026965,
		40.250824, 32.971584, 27.290459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824696, 33.342480, 26.792931>,  <39.551674, 33.000423, 27.309334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824696, 33.342480, 26.792931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154888, 33.124199, 26.850601>,  <40.353004, 32.993229, 26.885204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154888, 33.124199, 26.850601>,  <39.824696, 33.342480, 26.792931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154888, 33.124199, 26.850601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095141, -0.117256, -0.988534,
		0.556350, 0.829735, -0.044874,
		0.825483, -0.545702, 0.144177,
		40.402534, 32.960487, 26.893854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319489, 33.621281, 26.402679>,  <39.824696, 33.342480, 26.792931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319489, 33.621281, 26.402679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447380, 33.245296, 26.450424>,  <40.524113, 33.019707, 26.479071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447380, 33.245296, 26.450424>,  <40.319489, 33.621281, 26.402679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447380, 33.245296, 26.450424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330239, -0.007526, -0.943867,
		0.888097, 0.341197, 0.308006,
		0.319727, -0.939962, 0.119360,
		40.543297, 32.963306, 26.486233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951458, 33.641197, 26.029531>,  <40.319489, 33.621281, 26.402679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951458, 33.641197, 26.029531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862003, 33.256481, 26.092705>,  <40.808331, 33.025650, 26.130610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862003, 33.256481, 26.092705>,  <40.951458, 33.641197, 26.029531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862003, 33.256481, 26.092705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540897, -0.257266, -0.800777,
		0.810812, -0.093658, 0.577765,
		-0.223638, -0.961791, 0.157935,
		40.794910, 32.967945, 26.140085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580162, 33.362392, 25.830853>,  <40.951458, 33.641197, 26.029531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580162, 33.362392, 25.830853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296150, 33.081066, 25.816990>,  <41.125744, 32.912270, 25.808672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296150, 33.081066, 25.816990>,  <41.580162, 33.362392, 25.830853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296150, 33.081066, 25.816990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357677, -0.317828, -0.878096,
		0.606563, -0.635873, 0.477228,
		-0.710034, -0.703314, -0.034655,
		41.083141, 32.870071, 25.806593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.342113, 31.326653, 25.013016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.660801, 31.565638, 25.049427>,  <35.852013, 31.709028, 25.071274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.660801, 31.565638, 25.049427>,  <35.342113, 31.326653, 25.013016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660801, 31.565638, 25.049427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004631, -0.144583, 0.989482,
		0.604338, -0.788756, -0.112424,
		0.796714, 0.597461, 0.091030,
		35.899815, 31.744875, 25.076736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828991, 30.908451, 25.332878>,  <35.342113, 31.326653, 25.013016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828991, 30.908451, 25.332878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944908, 31.284714, 25.403515>,  <36.014458, 31.510471, 25.445896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944908, 31.284714, 25.403515>,  <35.828991, 30.908451, 25.332878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944908, 31.284714, 25.403515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114312, -0.217206, 0.969409,
		0.950240, -0.260737, -0.170472,
		0.289789, 0.940658, 0.176592,
		36.031845, 31.566912, 25.456493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388008, 30.833364, 25.838474>,  <35.828991, 30.908451, 25.332878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388008, 30.833364, 25.838474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269646, 31.214306, 25.868025>,  <36.198627, 31.442871, 25.885756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269646, 31.214306, 25.868025>,  <36.388008, 30.833364, 25.838474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269646, 31.214306, 25.868025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006566, -0.075312, 0.997139,
		0.955193, 0.295549, 0.016033,
		-0.295911, 0.952354, 0.073879,
		36.180874, 31.500011, 25.890188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894127, 31.131493, 26.391237>,  <36.388008, 30.833364, 25.838474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894127, 31.131493, 26.391237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555531, 31.341070, 26.353413>,  <36.352375, 31.466816, 26.330717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555531, 31.341070, 26.353413>,  <36.894127, 31.131493, 26.391237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555531, 31.341070, 26.353413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073215, 0.061369, 0.995426,
		0.527350, 0.849539, -0.013588,
		-0.846488, 0.523943, -0.094561,
		36.301582, 31.498253, 26.325045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859821, 31.620726, 26.955826>,  <36.894127, 31.131493, 26.391237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859821, 31.620726, 26.955826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479511, 31.628233, 26.832096>,  <36.251328, 31.632736, 26.757858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479511, 31.628233, 26.832096>,  <36.859821, 31.620726, 26.955826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479511, 31.628233, 26.832096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309891, -0.054718, 0.949196,
		0.000889, 0.998326, 0.057840,
		-0.950772, 0.018768, -0.309324,
		36.194279, 31.633863, 26.739300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581779, 31.988964, 27.472656>,  <36.859821, 31.620726, 26.955826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581779, 31.988964, 27.472656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296680, 31.809093, 27.257332>,  <36.125622, 31.701172, 27.128138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296680, 31.809093, 27.257332>,  <36.581779, 31.988964, 27.472656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296680, 31.809093, 27.257332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502359, -0.208340, 0.839185,
		-0.489511, 0.868555, -0.077404,
		-0.712751, -0.449675, -0.538311,
		36.082855, 31.674191, 27.095839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985752, 32.142406, 27.816839>,  <36.581779, 31.988964, 27.472656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985752, 32.142406, 27.816839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.895454, 31.809124, 27.614927>,  <35.841274, 31.609154, 27.493780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.895454, 31.809124, 27.614927>,  <35.985752, 32.142406, 27.816839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895454, 31.809124, 27.614927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455630, -0.367687, 0.810684,
		-0.861069, 0.413002, -0.296631,
		-0.225747, -0.833209, -0.504780,
		35.827732, 31.559162, 27.463493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217915, 32.057724, 27.922773>,  <35.985752, 32.142406, 27.816839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217915, 32.057724, 27.922773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320393, 31.690985, 27.800291>,  <35.381878, 31.470942, 27.726803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320393, 31.690985, 27.800291>,  <35.217915, 32.057724, 27.922773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320393, 31.690985, 27.800291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550215, -0.398767, 0.733654,
		-0.794751, -0.019477, -0.606623,
		0.256191, -0.916845, -0.306204,
		35.397251, 31.415932, 27.708429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695545, 31.706167, 28.122690>,  <35.217915, 32.057724, 27.922773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695545, 31.706167, 28.122690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966084, 31.417427, 28.064060>,  <35.128407, 31.244183, 28.028881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966084, 31.417427, 28.064060>,  <34.695545, 31.706167, 28.122690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966084, 31.417427, 28.064060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428368, -0.547357, 0.718958,
		-0.599212, -0.423476, -0.679422,
		0.676347, -0.721851, -0.146579,
		35.168987, 31.200872, 28.020086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360523, 31.014948, 28.021250>,  <34.695545, 31.706167, 28.122690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360523, 31.014948, 28.021250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734512, 30.959644, 28.151913>,  <34.958908, 30.926462, 28.230310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734512, 30.959644, 28.151913>,  <34.360523, 31.014948, 28.021250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734512, 30.959644, 28.151913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347465, -0.542180, 0.765055,
		0.071329, -0.828809, -0.554966,
		0.934976, -0.138260, 0.326656,
		35.015007, 30.918165, 28.249908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343056, 30.259489, 28.318386>,  <34.360523, 31.014948, 28.021250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343056, 30.259489, 28.318386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.683510, 30.408596, 28.466236>,  <34.887783, 30.498060, 28.554945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.683510, 30.408596, 28.466236>,  <34.343056, 30.259489, 28.318386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683510, 30.408596, 28.466236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106718, -0.566539, 0.817095,
		0.513992, -0.734900, -0.442418,
		0.851131, 0.372767, 0.369624,
		34.938850, 30.520426, 28.577124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697102, 29.742697, 28.690828>,  <34.343056, 30.259489, 28.318386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697102, 29.742697, 28.690828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.901688, 30.058128, 28.827387>,  <35.024437, 30.247387, 28.909321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.901688, 30.058128, 28.827387>,  <34.697102, 29.742697, 28.690828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901688, 30.058128, 28.827387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012833, -0.390238, 0.920625,
		0.859211, -0.475245, -0.189471,
		0.511461, 0.788579, 0.341395,
		35.055126, 30.294703, 28.929806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226341, 29.525866, 29.159575>,  <34.697102, 29.742697, 28.690828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226341, 29.525866, 29.159575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146301, 29.903984, 29.262625>,  <35.098278, 30.130856, 29.324455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146301, 29.903984, 29.262625>,  <35.226341, 29.525866, 29.159575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146301, 29.903984, 29.262625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116491, -0.238124, 0.964223,
		0.972826, 0.222952, -0.062470,
		-0.200100, 0.945298, 0.257625,
		35.086273, 30.187574, 29.339912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504017, 29.538416, 29.819864>,  <35.226341, 29.525866, 29.159575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504017, 29.538416, 29.819864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.261074, 29.855867, 29.805592>,  <35.115307, 30.046337, 29.797028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.261074, 29.855867, 29.805592>,  <35.504017, 29.538416, 29.819864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261074, 29.855867, 29.805592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229723, -0.132455, 0.964201,
		0.760489, 0.593812, 0.262762,
		-0.607358, 0.793627, -0.035681,
		35.078865, 30.093956, 29.794888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202446, 29.906599, 29.828739>,  <35.504017, 29.538416, 29.819864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202446, 29.906599, 29.828739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541676, 29.695049, 29.815687>,  <36.745213, 29.568119, 29.807856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541676, 29.695049, 29.815687>,  <36.202446, 29.906599, 29.828739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541676, 29.695049, 29.815687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006662, 0.072215, -0.997367,
		0.529836, 0.845623, 0.064767,
		0.848074, -0.528873, -0.032628,
		36.796097, 29.536388, 29.805899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771282, 30.305687, 29.553122>,  <36.202446, 29.906599, 29.828739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771282, 30.305687, 29.553122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911030, 29.934126, 29.504002>,  <36.994881, 29.711189, 29.474529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911030, 29.934126, 29.504002>,  <36.771282, 30.305687, 29.553122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911030, 29.934126, 29.504002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281285, 0.228992, -0.931902,
		0.893766, 0.291040, 0.341290,
		0.349374, -0.928902, -0.122800,
		37.015842, 29.655455, 29.467161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277496, 30.385988, 29.103519>,  <36.771282, 30.305687, 29.553122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277496, 30.385988, 29.103519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.242970, 29.987612, 29.093348>,  <37.222252, 29.748585, 29.087244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.242970, 29.987612, 29.093348>,  <37.277496, 30.385988, 29.103519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242970, 29.987612, 29.093348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518898, -0.023154, -0.854523,
		0.850467, -0.086959, 0.518791,
		-0.086321, -0.995943, -0.025431,
		37.217072, 29.688829, 29.085718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965370, 30.065981, 28.922476>,  <37.277496, 30.385988, 29.103519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965370, 30.065981, 28.922476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686222, 29.790897, 28.842443>,  <37.518734, 29.625847, 28.794424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686222, 29.790897, 28.842443>,  <37.965370, 30.065981, 28.922476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686222, 29.790897, 28.842443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451641, -0.205736, -0.868155,
		0.555875, -0.696224, 0.454175,
		-0.697871, -0.687710, -0.200079,
		37.476860, 29.584585, 28.782419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292068, 29.574945, 28.641043>,  <37.965370, 30.065981, 28.922476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292068, 29.574945, 28.641043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924072, 29.495409, 28.505939>,  <37.703274, 29.447687, 28.424877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924072, 29.495409, 28.505939>,  <38.292068, 29.574945, 28.641043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924072, 29.495409, 28.505939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382072, -0.262824, -0.885971,
		0.087398, -0.944133, 0.317767,
		-0.919991, -0.198842, -0.337756,
		37.648075, 29.435757, 28.404613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245808, 28.926212, 28.411802>,  <38.292068, 29.574945, 28.641043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245808, 28.926212, 28.411802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966579, 29.106565, 28.189308>,  <37.799042, 29.214777, 28.055813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966579, 29.106565, 28.189308>,  <38.245808, 28.926212, 28.411802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966579, 29.106565, 28.189308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418493, -0.373419, -0.827902,
		-0.580995, -0.810718, 0.071983,
		-0.698075, 0.450883, -0.556234,
		37.757156, 29.241831, 28.022438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351192, 28.569551, 27.815281>,  <38.245808, 28.926212, 28.411802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351192, 28.569551, 27.815281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080204, 28.849459, 27.724627>,  <37.917610, 29.017403, 27.670235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080204, 28.849459, 27.724627>,  <38.351192, 28.569551, 27.815281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080204, 28.849459, 27.724627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229733, -0.091404, -0.968952,
		-0.698757, -0.708498, -0.098837,
		-0.677467, 0.699768, -0.226635,
		37.876965, 29.059389, 27.656635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947475, 28.275505, 27.273741>,  <38.351192, 28.569551, 27.815281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947475, 28.275505, 27.273741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952003, 28.675476, 27.272015>,  <37.954720, 28.915459, 27.270979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952003, 28.675476, 27.272015>,  <37.947475, 28.275505, 27.273741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952003, 28.675476, 27.272015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233010, -0.006835, -0.972450,
		-0.972409, 0.009999, -0.233070,
		0.011317, 0.999927, -0.004316,
		37.955399, 28.975454, 27.270720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511269, 28.540131, 26.677504>,  <37.947475, 28.275505, 27.273741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511269, 28.540131, 26.677504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758171, 28.840963, 26.769909>,  <37.906315, 29.021463, 26.825352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758171, 28.840963, 26.769909>,  <37.511269, 28.540131, 26.677504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758171, 28.840963, 26.769909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446999, -0.093607, -0.889624,
		-0.647444, 0.652390, -0.393959,
		0.617259, 0.752081, 0.231012,
		37.943348, 29.066587, 26.839212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403172, 29.036720, 26.206459>,  <37.511269, 28.540131, 26.677504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403172, 29.036720, 26.206459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.770844, 29.127602, 26.335136>,  <37.991447, 29.182131, 26.412342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.770844, 29.127602, 26.335136>,  <37.403172, 29.036720, 26.206459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770844, 29.127602, 26.335136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313252, 0.073308, -0.946836,
		-0.238707, 0.971084, -0.003789,
		0.919180, 0.227204, 0.321693,
		38.046597, 29.195763, 26.431644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515121, 29.677469, 25.971016>,  <37.403172, 29.036720, 26.206459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515121, 29.677469, 25.971016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879601, 29.520477, 26.021093>,  <38.098289, 29.426283, 26.051140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879601, 29.520477, 26.021093>,  <37.515121, 29.677469, 25.971016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879601, 29.520477, 26.021093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244961, 0.271862, -0.930637,
		0.331220, 0.878665, 0.343863,
		0.911201, -0.392479, 0.125192,
		38.152962, 29.402733, 26.058651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081833, 30.144678, 25.625637>,  <37.515121, 29.677469, 25.971016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081833, 30.144678, 25.625637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265804, 29.793396, 25.678127>,  <38.376186, 29.582626, 25.709621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265804, 29.793396, 25.678127>,  <38.081833, 30.144678, 25.625637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265804, 29.793396, 25.678127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113622, -0.088363, -0.989587,
		0.880655, 0.470053, 0.059142,
		0.459932, -0.878204, 0.131226,
		38.403786, 29.529934, 25.717495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754135, 30.193558, 25.338671>,  <38.081833, 30.144678, 25.625637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754135, 30.193558, 25.338671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.655495, 29.805912, 25.337688>,  <38.596310, 29.573324, 25.337099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.655495, 29.805912, 25.337688>,  <38.754135, 30.193558, 25.338671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655495, 29.805912, 25.337688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263057, -0.064500, -0.962622,
		0.932733, -0.238028, 0.270838,
		-0.246600, -0.969114, -0.002453,
		38.581516, 29.515179, 25.336952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364040, 29.912254, 25.033381>,  <38.754135, 30.193558, 25.338671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364040, 29.912254, 25.033381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034962, 29.687819, 24.996822>,  <38.837517, 29.553158, 24.974888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034962, 29.687819, 24.996822>,  <39.364040, 29.912254, 25.033381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034962, 29.687819, 24.996822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088213, 0.032827, -0.995561,
		0.561600, -0.827103, 0.022489,
		-0.822693, -0.561090, -0.091397,
		38.788155, 29.519491, 24.969402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942669, 29.440241, 25.010263>,  <39.364040, 29.912254, 25.033381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942669, 29.440241, 25.010263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336708, 29.500422, 24.976908>,  <40.573132, 29.536530, 24.956894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336708, 29.500422, 24.976908>,  <39.942669, 29.440241, 25.010263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336708, 29.500422, 24.976908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094026, -0.065029, 0.993444,
		0.144044, -0.986476, -0.078207,
		0.985094, 0.150453, -0.083387,
		40.632236, 29.545557, 24.951891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305157, 28.858185, 25.338442>,  <39.942669, 29.440241, 25.010263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305157, 28.858185, 25.338442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.523834, 29.192984, 25.329031>,  <40.655041, 29.393864, 25.323383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.523834, 29.192984, 25.329031>,  <40.305157, 28.858185, 25.338442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523834, 29.192984, 25.329031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131592, -0.058134, 0.989598,
		0.826925, -0.544107, -0.141924,
		0.546698, 0.836999, -0.023528,
		40.687843, 29.444084, 25.321972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969440, 28.668066, 25.891150>,  <40.305157, 28.858185, 25.338442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969440, 28.668066, 25.891150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.932129, 29.061594, 25.829966>,  <40.909744, 29.297710, 25.793255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.932129, 29.061594, 25.829966>,  <40.969440, 28.668066, 25.891150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932129, 29.061594, 25.829966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072856, 0.146472, 0.986528,
		0.992971, 0.103162, 0.058015,
		-0.093274, 0.983821, -0.152959,
		40.904148, 29.356741, 25.784079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672058, 28.968504, 26.000135>,  <40.969440, 28.668066, 25.891150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672058, 28.968504, 26.000135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.458149, 29.301928, 26.055563>,  <41.329803, 29.501982, 26.088820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.458149, 29.301928, 26.055563>,  <41.672058, 28.968504, 26.000135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458149, 29.301928, 26.055563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033511, -0.142936, 0.989165,
		0.844333, 0.533619, 0.048505,
		-0.534770, 0.833559, 0.138567,
		41.297718, 29.551994, 26.097134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021606, 29.539419, 26.490891>,  <41.672058, 28.968504, 26.000135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021606, 29.539419, 26.490891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.629913, 29.615105, 26.520010>,  <41.394897, 29.660515, 26.537481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.629913, 29.615105, 26.520010>,  <42.021606, 29.539419, 26.490891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629913, 29.615105, 26.520010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096166, 0.117410, 0.988416,
		0.178473, 0.974892, -0.133167,
		-0.979234, 0.189212, 0.072797,
		41.336143, 29.671867, 26.541849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937397, 30.088436, 26.963364>,  <42.021606, 29.539419, 26.490891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937397, 30.088436, 26.963364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.567955, 29.935104, 26.964474>,  <41.346291, 29.843105, 26.965139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.567955, 29.935104, 26.964474>,  <41.937397, 30.088436, 26.963364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567955, 29.935104, 26.964474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047663, 0.122023, 0.991382,
		-0.380363, 0.915516, -0.130972,
		-0.923608, -0.383328, 0.002777,
		41.290871, 29.820107, 26.965307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545395, 30.652445, 27.274942>,  <41.937397, 30.088436, 26.963364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545395, 30.652445, 27.274942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.339069, 30.310734, 27.300697>,  <41.215275, 30.105707, 27.316151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.339069, 30.310734, 27.300697>,  <41.545395, 30.652445, 27.274942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339069, 30.310734, 27.300697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046174, 0.102769, 0.993633,
		-0.855457, 0.509553, -0.092455,
		-0.515811, -0.854280, 0.064386,
		41.184326, 30.054449, 27.320013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015495, 30.826683, 27.642315>,  <41.545395, 30.652445, 27.274942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015495, 30.826683, 27.642315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.012375, 30.428730, 27.682613>,  <41.010502, 30.189959, 27.706793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.012375, 30.428730, 27.682613>,  <41.015495, 30.826683, 27.642315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012375, 30.428730, 27.682613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272571, 0.099051, 0.957024,
		-0.962104, -0.019996, -0.271949,
		-0.007801, -0.994881, 0.100748,
		41.010036, 30.130266, 27.712837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349213, 30.698681, 27.932650>,  <41.015495, 30.826683, 27.642315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349213, 30.698681, 27.932650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596748, 30.392855, 28.004730>,  <40.745270, 30.209358, 28.047979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596748, 30.392855, 28.004730>,  <40.349213, 30.698681, 27.932650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596748, 30.392855, 28.004730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153366, 0.107391, 0.982317,
		-0.770398, -0.635536, -0.050800,
		0.618842, -0.764566, 0.180203,
		40.782402, 30.163485, 28.058792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976376, 30.123789, 28.300957>,  <40.349213, 30.698681, 27.932650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976376, 30.123789, 28.300957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358837, 30.051537, 28.393166>,  <40.588314, 30.008186, 28.448492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358837, 30.051537, 28.393166>,  <39.976376, 30.123789, 28.300957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358837, 30.051537, 28.393166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230778, 0.019900, 0.972803,
		-0.180306, -0.983350, -0.022658,
		0.956154, -0.180631, 0.230523,
		40.645683, 29.997347, 28.462322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877865, 29.706188, 28.893496>,  <39.976376, 30.123789, 28.300957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877865, 29.706188, 28.893496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261059, 29.820160, 28.906603>,  <40.490974, 29.888544, 28.914467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261059, 29.820160, 28.906603>,  <39.877865, 29.706188, 28.893496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261059, 29.820160, 28.906603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043541, 0.031552, 0.998553,
		0.283486, -0.958028, 0.042633,
		0.957988, 0.284932, 0.032768,
		40.548454, 29.905640, 28.916433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162762, 29.308750, 29.452259>,  <39.877865, 29.706188, 28.893496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162762, 29.308750, 29.452259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.430077, 29.604521, 29.419672>,  <40.590466, 29.781982, 29.400120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.430077, 29.604521, 29.419672>,  <40.162762, 29.308750, 29.452259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430077, 29.604521, 29.419672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036202, 0.077057, 0.996369,
		0.743020, -0.668812, 0.024728,
		0.668289, 0.739427, -0.081468,
		40.630562, 29.826349, 29.395231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768448, 29.188848, 29.880512>,  <40.162762, 29.308750, 29.452259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768448, 29.188848, 29.880512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.770908, 29.585180, 29.826523>,  <40.772385, 29.822979, 29.794128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.770908, 29.585180, 29.826523>,  <40.768448, 29.188848, 29.880512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770908, 29.585180, 29.826523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150264, 0.132528, 0.979723,
		0.988627, -0.026308, -0.148070,
		0.006151, 0.990830, -0.134974,
		40.772755, 29.882429, 29.786030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377796, 29.378574, 30.161966>,  <40.768448, 29.188848, 29.880512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377796, 29.378574, 30.161966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.124321, 29.687956, 30.167751>,  <40.972237, 29.873585, 30.171223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.124321, 29.687956, 30.167751>,  <41.377796, 29.378574, 30.161966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124321, 29.687956, 30.167751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210540, 0.154447, 0.965308,
		0.744388, 0.614747, -0.260714,
		-0.633687, 0.773454, 0.014461,
		40.934216, 29.919992, 30.172089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.897614, 32.749126, 25.643478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.525150, 32.682014, 25.513992>,  <41.301674, 32.641747, 25.436300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.525150, 32.682014, 25.513992>,  <41.897614, 32.749126, 25.643478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525150, 32.682014, 25.513992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361002, -0.299580, -0.883136,
		0.051194, -0.939202, 0.339526,
		-0.931159, -0.167781, -0.323717,
		41.245804, 32.631680, 25.416878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914936, 32.200924, 25.235514>,  <41.897614, 32.749126, 25.643478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914936, 32.200924, 25.235514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.572117, 32.368912, 25.116123>,  <41.366425, 32.469704, 25.044489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.572117, 32.368912, 25.116123>,  <41.914936, 32.200924, 25.235514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572117, 32.368912, 25.116123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236706, -0.193609, -0.952095,
		-0.457642, -0.886644, 0.066522,
		-0.857049, 0.419973, -0.298478,
		41.315002, 32.494904, 25.026579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734325, 31.715412, 24.752281>,  <41.914936, 32.200924, 25.235514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734325, 31.715412, 24.752281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.484016, 32.020264, 24.685862>,  <41.333832, 32.203175, 24.646009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.484016, 32.020264, 24.685862>,  <41.734325, 31.715412, 24.752281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484016, 32.020264, 24.685862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006108, -0.217665, -0.976004,
		-0.779984, -0.609740, 0.140863,
		-0.625770, 0.762128, -0.166051,
		41.296284, 32.248901, 24.636045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177464, 31.521133, 24.307915>,  <41.734325, 31.715412, 24.752281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177464, 31.521133, 24.307915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.215637, 31.917627, 24.271379>,  <41.238541, 32.155525, 24.249458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.215637, 31.917627, 24.271379>,  <41.177464, 31.521133, 24.307915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215637, 31.917627, 24.271379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073841, -0.084454, -0.993688,
		-0.992693, 0.101575, 0.065135,
		0.095433, 0.991236, -0.091338,
		41.244267, 32.215000, 24.243979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762135, 31.664661, 23.734861>,  <41.177464, 31.521133, 24.307915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762135, 31.664661, 23.734861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.944050, 32.018040, 23.779921>,  <41.053200, 32.230068, 23.806957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.944050, 32.018040, 23.779921>,  <40.762135, 31.664661, 23.734861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944050, 32.018040, 23.779921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067370, 0.160251, -0.984775,
		-0.888047, 0.440277, 0.132398,
		0.454791, 0.883445, 0.112649,
		41.080486, 32.283073, 23.813715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324329, 32.196320, 23.445286>,  <40.762135, 31.664661, 23.734861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324329, 32.196320, 23.445286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.704334, 32.320889, 23.436377>,  <40.932335, 32.395630, 23.431030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.704334, 32.320889, 23.436377>,  <40.324329, 32.196320, 23.445286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704334, 32.320889, 23.436377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092439, 0.212414, -0.972798,
		-0.298223, 0.926226, 0.230584,
		0.950009, 0.311426, -0.022273,
		40.989338, 32.414318, 23.429695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286007, 32.781254, 22.962702>,  <40.324329, 32.196320, 23.445286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286007, 32.781254, 22.962702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.667835, 32.670158, 23.005880>,  <40.896935, 32.603500, 23.031788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.667835, 32.670158, 23.005880>,  <40.286007, 32.781254, 22.962702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667835, 32.670158, 23.005880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185783, 0.271500, -0.944337,
		0.232970, 0.921493, 0.310766,
		0.954573, -0.277738, 0.107947,
		40.954208, 32.586838, 23.038265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642391, 33.233795, 22.576408>,  <40.286007, 32.781254, 22.962702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642391, 33.233795, 22.576408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917538, 32.947315, 22.623560>,  <41.082626, 32.775429, 22.651852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917538, 32.947315, 22.623560>,  <40.642391, 33.233795, 22.576408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917538, 32.947315, 22.623560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264563, 0.096163, -0.959562,
		0.675903, 0.691238, 0.255628,
		0.687867, -0.716200, 0.117879,
		41.123898, 32.732456, 22.658924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263634, 33.527718, 22.321968>,  <40.642391, 33.233795, 22.576408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263634, 33.527718, 22.321968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.335167, 33.134285, 22.312277>,  <41.378086, 32.898224, 22.306461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.335167, 33.134285, 22.312277>,  <41.263634, 33.527718, 22.321968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335167, 33.134285, 22.312277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455915, 0.104667, -0.883847,
		0.871871, 0.147015, 0.467148,
		0.178834, -0.983581, -0.024230,
		41.388817, 32.839211, 22.305008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923470, 33.482113, 22.113167>,  <41.263634, 33.527718, 22.321968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923470, 33.482113, 22.113167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.742924, 33.137154, 22.021479>,  <41.634598, 32.930180, 21.966465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.742924, 33.137154, 22.021479>,  <41.923470, 33.482113, 22.113167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742924, 33.137154, 22.021479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219362, 0.141761, -0.965289,
		0.864958, -0.485979, 0.125192,
		-0.451363, -0.862397, -0.229223,
		41.607513, 32.878433, 21.952711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436958, 33.108604, 21.763792>,  <41.923470, 33.482113, 22.113167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436958, 33.108604, 21.763792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.098656, 32.919521, 21.664799>,  <41.895676, 32.806072, 21.605402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.098656, 32.919521, 21.664799>,  <42.436958, 33.108604, 21.763792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098656, 32.919521, 21.664799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325742, -0.090073, -0.941158,
		0.422598, -0.876606, 0.230159,
		-0.845756, -0.472705, -0.247483,
		41.844929, 32.777710, 21.590553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584415, 32.457497, 21.503649>,  <42.436958, 33.108604, 21.763792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584415, 32.457497, 21.503649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.226826, 32.537357, 21.343176>,  <42.012272, 32.585274, 21.246893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.226826, 32.537357, 21.343176>,  <42.584415, 32.457497, 21.503649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226826, 32.537357, 21.343176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373876, -0.161211, -0.913361,
		-0.247035, -0.966513, 0.069471,
		-0.893974, 0.199658, -0.401180,
		41.958633, 32.597256, 21.222822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452564, 31.977268, 20.967087>,  <42.584415, 32.457497, 21.503649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452564, 31.977268, 20.967087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.233597, 32.309177, 20.923615>,  <42.102219, 32.508324, 20.897532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.233597, 32.309177, 20.923615>,  <42.452564, 31.977268, 20.967087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233597, 32.309177, 20.923615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211730, 0.011687, -0.977258,
		-0.809633, -0.557978, -0.182086,
		-0.547417, 0.829773, -0.108679,
		42.069370, 32.558109, 20.891010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649467, 32.054626, 20.776787>,  <42.452564, 31.977268, 20.967087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649467, 32.054626, 20.776787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.880527, 32.350777, 20.639288>,  <42.019165, 32.528465, 20.556789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.880527, 32.350777, 20.639288>,  <41.649467, 32.054626, 20.776787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880527, 32.350777, 20.639288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196456, -0.282637, -0.938894,
		-0.792288, 0.609887, -0.017815,
		0.577654, 0.740374, -0.343746,
		42.053825, 32.572887, 20.536163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368984, 31.939291, 20.116674>,  <41.649467, 32.054626, 20.776787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368984, 31.939291, 20.116674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.160633, 31.643984, 19.945259>,  <41.035622, 31.466799, 19.842409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.160633, 31.643984, 19.945259>,  <41.368984, 31.939291, 20.116674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160633, 31.643984, 19.945259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044556, -0.477822, 0.877326,
		-0.852469, 0.476072, 0.215992,
		-0.520876, -0.738269, -0.428540,
		41.004372, 31.422503, 19.816696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785347, 31.931223, 20.500713>,  <41.368984, 31.939291, 20.116674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785347, 31.931223, 20.500713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812977, 31.570393, 20.330307>,  <40.829556, 31.353895, 20.228064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812977, 31.570393, 20.330307>,  <40.785347, 31.931223, 20.500713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812977, 31.570393, 20.330307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167837, -0.431458, 0.886383,
		-0.983392, 0.010273, -0.181206,
		0.069077, -0.902074, -0.426017,
		40.833702, 31.299770, 20.202501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270966, 31.502010, 20.780458>,  <40.785347, 31.931223, 20.500713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270966, 31.502010, 20.780458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.535275, 31.229084, 20.655350>,  <40.693859, 31.065329, 20.580284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.535275, 31.229084, 20.655350>,  <40.270966, 31.502010, 20.780458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535275, 31.229084, 20.655350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224173, -0.577084, 0.785316,
		-0.716329, -0.448799, -0.534277,
		0.660771, -0.682315, -0.312774,
		40.733505, 31.024389, 20.561518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065079, 30.734774, 20.968214>,  <40.270966, 31.502010, 20.780458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065079, 30.734774, 20.968214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.451561, 30.667006, 20.890497>,  <40.683449, 30.626345, 20.843866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.451561, 30.667006, 20.890497>,  <40.065079, 30.734774, 20.968214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451561, 30.667006, 20.890497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020816, -0.699962, 0.713877,
		-0.256944, -0.693794, -0.672778,
		0.966202, -0.169422, -0.194293,
		40.741421, 30.616179, 20.832209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177979, 30.051392, 20.749193>,  <40.065079, 30.734774, 20.968214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177979, 30.051392, 20.749193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.537643, 30.169731, 20.878181>,  <40.753441, 30.240734, 20.955574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.537643, 30.169731, 20.878181>,  <40.177979, 30.051392, 20.749193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537643, 30.169731, 20.878181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025243, -0.700582, 0.713125,
		0.436895, -0.649353, -0.622466,
		0.899159, 0.295848, 0.322472,
		40.807392, 30.258486, 20.974922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524197, 29.442089, 20.990280>,  <40.177979, 30.051392, 20.749193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524197, 29.442089, 20.990280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.766590, 29.711193, 21.160067>,  <40.912025, 29.872656, 21.261938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.766590, 29.711193, 21.160067>,  <40.524197, 29.442089, 20.990280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766590, 29.711193, 21.160067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021776, -0.547433, 0.836566,
		0.795176, -0.497705, -0.346388,
		0.605988, 0.672760, 0.424468,
		40.948387, 29.913021, 21.287407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065975, 29.070282, 21.368279>,  <40.524197, 29.442089, 20.990280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065975, 29.070282, 21.368279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.071198, 29.424677, 21.553688>,  <41.074329, 29.637314, 21.664934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.071198, 29.424677, 21.553688>,  <41.065975, 29.070282, 21.368279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071198, 29.424677, 21.553688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073922, -0.463152, 0.883190,
		0.997178, 0.022734, -0.071541,
		0.013056, 0.885987, 0.463526,
		41.075115, 29.690474, 21.692745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678505, 29.080572, 21.824478>,  <41.065975, 29.070282, 21.368279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678505, 29.080572, 21.824478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.418919, 29.351244, 21.963589>,  <41.263168, 29.513647, 22.047056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.418919, 29.351244, 21.963589>,  <41.678505, 29.080572, 21.824478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418919, 29.351244, 21.963589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033154, -0.481827, 0.875639,
		0.760098, 0.556727, 0.335122,
		-0.648962, 0.676682, 0.347778,
		41.224232, 29.554249, 22.067923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065098, 29.340620, 22.432653>,  <41.678505, 29.080572, 21.824478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065098, 29.340620, 22.432653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.697376, 29.487932, 22.488138>,  <41.476742, 29.576319, 22.521429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.697376, 29.487932, 22.488138>,  <42.065098, 29.340620, 22.432653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697376, 29.487932, 22.488138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124663, -0.061801, 0.990273,
		0.373271, 0.927658, 0.010903,
		-0.919309, 0.368281, 0.138713,
		41.421585, 29.598417, 22.529753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074619, 29.960077, 22.904131>,  <42.065098, 29.340620, 22.432653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074619, 29.960077, 22.904131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704136, 29.810703, 22.924858>,  <41.481846, 29.721079, 22.937294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704136, 29.810703, 22.924858>,  <42.074619, 29.960077, 22.904131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704136, 29.810703, 22.924858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026927, 0.071567, 0.997072,
		-0.376050, 0.924892, -0.056230,
		-0.926208, -0.373435, 0.051817,
		41.426273, 29.698673, 22.940403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628700, 30.430170, 23.368113>,  <42.074619, 29.960077, 22.904131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628700, 30.430170, 23.368113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434334, 30.080666, 23.359835>,  <41.317715, 29.870964, 23.354868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434334, 30.080666, 23.359835>,  <41.628700, 30.430170, 23.368113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434334, 30.080666, 23.359835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128434, 0.047963, 0.990557,
		-0.864517, 0.483986, -0.135527,
		-0.485917, -0.873760, -0.020695,
		41.288559, 29.818537, 23.353626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012772, 30.523024, 23.734541>,  <41.628700, 30.430170, 23.368113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012772, 30.523024, 23.734541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.074917, 30.127945, 23.741686>,  <41.112206, 29.890898, 23.745972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.074917, 30.127945, 23.741686>,  <41.012772, 30.523024, 23.734541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074917, 30.127945, 23.741686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192212, -0.012490, 0.981274,
		-0.968977, -0.155890, -0.191788,
		0.155366, -0.987695, 0.017861,
		41.121525, 29.831636, 23.747044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504410, 30.359217, 24.054071>,  <41.012772, 30.523024, 23.734541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504410, 30.359217, 24.054071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721218, 30.026575, 24.102480>,  <40.851303, 29.826990, 24.131525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721218, 30.026575, 24.102480>,  <40.504410, 30.359217, 24.054071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721218, 30.026575, 24.102480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237394, -0.013378, 0.971322,
		-0.806135, -0.555210, -0.204669,
		0.542025, -0.831603, 0.121019,
		40.883827, 29.777094, 24.138786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024445, 29.798090, 24.382151>,  <40.504410, 30.359217, 24.054071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024445, 29.798090, 24.382151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411804, 29.732773, 24.457565>,  <40.644218, 29.693583, 24.502815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411804, 29.732773, 24.457565>,  <40.024445, 29.798090, 24.382151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411804, 29.732773, 24.457565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206565, -0.101401, 0.973164,
		-0.139798, -0.981352, -0.131927,
		0.968394, -0.163298, 0.188537,
		40.702324, 29.683784, 24.514126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553616, 29.248674, 24.314022>,  <40.024445, 29.798090, 24.382151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553616, 29.248674, 24.314022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163296, 29.194622, 24.382790>,  <38.929104, 29.162191, 24.424049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163296, 29.194622, 24.382790>,  <39.553616, 29.248674, 24.314022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163296, 29.194622, 24.382790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203763, 0.276601, -0.939134,
		0.079352, -0.951437, -0.297442,
		-0.975799, -0.135130, 0.171918,
		38.870556, 29.154083, 24.434364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426132, 29.013895, 23.693027>,  <39.553616, 29.248674, 24.314022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426132, 29.013895, 23.693027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.073666, 29.123196, 23.847364>,  <38.862186, 29.188776, 23.939966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.073666, 29.123196, 23.847364>,  <39.426132, 29.013895, 23.693027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073666, 29.123196, 23.847364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302513, 0.301321, -0.904263,
		-0.363354, -0.913531, -0.182852,
		-0.881170, 0.273252, 0.385841,
		38.809315, 29.205172, 23.963118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889942, 28.728390, 23.273191>,  <39.426132, 29.013895, 23.693027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889942, 28.728390, 23.273191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692234, 29.027533, 23.450460>,  <38.573608, 29.207018, 23.556822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692234, 29.027533, 23.450460>,  <38.889942, 28.728390, 23.273191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692234, 29.027533, 23.450460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429211, 0.233380, -0.872532,
		-0.755957, -0.621484, 0.205635,
		-0.494274, 0.747858, 0.443173,
		38.543953, 29.251890, 23.583412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179222, 28.741947, 23.014723>,  <38.889942, 28.728390, 23.273191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179222, 28.741947, 23.014723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225155, 29.123440, 23.125868>,  <38.252716, 29.352335, 23.192554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225155, 29.123440, 23.125868>,  <38.179222, 28.741947, 23.014723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225155, 29.123440, 23.125868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287785, 0.299659, -0.909607,
		-0.950785, 0.024491, 0.308881,
		0.114836, 0.953732, 0.277863,
		38.259605, 29.409559, 23.209227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589935, 29.122185, 22.866995>,  <38.179222, 28.741947, 23.014723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589935, 29.122185, 22.866995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874344, 29.401861, 22.896866>,  <38.044991, 29.569668, 22.914787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874344, 29.401861, 22.896866>,  <37.589935, 29.122185, 22.866995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874344, 29.401861, 22.896866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189896, 0.293185, -0.937007,
		-0.677042, 0.652053, 0.341236,
		0.711023, 0.699192, 0.074676,
		38.087650, 29.611618, 22.919270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282459, 29.707747, 22.461010>,  <37.589935, 29.122185, 22.866995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282459, 29.707747, 22.461010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663994, 29.822075, 22.497910>,  <37.892914, 29.890673, 22.520050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663994, 29.822075, 22.497910>,  <37.282459, 29.707747, 22.461010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663994, 29.822075, 22.497910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012423, 0.344435, -0.938728,
		-0.300083, 0.894243, 0.332084,
		0.953832, 0.285822, 0.092250,
		37.950142, 29.907822, 22.525585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459282, 30.405750, 22.277058>,  <37.282459, 29.707747, 22.461010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459282, 30.405750, 22.277058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811459, 30.227028, 22.213579>,  <38.022766, 30.119795, 22.175491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811459, 30.227028, 22.213579>,  <37.459282, 30.405750, 22.277058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811459, 30.227028, 22.213579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089276, 0.172499, -0.980956,
		0.465672, 0.877843, 0.111986,
		0.880443, -0.446806, -0.158698,
		38.075592, 30.092985, 22.165970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236176, 31.224504, 22.404476>,  <37.459282, 30.405750, 22.277058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236176, 31.224504, 22.404476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939297, 31.463642, 22.283333>,  <36.761169, 31.607124, 22.210646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939297, 31.463642, 22.283333>,  <37.236176, 31.224504, 22.404476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939297, 31.463642, 22.283333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181445, 0.255775, 0.949556,
		0.645150, 0.759712, -0.081360,
		-0.742198, 0.597844, -0.302859,
		36.716637, 31.642996, 22.192474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367989, 31.770531, 22.737566>,  <37.236176, 31.224504, 22.404476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367989, 31.770531, 22.737566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.969372, 31.780563, 22.705883>,  <36.730202, 31.786583, 22.686874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.969372, 31.780563, 22.705883>,  <37.367989, 31.770531, 22.737566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969372, 31.780563, 22.705883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071909, 0.217123, 0.973492,
		0.041613, 0.975822, -0.214569,
		-0.996543, 0.025081, -0.079206,
		36.670410, 31.788088, 22.682121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124229, 32.284126, 23.252081>,  <37.367989, 31.770531, 22.737566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124229, 32.284126, 23.252081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800491, 32.062958, 23.172844>,  <36.606251, 31.930256, 23.125301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800491, 32.062958, 23.172844>,  <37.124229, 32.284126, 23.252081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800491, 32.062958, 23.172844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359544, 0.199720, 0.911504,
		-0.464431, 0.808941, -0.360442,
		-0.809341, -0.552926, -0.198094,
		36.557690, 31.897079, 23.113417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497349, 32.771881, 23.403021>,  <37.124229, 32.284126, 23.252081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497349, 32.771881, 23.403021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370667, 32.396183, 23.455954>,  <36.294659, 32.170765, 23.487713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370667, 32.396183, 23.455954>,  <36.497349, 32.771881, 23.403021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370667, 32.396183, 23.455954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191667, 0.200004, 0.960865,
		-0.928958, 0.278946, -0.243365,
		-0.316703, -0.939248, 0.132331,
		36.275654, 32.114410, 23.495653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032516, 32.860405, 23.999784>,  <36.497349, 32.771881, 23.403021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032516, 32.860405, 23.999784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077744, 32.464088, 23.969999>,  <36.104877, 32.226299, 23.952127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077744, 32.464088, 23.969999>,  <36.032516, 32.860405, 23.999784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077744, 32.464088, 23.969999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201300, -0.096234, 0.974791,
		-0.972983, -0.095223, -0.210328,
		0.113063, -0.990794, -0.074465,
		36.111664, 32.166851, 23.947660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353828, 32.482224, 24.131042>,  <36.032516, 32.860405, 23.999784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353828, 32.482224, 24.131042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667137, 32.248791, 24.216759>,  <35.855122, 32.108730, 24.268188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667137, 32.248791, 24.216759>,  <35.353828, 32.482224, 24.131042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667137, 32.248791, 24.216759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302129, -0.056083, 0.951616,
		-0.543324, -0.810118, -0.220244,
		0.783273, -0.583578, 0.214289,
		35.902119, 32.073719, 24.281046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151085, 32.024742, 24.712337>,  <35.353828, 32.482224, 24.131042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151085, 32.024742, 24.712337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549217, 31.990177, 24.695131>,  <35.788097, 31.969439, 24.684807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549217, 31.990177, 24.695131>,  <35.151085, 32.024742, 24.712337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549217, 31.990177, 24.695131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027226, -0.176214, 0.983975,
		-0.092606, -0.980552, -0.173039,
		0.995331, -0.086411, -0.043015,
		35.847816, 31.964252, 24.682226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.071037, 34.025196, 20.489635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.349354, 33.798004, 20.665482>,  <39.516346, 33.661690, 20.770990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.349354, 33.798004, 20.665482>,  <39.071037, 34.025196, 20.489635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349354, 33.798004, 20.665482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490256, 0.071732, 0.868621,
		-0.524897, -0.819908, -0.228547,
		0.695796, -0.567984, 0.439617,
		39.558094, 33.627609, 20.797367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716068, 33.459526, 20.815653>,  <39.071037, 34.025196, 20.489635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716068, 33.459526, 20.815653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.063606, 33.507442, 21.007803>,  <39.272129, 33.536194, 21.123093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.063606, 33.507442, 21.007803>,  <38.716068, 33.459526, 20.815653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063606, 33.507442, 21.007803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495031, 0.224749, 0.839305,
		-0.007423, -0.967025, 0.254572,
		0.868844, 0.119791, 0.480376,
		39.324261, 33.543381, 21.151917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593914, 33.330814, 21.455484>,  <38.716068, 33.459526, 20.815653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593914, 33.330814, 21.455484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943977, 33.522095, 21.484941>,  <39.154015, 33.636864, 21.502615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943977, 33.522095, 21.484941>,  <38.593914, 33.330814, 21.455484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943977, 33.522095, 21.484941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242523, 0.301853, 0.921991,
		0.418674, -0.824744, 0.380144,
		0.875154, 0.478207, 0.073641,
		39.206524, 33.665558, 21.507034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870720, 33.079651, 22.086409>,  <38.593914, 33.330814, 21.455484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870720, 33.079651, 22.086409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.016670, 33.443573, 22.007290>,  <39.104240, 33.661926, 21.959818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.016670, 33.443573, 22.007290>,  <38.870720, 33.079651, 22.086409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016670, 33.443573, 22.007290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072250, 0.239470, 0.968212,
		0.928250, -0.338982, 0.153109,
		0.364871, 0.909805, -0.197796,
		39.126133, 33.716515, 21.947950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178013, 33.256405, 22.694500>,  <38.870720, 33.079651, 22.086409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178013, 33.256405, 22.694500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170719, 33.619213, 22.526222>,  <39.166344, 33.836899, 22.425257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170719, 33.619213, 22.526222>,  <39.178013, 33.256405, 22.694500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170719, 33.619213, 22.526222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134469, 0.414715, 0.899961,
		0.990750, 0.072984, 0.114402,
		-0.018239, 0.907020, -0.420693,
		39.165249, 33.891319, 22.400015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472767, 33.698532, 23.185034>,  <39.178013, 33.256405, 22.694500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472767, 33.698532, 23.185034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270573, 33.958229, 22.957710>,  <39.149258, 34.114048, 22.821316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270573, 33.958229, 22.957710>,  <39.472767, 33.698532, 23.185034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270573, 33.958229, 22.957710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266122, 0.509229, 0.818453,
		0.820770, 0.564955, -0.084631,
		-0.505485, 0.649239, -0.568307,
		39.118927, 34.153000, 22.787218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685207, 34.433395, 23.340525>,  <39.472767, 33.698532, 23.185034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685207, 34.433395, 23.340525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.310616, 34.448151, 23.201014>,  <39.085861, 34.457005, 23.117308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.310616, 34.448151, 23.201014>,  <39.685207, 34.433395, 23.340525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310616, 34.448151, 23.201014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310645, 0.374384, 0.873691,
		0.162805, 0.926540, -0.339144,
		-0.936480, 0.036888, -0.348776,
		39.029671, 34.459217, 23.096380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296608, 35.147182, 23.521988>,  <39.685207, 34.433395, 23.340525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296608, 35.147182, 23.521988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997837, 34.902897, 23.416824>,  <38.818573, 34.756325, 23.353725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997837, 34.902897, 23.416824>,  <39.296608, 35.147182, 23.521988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997837, 34.902897, 23.416824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500196, 0.255597, 0.827329,
		-0.438066, 0.749462, -0.496391,
		-0.746928, -0.610718, -0.262910,
		38.773758, 34.719681, 23.337952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629959, 35.574059, 23.567705>,  <39.296608, 35.147182, 23.521988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629959, 35.574059, 23.567705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.503563, 35.194649, 23.576200>,  <38.427723, 34.967003, 23.581297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.503563, 35.194649, 23.576200>,  <38.629959, 35.574059, 23.567705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503563, 35.194649, 23.576200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548824, 0.201005, 0.811411,
		-0.773912, 0.244745, -0.584089,
		-0.315994, -0.948523, 0.021239,
		38.408764, 34.910091, 23.582573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871223, 35.526386, 23.619949>,  <38.629959, 35.574059, 23.567705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871223, 35.526386, 23.619949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985806, 35.166142, 23.750694>,  <38.054554, 34.949993, 23.829142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985806, 35.166142, 23.750694>,  <37.871223, 35.526386, 23.619949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985806, 35.166142, 23.750694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618889, 0.086494, 0.780702,
		-0.731381, -0.425930, -0.532602,
		0.286457, -0.900612, 0.326863,
		38.071743, 34.895958, 23.848753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280483, 35.324142, 23.995104>,  <37.871223, 35.526386, 23.619949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280483, 35.324142, 23.995104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.558460, 35.069813, 24.129442>,  <37.725246, 34.917217, 24.210045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.558460, 35.069813, 24.129442>,  <37.280483, 35.324142, 23.995104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558460, 35.069813, 24.129442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444180, -0.012286, 0.895853,
		-0.565477, -0.771738, -0.290958,
		0.694939, -0.635822, 0.335844,
		37.766941, 34.879066, 24.230196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906605, 34.808956, 24.344082>,  <37.280483, 35.324142, 23.995104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906605, 34.808956, 24.344082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281124, 34.793507, 24.483713>,  <37.505836, 34.784237, 24.567492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281124, 34.793507, 24.483713>,  <36.906605, 34.808956, 24.344082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281124, 34.793507, 24.483713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350411, -0.035805, 0.935912,
		-0.023630, -0.998613, -0.047051,
		0.936298, -0.038602, 0.349079,
		37.562012, 34.781921, 24.588436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242065, 34.514236, 24.506065>,  <36.906605, 34.808956, 24.344082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242065, 34.514236, 24.506065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.028732, 34.839058, 24.411304>,  <35.900734, 35.033951, 24.354448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.028732, 34.839058, 24.411304>,  <36.242065, 34.514236, 24.506065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028732, 34.839058, 24.411304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244489, -0.120124, -0.962183,
		-0.809804, -0.571082, -0.134473,
		-0.533332, 0.812056, -0.236901,
		35.868732, 35.082676, 24.340235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785221, 34.348728, 23.964605>,  <36.242065, 34.514236, 24.506065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785221, 34.348728, 23.964605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.798351, 34.743626, 23.902279>,  <35.806229, 34.980564, 23.864883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.798351, 34.743626, 23.902279>,  <35.785221, 34.348728, 23.964605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798351, 34.743626, 23.902279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244738, -0.159094, -0.956448,
		-0.969033, -0.006739, -0.246837,
		0.032825, 0.987240, -0.155817,
		35.808197, 35.039799, 23.855534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410072, 34.432156, 23.334549>,  <35.785221, 34.348728, 23.964605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410072, 34.432156, 23.334549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.630692, 34.762768, 23.379530>,  <35.763065, 34.961136, 23.406519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.630692, 34.762768, 23.379530>,  <35.410072, 34.432156, 23.334549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630692, 34.762768, 23.379530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334091, -0.095364, -0.937704,
		-0.764313, 0.554761, -0.328733,
		0.551551, 0.826526, 0.112453,
		35.796158, 35.010727, 23.413265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268719, 34.888649, 22.804340>,  <35.410072, 34.432156, 23.334549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268719, 34.888649, 22.804340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.629688, 35.007679, 22.928970>,  <35.846272, 35.079098, 23.003748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.629688, 35.007679, 22.928970>,  <35.268719, 34.888649, 22.804340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629688, 35.007679, 22.928970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324140, 0.007507, -0.945980,
		-0.283837, 0.954669, -0.089680,
		0.902424, 0.297573, 0.311577,
		35.900417, 35.096951, 23.022444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366329, 35.500534, 22.379904>,  <35.268719, 34.888649, 22.804340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366329, 35.500534, 22.379904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.719128, 35.377884, 22.523043>,  <35.930809, 35.304295, 22.608927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.719128, 35.377884, 22.523043>,  <35.366329, 35.500534, 22.379904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719128, 35.377884, 22.523043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412625, 0.135696, -0.900737,
		0.227635, 0.942107, 0.246207,
		0.882000, -0.306630, 0.357848,
		35.983727, 35.285896, 22.630398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775890, 35.937603, 22.062649>,  <35.366329, 35.500534, 22.379904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775890, 35.937603, 22.062649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.015488, 35.642773, 22.187822>,  <36.159245, 35.465874, 22.262926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.015488, 35.642773, 22.187822>,  <35.775890, 35.937603, 22.062649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015488, 35.642773, 22.187822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463139, 0.000093, -0.886286,
		0.653231, 0.675810, 0.341424,
		0.598992, -0.737076, 0.312933,
		36.195187, 35.421650, 22.281702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433292, 36.184074, 22.006294>,  <35.775890, 35.937603, 22.062649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433292, 36.184074, 22.006294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.443005, 35.784267, 21.998516>,  <36.448830, 35.544384, 21.993849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.443005, 35.784267, 21.998516>,  <36.433292, 36.184074, 22.006294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443005, 35.784267, 21.998516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609674, 0.030219, -0.792076,
		0.792280, 0.007372, 0.610113,
		0.024276, -0.999516, -0.019447,
		36.450287, 35.484413, 21.992682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173828, 35.955532, 21.979012>,  <36.433292, 36.184074, 22.006294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173828, 35.955532, 21.979012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969181, 35.640274, 21.842148>,  <36.846394, 35.451118, 21.760029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969181, 35.640274, 21.842148>,  <37.173828, 35.955532, 21.979012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969181, 35.640274, 21.842148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604536, -0.047218, -0.795177,
		0.610560, -0.613675, 0.500620,
		-0.511618, -0.788146, -0.342160,
		36.815697, 35.403831, 21.739500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629002, 35.562523, 21.610041>,  <37.173828, 35.955532, 21.979012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629002, 35.562523, 21.610041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.297245, 35.375954, 21.487038>,  <37.098190, 35.264011, 21.413237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.297245, 35.375954, 21.487038>,  <37.629002, 35.562523, 21.610041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297245, 35.375954, 21.487038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427636, -0.175839, -0.886684,
		0.359498, -0.866908, 0.345298,
		-0.829390, -0.466423, -0.307508,
		37.048428, 35.236027, 21.394785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787647, 34.996910, 21.410381>,  <37.629002, 35.562523, 21.610041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787647, 34.996910, 21.410381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.442249, 35.033859, 21.212049>,  <37.235012, 35.056030, 21.093050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.442249, 35.033859, 21.212049>,  <37.787647, 34.996910, 21.410381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442249, 35.033859, 21.212049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449364, -0.305505, -0.839487,
		-0.229025, -0.947699, 0.222292,
		-0.863493, 0.092374, -0.495830,
		37.183201, 35.061573, 21.063301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795033, 34.494446, 20.994387>,  <37.787647, 34.996910, 21.410381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795033, 34.494446, 20.994387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.511276, 34.710159, 20.812868>,  <37.341022, 34.839588, 20.703957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.511276, 34.710159, 20.812868>,  <37.795033, 34.494446, 20.994387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511276, 34.710159, 20.812868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402761, -0.218200, -0.888916,
		-0.578401, -0.813361, -0.062416,
		-0.709391, 0.539288, -0.453797,
		37.298458, 34.871944, 20.676729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692646, 34.043312, 20.563150>,  <37.795033, 34.494446, 20.994387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692646, 34.043312, 20.563150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580250, 34.405209, 20.435091>,  <37.512814, 34.622345, 20.358255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580250, 34.405209, 20.435091>,  <37.692646, 34.043312, 20.563150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580250, 34.405209, 20.435091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440741, -0.174679, -0.880474,
		-0.852521, -0.388505, -0.349673,
		-0.280988, 0.904738, -0.320148,
		37.495953, 34.676628, 20.339046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333878, 33.958759, 19.967817>,  <37.692646, 34.043312, 20.563150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333878, 33.958759, 19.967817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.478508, 34.331398, 19.952866>,  <37.565285, 34.554981, 19.943895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.478508, 34.331398, 19.952866>,  <37.333878, 33.958759, 19.967817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478508, 34.331398, 19.952866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442430, -0.206730, -0.872650,
		-0.820683, 0.298990, -0.486913,
		0.361573, 0.931594, -0.037378,
		37.586979, 34.610878, 19.941652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383961, 33.276199, 19.653664>,  <37.333878, 33.958759, 19.967817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383961, 33.276199, 19.653664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.114948, 33.037766, 19.478220>,  <36.953541, 32.894707, 19.372953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.114948, 33.037766, 19.478220>,  <37.383961, 33.276199, 19.653664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114948, 33.037766, 19.478220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234125, -0.390855, 0.890178,
		-0.702056, 0.701366, 0.123306,
		-0.672535, -0.596086, -0.438609,
		36.913189, 32.858940, 19.346638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738941, 33.403797, 19.960823>,  <37.383961, 33.276199, 19.653664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738941, 33.403797, 19.960823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800652, 33.031124, 19.829269>,  <36.837677, 32.807522, 19.750338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800652, 33.031124, 19.829269>,  <36.738941, 33.403797, 19.960823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800652, 33.031124, 19.829269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177603, -0.353599, 0.918381,
		-0.971934, -0.083276, -0.220023,
		0.154279, -0.931683, -0.328885,
		36.846935, 32.751617, 19.730604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330605, 33.018951, 20.303661>,  <36.738941, 33.403797, 19.960823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330605, 33.018951, 20.303661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543636, 32.712360, 20.160067>,  <36.671455, 32.528408, 20.073910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543636, 32.712360, 20.160067>,  <36.330605, 33.018951, 20.303661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543636, 32.712360, 20.160067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257965, -0.550965, 0.793657,
		-0.806108, -0.330081, -0.491158,
		0.532582, -0.766475, -0.358988,
		36.703411, 32.482418, 20.052370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914669, 32.425552, 20.435659>,  <36.330605, 33.018951, 20.303661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914669, 32.425552, 20.435659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.290970, 32.301346, 20.381149>,  <36.516750, 32.226822, 20.348444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.290970, 32.301346, 20.381149>,  <35.914669, 32.425552, 20.435659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290970, 32.301346, 20.381149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060670, -0.549512, 0.833280,
		-0.333628, -0.775641, -0.535793,
		0.940750, -0.310512, -0.136274,
		36.573196, 32.208191, 20.340267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936653, 31.609621, 20.326284>,  <35.914669, 32.425552, 20.435659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936653, 31.609621, 20.326284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.279942, 31.753220, 20.473028>,  <36.485912, 31.839378, 20.561073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.279942, 31.753220, 20.473028>,  <35.936653, 31.609621, 20.326284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279942, 31.753220, 20.473028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108228, -0.572095, 0.813016,
		0.501746, -0.737449, -0.452128,
		0.858218, 0.358995, 0.366859,
		36.537407, 31.860918, 20.583086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153809, 31.066271, 20.762110>,  <35.936653, 31.609621, 20.326284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153809, 31.066271, 20.762110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.351475, 31.391256, 20.885851>,  <36.470074, 31.586248, 20.960094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.351475, 31.391256, 20.885851>,  <36.153809, 31.066271, 20.762110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351475, 31.391256, 20.885851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025678, -0.342039, 0.939335,
		0.868988, -0.472132, -0.148162,
		0.494167, 0.812466, 0.309351,
		36.499725, 31.634996, 20.978657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517307, 30.808632, 21.340794>,  <36.153809, 31.066271, 20.762110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517307, 30.808632, 21.340794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.564087, 31.204477, 21.374237>,  <36.592155, 31.441984, 21.394302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.564087, 31.204477, 21.374237>,  <36.517307, 30.808632, 21.340794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564087, 31.204477, 21.374237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087887, -0.094169, 0.991669,
		0.989241, -0.108628, -0.097987,
		0.116950, 0.989612, 0.083609,
		36.599171, 31.501362, 21.399321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144867, 30.931677, 21.718714>,  <36.517307, 30.808632, 21.340794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144867, 30.931677, 21.718714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.896114, 31.243492, 21.748615>,  <36.746864, 31.430582, 21.766556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.896114, 31.243492, 21.748615>,  <37.144867, 30.931677, 21.718714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896114, 31.243492, 21.748615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038336, -0.125647, 0.991334,
		0.782175, 0.613624, 0.108021,
		-0.621879, 0.779537, 0.074754,
		36.709549, 31.477354, 21.771042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774136, 30.762587, 21.446630>,  <37.144867, 30.931677, 21.718714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774136, 30.762587, 21.446630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.009460, 30.457628, 21.554440>,  <38.150654, 30.274652, 21.619125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.009460, 30.457628, 21.554440>,  <37.774136, 30.762587, 21.446630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009460, 30.457628, 21.554440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223016, -0.167406, -0.960333,
		0.777275, 0.625080, 0.071541,
		0.588308, -0.762397, 0.269524,
		38.185951, 30.228909, 21.635296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409111, 30.943592, 21.256310>,  <37.774136, 30.762587, 21.446630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409111, 30.943592, 21.256310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.336967, 30.550289, 21.266708>,  <38.293682, 30.314308, 21.272947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.336967, 30.550289, 21.266708>,  <38.409111, 30.943592, 21.256310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336967, 30.550289, 21.266708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002776, -0.026941, -0.999633,
		0.983596, -0.180225, 0.007589,
		-0.180364, -0.983256, 0.025999,
		38.282860, 30.255312, 21.274508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762272, 30.695028, 20.681492>,  <38.409111, 30.943592, 21.256310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762272, 30.695028, 20.681492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522968, 30.387276, 20.771055>,  <38.379387, 30.202623, 20.824793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522968, 30.387276, 20.771055>,  <38.762272, 30.695028, 20.681492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522968, 30.387276, 20.771055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146590, -0.169628, -0.974545,
		0.787780, -0.615853, -0.011302,
		-0.598259, -0.769384, 0.223907,
		38.343491, 30.156460, 20.838226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065712, 30.160206, 20.400423>,  <38.762272, 30.695028, 20.681492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065712, 30.160206, 20.400423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.681175, 30.063663, 20.453457>,  <38.450455, 30.005739, 20.485277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.681175, 30.063663, 20.453457>,  <39.065712, 30.160206, 20.400423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681175, 30.063663, 20.453457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078064, -0.222860, -0.971720,
		0.264077, -0.944501, 0.195403,
		-0.961337, -0.241355, 0.132584,
		38.392773, 29.991257, 20.493233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074352, 29.580395, 20.098295>,  <39.065712, 30.160206, 20.400423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074352, 29.580395, 20.098295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.681919, 29.656715, 20.111380>,  <38.446461, 29.702507, 20.119230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.681919, 29.656715, 20.111380>,  <39.074352, 29.580395, 20.098295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681919, 29.656715, 20.111380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110463, -0.413015, -0.904000,
		-0.158975, -0.890513, 0.426279,
		-0.981083, 0.190802, 0.032710,
		38.387592, 29.713957, 20.121193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685970, 28.888935, 20.100145>,  <39.074352, 29.580395, 20.098295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685970, 28.888935, 20.100145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441357, 29.177639, 19.970474>,  <38.294590, 29.350863, 19.892672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441357, 29.177639, 19.970474>,  <38.685970, 28.888935, 20.100145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441357, 29.177639, 19.970474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258771, -0.569633, -0.780100,
		-0.747710, -0.393165, 0.535118,
		-0.611529, 0.721761, -0.324180,
		38.257896, 29.394167, 19.873220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071499, 28.510328, 19.886446>,  <38.685970, 28.888935, 20.100145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071499, 28.510328, 19.886446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.060253, 28.874096, 19.720476>,  <38.053505, 29.092358, 19.620893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.060253, 28.874096, 19.720476>,  <38.071499, 28.510328, 19.886446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060253, 28.874096, 19.720476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112007, -0.415342, -0.902743,
		-0.993310, 0.021096, 0.113538,
		-0.028113, 0.909421, -0.414926,
		38.051819, 29.146923, 19.595999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487232, 28.493574, 19.413374>,  <38.071499, 28.510328, 19.886446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487232, 28.493574, 19.413374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748806, 28.776829, 19.306858>,  <37.905750, 28.946781, 19.242949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748806, 28.776829, 19.306858>,  <37.487232, 28.493574, 19.413374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748806, 28.776829, 19.306858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042533, -0.385836, -0.921587,
		-0.755355, 0.591330, -0.282430,
		0.653934, 0.708138, -0.266292,
		37.944984, 28.989269, 19.226971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458401, 28.648100, 18.647789>,  <37.487232, 28.493574, 19.413374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458401, 28.648100, 18.647789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.827309, 28.772785, 18.739231>,  <38.048653, 28.847597, 18.794096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.827309, 28.772785, 18.739231>,  <37.458401, 28.648100, 18.647789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827309, 28.772785, 18.739231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347994, -0.412020, -0.842104,
		-0.168305, 0.856197, -0.488467,
		0.922266, 0.311714, 0.228607,
		38.103989, 28.866299, 18.807814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.071678, 30.158007, 34.764095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397301, 30.334593, 34.613140>,  <37.592674, 30.440544, 34.522568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397301, 30.334593, 34.613140>,  <37.071678, 30.158007, 34.764095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397301, 30.334593, 34.613140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078493, -0.560201, -0.824630,
		-0.575461, 0.700915, -0.421382,
		0.814054, 0.441467, -0.377390,
		37.641518, 30.467033, 34.499924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827808, 30.526047, 34.158104>,  <37.071678, 30.158007, 34.764095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827808, 30.526047, 34.158104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.218689, 30.490927, 34.080776>,  <37.453217, 30.469854, 34.034378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.218689, 30.490927, 34.080776>,  <36.827808, 30.526047, 34.158104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218689, 30.490927, 34.080776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209585, -0.253117, -0.944461,
		0.033993, 0.963443, -0.265748,
		0.977199, -0.087802, -0.193319,
		37.511848, 30.464586, 34.022781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964092, 30.817354, 33.470089>,  <36.827808, 30.526047, 34.158104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964092, 30.817354, 33.470089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248753, 30.547970, 33.550091>,  <37.419548, 30.386339, 33.598091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248753, 30.547970, 33.550091>,  <36.964092, 30.817354, 33.470089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248753, 30.547970, 33.550091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032677, -0.316114, -0.948158,
		0.701773, 0.668222, -0.246970,
		0.711651, -0.673462, 0.200005,
		37.462250, 30.345932, 33.610092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448372, 30.964785, 32.859787>,  <36.964092, 30.817354, 33.470089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448372, 30.964785, 32.859787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527721, 30.602533, 33.009716>,  <37.575329, 30.385183, 33.099674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527721, 30.602533, 33.009716>,  <37.448372, 30.964785, 32.859787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527721, 30.602533, 33.009716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066928, -0.369010, -0.927013,
		0.977839, 0.208979, -0.012590,
		0.198372, -0.905627, 0.374819,
		37.587234, 30.330845, 33.122162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857414, 30.677008, 32.336773>,  <37.448372, 30.964785, 32.859787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857414, 30.677008, 32.336773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.786674, 30.335327, 32.532352>,  <37.744232, 30.130320, 32.649700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.786674, 30.335327, 32.532352>,  <37.857414, 30.677008, 32.336773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786674, 30.335327, 32.532352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061340, -0.486243, -0.871668,
		0.982325, -0.184146, 0.033596,
		-0.176850, -0.854200, 0.488944,
		37.733620, 30.079067, 32.679035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416695, 30.245178, 32.179348>,  <37.857414, 30.677008, 32.336773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416695, 30.245178, 32.179348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085129, 30.039488, 32.267410>,  <37.886189, 29.916073, 32.320248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085129, 30.039488, 32.267410>,  <38.416695, 30.245178, 32.179348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085129, 30.039488, 32.267410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041077, -0.448477, -0.892850,
		0.557864, -0.731054, 0.392872,
		-0.828915, -0.514227, 0.220159,
		37.836452, 29.885220, 32.333458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537914, 29.476435, 32.022156>,  <38.416695, 30.245178, 32.179348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537914, 29.476435, 32.022156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.141880, 29.532410, 32.017189>,  <37.904259, 29.565994, 32.014210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.141880, 29.532410, 32.017189>,  <38.537914, 29.476435, 32.022156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141880, 29.532410, 32.017189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055298, -0.469430, -0.881236,
		-0.129148, -0.871810, 0.472513,
		-0.990082, 0.139939, -0.012417,
		37.844856, 29.574392, 32.013466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381397, 29.095150, 31.488741>,  <38.537914, 29.476435, 32.022156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381397, 29.095150, 31.488741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028526, 29.271078, 31.556051>,  <37.816803, 29.376635, 31.596437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028526, 29.271078, 31.556051>,  <38.381397, 29.095150, 31.488741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028526, 29.271078, 31.556051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282109, -0.207471, -0.936681,
		-0.377058, -0.873793, 0.307104,
		-0.882180, 0.439820, 0.168276,
		37.763870, 29.403025, 31.606535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734848, 28.635420, 31.168524>,  <38.381397, 29.095150, 31.488741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734848, 28.635420, 31.168524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614243, 29.014061, 31.214182>,  <37.541878, 29.241245, 31.241577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614243, 29.014061, 31.214182>,  <37.734848, 28.635420, 31.168524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614243, 29.014061, 31.214182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486735, -0.049875, -0.872125,
		-0.819863, -0.318519, 0.475783,
		-0.301518, 0.946603, 0.114143,
		37.523788, 29.298042, 31.248425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974457, 28.693335, 31.211109>,  <37.734848, 28.635420, 31.168524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974457, 28.693335, 31.211109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.100998, 29.060682, 31.116013>,  <37.176922, 29.281092, 31.058954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.100998, 29.060682, 31.116013>,  <36.974457, 28.693335, 31.211109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100998, 29.060682, 31.116013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489067, -0.056853, -0.870391,
		-0.812857, 0.391619, 0.431159,
		0.316349, 0.918369, -0.237742,
		37.195904, 29.336193, 31.044689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472691, 28.931942, 30.842794>,  <36.974457, 28.693335, 31.211109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472691, 28.931942, 30.842794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765305, 29.184587, 30.740097>,  <36.940872, 29.336174, 30.678478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765305, 29.184587, 30.740097>,  <36.472691, 28.931942, 30.842794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765305, 29.184587, 30.740097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355275, 0.031729, -0.934223,
		-0.581923, 0.774633, 0.247608,
		0.731537, 0.631615, -0.256744,
		36.984764, 29.374071, 30.663074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201496, 29.414793, 30.415176>,  <36.472691, 28.931942, 30.842794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201496, 29.414793, 30.415176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585716, 29.474617, 30.321394>,  <36.816250, 29.510511, 30.265125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585716, 29.474617, 30.321394>,  <36.201496, 29.414793, 30.415176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585716, 29.474617, 30.321394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233458, -0.024439, -0.972060,
		-0.151110, 0.988451, 0.011440,
		0.960554, 0.149559, -0.234454,
		36.873882, 29.519485, 30.251059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675667, 30.010845, 30.509012>,  <36.201496, 29.414793, 30.415176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675667, 30.010845, 30.509012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310509, 30.107861, 30.377680>,  <35.091415, 30.166069, 30.298880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310509, 30.107861, 30.377680>,  <35.675667, 30.010845, 30.509012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310509, 30.107861, 30.377680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337239, 0.005070, 0.941405,
		0.229991, 0.970129, 0.077165,
		-0.912893, 0.242538, -0.328332,
		35.036640, 30.180622, 30.279181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451355, 30.375610, 31.006914>,  <35.675667, 30.010845, 30.509012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451355, 30.375610, 31.006914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109295, 30.330044, 30.804632>,  <34.904060, 30.302704, 30.683262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109295, 30.330044, 30.804632>,  <35.451355, 30.375610, 31.006914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109295, 30.330044, 30.804632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518281, 0.206785, 0.829834,
		0.010040, 0.971732, -0.235874,
		-0.855152, -0.113917, -0.505706,
		34.852749, 30.295868, 30.652920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073345, 30.946383, 31.211637>,  <35.451355, 30.375610, 31.006914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073345, 30.946383, 31.211637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818928, 30.670506, 31.073206>,  <34.666275, 30.504980, 30.990147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818928, 30.670506, 31.073206>,  <35.073345, 30.946383, 31.211637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818928, 30.670506, 31.073206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601162, 0.161707, 0.782595,
		-0.483787, 0.705815, -0.517470,
		-0.636046, -0.689693, -0.346077,
		34.628113, 30.463598, 30.969383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414219, 31.251049, 31.093922>,  <35.073345, 30.946383, 31.211637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414219, 31.251049, 31.093922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335285, 30.861786, 31.141289>,  <34.287926, 30.628227, 31.169708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335285, 30.861786, 31.141289>,  <34.414219, 31.251049, 31.093922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335285, 30.861786, 31.141289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623159, 0.217765, 0.751167,
		-0.756791, 0.074438, -0.649405,
		-0.197333, -0.973158, 0.118416,
		34.276085, 30.569838, 31.176813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690067, 31.164890, 31.314905>,  <34.414219, 31.251049, 31.093922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690067, 31.164890, 31.314905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903236, 30.844894, 31.425184>,  <34.031139, 30.652897, 31.491352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903236, 30.844894, 31.425184>,  <33.690067, 31.164890, 31.314905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903236, 30.844894, 31.425184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494930, -0.030432, 0.868400,
		-0.686319, -0.599244, -0.412156,
		0.532926, -0.799987, 0.275698,
		34.063114, 30.604898, 31.507895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159897, 30.611168, 31.480694>,  <33.690067, 31.164890, 31.314905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159897, 30.611168, 31.480694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515720, 30.572489, 31.659281>,  <33.729214, 30.549282, 31.766434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515720, 30.572489, 31.659281>,  <33.159897, 30.611168, 31.480694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515720, 30.572489, 31.659281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429270, 0.157336, 0.889367,
		-0.156244, -0.982800, 0.098451,
		0.889559, -0.096696, 0.446469,
		33.782589, 30.543480, 31.793221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990101, 30.241184, 32.141350>,  <33.159897, 30.611168, 31.480694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990101, 30.241184, 32.141350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366688, 30.365383, 32.193851>,  <33.592640, 30.439901, 32.225353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366688, 30.365383, 32.193851>,  <32.990101, 30.241184, 32.141350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366688, 30.365383, 32.193851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223801, 0.284548, 0.932173,
		0.252082, -0.906989, 0.337381,
		0.941471, 0.310490, 0.131256,
		33.649128, 30.458532, 32.233227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115364, 30.030499, 32.794399>,  <32.990101, 30.241184, 32.141350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115364, 30.030499, 32.794399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353977, 30.334078, 32.689980>,  <33.497143, 30.516226, 32.627327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353977, 30.334078, 32.689980>,  <33.115364, 30.030499, 32.794399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353977, 30.334078, 32.689980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200046, 0.455596, 0.867418,
		0.777261, -0.465218, 0.423601,
		0.596529, 0.758950, -0.261052,
		33.532936, 30.561762, 32.611664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250584, 30.249229, 33.388279>,  <33.115364, 30.030499, 32.794399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250584, 30.249229, 33.388279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.405231, 30.553547, 33.179771>,  <33.498020, 30.736137, 33.054668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.405231, 30.553547, 33.179771>,  <33.250584, 30.249229, 33.388279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405231, 30.553547, 33.179771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097262, 0.595702, 0.797295,
		0.917096, -0.257551, 0.304307,
		0.386621, 0.760793, -0.521266,
		33.521217, 30.781784, 33.023392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725086, 30.479485, 33.809196>,  <33.250584, 30.249229, 33.388279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725086, 30.479485, 33.809196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582973, 30.763002, 33.565430>,  <33.497707, 30.933113, 33.419170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582973, 30.763002, 33.565430>,  <33.725086, 30.479485, 33.809196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582973, 30.763002, 33.565430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354060, 0.501329, 0.789500,
		0.865111, 0.496262, 0.072845,
		-0.355280, 0.708797, -0.609412,
		33.476391, 30.975641, 33.382607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875336, 31.126286, 34.098560>,  <33.725086, 30.479485, 33.809196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875336, 31.126286, 34.098560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592342, 31.255573, 33.847164>,  <33.422546, 31.333147, 33.696327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592342, 31.255573, 33.847164>,  <33.875336, 31.126286, 34.098560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592342, 31.255573, 33.847164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363129, 0.596672, 0.715626,
		0.606307, 0.734514, -0.304763,
		-0.707481, 0.323221, -0.628490,
		33.380096, 31.352539, 33.658619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891850, 31.754642, 34.260529>,  <33.875336, 31.126286, 34.098560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891850, 31.754642, 34.260529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536129, 31.723768, 34.080223>,  <33.322697, 31.705244, 33.972042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536129, 31.723768, 34.080223>,  <33.891850, 31.754642, 34.260529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536129, 31.723768, 34.080223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373321, 0.691836, 0.618058,
		0.264148, 0.717918, -0.644065,
		-0.889302, -0.077184, -0.450761,
		33.269337, 31.700613, 33.944996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686501, 32.465099, 34.193707>,  <33.891850, 31.754642, 34.260529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686501, 32.465099, 34.193707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339397, 32.270168, 34.154709>,  <33.131134, 32.153210, 34.131310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339397, 32.270168, 34.154709>,  <33.686501, 32.465099, 34.193707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339397, 32.270168, 34.154709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450748, 0.689100, 0.567422,
		-0.209337, 0.536331, -0.817635,
		-0.867758, -0.487330, -0.097496,
		33.079071, 32.123970, 34.125462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060730, 32.932476, 33.929127>,  <33.686501, 32.465099, 34.193707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060730, 32.932476, 33.929127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913616, 32.627724, 34.142391>,  <32.825348, 32.444870, 34.270351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913616, 32.627724, 34.142391>,  <33.060730, 32.932476, 33.929127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913616, 32.627724, 34.142391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518472, 0.643970, 0.562573,
		-0.771957, -0.069522, -0.631862,
		-0.367789, -0.761885, 0.533163,
		32.803280, 32.399158, 34.302341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897652, 33.062366, 34.612247>,  <33.060730, 32.932476, 33.929127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897652, 33.062366, 34.612247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136990, 33.357349, 34.737556>,  <33.280590, 33.534340, 34.812740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136990, 33.357349, 34.737556>,  <32.897652, 33.062366, 34.612247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136990, 33.357349, 34.737556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018403, 0.403528, -0.914782,
		-0.801030, 0.541587, 0.255019,
		0.598342, 0.737461, 0.313271,
		33.316494, 33.578587, 34.831539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994091, 33.767567, 34.433762>,  <32.897652, 33.062366, 34.612247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994091, 33.767567, 34.433762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392277, 33.749989, 34.467491>,  <33.631187, 33.739441, 34.487728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392277, 33.749989, 34.467491>,  <32.994091, 33.767567, 34.433762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392277, 33.749989, 34.467491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095060, 0.481815, -0.871102,
		-0.002347, 0.875170, 0.483809,
		0.995469, -0.043947, 0.084325,
		33.690918, 33.736805, 34.492790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392639, 34.458092, 34.309517>,  <32.994091, 33.767567, 34.433762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392639, 34.458092, 34.309517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608704, 34.142185, 34.193249>,  <33.738342, 33.952641, 34.123486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608704, 34.142185, 34.193249>,  <33.392639, 34.458092, 34.309517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608704, 34.142185, 34.193249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227537, 0.469588, -0.853061,
		0.810219, 0.394650, 0.433354,
		0.540159, -0.789771, -0.290672,
		33.770752, 33.905254, 34.106049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992462, 34.745270, 33.961784>,  <33.392639, 34.458092, 34.309517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992462, 34.745270, 33.961784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006504, 34.368027, 33.829533>,  <34.014931, 34.141682, 33.750183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006504, 34.368027, 33.829533>,  <33.992462, 34.745270, 33.961784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006504, 34.368027, 33.829533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220293, 0.330000, -0.917917,
		0.974802, -0.040608, 0.219346,
		0.035109, -0.943107, -0.330631,
		34.017036, 34.085094, 33.730343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549896, 34.743191, 33.499695>,  <33.992462, 34.745270, 33.961784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549896, 34.743191, 33.499695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328621, 34.427959, 33.391682>,  <34.195854, 34.238823, 33.326874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328621, 34.427959, 33.391682>,  <34.549896, 34.743191, 33.499695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328621, 34.427959, 33.391682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312240, 0.104364, -0.944253,
		0.772324, -0.606668, 0.188335,
		-0.553193, -0.788075, -0.270029,
		34.162663, 34.191536, 33.310673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944923, 34.237606, 33.208565>,  <34.549896, 34.743191, 33.499695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944923, 34.237606, 33.208565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569176, 34.190041, 33.079910>,  <34.343727, 34.161503, 33.002716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569176, 34.190041, 33.079910>,  <34.944923, 34.237606, 33.208565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569176, 34.190041, 33.079910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275564, 0.296478, -0.914421,
		0.204095, -0.947608, -0.245733,
		-0.939367, -0.118913, -0.321636,
		34.287365, 34.154366, 32.983418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949100, 33.721222, 32.708866>,  <34.944923, 34.237606, 33.208565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949100, 33.721222, 32.708866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609890, 33.925465, 32.652107>,  <34.406364, 34.048008, 32.618053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609890, 33.925465, 32.652107>,  <34.949100, 33.721222, 32.708866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609890, 33.925465, 32.652107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187439, 0.038536, -0.981520,
		-0.495701, -0.858951, -0.128387,
		-0.848025, 0.510605, -0.141898,
		34.355484, 34.078648, 32.609539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728500, 33.483189, 32.022343>,  <34.949100, 33.721222, 32.708866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728500, 33.483189, 32.022343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529457, 33.820797, 32.102367>,  <34.410030, 34.023361, 32.150383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529457, 33.820797, 32.102367>,  <34.728500, 33.483189, 32.022343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529457, 33.820797, 32.102367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029641, 0.247057, -0.968547,
		-0.866898, -0.476023, -0.147954,
		-0.497604, 0.844017, 0.200064,
		34.380177, 34.074001, 32.162388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162266, 33.468605, 31.592199>,  <34.728500, 33.483189, 32.022343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162266, 33.468605, 31.592199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233841, 33.853344, 31.674978>,  <34.276787, 34.084187, 31.724646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233841, 33.853344, 31.674978>,  <34.162266, 33.468605, 31.592199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233841, 33.853344, 31.674978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084920, 0.224654, -0.970731,
		-0.980190, 0.156123, 0.121878,
		0.178934, 0.961850, 0.206946,
		34.287521, 34.141899, 31.737062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734146, 33.811501, 31.141342>,  <34.162266, 33.468605, 31.592199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734146, 33.811501, 31.141342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.002113, 34.084652, 31.257877>,  <34.162895, 34.248543, 31.327799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.002113, 34.084652, 31.257877>,  <33.734146, 33.811501, 31.141342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002113, 34.084652, 31.257877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167616, 0.243167, -0.955392,
		-0.723264, 0.688870, 0.048440,
		0.669921, 0.682882, 0.291340,
		34.203091, 34.289516, 31.345280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600159, 34.360939, 30.723448>,  <33.734146, 33.811501, 31.141342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600159, 34.360939, 30.723448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966290, 34.438976, 30.864370>,  <34.185966, 34.485798, 30.948925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966290, 34.438976, 30.864370>,  <33.600159, 34.360939, 30.723448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966290, 34.438976, 30.864370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253983, 0.399252, -0.880960,
		-0.312531, 0.895843, 0.315894,
		0.915323, 0.195095, 0.352308,
		34.240887, 34.497505, 30.970062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736912, 34.960316, 30.492594>,  <33.600159, 34.360939, 30.723448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736912, 34.960316, 30.492594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102245, 34.813446, 30.563032>,  <34.321445, 34.725327, 30.605295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102245, 34.813446, 30.563032>,  <33.736912, 34.960316, 30.492594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102245, 34.813446, 30.563032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330923, 0.417231, -0.846409,
		0.237303, 0.831327, 0.502575,
		0.913333, -0.367169, 0.176095,
		34.376244, 34.703297, 30.615860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122944, 35.496647, 30.357302>,  <33.736912, 34.960316, 30.492594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122944, 35.496647, 30.357302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380917, 35.192383, 30.327757>,  <34.535698, 35.009823, 30.310030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380917, 35.192383, 30.327757>,  <34.122944, 35.496647, 30.357302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380917, 35.192383, 30.327757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453114, 0.458415, -0.764554,
		0.615430, 0.459615, 0.640313,
		0.644929, -0.760664, -0.073864,
		34.574394, 34.964184, 30.305597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731670, 35.839230, 30.361452>,  <34.122944, 35.496647, 30.357302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731670, 35.839230, 30.361452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781059, 35.481041, 30.190390>,  <34.810692, 35.266129, 30.087751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781059, 35.481041, 30.190390>,  <34.731670, 35.839230, 30.361452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781059, 35.481041, 30.190390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440423, 0.435636, -0.785015,
		0.889259, -0.091423, 0.448174,
		0.123472, -0.895468, -0.427658,
		34.818100, 35.212402, 30.062092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356819, 35.869537, 30.060713>,  <34.731670, 35.839230, 30.361452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356819, 35.869537, 30.060713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184986, 35.576660, 29.849298>,  <35.081886, 35.400932, 29.722450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184986, 35.576660, 29.849298>,  <35.356819, 35.869537, 30.060713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184986, 35.576660, 29.849298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370394, 0.390926, -0.842606,
		0.823572, -0.557733, 0.103268,
		-0.429579, -0.732196, -0.528536,
		35.056114, 35.357002, 29.690737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769703, 35.893269, 29.429092>,  <35.356819, 35.869537, 30.060713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769703, 35.893269, 29.429092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472378, 35.647186, 29.324013>,  <35.293983, 35.499538, 29.260965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472378, 35.647186, 29.324013>,  <35.769703, 35.893269, 29.429092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472378, 35.647186, 29.324013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261534, 0.094188, -0.960588,
		0.615699, -0.782723, 0.090885,
		-0.743314, -0.615202, -0.262700,
		35.249382, 35.462627, 29.245203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942417, 35.283314, 28.925211>,  <35.769703, 35.893269, 29.429092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942417, 35.283314, 28.925211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554916, 35.369030, 28.875240>,  <35.322418, 35.420460, 28.845259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554916, 35.369030, 28.875240>,  <35.942417, 35.283314, 28.925211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554916, 35.369030, 28.875240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135996, 0.037666, -0.989993,
		-0.207438, -0.976044, -0.065632,
		-0.968749, 0.214288, -0.124925,
		35.264290, 35.433315, 28.837763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748333, 34.955742, 28.367184>,  <35.942417, 35.283314, 28.925211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748333, 34.955742, 28.367184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428307, 35.194859, 28.387341>,  <35.236290, 35.338329, 28.399435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428307, 35.194859, 28.387341>,  <35.748333, 34.955742, 28.367184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428307, 35.194859, 28.387341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082611, -0.026583, -0.996227,
		-0.594196, -0.801211, 0.070652,
		-0.800066, 0.597791, 0.050394,
		35.188286, 35.374195, 28.402458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198757, 34.701717, 27.975588>,  <35.748333, 34.955742, 28.367184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198757, 34.701717, 27.975588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100708, 35.088120, 28.008448>,  <35.041878, 35.319962, 28.028164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100708, 35.088120, 28.008448>,  <35.198757, 34.701717, 27.975588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100708, 35.088120, 28.008448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173858, 0.039560, -0.983976,
		-0.953776, -0.255477, 0.158251,
		-0.245122, 0.966006, 0.082148,
		35.027172, 35.377922, 28.033092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547577, 34.762787, 27.571333>,  <35.198757, 34.701717, 27.975588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547577, 34.762787, 27.571333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671471, 35.142776, 27.587420>,  <34.745808, 35.370770, 27.597071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671471, 35.142776, 27.587420>,  <34.547577, 34.762787, 27.571333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671471, 35.142776, 27.587420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210138, 0.109643, -0.971504,
		-0.927310, 0.292462, 0.233586,
		0.309739, 0.949971, 0.040216,
		34.764393, 35.427769, 27.599483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096027, 35.118671, 27.221678>,  <34.547577, 34.762787, 27.571333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096027, 35.118671, 27.221678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421669, 35.350883, 27.227564>,  <34.617054, 35.490211, 27.231096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421669, 35.350883, 27.227564>,  <34.096027, 35.118671, 27.221678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421669, 35.350883, 27.227564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017233, 0.049482, -0.998626,
		-0.580460, 0.812734, 0.050288,
		0.814106, 0.580530, 0.014717,
		34.665901, 35.525043, 27.231979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991791, 35.712669, 26.630877>,  <34.096027, 35.118671, 27.221678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991791, 35.712669, 26.630877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380157, 35.682789, 26.721869>,  <34.613178, 35.664860, 26.776464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380157, 35.682789, 26.721869>,  <33.991791, 35.712669, 26.630877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380157, 35.682789, 26.721869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238076, 0.200253, -0.950378,
		0.025440, 0.976892, 0.212212,
		0.970913, -0.074700, 0.227480,
		34.671432, 35.660378, 26.790112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287346, 36.294273, 26.346140>,  <33.991791, 35.712669, 26.630877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287346, 36.294273, 26.346140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590630, 36.035988, 26.382292>,  <34.772602, 35.881016, 26.403984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590630, 36.035988, 26.382292>,  <34.287346, 36.294273, 26.346140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590630, 36.035988, 26.382292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254750, 0.165785, -0.952690,
		0.600181, 0.745366, 0.290196,
		0.758212, -0.645713, 0.090381,
		34.818092, 35.842274, 26.409407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727394, 36.566391, 26.005161>,  <34.287346, 36.294273, 26.346140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727394, 36.566391, 26.005161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915405, 36.214817, 26.037540>,  <35.028214, 36.003872, 26.056969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915405, 36.214817, 26.037540>,  <34.727394, 36.566391, 26.005161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915405, 36.214817, 26.037540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418348, 0.141083, -0.897263,
		0.777211, 0.455606, 0.434012,
		0.470030, -0.878931, 0.080950,
		35.056416, 35.951138, 26.061825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431343, 36.572445, 25.716059>,  <34.727394, 36.566391, 26.005161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431343, 36.572445, 25.716059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385864, 36.175056, 25.712484>,  <35.358578, 35.936623, 25.710340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385864, 36.175056, 25.712484>,  <35.431343, 36.572445, 25.716059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385864, 36.175056, 25.712484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413704, -0.039167, -0.909568,
		0.903284, -0.107114, 0.415458,
		-0.113700, -0.993475, -0.008934,
		35.351753, 35.877014, 25.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082237, 36.241161, 25.568350>,  <35.431343, 36.572445, 25.716059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082237, 36.241161, 25.568350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805828, 35.969276, 25.469976>,  <35.639984, 35.806145, 25.410954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805828, 35.969276, 25.469976>,  <36.082237, 36.241161, 25.568350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805828, 35.969276, 25.469976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425435, -0.107385, -0.898595,
		0.584377, -0.725575, 0.363379,
		-0.691020, -0.679713, -0.245931,
		35.598522, 35.765362, 25.396196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379238, 35.659668, 25.351501>,  <36.082237, 36.241161, 25.568350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379238, 35.659668, 25.351501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.008717, 35.576614, 25.225737>,  <35.786404, 35.526783, 25.150278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.008717, 35.576614, 25.225737>,  <36.379238, 35.659668, 25.351501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008717, 35.576614, 25.225737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362241, -0.261149, -0.894753,
		0.103671, -0.942703, 0.317115,
		-0.926301, -0.207632, -0.314412,
		35.730827, 35.514324, 25.131413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435379, 35.016632, 25.076645>,  <36.379238, 35.659668, 25.351501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435379, 35.016632, 25.076645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110580, 35.172245, 24.902603>,  <35.915703, 35.265614, 24.798178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110580, 35.172245, 24.902603>,  <36.435379, 35.016632, 25.076645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110580, 35.172245, 24.902603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389037, -0.194969, -0.900354,
		-0.435101, -0.900355, 0.006965,
		-0.811996, 0.389035, -0.435103,
		35.866982, 35.288956, 24.772072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848034, 34.392311, 24.953669>,  <36.435379, 35.016632, 25.076645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848034, 34.392311, 24.953669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.204643, 34.571926, 24.977493>,  <37.418610, 34.679695, 24.991789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.204643, 34.571926, 24.977493>,  <36.848034, 34.392311, 24.953669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204643, 34.571926, 24.977493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081740, 0.030146, 0.996198,
		0.445537, -0.893003, 0.063580,
		0.891524, 0.449040, 0.059563,
		37.472099, 34.706638, 24.995363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219238, 33.959454, 25.411898>,  <36.848034, 34.392311, 24.953669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219238, 33.959454, 25.411898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392574, 34.319942, 25.413637>,  <37.496574, 34.536236, 25.414680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392574, 34.319942, 25.413637>,  <37.219238, 33.959454, 25.411898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392574, 34.319942, 25.413637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025399, 0.007391, 0.999650,
		0.900874, -0.433297, 0.026093,
		0.433338, 0.901221, 0.004347,
		37.522575, 34.590309, 25.414942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573906, 33.920414, 25.953386>,  <37.219238, 33.959454, 25.411898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573906, 33.920414, 25.953386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587830, 34.314610, 25.886942>,  <37.596184, 34.551128, 25.847075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587830, 34.314610, 25.886942>,  <37.573906, 33.920414, 25.953386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587830, 34.314610, 25.886942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284817, 0.149538, 0.946846,
		0.957950, -0.080273, -0.275479,
		0.034811, 0.985492, -0.166113,
		37.598274, 34.610256, 25.837109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264126, 34.189381, 26.147202>,  <37.573906, 33.920414, 25.953386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264126, 34.189381, 26.147202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.985123, 34.475277, 26.167715>,  <37.817719, 34.646812, 26.180023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.985123, 34.475277, 26.167715>,  <38.264126, 34.189381, 26.147202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985123, 34.475277, 26.167715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214617, 0.140091, 0.966599,
		0.683680, 0.685219, -0.251110,
		-0.697510, 0.714737, 0.051282,
		37.775871, 34.689697, 26.183100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639198, 34.799942, 26.398140>,  <38.264126, 34.189381, 26.147202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639198, 34.799942, 26.398140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250305, 34.836277, 26.484413>,  <38.016972, 34.858078, 26.536177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250305, 34.836277, 26.484413>,  <38.639198, 34.799942, 26.398140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250305, 34.836277, 26.484413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231330, 0.233337, 0.944479,
		0.035471, 0.968143, -0.247871,
		-0.972228, 0.090841, 0.215684,
		37.958637, 34.863529, 26.549118>
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
