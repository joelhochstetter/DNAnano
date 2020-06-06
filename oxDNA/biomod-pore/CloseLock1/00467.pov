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
	<23.868259, 34.991383, 34.937538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.157507, 35.226212, 35.083115>,  <24.331055, 35.367107, 35.170460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.157507, 35.226212, 35.083115>,  <23.868259, 34.991383, 34.937538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.157507, 35.226212, 35.083115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659380, -0.429787, -0.616847,
		-0.205715, 0.686028, -0.697888,
		0.723118, 0.587068, 0.363940,
		24.374443, 35.402332, 35.192295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.240274, 35.266376, 34.369675>,  <23.868259, 34.991383, 34.937538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.240274, 35.266376, 34.369675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460381, 35.256950, 34.703537>,  <24.592443, 35.251293, 34.903854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460381, 35.256950, 34.703537>,  <24.240274, 35.266376, 34.369675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460381, 35.256950, 34.703537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745234, -0.436994, -0.503648,
		0.376611, 0.899156, -0.222897,
		0.550263, -0.023569, 0.834659,
		24.625460, 35.249878, 34.953934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033167, 35.398617, 34.147911>,  <24.240274, 35.266376, 34.369675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033167, 35.398617, 34.147911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034643, 35.185184, 34.486206>,  <25.035528, 35.057125, 34.689182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034643, 35.185184, 34.486206>,  <25.033167, 35.398617, 34.147911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034643, 35.185184, 34.486206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638086, -0.649934, -0.412833,
		0.769956, 0.541178, 0.338075,
		0.003689, -0.533584, 0.845739,
		25.035749, 35.025108, 34.739929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714321, 35.209782, 34.316845>,  <25.033167, 35.398617, 34.147911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714321, 35.209782, 34.316845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479670, 34.948967, 34.508976>,  <25.338879, 34.792477, 34.624252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479670, 34.948967, 34.508976>,  <25.714321, 35.209782, 34.316845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479670, 34.948967, 34.508976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642266, -0.735852, -0.214513,
		0.493319, 0.182656, 0.850455,
		-0.586627, -0.652041, 0.480324,
		25.303682, 34.753353, 34.653072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037590, 34.996826, 34.927078>,  <25.714321, 35.209782, 34.316845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037590, 34.996826, 34.927078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782331, 34.743134, 34.752487>,  <25.629177, 34.590916, 34.647732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782331, 34.743134, 34.752487>,  <26.037590, 34.996826, 34.927078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782331, 34.743134, 34.752487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765102, -0.585696, -0.267542,
		-0.085961, -0.504684, 0.859014,
		-0.638145, -0.634235, -0.436482,
		25.590887, 34.552864, 34.621544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844591, 35.382534, 35.481483>,  <26.037590, 34.996826, 34.927078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844591, 35.382534, 35.481483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648848, 35.281940, 35.147469>,  <25.531401, 35.221584, 34.947060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648848, 35.281940, 35.147469>,  <25.844591, 35.382534, 35.481483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648848, 35.281940, 35.147469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000489, -0.957596, 0.288113,
		-0.872083, 0.140582, 0.468731,
		-0.489358, -0.251487, -0.835035,
		25.502041, 35.206493, 34.896957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198681, 35.388371, 36.226303>,  <25.844591, 35.382534, 35.481483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198681, 35.388371, 36.226303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318722, 35.456432, 36.601746>,  <26.390747, 35.497269, 36.827011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318722, 35.456432, 36.601746>,  <26.198681, 35.388371, 36.226303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318722, 35.456432, 36.601746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203857, 0.972671, -0.111149,
		-0.931869, -0.157986, 0.326589,
		0.300103, 0.170154, 0.938609,
		26.408752, 35.507477, 36.883327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684284, 35.667946, 36.705971>,  <26.198681, 35.388371, 36.226303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684284, 35.667946, 36.705971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044186, 35.782009, 36.838108>,  <26.260126, 35.850445, 36.917393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044186, 35.782009, 36.838108>,  <25.684284, 35.667946, 36.705971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044186, 35.782009, 36.838108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303478, 0.952830, 0.004090,
		-0.313599, -0.103933, 0.943851,
		0.899754, 0.285155, 0.330348,
		26.314112, 35.867554, 36.937214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471188, 36.168884, 37.122108>,  <25.684284, 35.667946, 36.705971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471188, 36.168884, 37.122108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863503, 36.227932, 37.071091>,  <26.098890, 36.263359, 37.040482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863503, 36.227932, 37.071091>,  <25.471188, 36.168884, 37.122108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863503, 36.227932, 37.071091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142182, 0.988537, 0.050774,
		0.133579, -0.031663, 0.990532,
		0.980786, 0.147619, -0.127546,
		26.157738, 36.272217, 37.032825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657434, 36.755466, 37.572369>,  <25.471188, 36.168884, 37.122108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657434, 36.755466, 37.572369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957561, 36.740822, 37.308346>,  <26.137638, 36.732033, 37.149933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957561, 36.740822, 37.308346>,  <25.657434, 36.755466, 37.572369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957561, 36.740822, 37.308346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013854, 0.999116, -0.039677,
		0.660930, 0.020626, 0.750163,
		0.750319, -0.036616, -0.660061,
		26.182657, 36.729836, 37.110329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311205, 37.211945, 37.890259>,  <25.657434, 36.755466, 37.572369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311205, 37.211945, 37.890259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343231, 37.171169, 37.493633>,  <26.362448, 37.146706, 37.255657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343231, 37.171169, 37.493633>,  <26.311205, 37.211945, 37.890259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343231, 37.171169, 37.493633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172293, 0.981200, -0.086960,
		0.981786, -0.163877, 0.096123,
		0.080065, -0.101938, -0.991564,
		26.367250, 37.140587, 37.196163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950563, 37.467709, 37.713219>,  <26.311205, 37.211945, 37.890259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950563, 37.467709, 37.713219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768278, 37.454922, 37.357399>,  <26.658907, 37.447250, 37.143906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768278, 37.454922, 37.357399>,  <26.950563, 37.467709, 37.713219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768278, 37.454922, 37.357399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229184, 0.961448, -0.151962,
		0.860116, -0.273122, -0.430817,
		-0.455713, -0.031969, -0.889553,
		26.631565, 37.445332, 37.090534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432859, 37.709854, 37.184410>,  <26.950563, 37.467709, 37.713219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432859, 37.709854, 37.184410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052773, 37.768288, 37.074322>,  <26.824720, 37.803349, 37.008266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052773, 37.768288, 37.074322>,  <27.432859, 37.709854, 37.184410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052773, 37.768288, 37.074322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167441, 0.984312, -0.055626,
		0.262781, -0.098940, -0.959769,
		-0.950216, 0.146088, -0.275225,
		26.767708, 37.812115, 36.991753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575756, 38.285931, 36.763794>,  <27.432859, 37.709854, 37.184410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575756, 38.285931, 36.763794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180693, 38.268978, 36.824108>,  <26.943655, 38.258808, 36.860298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180693, 38.268978, 36.824108>,  <27.575756, 38.285931, 36.763794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180693, 38.268978, 36.824108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058054, 0.993181, -0.101101,
		-0.145476, -0.108606, -0.983382,
		-0.987657, -0.042381, 0.150789,
		26.884396, 38.256264, 36.869343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257528, 38.590424, 36.114120>,  <27.575756, 38.285931, 36.763794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257528, 38.590424, 36.114120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015869, 38.621025, 36.431396>,  <26.870874, 38.639385, 36.621761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015869, 38.621025, 36.431396>,  <27.257528, 38.590424, 36.114120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015869, 38.621025, 36.431396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102497, 0.979653, -0.172551,
		-0.790255, -0.185546, -0.584012,
		-0.604146, 0.076499, 0.793193,
		26.834625, 38.643974, 36.669353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614536, 38.963333, 35.908245>,  <27.257528, 38.590424, 36.114120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614536, 38.963333, 35.908245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612286, 38.978909, 36.307934>,  <26.610935, 38.988255, 36.547749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612286, 38.978909, 36.307934>,  <26.614536, 38.963333, 35.908245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612286, 38.978909, 36.307934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370946, 0.927867, -0.038247,
		-0.928638, -0.370874, 0.009222,
		-0.005628, 0.038938, 0.999226,
		26.610598, 38.990589, 36.607700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941639, 39.264080, 36.149868>,  <26.614536, 38.963333, 35.908245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941639, 39.264080, 36.149868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178797, 39.323242, 36.466499>,  <26.321091, 39.358742, 36.656479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178797, 39.323242, 36.466499>,  <25.941639, 39.264080, 36.149868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178797, 39.323242, 36.466499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249088, 0.968465, 0.005608,
		-0.765789, -0.200499, 0.611038,
		0.592893, 0.147908, 0.791581,
		26.356665, 39.367615, 36.703972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516174, 39.632580, 36.715916>,  <25.941639, 39.264080, 36.149868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516174, 39.632580, 36.715916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906355, 39.697502, 36.775444>,  <26.140463, 39.736454, 36.811161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906355, 39.697502, 36.775444>,  <25.516174, 39.632580, 36.715916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906355, 39.697502, 36.775444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148912, 0.984064, -0.097172,
		-0.162225, 0.072625, 0.984078,
		0.975453, 0.162305, 0.148825,
		26.198990, 39.746193, 36.820091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526979, 40.230862, 37.168777>,  <25.516174, 39.632580, 36.715916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526979, 40.230862, 37.168777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899618, 40.196388, 37.027527>,  <26.123201, 40.175705, 36.942776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899618, 40.196388, 37.027527>,  <25.526979, 40.230862, 37.168777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899618, 40.196388, 37.027527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011953, 0.978222, -0.207218,
		0.363295, 0.188823, 0.912339,
		0.931597, -0.086186, -0.353126,
		26.179098, 40.170532, 36.921589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892073, 40.613716, 37.603134>,  <25.526979, 40.230862, 37.168777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892073, 40.613716, 37.603134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103258, 40.581165, 37.264992>,  <26.229969, 40.561634, 37.062107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103258, 40.581165, 37.264992>,  <25.892073, 40.613716, 37.603134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103258, 40.581165, 37.264992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010104, 0.994726, -0.102065,
		0.849208, 0.062428, 0.524356,
		0.527962, -0.081376, -0.845360,
		26.261646, 40.556751, 37.011383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530607, 41.112015, 37.596924>,  <25.892073, 40.613716, 37.603134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530607, 41.112015, 37.596924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463675, 41.052307, 37.207111>,  <26.423515, 41.016483, 36.973225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463675, 41.052307, 37.207111>,  <26.530607, 41.112015, 37.596924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463675, 41.052307, 37.207111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018181, 0.987836, -0.154431,
		0.985732, -0.043560, -0.162585,
		-0.167334, -0.149272, -0.974534,
		26.413475, 41.007526, 36.914749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785908, 41.707546, 37.351105>,  <26.530607, 41.112015, 37.596924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785908, 41.707546, 37.351105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591192, 41.557461, 37.035572>,  <26.474363, 41.467411, 36.846252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591192, 41.557461, 37.035572>,  <26.785908, 41.707546, 37.351105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591192, 41.557461, 37.035572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262863, 0.924111, -0.277346,
		0.833030, 0.072345, -0.548477,
		-0.486789, -0.375212, -0.788830,
		26.445156, 41.444897, 36.798923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034128, 42.054371, 36.828342>,  <26.785908, 41.707546, 37.351105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034128, 42.054371, 36.828342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671122, 41.920094, 36.727367>,  <26.453318, 41.839527, 36.666782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671122, 41.920094, 36.727367>,  <27.034128, 42.054371, 36.828342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671122, 41.920094, 36.727367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262871, 0.922700, -0.281999,
		0.327589, -0.189560, -0.925609,
		-0.907516, -0.335696, -0.252437,
		26.398867, 41.819386, 36.651638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882893, 42.460388, 36.273479>,  <27.034128, 42.054371, 36.828342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882893, 42.460388, 36.273479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540625, 42.313477, 36.419319>,  <26.335264, 42.225330, 36.506821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540625, 42.313477, 36.419319>,  <26.882893, 42.460388, 36.273479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540625, 42.313477, 36.419319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442948, 0.884086, -0.148957,
		-0.267625, -0.288955, -0.919174,
		-0.855671, -0.367282, 0.364596,
		26.283924, 42.203293, 36.528698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409296, 42.740410, 35.794243>,  <26.882893, 42.460388, 36.273479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409296, 42.740410, 35.794243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215916, 42.621349, 36.123528>,  <26.099888, 42.549915, 36.321098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215916, 42.621349, 36.123528>,  <26.409296, 42.740410, 35.794243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215916, 42.621349, 36.123528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495209, 0.868465, 0.023186,
		-0.721833, -0.396453, -0.567259,
		-0.483452, -0.297648, 0.823213,
		26.070881, 42.532055, 36.370491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653673, 42.826801, 35.815613>,  <26.409296, 42.740410, 35.794243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653673, 42.826801, 35.815613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789070, 42.850227, 36.191269>,  <25.870308, 42.864285, 36.416664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789070, 42.850227, 36.191269>,  <25.653673, 42.826801, 35.815613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789070, 42.850227, 36.191269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305177, 0.950946, 0.050689,
		-0.890106, -0.303763, 0.339763,
		0.338493, 0.058569, 0.939144,
		25.890617, 42.867798, 36.473011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095390, 43.056870, 36.253262>,  <25.653673, 42.826801, 35.815613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095390, 43.056870, 36.253262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460539, 43.162193, 36.378056>,  <25.679628, 43.225388, 36.452930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460539, 43.162193, 36.378056>,  <25.095390, 43.056870, 36.253262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460539, 43.162193, 36.378056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305248, 0.947687, 0.093343,
		-0.271087, -0.180443, 0.945491,
		0.912872, 0.263305, 0.311986,
		25.734400, 43.241184, 36.471653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019859, 43.668468, 36.722248>,  <25.095390, 43.056870, 36.253262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019859, 43.668468, 36.722248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394463, 43.660442, 36.582218>,  <25.619225, 43.655628, 36.498199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394463, 43.660442, 36.582218>,  <25.019859, 43.668468, 36.722248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394463, 43.660442, 36.582218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020486, 0.999787, -0.002496,
		0.350049, -0.004834, 0.936719,
		0.936507, -0.020063, -0.350074,
		25.675415, 43.654423, 36.477196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472706, 44.007877, 37.140991>,  <25.019859, 43.668468, 36.722248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472706, 44.007877, 37.140991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666109, 44.021172, 36.791107>,  <25.782152, 44.029148, 36.581177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666109, 44.021172, 36.791107>,  <25.472706, 44.007877, 37.140991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666109, 44.021172, 36.791107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015721, 0.998788, 0.046637,
		0.875198, -0.036301, 0.482401,
		0.483509, 0.033233, -0.874708,
		25.811161, 44.031143, 36.528694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092867, 44.487022, 37.137943>,  <25.472706, 44.007877, 37.140991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092867, 44.487022, 37.137943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943363, 44.457176, 36.768135>,  <25.853661, 44.439270, 36.546249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943363, 44.457176, 36.768135>,  <26.092867, 44.487022, 37.137943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943363, 44.457176, 36.768135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073480, 0.996008, -0.050677,
		0.924611, 0.048993, -0.377749,
		-0.373758, -0.074614, -0.924520,
		25.831236, 44.434792, 36.490780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428873, 45.028660, 37.514366>,  <26.092867, 44.487022, 37.137943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428873, 45.028660, 37.514366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822058, 45.040657, 37.586910>,  <27.057968, 45.047855, 37.630436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822058, 45.040657, 37.586910>,  <26.428873, 45.028660, 37.514366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822058, 45.040657, 37.586910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058614, 0.986238, 0.154593,
		-0.174224, -0.162589, 0.971191,
		0.982960, 0.029992, 0.181357,
		27.116945, 45.049656, 37.641315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584547, 45.339966, 38.237717>,  <26.428873, 45.028660, 37.514366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584547, 45.339966, 38.237717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900450, 45.383251, 37.996197>,  <27.089991, 45.409222, 37.851284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900450, 45.383251, 37.996197>,  <26.584547, 45.339966, 38.237717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900450, 45.383251, 37.996197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027291, 0.989541, 0.141646,
		0.612812, -0.095388, 0.784450,
		0.789757, 0.108211, -0.603799,
		27.137377, 45.415714, 37.815056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572836, 44.607399, 38.686489>,  <26.584547, 45.339966, 38.237717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572836, 44.607399, 38.686489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872849, 44.815678, 38.523357>,  <27.052856, 44.940643, 38.425480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872849, 44.815678, 38.523357>,  <26.572836, 44.607399, 38.686489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872849, 44.815678, 38.523357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590971, -0.804479, 0.059724,
		-0.296991, -0.285809, -0.911104,
		0.750033, 0.520698, -0.407828,
		27.097858, 44.971886, 38.401009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723076, 44.359432, 38.057968>,  <26.572836, 44.607399, 38.686489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723076, 44.359432, 38.057968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044525, 44.514473, 38.238613>,  <27.237394, 44.607498, 38.347000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044525, 44.514473, 38.238613>,  <26.723076, 44.359432, 38.057968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044525, 44.514473, 38.238613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430442, -0.902576, 0.008686,
		0.410982, 0.187413, -0.892172,
		0.803625, 0.387598, 0.451613,
		27.285612, 44.630753, 38.374096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288630, 44.203983, 37.600655>,  <26.723076, 44.359432, 38.057968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288630, 44.203983, 37.600655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313705, 44.251411, 37.997040>,  <27.328751, 44.279869, 38.234871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313705, 44.251411, 37.997040>,  <27.288630, 44.203983, 37.600655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313705, 44.251411, 37.997040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466379, -0.881319, 0.075944,
		0.882361, 0.457404, -0.110545,
		0.062688, 0.118566, 0.990965,
		27.332512, 44.286980, 38.294331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972477, 44.194382, 37.851765>,  <27.288630, 44.203983, 37.600655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972477, 44.194382, 37.851765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725475, 44.049843, 38.131226>,  <27.577274, 43.963120, 38.298901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725475, 44.049843, 38.131226>,  <27.972477, 44.194382, 37.851765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725475, 44.049843, 38.131226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585830, -0.803996, 0.101947,
		0.524876, 0.472244, 0.708160,
		-0.617502, -0.361351, 0.698653,
		27.540224, 43.941437, 38.340820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359745, 44.050983, 38.433750>,  <27.972477, 44.194382, 37.851765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359745, 44.050983, 38.433750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045834, 43.803577, 38.449535>,  <27.857487, 43.655132, 38.459007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045834, 43.803577, 38.449535>,  <28.359745, 44.050983, 38.433750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045834, 43.803577, 38.449535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609219, -0.758146, 0.232524,
		-0.113903, 0.206520, 0.971790,
		-0.784779, -0.618518, 0.039461,
		27.810400, 43.618023, 38.461372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455736, 43.710209, 39.006538>,  <28.359745, 44.050983, 38.433750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455736, 43.710209, 39.006538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207050, 43.474384, 38.800282>,  <28.057838, 43.332890, 38.676525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207050, 43.474384, 38.800282>,  <28.455736, 43.710209, 39.006538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207050, 43.474384, 38.800282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638626, -0.762720, 0.102062,
		-0.453464, -0.265850, 0.850702,
		-0.621714, -0.589561, -0.515645,
		28.020536, 43.297516, 38.645588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539806, 43.150341, 39.366676>,  <28.455736, 43.710209, 39.006538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539806, 43.150341, 39.366676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344610, 43.002247, 39.050503>,  <28.227493, 42.913391, 38.860798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344610, 43.002247, 39.050503>,  <28.539806, 43.150341, 39.366676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344610, 43.002247, 39.050503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551521, -0.832689, 0.049534,
		-0.676528, -0.411771, 0.610537,
		-0.487991, -0.370235, -0.790437,
		28.198214, 42.891178, 38.813370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132265, 42.496033, 39.620983>,  <28.539806, 43.150341, 39.366676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132265, 42.496033, 39.620983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161539, 42.489716, 39.222107>,  <28.179104, 42.485924, 38.982780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161539, 42.489716, 39.222107>,  <28.132265, 42.496033, 39.620983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161539, 42.489716, 39.222107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316887, -0.947691, 0.038263,
		-0.945636, -0.318798, -0.064348,
		0.073180, -0.015792, -0.997194,
		28.183495, 42.484978, 38.922951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920399, 41.813400, 39.538307>,  <28.132265, 42.496033, 39.620983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920399, 41.813400, 39.538307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090528, 41.903755, 39.187748>,  <28.192606, 41.957966, 38.977413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090528, 41.903755, 39.187748>,  <27.920399, 41.813400, 39.538307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090528, 41.903755, 39.187748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344778, -0.935773, -0.073865,
		-0.836797, -0.270747, -0.475885,
		0.425322, 0.225885, -0.876400,
		28.218124, 41.971519, 38.924828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663008, 41.416531, 39.070930>,  <27.920399, 41.813400, 39.538307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663008, 41.416531, 39.070930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003052, 41.513092, 38.883724>,  <28.207077, 41.571030, 38.771400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003052, 41.513092, 38.883724>,  <27.663008, 41.416531, 39.070930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003052, 41.513092, 38.883724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154330, -0.963923, -0.216876,
		-0.503485, 0.112139, -0.856696,
		0.850109, 0.241408, -0.468014,
		28.258085, 41.585514, 38.743320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638947, 41.000809, 38.429665>,  <27.663008, 41.416531, 39.070930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638947, 41.000809, 38.429665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007977, 41.130520, 38.513287>,  <28.229395, 41.208344, 38.563461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007977, 41.130520, 38.513287>,  <27.638947, 41.000809, 38.429665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007977, 41.130520, 38.513287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352981, -0.928156, -0.118029,
		0.155764, 0.182683, -0.970755,
		0.922574, 0.324273, 0.209057,
		28.284748, 41.227802, 38.576004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163525, 40.684059, 37.917519>,  <27.638947, 41.000809, 38.429665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163525, 40.684059, 37.917519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413202, 40.783676, 38.213722>,  <28.563009, 40.843445, 38.391445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413202, 40.783676, 38.213722>,  <28.163525, 40.684059, 37.917519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413202, 40.783676, 38.213722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403215, -0.914534, -0.032315,
		0.669176, 0.318757, -0.671265,
		0.624196, 0.249040, 0.740512,
		28.600462, 40.858387, 38.435875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876762, 40.396900, 37.786068>,  <28.163525, 40.684059, 37.917519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876762, 40.396900, 37.786068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858685, 40.463562, 38.180061>,  <28.847837, 40.503559, 38.416458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858685, 40.463562, 38.180061>,  <28.876762, 40.396900, 37.786068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858685, 40.463562, 38.180061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517603, -0.839408, 0.165774,
		0.854426, 0.517321, -0.048324,
		-0.045194, 0.166654, 0.984979,
		28.845127, 40.513557, 38.475555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538277, 40.407562, 37.984669>,  <28.876762, 40.396900, 37.786068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538277, 40.407562, 37.984669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295435, 40.298599, 38.283257>,  <29.149731, 40.233219, 38.462410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295435, 40.298599, 38.283257>,  <29.538277, 40.407562, 37.984669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295435, 40.298599, 38.283257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474894, -0.877566, 0.065981,
		0.637102, 0.394552, 0.662140,
		-0.607104, -0.272410, 0.746470,
		29.113304, 40.216877, 38.507198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853756, 39.846378, 38.243568>,  <29.538277, 40.407562, 37.984669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853756, 39.846378, 38.243568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523121, 39.821793, 38.467342>,  <29.324739, 39.807041, 38.601608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523121, 39.821793, 38.467342>,  <29.853756, 39.846378, 38.243568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523121, 39.821793, 38.467342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147095, -0.983061, 0.109334,
		0.543243, 0.172665, 0.821629,
		-0.826590, -0.061462, 0.559439,
		29.275145, 39.803352, 38.635174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010853, 39.441303, 38.914509>,  <29.853756, 39.846378, 38.243568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010853, 39.441303, 38.914509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619839, 39.420555, 38.832790>,  <29.385231, 39.408108, 38.783760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619839, 39.420555, 38.832790>,  <30.010853, 39.441303, 38.914509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619839, 39.420555, 38.832790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030805, -0.994000, 0.104958,
		-0.208517, 0.096307, 0.973266,
		-0.977534, -0.051867, -0.204299,
		29.326578, 39.404995, 38.771500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759048, 38.908688, 39.350807>,  <30.010853, 39.441303, 38.914509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759048, 38.908688, 39.350807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500301, 38.975239, 39.053116>,  <29.345053, 39.015171, 38.874500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500301, 38.975239, 39.053116>,  <29.759048, 38.908688, 39.350807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500301, 38.975239, 39.053116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216250, -0.975870, -0.030207,
		-0.731299, 0.141400, 0.667239,
		-0.646867, 0.166381, -0.744231,
		29.306242, 39.025154, 38.829845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230513, 38.568062, 39.560062>,  <29.759048, 38.908688, 39.350807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230513, 38.568062, 39.560062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177246, 38.611588, 39.166019>,  <29.145287, 38.637703, 38.929596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177246, 38.611588, 39.166019>,  <29.230513, 38.568062, 39.560062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177246, 38.611588, 39.166019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159014, -0.983424, -0.087131,
		-0.978255, 0.145042, 0.148259,
		-0.133164, 0.108812, -0.985103,
		29.137297, 38.644230, 38.870487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579296, 38.258007, 39.402889>,  <29.230513, 38.568062, 39.560062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579296, 38.258007, 39.402889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819012, 38.270786, 39.082932>,  <28.962841, 38.278454, 38.890957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819012, 38.270786, 39.082932>,  <28.579296, 38.258007, 39.402889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819012, 38.270786, 39.082932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194443, -0.963471, -0.184162,
		-0.776558, 0.265901, -0.571187,
		0.599291, 0.031949, -0.799893,
		28.998798, 38.280373, 38.842964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220631, 37.850140, 38.955791>,  <28.579296, 38.258007, 39.402889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220631, 37.850140, 38.955791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589973, 37.863388, 38.802788>,  <28.811579, 37.871338, 38.710983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589973, 37.863388, 38.802788>,  <28.220631, 37.850140, 38.955791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589973, 37.863388, 38.802788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042114, -0.981523, -0.186654,
		-0.381628, 0.188458, -0.904900,
		0.923356, 0.033123, -0.382513,
		28.866980, 37.873325, 38.688034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155243, 37.628357, 38.317711>,  <28.220631, 37.850140, 38.955791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155243, 37.628357, 38.317711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543407, 37.567051, 38.392342>,  <28.776306, 37.530266, 38.437122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543407, 37.567051, 38.392342>,  <28.155243, 37.628357, 38.317711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543407, 37.567051, 38.392342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100229, -0.958690, -0.266210,
		0.219673, 0.239633, -0.945685,
		0.970411, -0.153264, 0.186580,
		28.834530, 37.521072, 38.448315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377813, 37.256454, 37.793694>,  <28.155243, 37.628357, 38.317711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377813, 37.256454, 37.793694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677473, 37.197002, 38.051899>,  <28.857269, 37.161331, 38.206821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677473, 37.197002, 38.051899>,  <28.377813, 37.256454, 37.793694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677473, 37.197002, 38.051899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072817, -0.950118, -0.303272,
		0.658387, 0.274200, -0.700957,
		0.749149, -0.148629, 0.645512,
		28.902218, 37.152412, 38.245552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948765, 36.824730, 37.417027>,  <28.377813, 37.256454, 37.793694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948765, 36.824730, 37.417027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987169, 36.787518, 37.813435>,  <29.010212, 36.765190, 38.051281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987169, 36.787518, 37.813435>,  <28.948765, 36.824730, 37.417027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987169, 36.787518, 37.813435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111764, -0.988319, -0.103607,
		0.989086, 0.120708, -0.084493,
		0.096012, -0.093033, 0.991023,
		29.015972, 36.759609, 38.110741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466705, 36.272652, 37.580585>,  <28.948765, 36.824730, 37.417027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466705, 36.272652, 37.580585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241009, 36.296921, 37.909935>,  <29.105591, 36.311481, 38.107544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241009, 36.296921, 37.909935>,  <29.466705, 36.272652, 37.580585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241009, 36.296921, 37.909935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147754, -0.988616, -0.028403,
		0.812280, -0.137683, 0.566784,
		-0.564242, 0.060673, 0.823377,
		29.071735, 36.315125, 38.156948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773357, 35.805904, 37.939823>,  <29.466705, 36.272652, 37.580585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773357, 35.805904, 37.939823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413189, 35.849739, 38.108219>,  <29.197088, 35.876038, 38.209255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413189, 35.849739, 38.108219>,  <29.773357, 35.805904, 37.939823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413189, 35.849739, 38.108219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076127, -0.992512, 0.095527,
		0.428303, 0.053967, 0.902022,
		-0.900423, 0.109582, 0.420988,
		29.143063, 35.882614, 38.234516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680973, 35.229015, 38.391727>,  <29.773357, 35.805904, 37.939823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680973, 35.229015, 38.391727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303650, 35.361668, 38.386230>,  <29.077255, 35.441257, 38.382931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303650, 35.361668, 38.386230>,  <29.680973, 35.229015, 38.391727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303650, 35.361668, 38.386230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328736, -0.927748, 0.176681,
		0.045843, 0.171183, 0.984172,
		-0.943309, 0.331632, -0.013743,
		29.020657, 35.461159, 38.382107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981798, 34.546329, 38.386501>,  <29.680973, 35.229015, 38.391727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981798, 34.546329, 38.386501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254456, 34.838459, 38.368652>,  <30.418051, 35.013737, 38.357944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254456, 34.838459, 38.368652>,  <29.981798, 34.546329, 38.386501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254456, 34.838459, 38.368652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152976, -0.082609, 0.984771,
		0.715512, -0.678091, -0.168032,
		0.681645, 0.730321, -0.044624,
		30.458950, 35.057556, 38.355267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664406, 34.343937, 38.762665>,  <29.981798, 34.546329, 38.386501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664406, 34.343937, 38.762665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653595, 34.742130, 38.726242>,  <30.647108, 34.981045, 38.704388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653595, 34.742130, 38.726242>,  <30.664406, 34.343937, 38.762665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653595, 34.742130, 38.726242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211930, 0.094728, 0.972683,
		0.976911, 0.006991, -0.213532,
		-0.027027, 0.995479, -0.091059,
		30.645487, 35.040775, 38.698925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255224, 34.586758, 39.004169>,  <30.664406, 34.343937, 38.762665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255224, 34.586758, 39.004169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980165, 34.876846, 39.018036>,  <30.815130, 35.050900, 39.026356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980165, 34.876846, 39.018036>,  <31.255224, 34.586758, 39.004169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980165, 34.876846, 39.018036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229891, 0.172195, 0.957862,
		0.688690, 0.666639, -0.285130,
		-0.687646, 0.725218, 0.034665,
		30.773872, 35.094410, 39.028435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463396, 35.351097, 39.317574>,  <31.255224, 34.586758, 39.004169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463396, 35.351097, 39.317574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071196, 35.285213, 39.360455>,  <30.835876, 35.245686, 39.386181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071196, 35.285213, 39.360455>,  <31.463396, 35.351097, 39.317574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071196, 35.285213, 39.360455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070494, 0.214411, 0.974196,
		-0.183441, 0.962756, -0.198619,
		-0.980500, -0.164706, 0.107200,
		30.777046, 35.235802, 39.392616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066330, 35.925022, 39.712280>,  <31.463396, 35.351097, 39.317574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066330, 35.925022, 39.712280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879412, 35.572990, 39.745964>,  <30.767262, 35.361771, 39.766174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879412, 35.572990, 39.745964>,  <31.066330, 35.925022, 39.712280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879412, 35.572990, 39.745964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073410, 0.056296, 0.995712,
		-0.881049, 0.471472, 0.038300,
		-0.467294, -0.880082, 0.084210,
		30.739223, 35.308964, 39.771229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383564, 36.117550, 40.091267>,  <31.066330, 35.925022, 39.712280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383564, 36.117550, 40.091267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477448, 35.732258, 40.143574>,  <30.533777, 35.501083, 40.174957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477448, 35.732258, 40.143574>,  <30.383564, 36.117550, 40.091267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477448, 35.732258, 40.143574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047248, 0.123061, 0.991274,
		-0.970917, -0.238839, -0.016627,
		0.234709, -0.963230, 0.130766,
		30.547861, 35.443291, 40.182804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802134, 35.743225, 40.563614>,  <30.383564, 36.117550, 40.091267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802134, 35.743225, 40.563614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182285, 35.618824, 40.566570>,  <30.410378, 35.544186, 40.568344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182285, 35.618824, 40.566570>,  <29.802134, 35.743225, 40.563614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182285, 35.618824, 40.566570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016591, 0.074406, 0.997090,
		-0.310646, -0.947493, 0.075874,
		0.950381, -0.311001, 0.007394,
		30.467400, 35.525524, 40.568790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880331, 35.665825, 41.255260>,  <29.802134, 35.743225, 40.563614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880331, 35.665825, 41.255260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256132, 35.599682, 41.135265>,  <30.481613, 35.559994, 41.063267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256132, 35.599682, 41.135265>,  <29.880331, 35.665825, 41.255260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256132, 35.599682, 41.135265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288601, -0.089647, 0.953243,
		-0.184523, -0.982150, -0.036500,
		0.939500, -0.165362, -0.299992,
		30.537983, 35.550076, 41.045269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177813, 34.992516, 41.567123>,  <29.880331, 35.665825, 41.255260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177813, 34.992516, 41.567123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486675, 35.219414, 41.452572>,  <30.671993, 35.355553, 41.383842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486675, 35.219414, 41.452572>,  <30.177813, 34.992516, 41.567123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486675, 35.219414, 41.452572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470254, -0.207013, 0.857909,
		0.427359, -0.797108, -0.426594,
		0.772157, 0.567243, -0.286374,
		30.718323, 35.389587, 41.366661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706654, 34.600105, 41.610355>,  <30.177813, 34.992516, 41.567123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706654, 34.600105, 41.610355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865902, 34.966896, 41.620625>,  <30.961451, 35.186970, 41.626785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865902, 34.966896, 41.620625>,  <30.706654, 34.600105, 41.610355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865902, 34.966896, 41.620625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543036, -0.258140, 0.799047,
		0.739333, -0.304174, -0.600720,
		0.398120, 0.916974, 0.025674,
		30.985338, 35.241989, 41.628326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410955, 34.487835, 41.799400>,  <30.706654, 34.600105, 41.610355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410955, 34.487835, 41.799400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355907, 34.879391, 41.859844>,  <31.322878, 35.114323, 41.896111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355907, 34.879391, 41.859844>,  <31.410955, 34.487835, 41.799400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355907, 34.879391, 41.859844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632954, -0.030435, 0.773591,
		0.761859, 0.202110, -0.615404,
		-0.137621, 0.978890, 0.151113,
		31.314621, 35.173058, 41.905178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118729, 34.758595, 42.036182>,  <31.410955, 34.487835, 41.799400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118729, 34.758595, 42.036182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871792, 35.050049, 42.154823>,  <31.723629, 35.224922, 42.226009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871792, 35.050049, 42.154823>,  <32.118729, 34.758595, 42.036182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871792, 35.050049, 42.154823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525976, 0.101923, 0.844370,
		0.585011, 0.677272, -0.446168,
		-0.617343, 0.728639, 0.296603,
		31.686588, 35.268642, 42.243805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474564, 35.325722, 42.262177>,  <32.118729, 34.758595, 42.036182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474564, 35.325722, 42.262177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124275, 35.374279, 42.449104>,  <31.914103, 35.403416, 42.561260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124275, 35.374279, 42.449104>,  <32.474564, 35.325722, 42.262177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124275, 35.374279, 42.449104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475941, 0.054183, 0.877807,
		0.081242, 0.991124, -0.105226,
		-0.875717, 0.121396, 0.467315,
		31.861561, 35.410698, 42.589298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607693, 35.744049, 42.888515>,  <32.474564, 35.325722, 42.262177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607693, 35.744049, 42.888515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250530, 35.570999, 42.938408>,  <32.036232, 35.467167, 42.968342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250530, 35.570999, 42.938408>,  <32.607693, 35.744049, 42.888515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250530, 35.570999, 42.938408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198055, -0.128617, 0.971716,
		-0.404349, 0.892351, 0.200527,
		-0.892903, -0.432628, 0.124728,
		31.982658, 35.441212, 42.975826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329674, 36.127323, 43.444984>,  <32.607693, 35.744049, 42.888515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329674, 36.127323, 43.444984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135765, 35.777889, 43.427788>,  <32.019421, 35.568230, 43.417469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135765, 35.777889, 43.427788>,  <32.329674, 36.127323, 43.444984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135765, 35.777889, 43.427788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272348, -0.197478, 0.941716,
		-0.831157, 0.444809, 0.333651,
		-0.484773, -0.873583, -0.042992,
		31.990334, 35.515816, 43.414890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899553, 36.105465, 44.068893>,  <32.329674, 36.127323, 43.444984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899553, 36.105465, 44.068893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948381, 35.730927, 43.937218>,  <31.977678, 35.506203, 43.858212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948381, 35.730927, 43.937218>,  <31.899553, 36.105465, 44.068893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948381, 35.730927, 43.937218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270755, -0.287672, 0.918660,
		-0.954877, -0.201268, 0.218404,
		0.122068, -0.936342, -0.329185,
		31.985003, 35.450024, 43.838463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660259, 35.783012, 44.626118>,  <31.899553, 36.105465, 44.068893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660259, 35.783012, 44.626118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835833, 35.479443, 44.433716>,  <31.941175, 35.297298, 44.318275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835833, 35.479443, 44.433716>,  <31.660259, 35.783012, 44.626118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835833, 35.479443, 44.433716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231797, -0.421571, 0.876669,
		-0.868107, -0.496294, -0.009124,
		0.438932, -0.758927, -0.481008,
		31.967512, 35.251766, 44.289413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405624, 35.229828, 44.946732>,  <31.660259, 35.783012, 44.626118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405624, 35.229828, 44.946732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742830, 35.110546, 44.767666>,  <31.945154, 35.038975, 44.660229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742830, 35.110546, 44.767666>,  <31.405624, 35.229828, 44.946732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742830, 35.110546, 44.767666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222520, -0.564353, 0.794979,
		-0.489710, -0.769790, -0.409398,
		0.843012, -0.298209, -0.447663,
		31.995733, 35.021084, 44.633366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368626, 34.483009, 44.909809>,  <31.405624, 35.229828, 44.946732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368626, 34.483009, 44.909809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754686, 34.586407, 44.926140>,  <31.986322, 34.648445, 44.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754686, 34.586407, 44.926140>,  <31.368626, 34.483009, 44.909809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754686, 34.586407, 44.926140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140550, -0.643599, 0.752347,
		0.220748, -0.720390, -0.657501,
		0.965151, 0.258491, 0.040823,
		32.044231, 34.663956, 44.938385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545841, 33.895615, 44.836479>,  <31.368626, 34.483009, 44.909809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545841, 33.895615, 44.836479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858618, 34.094707, 44.986584>,  <32.046284, 34.214165, 45.076649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858618, 34.094707, 44.986584>,  <31.545841, 33.895615, 44.836479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858618, 34.094707, 44.986584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045659, -0.646132, 0.761859,
		0.621675, -0.578597, -0.527965,
		0.781944, 0.497735, 0.375266,
		32.093201, 34.244026, 45.099163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013844, 33.358093, 45.039810>,  <31.545841, 33.895615, 44.836479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013844, 33.358093, 45.039810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177677, 33.666645, 45.234631>,  <32.275978, 33.851776, 45.351524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177677, 33.666645, 45.234631>,  <32.013844, 33.358093, 45.039810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177677, 33.666645, 45.234631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032907, -0.521051, 0.852891,
		0.911681, -0.365355, -0.188028,
		0.409580, 0.771376, 0.487055,
		32.300552, 33.898060, 45.380749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644321, 33.185383, 45.207691>,  <32.013844, 33.358093, 45.039810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644321, 33.185383, 45.207691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579933, 33.466625, 45.484741>,  <32.541302, 33.635372, 45.650970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579933, 33.466625, 45.484741>,  <32.644321, 33.185383, 45.207691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579933, 33.466625, 45.484741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283340, -0.639317, 0.714837,
		0.945414, 0.311316, -0.096307,
		-0.160969, 0.703104, 0.692628,
		32.531643, 33.677555, 45.692528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149742, 33.119293, 45.685867>,  <32.644321, 33.185383, 45.207691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149742, 33.119293, 45.685867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861881, 33.306938, 45.890625>,  <32.689167, 33.419525, 46.013481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861881, 33.306938, 45.890625>,  <33.149742, 33.119293, 45.685867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861881, 33.306938, 45.890625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238699, -0.525158, 0.816842,
		0.652018, 0.710029, 0.265953,
		-0.719649, 0.469113, 0.511896,
		32.645985, 33.447674, 46.044193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442642, 33.317177, 46.356251>,  <33.149742, 33.119293, 45.685867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442642, 33.317177, 46.356251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048656, 33.294907, 46.421673>,  <32.812267, 33.281544, 46.460926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048656, 33.294907, 46.421673>,  <33.442642, 33.317177, 46.356251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048656, 33.294907, 46.421673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172202, -0.393295, 0.903142,
		0.014040, 0.917725, 0.396969,
		-0.984962, -0.055679, 0.163556,
		32.753166, 33.278202, 46.470741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326138, 33.431564, 47.088528>,  <33.442642, 33.317177, 46.356251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326138, 33.431564, 47.088528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981602, 33.264332, 46.973080>,  <32.774879, 33.163994, 46.903809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981602, 33.264332, 46.973080>,  <33.326138, 33.431564, 47.088528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981602, 33.264332, 46.973080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028152, -0.527971, 0.848796,
		-0.507251, 0.739226, 0.442992,
		-0.861338, -0.418082, -0.288624,
		32.723202, 33.138908, 46.886494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988464, 33.488777, 47.623547>,  <33.326138, 33.431564, 47.088528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988464, 33.488777, 47.623547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799149, 33.207268, 47.411625>,  <32.685558, 33.038361, 47.284470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799149, 33.207268, 47.411625>,  <32.988464, 33.488777, 47.623547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799149, 33.207268, 47.411625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028992, -0.613553, 0.789121,
		-0.880428, 0.358125, 0.310794,
		-0.473292, -0.703775, -0.529807,
		32.657162, 32.996136, 47.252682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443192, 33.185753, 48.143402>,  <32.988464, 33.488777, 47.623547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443192, 33.185753, 48.143402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499428, 32.926003, 47.844460>,  <32.533169, 32.770153, 47.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499428, 32.926003, 47.844460>,  <32.443192, 33.185753, 48.143402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499428, 32.926003, 47.844460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004270, -0.755246, 0.655428,
		-0.990059, -0.088953, -0.108950,
		0.140587, -0.649377, -0.747358,
		32.541603, 32.731190, 47.620251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955269, 32.690029, 48.328098>,  <32.443192, 33.185753, 48.143402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955269, 32.690029, 48.328098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236565, 32.524570, 48.096806>,  <32.405342, 32.425297, 47.958031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236565, 32.524570, 48.096806>,  <31.955269, 32.690029, 48.328098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236565, 32.524570, 48.096806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109667, -0.740467, 0.663085,
		-0.702443, -0.529721, -0.475363,
		0.703241, -0.413648, -0.578228,
		32.447536, 32.400475, 47.923336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782936, 32.007622, 48.321632>,  <31.955269, 32.690029, 48.328098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782936, 32.007622, 48.321632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165073, 31.986805, 48.205280>,  <32.394356, 31.974316, 48.135471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165073, 31.986805, 48.205280>,  <31.782936, 32.007622, 48.321632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165073, 31.986805, 48.205280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137512, -0.792987, 0.593517,
		-0.261548, -0.607012, -0.750419,
		0.955344, -0.052041, -0.290876,
		32.451675, 31.971193, 48.118019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965185, 31.269943, 48.038387>,  <31.782936, 32.007622, 48.321632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965185, 31.269943, 48.038387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294109, 31.462236, 48.160175>,  <32.491463, 31.577612, 48.233250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294109, 31.462236, 48.160175>,  <31.965185, 31.269943, 48.038387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294109, 31.462236, 48.160175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194288, -0.740100, 0.643820,
		0.534847, -0.470263, -0.701991,
		0.822308, 0.480734, 0.304474,
		32.540802, 31.606457, 48.251518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335144, 30.759691, 48.323402>,  <31.965185, 31.269943, 48.038387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335144, 30.759691, 48.323402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497787, 31.083799, 48.492226>,  <32.595375, 31.278265, 48.593517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497787, 31.083799, 48.492226>,  <32.335144, 30.759691, 48.323402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497787, 31.083799, 48.492226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221342, -0.535572, 0.814966,
		0.886384, -0.237954, -0.397115,
		0.406608, 0.810272, 0.422053,
		32.619770, 31.326881, 48.618843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717354, 30.463175, 48.748856>,  <32.335144, 30.759691, 48.323402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717354, 30.463175, 48.748856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762581, 30.840549, 48.873531>,  <32.789715, 31.066975, 48.948338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762581, 30.840549, 48.873531>,  <32.717354, 30.463175, 48.748856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762581, 30.840549, 48.873531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387309, -0.330732, 0.860586,
		0.914990, 0.023416, -0.402795,
		0.113066, 0.943434, 0.311685,
		32.796501, 31.123579, 48.967037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454884, 30.567196, 48.986664>,  <32.717354, 30.463175, 48.748856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454884, 30.567196, 48.986664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216522, 30.829239, 49.172451>,  <33.073505, 30.986465, 49.283924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216522, 30.829239, 49.172451>,  <33.454884, 30.567196, 48.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216522, 30.829239, 49.172451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350613, -0.308104, 0.884388,
		0.722477, 0.689857, -0.046090,
		-0.595901, 0.655110, 0.464471,
		33.037750, 31.025772, 49.311790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868305, 30.939655, 49.435398>,  <33.454884, 30.567196, 48.986664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868305, 30.939655, 49.435398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490818, 30.958149, 49.566399>,  <33.264324, 30.969244, 49.645000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490818, 30.958149, 49.566399>,  <33.868305, 30.939655, 49.435398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490818, 30.958149, 49.566399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323148, -0.082217, 0.942770,
		0.070513, 0.995542, 0.062650,
		-0.943718, 0.046232, 0.327504,
		33.207703, 30.972019, 49.664650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939072, 31.163769, 50.139763>,  <33.868305, 30.939655, 49.435398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939072, 31.163769, 50.139763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545082, 31.096430, 50.155186>,  <33.308689, 31.056026, 50.164440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545082, 31.096430, 50.155186>,  <33.939072, 31.163769, 50.139763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545082, 31.096430, 50.155186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089311, -0.305402, 0.948026,
		-0.147823, 0.937224, 0.315849,
		-0.984973, -0.168349, 0.038559,
		33.249592, 31.045925, 50.166752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523140, 31.509180, 50.798214>,  <33.939072, 31.163769, 50.139763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523140, 31.509180, 50.798214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355152, 31.166388, 50.678741>,  <33.254360, 30.960712, 50.607059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355152, 31.166388, 50.678741>,  <33.523140, 31.509180, 50.798214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355152, 31.166388, 50.678741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132389, -0.383440, 0.914028,
		-0.897831, 0.344320, 0.274487,
		-0.419967, -0.856982, -0.298680,
		33.229160, 30.909292, 50.589138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075306, 31.161188, 51.369175>,  <33.523140, 31.509180, 50.798214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075306, 31.161188, 51.369175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204258, 30.877892, 51.117950>,  <33.281628, 30.707912, 50.967216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204258, 30.877892, 51.117950>,  <33.075306, 31.161188, 51.369175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204258, 30.877892, 51.117950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185186, -0.603483, 0.775574,
		-0.928321, -0.366335, -0.063391,
		0.322375, -0.708243, -0.628066,
		33.300972, 30.665419, 50.929531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831261, 30.659376, 51.730255>,  <33.075306, 31.161188, 51.369175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831261, 30.659376, 51.730255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054729, 30.485231, 51.447880>,  <33.188808, 30.380745, 51.278454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054729, 30.485231, 51.447880>,  <32.831261, 30.659376, 51.730255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054729, 30.485231, 51.447880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146796, -0.785811, 0.600793,
		-0.816297, -0.439273, -0.375098,
		0.558668, -0.435363, -0.705939,
		33.222328, 30.354622, 51.236099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558216, 30.073311, 51.589188>,  <32.831261, 30.659376, 51.730255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558216, 30.073311, 51.589188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929150, 29.991241, 51.463989>,  <33.151711, 29.941999, 51.388870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929150, 29.991241, 51.463989>,  <32.558216, 30.073311, 51.589188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929150, 29.991241, 51.463989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015599, -0.856793, 0.515425,
		-0.373921, -0.473086, -0.797730,
		0.927329, -0.205172, -0.312993,
		33.207348, 29.929689, 51.370090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466309, 29.418295, 51.459480>,  <32.558216, 30.073311, 51.589188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466309, 29.418295, 51.459480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863987, 29.460533, 51.467670>,  <33.102596, 29.485876, 51.472584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863987, 29.460533, 51.467670>,  <32.466309, 29.418295, 51.459480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863987, 29.460533, 51.467670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076654, -0.829077, 0.553856,
		0.075459, -0.549073, -0.832361,
		0.994198, 0.105598, 0.020473,
		33.162247, 29.492212, 51.473812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774632, 28.796701, 51.225163>,  <32.466309, 29.418295, 51.459480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774632, 28.796701, 51.225163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023121, 28.998608, 51.464928>,  <33.172215, 29.119751, 51.608788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023121, 28.998608, 51.464928>,  <32.774632, 28.796701, 51.225163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023121, 28.998608, 51.464928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159963, -0.830489, 0.533572,
		0.767133, -0.235584, -0.596664,
		0.621224, 0.504765, 0.599411,
		33.209488, 29.150038, 51.644753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463295, 28.386915, 51.244671>,  <32.774632, 28.796701, 51.225163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463295, 28.386915, 51.244671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455833, 28.620354, 51.569401>,  <33.451355, 28.760416, 51.764240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455833, 28.620354, 51.569401>,  <33.463295, 28.386915, 51.244671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455833, 28.620354, 51.569401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442092, -0.723467, 0.530237,
		0.896776, 0.368796, -0.244505,
		-0.018658, 0.583597, 0.811829,
		33.450237, 28.795433, 51.812950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085373, 28.281738, 51.567638>,  <33.463295, 28.386915, 51.244671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085373, 28.281738, 51.567638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866497, 28.427658, 51.868969>,  <33.735172, 28.515211, 52.049767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866497, 28.427658, 51.868969>,  <34.085373, 28.281738, 51.567638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866497, 28.427658, 51.868969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369610, -0.702208, 0.608516,
		0.750982, 0.611411, 0.249406,
		-0.547188, 0.364802, 0.753329,
		33.702339, 28.537098, 52.094967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556339, 28.419043, 52.019478>,  <34.085373, 28.281738, 51.567638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556339, 28.419043, 52.019478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209442, 28.406197, 52.218216>,  <34.001305, 28.398489, 52.337460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209442, 28.406197, 52.218216>,  <34.556339, 28.419043, 52.019478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209442, 28.406197, 52.218216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433269, -0.540302, 0.721354,
		0.245279, 0.840858, 0.482489,
		-0.867246, -0.032114, 0.496843,
		33.949268, 28.396563, 52.367268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669201, 28.733772, 52.792080>,  <34.556339, 28.419043, 52.019478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669201, 28.733772, 52.792080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351368, 28.491520, 52.809261>,  <34.160667, 28.346169, 52.819569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351368, 28.491520, 52.809261>,  <34.669201, 28.733772, 52.792080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351368, 28.491520, 52.809261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299834, -0.329893, 0.895137,
		-0.527952, 0.724142, 0.443717,
		-0.794585, -0.605631, 0.042955,
		34.112991, 28.309830, 52.822147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229767, 28.820316, 53.477692>,  <34.669201, 28.733772, 52.792080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229767, 28.820316, 53.477692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172054, 28.455641, 53.323803>,  <34.137428, 28.236835, 53.231472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172054, 28.455641, 53.323803>,  <34.229767, 28.820316, 53.477692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172054, 28.455641, 53.323803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249950, -0.409754, 0.877283,
		-0.957449, 0.030413, 0.286996,
		-0.144278, -0.911689, -0.384717,
		34.128773, 28.182135, 53.208389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014263, 28.410709, 53.970570>,  <34.229767, 28.820316, 53.477692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014263, 28.410709, 53.970570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136227, 28.110678, 53.735821>,  <34.209404, 27.930658, 53.594971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136227, 28.110678, 53.735821>,  <34.014263, 28.410709, 53.970570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136227, 28.110678, 53.735821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198317, -0.552700, 0.809440,
		-0.931506, -0.363187, -0.019767,
		0.304904, -0.750078, -0.586870,
		34.227699, 27.885654, 53.559761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618465, 27.915594, 54.076153>,  <34.014263, 28.410709, 53.970570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618465, 27.915594, 54.076153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961491, 27.756659, 53.945484>,  <34.167305, 27.661297, 53.867085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961491, 27.756659, 53.945484>,  <33.618465, 27.915594, 54.076153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961491, 27.756659, 53.945484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062722, -0.549556, 0.833099,
		-0.510544, -0.734922, -0.446356,
		0.857561, -0.397337, -0.326668,
		34.218758, 27.637457, 53.847485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605694, 27.338148, 54.447392>,  <33.618465, 27.915594, 54.076153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605694, 27.338148, 54.447392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983295, 27.344349, 54.315567>,  <34.209858, 27.348070, 54.236473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983295, 27.344349, 54.315567>,  <33.605694, 27.338148, 54.447392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983295, 27.344349, 54.315567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270593, -0.607866, 0.746511,
		-0.188754, -0.793888, -0.578026,
		0.944008, 0.015503, -0.329557,
		34.266499, 27.348999, 54.216702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891319, 26.750740, 54.679840>,  <33.605694, 27.338148, 54.447392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891319, 26.750740, 54.679840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172218, 26.466963, 54.703629>,  <34.340759, 26.296696, 54.717903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172218, 26.466963, 54.703629>,  <33.891319, 26.750740, 54.679840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172218, 26.466963, 54.703629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515969, -0.449611, 0.729127,
		-0.490542, -0.542708, -0.681790,
		0.702243, -0.709449, 0.059467,
		34.382893, 26.254129, 54.721470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660007, 25.932943, 54.608932>,  <33.891319, 26.750740, 54.679840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660007, 25.932943, 54.608932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996593, 25.984978, 54.818699>,  <34.198544, 26.016197, 54.944561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996593, 25.984978, 54.818699>,  <33.660007, 25.932943, 54.608932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996593, 25.984978, 54.818699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433694, -0.416266, 0.799144,
		0.322254, -0.899889, -0.293856,
		0.841464, 0.130084, 0.524421,
		34.249031, 26.024002, 54.976025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256981, 26.052919, 54.246056>,  <33.660007, 25.932943, 54.608932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256981, 26.052919, 54.246056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908867, 26.006760, 54.054523>,  <33.699997, 25.979063, 53.939602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908867, 26.006760, 54.054523>,  <34.256981, 26.052919, 54.246056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908867, 26.006760, 54.054523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128821, 0.991656, -0.004858,
		0.475399, 0.057456, -0.877892,
		-0.870287, -0.115400, -0.478834,
		33.647781, 25.972139, 53.910873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009403, 25.759932, 54.368389>,  <34.256981, 26.052919, 54.246056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009403, 25.759932, 54.368389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822968, 25.412569, 54.300705>,  <34.711105, 25.204151, 54.260094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822968, 25.412569, 54.300705>,  <35.009403, 25.759932, 54.368389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822968, 25.412569, 54.300705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261036, 0.317719, -0.911545,
		0.845354, -0.380689, -0.374770,
		-0.466087, -0.868407, -0.169212,
		34.683140, 25.152046, 54.249943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280975, 25.597185, 53.744728>,  <35.009403, 25.759932, 54.368389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280975, 25.597185, 53.744728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916626, 25.442606, 53.802647>,  <34.698017, 25.349857, 53.837399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916626, 25.442606, 53.802647>,  <35.280975, 25.597185, 53.744728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916626, 25.442606, 53.802647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273430, 0.302339, -0.913141,
		0.309156, -0.871327, -0.381068,
		-0.910856, -0.386499, 0.144777,
		34.643364, 25.326672, 53.846085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130856, 24.986094, 53.278698>,  <35.280975, 25.597185, 53.744728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130856, 24.986094, 53.278698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801880, 25.198076, 53.361397>,  <34.604496, 25.325266, 53.411015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801880, 25.198076, 53.361397>,  <35.130856, 24.986094, 53.278698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801880, 25.198076, 53.361397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179701, 0.102791, -0.978336,
		-0.539729, -0.841771, 0.010695,
		-0.822435, 0.529958, 0.206746,
		34.555149, 25.357063, 53.423420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647438, 24.692417, 52.891911>,  <35.130856, 24.986094, 53.278698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647438, 24.692417, 52.891911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471706, 25.043325, 52.969254>,  <34.366268, 25.253870, 53.015659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471706, 25.043325, 52.969254>,  <34.647438, 24.692417, 52.891911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471706, 25.043325, 52.969254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237845, 0.093973, -0.966747,
		-0.866269, -0.470708, 0.167369,
		-0.439327, 0.877270, 0.193361,
		34.339909, 25.306507, 53.027264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950127, 24.534639, 52.692947>,  <34.647438, 24.692417, 52.891911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950127, 24.534639, 52.692947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059734, 24.918417, 52.666473>,  <34.125500, 25.148684, 52.650589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059734, 24.918417, 52.666473>,  <33.950127, 24.534639, 52.692947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059734, 24.918417, 52.666473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258396, 0.007164, -0.966012,
		-0.926360, 0.281809, 0.249880,
		0.274021, 0.959444, -0.066182,
		34.141941, 25.206249, 52.646618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788467, 24.848913, 52.039852>,  <33.950127, 24.534639, 52.692947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788467, 24.848913, 52.039852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971012, 25.183601, 52.160938>,  <34.080540, 25.384415, 52.233589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971012, 25.183601, 52.160938>,  <33.788467, 24.848913, 52.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971012, 25.183601, 52.160938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044828, 0.318154, -0.946979,
		-0.888665, 0.445733, 0.107684,
		0.456360, 0.836720, 0.302714,
		34.107922, 25.434618, 52.251751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521221, 25.329554, 51.583420>,  <33.788467, 24.848913, 52.039852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521221, 25.329554, 51.583420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855591, 25.494682, 51.728088>,  <34.056213, 25.593760, 51.814892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855591, 25.494682, 51.728088>,  <33.521221, 25.329554, 51.583420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855591, 25.494682, 51.728088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239872, 0.317912, -0.917275,
		-0.493653, 0.853528, 0.166725,
		0.835923, 0.412823, 0.361676,
		34.106369, 25.618528, 51.836590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488251, 26.037893, 51.311310>,  <33.521221, 25.329554, 51.583420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488251, 26.037893, 51.311310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869907, 25.955465, 51.398170>,  <34.098900, 25.906008, 51.450287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869907, 25.955465, 51.398170>,  <33.488251, 26.037893, 51.311310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869907, 25.955465, 51.398170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286159, 0.414767, -0.863760,
		0.087930, 0.886286, 0.454715,
		0.954139, -0.206071, 0.217148,
		34.156151, 25.893644, 51.463314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837528, 26.628689, 51.251629>,  <33.488251, 26.037893, 51.311310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837528, 26.628689, 51.251629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130791, 26.361454, 51.200821>,  <34.306747, 26.201113, 51.170338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130791, 26.361454, 51.200821>,  <33.837528, 26.628689, 51.251629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130791, 26.361454, 51.200821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273749, 0.460906, -0.844172,
		0.622525, 0.584143, 0.520807,
		0.733160, -0.668089, -0.127017,
		34.350739, 26.161028, 51.162716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318066, 27.004017, 50.937355>,  <33.837528, 26.628689, 51.251629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318066, 27.004017, 50.937355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417740, 26.625731, 50.853901>,  <34.477543, 26.398758, 50.803829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417740, 26.625731, 50.853901>,  <34.318066, 27.004017, 50.937355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417740, 26.625731, 50.853901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315665, 0.282981, -0.905692,
		0.915568, 0.159823, 0.369043,
		0.249182, -0.945716, -0.208638,
		34.492493, 26.342016, 50.791309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996819, 27.055645, 50.804646>,  <34.318066, 27.004017, 50.937355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996819, 27.055645, 50.804646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866764, 26.715759, 50.638622>,  <34.788731, 26.511827, 50.539009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866764, 26.715759, 50.638622>,  <34.996819, 27.055645, 50.804646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866764, 26.715759, 50.638622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410207, 0.268740, -0.871498,
		0.852068, -0.453612, 0.261183,
		-0.325132, -0.849715, -0.415059,
		34.769226, 26.460844, 50.514103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589088, 26.553873, 50.475594>,  <34.996819, 27.055645, 50.804646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589088, 26.553873, 50.475594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237968, 26.465857, 50.305397>,  <35.027294, 26.413046, 50.203278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237968, 26.465857, 50.305397>,  <35.589088, 26.553873, 50.475594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237968, 26.465857, 50.305397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407256, 0.124843, -0.904741,
		0.252201, -0.967469, -0.019974,
		-0.877802, -0.220042, -0.425493,
		34.974628, 26.399843, 50.177750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807034, 26.204742, 49.845943>,  <35.589088, 26.553873, 50.475594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807034, 26.204742, 49.845943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427094, 26.314480, 49.785904>,  <35.199131, 26.380322, 49.749882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427094, 26.314480, 49.785904>,  <35.807034, 26.204742, 49.845943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427094, 26.314480, 49.785904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177858, 0.079139, -0.980869,
		-0.257215, -0.958370, -0.123963,
		-0.949846, 0.274342, -0.150098,
		35.142139, 26.396782, 49.740875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721657, 25.946079, 49.219822>,  <35.807034, 26.204742, 49.845943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721657, 25.946079, 49.219822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400951, 26.179020, 49.273544>,  <35.208527, 26.318785, 49.305779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400951, 26.179020, 49.273544>,  <35.721657, 25.946079, 49.219822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400951, 26.179020, 49.273544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012162, 0.240585, -0.970552,
		-0.597515, -0.776522, -0.199975,
		-0.801766, 0.582351, 0.134309,
		35.160423, 26.353725, 49.313835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327351, 25.774708, 48.671627>,  <35.721657, 25.946079, 49.219822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327351, 25.774708, 48.671627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198666, 26.129496, 48.804161>,  <35.121452, 26.342369, 48.883682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198666, 26.129496, 48.804161>,  <35.327351, 25.774708, 48.671627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198666, 26.129496, 48.804161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088415, 0.320270, -0.943191,
		-0.942699, -0.332734, -0.024614,
		-0.321715, 0.886970, 0.331337,
		35.102150, 26.395586, 48.903561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804474, 25.890434, 48.285252>,  <35.327351, 25.774708, 48.671627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804474, 25.890434, 48.285252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908112, 26.253675, 48.416843>,  <34.970295, 26.471621, 48.495796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908112, 26.253675, 48.416843>,  <34.804474, 25.890434, 48.285252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908112, 26.253675, 48.416843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063396, 0.355860, -0.932386,
		-0.963770, 0.220717, 0.149770,
		0.259091, 0.908101, 0.328975,
		34.985840, 26.526106, 48.515537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584267, 26.328444, 47.836105>,  <34.804474, 25.890434, 48.285252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584267, 26.328444, 47.836105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841930, 26.580482, 48.009560>,  <34.996529, 26.731707, 48.113632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841930, 26.580482, 48.009560>,  <34.584267, 26.328444, 47.836105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841930, 26.580482, 48.009560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004663, 0.570145, -0.821531,
		-0.764879, 0.527173, 0.370201,
		0.644157, 0.630098, 0.433634,
		35.035179, 26.769512, 48.139648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417774, 26.980076, 47.556377>,  <34.584267, 26.328444, 47.836105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417774, 26.980076, 47.556377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776073, 27.048670, 47.720440>,  <34.991055, 27.089827, 47.818878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776073, 27.048670, 47.720440>,  <34.417774, 26.980076, 47.556377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776073, 27.048670, 47.720440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205613, 0.658187, -0.724233,
		-0.394153, 0.733064, 0.554311,
		0.895749, 0.171485, 0.410154,
		35.044800, 27.100115, 47.843487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569324, 27.756584, 47.671204>,  <34.417774, 26.980076, 47.556377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569324, 27.756584, 47.671204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911316, 27.553776, 47.627499>,  <35.116512, 27.432091, 47.601276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911316, 27.553776, 47.627499>,  <34.569324, 27.756584, 47.671204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911316, 27.553776, 47.627499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291954, 0.644591, -0.706587,
		0.428688, 0.572217, 0.699139,
		0.854979, -0.507022, -0.109267,
		35.167809, 27.401669, 47.594719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078388, 28.234547, 47.778778>,  <34.569324, 27.756584, 47.671204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078388, 28.234547, 47.778778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242729, 27.950262, 47.550362>,  <35.341335, 27.779692, 47.413311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242729, 27.950262, 47.550362>,  <35.078388, 28.234547, 47.778778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242729, 27.950262, 47.550362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093325, 0.655842, -0.749107,
		0.906912, 0.254481, 0.335782,
		0.410854, -0.710711, -0.571042,
		35.365986, 27.737049, 47.379047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735416, 28.528400, 47.504387>,  <35.078388, 28.234547, 47.778778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735416, 28.528400, 47.504387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601498, 28.228428, 47.276173>,  <35.521145, 28.048445, 47.139244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601498, 28.228428, 47.276173>,  <35.735416, 28.528400, 47.504387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601498, 28.228428, 47.276173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014465, 0.601319, -0.798878,
		0.942180, -0.275714, -0.190472,
		-0.334796, -0.749932, -0.570539,
		35.501060, 28.003448, 47.105011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161980, 28.532682, 46.796356>,  <35.735416, 28.528400, 47.504387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161980, 28.532682, 46.796356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848499, 28.291183, 46.737972>,  <35.660412, 28.146284, 46.702942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848499, 28.291183, 46.737972>,  <36.161980, 28.532682, 46.796356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848499, 28.291183, 46.737972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280846, 0.554023, -0.783699,
		0.554023, -0.573191, -0.603747,
		0.783699, 0.603747, 0.145963,
		35.613388, 28.110060, 46.694183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138470, 28.448282, 46.115459>,  <36.161980, 28.532682, 46.796356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138470, 28.448282, 46.115459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769543, 28.324924, 46.208599>,  <35.548187, 28.250910, 46.264484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769543, 28.324924, 46.208599>,  <36.138470, 28.448282, 46.115459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769543, 28.324924, 46.208599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381280, 0.628212, -0.678215,
		0.062875, -0.714313, -0.696996,
		-0.922319, -0.308394, 0.232854,
		35.492847, 28.232407, 46.278454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771896, 28.424400, 45.460876>,  <36.138470, 28.448282, 46.115459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771896, 28.424400, 45.460876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481224, 28.419327, 45.735619>,  <35.306820, 28.416283, 45.900463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481224, 28.419327, 45.735619>,  <35.771896, 28.424400, 45.460876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481224, 28.419327, 45.735619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513392, 0.674377, -0.530702,
		-0.456472, -0.738278, -0.496567,
		-0.726679, -0.012683, 0.686860,
		35.263222, 28.415522, 45.941677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143436, 28.383352, 45.090172>,  <35.771896, 28.424400, 45.460876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143436, 28.383352, 45.090172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052273, 28.515551, 45.456524>,  <34.997574, 28.594870, 45.676334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052273, 28.515551, 45.456524>,  <35.143436, 28.383352, 45.090172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052273, 28.515551, 45.456524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618174, 0.677628, -0.398349,
		-0.752276, -0.656958, 0.049866,
		-0.227908, 0.330494, 0.915878,
		34.983902, 28.614698, 45.731289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404942, 28.392622, 45.073238>,  <35.143436, 28.383352, 45.090172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404942, 28.392622, 45.073238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524876, 28.652334, 45.352818>,  <34.596836, 28.808163, 45.520565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524876, 28.652334, 45.352818>,  <34.404942, 28.392622, 45.073238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524876, 28.652334, 45.352818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695743, 0.650109, -0.305449,
		-0.652716, -0.394704, 0.646661,
		0.299838, 0.649282, 0.698949,
		34.614826, 28.847118, 45.562504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785812, 28.589409, 45.360641>,  <34.404942, 28.392622, 45.073238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785812, 28.589409, 45.360641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070103, 28.863470, 45.424438>,  <34.240677, 29.027906, 45.462719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070103, 28.863470, 45.424438>,  <33.785812, 28.589409, 45.360641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070103, 28.863470, 45.424438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595936, 0.706878, -0.381031,
		-0.373809, 0.175757, 0.910701,
		0.710723, 0.685152, 0.159497,
		34.283321, 29.069016, 45.472286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459423, 29.140871, 45.632931>,  <33.785812, 28.589409, 45.360641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459423, 29.140871, 45.632931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806339, 29.309351, 45.526802>,  <34.014488, 29.410439, 45.463127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806339, 29.309351, 45.526802>,  <33.459423, 29.140871, 45.632931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806339, 29.309351, 45.526802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497433, 0.753729, -0.429480,
		0.019082, 0.504464, 0.863222,
		0.867293, 0.421200, -0.265319,
		34.066528, 29.435711, 45.447205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367996, 29.862560, 45.768593>,  <33.459423, 29.140871, 45.632931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367996, 29.862560, 45.768593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666153, 29.826899, 45.504341>,  <33.845047, 29.805502, 45.345791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666153, 29.826899, 45.504341>,  <33.367996, 29.862560, 45.768593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666153, 29.826899, 45.504341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382381, 0.754587, -0.533276,
		0.546050, 0.650116, 0.528374,
		0.745395, -0.089156, -0.660634,
		33.889771, 29.800152, 45.306152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415287, 30.581524, 45.438374>,  <33.367996, 29.862560, 45.768593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415287, 30.581524, 45.438374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630848, 30.350725, 45.192886>,  <33.760185, 30.212246, 45.045593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630848, 30.350725, 45.192886>,  <33.415287, 30.581524, 45.438374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630848, 30.350725, 45.192886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176177, 0.635253, -0.751941,
		0.823736, 0.513349, 0.240689,
		0.538907, -0.576997, -0.613721,
		33.792519, 30.177626, 45.008770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915241, 31.086126, 45.033257>,  <33.415287, 30.581524, 45.438374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915241, 31.086126, 45.033257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857471, 30.742655, 44.836559>,  <33.822811, 30.536572, 44.718540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857471, 30.742655, 44.836559>,  <33.915241, 31.086126, 45.033257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857471, 30.742655, 44.836559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295934, 0.511690, -0.806596,
		0.944227, 0.029032, -0.328013,
		-0.144424, -0.858680, -0.491743,
		33.814144, 30.485050, 44.689037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041813, 31.208506, 44.331959>,  <33.915241, 31.086126, 45.033257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041813, 31.208506, 44.331959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840515, 30.864206, 44.301338>,  <33.719738, 30.657627, 44.282967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840515, 30.864206, 44.301338>,  <34.041813, 31.208506, 44.331959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840515, 30.864206, 44.301338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326019, 0.271155, -0.905641,
		0.800285, -0.430802, -0.417077,
		-0.503245, -0.860746, -0.076552,
		33.689541, 30.605982, 44.278374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204075, 30.913862, 43.664845>,  <34.041813, 31.208506, 44.331959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204075, 30.913862, 43.664845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849388, 30.757795, 43.764046>,  <33.636578, 30.664154, 43.823566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849388, 30.757795, 43.764046>,  <34.204075, 30.913862, 43.664845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849388, 30.757795, 43.764046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366744, 0.267027, -0.891176,
		0.281508, -0.881163, -0.379875,
		-0.886708, -0.390191, 0.247991,
		33.583374, 30.640745, 43.838448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999550, 30.576126, 43.041241>,  <34.204075, 30.913862, 43.664845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999550, 30.576126, 43.041241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675190, 30.639811, 43.266483>,  <33.480572, 30.678020, 43.401630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675190, 30.639811, 43.266483>,  <33.999550, 30.576126, 43.041241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675190, 30.639811, 43.266483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539842, 0.167860, -0.824859,
		-0.225850, -0.972869, -0.050169,
		-0.810902, 0.159211, 0.563107,
		33.431919, 30.687574, 43.435417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494164, 30.215948, 42.684269>,  <33.999550, 30.576126, 43.041241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494164, 30.215948, 42.684269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281834, 30.462646, 42.916771>,  <33.154438, 30.610664, 43.056271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281834, 30.462646, 42.916771>,  <33.494164, 30.215948, 42.684269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281834, 30.462646, 42.916771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509511, 0.315825, -0.800408,
		-0.677222, -0.721028, 0.146591,
		-0.530820, 0.616744, 0.581255,
		33.122589, 30.647669, 43.091148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927593, 30.302965, 42.314117>,  <33.494164, 30.215948, 42.684269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927593, 30.302965, 42.314117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889210, 30.611877, 42.565315>,  <32.866180, 30.797224, 42.716034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889210, 30.611877, 42.565315>,  <32.927593, 30.302965, 42.314117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889210, 30.611877, 42.565315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544395, 0.487464, -0.682651,
		-0.833322, -0.407384, 0.373648,
		-0.095961, 0.772280, 0.627992,
		32.860420, 30.843561, 42.753712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325722, 30.432833, 42.176517>,  <32.927593, 30.302965, 42.314117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325722, 30.432833, 42.176517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482815, 30.768610, 42.326767>,  <32.577072, 30.970076, 42.416916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482815, 30.768610, 42.326767>,  <32.325722, 30.432833, 42.176517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482815, 30.768610, 42.326767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614002, 0.543417, -0.572451,
		-0.684661, -0.005813, 0.728839,
		0.392736, 0.839443, 0.375626,
		32.600636, 31.020443, 42.439453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703905, 30.893658, 42.345726>,  <32.325722, 30.432833, 42.176517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703905, 30.893658, 42.345726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013821, 31.145664, 42.366837>,  <32.199768, 31.296867, 42.379505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013821, 31.145664, 42.366837>,  <31.703905, 30.893658, 42.345726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013821, 31.145664, 42.366837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486029, 0.646939, -0.587576,
		-0.404327, 0.429594, 0.807446,
		0.774787, 0.630015, 0.052780,
		32.246258, 31.334669, 42.382671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377203, 31.674419, 42.349579>,  <31.703905, 30.893658, 42.345726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377203, 31.674419, 42.349579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764788, 31.690779, 42.252056>,  <31.997339, 31.700594, 42.193542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764788, 31.690779, 42.252056>,  <31.377203, 31.674419, 42.349579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764788, 31.690779, 42.252056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215528, 0.622824, -0.752089,
		0.121089, 0.781292, 0.612308,
		0.968961, 0.040900, -0.243807,
		32.055477, 31.703049, 42.178913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546127, 32.417221, 42.341522>,  <31.377203, 31.674419, 42.349579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546127, 32.417221, 42.341522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795584, 32.199505, 42.117085>,  <31.945257, 32.068874, 41.982422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795584, 32.199505, 42.117085>,  <31.546127, 32.417221, 42.341522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795584, 32.199505, 42.117085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111944, 0.648190, -0.753205,
		0.773655, 0.532539, 0.343306,
		0.623639, -0.544290, -0.561090,
		31.982676, 32.036217, 41.948757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005280, 32.960613, 41.963524>,  <31.546127, 32.417221, 42.341522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005280, 32.960613, 41.963524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004356, 32.618347, 41.756516>,  <32.003803, 32.412987, 41.632309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004356, 32.618347, 41.756516>,  <32.005280, 32.960613, 41.963524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004356, 32.618347, 41.756516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333196, 0.488608, -0.806376,
		0.942855, 0.170575, -0.286232,
		-0.002307, -0.855667, -0.517521,
		32.003666, 32.361649, 41.601257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211807, 33.169857, 41.230598>,  <32.005280, 32.960613, 41.963524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211807, 33.169857, 41.230598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070560, 32.798290, 41.186031>,  <31.985811, 32.575348, 41.159290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070560, 32.798290, 41.186031>,  <32.211807, 33.169857, 41.230598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070560, 32.798290, 41.186031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437326, 0.269170, -0.858075,
		0.827075, -0.254275, -0.501290,
		-0.353119, -0.928920, -0.111422,
		31.964624, 32.519615, 41.152603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567097, 32.761456, 40.649158>,  <32.211807, 33.169857, 41.230598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567097, 32.761456, 40.649158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190346, 32.644100, 40.714622>,  <31.964294, 32.573689, 40.753899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190346, 32.644100, 40.714622>,  <32.567097, 32.761456, 40.649158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190346, 32.644100, 40.714622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215523, 0.154021, -0.964276,
		0.257701, -0.943505, -0.208301,
		-0.941881, -0.293389, 0.163655,
		31.907782, 32.556084, 40.763718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394817, 32.455593, 39.970684>,  <32.567097, 32.761456, 40.649158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394817, 32.455593, 39.970684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071461, 32.560356, 40.181553>,  <31.877447, 32.623215, 40.308075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071461, 32.560356, 40.181553>,  <32.394817, 32.455593, 39.970684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071461, 32.560356, 40.181553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481470, 0.221060, -0.848127,
		-0.338671, -0.939434, -0.052599,
		-0.808387, 0.261911, 0.527175,
		31.828945, 32.638927, 40.339706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894363, 32.000156, 40.268044>,  <32.394817, 32.455593, 39.970684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894363, 32.000156, 40.268044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954212, 31.957188, 39.874886>,  <32.990120, 31.931408, 39.638992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954212, 31.957188, 39.874886>,  <32.894363, 32.000156, 40.268044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954212, 31.957188, 39.874886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770794, -0.609937, 0.183990,
		-0.619266, -0.785135, -0.008459,
		0.149617, -0.107418, -0.982892,
		32.999096, 31.924963, 39.580017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980667, 31.337620, 40.261951>,  <32.894363, 32.000156, 40.268044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980667, 31.337620, 40.261951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151871, 31.487764, 39.933098>,  <33.254593, 31.577852, 39.735786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151871, 31.487764, 39.933098>,  <32.980667, 31.337620, 40.261951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151871, 31.487764, 39.933098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757787, -0.644775, 0.100125,
		-0.492510, -0.665859, -0.560417,
		0.428012, 0.375363, -0.822137,
		33.280273, 31.600374, 39.686459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241337, 30.707293, 39.725536>,  <32.980667, 31.337620, 40.261951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241337, 30.707293, 39.725536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447842, 31.049686, 39.736607>,  <33.571743, 31.255123, 39.743248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447842, 31.049686, 39.736607>,  <33.241337, 30.707293, 39.725536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447842, 31.049686, 39.736607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841116, -0.512845, 0.171797,
		0.161247, -0.065417, -0.984744,
		0.516259, 0.855985, 0.027671,
		33.602718, 31.306482, 39.744907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856934, 30.523458, 39.390259>,  <33.241337, 30.707293, 39.725536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856934, 30.523458, 39.390259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965439, 30.859129, 39.578812>,  <34.030540, 31.060532, 39.691944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965439, 30.859129, 39.578812>,  <33.856934, 30.523458, 39.390259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965439, 30.859129, 39.578812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878771, -0.415722, 0.234386,
		0.392656, 0.350659, -0.850212,
		0.271262, 0.839175, 0.471384,
		34.046818, 31.110882, 39.720226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652245, 30.599823, 39.273544>,  <33.856934, 30.523458, 39.390259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652245, 30.599823, 39.273544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552387, 30.812683, 39.597149>,  <34.492474, 30.940399, 39.791309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552387, 30.812683, 39.597149>,  <34.652245, 30.599823, 39.273544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552387, 30.812683, 39.597149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794874, -0.364535, 0.485066,
		0.553040, 0.764152, -0.331991,
		-0.249642, 0.532152, 0.809007,
		34.477493, 30.972328, 39.839851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275620, 30.944826, 39.560841>,  <34.652245, 30.599823, 39.273544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275620, 30.944826, 39.560841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001148, 30.882994, 39.845169>,  <34.836464, 30.845894, 40.015766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001148, 30.882994, 39.845169>,  <35.275620, 30.944826, 39.560841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001148, 30.882994, 39.845169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675414, -0.498264, 0.543644,
		0.270139, 0.853134, 0.446305,
		-0.686179, -0.154581, 0.710819,
		34.795296, 30.836618, 40.058414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728130, 31.050743, 40.104801>,  <35.275620, 30.944826, 39.560841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728130, 31.050743, 40.104801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386566, 30.908394, 40.256691>,  <35.181625, 30.822985, 40.347824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386566, 30.908394, 40.256691>,  <35.728130, 31.050743, 40.104801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386566, 30.908394, 40.256691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517497, -0.503489, 0.691878,
		-0.055034, 0.787308, 0.614099,
		-0.853913, -0.355871, 0.379721,
		35.130394, 30.801632, 40.370605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801292, 31.092737, 40.850414>,  <35.728130, 31.050743, 40.104801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801292, 31.092737, 40.850414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513115, 30.825569, 40.775753>,  <35.340206, 30.665268, 40.730957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513115, 30.825569, 40.775753>,  <35.801292, 31.092737, 40.850414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513115, 30.825569, 40.775753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410952, -0.627958, 0.660899,
		-0.558638, 0.399437, 0.726894,
		-0.720446, -0.667921, -0.186652,
		35.296982, 30.625193, 40.719757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605312, 30.797682, 41.546139>,  <35.801292, 31.092737, 40.850414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605312, 30.797682, 41.546139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486134, 30.541424, 41.263069>,  <35.414627, 30.387669, 41.093227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486134, 30.541424, 41.263069>,  <35.605312, 30.797682, 41.546139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486134, 30.541424, 41.263069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409073, -0.755512, 0.511722,
		-0.862490, -0.137027, 0.487171,
		-0.297944, -0.640644, -0.707676,
		35.396751, 30.349230, 41.050766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251411, 30.274086, 41.894993>,  <35.605312, 30.797682, 41.546139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251411, 30.274086, 41.894993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283077, 30.048517, 41.566181>,  <35.302078, 29.913176, 41.368896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283077, 30.048517, 41.566181>,  <35.251411, 30.274086, 41.894993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283077, 30.048517, 41.566181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307561, -0.770566, 0.558242,
		-0.948229, -0.297018, 0.112436,
		0.079169, -0.563922, -0.822025,
		35.306828, 29.879341, 41.319572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037491, 29.634113, 42.017170>,  <35.251411, 30.274086, 41.894993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037491, 29.634113, 42.017170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288044, 29.604000, 41.706821>,  <35.438374, 29.585932, 41.520611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288044, 29.604000, 41.706821>,  <35.037491, 29.634113, 42.017170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288044, 29.604000, 41.706821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462552, -0.765262, 0.447683,
		-0.627449, -0.639302, -0.444523,
		0.626381, -0.075283, -0.775873,
		35.475960, 29.581415, 41.474060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910748, 29.006979, 41.700298>,  <35.037491, 29.634113, 42.017170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910748, 29.006979, 41.700298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289482, 29.117064, 41.633648>,  <35.516724, 29.183113, 41.593658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289482, 29.117064, 41.633648>,  <34.910748, 29.006979, 41.700298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289482, 29.117064, 41.633648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320273, -0.757203, 0.569271,
		0.030499, -0.592371, -0.805088,
		0.946834, 0.275210, -0.166627,
		35.573532, 29.199627, 41.583660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304119, 28.377190, 41.651714>,  <34.910748, 29.006979, 41.700298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304119, 28.377190, 41.651714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594345, 28.643112, 41.722805>,  <35.768482, 28.802666, 41.765461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594345, 28.643112, 41.722805>,  <35.304119, 28.377190, 41.651714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594345, 28.643112, 41.722805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457104, -0.658659, 0.597682,
		0.514404, -0.352419, -0.781786,
		0.725565, 0.664808, 0.177725,
		35.812016, 28.842554, 41.776123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903461, 27.994894, 41.660229>,  <35.304119, 28.377190, 41.651714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903461, 27.994894, 41.660229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980606, 28.318489, 41.882343>,  <36.026894, 28.512646, 42.015614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980606, 28.318489, 41.882343>,  <35.903461, 27.994894, 41.660229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980606, 28.318489, 41.882343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663701, -0.524364, 0.533426,
		0.722709, 0.265670, -0.638053,
		0.192857, 0.808988, 0.555288,
		36.038464, 28.561186, 42.048931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457413, 27.843884, 41.994789>,  <35.903461, 27.994894, 41.660229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457413, 27.843884, 41.994789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372948, 28.177984, 42.197872>,  <36.322269, 28.378445, 42.319721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372948, 28.177984, 42.197872>,  <36.457413, 27.843884, 41.994789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372948, 28.177984, 42.197872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436828, -0.384021, 0.813455,
		0.874410, 0.393549, -0.283772,
		-0.211160, 0.835253, 0.507705,
		36.309601, 28.428560, 42.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024052, 27.965281, 42.258301>,  <36.457413, 27.843884, 41.994789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024052, 27.965281, 42.258301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759052, 28.141277, 42.500790>,  <36.600052, 28.246876, 42.646282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759052, 28.141277, 42.500790>,  <37.024052, 27.965281, 42.258301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759052, 28.141277, 42.500790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474189, -0.380148, 0.794124,
		0.579863, 0.813568, 0.043207,
		-0.662499, 0.439994, 0.606218,
		36.560303, 28.273275, 42.682655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389175, 28.384508, 42.759880>,  <37.024052, 27.965281, 42.258301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389175, 28.384508, 42.759880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031677, 28.280685, 42.906223>,  <36.817181, 28.218391, 42.994030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031677, 28.280685, 42.906223>,  <37.389175, 28.384508, 42.759880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031677, 28.280685, 42.906223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432930, -0.285565, 0.855000,
		-0.117447, 0.922541, 0.367592,
		-0.893744, -0.259559, 0.365857,
		36.763554, 28.202818, 43.015980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494377, 28.611372, 43.365734>,  <37.389175, 28.384508, 42.759880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494377, 28.611372, 43.365734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151566, 28.408054, 43.399540>,  <36.945881, 28.286064, 43.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151566, 28.408054, 43.399540>,  <37.494377, 28.611372, 43.365734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151566, 28.408054, 43.399540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199467, -0.176047, 0.963961,
		-0.475099, 0.842997, 0.252265,
		-0.857026, -0.508295, 0.084510,
		36.894459, 28.255566, 43.424892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055084, 28.789766, 43.991711>,  <37.494377, 28.611372, 43.365734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055084, 28.789766, 43.991711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939674, 28.414373, 43.915813>,  <36.870426, 28.189138, 43.870274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939674, 28.414373, 43.915813>,  <37.055084, 28.789766, 43.991711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939674, 28.414373, 43.915813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136798, -0.236544, 0.961942,
		-0.947649, 0.251591, 0.196632,
		-0.288528, -0.938482, -0.189744,
		36.853115, 28.132828, 43.858891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803898, 28.574852, 44.627094>,  <37.055084, 28.789766, 43.991711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803898, 28.574852, 44.627094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813824, 28.224583, 44.434189>,  <36.819778, 28.014421, 44.318443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813824, 28.224583, 44.434189>,  <36.803898, 28.574852, 44.627094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813824, 28.224583, 44.434189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015773, -0.482013, 0.876022,
		-0.999567, -0.029346, 0.001851,
		0.024816, -0.875672, -0.482268,
		36.821270, 27.961882, 44.289509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375210, 28.179638, 44.996807>,  <36.803898, 28.574852, 44.627094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375210, 28.179638, 44.996807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610241, 27.938215, 44.781227>,  <36.751259, 27.793362, 44.651878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610241, 27.938215, 44.781227>,  <36.375210, 28.179638, 44.996807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610241, 27.938215, 44.781227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192588, -0.542605, 0.817612,
		-0.785914, -0.584208, -0.202585,
		0.587579, -0.603557, -0.538952,
		36.786514, 27.757149, 44.619541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114021, 27.511303, 45.066021>,  <36.375210, 28.179638, 44.996807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114021, 27.511303, 45.066021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503139, 27.481609, 44.978237>,  <36.736610, 27.463793, 44.925568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503139, 27.481609, 44.978237>,  <36.114021, 27.511303, 45.066021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503139, 27.481609, 44.978237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114049, -0.671103, 0.732539,
		-0.201663, -0.737638, -0.644378,
		0.972792, -0.074236, -0.219463,
		36.794975, 27.459339, 44.912399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378822, 26.774317, 45.251698>,  <36.114021, 27.511303, 45.066021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378822, 26.774317, 45.251698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716900, 26.982965, 45.205112>,  <36.919746, 27.108154, 45.177162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716900, 26.982965, 45.205112>,  <36.378822, 26.774317, 45.251698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716900, 26.982965, 45.205112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425732, -0.525325, 0.736740,
		0.323117, -0.672268, -0.666071,
		0.845191, 0.521622, -0.116465,
		36.970459, 27.139452, 45.170174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931034, 26.295530, 45.372276>,  <36.378822, 26.774317, 45.251698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931034, 26.295530, 45.372276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083050, 26.662174, 45.421898>,  <37.174259, 26.882160, 45.451672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083050, 26.662174, 45.421898>,  <36.931034, 26.295530, 45.372276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083050, 26.662174, 45.421898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482231, -0.310795, 0.819060,
		0.789316, -0.251455, -0.560134,
		0.380044, 0.916611, 0.124056,
		37.197063, 26.937159, 45.459114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623360, 26.180023, 45.578381>,  <36.931034, 26.295530, 45.372276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623360, 26.180023, 45.578381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520607, 26.543304, 45.710548>,  <37.458954, 26.761272, 45.789848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520607, 26.543304, 45.710548>,  <37.623360, 26.180023, 45.578381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520607, 26.543304, 45.710548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540242, -0.148541, 0.828296,
		0.801342, 0.391282, -0.452492,
		-0.256884, 0.908204, 0.330419,
		37.443542, 26.815765, 45.809673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275608, 26.415312, 45.965221>,  <37.623360, 26.180023, 45.578381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275608, 26.415312, 45.965221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951263, 26.615635, 46.086342>,  <37.756657, 26.735828, 46.159016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951263, 26.615635, 46.086342>,  <38.275608, 26.415312, 45.965221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951263, 26.615635, 46.086342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216661, -0.223755, 0.950259,
		0.543651, 0.836137, 0.072930,
		-0.810865, 0.500808, 0.302803,
		37.708004, 26.765877, 46.177181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501949, 26.755495, 46.477993>,  <38.275608, 26.415312, 45.965221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501949, 26.755495, 46.477993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106789, 26.769201, 46.538494>,  <37.869694, 26.777426, 46.574795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106789, 26.769201, 46.538494>,  <38.501949, 26.755495, 46.477993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106789, 26.769201, 46.538494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148408, -0.074260, 0.986134,
		0.045023, 0.996650, 0.068277,
		-0.987901, 0.034266, 0.151255,
		37.810417, 26.779482, 46.583870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434261, 26.991215, 47.189293>,  <38.501949, 26.755495, 46.477993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434261, 26.991215, 47.189293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058155, 26.866213, 47.135265>,  <37.832493, 26.791212, 47.102848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058155, 26.866213, 47.135265>,  <38.434261, 26.991215, 47.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058155, 26.866213, 47.135265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091207, -0.151016, 0.984315,
		-0.328000, 0.937835, 0.113493,
		-0.940265, -0.312504, -0.135070,
		37.776077, 26.772461, 47.094746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111324, 27.432734, 47.597721>,  <38.434261, 26.991215, 47.189293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111324, 27.432734, 47.597721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907875, 27.091402, 47.551888>,  <37.785805, 26.886602, 47.524387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907875, 27.091402, 47.551888>,  <38.111324, 27.432734, 47.597721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907875, 27.091402, 47.551888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025839, -0.117894, 0.992690,
		-0.860599, 0.507869, 0.037915,
		-0.508627, -0.853329, -0.114583,
		37.755287, 26.835403, 47.517513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468090, 27.446020, 48.158997>,  <38.111324, 27.432734, 47.597721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468090, 27.446020, 48.158997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557976, 27.077032, 48.033428>,  <37.611908, 26.855639, 47.958088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557976, 27.077032, 48.033428>,  <37.468090, 27.446020, 48.158997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557976, 27.077032, 48.033428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180730, -0.356031, 0.916831,
		-0.957518, -0.149287, -0.246723,
		0.224712, -0.922472, -0.313925,
		37.625389, 26.800291, 47.939251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965427, 27.087965, 48.456333>,  <37.468090, 27.446020, 48.158997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965427, 27.087965, 48.456333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238426, 26.806620, 48.376858>,  <37.402225, 26.637812, 48.329170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238426, 26.806620, 48.376858>,  <36.965427, 27.087965, 48.456333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238426, 26.806620, 48.376858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060827, -0.325566, 0.943561,
		-0.728355, -0.631890, -0.264980,
		0.682495, -0.703365, -0.198692,
		37.443176, 26.595610, 48.317249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778442, 26.515360, 48.791245>,  <36.965427, 27.087965, 48.456333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778442, 26.515360, 48.791245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160748, 26.424744, 48.716206>,  <37.390133, 26.370375, 48.671181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160748, 26.424744, 48.716206>,  <36.778442, 26.515360, 48.791245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160748, 26.424744, 48.716206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109580, -0.317638, 0.941859,
		-0.272953, -0.920754, -0.278764,
		0.955766, -0.226536, -0.187596,
		37.447475, 26.356783, 48.659927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857967, 25.856064, 49.062744>,  <36.778442, 26.515360, 48.791245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857967, 25.856064, 49.062744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218689, 26.023172, 49.018532>,  <37.435120, 26.123438, 48.992004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218689, 26.023172, 49.018532>,  <36.857967, 25.856064, 49.062744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218689, 26.023172, 49.018532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257453, -0.313946, 0.913868,
		0.347089, -0.852586, -0.390674,
		0.901802, 0.417774, -0.110534,
		37.489231, 26.148504, 48.985371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346828, 25.315252, 49.395168>,  <36.857967, 25.856064, 49.062744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346828, 25.315252, 49.395168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566029, 25.649841, 49.396366>,  <37.697548, 25.850595, 49.397083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566029, 25.649841, 49.396366>,  <37.346828, 25.315252, 49.395168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566029, 25.649841, 49.396366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161974, -0.109622, 0.980687,
		0.820646, -0.536933, -0.195560,
		0.548001, 0.836472, 0.002992,
		37.730431, 25.900784, 49.397263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003632, 25.256792, 49.697796>,  <37.346828, 25.315252, 49.395168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003632, 25.256792, 49.697796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960499, 25.649445, 49.760757>,  <37.934620, 25.885036, 49.798534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960499, 25.649445, 49.760757>,  <38.003632, 25.256792, 49.697796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960499, 25.649445, 49.760757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251025, -0.126311, 0.959704,
		0.961955, 0.143001, -0.232793,
		-0.107834, 0.981629, 0.157402,
		37.928150, 25.943933, 49.807980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421829, 25.405214, 50.254364>,  <38.003632, 25.256792, 49.697796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421829, 25.405214, 50.254364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210361, 25.744343, 50.237843>,  <38.083481, 25.947821, 50.227928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210361, 25.744343, 50.237843>,  <38.421829, 25.405214, 50.254364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210361, 25.744343, 50.237843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156878, 0.145418, 0.976853,
		0.834203, 0.509955, -0.209883,
		-0.528672, 0.847820, -0.041308,
		38.051762, 25.998690, 50.225449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873676, 25.846542, 50.500237>,  <38.421829, 25.405214, 50.254364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873676, 25.846542, 50.500237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511414, 26.010967, 50.541821>,  <38.294056, 26.109623, 50.566772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511414, 26.010967, 50.541821>,  <38.873676, 25.846542, 50.500237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511414, 26.010967, 50.541821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193029, 0.181413, 0.964277,
		0.377520, 0.893373, -0.243645,
		-0.905659, 0.411064, 0.103960,
		38.239716, 26.134287, 50.573009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964729, 26.411219, 50.926052>,  <38.873676, 25.846542, 50.500237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964729, 26.411219, 50.926052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573586, 26.329990, 50.946255>,  <38.338898, 26.281254, 50.958378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573586, 26.329990, 50.946255>,  <38.964729, 26.411219, 50.926052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573586, 26.329990, 50.946255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011900, 0.294954, 0.955437,
		-0.208919, 0.933684, -0.290840,
		-0.977861, -0.203070, 0.050511,
		38.280228, 26.269070, 50.961407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648472, 27.003265, 51.148621>,  <38.964729, 26.411219, 50.926052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648472, 27.003265, 51.148621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464664, 26.665983, 51.260231>,  <38.354382, 26.463614, 51.327198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464664, 26.665983, 51.260231>,  <38.648472, 27.003265, 51.148621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464664, 26.665983, 51.260231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019879, 0.323840, 0.945903,
		-0.887947, 0.429111, -0.165572,
		-0.459516, -0.843203, 0.279023,
		38.326809, 26.413023, 51.343937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078327, 27.151169, 51.621834>,  <38.648472, 27.003265, 51.148621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078327, 27.151169, 51.621834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311146, 26.826237, 51.636475>,  <38.450836, 26.631277, 51.645260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311146, 26.826237, 51.636475>,  <38.078327, 27.151169, 51.621834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311146, 26.826237, 51.636475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312753, 0.265195, 0.912062,
		-0.750602, -0.519417, 0.408415,
		0.582050, -0.812329, 0.036606,
		38.485760, 26.582539, 51.647457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639244, 27.696117, 51.975258>,  <38.078327, 27.151169, 51.621834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639244, 27.696117, 51.975258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967361, 27.901581, 52.075878>,  <38.164230, 28.024858, 52.136250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967361, 27.901581, 52.075878>,  <37.639244, 27.696117, 51.975258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967361, 27.901581, 52.075878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089511, 0.319099, -0.943485,
		-0.564896, 0.796450, 0.215776,
		0.820293, 0.513657, 0.251549,
		38.213448, 28.055677, 52.151344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490669, 28.353975, 51.799297>,  <37.639244, 27.696117, 51.975258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490669, 28.353975, 51.799297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888733, 28.318174, 51.815548>,  <38.127571, 28.296694, 51.825298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888733, 28.318174, 51.815548>,  <37.490669, 28.353975, 51.799297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888733, 28.318174, 51.815548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068347, 0.333112, -0.940407,
		0.070639, 0.938630, 0.337616,
		0.995158, -0.089505, 0.040622,
		38.187279, 28.291323, 51.827736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851994, 29.043972, 51.768902>,  <37.490669, 28.353975, 51.799297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851994, 29.043972, 51.768902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136314, 28.790001, 51.647820>,  <38.306908, 28.637619, 51.575169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136314, 28.790001, 51.647820>,  <37.851994, 29.043972, 51.768902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136314, 28.790001, 51.647820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000844, 0.431124, -0.902292,
		0.703395, 0.641093, 0.306978,
		0.710799, -0.634927, -0.302709,
		38.349556, 28.599524, 51.557007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291336, 29.467358, 51.393887>,  <37.851994, 29.043972, 51.768902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291336, 29.467358, 51.393887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405220, 29.107212, 51.262260>,  <38.473549, 28.891125, 51.183285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405220, 29.107212, 51.262260>,  <38.291336, 29.467358, 51.393887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405220, 29.107212, 51.262260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118970, 0.373805, -0.919846,
		0.951204, 0.222737, 0.213541,
		0.284706, -0.900366, -0.329066,
		38.490631, 28.837103, 51.163540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986046, 29.521626, 50.986385>,  <38.291336, 29.467358, 51.393887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986046, 29.521626, 50.986385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806202, 29.185331, 50.865707>,  <38.698296, 28.983555, 50.793301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806202, 29.185331, 50.865707>,  <38.986046, 29.521626, 50.986385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806202, 29.185331, 50.865707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273827, 0.191765, -0.942467,
		0.850220, -0.506351, 0.143997,
		-0.449605, -0.840735, -0.301695,
		38.671322, 28.933111, 50.775200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177902, 29.421114, 50.283840>,  <38.986046, 29.521626, 50.986385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177902, 29.421114, 50.283840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924580, 29.111601, 50.278439>,  <38.772587, 28.925894, 50.275196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924580, 29.111601, 50.278439>,  <39.177902, 29.421114, 50.283840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924580, 29.111601, 50.278439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014866, 0.029611, -0.999451,
		0.773758, -0.632758, -0.030256,
		-0.633307, -0.773783, -0.013505,
		38.734589, 28.879467, 50.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347713, 28.862719, 49.851490>,  <39.177902, 29.421114, 50.283840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347713, 28.862719, 49.851490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948772, 28.871876, 49.879105>,  <38.709408, 28.877371, 49.895676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948772, 28.871876, 49.879105>,  <39.347713, 28.862719, 49.851490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948772, 28.871876, 49.879105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066424, 0.100104, -0.992757,
		-0.029640, -0.994714, -0.098318,
		-0.997351, 0.022895, 0.069040,
		38.649567, 28.878744, 49.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145088, 28.562794, 49.203209>,  <39.347713, 28.862719, 49.851490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145088, 28.562794, 49.203209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807262, 28.723011, 49.345352>,  <38.604568, 28.819141, 49.430637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807262, 28.723011, 49.345352>,  <39.145088, 28.562794, 49.203209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807262, 28.723011, 49.345352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283147, 0.229202, -0.931286,
		-0.454471, -0.887147, -0.080162,
		-0.844561, 0.400545, 0.355359,
		38.553894, 28.843174, 49.451962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590012, 28.283503, 48.778473>,  <39.145088, 28.562794, 49.203209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590012, 28.283503, 48.778473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453964, 28.618143, 48.950249>,  <38.372337, 28.818928, 49.053314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453964, 28.618143, 48.950249>,  <38.590012, 28.283503, 48.778473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453964, 28.618143, 48.950249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424411, 0.270950, -0.863980,
		-0.839165, -0.476110, 0.262910,
		-0.340115, 0.836603, 0.429438,
		38.351929, 28.869123, 49.079079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914597, 28.333492, 48.553719>,  <38.590012, 28.283503, 48.778473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914597, 28.333492, 48.553719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028828, 28.703564, 48.653706>,  <38.097366, 28.925608, 48.713699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028828, 28.703564, 48.653706>,  <37.914597, 28.333492, 48.553719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028828, 28.703564, 48.653706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341600, 0.341971, -0.875423,
		-0.895407, 0.164614, 0.413702,
		0.285581, 0.925180, 0.249971,
		38.114502, 28.981117, 48.728699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277893, 28.732367, 48.530998>,  <37.914597, 28.333492, 48.553719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277893, 28.732367, 48.530998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572742, 29.001532, 48.506195>,  <37.749653, 29.163031, 48.491314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572742, 29.001532, 48.506195>,  <37.277893, 28.732367, 48.530998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572742, 29.001532, 48.506195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405706, 0.367294, -0.836957,
		-0.540422, 0.642095, 0.543744,
		0.737120, 0.672911, -0.062008,
		37.793877, 29.203405, 48.487595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952480, 29.477003, 48.366901>,  <37.277893, 28.732367, 48.530998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952480, 29.477003, 48.366901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327400, 29.432785, 48.234692>,  <37.552353, 29.406254, 48.155365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327400, 29.432785, 48.234692>,  <36.952480, 29.477003, 48.366901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327400, 29.432785, 48.234692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266664, 0.383135, -0.884363,
		0.224398, 0.917053, 0.329635,
		0.937302, -0.110547, -0.330520,
		37.608589, 29.399620, 48.135536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087597, 30.127174, 48.100163>,  <36.952480, 29.477003, 48.366901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087597, 30.127174, 48.100163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331459, 29.868114, 47.917351>,  <37.477776, 29.712679, 47.807663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331459, 29.868114, 47.917351>,  <37.087597, 30.127174, 48.100163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331459, 29.868114, 47.917351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210567, 0.423530, -0.881070,
		0.764188, 0.633383, 0.121834,
		0.609655, -0.647648, -0.457026,
		37.514355, 29.673820, 47.780243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391373, 30.507828, 47.713932>,  <37.087597, 30.127174, 48.100163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391373, 30.507828, 47.713932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465855, 30.162603, 47.526123>,  <37.510544, 29.955469, 47.413437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465855, 30.162603, 47.526123>,  <37.391373, 30.507828, 47.713932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465855, 30.162603, 47.526123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109232, 0.456736, -0.882870,
		0.976420, 0.215682, -0.009228,
		0.186205, -0.863060, -0.469526,
		37.521717, 29.903685, 47.385265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723236, 30.741495, 47.055389>,  <37.391373, 30.507828, 47.713932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723236, 30.741495, 47.055389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645172, 30.354519, 46.990929>,  <37.598335, 30.122334, 46.952251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645172, 30.354519, 46.990929>,  <37.723236, 30.741495, 47.055389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645172, 30.354519, 46.990929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140997, 0.134927, -0.980772,
		0.970584, -0.214125, 0.110075,
		-0.195156, -0.967442, -0.161149,
		37.586624, 30.064285, 46.942585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270855, 30.348595, 46.723827>,  <37.723236, 30.741495, 47.055389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270855, 30.348595, 46.723827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943661, 30.133221, 46.642849>,  <37.747345, 30.003996, 46.594261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943661, 30.133221, 46.642849>,  <38.270855, 30.348595, 46.723827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943661, 30.133221, 46.642849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312021, -0.119651, -0.942511,
		0.483257, -0.834130, 0.265876,
		-0.817989, -0.538434, -0.202444,
		37.698265, 29.971691, 46.582115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435810, 29.950850, 46.191837>,  <38.270855, 30.348595, 46.723827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435810, 29.950850, 46.191837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040417, 29.895596, 46.167114>,  <37.803181, 29.862442, 46.152279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040417, 29.895596, 46.167114>,  <38.435810, 29.950850, 46.191837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040417, 29.895596, 46.167114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052456, 0.070348, -0.996142,
		0.141954, -0.987912, -0.062291,
		-0.988483, -0.138139, -0.061808,
		37.743874, 29.854155, 46.148571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384266, 29.508755, 45.658306>,  <38.435810, 29.950850, 46.191837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384266, 29.508755, 45.658306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027771, 29.685637, 45.698608>,  <37.813873, 29.791765, 45.722790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027771, 29.685637, 45.698608>,  <38.384266, 29.508755, 45.658306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027771, 29.685637, 45.698608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071973, 0.081447, -0.994075,
		-0.447790, -0.893209, -0.040762,
		-0.891237, 0.442204, 0.100759,
		37.760399, 29.818298, 45.728836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995159, 29.178724, 45.196373>,  <38.384266, 29.508755, 45.658306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995159, 29.178724, 45.196373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799969, 29.523676, 45.250317>,  <37.682854, 29.730646, 45.282681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799969, 29.523676, 45.250317>,  <37.995159, 29.178724, 45.196373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799969, 29.523676, 45.250317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006131, 0.157880, -0.987439,
		-0.872838, -0.481016, -0.082328,
		-0.487972, 0.862379, 0.134855,
		37.653576, 29.782391, 45.290771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335564, 29.168375, 44.755142>,  <37.995159, 29.178724, 45.196373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335564, 29.168375, 44.755142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394428, 29.554848, 44.839840>,  <37.429745, 29.786732, 44.890659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394428, 29.554848, 44.839840>,  <37.335564, 29.168375, 44.755142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394428, 29.554848, 44.839840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068860, 0.223567, -0.972253,
		-0.986713, 0.128494, 0.099431,
		0.147158, 0.966181, 0.211749,
		37.438576, 29.844702, 44.903366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831909, 29.475033, 44.346664>,  <37.335564, 29.168375, 44.755142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831909, 29.475033, 44.346664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100044, 29.750149, 44.458084>,  <37.260925, 29.915218, 44.524937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100044, 29.750149, 44.458084>,  <36.831909, 29.475033, 44.346664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100044, 29.750149, 44.458084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013397, 0.364099, -0.931264,
		-0.741935, 0.627993, 0.234855,
		0.670338, 0.687791, 0.278552,
		37.301144, 29.956486, 44.541649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527466, 30.183048, 44.192463>,  <36.831909, 29.475033, 44.346664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527466, 30.183048, 44.192463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926270, 30.213060, 44.199863>,  <37.165550, 30.231068, 44.204304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926270, 30.213060, 44.199863>,  <36.527466, 30.183048, 44.192463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926270, 30.213060, 44.199863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001538, 0.220048, -0.975488,
		-0.077261, 0.972599, 0.219275,
		0.997010, 0.075030, 0.018497,
		37.225372, 30.235569, 44.205414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653740, 30.857014, 43.962376>,  <36.527466, 30.183048, 44.192463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653740, 30.857014, 43.962376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994125, 30.656992, 43.898125>,  <37.198357, 30.536980, 43.859573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994125, 30.656992, 43.898125>,  <36.653740, 30.857014, 43.962376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994125, 30.656992, 43.898125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081933, 0.428477, -0.899830,
		0.518789, 0.752565, 0.405591,
		0.850967, -0.500054, -0.160629,
		37.249416, 30.506975, 43.849937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054161, 31.358665, 43.776451>,  <36.653740, 30.857014, 43.962376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054161, 31.358665, 43.776451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226204, 31.023895, 43.641060>,  <37.329430, 30.823034, 43.559826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226204, 31.023895, 43.641060>,  <37.054161, 31.358665, 43.776451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226204, 31.023895, 43.641060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239997, 0.467435, -0.850827,
		0.870291, 0.284717, 0.401907,
		0.430110, -0.836924, -0.338473,
		37.355236, 30.772818, 43.539516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524929, 31.642508, 43.298935>,  <37.054161, 31.358665, 43.776451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524929, 31.642508, 43.298935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502968, 31.259586, 43.185402>,  <37.489792, 31.029835, 43.117283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502968, 31.259586, 43.185402>,  <37.524929, 31.642508, 43.298935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502968, 31.259586, 43.185402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220911, 0.265568, -0.938441,
		0.973747, -0.114223, 0.196898,
		-0.054902, -0.957302, -0.283830,
		37.486496, 30.972395, 43.100254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118980, 31.460438, 42.934364>,  <37.524929, 31.642508, 43.298935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118980, 31.460438, 42.934364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858864, 31.173885, 42.833241>,  <37.702793, 31.001953, 42.772568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858864, 31.173885, 42.833241>,  <38.118980, 31.460438, 42.934364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858864, 31.173885, 42.833241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255787, 0.106875, -0.960807,
		0.715325, -0.689473, 0.113741,
		-0.650295, -0.716383, -0.252809,
		37.663776, 30.958971, 42.757397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497398, 30.910656, 42.675926>,  <38.118980, 31.460438, 42.934364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497398, 30.910656, 42.675926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132492, 30.898684, 42.512527>,  <37.913548, 30.891500, 42.414486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132492, 30.898684, 42.512527>,  <38.497398, 30.910656, 42.675926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132492, 30.898684, 42.512527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381578, 0.300419, -0.874155,
		0.148883, -0.953338, -0.262643,
		-0.912268, -0.029928, -0.408500,
		37.858810, 30.889706, 42.389977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558838, 30.564121, 41.979130>,  <38.497398, 30.910656, 42.675926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558838, 30.564121, 41.979130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207008, 30.754280, 41.971691>,  <37.995911, 30.868376, 41.967228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207008, 30.754280, 41.971691>,  <38.558838, 30.564121, 41.979130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207008, 30.754280, 41.971691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150862, 0.241619, -0.958572,
		-0.451208, -0.845942, -0.284242,
		-0.879575, 0.475397, -0.018600,
		37.943134, 30.896898, 41.966110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409088, 30.656174, 41.268284>,  <38.558838, 30.564121, 41.979130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409088, 30.656174, 41.268284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142921, 30.918528, 41.410851>,  <37.983219, 31.075941, 41.496391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142921, 30.918528, 41.410851>,  <38.409088, 30.656174, 41.268284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142921, 30.918528, 41.410851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214873, 0.625555, -0.750008,
		-0.714876, -0.422485, -0.557188,
		-0.665419, 0.655887, 0.356414,
		37.943295, 31.115294, 41.517776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990368, 30.866909, 40.684010>,  <38.409088, 30.656174, 41.268284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990368, 30.866909, 40.684010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956604, 31.144690, 40.969837>,  <37.936344, 31.311357, 41.141335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956604, 31.144690, 40.969837>,  <37.990368, 30.866909, 40.684010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956604, 31.144690, 40.969837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311284, 0.699617, -0.643147,
		-0.946560, 0.168143, -0.275229,
		-0.084414, 0.694452, 0.714570,
		37.931278, 31.353025, 41.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494774, 31.387440, 40.432697>,  <37.990368, 30.866909, 40.684010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494774, 31.387440, 40.432697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727798, 31.564741, 40.705208>,  <37.867615, 31.671122, 40.868713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727798, 31.564741, 40.705208>,  <37.494774, 31.387440, 40.432697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727798, 31.564741, 40.705208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206324, 0.730101, -0.651447,
		-0.786161, 0.520075, 0.333877,
		0.582565, 0.443256, 0.681280,
		37.902569, 31.697718, 40.909592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296024, 31.982182, 40.373573>,  <37.494774, 31.387440, 40.432697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296024, 31.982182, 40.373573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648018, 32.038292, 40.555099>,  <37.859215, 32.071957, 40.664017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648018, 32.038292, 40.555099>,  <37.296024, 31.982182, 40.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648018, 32.038292, 40.555099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131285, 0.846358, -0.516180,
		-0.456501, 0.513810, 0.726366,
		0.879984, 0.140275, 0.453819,
		37.912014, 32.080376, 40.691246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378922, 32.720776, 40.536636>,  <37.296024, 31.982182, 40.373573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378922, 32.720776, 40.536636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764973, 32.616058, 40.537029>,  <37.996601, 32.553230, 40.537266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764973, 32.616058, 40.537029>,  <37.378922, 32.720776, 40.536636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764973, 32.616058, 40.537029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257730, 0.949486, -0.179030,
		0.045935, 0.173040, 0.983843,
		0.965125, -0.261790, 0.000983,
		38.054508, 32.537521, 40.537323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729073, 33.218369, 40.955471>,  <37.378922, 32.720776, 40.536636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729073, 33.218369, 40.955471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022823, 33.045506, 40.746117>,  <38.199074, 32.941788, 40.620506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022823, 33.045506, 40.746117>,  <37.729073, 33.218369, 40.955471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022823, 33.045506, 40.746117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337247, 0.901512, -0.271183,
		0.589031, 0.022641, 0.807793,
		0.734375, -0.432162, -0.523383,
		38.243137, 32.915855, 40.589100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265110, 33.553688, 41.147861>,  <37.729073, 33.218369, 40.955471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265110, 33.553688, 41.147861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337688, 33.406860, 40.782932>,  <38.381237, 33.318764, 40.563976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337688, 33.406860, 40.782932>,  <38.265110, 33.553688, 41.147861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337688, 33.406860, 40.782932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405398, 0.873146, -0.270681,
		0.895952, -0.320740, 0.307240,
		0.181447, -0.367072, -0.912324,
		38.392124, 33.296738, 40.509235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881470, 33.793224, 40.968925>,  <38.265110, 33.553688, 41.147861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881470, 33.793224, 40.968925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745705, 33.673519, 40.612221>,  <38.664246, 33.601696, 40.398197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745705, 33.673519, 40.612221>,  <38.881470, 33.793224, 40.968925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745705, 33.673519, 40.612221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448066, 0.782135, -0.433013,
		0.827065, -0.546538, -0.131376,
		-0.339413, -0.299265, -0.891762,
		38.643883, 33.583740, 40.344692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370628, 34.006374, 40.545959>,  <38.881470, 33.793224, 40.968925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370628, 34.006374, 40.545959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061089, 33.966106, 40.295834>,  <38.875366, 33.941944, 40.145756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061089, 33.966106, 40.295834>,  <39.370628, 34.006374, 40.545959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061089, 33.966106, 40.295834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277208, 0.833873, -0.477297,
		0.569486, -0.542699, -0.617385,
		-0.773849, -0.100670, -0.625319,
		38.828934, 33.935905, 40.108238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684502, 34.042072, 39.879978>,  <39.370628, 34.006374, 40.545959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684502, 34.042072, 39.879978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299435, 34.145622, 39.848354>,  <39.068394, 34.207752, 39.829380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299435, 34.145622, 39.848354>,  <39.684502, 34.042072, 39.879978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299435, 34.145622, 39.848354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248169, 0.727492, -0.639661,
		-0.108078, -0.635403, -0.764580,
		-0.962669, 0.258878, -0.079062,
		39.010635, 34.223286, 39.824635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105221, 33.551537, 39.481598>,  <39.684502, 34.042072, 39.879978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105221, 33.551537, 39.481598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092682, 33.947609, 39.536079>,  <40.085159, 34.185253, 39.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092682, 33.947609, 39.536079>,  <40.105221, 33.551537, 39.481598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092682, 33.947609, 39.536079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135682, 0.139221, -0.980922,
		-0.990256, -0.012267, -0.138714,
		-0.031345, 0.990185, 0.136200,
		40.083279, 34.244663, 39.576939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750042, 33.245457, 39.489433>,  <40.105221, 33.551537, 39.481598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750042, 33.245457, 39.489433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659821, 33.114140, 39.122532>,  <40.605686, 33.035351, 38.902393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659821, 33.114140, 39.122532>,  <40.750042, 33.245457, 39.489433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659821, 33.114140, 39.122532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790881, 0.488079, -0.369169,
		0.568886, -0.808704, 0.149553,
		-0.225555, -0.328294, -0.917250,
		40.592155, 33.015652, 38.847355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225368, 33.944202, 39.503826>,  <40.750042, 33.245457, 39.489433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225368, 33.944202, 39.503826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124435, 34.034813, 39.880127>,  <41.063877, 34.089180, 40.105907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124435, 34.034813, 39.880127>,  <41.225368, 33.944202, 39.503826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124435, 34.034813, 39.880127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122234, -0.971886, 0.201237,
		0.959889, -0.064213, 0.272929,
		-0.252333, 0.226526, 0.940752,
		41.048737, 34.102772, 40.162354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181538, 34.717140, 39.561005>,  <41.225368, 33.944202, 39.503826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181538, 34.717140, 39.561005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564873, 34.827881, 39.589123>,  <41.794872, 34.894325, 39.605991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564873, 34.827881, 39.589123>,  <41.181538, 34.717140, 39.561005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564873, 34.827881, 39.589123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216065, -0.541665, -0.812352,
		-0.186827, 0.793695, -0.578916,
		0.958338, 0.276852, 0.070292,
		41.852375, 34.910938, 39.610210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423061, 34.748436, 38.878212>,  <41.181538, 34.717140, 39.561005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423061, 34.748436, 38.878212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751984, 34.732174, 39.105251>,  <41.949337, 34.722416, 39.241474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751984, 34.732174, 39.105251>,  <41.423061, 34.748436, 38.878212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751984, 34.732174, 39.105251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421437, -0.626727, -0.655442,
		0.382373, 0.778177, -0.498228,
		0.822303, -0.040652, 0.567596,
		41.998676, 34.719978, 39.275532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115067, 34.821968, 38.525024>,  <41.423061, 34.748436, 38.878212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115067, 34.821968, 38.525024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163380, 34.601685, 38.855389>,  <42.192368, 34.469513, 39.053608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163380, 34.601685, 38.855389>,  <42.115067, 34.821968, 38.525024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163380, 34.601685, 38.855389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380609, -0.742725, -0.550905,
		0.916814, 0.380889, 0.119898,
		0.120783, -0.550712, 0.825910,
		42.199615, 34.436470, 39.103161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378746, 35.078625, 37.841114>,  <42.115067, 34.821968, 38.525024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378746, 35.078625, 37.841114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269550, 35.463406, 37.836712>,  <42.204033, 35.694275, 37.834068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269550, 35.463406, 37.836712>,  <42.378746, 35.078625, 37.841114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269550, 35.463406, 37.836712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454907, -0.139162, -0.879599,
		-0.847666, -0.235111, 0.475589,
		-0.272987, 0.961955, -0.011009,
		42.187653, 35.751991, 37.833408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592106, 35.223621, 37.745937>,  <42.378746, 35.078625, 37.841114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592106, 35.223621, 37.745937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850136, 35.483028, 37.584293>,  <42.004951, 35.638672, 37.487309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850136, 35.483028, 37.584293>,  <41.592106, 35.223621, 37.745937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850136, 35.483028, 37.584293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496441, -0.046345, -0.866832,
		-0.580886, 0.759786, 0.292056,
		0.645071, 0.648519, -0.404111,
		42.043655, 35.677586, 37.463058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200600, 35.707054, 37.399574>,  <41.592106, 35.223621, 37.745937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200600, 35.707054, 37.399574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572136, 35.686611, 37.252804>,  <41.795059, 35.674347, 37.164742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572136, 35.686611, 37.252804>,  <41.200600, 35.707054, 37.399574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572136, 35.686611, 37.252804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365010, 0.043154, -0.930003,
		0.063360, 0.997760, 0.021430,
		0.928845, -0.051103, -0.366927,
		41.850788, 35.671280, 37.142727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343418, 36.126385, 36.902809>,  <41.200600, 35.707054, 37.399574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343418, 36.126385, 36.902809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659546, 35.914497, 36.779659>,  <41.849224, 35.787365, 36.705769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659546, 35.914497, 36.779659>,  <41.343418, 36.126385, 36.902809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659546, 35.914497, 36.779659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317600, 0.075516, -0.945213,
		0.523945, 0.844806, -0.108557,
		0.790324, -0.529717, -0.307877,
		41.896645, 35.755581, 36.687298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845287, 36.468357, 36.394444>,  <41.343418, 36.126385, 36.902809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845287, 36.468357, 36.394444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853657, 36.072578, 36.337086>,  <41.858677, 35.835114, 36.302670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853657, 36.072578, 36.337086>,  <41.845287, 36.468357, 36.394444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853657, 36.072578, 36.337086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227026, 0.134978, -0.964490,
		0.973664, 0.052735, -0.221806,
		0.020923, -0.989444, -0.143396,
		41.859932, 35.775745, 36.294067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780972, 36.423428, 35.711170>,  <41.845287, 36.468357, 36.394444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780972, 36.423428, 35.711170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833019, 36.033775, 35.785069>,  <41.864250, 35.799984, 35.829407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833019, 36.033775, 35.785069>,  <41.780972, 36.423428, 35.711170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833019, 36.033775, 35.785069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201114, -0.208385, -0.957146,
		0.970887, 0.087392, -0.223027,
		0.130123, -0.974135, 0.184743,
		41.872055, 35.741535, 35.840492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288338, 36.200958, 35.324261>,  <41.780972, 36.423428, 35.711170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288338, 36.200958, 35.324261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070831, 35.874142, 35.400951>,  <41.940327, 35.678051, 35.446968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070831, 35.874142, 35.400951>,  <42.288338, 36.200958, 35.324261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070831, 35.874142, 35.400951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069171, -0.184048, -0.980480,
		0.836384, -0.546411, 0.043563,
		-0.543763, -0.817044, 0.191730,
		41.907703, 35.629028, 35.458469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621456, 35.539444, 35.123463>,  <42.288338, 36.200958, 35.324261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621456, 35.539444, 35.123463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224739, 35.513008, 35.079681>,  <41.986710, 35.497147, 35.053413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224739, 35.513008, 35.079681>,  <42.621456, 35.539444, 35.123463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224739, 35.513008, 35.079681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122584, -0.248168, -0.960930,
		0.036346, -0.966460, 0.254232,
		-0.991792, -0.066091, -0.109452,
		41.927200, 35.493179, 35.046844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584778, 35.029499, 34.622162>,  <42.621456, 35.539444, 35.123463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584778, 35.029499, 34.622162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206116, 35.158386, 34.620483>,  <41.978916, 35.235718, 34.619476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206116, 35.158386, 34.620483>,  <42.584778, 35.029499, 34.622162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206116, 35.158386, 34.620483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115012, -0.350009, -0.929659,
		-0.301012, -0.879588, 0.368397,
		-0.946659, 0.322209, -0.004194,
		41.922119, 35.255051, 34.619225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160965, 34.494888, 34.520283>,  <42.584778, 35.029499, 34.622162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160965, 34.494888, 34.520283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971050, 34.821201, 34.388172>,  <41.857101, 35.016987, 34.308907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971050, 34.821201, 34.388172>,  <42.160965, 34.494888, 34.520283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971050, 34.821201, 34.388172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152242, -0.445744, -0.882119,
		-0.866833, -0.368536, 0.335829,
		-0.474786, 0.815778, -0.330280,
		41.828613, 35.065933, 34.289089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647396, 34.197071, 33.990238>,  <42.160965, 34.494888, 34.520283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647396, 34.197071, 33.990238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629623, 34.591908, 33.928696>,  <41.618958, 34.828812, 33.891769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629623, 34.591908, 33.928696>,  <41.647396, 34.197071, 33.990238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629623, 34.591908, 33.928696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267238, -0.160143, -0.950230,
		-0.962605, -0.001106, 0.270905,
		-0.044435, 0.987093, -0.153859,
		41.616295, 34.888035, 33.882538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970436, 34.308384, 33.772392>,  <41.647396, 34.197071, 33.990238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970436, 34.308384, 33.772392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197006, 34.617142, 33.656914>,  <41.332947, 34.802395, 33.587627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197006, 34.617142, 33.656914>,  <40.970436, 34.308384, 33.772392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197006, 34.617142, 33.656914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287349, -0.143348, -0.947039,
		-0.772396, 0.619382, 0.140607,
		0.566423, 0.771892, -0.288700,
		41.366932, 34.848709, 33.570305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773655, 34.486767, 33.037716>,  <40.970436, 34.308384, 33.772392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773655, 34.486767, 33.037716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111206, 34.698292, 33.001446>,  <41.313736, 34.825207, 32.979683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111206, 34.698292, 33.001446>,  <40.773655, 34.486767, 33.037716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111206, 34.698292, 33.001446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090572, -0.306982, -0.947396,
		-0.528829, 0.791277, -0.306953,
		0.843882, 0.528812, -0.090673,
		41.364372, 34.856934, 32.974243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689133, 34.972675, 32.494823>,  <40.773655, 34.486767, 33.037716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689133, 34.972675, 32.494823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080631, 34.901520, 32.535648>,  <41.315529, 34.858826, 32.560143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080631, 34.901520, 32.535648>,  <40.689133, 34.972675, 32.494823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080631, 34.901520, 32.535648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019385, -0.415204, -0.909522,
		0.204168, 0.892167, -0.402931,
		0.978744, -0.177884, 0.102066,
		41.374256, 34.848156, 32.566269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052692, 35.272198, 31.849152>,  <40.689133, 34.972675, 32.494823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052692, 35.272198, 31.849152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322296, 35.016220, 31.996765>,  <41.484058, 34.862633, 32.085335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322296, 35.016220, 31.996765>,  <41.052692, 35.272198, 31.849152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322296, 35.016220, 31.996765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098680, -0.417081, -0.903496,
		0.732105, 0.645379, -0.217965,
		0.674007, -0.639945, 0.369033,
		41.524498, 34.824238, 32.107475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569534, 35.178375, 31.308718>,  <41.052692, 35.272198, 31.849152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569534, 35.178375, 31.308718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610741, 34.860416, 31.547894>,  <41.635464, 34.669643, 31.691399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610741, 34.860416, 31.547894>,  <41.569534, 35.178375, 31.308718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610741, 34.860416, 31.547894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279358, -0.553823, -0.784372,
		0.954645, 0.247841, 0.165008,
		0.103014, -0.794893, 0.597941,
		41.641644, 34.621948, 31.727276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214069, 34.781395, 31.055628>,  <41.569534, 35.178375, 31.308718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214069, 34.781395, 31.055628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963306, 34.534073, 31.245232>,  <41.812847, 34.385681, 31.358994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963306, 34.534073, 31.245232>,  <42.214069, 34.781395, 31.055628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963306, 34.534073, 31.245232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196875, -0.714389, -0.671483,
		0.753808, -0.327637, 0.569585,
		-0.626908, -0.618306, 0.474008,
		41.775234, 34.348579, 31.387434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588978, 34.220268, 31.024168>,  <42.214069, 34.781395, 31.055628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588978, 34.220268, 31.024168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237011, 34.062260, 31.129782>,  <42.025833, 33.967457, 31.193150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237011, 34.062260, 31.129782>,  <42.588978, 34.220268, 31.024168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237011, 34.062260, 31.129782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313761, -0.900388, -0.301424,
		0.356802, -0.182382, 0.916204,
		-0.879912, -0.395018, 0.264036,
		41.973038, 33.943756, 31.208992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678154, 33.533314, 31.347485>,  <42.588978, 34.220268, 31.024168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678154, 33.533314, 31.347485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295555, 33.504578, 31.234386>,  <42.065994, 33.487335, 31.166527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295555, 33.504578, 31.234386>,  <42.678154, 33.533314, 31.347485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295555, 33.504578, 31.234386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160845, -0.938451, -0.305676,
		-0.243384, -0.337858, 0.909185,
		-0.956501, -0.071841, -0.282747,
		42.008606, 33.483025, 31.149563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437355, 32.797325, 31.637920>,  <42.678154, 33.533314, 31.347485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437355, 32.797325, 31.637920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226234, 32.941467, 31.330267>,  <42.099560, 33.027950, 31.145676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226234, 32.941467, 31.330267>,  <42.437355, 32.797325, 31.637920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226234, 32.941467, 31.330267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125964, -0.862316, -0.490453,
		-0.839974, -0.355747, 0.409743,
		-0.527805, 0.360354, -0.769134,
		42.067894, 33.049572, 31.099527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884628, 32.281776, 31.508303>,  <42.437355, 32.797325, 31.637920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884628, 32.281776, 31.508303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934193, 32.489666, 31.170183>,  <41.963932, 32.614399, 30.967312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934193, 32.489666, 31.170183>,  <41.884628, 32.281776, 31.508303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934193, 32.489666, 31.170183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074380, -0.844603, -0.530202,
		-0.989502, 0.128570, -0.065998,
		0.123910, 0.519727, -0.845299,
		41.971367, 32.645584, 30.916594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585602, 31.883198, 31.064177>,  <41.884628, 32.281776, 31.508303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585602, 31.883198, 31.064177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786087, 32.126751, 30.818237>,  <41.906380, 32.272884, 30.670673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786087, 32.126751, 30.818237>,  <41.585602, 31.883198, 31.064177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786087, 32.126751, 30.818237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018028, -0.703044, -0.710918,
		-0.865133, 0.367409, -0.341401,
		0.501218, 0.608884, -0.614850,
		41.936451, 32.309418, 30.633781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188160, 32.050308, 30.378244>,  <41.585602, 31.883198, 31.064177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188160, 32.050308, 30.378244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582726, 32.083458, 30.321516>,  <41.819466, 32.103348, 30.287479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582726, 32.083458, 30.321516>,  <41.188160, 32.050308, 30.378244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582726, 32.083458, 30.321516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013318, -0.820197, -0.571926,
		-0.163718, 0.566046, -0.807953,
		0.986417, 0.082875, -0.141820,
		41.878651, 32.108322, 30.278971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543411, 31.583292, 30.660011>,  <41.188160, 32.050308, 30.378244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543411, 31.583292, 30.660011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836182, 31.565615, 30.931992>,  <41.011845, 31.555008, 31.095181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836182, 31.565615, 30.931992>,  <40.543411, 31.583292, 30.660011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836182, 31.565615, 30.931992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456592, 0.708902, 0.537570,
		-0.505775, -0.703921, 0.498686,
		0.731926, -0.044193, 0.679950,
		41.055759, 31.552357, 31.135977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387459, 30.841148, 30.929708>,  <40.543411, 31.583292, 30.660011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387459, 30.841148, 30.929708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280170, 30.466240, 31.018772>,  <40.215797, 30.241295, 31.072210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280170, 30.466240, 31.018772>,  <40.387459, 30.841148, 30.929708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280170, 30.466240, 31.018772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268675, 0.149180, 0.951609,
		-0.925133, 0.315064, 0.211808,
		-0.268221, -0.937273, 0.222661,
		40.199703, 30.185059, 31.085571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020439, 30.941830, 31.496088>,  <40.387459, 30.841148, 30.929708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020439, 30.941830, 31.496088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147160, 30.563137, 31.472990>,  <40.223194, 30.335922, 31.459131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147160, 30.563137, 31.472990>,  <40.020439, 30.941830, 31.496088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147160, 30.563137, 31.472990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145237, -0.011743, 0.989327,
		-0.937305, -0.321810, 0.133780,
		0.316805, -0.946731, -0.057745,
		40.242203, 30.279118, 31.455666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722939, 30.507599, 32.090267>,  <40.020439, 30.941830, 31.496088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722939, 30.507599, 32.090267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059460, 30.327295, 31.970922>,  <40.261372, 30.219112, 31.899317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059460, 30.327295, 31.970922>,  <39.722939, 30.507599, 32.090267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059460, 30.327295, 31.970922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320335, -0.028854, 0.946865,
		-0.435417, -0.892179, 0.120119,
		0.841307, -0.450760, -0.298359,
		40.311852, 30.192068, 31.881414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862984, 29.779144, 32.474285>,  <39.722939, 30.507599, 32.090267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862984, 29.779144, 32.474285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183392, 30.004593, 32.393589>,  <40.375637, 30.139862, 32.345169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183392, 30.004593, 32.393589>,  <39.862984, 29.779144, 32.474285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183392, 30.004593, 32.393589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281708, -0.057537, 0.957773,
		0.528215, -0.824026, -0.204865,
		0.801017, 0.563623, -0.201743,
		40.423698, 30.173679, 32.333065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426510, 29.418905, 32.767986>,  <39.862984, 29.779144, 32.474285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426510, 29.418905, 32.767986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512356, 29.808514, 32.739079>,  <40.563866, 30.042278, 32.721733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512356, 29.808514, 32.739079>,  <40.426510, 29.418905, 32.767986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512356, 29.808514, 32.739079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465872, -0.037057, 0.884076,
		0.858430, -0.223408, -0.461722,
		0.214619, 0.974020, -0.072269,
		40.576740, 30.100719, 32.717400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841259, 28.815695, 32.727615>,  <40.426510, 29.418905, 32.767986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841259, 28.815695, 32.727615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994255, 28.934740, 33.077503>,  <41.086052, 29.006166, 33.287434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994255, 28.934740, 33.077503>,  <40.841259, 28.815695, 32.727615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994255, 28.934740, 33.077503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004677, -0.947315, 0.320268,
		0.923948, -0.118408, -0.363730,
		0.382489, 0.297612, 0.874717,
		41.109001, 29.024023, 33.339916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502728, 28.421444, 32.766399>,  <40.841259, 28.815695, 32.727615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502728, 28.421444, 32.766399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314175, 28.508080, 33.108368>,  <41.201042, 28.560061, 33.313549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314175, 28.508080, 33.108368>,  <41.502728, 28.421444, 32.766399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314175, 28.508080, 33.108368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178378, -0.925927, 0.332929,
		0.863702, 0.309436, 0.397829,
		-0.471381, 0.216587, 0.854921,
		41.172760, 28.573055, 33.364845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887955, 28.432983, 33.399925>,  <41.502728, 28.421444, 32.766399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887955, 28.432983, 33.399925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516178, 28.304089, 33.471817>,  <41.293114, 28.226751, 33.514954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516178, 28.304089, 33.471817>,  <41.887955, 28.432983, 33.399925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516178, 28.304089, 33.471817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361855, -0.891277, 0.273289,
		0.072126, 0.319042, 0.944992,
		-0.929440, -0.322239, 0.179731,
		41.237347, 28.207417, 33.525738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245590, 28.815378, 33.003963>,  <41.887955, 28.432983, 33.399925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245590, 28.815378, 33.003963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894741, 28.925673, 32.846672>,  <41.684231, 28.991850, 32.752296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894741, 28.925673, 32.846672>,  <42.245590, 28.815378, 33.003963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894741, 28.925673, 32.846672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160042, 0.939779, 0.301998,
		0.452824, 0.201954, -0.868427,
		-0.877119, 0.275736, -0.393233,
		41.631607, 29.008394, 32.728703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363358, 29.236193, 32.421574>,  <42.245590, 28.815378, 33.003963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363358, 29.236193, 32.421574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032837, 29.327368, 32.627590>,  <41.834526, 29.382072, 32.751202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032837, 29.327368, 32.627590>,  <42.363358, 29.236193, 32.421574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032837, 29.327368, 32.627590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209952, 0.973195, -0.093866,
		-0.522633, 0.030573, -0.852009,
		-0.826302, 0.227938, 0.515043,
		41.784946, 29.395750, 32.782104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118389, 29.846472, 32.126003>,  <42.363358, 29.236193, 32.421574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118389, 29.846472, 32.126003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929840, 29.809214, 32.476803>,  <41.816711, 29.786860, 32.687283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929840, 29.809214, 32.476803>,  <42.118389, 29.846472, 32.126003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929840, 29.809214, 32.476803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176700, 0.964269, 0.197386,
		-0.864053, 0.248009, -0.438068,
		-0.471369, -0.093146, 0.877004,
		41.788429, 29.781269, 32.739902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822910, 30.414486, 32.199013>,  <42.118389, 29.846472, 32.126003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822910, 30.414486, 32.199013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869698, 30.298086, 32.578831>,  <41.897770, 30.228247, 32.806721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869698, 30.298086, 32.578831>,  <41.822910, 30.414486, 32.199013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869698, 30.298086, 32.578831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186308, 0.932706, 0.308786,
		-0.975504, -0.213026, 0.054881,
		0.116967, -0.290997, 0.949547,
		41.904789, 30.210787, 32.863693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571507, 30.979204, 32.551800>,  <41.822910, 30.414486, 32.199013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571507, 30.979204, 32.551800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738182, 30.765730, 32.846161>,  <41.838188, 30.637646, 33.022778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738182, 30.765730, 32.846161>,  <41.571507, 30.979204, 32.551800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738182, 30.765730, 32.846161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000020, 0.809535, 0.587072,
		-0.909051, -0.244609, 0.337332,
		0.416685, -0.533685, 0.735904,
		41.863186, 30.605625, 33.066933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198120, 31.153124, 33.126331>,  <41.571507, 30.979204, 32.551800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198120, 31.153124, 33.126331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571751, 31.053524, 33.228699>,  <41.795929, 30.993765, 33.290119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571751, 31.053524, 33.228699>,  <41.198120, 31.153124, 33.126331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571751, 31.053524, 33.228699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061953, 0.818875, 0.570619,
		-0.351645, -0.517150, 0.780322,
		0.934081, -0.248999, 0.255914,
		41.851974, 30.978825, 33.305473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174820, 31.251177, 33.874714>,  <41.198120, 31.153124, 33.126331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174820, 31.251177, 33.874714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556320, 31.241320, 33.754875>,  <41.785221, 31.235405, 33.682972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556320, 31.241320, 33.754875>,  <41.174820, 31.251177, 33.874714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556320, 31.241320, 33.754875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236229, 0.677808, 0.696256,
		0.185914, -0.734825, 0.652279,
		0.953746, -0.024643, -0.299601,
		41.842445, 31.233927, 33.664993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547867, 31.691494, 34.442108>,  <41.174820, 31.251177, 33.874714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547867, 31.691494, 34.442108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820747, 31.661842, 34.151150>,  <41.984474, 31.644051, 33.976574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820747, 31.661842, 34.151150>,  <41.547867, 31.691494, 34.442108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820747, 31.661842, 34.151150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511295, 0.759524, 0.402120,
		0.522666, -0.646242, 0.556050,
		0.682200, -0.074131, -0.727398,
		42.025406, 31.639603, 33.932930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310997, 31.339064, 34.681065>,  <41.547867, 31.691494, 34.442108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310997, 31.339064, 34.681065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326111, 31.574303, 34.357903>,  <42.335178, 31.715446, 34.164005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326111, 31.574303, 34.357903>,  <42.310997, 31.339064, 34.681065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326111, 31.574303, 34.357903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532072, 0.672510, 0.514421,
		0.845855, -0.449301, -0.287502,
		0.037781, 0.588097, -0.807907,
		42.337444, 31.750732, 34.115532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908787, 31.568590, 34.744595>,  <42.310997, 31.339064, 34.681065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908787, 31.568590, 34.744595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751537, 31.817965, 34.474251>,  <42.657188, 31.967588, 34.312046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751537, 31.817965, 34.474251>,  <42.908787, 31.568590, 34.744595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751537, 31.817965, 34.474251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403314, 0.777470, 0.482574,
		0.826314, -0.082874, -0.557080,
		-0.393120, 0.623435, -0.675859,
		42.633602, 32.004993, 34.271492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444122, 31.864441, 34.432690>,  <42.908787, 31.568590, 34.744595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444122, 31.864441, 34.432690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129726, 32.109890, 34.402519>,  <42.941090, 32.257160, 34.384418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129726, 32.109890, 34.402519>,  <43.444122, 31.864441, 34.432690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129726, 32.109890, 34.402519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585065, 0.777680, 0.230028,
		0.199807, 0.136671, -0.970257,
		-0.785988, 0.613624, -0.075425,
		42.893929, 32.293976, 34.379890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776020, 32.305950, 34.135910>,  <43.444122, 31.864441, 34.432690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776020, 32.305950, 34.135910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453758, 32.492893, 34.281506>,  <43.260399, 32.605061, 34.368862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453758, 32.492893, 34.281506>,  <43.776020, 32.305950, 34.135910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453758, 32.492893, 34.281506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576680, 0.759309, 0.301479,
		-0.135480, 0.452794, -0.881262,
		-0.805658, 0.467362, 0.363988,
		43.212059, 32.633102, 34.390701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737507, 32.926392, 33.756409>,  <43.776020, 32.305950, 34.135910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737507, 32.926392, 33.756409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521599, 32.972897, 34.089909>,  <43.392056, 33.000797, 34.290009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521599, 32.972897, 34.089909>,  <43.737507, 32.926392, 33.756409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521599, 32.972897, 34.089909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522396, 0.822904, 0.223452,
		-0.660114, 0.556158, -0.504913,
		-0.539769, 0.116261, 0.833746,
		43.359669, 33.007774, 34.340031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573715, 33.621223, 33.783306>,  <43.737507, 32.926392, 33.756409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573715, 33.621223, 33.783306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543941, 33.496799, 34.162292>,  <43.526077, 33.422146, 34.389687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543941, 33.496799, 34.162292>,  <43.573715, 33.621223, 33.783306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543941, 33.496799, 34.162292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466165, 0.829053, 0.308807,
		-0.881561, 0.464664, 0.083294,
		-0.074436, -0.311062, 0.947470,
		43.521610, 33.403481, 34.446533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632030, 34.174843, 34.151665>,  <43.573715, 33.621223, 33.783306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632030, 34.174843, 34.151665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649658, 33.924969, 34.463516>,  <43.660233, 33.775043, 34.650627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649658, 33.924969, 34.463516>,  <43.632030, 34.174843, 34.151665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649658, 33.924969, 34.463516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471398, 0.701051, 0.535080,
		-0.880819, 0.343937, 0.325371,
		0.044068, -0.624688, 0.779630,
		43.662880, 33.737564, 34.697407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246311, 34.380749, 34.675713>,  <43.632030, 34.174843, 34.151665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246311, 34.380749, 34.675713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536686, 34.153156, 34.830254>,  <43.710911, 34.016602, 34.922977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536686, 34.153156, 34.830254>,  <43.246311, 34.380749, 34.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536686, 34.153156, 34.830254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317161, 0.775415, 0.546022,
		-0.610264, -0.273841, 0.743363,
		0.725938, -0.568984, 0.386356,
		43.754467, 33.982460, 34.946159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320801, 34.641941, 35.338905>,  <43.246311, 34.380749, 34.675713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320801, 34.641941, 35.338905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652145, 34.418060, 35.329479>,  <43.850952, 34.283730, 35.323822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652145, 34.418060, 35.329479>,  <43.320801, 34.641941, 35.338905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652145, 34.418060, 35.329479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437426, 0.619962, 0.651387,
		-0.349974, -0.549890, 0.758379,
		0.828358, -0.559704, -0.023566,
		43.900654, 34.250149, 35.322411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404461, 34.552383, 36.001514>,  <43.320801, 34.641941, 35.338905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404461, 34.552383, 36.001514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755493, 34.504108, 35.815922>,  <43.966114, 34.475143, 35.704567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755493, 34.504108, 35.815922>,  <43.404461, 34.552383, 36.001514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755493, 34.504108, 35.815922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438102, 0.594936, 0.673882,
		0.194706, -0.794660, 0.574983,
		0.877585, -0.120692, -0.463980,
		44.018768, 34.467899, 35.676727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882076, 34.383167, 36.542068>,  <43.404461, 34.552383, 36.001514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882076, 34.383167, 36.542068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098869, 34.522430, 36.236118>,  <44.228947, 34.605988, 36.052547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098869, 34.522430, 36.236118>,  <43.882076, 34.383167, 36.542068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098869, 34.522430, 36.236118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512114, 0.584814, 0.629072,
		0.666329, -0.732652, 0.138662,
		0.541982, 0.348158, -0.764880,
		44.261463, 34.626877, 36.006653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605015, 34.440472, 36.693996>,  <43.882076, 34.383167, 36.542068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605015, 34.440472, 36.693996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577728, 34.676189, 36.371983>,  <44.561356, 34.817619, 36.178776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577728, 34.676189, 36.371983>,  <44.605015, 34.440472, 36.693996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577728, 34.676189, 36.371983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377401, 0.762195, 0.525953,
		0.923534, -0.267942, -0.274393,
		-0.068216, 0.589292, -0.805035,
		44.557262, 34.852978, 36.130470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184093, 34.835495, 36.686230>,  <44.605015, 34.440472, 36.693996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184093, 34.835495, 36.686230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938492, 35.050182, 36.454739>,  <44.791130, 35.178997, 36.315845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938492, 35.050182, 36.454739>,  <45.184093, 34.835495, 36.686230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938492, 35.050182, 36.454739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320068, 0.839536, 0.439017,
		0.721492, 0.084328, -0.687269,
		-0.614008, 0.536720, -0.578727,
		44.754288, 35.211197, 36.281120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549557, 35.364197, 36.358868>,  <45.184093, 34.835495, 36.686230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549557, 35.364197, 36.358868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166363, 35.469505, 36.404396>,  <44.936447, 35.532692, 36.431713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166363, 35.469505, 36.404396>,  <45.549557, 35.364197, 36.358868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166363, 35.469505, 36.404396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286824, 0.878163, 0.382835,
		0.000834, 0.399397, -0.916778,
		-0.957983, 0.263273, 0.113824,
		44.878967, 35.548489, 36.438541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221165, 34.852810, 36.210808>,  <45.549557, 35.364197, 36.358868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221165, 34.852810, 36.210808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586132, 34.693588, 36.172745>,  <46.805111, 34.598057, 36.149906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586132, 34.693588, 36.172745>,  <46.221165, 34.852810, 36.210808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586132, 34.693588, 36.172745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100119, 0.442537, -0.891144,
		0.396833, 0.803565, 0.443629,
		0.912414, -0.398052, -0.095161,
		46.859856, 34.574173, 36.144196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.862892, 35.311398, 36.272495>,  <46.221165, 34.852810, 36.210808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.862892, 35.311398, 36.272495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827915, 35.003441, 36.019634>,  <46.806931, 34.818668, 35.867916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827915, 35.003441, 36.019634>,  <46.862892, 35.311398, 36.272495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.827915, 35.003441, 36.019634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163781, 0.614841, -0.771458,
		0.982614, -0.170990, 0.072333,
		-0.087438, -0.769892, -0.632156,
		46.801685, 34.772472, 35.829987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.515930, 35.246422, 35.738438>,  <46.862892, 35.311398, 36.272495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.515930, 35.246422, 35.738438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190090, 35.096882, 35.561047>,  <46.994587, 35.007156, 35.454613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190090, 35.096882, 35.561047>,  <47.515930, 35.246422, 35.738438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.190090, 35.096882, 35.561047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078713, 0.686253, -0.723091,
		0.574661, -0.623935, -0.529593,
		-0.814597, -0.373847, -0.443475,
		46.945713, 34.984726, 35.428005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.697029, 35.071068, 35.005569>,  <47.515930, 35.246422, 35.738438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.697029, 35.071068, 35.005569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.306347, 35.156902, 35.006153>,  <47.071938, 35.208405, 35.006504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.306347, 35.156902, 35.006153>,  <47.697029, 35.071068, 35.005569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.306347, 35.156902, 35.006153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149427, 0.684972, -0.713081,
		-0.154019, -0.696251, -0.701080,
		-0.976704, 0.214589, 0.001460,
		47.013336, 35.221279, 35.006592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.522346, 34.317627, 49.561852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133442, 34.237282, 49.513916>,  <34.900101, 34.189075, 49.485153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133442, 34.237282, 49.513916>,  <35.522346, 34.317627, 49.561852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133442, 34.237282, 49.513916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033536, 0.387366, -0.921316,
		0.231477, -0.899779, -0.369886,
		-0.972262, -0.200859, -0.119841,
		34.841763, 34.177025, 49.477962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438381, 33.965786, 48.855949>,  <35.522346, 34.317627, 49.561852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438381, 33.965786, 48.855949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069408, 34.090107, 48.947617>,  <34.848022, 34.164700, 49.002617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069408, 34.090107, 48.947617>,  <35.438381, 33.965786, 48.855949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069408, 34.090107, 48.947617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139889, 0.284185, -0.948509,
		-0.359925, -0.906995, -0.218664,
		-0.922435, 0.310803, 0.229164,
		34.792679, 34.183350, 49.016365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953945, 33.686958, 48.294643>,  <35.438381, 33.965786, 48.855949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953945, 33.686958, 48.294643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766911, 34.004704, 48.449741>,  <34.654690, 34.195351, 48.542801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766911, 34.004704, 48.449741>,  <34.953945, 33.686958, 48.294643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766911, 34.004704, 48.449741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155080, 0.358128, -0.920703,
		-0.870238, -0.490639, -0.044265,
		-0.467586, 0.794367, 0.387745,
		34.626637, 34.243015, 48.566063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361355, 33.793354, 47.893410>,  <34.953945, 33.686958, 48.294643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361355, 33.793354, 47.893410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413498, 34.151695, 48.063324>,  <34.444786, 34.366699, 48.165272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413498, 34.151695, 48.063324>,  <34.361355, 33.793354, 47.893410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413498, 34.151695, 48.063324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367116, 0.441606, -0.818664,
		-0.920995, -0.049226, 0.386451,
		0.130359, 0.895858, 0.424789,
		34.452606, 34.420452, 48.190762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717766, 34.211884, 47.723637>,  <34.361355, 33.793354, 47.893410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717766, 34.211884, 47.723637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.008598, 34.464005, 47.832497>,  <34.183098, 34.615276, 47.897812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.008598, 34.464005, 47.832497>,  <33.717766, 34.211884, 47.723637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008598, 34.464005, 47.832497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155856, 0.537590, -0.828677,
		-0.668625, 0.560100, 0.489109,
		0.727082, 0.630305, 0.272151,
		34.226723, 34.653095, 47.914143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443329, 34.930042, 47.588371>,  <33.717766, 34.211884, 47.723637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443329, 34.930042, 47.588371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.843079, 34.932022, 47.602341>,  <34.082928, 34.933208, 47.610722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.843079, 34.932022, 47.602341>,  <33.443329, 34.930042, 47.588371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843079, 34.932022, 47.602341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029661, 0.417803, -0.908054,
		-0.019085, 0.908524, 0.417396,
		0.999378, 0.004950, 0.034922,
		34.142891, 34.933506, 47.612816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593452, 35.551098, 47.335640>,  <33.443329, 34.930042, 47.588371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593452, 35.551098, 47.335640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.957706, 35.393059, 47.287228>,  <34.176258, 35.298237, 47.258183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.957706, 35.393059, 47.287228>,  <33.593452, 35.551098, 47.335640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957706, 35.393059, 47.287228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079812, 0.455545, -0.886628,
		0.405437, 0.797732, 0.446368,
		0.910632, -0.395097, -0.121026,
		34.230896, 35.274529, 47.250919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120209, 36.079983, 47.229240>,  <33.593452, 35.551098, 47.335640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120209, 36.079983, 47.229240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283100, 35.746544, 47.079960>,  <34.380833, 35.546478, 46.990391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283100, 35.746544, 47.079960>,  <34.120209, 36.079983, 47.229240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283100, 35.746544, 47.079960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062593, 0.433129, -0.899156,
		0.911181, 0.342799, 0.228558,
		0.407225, -0.833600, -0.373202,
		34.405266, 35.496464, 46.967999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548649, 36.319141, 46.707607>,  <34.120209, 36.079983, 47.229240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548649, 36.319141, 46.707607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.568100, 35.934895, 46.598175>,  <34.579773, 35.704346, 46.532516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.568100, 35.934895, 46.598175>,  <34.548649, 36.319141, 46.707607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568100, 35.934895, 46.598175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182217, 0.277839, -0.943187,
		0.982055, -0.003984, 0.188553,
		0.048630, -0.960619, -0.273579,
		34.582687, 35.646709, 46.516102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173740, 36.324646, 46.323971>,  <34.548649, 36.319141, 46.707607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173740, 36.324646, 46.323971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942715, 36.020073, 46.206226>,  <34.804100, 35.837330, 46.135578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942715, 36.020073, 46.206226>,  <35.173740, 36.324646, 46.323971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942715, 36.020073, 46.206226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188854, 0.226177, -0.955604,
		0.794201, -0.607512, 0.013168,
		-0.577562, -0.761428, -0.294361,
		34.769447, 35.791645, 46.117916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514698, 36.039394, 45.815056>,  <35.173740, 36.324646, 46.323971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514698, 36.039394, 45.815056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138321, 35.917496, 45.756062>,  <34.912495, 35.844357, 45.720665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138321, 35.917496, 45.756062>,  <35.514698, 36.039394, 45.815056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138321, 35.917496, 45.756062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081988, 0.217559, -0.972598,
		0.328487, -0.927251, -0.179725,
		-0.940943, -0.304751, -0.147489,
		34.856037, 35.826073, 45.711815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581299, 35.517849, 45.324726>,  <35.514698, 36.039394, 45.815056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581299, 35.517849, 45.324726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213470, 35.672958, 45.299339>,  <34.992775, 35.766022, 45.284107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213470, 35.672958, 45.299339>,  <35.581299, 35.517849, 45.324726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213470, 35.672958, 45.299339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137751, 0.166872, -0.976309,
		-0.367993, -0.906525, -0.206866,
		-0.919568, 0.387771, -0.063467,
		34.937599, 35.789291, 45.280300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344421, 35.283901, 44.733521>,  <35.581299, 35.517849, 45.324726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344421, 35.283901, 44.733521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134186, 35.616226, 44.806736>,  <35.008045, 35.815620, 44.850666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134186, 35.616226, 44.806736>,  <35.344421, 35.283901, 44.733521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134186, 35.616226, 44.806736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051882, 0.246057, -0.967866,
		-0.849155, -0.499204, -0.172430,
		-0.525590, 0.830814, 0.183041,
		34.976509, 35.865471, 44.861649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010113, 35.370895, 44.142979>,  <35.344421, 35.283901, 44.733521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010113, 35.370895, 44.142979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.937405, 35.723461, 44.317368>,  <34.893780, 35.935001, 44.422001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.937405, 35.723461, 44.317368>,  <35.010113, 35.370895, 44.142979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937405, 35.723461, 44.317368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164687, 0.464379, -0.870190,
		-0.969452, -0.086376, -0.229568,
		-0.181770, 0.881415, 0.435968,
		34.882874, 35.987885, 44.448158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494911, 35.732830, 43.775295>,  <35.010113, 35.370895, 44.142979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494911, 35.732830, 43.775295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732056, 36.002651, 43.951244>,  <34.874344, 36.164543, 44.056816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732056, 36.002651, 43.951244>,  <34.494911, 35.732830, 43.775295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732056, 36.002651, 43.951244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083868, 0.594970, -0.799360,
		-0.800925, 0.437018, 0.409309,
		0.592861, 0.674556, 0.439875,
		34.909912, 36.205017, 44.083206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367317, 36.361351, 43.348267>,  <34.494911, 35.732830, 43.775295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367317, 36.361351, 43.348267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661110, 36.528622, 43.562061>,  <34.837383, 36.628983, 43.690338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661110, 36.528622, 43.562061>,  <34.367317, 36.361351, 43.348267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661110, 36.528622, 43.562061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152900, 0.665368, -0.730689,
		-0.661184, 0.618398, 0.424759,
		0.734478, 0.418174, 0.534484,
		34.881454, 36.654076, 43.722408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237484, 37.134079, 43.375919>,  <34.367317, 36.361351, 43.348267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237484, 37.134079, 43.375919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.621017, 37.025166, 43.408157>,  <34.851139, 36.959816, 43.427498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.621017, 37.025166, 43.408157>,  <34.237484, 37.134079, 43.375919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621017, 37.025166, 43.408157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232037, 0.587699, -0.775093,
		0.163680, 0.761888, 0.626686,
		0.958837, -0.272282, 0.080592,
		34.908669, 36.943481, 43.432335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628937, 37.732979, 43.193699>,  <34.237484, 37.134079, 43.375919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628937, 37.732979, 43.193699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907322, 37.446629, 43.171253>,  <35.074352, 37.274818, 43.157787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907322, 37.446629, 43.171253>,  <34.628937, 37.732979, 43.193699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907322, 37.446629, 43.171253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385314, 0.438254, -0.812075,
		0.605939, 0.543556, 0.580848,
		0.695967, -0.715877, -0.056115,
		35.116112, 37.231865, 43.154419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279663, 38.111275, 42.967884>,  <34.628937, 37.732979, 43.193699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279663, 38.111275, 42.967884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320351, 37.725887, 42.868786>,  <35.344765, 37.494656, 42.809326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320351, 37.725887, 42.868786>,  <35.279663, 38.111275, 42.967884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320351, 37.725887, 42.868786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379119, 0.267787, -0.885753,
		0.919740, -0.003824, 0.392510,
		0.101722, -0.963471, -0.247744,
		35.350868, 37.436848, 42.794464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904400, 38.113487, 42.646332>,  <35.279663, 38.111275, 42.967884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904400, 38.113487, 42.646332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.735607, 37.770905, 42.527401>,  <35.634331, 37.565353, 42.456043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.735607, 37.770905, 42.527401>,  <35.904400, 38.113487, 42.646332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735607, 37.770905, 42.527401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231293, 0.215404, -0.948738,
		0.876603, -0.469122, 0.107196,
		-0.421983, -0.856461, -0.297328,
		35.609013, 37.513966, 42.438202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493504, 37.770706, 42.246292>,  <35.904400, 38.113487, 42.646332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493504, 37.770706, 42.246292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145622, 37.618702, 42.120300>,  <35.936893, 37.527500, 42.044704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145622, 37.618702, 42.120300>,  <36.493504, 37.770706, 42.246292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145622, 37.618702, 42.120300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255494, 0.199397, -0.946025,
		0.422310, -0.903233, -0.076324,
		-0.869700, -0.380015, -0.314977,
		35.884712, 37.504696, 42.025806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629223, 37.194538, 41.772541>,  <36.493504, 37.770706, 42.246292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629223, 37.194538, 41.772541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256630, 37.295528, 41.667778>,  <36.033073, 37.356125, 41.604919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256630, 37.295528, 41.667778>,  <36.629223, 37.194538, 41.772541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256630, 37.295528, 41.667778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279875, 0.037436, -0.959306,
		-0.232401, -0.966878, -0.105534,
		-0.931483, 0.252480, -0.261905,
		35.977184, 37.371273, 41.589207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985664, 37.303864, 41.119225>,  <36.629223, 37.194538, 41.772541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985664, 37.303864, 41.119225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289295, 37.080780, 40.984901>,  <37.471474, 36.946930, 40.904308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289295, 37.080780, 40.984901>,  <36.985664, 37.303864, 41.119225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289295, 37.080780, 40.984901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124657, -0.630802, 0.765865,
		-0.638976, -0.539475, -0.548340,
		0.759059, -0.557724, -0.335818,
		37.517017, 36.913467, 40.884159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711884, 36.586559, 41.028889>,  <36.985664, 37.303864, 41.119225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711884, 36.586559, 41.028889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110485, 36.553467, 41.033558>,  <37.349648, 36.533611, 41.036358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110485, 36.553467, 41.033558>,  <36.711884, 36.586559, 41.028889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110485, 36.553467, 41.033558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072714, -0.790013, 0.608763,
		-0.041142, -0.607483, -0.793266,
		0.996504, -0.082728, 0.011670,
		37.409435, 36.528648, 41.037060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870144, 35.844360, 41.044788>,  <36.711884, 36.586559, 41.028889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870144, 35.844360, 41.044788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192291, 36.034992, 41.185787>,  <37.385582, 36.149372, 41.270386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192291, 36.034992, 41.185787>,  <36.870144, 35.844360, 41.044788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192291, 36.034992, 41.185787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132487, -0.724332, 0.676603,
		0.577777, -0.498214, -0.646495,
		0.805370, 0.476578, 0.352496,
		37.433903, 36.177967, 41.291534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298794, 35.305660, 41.273037>,  <36.870144, 35.844360, 41.044788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298794, 35.305660, 41.273037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.464645, 35.630207, 41.437847>,  <37.564156, 35.824936, 41.536736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.464645, 35.630207, 41.437847>,  <37.298794, 35.305660, 41.273037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464645, 35.630207, 41.437847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285826, -0.545987, 0.787529,
		0.863936, -0.208765, -0.458292,
		0.414630, 0.811366, 0.412027,
		37.589035, 35.873615, 41.561455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023441, 35.123558, 41.569447>,  <37.298794, 35.305660, 41.273037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023441, 35.123558, 41.569447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.899414, 35.439247, 41.781479>,  <37.824997, 35.628662, 41.908699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.899414, 35.439247, 41.781479>,  <38.023441, 35.123558, 41.569447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899414, 35.439247, 41.781479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278235, -0.457820, 0.844385,
		0.909090, 0.409301, -0.077635,
		-0.310065, 0.789223, 0.530082,
		37.806393, 35.676014, 41.940502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600109, 35.133015, 42.104900>,  <38.023441, 35.123558, 41.569447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600109, 35.133015, 42.104900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296200, 35.350651, 42.247292>,  <38.113853, 35.481232, 42.332726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296200, 35.350651, 42.247292>,  <38.600109, 35.133015, 42.104900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296200, 35.350651, 42.247292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205028, -0.319073, 0.925287,
		0.617021, 0.775989, 0.130868,
		-0.759769, 0.544090, 0.355975,
		38.068268, 35.513878, 42.354084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928543, 35.437073, 42.697308>,  <38.600109, 35.133015, 42.104900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928543, 35.437073, 42.697308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531147, 35.448063, 42.741520>,  <38.292709, 35.454659, 42.768047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531147, 35.448063, 42.741520>,  <38.928543, 35.437073, 42.697308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531147, 35.448063, 42.741520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088151, -0.429031, 0.898978,
		0.072122, 0.902872, 0.423817,
		-0.993493, 0.027477, 0.110531,
		38.233101, 35.456306, 42.774681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838623, 35.674236, 43.330257>,  <38.928543, 35.437073, 42.697308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838623, 35.674236, 43.330257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506699, 35.468689, 43.243210>,  <38.307545, 35.345360, 43.190983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506699, 35.468689, 43.243210>,  <38.838623, 35.674236, 43.330257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506699, 35.468689, 43.243210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051334, -0.318017, 0.946694,
		-0.555679, 0.796748, 0.237515,
		-0.829811, -0.513865, -0.217616,
		38.257755, 35.314529, 43.177925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427063, 35.711159, 43.862484>,  <38.838623, 35.674236, 43.330257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427063, 35.711159, 43.862484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253510, 35.397549, 43.684925>,  <38.149376, 35.209381, 43.578392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253510, 35.397549, 43.684925>,  <38.427063, 35.711159, 43.862484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253510, 35.397549, 43.684925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217909, -0.386739, 0.896074,
		-0.874218, 0.485524, -0.003045,
		-0.433887, -0.784027, -0.443895,
		38.123344, 35.162342, 43.551758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727146, 35.730679, 44.135632>,  <38.427063, 35.711159, 43.862484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727146, 35.730679, 44.135632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834782, 35.361111, 44.026852>,  <37.899361, 35.139370, 43.961582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834782, 35.361111, 44.026852>,  <37.727146, 35.730679, 44.135632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834782, 35.361111, 44.026852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330451, -0.353795, 0.875003,
		-0.904652, -0.145583, -0.400513,
		0.269085, -0.923924, -0.271953,
		37.915508, 35.083935, 43.945267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080574, 35.375198, 44.287018>,  <37.727146, 35.730679, 44.135632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080574, 35.375198, 44.287018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364777, 35.094997, 44.260254>,  <37.535297, 34.926876, 44.244194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364777, 35.094997, 44.260254>,  <37.080574, 35.375198, 44.287018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364777, 35.094997, 44.260254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368164, -0.451080, 0.813008,
		-0.599699, -0.553011, -0.578394,
		0.710505, -0.700504, -0.066913,
		37.577927, 34.884846, 44.240181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782799, 34.748856, 44.662117>,  <37.080574, 35.375198, 44.287018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782799, 34.748856, 44.662117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172684, 34.663616, 44.635212>,  <37.406616, 34.612473, 44.619068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172684, 34.663616, 44.635212>,  <36.782799, 34.748856, 44.662117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172684, 34.663616, 44.635212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072884, -0.587709, 0.805783,
		-0.211244, -0.780504, -0.588378,
		0.974712, -0.213100, -0.067264,
		37.465096, 34.599686, 44.615032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911156, 33.996967, 44.656040>,  <36.782799, 34.748856, 44.662117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911156, 33.996967, 44.656040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255798, 34.154800, 44.783752>,  <37.462585, 34.249500, 44.860378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255798, 34.154800, 44.783752>,  <36.911156, 33.996967, 44.656040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255798, 34.154800, 44.783752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161686, -0.382893, 0.909533,
		0.481138, -0.835281, -0.266104,
		0.861605, 0.394586, 0.319278,
		37.514278, 34.273174, 44.879536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308407, 33.462971, 44.921936>,  <36.911156, 33.996967, 44.656040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308407, 33.462971, 44.921936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469997, 33.797096, 45.071091>,  <37.566952, 33.997574, 45.160583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469997, 33.797096, 45.071091>,  <37.308407, 33.462971, 44.921936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469997, 33.797096, 45.071091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075979, -0.436863, 0.896314,
		0.911608, -0.333758, -0.239949,
		0.403977, 0.835318, 0.372889,
		37.591190, 34.047691, 45.182957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009266, 33.346748, 45.205288>,  <37.308407, 33.462971, 44.921936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009266, 33.346748, 45.205288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878216, 33.678108, 45.387020>,  <37.799587, 33.876923, 45.496059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878216, 33.678108, 45.387020>,  <38.009266, 33.346748, 45.205288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878216, 33.678108, 45.387020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067949, -0.458970, 0.885850,
		0.942361, 0.321099, 0.094082,
		-0.327626, 0.828397, 0.454334,
		37.779926, 33.926628, 45.523319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450844, 33.463909, 45.864479>,  <38.009266, 33.346748, 45.205288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450844, 33.463909, 45.864479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116585, 33.673832, 45.929310>,  <37.916027, 33.799786, 45.968208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116585, 33.673832, 45.929310>,  <38.450844, 33.463909, 45.864479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116585, 33.673832, 45.929310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026719, -0.255890, 0.966337,
		0.548613, 0.811849, 0.199811,
		-0.835649, 0.524806, 0.162076,
		37.865891, 33.831272, 45.977932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597198, 33.683865, 46.550278>,  <38.450844, 33.463909, 45.864479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597198, 33.683865, 46.550278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207954, 33.744873, 46.481232>,  <37.974407, 33.781479, 46.439804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207954, 33.744873, 46.481232>,  <38.597198, 33.683865, 46.550278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207954, 33.744873, 46.481232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198910, -0.178502, 0.963624,
		0.116165, 0.972046, 0.204040,
		-0.973109, 0.152525, -0.172614,
		37.916023, 33.790630, 46.429447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340023, 34.170612, 47.017433>,  <38.597198, 33.683865, 46.550278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340023, 34.170612, 47.017433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007038, 33.976040, 46.911304>,  <37.807247, 33.859295, 46.847626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007038, 33.976040, 46.911304>,  <38.340023, 34.170612, 47.017433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007038, 33.976040, 46.911304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276850, -0.049641, 0.959630,
		-0.479967, 0.872307, -0.093345,
		-0.832458, -0.486433, -0.265324,
		37.757301, 33.830109, 46.831707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.331936, 34.544563, 47.512207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310432, 34.163940, 47.391109>,  <37.297531, 33.935566, 47.318451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310432, 34.163940, 47.391109>,  <37.331936, 34.544563, 47.512207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310432, 34.163940, 47.391109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303698, -0.273240, 0.912747,
		-0.951251, 0.141008, -0.274297,
		-0.053756, -0.951555, -0.302744,
		37.294304, 33.878475, 47.300285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768238, 34.253757, 47.880993>,  <37.331936, 34.544563, 47.512207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768238, 34.253757, 47.880993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.945175, 33.917633, 47.755638>,  <37.051338, 33.715958, 47.680424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.945175, 33.917633, 47.755638>,  <36.768238, 34.253757, 47.880993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945175, 33.917633, 47.755638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190364, -0.429446, 0.882801,
		-0.876412, -0.330839, -0.349925,
		0.442339, -0.840310, -0.313392,
		37.077877, 33.665539, 47.661621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255253, 33.652493, 48.024063>,  <36.768238, 34.253757, 47.880993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255253, 33.652493, 48.024063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628197, 33.514633, 47.980396>,  <36.851963, 33.431915, 47.954197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628197, 33.514633, 47.980396>,  <36.255253, 33.652493, 48.024063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628197, 33.514633, 47.980396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112471, -0.563494, 0.818428,
		-0.343587, -0.750793, -0.564143,
		0.932362, -0.344651, -0.109167,
		36.907906, 33.411236, 47.947647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130302, 32.837109, 48.064167>,  <36.255253, 33.652493, 48.024063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130302, 32.837109, 48.064167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498749, 32.964310, 48.153984>,  <36.719818, 33.040630, 48.207874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498749, 32.964310, 48.153984>,  <36.130302, 32.837109, 48.064167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498749, 32.964310, 48.153984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060274, -0.453341, 0.889297,
		0.384594, -0.832680, -0.398412,
		0.921116, 0.318005, 0.224541,
		36.775085, 33.059711, 48.221348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520935, 32.301918, 48.282166>,  <36.130302, 32.837109, 48.064167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520935, 32.301918, 48.282166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747009, 32.591743, 48.439938>,  <36.882652, 32.765636, 48.534599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747009, 32.591743, 48.439938>,  <36.520935, 32.301918, 48.282166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747009, 32.591743, 48.439938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004882, -0.475173, 0.879879,
		0.824949, -0.499221, -0.265024,
		0.565186, 0.724561, 0.394431,
		36.916565, 32.809113, 48.558266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865490, 31.996763, 48.724823>,  <36.520935, 32.301918, 48.282166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865490, 31.996763, 48.724823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935291, 32.371895, 48.844841>,  <36.977173, 32.596973, 48.916851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935291, 32.371895, 48.844841>,  <36.865490, 31.996763, 48.724823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935291, 32.371895, 48.844841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159133, -0.327574, 0.931328,
		0.971712, -0.114776, -0.206404,
		0.174506, 0.937828, 0.300043,
		36.987644, 32.653244, 48.934853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435631, 31.942400, 49.012314>,  <36.865490, 31.996763, 48.724823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435631, 31.942400, 49.012314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296494, 32.273651, 49.188137>,  <37.213013, 32.472401, 49.293629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.296494, 32.273651, 49.188137>,  <37.435631, 31.942400, 49.012314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296494, 32.273651, 49.188137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289764, -0.350921, 0.890445,
		0.891652, 0.437101, -0.117897,
		-0.347841, 0.828129, 0.439555,
		37.192142, 32.522091, 49.320004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852669, 32.028618, 49.528008>,  <37.435631, 31.942400, 49.012314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852669, 32.028618, 49.528008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536617, 32.252373, 49.628235>,  <37.346989, 32.386627, 49.688374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536617, 32.252373, 49.628235>,  <37.852669, 32.028618, 49.528008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536617, 32.252373, 49.628235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126520, -0.251154, 0.959643,
		0.599745, 0.789941, 0.127670,
		-0.790126, 0.559388, 0.250572,
		37.299580, 32.420189, 49.703407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139217, 32.265308, 50.076263>,  <37.852669, 32.028618, 49.528008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139217, 32.265308, 50.076263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741486, 32.288414, 50.111969>,  <37.502846, 32.302277, 50.133392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741486, 32.288414, 50.111969>,  <38.139217, 32.265308, 50.076263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741486, 32.288414, 50.111969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080127, -0.144676, 0.986229,
		0.069884, 0.987791, 0.139227,
		-0.994332, 0.057766, 0.089260,
		37.443188, 32.305744, 50.138748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011471, 32.686085, 50.779266>,  <38.139217, 32.265308, 50.076263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011471, 32.686085, 50.779266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687599, 32.458492, 50.721745>,  <37.493275, 32.321938, 50.687233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687599, 32.458492, 50.721745>,  <38.011471, 32.686085, 50.779266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687599, 32.458492, 50.721745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014165, -0.263914, 0.964442,
		-0.586698, 0.778854, 0.221746,
		-0.809682, -0.568978, -0.143805,
		37.444695, 32.287800, 50.678604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577496, 32.808056, 51.351696>,  <38.011471, 32.686085, 50.779266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577496, 32.808056, 51.351696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473270, 32.451454, 51.203468>,  <37.410736, 32.237492, 51.114532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473270, 32.451454, 51.203468>,  <37.577496, 32.808056, 51.351696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473270, 32.451454, 51.203468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004886, -0.382601, 0.923901,
		-0.965444, 0.242545, 0.095336,
		-0.260564, -0.891509, -0.370565,
		37.395100, 32.184002, 51.092300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319473, 32.562153, 51.942215>,  <37.577496, 32.808056, 51.351696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319473, 32.562153, 51.942215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342396, 32.250729, 51.692238>,  <37.356148, 32.063873, 51.542252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342396, 32.250729, 51.692238>,  <37.319473, 32.562153, 51.942215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342396, 32.250729, 51.692238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012963, -0.625338, 0.780246,
		-0.998272, -0.052813, -0.025742,
		0.057304, -0.778564, -0.624943,
		37.359589, 32.017159, 51.504753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712570, 32.081985, 52.105556>,  <37.319473, 32.562153, 51.942215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712570, 32.081985, 52.105556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011669, 31.888685, 51.923416>,  <37.191128, 31.772705, 51.814133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011669, 31.888685, 51.923416>,  <36.712570, 32.081985, 52.105556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011669, 31.888685, 51.923416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008661, -0.692820, 0.721058,
		-0.663920, -0.535230, -0.522245,
		0.747754, -0.483248, -0.455342,
		37.235992, 31.743710, 51.786812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630646, 31.397593, 52.248684>,  <36.712570, 32.081985, 52.105556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630646, 31.397593, 52.248684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008259, 31.378023, 52.118206>,  <37.234829, 31.366282, 52.039921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008259, 31.378023, 52.118206>,  <36.630646, 31.397593, 52.248684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008259, 31.378023, 52.118206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221916, -0.637440, 0.737851,
		-0.244027, -0.768945, -0.590909,
		0.944036, -0.048923, -0.326194,
		37.291470, 31.363346, 52.020348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817371, 30.704746, 52.076557>,  <36.630646, 31.397593, 52.248684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817371, 30.704746, 52.076557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144806, 30.915037, 52.169098>,  <37.341267, 31.041212, 52.224625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144806, 30.915037, 52.169098>,  <36.817371, 30.704746, 52.076557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144806, 30.915037, 52.169098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296283, -0.731553, 0.614041,
		0.492067, -0.434100, -0.754604,
		0.818588, 0.525725, 0.231357,
		37.390381, 31.072754, 52.238506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319668, 30.252693, 51.943119>,  <36.817371, 30.704746, 52.076557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319668, 30.252693, 51.943119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.493805, 30.516924, 52.187778>,  <37.598286, 30.675463, 52.334576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.493805, 30.516924, 52.187778>,  <37.319668, 30.252693, 51.943119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493805, 30.516924, 52.187778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433028, -0.749303, 0.501030,
		0.789281, 0.046743, -0.612251,
		0.435342, 0.660575, 0.611652,
		37.624409, 30.715096, 52.371273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883781, 29.891186, 52.082558>,  <37.319668, 30.252693, 51.943119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883781, 29.891186, 52.082558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862526, 30.176680, 52.361916>,  <37.849773, 30.347977, 52.529530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862526, 30.176680, 52.361916>,  <37.883781, 29.891186, 52.082558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862526, 30.176680, 52.361916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371417, -0.635084, 0.677287,
		0.926944, 0.295385, -0.231348,
		-0.053135, 0.713734, 0.698398,
		37.846584, 30.390800, 52.571434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492687, 29.895849, 52.319775>,  <37.883781, 29.891186, 52.082558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492687, 29.895849, 52.319775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248810, 30.046326, 52.598846>,  <38.102486, 30.136612, 52.766289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248810, 30.046326, 52.598846>,  <38.492687, 29.895849, 52.319775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248810, 30.046326, 52.598846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295143, -0.709159, 0.640300,
		0.735640, 0.596301, 0.321339,
		-0.609692, 0.376189, 0.697680,
		38.065903, 30.159182, 52.808151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830772, 29.861170, 52.900398>,  <38.492687, 29.895849, 52.319775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830772, 29.861170, 52.900398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469738, 29.928812, 53.058765>,  <38.253117, 29.969397, 53.153786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469738, 29.928812, 53.058765>,  <38.830772, 29.861170, 52.900398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469738, 29.928812, 53.058765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199021, -0.651574, 0.732013,
		0.381756, 0.739497, 0.554443,
		-0.902581, 0.169104, 0.395917,
		38.198963, 29.979544, 53.177540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984184, 29.780916, 53.578552>,  <38.830772, 29.861170, 52.900398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984184, 29.780916, 53.578552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584793, 29.773596, 53.599377>,  <38.345158, 29.769203, 53.611874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584793, 29.773596, 53.599377>,  <38.984184, 29.780916, 53.578552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584793, 29.773596, 53.599377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048652, -0.737242, 0.673875,
		0.026051, 0.675381, 0.737008,
		-0.998476, -0.018301, 0.052065,
		38.285252, 29.768105, 53.614998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806236, 29.698381, 54.199402>,  <38.984184, 29.780916, 53.578552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806236, 29.698381, 54.199402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462135, 29.562222, 54.047562>,  <38.255676, 29.480526, 53.956455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462135, 29.562222, 54.047562>,  <38.806236, 29.698381, 54.199402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462135, 29.562222, 54.047562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083654, -0.640187, 0.763651,
		-0.502964, 0.688686, 0.522244,
		-0.860250, -0.340401, -0.379602,
		38.204060, 29.460102, 53.933681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351418, 29.684029, 54.767471>,  <38.806236, 29.698381, 54.199402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351418, 29.684029, 54.767471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245209, 29.428745, 54.478420>,  <38.181484, 29.275576, 54.304989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245209, 29.428745, 54.478420>,  <38.351418, 29.684029, 54.767471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245209, 29.428745, 54.478420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034303, -0.755312, 0.654467,
		-0.963495, 0.148986, 0.222444,
		-0.265521, -0.638206, -0.722628,
		38.165554, 29.237284, 54.261631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960911, 29.121031, 55.128052>,  <38.351418, 29.684029, 54.767471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960911, 29.121031, 55.128052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.074951, 28.957092, 54.781471>,  <38.143375, 28.858728, 54.573521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.074951, 28.957092, 54.781471>,  <37.960911, 29.121031, 55.128052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074951, 28.957092, 54.781471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325374, -0.808911, 0.489688,
		-0.901582, -0.421532, -0.097266,
		0.285099, -0.409846, -0.866456,
		38.160480, 28.834139, 54.521534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506775, 28.517998, 54.999752>,  <37.960911, 29.121031, 55.128052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506775, 28.517998, 54.999752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874477, 28.502886, 54.843010>,  <38.095097, 28.493818, 54.748966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874477, 28.502886, 54.843010>,  <37.506775, 28.517998, 54.999752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874477, 28.502886, 54.843010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194060, -0.822556, 0.534549,
		-0.342514, -0.567428, -0.748805,
		0.919252, -0.037778, -0.391852,
		38.150253, 28.491552, 54.725456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853561, 28.813013, 55.208992>,  <37.506775, 28.517998, 54.999752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853561, 28.813013, 55.208992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.458767, 28.797686, 55.146534>,  <36.221889, 28.788490, 55.109058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.458767, 28.797686, 55.146534>,  <36.853561, 28.813013, 55.208992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458767, 28.797686, 55.146534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084086, 0.704771, -0.704434,
		0.137041, -0.708399, -0.692380,
		-0.986990, -0.038317, -0.156149,
		36.162670, 28.786190, 55.099689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740345, 28.951561, 54.525475>,  <36.853561, 28.813013, 55.208992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740345, 28.951561, 54.525475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375202, 29.031618, 54.667820>,  <36.156116, 29.079653, 54.753227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375202, 29.031618, 54.667820>,  <36.740345, 28.951561, 54.525475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375202, 29.031618, 54.667820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151274, 0.643778, -0.750111,
		-0.379228, -0.738575, -0.557399,
		-0.912854, 0.200142, 0.355866,
		36.101345, 29.091661, 54.774578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198509, 28.892181, 53.953209>,  <36.740345, 28.951561, 54.525475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198509, 28.892181, 53.953209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.988216, 29.112991, 54.212093>,  <35.862041, 29.245478, 54.367424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.988216, 29.112991, 54.212093>,  <36.198509, 28.892181, 53.953209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988216, 29.112991, 54.212093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360236, 0.544768, -0.757270,
		-0.770610, -0.631266, -0.087542,
		-0.525729, 0.552024, 0.647208,
		35.830498, 29.278599, 54.406258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637932, 29.030098, 53.562649>,  <36.198509, 28.892181, 53.953209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637932, 29.030098, 53.562649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.639545, 29.297165, 53.860428>,  <35.640514, 29.457405, 54.039097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.639545, 29.297165, 53.860428>,  <35.637932, 29.030098, 53.562649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639545, 29.297165, 53.860428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409895, 0.680143, -0.607776,
		-0.912124, -0.302696, 0.276415,
		0.004030, 0.667668, 0.744448,
		35.640755, 29.497465, 54.083763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956966, 29.165993, 53.710804>,  <35.637932, 29.030098, 53.562649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956966, 29.165993, 53.710804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168190, 29.474588, 53.852768>,  <35.294926, 29.659746, 53.937946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168190, 29.474588, 53.852768>,  <34.956966, 29.165993, 53.710804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168190, 29.474588, 53.852768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615102, 0.635627, -0.466506,
		-0.585491, 0.028041, 0.810194,
		0.528062, 0.771487, 0.354906,
		35.326607, 29.706034, 53.959240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426804, 29.586372, 53.799297>,  <34.956966, 29.165993, 53.710804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426804, 29.586372, 53.799297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759296, 29.808668, 53.805008>,  <34.958794, 29.942045, 53.808434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759296, 29.808668, 53.805008>,  <34.426804, 29.586372, 53.799297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759296, 29.808668, 53.805008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454963, 0.694811, -0.556998,
		-0.319466, 0.456500, 0.830391,
		0.831234, 0.555739, 0.014278,
		35.008667, 29.975389, 53.809292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183136, 30.295906, 53.761463>,  <34.426804, 29.586372, 53.799297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183136, 30.295906, 53.761463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563423, 30.313074, 53.638634>,  <34.791595, 30.323376, 53.564938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563423, 30.313074, 53.638634>,  <34.183136, 30.295906, 53.761463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563423, 30.313074, 53.638634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202368, 0.836237, -0.509662,
		0.234909, 0.546686, 0.803711,
		0.950718, 0.042921, -0.307072,
		34.848640, 30.325951, 53.546513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433537, 31.049158, 53.852249>,  <34.183136, 30.295906, 53.761463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433537, 31.049158, 53.852249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652920, 30.852776, 53.581501>,  <34.784550, 30.734947, 53.419052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652920, 30.852776, 53.581501>,  <34.433537, 31.049158, 53.852249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652920, 30.852776, 53.581501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112761, 0.758665, -0.641649,
		0.828539, 0.428243, 0.360736,
		0.548459, -0.490954, -0.676872,
		34.817459, 30.705490, 53.378441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904949, 31.427296, 53.521862>,  <34.433537, 31.049158, 53.852249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904949, 31.427296, 53.521862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878990, 31.134672, 53.250389>,  <34.863415, 30.959099, 53.087505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878990, 31.134672, 53.250389>,  <34.904949, 31.427296, 53.521862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878990, 31.134672, 53.250389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098080, 0.681499, -0.725217,
		0.993060, 0.019502, -0.115978,
		-0.064896, -0.731559, -0.678682,
		34.859520, 30.915205, 53.046783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408398, 31.486437, 53.126438>,  <34.904949, 31.427296, 53.521862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408398, 31.486437, 53.126438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138615, 31.283295, 52.912079>,  <34.976746, 31.161409, 52.783463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138615, 31.283295, 52.912079>,  <35.408398, 31.486437, 53.126438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138615, 31.283295, 52.912079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031477, 0.705405, -0.708105,
		0.737648, -0.494451, -0.459775,
		-0.674451, -0.507860, -0.535905,
		34.936279, 31.130938, 52.751308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708904, 31.336067, 52.490356>,  <35.408398, 31.486437, 53.126438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708904, 31.336067, 52.490356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313965, 31.328209, 52.427410>,  <35.077003, 31.323494, 52.389645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313965, 31.328209, 52.427410>,  <35.708904, 31.336067, 52.490356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313965, 31.328209, 52.427410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102900, 0.675682, -0.729976,
		0.120666, -0.736931, -0.665110,
		-0.987346, -0.019644, -0.157362,
		35.017761, 31.322315, 52.380203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647278, 31.463961, 51.700977>,  <35.708904, 31.336067, 52.490356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647278, 31.463961, 51.700977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290726, 31.557613, 51.856220>,  <35.076794, 31.613806, 51.949364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290726, 31.557613, 51.856220>,  <35.647278, 31.463961, 51.700977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290726, 31.557613, 51.856220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077069, 0.765494, -0.638811,
		-0.446658, -0.599334, -0.664301,
		-0.891380, 0.234133, 0.388104,
		35.023312, 31.627853, 51.972652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213863, 31.440186, 50.991638>,  <35.647278, 31.463961, 51.700977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213863, 31.440186, 50.991638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032413, 31.632786, 51.291607>,  <34.923546, 31.748346, 51.471588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032413, 31.632786, 51.291607>,  <35.213863, 31.440186, 50.991638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032413, 31.632786, 51.291607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159455, 0.784050, -0.599867,
		-0.876812, -0.391692, -0.278885,
		-0.453623, 0.481501, 0.749922,
		34.896328, 31.777237, 51.516582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500492, 31.590969, 50.791866>,  <35.213863, 31.440186, 50.991638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500492, 31.590969, 50.791866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612999, 31.848312, 51.076675>,  <34.680504, 32.002716, 51.247562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612999, 31.848312, 51.076675>,  <34.500492, 31.590969, 50.791866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612999, 31.848312, 51.076675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351689, 0.759464, -0.547293,
		-0.892862, -0.096476, 0.439874,
		0.281268, 0.643356, 0.712026,
		34.697380, 32.041321, 51.290283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971210, 32.093193, 50.779949>,  <34.500492, 31.590969, 50.791866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971210, 32.093193, 50.779949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287189, 32.267475, 50.952526>,  <34.476776, 32.372044, 51.056072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287189, 32.267475, 50.952526>,  <33.971210, 32.093193, 50.779949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287189, 32.267475, 50.952526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106566, 0.790467, -0.603163,
		-0.603844, 0.430489, 0.670859,
		0.789947, 0.435707, 0.431443,
		34.524174, 32.398186, 51.081959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782009, 32.861828, 50.951519>,  <33.971210, 32.093193, 50.779949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782009, 32.861828, 50.951519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.181122, 32.863777, 50.978054>,  <34.420589, 32.864944, 50.993973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.181122, 32.863777, 50.978054>,  <33.782009, 32.861828, 50.951519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181122, 32.863777, 50.978054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027159, 0.880552, -0.473171,
		-0.060716, 0.473925, 0.878469,
		0.997786, 0.004870, 0.066335,
		34.480457, 32.865238, 50.997955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067009, 33.581211, 51.327827>,  <33.782009, 32.861828, 50.951519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067009, 33.581211, 51.327827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340485, 33.409523, 51.091743>,  <34.504570, 33.306511, 50.950092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340485, 33.409523, 51.091743>,  <34.067009, 33.581211, 51.327827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340485, 33.409523, 51.091743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066044, 0.841822, -0.535699,
		0.726781, 0.327270, 0.603890,
		0.683686, -0.429219, -0.590207,
		34.545589, 33.280758, 50.914680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379688, 34.203537, 51.096397>,  <34.067009, 33.581211, 51.327827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379688, 34.203537, 51.096397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481022, 33.901447, 50.854584>,  <34.541824, 33.720192, 50.709496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481022, 33.901447, 50.854584>,  <34.379688, 34.203537, 51.096397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481022, 33.901447, 50.854584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055202, 0.635185, -0.770385,
		0.965802, 0.161795, 0.202605,
		0.253336, -0.755223, -0.604531,
		34.557022, 33.674881, 50.673225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042320, 34.332848, 50.753281>,  <34.379688, 34.203537, 51.096397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042320, 34.332848, 50.753281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853397, 34.070724, 50.517487>,  <34.740044, 33.913448, 50.376011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853397, 34.070724, 50.517487>,  <35.042320, 34.332848, 50.753281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853397, 34.070724, 50.517487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141684, 0.603636, -0.784569,
		0.869971, -0.454079, -0.192255,
		-0.472309, -0.655313, -0.589482,
		34.711704, 33.874130, 50.340641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184872, 34.567593, 50.180599>,  <35.042320, 34.332848, 50.753281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184872, 34.567593, 50.180599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972256, 34.266193, 50.025829>,  <34.844685, 34.085354, 49.932968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972256, 34.266193, 50.025829>,  <35.184872, 34.567593, 50.180599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972256, 34.266193, 50.025829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169756, 0.352766, -0.920184,
		0.829848, -0.554797, -0.059598,
		-0.531539, -0.753496, -0.386923,
		34.812794, 34.040146, 49.909752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.086849, 32.398335, 29.970711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704773, 32.309296, 30.048742>,  <42.475525, 32.255875, 30.095562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704773, 32.309296, 30.048742>,  <43.086849, 32.398335, 29.970711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704773, 32.309296, 30.048742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137737, 0.917676, 0.372692,
		-0.261978, 0.329124, -0.907218,
		-0.955194, -0.222595, 0.195078,
		42.418213, 32.242516, 30.107265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713257, 32.990997, 29.828117>,  <43.086849, 32.398335, 29.970711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713257, 32.990997, 29.828117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469707, 32.790810, 30.074308>,  <42.323578, 32.670696, 30.222023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469707, 32.790810, 30.074308>,  <42.713257, 32.990997, 29.828117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469707, 32.790810, 30.074308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314663, 0.864594, 0.391746,
		-0.728192, 0.044856, -0.683904,
		-0.608871, -0.500465, 0.615475,
		42.287045, 32.640671, 30.258951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964947, 33.353241, 29.787271>,  <42.713257, 32.990997, 29.828117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964947, 33.353241, 29.787271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990807, 33.151379, 30.131630>,  <42.006325, 33.030262, 30.338245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990807, 33.151379, 30.131630>,  <41.964947, 33.353241, 29.787271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990807, 33.151379, 30.131630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357434, 0.793749, 0.492142,
		-0.931698, -0.339531, -0.129064,
		0.064653, -0.504659, 0.860894,
		42.010204, 32.999981, 30.389898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370270, 33.592751, 30.146519>,  <41.964947, 33.353241, 29.787271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370270, 33.592751, 30.146519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578728, 33.408394, 30.433847>,  <41.703804, 33.297779, 30.606245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578728, 33.408394, 30.433847>,  <41.370270, 33.592751, 30.146519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578728, 33.408394, 30.433847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475027, 0.542600, 0.692773,
		-0.709053, -0.702259, 0.063840,
		0.521146, -0.460887, 0.718324,
		41.735073, 33.270126, 30.649345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854378, 33.421619, 30.719795>,  <41.370270, 33.592751, 30.146519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854378, 33.421619, 30.719795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230865, 33.433960, 30.854345>,  <41.456760, 33.441364, 30.935076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230865, 33.433960, 30.854345>,  <40.854378, 33.421619, 30.719795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230865, 33.433960, 30.854345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275099, 0.647881, 0.710331,
		-0.196015, -0.761116, 0.618288,
		0.941222, 0.030855, 0.336377,
		41.513233, 33.443218, 30.955257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838230, 33.426586, 31.499407>,  <40.854378, 33.421619, 30.719795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838230, 33.426586, 31.499407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186790, 33.593330, 31.395958>,  <41.395927, 33.693378, 31.333889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186790, 33.593330, 31.395958>,  <40.838230, 33.426586, 31.499407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186790, 33.593330, 31.395958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071818, 0.629913, 0.773338,
		0.485282, -0.655315, 0.578846,
		0.871403, 0.416859, -0.258622,
		41.448212, 33.718388, 31.318371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110126, 33.529503, 32.059387>,  <40.838230, 33.426586, 31.499407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110126, 33.529503, 32.059387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.345867, 33.781300, 31.856838>,  <41.487312, 33.932377, 31.735308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.345867, 33.781300, 31.856838>,  <41.110126, 33.529503, 32.059387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345867, 33.781300, 31.856838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131724, 0.543532, 0.828988,
		0.797069, -0.555263, 0.237410,
		0.589347, 0.629488, -0.506374,
		41.522671, 33.970146, 31.704926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788349, 33.519886, 32.396381>,  <41.110126, 33.529503, 32.059387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788349, 33.519886, 32.396381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736702, 33.862164, 32.195930>,  <41.705715, 34.067528, 32.075661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736702, 33.862164, 32.195930>,  <41.788349, 33.519886, 32.396381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736702, 33.862164, 32.195930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201279, 0.517448, 0.831706,
		0.970987, 0.006521, -0.239043,
		-0.129115, 0.855690, -0.501123,
		41.697968, 34.118870, 32.045593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407455, 33.986675, 32.594585>,  <41.788349, 33.519886, 32.396381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407455, 33.986675, 32.594585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152458, 34.255932, 32.444660>,  <41.999462, 34.417488, 32.354706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152458, 34.255932, 32.444660>,  <42.407455, 33.986675, 32.594585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152458, 34.255932, 32.444660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140185, 0.579696, 0.802683,
		0.757597, 0.459161, -0.463916,
		-0.637491, 0.673144, -0.374809,
		41.961212, 34.457874, 32.332218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667053, 34.706253, 32.559658>,  <42.407455, 33.986675, 32.594585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667053, 34.706253, 32.559658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.269371, 34.732773, 32.593494>,  <42.030762, 34.748684, 32.613796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.269371, 34.732773, 32.593494>,  <42.667053, 34.706253, 32.559658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269371, 34.732773, 32.593494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106227, 0.725823, 0.679630,
		-0.016337, 0.684679, -0.728661,
		-0.994208, 0.066301, 0.084589,
		41.971107, 34.752663, 32.618870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483608, 35.426785, 32.599625>,  <42.667053, 34.706253, 32.559658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483608, 35.426785, 32.599625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.167721, 35.251602, 32.771458>,  <41.978188, 35.146492, 32.874557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.167721, 35.251602, 32.771458>,  <42.483608, 35.426785, 32.599625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167721, 35.251602, 32.771458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001515, 0.701639, 0.712531,
		-0.613470, 0.562046, -0.554760,
		-0.789717, -0.437957, 0.429583,
		41.930805, 35.120216, 32.900333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225742, 35.793285, 33.207428>,  <42.483608, 35.426785, 32.599625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225742, 35.793285, 33.207428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973179, 35.502785, 33.316158>,  <41.821640, 35.328484, 33.381397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973179, 35.502785, 33.316158>,  <42.225742, 35.793285, 33.207428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973179, 35.502785, 33.316158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104031, 0.426699, 0.898390,
		-0.768443, 0.538971, -0.344973,
		-0.631406, -0.726249, 0.271824,
		41.783756, 35.284908, 33.397705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738720, 36.116989, 33.663586>,  <42.225742, 35.793285, 33.207428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738720, 36.116989, 33.663586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.678368, 35.729946, 33.744545>,  <41.642155, 35.497719, 33.793121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.678368, 35.729946, 33.744545>,  <41.738720, 36.116989, 33.663586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678368, 35.729946, 33.744545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172610, 0.227386, 0.958385,
		-0.973365, 0.109667, -0.201328,
		-0.150882, -0.967610, 0.202400,
		41.633102, 35.439663, 33.805264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191856, 36.147369, 34.153255>,  <41.738720, 36.116989, 33.663586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191856, 36.147369, 34.153255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.381351, 35.796860, 34.188381>,  <41.495049, 35.586555, 34.209457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.381351, 35.796860, 34.188381>,  <41.191856, 36.147369, 34.153255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381351, 35.796860, 34.188381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017253, 0.090463, 0.995750,
		-0.880494, -0.473244, 0.027738,
		0.473742, -0.876274, 0.087817,
		41.523476, 35.533978, 34.214725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769527, 35.848801, 34.725273>,  <41.191856, 36.147369, 34.153255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769527, 35.848801, 34.725273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.099815, 35.626556, 34.686321>,  <41.297989, 35.493210, 34.662952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.099815, 35.626556, 34.686321>,  <40.769527, 35.848801, 34.725273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099815, 35.626556, 34.686321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002946, -0.168383, 0.985717,
		-0.564069, -0.814216, -0.137401,
		0.825722, -0.555608, -0.097378,
		41.347530, 35.459873, 34.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673271, 35.181923, 35.142746>,  <40.769527, 35.848801, 34.725273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673271, 35.181923, 35.142746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.059551, 35.279377, 35.106834>,  <41.291321, 35.337849, 35.085289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.059551, 35.279377, 35.106834>,  <40.673271, 35.181923, 35.142746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059551, 35.279377, 35.106834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059628, 0.128434, 0.989924,
		0.252714, -0.961325, 0.109501,
		0.965702, 0.243638, -0.089779,
		41.349262, 35.352467, 35.079903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005764, 34.730988, 35.674717>,  <40.673271, 35.181923, 35.142746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005764, 34.730988, 35.674717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.313133, 34.978878, 35.610886>,  <41.497555, 35.127613, 35.572586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.313133, 34.978878, 35.610886>,  <41.005764, 34.730988, 35.674717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313133, 34.978878, 35.610886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177024, 0.033779, 0.983627,
		0.614972, -0.784089, -0.083750,
		0.768422, 0.619729, -0.159576,
		41.543659, 35.164795, 35.563011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572704, 34.496681, 36.081223>,  <41.005764, 34.730988, 35.674717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572704, 34.496681, 36.081223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.657131, 34.879601, 36.002205>,  <41.707787, 35.109352, 35.954796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.657131, 34.879601, 36.002205>,  <41.572704, 34.496681, 36.081223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657131, 34.879601, 36.002205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321377, 0.122894, 0.938943,
		0.923128, -0.261669, -0.281715,
		0.211072, 0.957301, -0.197542,
		41.720451, 35.166790, 35.942944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277126, 34.587677, 36.234432>,  <41.572704, 34.496681, 36.081223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277126, 34.587677, 36.234432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135891, 34.961399, 36.253994>,  <42.051147, 35.185635, 36.265732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135891, 34.961399, 36.253994>,  <42.277126, 34.587677, 36.234432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135891, 34.961399, 36.253994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556899, 0.167889, 0.813435,
		0.751790, 0.314451, -0.579597,
		-0.353093, 0.934309, 0.048900,
		42.029964, 35.241692, 36.268665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864594, 34.947956, 36.556808>,  <42.277126, 34.587677, 36.234432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864594, 34.947956, 36.556808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.558994, 35.204933, 36.580738>,  <42.375637, 35.359119, 36.595097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.558994, 35.204933, 36.580738>,  <42.864594, 34.947956, 36.556808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558994, 35.204933, 36.580738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327149, 0.305783, 0.894131,
		0.556135, 0.702682, -0.443792,
		-0.763994, 0.642444, 0.059825,
		42.329796, 35.397667, 36.598686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175625, 35.643093, 36.793652>,  <42.864594, 34.947956, 36.556808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175625, 35.643093, 36.793652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.789562, 35.593384, 36.885769>,  <42.557926, 35.563557, 36.941040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.789562, 35.593384, 36.885769>,  <43.175625, 35.643093, 36.793652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789562, 35.593384, 36.885769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226605, 0.043241, 0.973026,
		-0.130883, 0.991305, -0.013572,
		-0.965153, -0.124277, 0.230295,
		42.500015, 35.556099, 36.954857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685928, 35.760445, 36.263531>,  <43.175625, 35.643093, 36.793652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685928, 35.760445, 36.263531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085735, 35.771229, 36.257244>,  <44.325619, 35.777699, 36.253471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085735, 35.771229, 36.257244>,  <43.685928, 35.760445, 36.263531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085735, 35.771229, 36.257244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010308, -0.760491, -0.649267,
		-0.029457, 0.648789, -0.760398,
		0.999513, 0.026964, -0.015714,
		44.385590, 35.779320, 36.252529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943237, 35.849770, 35.585308>,  <43.685928, 35.760445, 36.263531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943237, 35.849770, 35.585308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.233906, 35.668217, 35.791584>,  <44.408306, 35.559284, 35.915352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.233906, 35.668217, 35.791584>,  <43.943237, 35.849770, 35.585308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233906, 35.668217, 35.791584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049818, -0.783499, -0.619392,
		0.685179, 0.424402, -0.591956,
		0.726669, -0.453885, 0.515694,
		44.451908, 35.532051, 35.946293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581280, 35.701828, 35.158737>,  <43.943237, 35.849770, 35.585308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581280, 35.701828, 35.158737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553757, 35.438835, 35.458866>,  <44.537243, 35.281040, 35.638943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553757, 35.438835, 35.458866>,  <44.581280, 35.701828, 35.158737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553757, 35.438835, 35.458866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153956, -0.736093, -0.659139,
		0.985679, -0.160873, -0.050572,
		-0.068812, -0.657485, 0.750319,
		44.533112, 35.241589, 35.683960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953030, 35.067886, 34.957569>,  <44.581280, 35.701828, 35.158737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953030, 35.067886, 34.957569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.727974, 34.935749, 35.260704>,  <44.592941, 34.856468, 35.442585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.727974, 34.935749, 35.260704>,  <44.953030, 35.067886, 34.957569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727974, 34.935749, 35.260704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055438, -0.899553, -0.433279,
		0.824842, -0.285792, 0.487810,
		-0.562639, -0.330343, 0.757833,
		44.559181, 34.836647, 35.488052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152790, 34.373318, 34.985878>,  <44.953030, 35.067886, 34.957569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152790, 34.373318, 34.985878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804668, 34.396576, 35.181507>,  <44.595795, 34.410530, 35.298885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804668, 34.396576, 35.181507>,  <45.152790, 34.373318, 34.985878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804668, 34.396576, 35.181507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332083, -0.802602, -0.495531,
		0.363717, -0.593674, 0.717816,
		-0.870305, 0.058141, 0.489069,
		44.543575, 34.414017, 35.328228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051319, 33.642368, 35.126431>,  <45.152790, 34.373318, 34.985878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051319, 33.642368, 35.126431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.698345, 33.821503, 35.184048>,  <44.486561, 33.928982, 35.218616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.698345, 33.821503, 35.184048>,  <45.051319, 33.642368, 35.126431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698345, 33.821503, 35.184048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460026, -0.757441, -0.463314,
		-0.098386, -0.475108, 0.874410,
		-0.882438, 0.447834, 0.144041,
		44.433613, 33.955853, 35.227261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513027, 33.085155, 35.491066>,  <45.051319, 33.642368, 35.126431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513027, 33.085155, 35.491066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.281792, 33.369209, 35.330307>,  <44.143051, 33.539642, 35.233852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.281792, 33.369209, 35.330307>,  <44.513027, 33.085155, 35.491066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281792, 33.369209, 35.330307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627673, -0.701724, -0.337060,
		-0.521379, 0.057410, 0.851392,
		-0.578092, 0.710132, -0.401899,
		44.108364, 33.582249, 35.209736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908707, 32.796398, 35.557800>,  <44.513027, 33.085155, 35.491066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908707, 32.796398, 35.557800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821636, 33.096092, 35.307598>,  <43.769394, 33.275909, 35.157478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821636, 33.096092, 35.307598>,  <43.908707, 32.796398, 35.557800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821636, 33.096092, 35.307598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735158, -0.547410, -0.399857,
		-0.641996, 0.372806, 0.669968,
		-0.217678, 0.749238, -0.625506,
		43.756332, 33.320866, 35.119946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201866, 32.961731, 35.626938>,  <43.908707, 32.796398, 35.557800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201866, 32.961731, 35.626938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280174, 33.120739, 35.268353>,  <43.327160, 33.216145, 35.053200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280174, 33.120739, 35.268353>,  <43.201866, 32.961731, 35.626938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280174, 33.120739, 35.268353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810041, -0.449697, -0.376305,
		-0.552726, 0.799846, 0.233966,
		0.195773, 0.397516, -0.896468,
		43.338905, 33.239994, 34.999413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596596, 33.230770, 35.368771>,  <43.201866, 32.961731, 35.626938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596596, 33.230770, 35.368771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.829437, 33.162613, 35.050747>,  <42.969143, 33.121719, 34.859932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.829437, 33.162613, 35.050747>,  <42.596596, 33.230770, 35.368771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829437, 33.162613, 35.050747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700419, -0.601723, -0.383852,
		-0.413003, 0.780318, -0.469609,
		0.582101, -0.170391, -0.795063,
		43.004066, 33.111496, 34.812229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156837, 33.322792, 34.753689>,  <42.596596, 33.230770, 35.368771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156837, 33.322792, 34.753689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.474514, 33.096882, 34.663990>,  <42.665119, 32.961338, 34.610168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.474514, 33.096882, 34.663990>,  <42.156837, 33.322792, 34.753689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474514, 33.096882, 34.663990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574304, -0.577013, -0.580716,
		0.198578, 0.589989, -0.782611,
		0.794193, -0.564774, -0.224251,
		42.712772, 32.927448, 34.596714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032227, 33.135464, 34.055447>,  <42.156837, 33.322792, 34.753689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032227, 33.135464, 34.055447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292374, 32.857605, 34.178402>,  <42.448463, 32.690891, 34.252174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292374, 32.857605, 34.178402>,  <42.032227, 33.135464, 34.055447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292374, 32.857605, 34.178402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391405, -0.653257, -0.648119,
		0.651019, 0.301200, -0.696745,
		0.650367, -0.694646, 0.307391,
		42.487484, 32.649212, 34.270618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268635, 32.901218, 33.429123>,  <42.032227, 33.135464, 34.055447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268635, 32.901218, 33.429123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376007, 32.610527, 33.682045>,  <42.440430, 32.436111, 33.833797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376007, 32.610527, 33.682045>,  <42.268635, 32.901218, 33.429123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376007, 32.610527, 33.682045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236866, -0.686034, -0.687933,
		0.933724, 0.034892, -0.356290,
		0.268430, -0.726732, 0.632302,
		42.456535, 32.392506, 33.871735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603333, 32.455250, 33.032310>,  <42.268635, 32.901218, 33.429123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603333, 32.455250, 33.032310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486641, 32.252934, 33.357044>,  <42.416626, 32.131546, 33.551884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486641, 32.252934, 33.357044>,  <42.603333, 32.455250, 33.032310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486641, 32.252934, 33.357044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058952, -0.837631, -0.543046,
		0.954682, -0.206281, 0.214545,
		-0.291730, -0.505788, 0.811833,
		42.399120, 32.101196, 33.600594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736443, 31.765091, 32.877048>,  <42.603333, 32.455250, 33.032310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736443, 31.765091, 32.877048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532524, 31.693968, 33.213734>,  <42.410172, 31.651295, 33.415745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532524, 31.693968, 33.213734>,  <42.736443, 31.765091, 32.877048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532524, 31.693968, 33.213734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112659, -0.956185, -0.270220,
		0.852884, -0.232586, 0.467432,
		-0.509801, -0.177806, 0.841718,
		42.379585, 31.640627, 33.466248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025448, 31.172655, 33.224915>,  <42.736443, 31.765091, 32.877048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025448, 31.172655, 33.224915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.647331, 31.207607, 33.350639>,  <42.420460, 31.228579, 33.426075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.647331, 31.207607, 33.350639>,  <43.025448, 31.172655, 33.224915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647331, 31.207607, 33.350639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193606, -0.925714, -0.324917,
		0.262570, -0.367993, 0.891986,
		-0.945290, 0.087380, 0.314310,
		42.363743, 31.233822, 33.444931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020149, 30.556150, 33.581890>,  <43.025448, 31.172655, 33.224915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020149, 30.556150, 33.581890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.654484, 30.697840, 33.503071>,  <42.435085, 30.782854, 33.455780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.654484, 30.697840, 33.503071>,  <43.020149, 30.556150, 33.581890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654484, 30.697840, 33.503071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285973, -0.908135, -0.305796,
		-0.287269, -0.223196, 0.931483,
		-0.914164, 0.354225, -0.197051,
		42.380234, 30.804108, 33.443954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591877, 30.009306, 33.932350>,  <43.020149, 30.556150, 33.581890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591877, 30.009306, 33.932350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.364437, 30.211779, 33.672974>,  <42.227974, 30.333261, 33.517345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.364437, 30.211779, 33.672974>,  <42.591877, 30.009306, 33.932350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364437, 30.211779, 33.672974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463776, -0.848304, -0.255523,
		-0.679419, 0.155444, 0.717096,
		-0.568596, 0.506179, -0.648445,
		42.193859, 30.363632, 33.478439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878445, 29.713951, 34.064152>,  <42.591877, 30.009306, 33.932350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878445, 29.713951, 34.064152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.862537, 29.889051, 33.704865>,  <41.852993, 29.994112, 33.489292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.862537, 29.889051, 33.704865>,  <41.878445, 29.713951, 34.064152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862537, 29.889051, 33.704865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650828, -0.693438, -0.309138,
		-0.758183, 0.572292, 0.312475,
		-0.039765, 0.437751, -0.898217,
		41.850609, 30.020376, 33.435398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205212, 29.736803, 33.901127>,  <41.878445, 29.713951, 34.064152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205212, 29.736803, 33.901127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.407589, 29.751398, 33.556412>,  <41.529015, 29.760155, 33.349583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.407589, 29.751398, 33.556412>,  <41.205212, 29.736803, 33.901127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407589, 29.751398, 33.556412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550539, -0.755473, -0.355199,
		-0.664021, 0.654163, -0.362143,
		0.505947, 0.036486, -0.861792,
		41.559372, 29.762344, 33.297874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685806, 29.694017, 33.438526>,  <41.205212, 29.736803, 33.901127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685806, 29.694017, 33.438526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.029839, 29.593557, 33.260902>,  <41.236256, 29.533281, 33.154327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.029839, 29.593557, 33.260902>,  <40.685806, 29.694017, 33.438526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029839, 29.593557, 33.260902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427839, -0.829207, -0.359680,
		-0.277881, 0.499339, -0.820636,
		0.860079, -0.251152, -0.444058,
		41.287861, 29.518211, 33.127686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.762695, 34.412807, 44.690090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369129, 34.470638, 44.648113>,  <38.132992, 34.505337, 44.622925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369129, 34.470638, 44.648113>,  <38.762695, 34.412807, 44.690090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369129, 34.470638, 44.648113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126180, 0.146535, -0.981125,
		-0.126471, -0.978583, -0.162421,
		-0.983912, 0.144579, -0.104946,
		38.073956, 34.514011, 44.616631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517685, 33.977001, 44.009678>,  <38.762695, 34.412807, 44.690090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517685, 33.977001, 44.009678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231148, 34.245716, 44.085114>,  <38.059227, 34.406944, 44.130375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231148, 34.245716, 44.085114>,  <38.517685, 33.977001, 44.009678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231148, 34.245716, 44.085114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044429, 0.225815, -0.973157,
		-0.696337, -0.705488, -0.131913,
		-0.716339, 0.671784, 0.188588,
		38.016247, 34.447250, 44.141689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986721, 33.816502, 43.448036>,  <38.517685, 33.977001, 44.009678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986721, 33.816502, 43.448036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963501, 34.191113, 43.586338>,  <37.949570, 34.415878, 43.669319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963501, 34.191113, 43.586338>,  <37.986721, 33.816502, 43.448036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963501, 34.191113, 43.586338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105333, 0.338661, -0.934994,
		-0.992742, -0.090692, 0.078989,
		-0.058046, 0.936528, 0.345756,
		37.946087, 34.472073, 43.690063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702084, 34.134579, 42.882771>,  <37.986721, 33.816502, 43.448036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702084, 34.134579, 42.882771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803764, 34.459957, 43.092033>,  <37.864773, 34.655182, 43.217590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803764, 34.459957, 43.092033>,  <37.702084, 34.134579, 42.882771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803764, 34.459957, 43.092033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135467, 0.565537, -0.813521,
		-0.957617, 0.135929, 0.253956,
		0.254202, 0.813444, 0.523153,
		37.880024, 34.703991, 43.248978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230404, 34.656204, 42.815708>,  <37.702084, 34.134579, 42.882771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230404, 34.656204, 42.815708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535568, 34.888157, 42.930050>,  <37.718666, 35.027328, 42.998657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535568, 34.888157, 42.930050>,  <37.230404, 34.656204, 42.815708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535568, 34.888157, 42.930050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141848, 0.581516, -0.801073,
		-0.630755, 0.570597, 0.525897,
		0.762908, 0.579878, 0.285856,
		37.764439, 35.062119, 43.015808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985580, 35.407379, 42.842690>,  <37.230404, 34.656204, 42.815708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985580, 35.407379, 42.842690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382626, 35.419201, 42.795620>,  <37.620853, 35.426296, 42.767380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382626, 35.419201, 42.795620>,  <36.985580, 35.407379, 42.842690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382626, 35.419201, 42.795620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103856, 0.708411, -0.698118,
		0.062726, 0.705182, 0.706247,
		0.992612, 0.029558, -0.117673,
		37.680408, 35.428070, 42.760319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083912, 36.082348, 42.922207>,  <36.985580, 35.407379, 42.842690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083912, 36.082348, 42.922207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378979, 35.904736, 42.718761>,  <37.556019, 35.798168, 42.596695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378979, 35.904736, 42.718761>,  <37.083912, 36.082348, 42.922207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378979, 35.904736, 42.718761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165432, 0.611477, -0.773775,
		0.654588, 0.654926, 0.377607,
		0.737663, -0.444035, -0.508611,
		37.600277, 35.771526, 42.566177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377949, 36.690346, 42.595402>,  <37.083912, 36.082348, 42.922207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377949, 36.690346, 42.595402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526180, 36.376423, 42.396709>,  <37.615120, 36.188068, 42.277493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526180, 36.376423, 42.396709>,  <37.377949, 36.690346, 42.595402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526180, 36.376423, 42.396709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108380, 0.567697, -0.816073,
		0.922454, 0.248587, 0.295436,
		0.370583, -0.784809, -0.496732,
		37.637356, 36.140980, 42.247688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947845, 36.931442, 42.229660>,  <37.377949, 36.690346, 42.595402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947845, 36.931442, 42.229660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844250, 36.594616, 42.040409>,  <37.782093, 36.392521, 41.926857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844250, 36.594616, 42.040409>,  <37.947845, 36.931442, 42.229660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844250, 36.594616, 42.040409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238273, 0.419005, -0.876162,
		0.936029, -0.339651, 0.092124,
		-0.258990, -0.842064, -0.473131,
		37.766552, 36.341995, 41.898468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507446, 36.705563, 41.776245>,  <37.947845, 36.931442, 42.229660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507446, 36.705563, 41.776245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172863, 36.542023, 41.630272>,  <37.972115, 36.443897, 41.542686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172863, 36.542023, 41.630272>,  <38.507446, 36.705563, 41.776245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172863, 36.542023, 41.630272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180443, 0.423304, -0.887837,
		0.517472, -0.808488, -0.280302,
		-0.836458, -0.408852, -0.364934,
		37.921925, 36.419369, 41.520790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697205, 36.345142, 41.130062>,  <38.507446, 36.705563, 41.776245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697205, 36.345142, 41.130062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301456, 36.386013, 41.088684>,  <38.064007, 36.410538, 41.063858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301456, 36.386013, 41.088684>,  <38.697205, 36.345142, 41.130062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301456, 36.386013, 41.088684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132993, 0.348371, -0.927874,
		-0.058775, -0.931771, -0.358258,
		-0.989373, 0.102182, -0.103443,
		38.004646, 36.416668, 41.057652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498348, 36.173107, 40.337574>,  <38.697205, 36.345142, 41.130062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498348, 36.173107, 40.337574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219810, 36.399464, 40.514156>,  <38.052689, 36.535278, 40.620106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219810, 36.399464, 40.514156>,  <38.498348, 36.173107, 40.337574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219810, 36.399464, 40.514156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016714, 0.602133, -0.798221,
		-0.717517, -0.563212, -0.409831,
		-0.696341, 0.565887, 0.441454,
		38.010910, 36.569229, 40.646591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027157, 36.357040, 39.819351>,  <38.498348, 36.173107, 40.337574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027157, 36.357040, 39.819351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993729, 36.637386, 40.102703>,  <37.973671, 36.805595, 40.272713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993729, 36.637386, 40.102703>,  <38.027157, 36.357040, 39.819351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993729, 36.637386, 40.102703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031293, 0.712362, -0.701115,
		-0.996010, -0.036428, -0.081468,
		-0.083575, 0.700867, 0.708379,
		37.968655, 36.847645, 40.315216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222729, 35.645615, 39.770004>,  <38.027157, 36.357040, 39.819351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222729, 35.645615, 39.770004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975693, 35.545300, 40.068180>,  <37.827469, 35.485111, 40.247086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975693, 35.545300, 40.068180>,  <38.222729, 35.645615, 39.770004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975693, 35.545300, 40.068180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057244, 0.930954, 0.360622,
		-0.784413, 0.265389, -0.560593,
		-0.617592, -0.250786, 0.745444,
		37.790417, 35.470062, 40.291813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098652, 35.039883, 40.072121>,  <38.222729, 35.645615, 39.770004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098652, 35.039883, 40.072121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350346, 34.841480, 39.832775>,  <38.501362, 34.722439, 39.689167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350346, 34.841480, 39.832775>,  <38.098652, 35.039883, 40.072121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350346, 34.841480, 39.832775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272562, -0.861813, 0.427771,
		-0.727854, -0.106078, -0.677477,
		0.629236, -0.496010, -0.598361,
		38.539116, 34.692677, 39.653267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719910, 34.495502, 39.695831>,  <38.098652, 35.039883, 40.072121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719910, 34.495502, 39.695831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105331, 34.396076, 39.735405>,  <38.336582, 34.336422, 39.759148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105331, 34.396076, 39.735405>,  <37.719910, 34.495502, 39.695831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105331, 34.396076, 39.735405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265528, -0.843403, 0.467083,
		-0.032659, -0.476327, -0.878661,
		0.963550, -0.248564, 0.098934,
		38.394398, 34.321507, 39.765083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887230, 33.839581, 39.257442>,  <37.719910, 34.495502, 39.695831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887230, 33.839581, 39.257442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174999, 33.849361, 39.535099>,  <38.347660, 33.855228, 39.701691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174999, 33.849361, 39.535099>,  <37.887230, 33.839581, 39.257442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174999, 33.849361, 39.535099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209734, -0.945082, 0.250662,
		0.662145, -0.325917, -0.674791,
		0.719427, 0.024448, 0.694137,
		38.390827, 33.856697, 39.743340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162090, 33.117722, 39.227188>,  <37.887230, 33.839581, 39.257442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162090, 33.117722, 39.227188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306889, 33.266415, 39.569130>,  <38.393768, 33.355629, 39.774296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306889, 33.266415, 39.569130>,  <38.162090, 33.117722, 39.227188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306889, 33.266415, 39.569130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048886, -0.908216, 0.415637,
		0.930898, -0.192249, -0.310596,
		0.361994, 0.371731, 0.854854,
		38.415485, 33.377934, 39.825584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757927, 32.729935, 39.371311>,  <38.162090, 33.117722, 39.227188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757927, 32.729935, 39.371311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633480, 32.905376, 39.708553>,  <38.558811, 33.010643, 39.910900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633480, 32.905376, 39.708553>,  <38.757927, 32.729935, 39.371311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633480, 32.905376, 39.708553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074283, -0.873200, 0.481669,
		0.947463, 0.212485, 0.239089,
		-0.311120, 0.438603, 0.843108,
		38.540146, 33.036957, 39.961487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160973, 32.338825, 39.838570>,  <38.757927, 32.729935, 39.371311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160973, 32.338825, 39.838570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885147, 32.537777, 40.049137>,  <38.719654, 32.657150, 40.175476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885147, 32.537777, 40.049137>,  <39.160973, 32.338825, 39.838570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885147, 32.537777, 40.049137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225487, -0.838188, 0.496585,
		0.688231, 0.223724, 0.690135,
		-0.689561, 0.497382, 0.526420,
		38.678280, 32.686993, 40.207062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254219, 32.181568, 40.551888>,  <39.160973, 32.338825, 39.838570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254219, 32.181568, 40.551888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872910, 32.300999, 40.570312>,  <38.644123, 32.372658, 40.581367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872910, 32.300999, 40.570312>,  <39.254219, 32.181568, 40.551888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872910, 32.300999, 40.570312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237616, -0.835172, 0.496011,
		0.186561, 0.461890, 0.867094,
		-0.953275, 0.298572, 0.046058,
		38.586926, 32.390572, 40.584129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034554, 32.244514, 41.278492>,  <39.254219, 32.181568, 40.551888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034554, 32.244514, 41.278492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699070, 32.179447, 41.070602>,  <38.497780, 32.140408, 40.945869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699070, 32.179447, 41.070602>,  <39.034554, 32.244514, 41.278492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699070, 32.179447, 41.070602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210284, -0.783597, 0.584599,
		-0.502349, 0.599596, 0.623001,
		-0.838705, -0.162666, -0.519725,
		38.447460, 32.130646, 40.914684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599537, 32.296848, 41.877598>,  <39.034554, 32.244514, 41.278492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599537, 32.296848, 41.877598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395679, 32.119057, 41.582924>,  <38.273365, 32.012383, 41.406120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395679, 32.119057, 41.582924>,  <38.599537, 32.296848, 41.877598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395679, 32.119057, 41.582924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370543, -0.659359, 0.654174,
		-0.776506, 0.606368, 0.171339,
		-0.509644, -0.444482, -0.736681,
		38.242786, 31.985712, 41.361919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915421, 32.306957, 42.074074>,  <38.599537, 32.296848, 41.877598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915421, 32.306957, 42.074074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927826, 32.016354, 41.799492>,  <37.935268, 31.841991, 41.634743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927826, 32.016354, 41.799492>,  <37.915421, 32.306957, 42.074074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927826, 32.016354, 41.799492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500037, -0.605941, 0.618706,
		-0.865448, 0.324069, -0.382071,
		0.031009, -0.726508, -0.686458,
		37.937130, 31.798401, 41.593555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210537, 32.000877, 42.063889>,  <37.915421, 32.306957, 42.074074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210537, 32.000877, 42.063889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450645, 31.723637, 41.904247>,  <37.594711, 31.557291, 41.808464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450645, 31.723637, 41.904247>,  <37.210537, 32.000877, 42.063889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450645, 31.723637, 41.904247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511132, -0.716249, 0.475112,
		-0.615155, -0.081206, -0.784213,
		0.600274, -0.693104, -0.399098,
		37.630726, 31.515705, 41.784519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808887, 31.487965, 42.077030>,  <37.210537, 32.000877, 42.063889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808887, 31.487965, 42.077030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163708, 31.306547, 42.042542>,  <37.376602, 31.197697, 42.021847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163708, 31.306547, 42.042542>,  <36.808887, 31.487965, 42.077030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163708, 31.306547, 42.042542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348112, -0.779776, 0.520353,
		-0.303238, -0.431566, -0.849587,
		0.887054, -0.453543, -0.086224,
		37.429825, 31.170485, 42.016674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624840, 30.837605, 41.997555>,  <36.808887, 31.487965, 42.077030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624840, 30.837605, 41.997555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008598, 30.849342, 42.109764>,  <37.238853, 30.856384, 42.177090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008598, 30.849342, 42.109764>,  <36.624840, 30.837605, 41.997555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008598, 30.849342, 42.109764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226223, -0.513943, 0.827458,
		0.168453, -0.857323, -0.486438,
		0.959400, 0.029344, 0.280521,
		37.296417, 30.858145, 42.193920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708019, 30.203238, 42.317253>,  <36.624840, 30.837605, 41.997555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708019, 30.203238, 42.317253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001652, 30.441339, 42.447975>,  <37.177830, 30.584202, 42.526409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001652, 30.441339, 42.447975>,  <36.708019, 30.203238, 42.317253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001652, 30.441339, 42.447975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016424, -0.465552, 0.884868,
		0.678867, -0.654929, -0.331975,
		0.734077, 0.595256, 0.326804,
		37.221874, 30.619917, 42.546017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723625, 29.742523, 41.875164>,  <36.708019, 30.203238, 42.317253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723625, 29.742523, 41.875164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443390, 29.457764, 41.855640>,  <36.275249, 29.286907, 41.843925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443390, 29.457764, 41.855640>,  <36.723625, 29.742523, 41.875164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443390, 29.457764, 41.855640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316933, 0.371725, -0.872567,
		0.639325, -0.595836, -0.486049,
		-0.700584, -0.711899, -0.048813,
		36.233215, 29.244194, 41.840996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756996, 29.541790, 41.192390>,  <36.723625, 29.742523, 41.875164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756996, 29.541790, 41.192390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389641, 29.447916, 41.319820>,  <36.169228, 29.391592, 41.396278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389641, 29.447916, 41.319820>,  <36.756996, 29.541790, 41.192390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389641, 29.447916, 41.319820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384294, 0.337256, -0.859405,
		0.094250, -0.911692, -0.399920,
		-0.918387, -0.234686, 0.318571,
		36.114124, 29.377510, 41.415390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351231, 29.275785, 40.541622>,  <36.756996, 29.541790, 41.192390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351231, 29.275785, 40.541622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089725, 29.394350, 40.820114>,  <35.932823, 29.465488, 40.987209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089725, 29.394350, 40.820114>,  <36.351231, 29.275785, 40.541622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089725, 29.394350, 40.820114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581929, 0.391184, -0.712975,
		-0.483689, -0.871272, -0.083250,
		-0.653761, 0.296413, 0.696230,
		35.893597, 29.483274, 41.028984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657024, 29.292660, 40.282753>,  <36.351231, 29.275785, 40.541622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657024, 29.292660, 40.282753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537952, 29.489925, 40.609722>,  <35.466507, 29.608284, 40.805904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537952, 29.489925, 40.609722>,  <35.657024, 29.292660, 40.282753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537952, 29.489925, 40.609722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495054, 0.652372, -0.573875,
		-0.816276, -0.575499, 0.049943,
		-0.297683, 0.493165, 0.817419,
		35.448647, 29.637875, 40.854946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881424, 29.447601, 40.325890>,  <35.657024, 29.292660, 40.282753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881424, 29.447601, 40.325890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059708, 29.727596, 40.549088>,  <35.166679, 29.895594, 40.683006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059708, 29.727596, 40.549088>,  <34.881424, 29.447601, 40.325890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059708, 29.727596, 40.549088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598940, 0.696450, -0.395257,
		-0.665291, -0.158035, 0.729667,
		0.445712, 0.699988, 0.557995,
		35.193420, 29.937593, 40.716484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366177, 29.717646, 40.669231>,  <34.881424, 29.447601, 40.325890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366177, 29.717646, 40.669231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658520, 29.990232, 40.654034>,  <34.833927, 30.153784, 40.644913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658520, 29.990232, 40.654034>,  <34.366177, 29.717646, 40.669231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658520, 29.990232, 40.654034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663505, 0.696341, -0.273624,
		-0.160006, 0.225193, 0.961086,
		0.730862, 0.681467, -0.037997,
		34.877777, 30.194672, 40.642635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162968, 30.296959, 41.118587>,  <34.366177, 29.717646, 40.669231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162968, 30.296959, 41.118587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425308, 30.482782, 40.880581>,  <34.582710, 30.594276, 40.737778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425308, 30.482782, 40.880581>,  <34.162968, 30.296959, 41.118587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425308, 30.482782, 40.880581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697149, 0.675081, -0.241348,
		0.289566, 0.573105, 0.766617,
		0.655847, 0.464560, -0.595021,
		34.622063, 30.622150, 40.702076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156696, 31.094593, 41.116898>,  <34.162968, 30.296959, 41.118587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156696, 31.094593, 41.116898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348946, 31.021452, 40.773838>,  <34.464294, 30.977568, 40.568001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348946, 31.021452, 40.773838>,  <34.156696, 31.094593, 41.116898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348946, 31.021452, 40.773838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502170, 0.744394, -0.440118,
		0.718908, 0.642217, 0.265948,
		0.480621, -0.182853, -0.857653,
		34.493134, 30.966597, 40.516541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439034, 31.685339, 40.846340>,  <34.156696, 31.094593, 41.116898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439034, 31.685339, 40.846340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414642, 31.471821, 40.508976>,  <34.400009, 31.343710, 40.306557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414642, 31.471821, 40.508976>,  <34.439034, 31.685339, 40.846340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414642, 31.471821, 40.508976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606364, 0.691004, -0.393493,
		0.792846, 0.487420, -0.365810,
		-0.060979, -0.533793, -0.843414,
		34.396347, 31.311684, 40.255951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330399, 32.219566, 40.302242>,  <34.439034, 31.685339, 40.846340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330399, 32.219566, 40.302242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245846, 31.877344, 40.113209>,  <34.195114, 31.672010, 39.999790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245846, 31.877344, 40.113209>,  <34.330399, 32.219566, 40.302242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245846, 31.877344, 40.113209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646382, 0.485048, -0.588998,
		0.733148, 0.180964, -0.655550,
		-0.211385, -0.855559, -0.472584,
		34.182430, 31.620676, 39.971436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219509, 32.420452, 39.589554>,  <34.330399, 32.219566, 40.302242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219509, 32.420452, 39.589554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046734, 32.062771, 39.636589>,  <33.943069, 31.848162, 39.664810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046734, 32.062771, 39.636589>,  <34.219509, 32.420452, 39.589554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046734, 32.062771, 39.636589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745769, 0.280791, -0.604140,
		0.507207, -0.348644, -0.788155,
		-0.431936, -0.894206, 0.117589,
		33.917152, 31.794510, 39.671867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167519, 32.180462, 38.942997>,  <34.219509, 32.420452, 39.589554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167519, 32.180462, 38.942997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890865, 31.993143, 39.162941>,  <33.724873, 31.880753, 39.294907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890865, 31.993143, 39.162941>,  <34.167519, 32.180462, 38.942997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890865, 31.993143, 39.162941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701070, 0.252285, -0.666972,
		0.173617, -0.846791, -0.502795,
		-0.691634, -0.468292, 0.549859,
		33.683376, 31.852654, 39.327900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.043655, 27.263027, 44.550304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668262, 27.348644, 44.658707>,  <37.443027, 27.400015, 44.723747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668262, 27.348644, 44.658707>,  <38.043655, 27.263027, 44.550304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668262, 27.348644, 44.658707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248483, 0.126433, -0.960349,
		-0.239821, -0.968607, -0.065468,
		-0.938479, 0.214044, 0.271004,
		37.386719, 27.412857, 44.740009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600933, 27.012144, 43.982281>,  <38.043655, 27.263027, 44.550304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600933, 27.012144, 43.982281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332878, 27.240408, 44.172127>,  <37.172047, 27.377367, 44.286034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332878, 27.240408, 44.172127>,  <37.600933, 27.012144, 43.982281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332878, 27.240408, 44.172127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488771, 0.141944, -0.860787,
		-0.558586, -0.808826, 0.183800,
		-0.670138, 0.570660, 0.474618,
		37.131836, 27.411606, 44.314514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969818, 26.789186, 43.685669>,  <37.600933, 27.012144, 43.982281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969818, 26.789186, 43.685669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911800, 27.156021, 43.834217>,  <36.876987, 27.376122, 43.923347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911800, 27.156021, 43.834217>,  <36.969818, 26.789186, 43.685669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911800, 27.156021, 43.834217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472107, 0.265705, -0.840545,
		-0.869526, -0.297245, 0.394423,
		-0.145048, 0.917086, 0.371369,
		36.868286, 27.431147, 43.945629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267136, 27.033392, 43.516048>,  <36.969818, 26.789186, 43.685669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267136, 27.033392, 43.516048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.463638, 27.369658, 43.607220>,  <36.581539, 27.571417, 43.661922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.463638, 27.369658, 43.607220>,  <36.267136, 27.033392, 43.516048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463638, 27.369658, 43.607220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475359, 0.478038, -0.738588,
		-0.729862, 0.254491, 0.634457,
		0.491259, 0.840662, 0.227927,
		36.611015, 27.621857, 43.675598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762623, 27.536337, 43.470795>,  <36.267136, 27.033392, 43.516048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762623, 27.536337, 43.470795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102089, 27.747875, 43.466854>,  <36.305767, 27.874798, 43.464489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102089, 27.747875, 43.466854>,  <35.762623, 27.536337, 43.470795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102089, 27.747875, 43.466854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343782, 0.537334, -0.770121,
		-0.401981, 0.656958, 0.637822,
		0.848661, 0.528846, -0.009852,
		36.356686, 27.906528, 43.463898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481552, 28.136358, 43.368416>,  <35.762623, 27.536337, 43.470795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481552, 28.136358, 43.368416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868599, 28.140301, 43.267521>,  <36.100826, 28.142666, 43.206982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868599, 28.140301, 43.267521>,  <35.481552, 28.136358, 43.368416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868599, 28.140301, 43.267521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172604, 0.754976, -0.632628,
		0.184200, 0.655678, 0.732227,
		0.967615, 0.009855, -0.252240,
		36.158882, 28.143257, 43.191849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692608, 28.833910, 43.414040>,  <35.481552, 28.136358, 43.368416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692608, 28.833910, 43.414040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.969059, 28.659651, 43.183369>,  <36.134930, 28.555096, 43.044968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.969059, 28.659651, 43.183369>,  <35.692608, 28.833910, 43.414040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969059, 28.659651, 43.183369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070747, 0.753295, -0.653866,
		0.719260, 0.492704, 0.489803,
		0.691129, -0.435648, -0.576673,
		36.176399, 28.528957, 43.010368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925533, 29.410368, 43.041862>,  <35.692608, 28.833910, 43.414040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925533, 29.410368, 43.041862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078705, 29.110260, 42.826286>,  <36.170609, 28.930195, 42.696941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078705, 29.110260, 42.826286>,  <35.925533, 29.410368, 43.041862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078705, 29.110260, 42.826286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045107, 0.567528, -0.822117,
		0.922675, 0.339125, 0.183482,
		0.382932, -0.750271, -0.538941,
		36.193584, 28.885180, 42.664604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514462, 29.583029, 42.663158>,  <35.925533, 29.410368, 43.041862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514462, 29.583029, 42.663158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363575, 29.274866, 42.457561>,  <36.273045, 29.089970, 42.334202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363575, 29.274866, 42.457561>,  <36.514462, 29.583029, 42.663158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363575, 29.274866, 42.457561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108447, 0.587916, -0.801620,
		0.919756, -0.246640, -0.305317,
		-0.377212, -0.770405, -0.513991,
		36.250412, 29.043745, 42.303364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290253, 29.716545, 42.715866>,  <36.514462, 29.583029, 42.663158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290253, 29.716545, 42.715866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340145, 30.093382, 42.840385>,  <37.370079, 30.319485, 42.915096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340145, 30.093382, 42.840385>,  <37.290253, 29.716545, 42.715866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340145, 30.093382, 42.840385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207196, -0.331563, 0.920400,
		0.970316, -0.050300, -0.236553,
		0.124728, 0.942091, 0.311298,
		37.377563, 30.376009, 42.933777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961956, 29.735500, 43.119801>,  <37.290253, 29.716545, 42.715866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961956, 29.735500, 43.119801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732647, 30.038923, 43.243702>,  <37.595062, 30.220978, 43.318043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732647, 30.038923, 43.243702>,  <37.961956, 29.735500, 43.119801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732647, 30.038923, 43.243702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139092, -0.282457, 0.949142,
		0.807470, 0.587205, 0.056416,
		-0.573276, 0.758557, 0.309751,
		37.560665, 30.266491, 43.336628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397587, 29.982342, 43.642216>,  <37.961956, 29.735500, 43.119801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397587, 29.982342, 43.642216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030319, 30.129356, 43.701389>,  <37.809959, 30.217566, 43.736893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030319, 30.129356, 43.701389>,  <38.397587, 29.982342, 43.642216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030319, 30.129356, 43.701389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061288, -0.237131, 0.969543,
		0.391421, 0.899270, 0.195200,
		-0.918168, 0.367536, 0.147933,
		37.754868, 30.239616, 43.745770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482944, 30.406658, 44.181679>,  <38.397587, 29.982342, 43.642216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482944, 30.406658, 44.181679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.086411, 30.354990, 44.191235>,  <37.848492, 30.323990, 44.196968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.086411, 30.354990, 44.191235>,  <38.482944, 30.406658, 44.181679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086411, 30.354990, 44.191235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032488, -0.064880, 0.997364,
		-0.127278, 0.989498, 0.068514,
		-0.991335, -0.129168, 0.023889,
		37.789009, 30.316240, 44.198402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208099, 30.898445, 44.612556>,  <38.482944, 30.406658, 44.181679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208099, 30.898445, 44.612556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946301, 30.596098, 44.605682>,  <37.789223, 30.414690, 44.601559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946301, 30.596098, 44.605682>,  <38.208099, 30.898445, 44.612556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946301, 30.596098, 44.605682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045914, -0.062418, 0.996993,
		-0.754668, 0.651741, 0.075558,
		-0.654498, -0.755869, -0.017181,
		37.749950, 30.369337, 44.600529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712685, 31.045858, 45.196205>,  <38.208099, 30.898445, 44.612556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712685, 31.045858, 45.196205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.618011, 30.667929, 45.105618>,  <37.561207, 30.441172, 45.051266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.618011, 30.667929, 45.105618>,  <37.712685, 31.045858, 45.196205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618011, 30.667929, 45.105618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237857, -0.169657, 0.956368,
		-0.942022, 0.280223, -0.184578,
		-0.236682, -0.944823, -0.226474,
		37.547009, 30.384481, 45.037674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998619, 30.886259, 45.546894>,  <37.712685, 31.045858, 45.196205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998619, 30.886259, 45.546894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.201462, 30.549643, 45.472439>,  <37.323170, 30.347673, 45.427765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.201462, 30.549643, 45.472439>,  <36.998619, 30.886259, 45.546894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201462, 30.549643, 45.472439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176990, -0.313048, 0.933100,
		-0.843513, -0.440239, -0.307694,
		0.507110, -0.841540, -0.186142,
		37.353596, 30.297180, 45.416595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564743, 30.337692, 45.748016>,  <36.998619, 30.886259, 45.546894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564743, 30.337692, 45.748016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930931, 30.176817, 45.753098>,  <37.150642, 30.080292, 45.756145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930931, 30.176817, 45.753098>,  <36.564743, 30.337692, 45.748016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930931, 30.176817, 45.753098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181184, -0.383821, 0.905458,
		-0.359288, -0.831221, -0.424246,
		0.915470, -0.402187, 0.012702,
		37.205570, 30.056160, 45.756908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459019, 29.667725, 46.132511>,  <36.564743, 30.337692, 45.748016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459019, 29.667725, 46.132511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855728, 29.718842, 46.129642>,  <37.093754, 29.749512, 46.127922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855728, 29.718842, 46.129642>,  <36.459019, 29.667725, 46.132511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855728, 29.718842, 46.129642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057392, -0.393934, 0.917345,
		0.114403, -0.910212, -0.398028,
		0.991776, 0.127791, -0.007172,
		37.153259, 29.757179, 46.127491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873260, 29.065861, 46.345295>,  <36.459019, 29.667725, 46.132511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873260, 29.065861, 46.345295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124474, 29.368778, 46.416935>,  <37.275200, 29.550529, 46.459919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124474, 29.368778, 46.416935>,  <36.873260, 29.065861, 46.345295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124474, 29.368778, 46.416935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226846, -0.398320, 0.888753,
		0.744389, -0.517538, -0.421947,
		0.628033, 0.757295, 0.179103,
		37.312885, 29.595966, 46.470665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114517, 28.858351, 46.821716>,  <36.873260, 29.065861, 46.345295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114517, 28.858351, 46.821716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317772, 29.202854, 46.819668>,  <37.439724, 29.409555, 46.818439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317772, 29.202854, 46.819668>,  <37.114517, 28.858351, 46.821716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317772, 29.202854, 46.819668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403694, -0.232919, 0.884748,
		0.760805, -0.451644, -0.466041,
		0.508141, 0.861259, -0.005120,
		37.470215, 29.461231, 46.818130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925053, 28.742495, 46.990368>,  <37.114517, 28.858351, 46.821716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925053, 28.742495, 46.990368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829983, 29.117971, 47.090260>,  <37.772942, 29.343258, 47.150196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829983, 29.117971, 47.090260>,  <37.925053, 28.742495, 46.990368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829983, 29.117971, 47.090260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324813, -0.165492, 0.931187,
		0.915428, 0.302432, -0.265567,
		-0.237671, 0.938694, 0.249730,
		37.758682, 29.399580, 47.165180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505554, 28.977261, 47.416054>,  <37.925053, 28.742495, 46.990368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505554, 28.977261, 47.416054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196507, 29.218019, 47.496830>,  <38.011078, 29.362474, 47.545296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196507, 29.218019, 47.496830>,  <38.505554, 28.977261, 47.416054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196507, 29.218019, 47.496830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271478, 0.025688, 0.962102,
		0.573898, 0.798161, -0.183248,
		-0.772619, 0.601896, 0.201941,
		37.964722, 29.398588, 47.557411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807346, 29.525728, 47.709431>,  <38.505554, 28.977261, 47.416054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807346, 29.525728, 47.709431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439865, 29.465082, 47.855305>,  <38.219376, 29.428694, 47.942829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439865, 29.465082, 47.855305>,  <38.807346, 29.525728, 47.709431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439865, 29.465082, 47.855305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383542, -0.122168, 0.915407,
		-0.094238, 0.980861, 0.170387,
		-0.918703, -0.151617, 0.364688,
		38.164253, 29.419598, 47.964710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.181049, 31.823269, 49.880505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431946, 31.565588, 49.705429>,  <32.582485, 31.410980, 49.600384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431946, 31.565588, 49.705429>,  <32.181049, 31.823269, 49.880505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431946, 31.565588, 49.705429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047548, 0.529262, -0.847125,
		0.777369, 0.552167, 0.301347,
		0.627246, -0.644200, -0.437686,
		32.620121, 31.372328, 49.574123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823078, 32.309223, 49.493912>,  <32.181049, 31.823269, 49.880505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823078, 32.309223, 49.493912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826843, 31.948299, 49.321518>,  <32.829102, 31.731745, 49.218082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826843, 31.948299, 49.321518>,  <32.823078, 32.309223, 49.493912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826843, 31.948299, 49.321518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006225, 0.431051, -0.902306,
		0.999936, 0.005812, 0.009675,
		0.009414, -0.902309, -0.430987,
		32.829666, 31.677607, 49.192223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070705, 32.451077, 48.877499>,  <32.823078, 32.309223, 49.493912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070705, 32.451077, 48.877499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997139, 32.064381, 48.806416>,  <32.952999, 31.832363, 48.763763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997139, 32.064381, 48.806416>,  <33.070705, 32.451077, 48.877499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997139, 32.064381, 48.806416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198340, 0.140577, -0.970000,
		0.962723, -0.213648, 0.165889,
		-0.183919, -0.966743, -0.177712,
		32.941963, 31.774357, 48.753101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635136, 32.239681, 48.512066>,  <33.070705, 32.451077, 48.877499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635136, 32.239681, 48.512066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310390, 32.028820, 48.411678>,  <33.115543, 31.902302, 48.351444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310390, 32.028820, 48.411678>,  <33.635136, 32.239681, 48.512066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310390, 32.028820, 48.411678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070076, 0.338766, -0.938257,
		0.579630, -0.779322, -0.238090,
		-0.811861, -0.527158, -0.250971,
		33.066833, 31.870672, 48.336388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704735, 32.037472, 47.778683>,  <33.635136, 32.239681, 48.512066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704735, 32.037472, 47.778683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322926, 32.016956, 47.896156>,  <33.093838, 32.004646, 47.966640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322926, 32.016956, 47.896156>,  <33.704735, 32.037472, 47.778683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322926, 32.016956, 47.896156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283332, 0.462538, -0.840108,
		-0.092756, -0.885115, -0.456035,
		-0.954526, -0.051285, 0.293685,
		33.036568, 32.001572, 47.984261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284801, 31.809071, 47.148453>,  <33.704735, 32.037472, 47.778683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284801, 31.809071, 47.148453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025997, 32.010483, 47.377480>,  <32.870712, 32.131332, 47.514896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025997, 32.010483, 47.377480>,  <33.284801, 31.809071, 47.148453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025997, 32.010483, 47.377480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255208, 0.564599, -0.784918,
		-0.718501, -0.653975, -0.236797,
		-0.647012, 0.503532, 0.572565,
		32.831894, 32.161541, 47.549248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747086, 31.748137, 46.804916>,  <33.284801, 31.809071, 47.148453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747086, 31.748137, 46.804916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.721149, 32.075821, 47.032845>,  <32.705589, 32.272430, 47.169601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.721149, 32.075821, 47.032845>,  <32.747086, 31.748137, 46.804916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721149, 32.075821, 47.032845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221544, 0.544952, -0.808669,
		-0.972992, -0.178671, 0.146157,
		-0.064837, 0.819209, 0.569818,
		32.701698, 32.321583, 47.203789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140602, 32.001965, 46.542858>,  <32.747086, 31.748137, 46.804916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140602, 32.001965, 46.542858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298412, 32.302685, 46.754192>,  <32.393097, 32.483116, 46.880993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298412, 32.302685, 46.754192>,  <32.140602, 32.001965, 46.542858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298412, 32.302685, 46.754192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289145, 0.647340, -0.705228,
		-0.872207, 0.125464, 0.472772,
		0.394524, 0.751804, 0.528337,
		32.416771, 32.528225, 46.912693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626154, 32.546291, 46.567169>,  <32.140602, 32.001965, 46.542858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626154, 32.546291, 46.567169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967918, 32.732151, 46.660187>,  <32.172977, 32.843666, 46.715996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967918, 32.732151, 46.660187>,  <31.626154, 32.546291, 46.567169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967918, 32.732151, 46.660187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185702, 0.691067, -0.698528,
		-0.485277, 0.553647, 0.676743,
		0.854413, 0.464652, 0.232545,
		32.224243, 32.871548, 46.729950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483807, 33.322899, 46.726780>,  <31.626154, 32.546291, 46.567169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483807, 33.322899, 46.726780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875801, 33.309284, 46.648327>,  <32.110996, 33.301113, 46.601254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875801, 33.309284, 46.648327>,  <31.483807, 33.322899, 46.726780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875801, 33.309284, 46.648327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088801, 0.807048, -0.583770,
		0.178161, 0.589503, 0.787873,
		0.979986, -0.034041, -0.196133,
		32.169796, 33.299072, 46.589485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687925, 34.042763, 46.675983>,  <31.483807, 33.322899, 46.726780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687925, 34.042763, 46.675983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990852, 33.868572, 46.481323>,  <32.172607, 33.764057, 46.364525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990852, 33.868572, 46.481323>,  <31.687925, 34.042763, 46.675983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990852, 33.868572, 46.481323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052639, 0.702074, -0.710156,
		0.650920, 0.563431, 0.508771,
		0.757319, -0.435473, -0.486653,
		32.218048, 33.737930, 46.335327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164211, 34.577465, 46.534328>,  <31.687925, 34.042763, 46.675983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164211, 34.577465, 46.534328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300961, 34.306862, 46.273418>,  <32.383011, 34.144501, 46.116871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300961, 34.306862, 46.273418>,  <32.164211, 34.577465, 46.534328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300961, 34.306862, 46.273418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034376, 0.702635, -0.710720,
		0.939117, 0.220554, 0.263468,
		0.341874, -0.676506, -0.652275,
		32.403522, 34.103909, 46.077736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653900, 34.916313, 46.077560>,  <32.164211, 34.577465, 46.534328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653900, 34.916313, 46.077560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.553165, 34.596588, 45.859322>,  <32.492725, 34.404751, 45.728378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.553165, 34.596588, 45.859322>,  <32.653900, 34.916313, 46.077560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553165, 34.596588, 45.859322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053516, 0.551402, -0.832521,
		0.966290, -0.238855, -0.096085,
		-0.251833, -0.799315, -0.545597,
		32.477615, 34.356792, 45.695644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164894, 34.839710, 45.610535>,  <32.653900, 34.916313, 46.077560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164894, 34.839710, 45.610535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840569, 34.660400, 45.460003>,  <32.645973, 34.552814, 45.369682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840569, 34.660400, 45.460003>,  <33.164894, 34.839710, 45.610535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840569, 34.660400, 45.460003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063423, 0.571899, -0.817869,
		0.581858, -0.687008, -0.435272,
		-0.810814, -0.448277, -0.376336,
		32.597324, 34.525917, 45.347103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917667, 34.901909, 45.805683>,  <33.164894, 34.839710, 45.610535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917667, 34.901909, 45.805683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.170509, 35.197510, 45.898911>,  <34.322212, 35.374870, 45.954845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.170509, 35.197510, 45.898911>,  <33.917667, 34.901909, 45.805683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170509, 35.197510, 45.898911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026386, -0.321129, 0.946668,
		0.774437, -0.592239, -0.222485,
		0.632100, 0.739005, 0.233067,
		34.360138, 35.419212, 45.968830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408966, 34.435349, 46.180408>,  <33.917667, 34.901909, 45.805683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408966, 34.435349, 46.180408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465363, 34.820179, 46.273815>,  <34.499199, 35.051079, 46.329861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465363, 34.820179, 46.273815>,  <34.408966, 34.435349, 46.180408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465363, 34.820179, 46.273815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080204, -0.246199, 0.965895,
		0.986757, -0.117454, -0.111874,
		0.140992, 0.962076, 0.233518,
		34.507660, 35.108803, 46.343872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978817, 34.461288, 46.538857>,  <34.408966, 34.435349, 46.180408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978817, 34.461288, 46.538857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.769520, 34.777920, 46.665104>,  <34.643940, 34.967899, 46.740852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.769520, 34.777920, 46.665104>,  <34.978817, 34.461288, 46.538857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769520, 34.777920, 46.665104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081900, -0.321936, 0.943212,
		0.848238, 0.519379, 0.103621,
		-0.523244, 0.791582, 0.315616,
		34.612545, 35.015396, 46.759789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235184, 34.477512, 47.188538>,  <34.978817, 34.461288, 46.538857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235184, 34.477512, 47.188538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.959087, 34.766636, 47.201889>,  <34.793430, 34.940109, 47.209900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.959087, 34.766636, 47.201889>,  <35.235184, 34.477512, 47.188538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959087, 34.766636, 47.201889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117646, -0.157626, 0.980466,
		0.713952, 0.672830, 0.193836,
		-0.690241, 0.722810, 0.033381,
		34.752014, 34.983479, 47.211903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414459, 35.054554, 47.654896>,  <35.235184, 34.477512, 47.188538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414459, 35.054554, 47.654896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.019146, 35.007351, 47.616169>,  <34.781960, 34.979027, 47.592934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.019146, 35.007351, 47.616169>,  <35.414459, 35.054554, 47.654896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019146, 35.007351, 47.616169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053797, -0.324299, 0.944424,
		-0.142852, 0.938564, 0.314150,
		-0.988281, -0.118012, -0.096818,
		34.722660, 34.971947, 47.587124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313457, 35.446766, 48.141621>,  <35.414459, 35.054554, 47.654896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313457, 35.446766, 48.141621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.018158, 35.183994, 48.080387>,  <34.840977, 35.026333, 48.043648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.018158, 35.183994, 48.080387>,  <35.313457, 35.446766, 48.141621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018158, 35.183994, 48.080387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027599, -0.197346, 0.979945,
		-0.673961, 0.727671, 0.127561,
		-0.738251, -0.656924, -0.153086,
		34.796684, 34.986916, 48.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809780, 35.486111, 48.781063>,  <35.313457, 35.446766, 48.141621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809780, 35.486111, 48.781063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.687973, 35.163387, 48.578545>,  <34.614887, 34.969753, 48.457035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.687973, 35.163387, 48.578545>,  <34.809780, 35.486111, 48.781063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687973, 35.163387, 48.578545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275846, -0.434062, 0.857612,
		-0.911689, 0.400818, -0.090375,
		-0.304518, -0.806805, -0.506294,
		34.596619, 34.921345, 48.426655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040478, 35.281464, 49.054382>,  <34.809780, 35.486111, 48.781063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040478, 35.281464, 49.054382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243279, 34.980289, 48.886559>,  <34.364960, 34.799583, 48.785862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243279, 34.980289, 48.886559>,  <34.040478, 35.281464, 49.054382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243279, 34.980289, 48.886559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119994, -0.543680, 0.830670,
		-0.853550, -0.370809, -0.365997,
		0.507005, -0.752936, -0.419563,
		34.395382, 34.754410, 48.760689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657173, 34.668461, 49.345047>,  <34.040478, 35.281464, 49.054382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657173, 34.668461, 49.345047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002190, 34.503529, 49.227737>,  <34.209198, 34.404568, 49.157352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002190, 34.503529, 49.227737>,  <33.657173, 34.668461, 49.345047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002190, 34.503529, 49.227737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017045, -0.602953, 0.797594,
		-0.505702, -0.682958, -0.527100,
		0.862540, -0.412329, -0.293274,
		34.260952, 34.379829, 49.139755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610020, 33.914589, 49.382671>,  <33.657173, 34.668461, 49.345047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610020, 33.914589, 49.382671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.000340, 33.995705, 49.415417>,  <34.234531, 34.044373, 49.435062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.000340, 33.995705, 49.415417>,  <33.610020, 33.914589, 49.382671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000340, 33.995705, 49.415417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077358, -0.670201, 0.738137,
		0.204548, -0.713938, -0.669667,
		0.975795, 0.202788, 0.081860,
		34.293079, 34.056541, 49.439976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812805, 33.313000, 49.357918>,  <33.610020, 33.914589, 49.382671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812805, 33.313000, 49.357918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.114922, 33.513466, 49.526852>,  <34.296192, 33.633747, 49.628212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.114922, 33.513466, 49.526852>,  <33.812805, 33.313000, 49.357918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114922, 33.513466, 49.526852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038941, -0.608949, 0.792253,
		0.654230, -0.614829, -0.440419,
		0.755293, 0.501165, 0.422335,
		34.341511, 33.663815, 49.653553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317993, 32.831398, 49.655777>,  <33.812805, 33.313000, 49.357918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317993, 32.831398, 49.655777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426514, 33.158562, 49.858727>,  <34.491627, 33.354858, 49.980495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426514, 33.158562, 49.858727>,  <34.317993, 32.831398, 49.655777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426514, 33.158562, 49.858727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215989, -0.565431, 0.796013,
		0.937948, -0.106370, -0.330059,
		0.271298, 0.817908, 0.507370,
		34.507904, 33.403934, 50.010937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943035, 32.623566, 49.964729>,  <34.317993, 32.831398, 49.655777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943035, 32.623566, 49.964729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851116, 32.957718, 50.164463>,  <34.795967, 33.158211, 50.284302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851116, 32.957718, 50.164463>,  <34.943035, 32.623566, 49.964729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851116, 32.957718, 50.164463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291977, -0.430257, 0.854183,
		0.928409, 0.342080, -0.145041,
		-0.229794, 0.835380, 0.499334,
		34.782177, 33.208332, 50.314262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580906, 32.893089, 50.303093>,  <34.943035, 32.623566, 49.964729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580906, 32.893089, 50.303093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.248470, 33.007408, 50.493927>,  <35.049007, 33.076000, 50.608429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.248470, 33.007408, 50.493927>,  <35.580906, 32.893089, 50.303093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248470, 33.007408, 50.493927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137713, -0.725376, 0.674437,
		0.538820, 0.626217, 0.563493,
		-0.831088, 0.285800, 0.477085,
		34.999146, 33.093147, 50.637054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293522, 33.057358, 50.175068>,  <35.580906, 32.893089, 50.303093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293522, 33.057358, 50.175068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.604187, 32.858067, 50.020893>,  <36.790585, 32.738491, 49.928387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.604187, 32.858067, 50.020893>,  <36.293522, 33.057358, 50.175068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604187, 32.858067, 50.020893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147164, 0.451443, -0.880081,
		0.612488, 0.740247, 0.277296,
		0.776660, -0.498231, -0.385441,
		36.837185, 32.708599, 49.905262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791351, 33.566204, 49.884533>,  <36.293522, 33.057358, 50.175068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791351, 33.566204, 49.884533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925266, 33.226536, 49.721157>,  <37.005615, 33.022736, 49.623131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925266, 33.226536, 49.721157>,  <36.791351, 33.566204, 49.884533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925266, 33.226536, 49.721157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016438, 0.438648, -0.898509,
		0.942152, 0.294093, 0.160811,
		0.334784, -0.849175, -0.408438,
		37.025700, 32.971783, 49.598625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102089, 33.837193, 49.342606>,  <36.791351, 33.566204, 49.884533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102089, 33.837193, 49.342606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.107784, 33.457935, 49.215591>,  <37.111202, 33.230381, 49.139381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.107784, 33.457935, 49.215591>,  <37.102089, 33.837193, 49.342606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107784, 33.457935, 49.215591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058109, 0.317816, -0.946370,
		0.998209, -0.004979, 0.059620,
		0.014236, -0.948139, -0.317536,
		37.112057, 33.173492, 49.120331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649548, 33.824341, 48.809002>,  <37.102089, 33.837193, 49.342606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649548, 33.824341, 48.809002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462250, 33.474388, 48.759483>,  <37.349873, 33.264416, 48.729771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462250, 33.474388, 48.759483>,  <37.649548, 33.824341, 48.809002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462250, 33.474388, 48.759483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156690, 0.055668, -0.986078,
		0.869596, -0.481120, 0.111020,
		-0.468242, -0.874886, -0.123796,
		37.321777, 33.211922, 48.722343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984623, 33.562668, 48.354977>,  <37.649548, 33.824341, 48.809002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984623, 33.562668, 48.354977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646923, 33.354500, 48.303730>,  <37.444305, 33.229599, 48.272984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646923, 33.354500, 48.303730>,  <37.984623, 33.562668, 48.354977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646923, 33.354500, 48.303730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045144, 0.169135, -0.984558,
		0.534053, -0.836992, -0.119297,
		-0.844245, -0.520421, -0.128112,
		37.393650, 33.198372, 48.265297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132191, 32.923515, 47.903542>,  <37.984623, 33.562668, 48.354977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132191, 32.923515, 47.903542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752064, 33.047935, 47.898846>,  <37.523987, 33.122589, 47.896027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752064, 33.047935, 47.898846>,  <38.132191, 32.923515, 47.903542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752064, 33.047935, 47.898846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071548, 0.181577, -0.980770,
		-0.302940, -0.932886, -0.194811,
		-0.950320, 0.311053, -0.011739,
		37.466969, 33.141251, 47.895325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700027, 32.572830, 47.246593>,  <38.132191, 32.923515, 47.903542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700027, 32.572830, 47.246593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.539326, 32.917625, 47.370251>,  <37.442905, 33.124504, 47.444447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.539326, 32.917625, 47.370251>,  <37.700027, 32.572830, 47.246593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539326, 32.917625, 47.370251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027255, 0.326184, -0.944913,
		-0.915342, -0.388048, -0.107552,
		-0.401753, 0.861988, 0.309146,
		37.418800, 33.176224, 47.462994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055843, 32.674820, 46.884823>,  <37.700027, 32.572830, 47.246593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055843, 32.674820, 46.884823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172104, 33.037434, 47.007278>,  <37.241859, 33.255001, 47.080753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172104, 33.037434, 47.007278>,  <37.055843, 32.674820, 46.884823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172104, 33.037434, 47.007278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034288, 0.329615, -0.943493,
		-0.956213, 0.263735, 0.126888,
		0.290656, 0.906531, 0.306139,
		37.259300, 33.309391, 47.099121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690521, 33.191254, 46.464535>,  <37.055843, 32.674820, 46.884823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690521, 33.191254, 46.464535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.019344, 33.380936, 46.590614>,  <37.216637, 33.494743, 46.666260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.019344, 33.380936, 46.590614>,  <36.690521, 33.191254, 46.464535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019344, 33.380936, 46.590614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146655, 0.358552, -0.921918,
		-0.550192, 0.804096, 0.225207,
		0.822059, 0.474204, 0.315197,
		37.265961, 33.523197, 46.685173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553669, 33.858170, 46.125401>,  <36.690521, 33.191254, 46.464535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553669, 33.858170, 46.125401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940334, 33.841335, 46.226429>,  <37.172333, 33.831234, 46.287048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940334, 33.841335, 46.226429>,  <36.553669, 33.858170, 46.125401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940334, 33.841335, 46.226429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242571, 0.466383, -0.850674,
		-0.081999, 0.883582, 0.461042,
		0.966662, -0.042081, 0.252574,
		37.230331, 33.828712, 46.302200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844643, 34.527943, 46.303036>,  <36.553669, 33.858170, 46.125401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844643, 34.527943, 46.303036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.150661, 34.302490, 46.178448>,  <37.334274, 34.167217, 46.103695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.150661, 34.302490, 46.178448>,  <36.844643, 34.527943, 46.303036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150661, 34.302490, 46.178448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104187, 0.585637, -0.803850,
		0.635488, 0.582533, 0.506765,
		0.765049, -0.563635, -0.311472,
		37.380177, 34.133400, 46.085007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429249, 35.054096, 45.999527>,  <36.844643, 34.527943, 46.303036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429249, 35.054096, 45.999527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.546978, 34.696064, 45.865543>,  <37.617615, 34.481243, 45.785152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.546978, 34.696064, 45.865543>,  <37.429249, 35.054096, 45.999527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546978, 34.696064, 45.865543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175827, 0.395218, -0.901603,
		0.939394, 0.206463, 0.273700,
		0.294319, -0.895084, -0.334964,
		37.635273, 34.427540, 45.765053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080681, 35.153988, 45.680016>,  <37.429249, 35.054096, 45.999527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080681, 35.153988, 45.680016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936367, 34.820782, 45.512245>,  <37.849777, 34.620857, 45.411583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936367, 34.820782, 45.512245>,  <38.080681, 35.153988, 45.680016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936367, 34.820782, 45.512245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259603, 0.342245, -0.903036,
		0.895790, -0.434687, 0.092776,
		-0.360786, -0.833016, -0.419426,
		37.828133, 34.570877, 45.386417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587559, 34.894279, 45.163277>,  <38.080681, 35.153988, 45.680016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587559, 34.894279, 45.163277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248344, 34.695965, 45.088402>,  <38.044815, 34.576977, 45.043476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248344, 34.695965, 45.088402>,  <38.587559, 34.894279, 45.163277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248344, 34.695965, 45.088402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154184, 0.107117, -0.982219,
		0.507021, -0.861813, -0.014397,
		-0.848031, -0.495786, -0.187189,
		37.993935, 34.547230, 45.032246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.313690, 42.247330, 37.397511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.536745, 42.316616, 37.072784>,  <25.670578, 42.358189, 36.877949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.536745, 42.316616, 37.072784>,  <25.313690, 42.247330, 37.397511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536745, 42.316616, 37.072784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159833, -0.982090, -0.099758,
		-0.814552, -0.074126, -0.575335,
		0.557636, 0.173216, -0.811811,
		25.704037, 42.368580, 36.829243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198259, 41.625912, 36.938377>,  <25.313690, 42.247330, 37.397511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198259, 41.625912, 36.938377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.533718, 41.812984, 36.826698>,  <25.734993, 41.925228, 36.759689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.533718, 41.812984, 36.826698>,  <25.198259, 41.625912, 36.938377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533718, 41.812984, 36.826698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382825, -0.870740, -0.308636,
		-0.387453, 0.151952, -0.909280,
		0.838645, 0.467677, -0.279201,
		25.785311, 41.953289, 36.742939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252823, 41.369282, 36.304749>,  <25.198259, 41.625912, 36.938377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252823, 41.369282, 36.304749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613447, 41.504272, 36.413040>,  <25.829823, 41.585266, 36.478016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613447, 41.504272, 36.413040>,  <25.252823, 41.369282, 36.304749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613447, 41.504272, 36.413040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371303, -0.924725, -0.083775,
		0.222082, 0.176053, -0.959002,
		0.901562, 0.337475, 0.270733,
		25.883915, 41.605515, 36.494259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708778, 41.023735, 35.854584>,  <25.252823, 41.369282, 36.304749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708778, 41.023735, 35.854584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.947321, 41.143078, 36.152668>,  <26.090446, 41.214684, 36.331520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.947321, 41.143078, 36.152668>,  <25.708778, 41.023735, 35.854584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947321, 41.143078, 36.152668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376968, -0.923715, 0.068155,
		0.708699, 0.240277, -0.663335,
		0.596356, 0.298358, 0.745212,
		26.126228, 41.232586, 36.376232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259192, 40.628262, 35.685181>,  <25.708778, 41.023735, 35.854584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259192, 40.628262, 35.685181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321913, 40.750584, 36.060818>,  <26.359547, 40.823978, 36.286201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321913, 40.750584, 36.060818>,  <26.259192, 40.628262, 35.685181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321913, 40.750584, 36.060818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409803, -0.885281, 0.219859,
		0.898595, 0.350368, -0.264138,
		0.156804, 0.305809, 0.939092,
		26.368954, 40.842327, 36.342545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891367, 40.409992, 35.872898>,  <26.259192, 40.628262, 35.685181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891367, 40.409992, 35.872898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.704556, 40.464981, 36.222294>,  <26.592468, 40.497974, 36.431931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.704556, 40.464981, 36.222294>,  <26.891367, 40.409992, 35.872898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704556, 40.464981, 36.222294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318020, -0.895626, 0.310995,
		0.825073, 0.423031, 0.374565,
		-0.467030, 0.137474, 0.873489,
		26.564445, 40.506222, 36.484341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357475, 40.190643, 36.370880>,  <26.891367, 40.409992, 35.872898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357475, 40.190643, 36.370880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.998390, 40.184692, 36.547012>,  <26.782940, 40.181122, 36.652691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.998390, 40.184692, 36.547012>,  <27.357475, 40.190643, 36.370880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998390, 40.184692, 36.547012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191916, -0.912839, 0.360408,
		0.396591, 0.408049, 0.822321,
		-0.897710, -0.014882, 0.440334,
		26.729076, 40.180229, 36.679111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498716, 39.913582, 36.967632>,  <27.357475, 40.190643, 36.370880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498716, 39.913582, 36.967632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106392, 39.872784, 36.901173>,  <26.870996, 39.848305, 36.861298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106392, 39.872784, 36.901173>,  <27.498716, 39.913582, 36.967632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106392, 39.872784, 36.901173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050209, -0.955639, 0.290228,
		-0.188377, 0.276317, 0.942424,
		-0.980812, -0.101991, -0.166147,
		26.812149, 39.842186, 36.851330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245314, 39.548275, 37.572197>,  <27.498716, 39.913582, 36.967632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245314, 39.548275, 37.572197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949654, 39.498047, 37.307503>,  <26.772259, 39.467911, 37.148685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949654, 39.498047, 37.307503>,  <27.245314, 39.548275, 37.572197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949654, 39.498047, 37.307503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057032, -0.967271, 0.247252,
		-0.671123, 0.220496, 0.707796,
		-0.739149, -0.125570, -0.661734,
		26.727909, 39.460377, 37.108982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647657, 39.104156, 37.950123>,  <27.245314, 39.548275, 37.572197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647657, 39.104156, 37.950123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648436, 39.059841, 37.552586>,  <26.648903, 39.033253, 37.314064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648436, 39.059841, 37.552586>,  <26.647657, 39.104156, 37.950123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648436, 39.059841, 37.552586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045360, -0.992811, 0.110761,
		-0.998969, -0.045296, 0.003094,
		0.001945, -0.110788, -0.993842,
		26.649019, 39.026604, 37.254433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003422, 38.641960, 37.696930>,  <26.647657, 39.104156, 37.950123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003422, 38.641960, 37.696930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.258030, 38.630978, 37.388622>,  <26.410795, 38.624390, 37.203636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.258030, 38.630978, 37.388622>,  <26.003422, 38.641960, 37.696930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258030, 38.630978, 37.388622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153864, -0.983798, -0.092021,
		-0.755758, 0.177167, -0.630430,
		0.636518, -0.027455, -0.770773,
		26.448986, 38.622742, 37.157391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648840, 38.324089, 37.115852>,  <26.003422, 38.641960, 37.696930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648840, 38.324089, 37.115852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.037354, 38.271873, 37.036285>,  <26.270462, 38.240543, 36.988544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.037354, 38.271873, 37.036285>,  <25.648840, 38.324089, 37.115852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037354, 38.271873, 37.036285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146272, -0.987006, -0.066516,
		-0.187651, 0.093702, -0.977756,
		0.971283, -0.130536, -0.198919,
		26.328739, 38.232712, 36.976608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586039, 38.014038, 36.426907>,  <25.648840, 38.324089, 37.115852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586039, 38.014038, 36.426907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.938410, 37.956196, 36.607155>,  <26.149832, 37.921490, 36.715302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.938410, 37.956196, 36.607155>,  <25.586039, 38.014038, 36.426907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938410, 37.956196, 36.607155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031995, -0.968193, -0.248149,
		0.472167, 0.204184, -0.857535,
		0.880928, -0.144605, 0.450616,
		26.202688, 37.912815, 36.742340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981709, 37.574402, 35.995613>,  <25.586039, 38.014038, 36.426907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981709, 37.574402, 35.995613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.180643, 37.526913, 36.339371>,  <26.300003, 37.498417, 36.545628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.180643, 37.526913, 36.339371>,  <25.981709, 37.574402, 35.995613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180643, 37.526913, 36.339371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048978, -0.985170, -0.164444,
		0.866175, 0.123875, -0.484145,
		0.497335, -0.118725, 0.859396,
		26.329844, 37.491295, 36.597191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505070, 37.114735, 35.899731>,  <25.981709, 37.574402, 35.995613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505070, 37.114735, 35.899731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.461618, 37.116222, 36.297359>,  <26.435547, 37.117115, 36.535938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.461618, 37.116222, 36.297359>,  <26.505070, 37.114735, 35.899731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461618, 37.116222, 36.297359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250294, -0.967674, 0.030975,
		0.962056, 0.252176, 0.104185,
		-0.108629, 0.003723, 0.994075,
		26.429029, 37.117340, 36.595581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108704, 36.753120, 36.222095>,  <26.505070, 37.114735, 35.899731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108704, 36.753120, 36.222095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819948, 36.742310, 36.498688>,  <26.646696, 36.735821, 36.664642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819948, 36.742310, 36.498688>,  <27.108704, 36.753120, 36.222095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819948, 36.742310, 36.498688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188938, -0.968970, 0.159370,
		0.665718, 0.245695, 0.704594,
		-0.721887, -0.027029, 0.691483,
		26.603382, 36.734200, 36.706131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457018, 36.340279, 36.766544>,  <27.108704, 36.753120, 36.222095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457018, 36.340279, 36.766544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062469, 36.340767, 36.832363>,  <26.825741, 36.341061, 36.871853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062469, 36.340767, 36.832363>,  <27.457018, 36.340279, 36.766544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062469, 36.340767, 36.832363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058384, -0.932327, 0.356873,
		0.153844, 0.361615, 0.919547,
		-0.986369, 0.001216, 0.164545,
		26.766560, 36.341133, 36.881725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432110, 36.132614, 37.519028>,  <27.457018, 36.340279, 36.766544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432110, 36.132614, 37.519028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089645, 36.078716, 37.319496>,  <26.884167, 36.046379, 37.199776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089645, 36.078716, 37.319496>,  <27.432110, 36.132614, 37.519028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089645, 36.078716, 37.319496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056664, -0.935094, 0.349840,
		-0.513593, 0.327785, 0.792956,
		-0.856161, -0.134744, -0.498832,
		26.832798, 36.038292, 37.169846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994061, 35.903015, 38.002087>,  <27.432110, 36.132614, 37.519028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994061, 35.903015, 38.002087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920456, 35.779770, 37.628735>,  <26.876293, 35.705822, 37.404724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920456, 35.779770, 37.628735>,  <26.994061, 35.903015, 38.002087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920456, 35.779770, 37.628735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110398, -0.937112, 0.331108,
		-0.976705, 0.163971, 0.138423,
		-0.184010, -0.308113, -0.933384,
		26.865253, 35.687336, 37.348721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737295, 35.722420, 38.274712>,  <26.994061, 35.903015, 38.002087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737295, 35.722420, 38.274712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126755, 35.663910, 38.344704>,  <28.360430, 35.628803, 38.386700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126755, 35.663910, 38.344704>,  <27.737295, 35.722420, 38.274712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126755, 35.663910, 38.344704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143330, 0.989238, 0.029394,
		-0.177392, -0.003540, 0.984134,
		0.973647, -0.146270, 0.174976,
		28.418848, 35.620029, 38.397198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958281, 36.136551, 38.690563>,  <27.737295, 35.722420, 38.274712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958281, 36.136551, 38.690563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.327196, 36.045979, 38.565273>,  <28.548546, 35.991634, 38.490097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.327196, 36.045979, 38.565273>,  <27.958281, 36.136551, 38.690563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327196, 36.045979, 38.565273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309062, 0.918704, 0.245893,
		0.232087, -0.323592, 0.917292,
		0.922289, -0.226431, -0.313229,
		28.603882, 35.978050, 38.471306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376793, 36.286636, 39.228485>,  <27.958281, 36.136551, 38.690563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376793, 36.286636, 39.228485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.575573, 36.292953, 38.881432>,  <28.694841, 36.296741, 38.673199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.575573, 36.292953, 38.881432>,  <28.376793, 36.286636, 39.228485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575573, 36.292953, 38.881432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354464, 0.908926, 0.219566,
		0.792083, -0.416659, 0.446094,
		0.496950, 0.015790, -0.867636,
		28.724659, 36.297691, 38.621140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087336, 36.558235, 39.423153>,  <28.376793, 36.286636, 39.228485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087336, 36.558235, 39.423153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071003, 36.630253, 39.030029>,  <29.061203, 36.673466, 38.794155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071003, 36.630253, 39.030029>,  <29.087336, 36.558235, 39.423153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071003, 36.630253, 39.030029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409432, 0.900270, 0.147916,
		0.911426, -0.396355, -0.110476,
		-0.040831, 0.180047, -0.982810,
		29.058754, 36.684265, 38.735188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771048, 36.934784, 39.181835>,  <29.087336, 36.558235, 39.423153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771048, 36.934784, 39.181835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506725, 37.011799, 38.891659>,  <29.348133, 37.058006, 38.717552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506725, 37.011799, 38.891659>,  <29.771048, 36.934784, 39.181835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506725, 37.011799, 38.891659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260799, 0.965214, 0.018615,
		0.703791, -0.176894, -0.688031,
		-0.660804, 0.192539, -0.725442,
		29.308483, 37.069561, 38.674026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132168, 37.338734, 38.584812>,  <29.771048, 36.934784, 39.181835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132168, 37.338734, 38.584812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735727, 37.390930, 38.574280>,  <29.497864, 37.422249, 38.567959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735727, 37.390930, 38.574280>,  <30.132168, 37.338734, 38.584812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735727, 37.390930, 38.574280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131707, 0.989959, -0.051320,
		0.019374, -0.054331, -0.998335,
		-0.991099, 0.130493, -0.026335,
		29.438398, 37.430077, 38.566380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011644, 37.846020, 38.039131>,  <30.132168, 37.338734, 38.584812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011644, 37.846020, 38.039131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658926, 37.843334, 38.227764>,  <29.447294, 37.841724, 38.340942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658926, 37.843334, 38.227764>,  <30.011644, 37.846020, 38.039131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658926, 37.843334, 38.227764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042908, 0.996893, -0.066047,
		-0.469673, -0.078474, -0.879346,
		-0.881797, -0.006711, 0.471581,
		29.394386, 37.841320, 38.369240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475731, 38.174435, 37.678680>,  <30.011644, 37.846020, 38.039131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475731, 38.174435, 37.678680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.347763, 38.225224, 38.054241>,  <29.270983, 38.255695, 38.279575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.347763, 38.225224, 38.054241>,  <29.475731, 38.174435, 37.678680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347763, 38.225224, 38.054241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172548, 0.966599, -0.189509,
		-0.931599, -0.222633, -0.287328,
		-0.319922, 0.126969, 0.938898,
		29.251787, 38.263313, 38.335911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989052, 38.731606, 37.602905>,  <29.475731, 38.174435, 37.678680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989052, 38.731606, 37.602905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021830, 38.712669, 38.001110>,  <29.041496, 38.701305, 38.240032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021830, 38.712669, 38.001110>,  <28.989052, 38.731606, 37.602905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021830, 38.712669, 38.001110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208699, 0.975910, 0.063589,
		-0.974541, -0.212973, 0.070088,
		0.081942, -0.047343, 0.995512,
		29.046413, 38.698467, 38.299763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436653, 39.207005, 37.869514>,  <28.989052, 38.731606, 37.602905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436653, 39.207005, 37.869514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692339, 39.139175, 38.169556>,  <28.845751, 39.098476, 38.349579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692339, 39.139175, 38.169556>,  <28.436653, 39.207005, 37.869514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692339, 39.139175, 38.169556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224689, 0.891644, 0.393047,
		-0.735474, -0.419780, 0.531848,
		0.639213, -0.169575, 0.750101,
		28.884102, 39.088303, 38.394585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075964, 39.252747, 38.470703>,  <28.436653, 39.207005, 37.869514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075964, 39.252747, 38.470703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.460222, 39.319496, 38.559528>,  <28.690777, 39.359547, 38.612823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.460222, 39.319496, 38.559528>,  <28.075964, 39.252747, 38.470703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460222, 39.319496, 38.559528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233957, 0.917034, 0.322974,
		-0.149748, -0.362218, 0.919986,
		0.960645, 0.166872, 0.222068,
		28.748415, 39.369556, 38.626148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105331, 39.612583, 39.069683>,  <28.075964, 39.252747, 38.470703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105331, 39.612583, 39.069683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476746, 39.690647, 38.943359>,  <28.699594, 39.737484, 38.867565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476746, 39.690647, 38.943359>,  <28.105331, 39.612583, 39.069683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476746, 39.690647, 38.943359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158418, 0.977630, 0.138357,
		0.335743, -0.078440, 0.938682,
		0.928537, 0.195157, -0.315806,
		28.755306, 39.749195, 38.848618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322939, 40.008995, 39.526123>,  <28.105331, 39.612583, 39.069683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322939, 40.008995, 39.526123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.551775, 40.075848, 39.204929>,  <28.689077, 40.115959, 39.012215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.551775, 40.075848, 39.204929>,  <28.322939, 40.008995, 39.526123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551775, 40.075848, 39.204929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013885, 0.976906, 0.213219,
		0.820074, -0.133130, 0.556557,
		0.572090, 0.167128, -0.802983,
		28.723402, 40.125984, 38.964035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934443, 40.524372, 39.720768>,  <28.322939, 40.008995, 39.526123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934443, 40.524372, 39.720768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.863729, 40.538216, 39.327312>,  <28.821302, 40.546524, 39.091240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.863729, 40.538216, 39.327312>,  <28.934443, 40.524372, 39.720768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863729, 40.538216, 39.327312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140165, 0.988310, 0.059968,
		0.974218, 0.148473, -0.169864,
		-0.176782, 0.034613, -0.983641,
		28.810696, 40.548599, 39.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370852, 41.144032, 39.452194>,  <28.934443, 40.524372, 39.720768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370852, 41.144032, 39.452194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123690, 41.041954, 39.154720>,  <28.975391, 40.980709, 38.976234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123690, 41.041954, 39.154720>,  <29.370852, 41.144032, 39.452194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123690, 41.041954, 39.154720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079536, 0.961298, -0.263782,
		0.782219, -0.103842, -0.614288,
		-0.617906, -0.255193, -0.743686,
		28.938318, 40.965397, 38.931614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510984, 41.504307, 38.835308>,  <29.370852, 41.144032, 39.452194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510984, 41.504307, 38.835308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125273, 41.422058, 38.768513>,  <28.893847, 41.372707, 38.728436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125273, 41.422058, 38.768513>,  <29.510984, 41.504307, 38.835308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125273, 41.422058, 38.768513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127648, 0.913093, -0.387255,
		0.232101, -0.352107, -0.906725,
		-0.964280, -0.205624, -0.166984,
		28.835989, 41.360371, 38.718418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394131, 41.984798, 38.351784>,  <29.510984, 41.504307, 38.835308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394131, 41.984798, 38.351784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.031725, 41.856529, 38.462276>,  <28.814281, 41.779568, 38.528572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.031725, 41.856529, 38.462276>,  <29.394131, 41.984798, 38.351784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031725, 41.856529, 38.462276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386984, 0.891952, -0.233807,
		-0.171412, -0.318731, -0.932217,
		-0.906014, -0.320676, 0.276235,
		28.759920, 41.760326, 38.545147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984573, 42.287189, 37.874958>,  <29.394131, 41.984798, 38.351784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984573, 42.287189, 37.874958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754021, 42.210846, 38.192791>,  <28.615688, 42.165039, 38.383492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754021, 42.210846, 38.192791>,  <28.984573, 42.287189, 37.874958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754021, 42.210846, 38.192791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521322, 0.834659, -0.177675,
		-0.629290, -0.516639, -0.580584,
		-0.576383, -0.190862, 0.794578,
		28.581106, 42.153587, 38.431164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311834, 42.511478, 37.608109>,  <28.984573, 42.287189, 37.874958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311834, 42.511478, 37.608109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258232, 42.476803, 38.002983>,  <28.226070, 42.455997, 38.239906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258232, 42.476803, 38.002983>,  <28.311834, 42.511478, 37.608109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258232, 42.476803, 38.002983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649828, 0.759778, -0.021494,
		-0.748175, -0.644378, -0.158147,
		-0.134007, -0.086686, 0.987182,
		28.218031, 42.450798, 38.299137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588554, 42.489952, 37.752029>,  <28.311834, 42.511478, 37.608109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588554, 42.489952, 37.752029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775846, 42.607922, 38.085205>,  <27.888222, 42.678703, 38.285110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775846, 42.607922, 38.085205>,  <27.588554, 42.489952, 37.752029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775846, 42.607922, 38.085205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717072, 0.677631, 0.163168,
		-0.516302, -0.673676, 0.528765,
		0.468230, 0.294919, 0.832937,
		27.916315, 42.696396, 38.335087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066250, 42.521797, 38.265205>,  <27.588554, 42.489952, 37.752029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066250, 42.521797, 38.265205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.346420, 42.773865, 38.399246>,  <27.514523, 42.925106, 38.479671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.346420, 42.773865, 38.399246>,  <27.066250, 42.521797, 38.265205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346420, 42.773865, 38.399246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613083, 0.771607, -0.169560,
		-0.365420, -0.086682, 0.926798,
		0.700426, 0.630165, 0.335104,
		27.556549, 42.962914, 38.499779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734060, 42.924202, 38.758984>,  <27.066250, 42.521797, 38.265205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734060, 42.924202, 38.758984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059526, 43.139446, 38.670998>,  <27.254807, 43.268593, 38.618206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059526, 43.139446, 38.670998>,  <26.734060, 42.924202, 38.758984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059526, 43.139446, 38.670998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560873, 0.826164, -0.053610,
		0.152875, 0.166991, 0.974035,
		0.813665, 0.538114, -0.219960,
		27.303625, 43.300880, 38.605011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589777, 43.526688, 39.192913>,  <26.734060, 42.924202, 38.758984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589777, 43.526688, 39.192913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.845583, 43.616165, 38.898705>,  <26.999065, 43.669853, 38.722179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.845583, 43.616165, 38.898705>,  <26.589777, 43.526688, 39.192913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845583, 43.616165, 38.898705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578934, 0.769617, -0.269304,
		0.505825, 0.598039, 0.621684,
		0.639513, 0.223693, -0.735517,
		27.037437, 43.683273, 38.678051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.878082, 29.883612, 48.538280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.530441, 29.693127, 48.484783>,  <38.321857, 29.578836, 48.452686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.530441, 29.693127, 48.484783>,  <38.878082, 29.883612, 48.538280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530441, 29.693127, 48.484783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000257, -0.269955, 0.962873,
		-0.494637, 0.836867, 0.234495,
		-0.869099, -0.476213, -0.133745,
		38.269711, 29.550262, 48.444660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408772, 30.185207, 49.051540>,  <38.878082, 29.883612, 48.538280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408772, 30.185207, 49.051540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339218, 29.805395, 48.947113>,  <38.297485, 29.577507, 48.884457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339218, 29.805395, 48.947113>,  <38.408772, 30.185207, 49.051540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339218, 29.805395, 48.947113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089420, -0.279240, 0.956048,
		-0.980699, 0.142892, 0.133461,
		-0.173879, -0.949530, -0.261072,
		38.287056, 29.520536, 48.868790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855717, 29.965002, 49.473343>,  <38.408772, 30.185207, 49.051540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855717, 29.965002, 49.473343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028664, 29.624084, 49.355598>,  <38.132431, 29.419533, 49.284950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028664, 29.624084, 49.355598>,  <37.855717, 29.965002, 49.473343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028664, 29.624084, 49.355598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070449, -0.293526, 0.953352,
		-0.898941, -0.432937, -0.066868,
		0.432369, -0.852296, -0.294362,
		38.158375, 29.368395, 49.267288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441883, 29.457079, 49.799080>,  <37.855717, 29.965002, 49.473343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441883, 29.457079, 49.799080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773895, 29.254967, 49.704643>,  <37.973103, 29.133699, 49.647984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773895, 29.254967, 49.704643>,  <37.441883, 29.457079, 49.799080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773895, 29.254967, 49.704643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019485, -0.396781, 0.917706,
		-0.557376, -0.766325, -0.319495,
		0.830031, -0.505282, -0.236088,
		38.022903, 29.103382, 49.633816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403381, 28.804619, 50.135056>,  <37.441883, 29.457079, 49.799080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403381, 28.804619, 50.135056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796661, 28.821577, 50.064045>,  <38.032631, 28.831753, 50.021439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796661, 28.821577, 50.064045>,  <37.403381, 28.804619, 50.135056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796661, 28.821577, 50.064045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165930, -0.612792, 0.772627,
		-0.076031, -0.789106, -0.609533,
		0.983202, 0.042397, -0.177528,
		38.091621, 28.834295, 50.010788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603901, 28.172016, 50.342247>,  <37.403381, 28.804619, 50.135056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603901, 28.172016, 50.342247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942127, 28.382929, 50.308819>,  <38.145065, 28.509478, 50.288761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942127, 28.382929, 50.308819>,  <37.603901, 28.172016, 50.342247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942127, 28.382929, 50.308819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379568, -0.483693, 0.788651,
		0.375420, -0.698580, -0.609136,
		0.845570, 0.527283, -0.083570,
		38.195797, 28.541113, 50.283749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232327, 27.738689, 50.366413>,  <37.603901, 28.172016, 50.342247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232327, 27.738689, 50.366413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368412, 28.097166, 50.480324>,  <38.450062, 28.312252, 50.548672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368412, 28.097166, 50.480324>,  <38.232327, 27.738689, 50.366413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368412, 28.097166, 50.480324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355525, -0.402946, 0.843348,
		0.870552, -0.185670, -0.455705,
		0.340209, 0.896192, 0.284775,
		38.470474, 28.366024, 50.565758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871632, 27.718937, 50.734188>,  <38.232327, 27.738689, 50.366413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871632, 27.718937, 50.734188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722305, 28.067719, 50.860886>,  <38.632710, 28.276987, 50.936905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722305, 28.067719, 50.860886>,  <38.871632, 27.718937, 50.734188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722305, 28.067719, 50.860886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026845, -0.331134, 0.943202,
		0.927315, 0.360618, 0.100211,
		-0.373319, 0.871955, 0.316746,
		38.610310, 28.329306, 50.955910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257027, 27.728596, 51.277546>,  <38.871632, 27.718937, 50.734188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257027, 27.728596, 51.277546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.976173, 28.004608, 51.347824>,  <38.807663, 28.170216, 51.389992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.976173, 28.004608, 51.347824>,  <39.257027, 27.728596, 51.277546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976173, 28.004608, 51.347824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037907, -0.282624, 0.958482,
		0.711037, 0.666321, 0.224596,
		-0.702133, 0.690029, 0.175698,
		38.765533, 28.211617, 51.400532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457516, 28.059408, 51.857048>,  <39.257027, 27.728596, 51.277546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457516, 28.059408, 51.857048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.066017, 28.136053, 51.827843>,  <38.831116, 28.182039, 51.810318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.066017, 28.136053, 51.827843>,  <39.457516, 28.059408, 51.857048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066017, 28.136053, 51.827843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080231, -0.030163, 0.996320,
		0.188705, 0.981007, 0.044895,
		-0.978751, 0.191612, -0.073016,
		38.772392, 28.193537, 51.805939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280270, 28.672121, 52.180992>,  <39.457516, 28.059408, 51.857048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280270, 28.672121, 52.180992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957130, 28.436563, 52.190636>,  <38.763245, 28.295229, 52.196423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957130, 28.436563, 52.190636>,  <39.280270, 28.672121, 52.180992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957130, 28.436563, 52.190636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034607, 0.088225, 0.995499,
		-0.588370, 0.803381, -0.091652,
		-0.807851, -0.588893, 0.024106,
		38.714775, 28.259895, 52.197868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642445, 29.023703, 52.448242>,  <39.280270, 28.672121, 52.180992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642445, 29.023703, 52.448242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.710991, 28.638474, 52.531303>,  <38.752117, 28.407335, 52.581142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.710991, 28.638474, 52.531303>,  <38.642445, 29.023703, 52.448242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710991, 28.638474, 52.531303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279324, 0.249620, 0.927183,
		-0.944781, -0.100885, 0.311786,
		0.171367, -0.963074, 0.207657,
		38.762402, 28.349552, 52.593601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224907, 28.690472, 53.014957>,  <38.642445, 29.023703, 52.448242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224907, 28.690472, 53.014957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.586937, 28.522516, 52.988041>,  <38.804157, 28.421743, 52.971893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.586937, 28.522516, 52.988041>,  <38.224907, 28.690472, 53.014957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586937, 28.522516, 52.988041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225898, 0.340672, 0.912641,
		-0.360283, -0.841212, 0.403186,
		0.905078, -0.419888, -0.067289,
		38.858459, 28.396549, 52.967854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409580, 28.243231, 53.645576>,  <38.224907, 28.690472, 53.014957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409580, 28.243231, 53.645576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753292, 28.383411, 53.496544>,  <38.959518, 28.467520, 53.407124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753292, 28.383411, 53.496544>,  <38.409580, 28.243231, 53.645576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753292, 28.383411, 53.496544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226209, 0.392947, 0.891304,
		0.458766, -0.850162, 0.258376,
		0.859280, 0.350453, -0.372585,
		39.011078, 28.488546, 53.384769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665283, 28.422409, 53.408813>,  <38.409580, 28.243231, 53.645576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665283, 28.422409, 53.408813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838600, 28.680477, 53.660530>,  <37.942593, 28.835318, 53.811562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838600, 28.680477, 53.660530>,  <37.665283, 28.422409, 53.408813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838600, 28.680477, 53.660530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380942, 0.763911, -0.520886,
		-0.816785, -0.014028, 0.576771,
		0.433295, 0.645169, 0.629295,
		37.968590, 28.874027, 53.849319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182419, 28.920021, 53.526901>,  <37.665283, 28.422409, 53.408813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182419, 28.920021, 53.526901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.530815, 29.097242, 53.611835>,  <37.739853, 29.203575, 53.662796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.530815, 29.097242, 53.611835>,  <37.182419, 28.920021, 53.526901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530815, 29.097242, 53.611835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269540, 0.792249, -0.547439,
		-0.410767, 0.419579, 0.809459,
		0.870987, 0.443052, 0.212337,
		37.792110, 29.230158, 53.675537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987003, 29.532967, 53.664097>,  <37.182419, 28.920021, 53.526901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987003, 29.532967, 53.664097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381111, 29.589270, 53.625263>,  <37.617577, 29.623051, 53.601963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381111, 29.589270, 53.625263>,  <36.987003, 29.532967, 53.664097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381111, 29.589270, 53.625263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170615, 0.847021, -0.503435,
		0.011374, 0.512585, 0.858561,
		0.985272, 0.140757, -0.097088,
		37.676693, 29.631496, 53.596138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086296, 30.232594, 53.803333>,  <36.987003, 29.532967, 53.664097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086296, 30.232594, 53.803333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417366, 30.150049, 53.594578>,  <37.616009, 30.100523, 53.469326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417366, 30.150049, 53.594578>,  <37.086296, 30.232594, 53.803333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417366, 30.150049, 53.594578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008440, 0.934412, -0.356095,
		0.561143, 0.290326, 0.775132,
		0.827676, -0.206362, -0.521888,
		37.665668, 30.088140, 53.438011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383320, 30.822466, 53.794159>,  <37.086296, 30.232594, 53.803333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383320, 30.822466, 53.794159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.578232, 30.641239, 53.495552>,  <37.695179, 30.532503, 53.316387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.578232, 30.641239, 53.495552>,  <37.383320, 30.822466, 53.794159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578232, 30.641239, 53.495552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095358, 0.877371, -0.470240,
		0.868026, 0.157950, 0.470725,
		0.487275, -0.453068, -0.746520,
		37.724415, 30.505318, 53.271595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928913, 31.298071, 53.560604>,  <37.383320, 30.822466, 53.794159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928913, 31.298071, 53.560604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872406, 31.034550, 53.265030>,  <37.838501, 30.876436, 53.087685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872406, 31.034550, 53.265030>,  <37.928913, 31.298071, 53.560604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872406, 31.034550, 53.265030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100949, 0.732941, -0.672761,
		0.984811, -0.169636, -0.037037,
		-0.141271, -0.658803, -0.738932,
		37.830025, 30.836908, 53.043350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203472, 31.669275, 53.066750>,  <37.928913, 31.298071, 53.560604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203472, 31.669275, 53.066750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046520, 31.359274, 52.868595>,  <37.952347, 31.173273, 52.749702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046520, 31.359274, 52.868595>,  <38.203472, 31.669275, 53.066750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046520, 31.359274, 52.868595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013182, 0.543261, -0.839461,
		0.919707, -0.322861, -0.223383,
		-0.392384, -0.775002, -0.495385,
		37.928806, 31.126774, 52.719978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539780, 31.576952, 52.325367>,  <38.203472, 31.669275, 53.066750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539780, 31.576952, 52.325367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170376, 31.423525, 52.324249>,  <37.948734, 31.331469, 52.323578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170376, 31.423525, 52.324249>,  <38.539780, 31.576952, 52.325367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170376, 31.423525, 52.324249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191740, 0.467933, -0.862714,
		0.332215, -0.796188, -0.505685,
		-0.923509, -0.383566, -0.002793,
		37.893322, 31.308455, 52.323410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572170, 31.437101, 51.698025>,  <38.539780, 31.576952, 52.325367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572170, 31.437101, 51.698025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.184383, 31.389013, 51.783516>,  <37.951710, 31.360161, 51.834812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.184383, 31.389013, 51.783516>,  <38.572170, 31.437101, 51.698025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184383, 31.389013, 51.783516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242508, 0.340760, -0.908335,
		0.036368, -0.932432, -0.359509,
		-0.969467, -0.120218, 0.213729,
		37.893543, 31.352947, 51.847633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159374, 31.123789, 51.144295>,  <38.572170, 31.437101, 51.698025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159374, 31.123789, 51.144295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861481, 31.311840, 51.333755>,  <37.682743, 31.424671, 51.447433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861481, 31.311840, 51.333755>,  <38.159374, 31.123789, 51.144295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861481, 31.311840, 51.333755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328708, 0.359271, -0.873428,
		-0.580791, -0.806168, -0.113028,
		-0.744737, 0.470126, 0.473655,
		37.638062, 31.452877, 51.475853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580353, 30.979578, 50.736469>,  <38.159374, 31.123789, 51.144295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580353, 30.979578, 50.736469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458317, 31.278149, 50.973034>,  <37.385098, 31.457291, 51.114971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458317, 31.278149, 50.973034>,  <37.580353, 30.979578, 50.736469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458317, 31.278149, 50.973034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372637, 0.477935, -0.795437,
		-0.876393, -0.463059, 0.132335,
		-0.305087, 0.746428, 0.591411,
		37.366791, 31.502077, 51.150455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836067, 31.186737, 50.607567>,  <37.580353, 30.979578, 50.736469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836067, 31.186737, 50.607567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013443, 31.510262, 50.762070>,  <37.119869, 31.704376, 50.854771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013443, 31.510262, 50.762070>,  <36.836067, 31.186737, 50.607567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013443, 31.510262, 50.762070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312105, 0.543305, -0.779365,
		-0.840212, 0.225047, 0.493354,
		0.443435, 0.808810, 0.386253,
		37.146473, 31.752905, 50.877945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317326, 31.757605, 50.552368>,  <36.836067, 31.186737, 50.607567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317326, 31.757605, 50.552368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.678410, 31.923880, 50.596764>,  <36.895061, 32.023643, 50.623402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.678410, 31.923880, 50.596764>,  <36.317326, 31.757605, 50.552368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678410, 31.923880, 50.596764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156946, 0.558334, -0.814636,
		-0.400602, 0.717961, 0.569254,
		0.902710, 0.415687, 0.110989,
		36.949223, 32.048584, 50.630062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149609, 32.407326, 50.458878>,  <36.317326, 31.757605, 50.552368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149609, 32.407326, 50.458878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536980, 32.366016, 50.368118>,  <36.769402, 32.341228, 50.313663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536980, 32.366016, 50.368118>,  <36.149609, 32.407326, 50.458878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536980, 32.366016, 50.368118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157043, 0.454131, -0.876985,
		0.193615, 0.884929, 0.423574,
		0.968427, -0.103278, -0.226898,
		36.827507, 32.335033, 50.300049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750786, 32.691895, 51.046890>,  <36.149609, 32.407326, 50.458878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750786, 32.691895, 51.046890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.356396, 32.755539, 51.026741>,  <35.119762, 32.793724, 51.014652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.356396, 32.755539, 51.026741>,  <35.750786, 32.691895, 51.046890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356396, 32.755539, 51.026741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130479, -0.546691, 0.827106,
		0.104062, 0.822079, 0.559784,
		-0.985975, 0.159111, -0.050374,
		35.060604, 32.803272, 51.011627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524811, 32.790066, 51.786713>,  <35.750786, 32.691895, 51.046890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524811, 32.790066, 51.786713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201519, 32.697437, 51.570141>,  <35.007545, 32.641861, 51.440197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201519, 32.697437, 51.570141>,  <35.524811, 32.790066, 51.786713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201519, 32.697437, 51.570141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289939, -0.643775, 0.708159,
		-0.512550, 0.729333, 0.453173,
		-0.808225, -0.231574, -0.541429,
		34.959053, 32.627964, 51.407711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983288, 32.772766, 52.307430>,  <35.524811, 32.790066, 51.786713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983288, 32.772766, 52.307430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875370, 32.559196, 51.986897>,  <34.810619, 32.431053, 51.794575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875370, 32.559196, 51.986897>,  <34.983288, 32.772766, 52.307430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875370, 32.559196, 51.986897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324388, -0.733153, 0.597712,
		-0.906632, 0.421204, 0.024605,
		-0.269798, -0.533923, -0.801334,
		34.794430, 32.399021, 51.746498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174458, 32.506359, 52.342625>,  <34.983288, 32.772766, 52.307430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174458, 32.506359, 52.342625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417053, 32.275066, 52.124332>,  <34.562611, 32.136292, 51.993359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417053, 32.275066, 52.124332>,  <34.174458, 32.506359, 52.342625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417053, 32.275066, 52.124332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304954, -0.803051, 0.511968,
		-0.734283, -0.144081, -0.663377,
		0.606490, -0.578229, -0.545729,
		34.598999, 32.101597, 51.960613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857239, 31.883558, 52.430302>,  <34.174458, 32.506359, 52.342625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857239, 31.883558, 52.430302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197052, 31.784588, 52.243938>,  <34.400940, 31.725206, 52.132122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197052, 31.784588, 52.243938>,  <33.857239, 31.883558, 52.430302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197052, 31.784588, 52.243938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095471, -0.940713, 0.325491,
		-0.518820, -0.232035, -0.822792,
		0.849536, -0.247424, -0.465908,
		34.451912, 31.710361, 52.104168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756317, 31.167669, 52.110577>,  <33.857239, 31.883558, 52.430302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756317, 31.167669, 52.110577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138977, 31.229774, 52.209141>,  <34.368572, 31.267038, 52.268280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138977, 31.229774, 52.209141>,  <33.756317, 31.167669, 52.110577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138977, 31.229774, 52.209141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074243, -0.948106, 0.309165,
		0.281629, -0.277468, -0.918530,
		0.956647, 0.155264, 0.246414,
		34.425972, 31.276354, 52.283066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149712, 30.505148, 51.963242>,  <33.756317, 31.167669, 52.110577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149712, 30.505148, 51.963242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391296, 30.690424, 52.222683>,  <34.536247, 30.801590, 52.378349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391296, 30.690424, 52.222683>,  <34.149712, 30.505148, 51.963242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391296, 30.690424, 52.222683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175993, -0.871208, 0.458282,
		0.777341, -0.162634, -0.607693,
		0.603960, 0.463191, 0.648604,
		34.572483, 30.829382, 52.417263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385494, 29.874903, 51.605984>,  <34.149712, 30.505148, 51.963242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385494, 29.874903, 51.605984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009186, 29.742474, 51.576733>,  <33.783401, 29.663015, 51.559181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009186, 29.742474, 51.576733>,  <34.385494, 29.874903, 51.605984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009186, 29.742474, 51.576733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135376, 0.564532, -0.814234,
		0.310854, -0.756105, -0.575912,
		-0.940767, -0.331073, -0.073129,
		33.726955, 29.643152, 51.554794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380489, 29.707602, 50.923477>,  <34.385494, 29.874903, 51.605984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380489, 29.707602, 50.923477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014763, 29.773317, 51.071548>,  <33.795326, 29.812746, 51.160393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014763, 29.773317, 51.071548>,  <34.380489, 29.707602, 50.923477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014763, 29.773317, 51.071548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212135, 0.584332, -0.783297,
		-0.344994, -0.794711, -0.499413,
		-0.914318, 0.164290, 0.370177,
		33.740467, 29.822605, 51.182602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024223, 29.845762, 50.334591>,  <34.380489, 29.707602, 50.923477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024223, 29.845762, 50.334591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749870, 29.966829, 50.599304>,  <33.585258, 30.039469, 50.758133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749870, 29.966829, 50.599304>,  <34.024223, 29.845762, 50.334591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749870, 29.966829, 50.599304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417173, 0.581604, -0.698358,
		-0.596266, -0.755070, -0.272647,
		-0.685881, 0.302666, 0.661786,
		33.544106, 30.057629, 50.797840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222137, 29.717381, 50.101845>,  <34.024223, 29.845762, 50.334591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222137, 29.717381, 50.101845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254173, 30.018219, 50.363510>,  <33.273396, 30.198723, 50.520512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254173, 30.018219, 50.363510>,  <33.222137, 29.717381, 50.101845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254173, 30.018219, 50.363510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392291, 0.627098, -0.672946,
		-0.916348, -0.202727, 0.345265,
		0.080091, 0.752097, 0.654168,
		33.278202, 30.243849, 50.559761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593472, 29.971687, 50.033783>,  <33.222137, 29.717381, 50.101845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593472, 29.971687, 50.033783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806183, 30.255585, 50.218597>,  <32.933807, 30.425922, 50.329487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806183, 30.255585, 50.218597>,  <32.593472, 29.971687, 50.033783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806183, 30.255585, 50.218597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502639, 0.703596, -0.502302,
		-0.681594, 0.034873, 0.730900,
		0.531775, 0.709744, 0.462038,
		32.965714, 30.468508, 50.357208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067356, 30.471716, 50.162903>,  <32.593472, 29.971687, 50.033783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067356, 30.471716, 50.162903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429871, 30.640778, 50.163475>,  <32.647381, 30.742214, 50.163818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429871, 30.640778, 50.163475>,  <32.067356, 30.471716, 50.162903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429871, 30.640778, 50.163475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283761, 0.610963, -0.739056,
		-0.313240, 0.669393, 0.673642,
		0.906289, 0.422655, 0.001431,
		32.701759, 30.767574, 50.163906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946730, 31.068089, 50.055592>,  <32.067356, 30.471716, 50.162903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946730, 31.068089, 50.055592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323952, 31.032652, 49.927341>,  <32.550285, 31.011391, 49.850391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323952, 31.032652, 49.927341>,  <31.946730, 31.068089, 50.055592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323952, 31.032652, 49.927341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231510, 0.517330, -0.823876,
		0.238859, 0.851188, 0.467360,
		0.943053, -0.088592, -0.320628,
		32.606869, 31.006075, 49.831154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.253006, 26.217665, 51.262451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.386955, 25.934595, 51.511307>,  <36.467323, 25.764753, 51.660622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.386955, 25.934595, 51.511307>,  <36.253006, 26.217665, 51.262451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386955, 25.934595, 51.511307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369728, 0.705995, 0.604046,
		-0.866697, 0.027746, 0.498063,
		0.334870, -0.707673, 0.622143,
		36.487415, 25.722294, 51.697948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019821, 26.033386, 51.131561>,  <36.253006, 26.217665, 51.262451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019821, 26.033386, 51.131561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.403355, 26.135344, 51.081505>,  <37.633476, 26.196518, 51.051472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.403355, 26.135344, 51.081505>,  <37.019821, 26.033386, 51.131561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403355, 26.135344, 51.081505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118409, -0.041651, -0.992091,
		-0.258090, 0.966071, -0.009755,
		0.958837, 0.254894, -0.125141,
		37.691006, 26.211811, 51.043961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009663, 26.617304, 50.746635>,  <37.019821, 26.033386, 51.131561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009663, 26.617304, 50.746635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374973, 26.462511, 50.695770>,  <37.594158, 26.369635, 50.665253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374973, 26.462511, 50.695770>,  <37.009663, 26.617304, 50.746635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374973, 26.462511, 50.695770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082506, 0.129967, -0.988080,
		0.398897, 0.912882, 0.086768,
		0.913277, -0.386983, -0.127162,
		37.648956, 26.346416, 50.657623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305851, 27.059185, 50.278610>,  <37.009663, 26.617304, 50.746635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305851, 27.059185, 50.278610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.539810, 26.735250, 50.260471>,  <37.680187, 26.540890, 50.249588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.539810, 26.735250, 50.260471>,  <37.305851, 27.059185, 50.278610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539810, 26.735250, 50.260471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046918, 0.022035, -0.998656,
		0.809747, 0.586242, -0.025107,
		0.584901, -0.809836, -0.045348,
		37.715279, 26.492300, 50.246868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905979, 27.235573, 49.855766>,  <37.305851, 27.059185, 50.278610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905979, 27.235573, 49.855766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.897522, 26.835808, 49.844944>,  <37.892448, 26.595949, 49.838451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.897522, 26.835808, 49.844944>,  <37.905979, 27.235573, 49.855766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897522, 26.835808, 49.844944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181106, 0.022781, -0.983200,
		0.983236, -0.025688, 0.180517,
		-0.021144, -0.999410, -0.027051,
		37.891178, 26.535984, 49.836830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429115, 27.058374, 49.484722>,  <37.905979, 27.235573, 49.855766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429115, 27.058374, 49.484722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.199471, 26.732523, 49.451794>,  <38.061684, 26.537012, 49.432037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.199471, 26.732523, 49.451794>,  <38.429115, 27.058374, 49.484722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199471, 26.732523, 49.451794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094131, 0.034201, -0.994972,
		0.813349, -0.578972, 0.057047,
		-0.574110, -0.814630, -0.082316,
		38.027237, 26.488134, 49.427097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700325, 26.673893, 48.907440>,  <38.429115, 27.058374, 49.484722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700325, 26.673893, 48.907440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.333889, 26.517015, 48.940800>,  <38.114025, 26.422890, 48.960815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.333889, 26.517015, 48.940800>,  <38.700325, 26.673893, 48.907440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333889, 26.517015, 48.940800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043561, -0.109418, -0.993041,
		0.398590, -0.913352, 0.083153,
		-0.916094, -0.392193, 0.083400,
		38.059059, 26.399357, 48.965820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657444, 26.095434, 48.431946>,  <38.700325, 26.673893, 48.907440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657444, 26.095434, 48.431946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.275505, 26.191820, 48.501469>,  <38.046341, 26.249651, 48.543182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.275505, 26.191820, 48.501469>,  <38.657444, 26.095434, 48.431946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275505, 26.191820, 48.501469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178960, 0.000523, -0.983856,
		-0.237167, -0.970533, 0.042624,
		-0.954843, 0.240966, 0.173811,
		37.989052, 26.264111, 48.553612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238976, 25.590553, 48.058731>,  <38.657444, 26.095434, 48.431946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238976, 25.590553, 48.058731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.007355, 25.909609, 48.126236>,  <37.868382, 26.101042, 48.166737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.007355, 25.909609, 48.126236>,  <38.238976, 25.590553, 48.058731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007355, 25.909609, 48.126236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303152, -0.018494, -0.952763,
		-0.756837, -0.602854, 0.252515,
		-0.579047, 0.797637, 0.168759,
		37.833641, 26.148899, 48.176865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705120, 25.550287, 47.573624>,  <38.238976, 25.590553, 48.058731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705120, 25.550287, 47.573624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699467, 25.933939, 47.686668>,  <37.696075, 26.164129, 47.754498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699467, 25.933939, 47.686668>,  <37.705120, 25.550287, 47.573624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699467, 25.933939, 47.686668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137609, 0.278089, -0.950647,
		-0.990386, -0.052325, 0.128055,
		-0.014132, 0.959129, 0.282616,
		37.695229, 26.221678, 47.771454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144054, 25.734612, 47.088020>,  <37.705120, 25.550287, 47.573624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144054, 25.734612, 47.088020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.311272, 26.060774, 47.248196>,  <37.411602, 26.256472, 47.344303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.311272, 26.060774, 47.248196>,  <37.144054, 25.734612, 47.088020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311272, 26.060774, 47.248196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306077, 0.541462, -0.783029,
		-0.855312, 0.204773, 0.475931,
		0.418042, 0.815406, 0.400443,
		37.436684, 26.305395, 47.368328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597309, 26.251318, 46.991272>,  <37.144054, 25.734612, 47.088020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597309, 26.251318, 46.991272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.952049, 26.430176, 47.037849>,  <37.164894, 26.537491, 47.065796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.952049, 26.430176, 47.037849>,  <36.597309, 26.251318, 46.991272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952049, 26.430176, 47.037849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148299, 0.514123, -0.844798,
		-0.437611, 0.731942, 0.522262,
		0.886851, 0.447144, 0.116440,
		37.218105, 26.564320, 47.072781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283737, 26.738087, 47.426174>,  <36.597309, 26.251318, 46.991272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283737, 26.738087, 47.426174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.940308, 26.936062, 47.479675>,  <35.734249, 27.054848, 47.511776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.940308, 26.936062, 47.479675>,  <36.283737, 26.738087, 47.426174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940308, 26.936062, 47.479675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019706, -0.292541, 0.956050,
		0.512314, 0.818202, 0.260921,
		-0.858572, 0.494940, 0.133749,
		35.682735, 27.084543, 47.519798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290051, 27.065996, 48.139206>,  <36.283737, 26.738087, 47.426174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290051, 27.065996, 48.139206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.898872, 27.094976, 48.060852>,  <35.664165, 27.112366, 48.013840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.898872, 27.094976, 48.060852>,  <36.290051, 27.065996, 48.139206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898872, 27.094976, 48.060852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208675, -0.299741, 0.930919,
		0.008732, 0.951266, 0.308249,
		-0.977946, 0.072452, -0.195888,
		35.605488, 27.116713, 48.002087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986755, 27.498901, 48.574158>,  <36.290051, 27.065996, 48.139206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986755, 27.498901, 48.574158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.673939, 27.279760, 48.455315>,  <35.486248, 27.148275, 48.384010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.673939, 27.279760, 48.455315>,  <35.986755, 27.498901, 48.574158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673939, 27.279760, 48.455315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234198, -0.183451, 0.954724,
		-0.577555, 0.816211, 0.015159,
		-0.782037, -0.547855, -0.297108,
		35.439327, 27.115404, 48.366180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394218, 27.687876, 48.891056>,  <35.986755, 27.498901, 48.574158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394218, 27.687876, 48.891056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.297199, 27.314816, 48.784218>,  <35.238987, 27.090981, 48.720116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.297199, 27.314816, 48.784218>,  <35.394218, 27.687876, 48.891056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297199, 27.314816, 48.784218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218011, -0.215873, 0.951772,
		-0.945327, 0.289077, -0.150969,
		-0.242545, -0.932649, -0.267093,
		35.224434, 27.035021, 48.704090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731487, 27.561598, 49.210045>,  <35.394218, 27.687876, 48.891056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731487, 27.561598, 49.210045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.829617, 27.189905, 49.099518>,  <34.888493, 26.966890, 49.033203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.829617, 27.189905, 49.099518>,  <34.731487, 27.561598, 49.210045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829617, 27.189905, 49.099518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263041, -0.338133, 0.903590,
		-0.933074, -0.148988, -0.327377,
		0.245321, -0.929230, -0.276313,
		34.903214, 26.911137, 49.016624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125000, 27.186485, 49.369244>,  <34.731487, 27.561598, 49.210045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125000, 27.186485, 49.369244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.435936, 26.935064, 49.358982>,  <34.622498, 26.784212, 49.352825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.435936, 26.935064, 49.358982>,  <34.125000, 27.186485, 49.369244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435936, 26.935064, 49.358982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223490, -0.314048, 0.922728,
		-0.588041, -0.711542, -0.384598,
		0.777342, -0.628556, -0.025651,
		34.669140, 26.746498, 49.351288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856609, 26.544506, 49.561356>,  <34.125000, 27.186485, 49.369244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856609, 26.544506, 49.561356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.251823, 26.514898, 49.615486>,  <34.488953, 26.497133, 49.647964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.251823, 26.514898, 49.615486>,  <33.856609, 26.544506, 49.561356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251823, 26.514898, 49.615486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152415, -0.333811, 0.930236,
		-0.023683, -0.939729, -0.341098,
		0.988033, -0.074019, 0.135323,
		34.548233, 26.492693, 49.656082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818523, 25.924486, 49.740852>,  <33.856609, 26.544506, 49.561356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818523, 25.924486, 49.740852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.173950, 26.070400, 49.852119>,  <34.387207, 26.157949, 49.918880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.173950, 26.070400, 49.852119>,  <33.818523, 25.924486, 49.740852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173950, 26.070400, 49.852119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086310, -0.462595, 0.882359,
		0.450551, -0.808045, -0.379562,
		0.888569, 0.364788, 0.278165,
		34.440521, 26.179836, 49.935570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280640, 25.379246, 49.958553>,  <33.818523, 25.924486, 49.740852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280640, 25.379246, 49.958553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.423107, 25.715324, 50.122120>,  <34.508587, 25.916971, 50.220261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.423107, 25.715324, 50.122120>,  <34.280640, 25.379246, 49.958553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423107, 25.715324, 50.122120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043843, -0.452161, 0.890858,
		0.933392, -0.299370, -0.197884,
		0.356171, 0.840195, 0.408918,
		34.529957, 25.967382, 50.244797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831638, 25.146101, 50.521168>,  <34.280640, 25.379246, 49.958553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831638, 25.146101, 50.521168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.750576, 25.529587, 50.600967>,  <34.701939, 25.759678, 50.648846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.750576, 25.529587, 50.600967>,  <34.831638, 25.146101, 50.521168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750576, 25.529587, 50.600967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097157, -0.183032, 0.978294,
		0.974419, 0.217638, -0.056053,
		-0.202655, 0.958714, 0.199495,
		34.689781, 25.817202, 50.660816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253983, 25.263178, 51.050304>,  <34.831638, 25.146101, 50.521168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253983, 25.263178, 51.050304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.969780, 25.543159, 51.079266>,  <34.799259, 25.711149, 51.096642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.969780, 25.543159, 51.079266>,  <35.253983, 25.263178, 51.050304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969780, 25.543159, 51.079266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131502, -0.233150, 0.963508,
		0.691292, 0.675060, 0.257700,
		-0.710509, 0.699954, 0.072403,
		34.756626, 25.753145, 51.100986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398621, 25.582291, 51.754955>,  <35.253983, 25.263178, 51.050304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398621, 25.582291, 51.754955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021114, 25.682186, 51.668304>,  <34.794609, 25.742123, 51.616314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021114, 25.682186, 51.668304>,  <35.398621, 25.582291, 51.754955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021114, 25.682186, 51.668304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262949, -0.169856, 0.949740,
		0.200391, 0.953299, 0.225973,
		-0.943770, 0.249738, -0.216631,
		34.737984, 25.757107, 51.603313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152740, 26.170086, 52.210159>,  <35.398621, 25.582291, 51.754955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152740, 26.170086, 52.210159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.833328, 25.958231, 52.095726>,  <34.641682, 25.831118, 52.027065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.833328, 25.958231, 52.095726>,  <35.152740, 26.170086, 52.210159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833328, 25.958231, 52.095726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244688, -0.148625, 0.958143,
		-0.549986, 0.835103, -0.010914,
		-0.798526, -0.529636, -0.286081,
		34.593769, 25.799341, 52.009903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767353, 26.470015, 52.682293>,  <35.152740, 26.170086, 52.210159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767353, 26.470015, 52.682293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.600918, 26.137037, 52.535919>,  <34.501057, 25.937250, 52.448097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.600918, 26.137037, 52.535919>,  <34.767353, 26.470015, 52.682293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600918, 26.137037, 52.535919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223751, -0.296320, 0.928510,
		-0.881365, 0.468221, -0.062964,
		-0.416090, -0.832444, -0.365931,
		34.476089, 25.887304, 52.426140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304653, 26.975132, 52.629757>,  <34.767353, 26.470015, 52.682293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304653, 26.975132, 52.629757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258614, 27.232630, 52.932369>,  <34.230991, 27.387129, 53.113937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258614, 27.232630, 52.932369>,  <34.304653, 26.975132, 52.629757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258614, 27.232630, 52.932369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626335, 0.544097, -0.558268,
		-0.771011, -0.538099, 0.340576,
		-0.115097, 0.643745, 0.756534,
		34.224083, 27.425753, 53.159328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549320, 27.159334, 52.664764>,  <34.304653, 26.975132, 52.629757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549320, 27.159334, 52.664764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.764671, 27.451712, 52.832516>,  <33.893883, 27.627138, 52.933167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.764671, 27.451712, 52.832516>,  <33.549320, 27.159334, 52.664764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764671, 27.451712, 52.832516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551872, 0.681906, -0.480043,
		-0.636859, 0.027001, 0.770508,
		0.538375, 0.730942, 0.419376,
		33.926186, 27.670994, 52.958328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045364, 27.638754, 52.952862>,  <33.549320, 27.159334, 52.664764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045364, 27.638754, 52.952862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.386852, 27.841530, 52.905247>,  <33.591747, 27.963196, 52.876678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.386852, 27.841530, 52.905247>,  <33.045364, 27.638754, 52.952862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386852, 27.841530, 52.905247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458049, 0.622344, -0.634728,
		-0.247688, 0.596406, 0.763512,
		0.853722, 0.506941, -0.119035,
		33.642967, 27.993612, 52.869537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891048, 28.390247, 53.167641>,  <33.045364, 27.638754, 52.952862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891048, 28.390247, 53.167641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.203159, 28.380991, 52.917637>,  <33.390427, 28.375437, 52.767635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.203159, 28.380991, 52.917637>,  <32.891048, 28.390247, 53.167641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203159, 28.380991, 52.917637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394829, 0.756797, -0.520931,
		0.485058, 0.653241, 0.581373,
		0.780275, -0.023139, -0.625008,
		33.437241, 28.374050, 52.730133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042503, 29.079962, 53.022564>,  <32.891048, 28.390247, 53.167641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042503, 29.079962, 53.022564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245579, 28.892614, 52.733322>,  <33.367424, 28.780205, 52.559776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245579, 28.892614, 52.733322>,  <33.042503, 29.079962, 53.022564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245579, 28.892614, 52.733322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123636, 0.791021, -0.599166,
		0.852621, 0.393593, 0.343688,
		0.507692, -0.468369, -0.723104,
		33.397884, 28.752104, 52.516392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571560, 29.549265, 52.824703>,  <33.042503, 29.079962, 53.022564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571560, 29.549265, 52.824703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.509315, 29.304777, 52.514297>,  <33.471970, 29.158085, 52.328056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.509315, 29.304777, 52.514297>,  <33.571560, 29.549265, 52.824703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509315, 29.304777, 52.514297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025737, 0.782806, -0.621733,
		0.987483, -0.116719, -0.106081,
		-0.155609, -0.611221, -0.776012,
		33.462631, 29.121410, 52.281494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082485, 29.728037, 52.383842>,  <33.571560, 29.549265, 52.824703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082485, 29.728037, 52.383842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810070, 29.559057, 52.144600>,  <33.646622, 29.457670, 52.001053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810070, 29.559057, 52.144600>,  <34.082485, 29.728037, 52.383842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810070, 29.559057, 52.144600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090164, 0.762209, -0.641021,
		0.726678, -0.490486, -0.481002,
		-0.681035, -0.422446, -0.598105,
		33.605759, 29.432323, 51.965168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802074, 29.930260, 52.203583>,  <34.082485, 29.728037, 52.383842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802074, 29.930260, 52.203583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.816429, 30.242743, 52.452881>,  <34.825043, 30.430231, 52.602459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.816429, 30.242743, 52.452881>,  <34.802074, 29.930260, 52.203583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816429, 30.242743, 52.452881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471848, -0.562997, 0.678523,
		0.880949, 0.269728, -0.388812,
		0.035883, 0.781205, 0.623243,
		34.827194, 30.477104, 52.639854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498524, 29.861231, 52.501621>,  <34.802074, 29.930260, 52.203583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498524, 29.861231, 52.501621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.284298, 30.092638, 52.747704>,  <35.155762, 30.231483, 52.895355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.284298, 30.092638, 52.747704>,  <35.498524, 29.861231, 52.501621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284298, 30.092638, 52.747704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564946, -0.296036, 0.770194,
		0.627696, 0.760051, -0.168284,
		-0.535569, 0.578520, 0.615208,
		35.123627, 30.266193, 52.932266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002159, 30.369423, 52.989017>,  <35.498524, 29.861231, 52.501621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002159, 30.369423, 52.989017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649166, 30.333220, 53.173641>,  <35.437370, 30.311497, 53.284416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649166, 30.333220, 53.173641>,  <36.002159, 30.369423, 52.989017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649166, 30.333220, 53.173641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466052, -0.300595, 0.832129,
		0.063426, 0.949448, 0.307452,
		-0.882481, -0.090510, 0.461558,
		35.384422, 30.306067, 53.312107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118847, 30.604877, 53.683369>,  <36.002159, 30.369423, 52.989017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118847, 30.604877, 53.683369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.766281, 30.422729, 53.733574>,  <35.554741, 30.313440, 53.763699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.766281, 30.422729, 53.733574>,  <36.118847, 30.604877, 53.683369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766281, 30.422729, 53.733574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305339, -0.346545, 0.886947,
		-0.360394, 0.820088, 0.444491,
		-0.881411, -0.455370, 0.125512,
		35.501858, 30.286118, 53.771229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120647, 30.619341, 54.395638>,  <36.118847, 30.604877, 53.683369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120647, 30.619341, 54.395638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.864769, 30.340540, 54.266037>,  <35.711243, 30.173260, 54.188278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.864769, 30.340540, 54.266037>,  <36.120647, 30.619341, 54.395638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864769, 30.340540, 54.266037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287772, -0.608054, 0.739904,
		-0.712724, 0.380077, 0.589548,
		-0.639697, -0.697002, -0.323999,
		35.672859, 30.131439, 54.168839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793446, 30.430746, 54.970509>,  <36.120647, 30.619341, 54.395638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793446, 30.430746, 54.970509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719635, 30.130323, 54.716938>,  <35.675350, 29.950069, 54.564796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719635, 30.130323, 54.716938>,  <35.793446, 30.430746, 54.970509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719635, 30.130323, 54.716938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101281, -0.656102, 0.747845,
		-0.977595, 0.073792, 0.197136,
		-0.184527, -0.751055, -0.633929,
		35.664276, 29.905006, 54.526760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227390, 29.997812, 55.232609>,  <35.793446, 30.430746, 54.970509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227390, 29.997812, 55.232609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.435425, 29.777517, 54.971474>,  <35.560246, 29.645340, 54.814793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.435425, 29.777517, 54.971474>,  <35.227390, 29.997812, 55.232609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435425, 29.777517, 54.971474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124235, -0.707439, 0.695770,
		-0.845028, -0.442968, -0.299511,
		0.520089, -0.550736, -0.652838,
		35.591450, 29.612297, 54.775623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910019, 29.345852, 55.192123>,  <35.227390, 29.997812, 55.232609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910019, 29.345852, 55.192123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.275505, 29.240561, 55.068298>,  <35.494797, 29.177385, 54.994003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.275505, 29.240561, 55.068298>,  <34.910019, 29.345852, 55.192123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275505, 29.240561, 55.068298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079847, -0.863270, 0.498387,
		-0.398426, -0.430667, -0.809804,
		0.913718, -0.263231, -0.309562,
		35.549622, 29.161591, 54.975430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839001, 28.672153, 55.094299>,  <34.910019, 29.345852, 55.192123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839001, 28.672153, 55.094299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234612, 28.731102, 55.090267>,  <35.471977, 28.766470, 55.087849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234612, 28.731102, 55.090267>,  <34.839001, 28.672153, 55.094299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234612, 28.731102, 55.090267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142892, -0.937228, 0.318095,
		0.037431, -0.316046, -0.948005,
		0.989030, 0.147369, -0.010079,
		35.531322, 28.775312, 55.087242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.764236, 37.667088, 41.452923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140427, 37.533524, 41.478249>,  <35.366142, 37.453384, 41.493443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140427, 37.533524, 41.478249>,  <34.764236, 37.667088, 41.452923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140427, 37.533524, 41.478249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126266, -0.170332, 0.977264,
		-0.315536, -0.927087, -0.202355,
		0.940475, -0.333912, 0.063313,
		35.422569, 37.433350, 41.497242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689953, 37.012581, 41.821079>,  <34.764236, 37.667088, 41.452923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689953, 37.012581, 41.821079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062424, 37.154404, 41.855030>,  <35.285904, 37.239498, 41.875401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062424, 37.154404, 41.855030>,  <34.689953, 37.012581, 41.821079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062424, 37.154404, 41.855030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023816, -0.291469, 0.956284,
		0.363796, -0.888445, -0.279852,
		0.931174, 0.354557, 0.084876,
		35.341778, 37.260773, 41.880493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098312, 36.410805, 42.051857>,  <34.689953, 37.012581, 41.821079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098312, 36.410805, 42.051857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250561, 36.762966, 42.165009>,  <35.341911, 36.974262, 42.232899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250561, 36.762966, 42.165009>,  <35.098312, 36.410805, 42.051857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250561, 36.762966, 42.165009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027567, -0.316568, 0.948169,
		0.924320, -0.353095, -0.144763,
		0.380621, 0.880402, 0.282877,
		35.364746, 37.027088, 42.249870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533051, 36.183151, 42.460407>,  <35.098312, 36.410805, 42.051857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533051, 36.183151, 42.460407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454906, 36.561020, 42.565800>,  <35.408020, 36.787743, 42.629036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454906, 36.561020, 42.565800>,  <35.533051, 36.183151, 42.460407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454906, 36.561020, 42.565800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010267, -0.266677, 0.963731,
		0.980677, 0.190984, 0.042400,
		-0.195364, 0.944674, 0.263485,
		35.396297, 36.844421, 42.644844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013783, 36.343781, 42.974792>,  <35.533051, 36.183151, 42.460407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013783, 36.343781, 42.974792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734947, 36.624207, 43.034904>,  <35.567646, 36.792461, 43.070972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734947, 36.624207, 43.034904>,  <36.013783, 36.343781, 42.974792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734947, 36.624207, 43.034904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022156, -0.188431, 0.981836,
		0.716644, 0.687755, 0.115820,
		-0.697087, 0.701061, 0.150276,
		35.525822, 36.834526, 43.079987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224712, 36.713902, 43.556454>,  <36.013783, 36.343781, 42.974792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224712, 36.713902, 43.556454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832577, 36.784122, 43.520409>,  <35.597298, 36.826256, 43.498783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832577, 36.784122, 43.520409>,  <36.224712, 36.713902, 43.556454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832577, 36.784122, 43.520409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149246, -0.360871, 0.920596,
		0.129096, 0.915943, 0.379976,
		-0.980337, 0.175555, -0.090114,
		35.538475, 36.836788, 43.493374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039688, 37.001019, 44.233624>,  <36.224712, 36.713902, 43.556454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039688, 37.001019, 44.233624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698280, 36.859821, 44.080318>,  <35.493435, 36.775105, 43.988335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698280, 36.859821, 44.080318>,  <36.039688, 37.001019, 44.233624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698280, 36.859821, 44.080318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264423, -0.340365, 0.902348,
		-0.448973, 0.871520, 0.197170,
		-0.853524, -0.352994, -0.383265,
		35.442223, 36.753922, 43.965340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571613, 37.071590, 44.764282>,  <36.039688, 37.001019, 44.233624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571613, 37.071590, 44.764282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374886, 36.806259, 44.538677>,  <35.256847, 36.647060, 44.403313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374886, 36.806259, 44.538677>,  <35.571613, 37.071590, 44.764282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374886, 36.806259, 44.538677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386027, -0.414510, 0.824114,
		-0.780446, 0.623040, -0.052198,
		-0.491820, -0.663327, -0.564013,
		35.227341, 36.607262, 44.369473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882660, 37.129642, 45.010941>,  <35.571613, 37.071590, 44.764282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882660, 37.129642, 45.010941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891285, 36.773933, 44.828194>,  <34.896461, 36.560509, 44.718544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891285, 36.773933, 44.828194>,  <34.882660, 37.129642, 45.010941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891285, 36.773933, 44.828194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425861, -0.421613, 0.800553,
		-0.904531, 0.177299, -0.387799,
		0.021564, -0.889274, -0.456867,
		34.897755, 36.507153, 44.691135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227539, 36.888298, 45.250027>,  <34.882660, 37.129642, 45.010941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227539, 36.888298, 45.250027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452843, 36.585468, 45.117619>,  <34.588024, 36.403770, 45.038174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452843, 36.585468, 45.117619>,  <34.227539, 36.888298, 45.250027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452843, 36.585468, 45.117619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248586, -0.537322, 0.805910,
		-0.787998, -0.371651, -0.490851,
		0.563262, -0.757074, -0.331021,
		34.621822, 36.358345, 45.018311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736649, 36.201820, 45.300678>,  <34.227539, 36.888298, 45.250027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736649, 36.201820, 45.300678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114929, 36.077801, 45.261631>,  <34.341896, 36.003391, 45.238205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114929, 36.077801, 45.261631>,  <33.736649, 36.201820, 45.300678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114929, 36.077801, 45.261631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046168, -0.425390, 0.903832,
		-0.321752, -0.850245, -0.416604,
		0.945698, -0.310044, -0.097616,
		34.398640, 35.984787, 45.232346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628658, 35.493492, 45.389191>,  <33.736649, 36.201820, 45.300678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628658, 35.493492, 45.389191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999416, 35.588913, 45.505085>,  <34.221870, 35.646168, 45.574623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999416, 35.588913, 45.505085>,  <33.628658, 35.493492, 45.389191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999416, 35.588913, 45.505085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118959, -0.545450, 0.829658,
		0.355958, -0.803477, -0.477199,
		0.926899, 0.238557, 0.289738,
		34.277485, 35.660480, 45.592007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297886, 34.965942, 44.925591>,  <33.628658, 35.493492, 45.389191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297886, 34.965942, 44.925591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908485, 34.875984, 44.942162>,  <32.674847, 34.822010, 44.952103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908485, 34.875984, 44.942162>,  <33.297886, 34.965942, 44.925591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908485, 34.875984, 44.942162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149390, 0.488280, -0.859805,
		0.173139, -0.843211, -0.508939,
		-0.973501, -0.224896, 0.041427,
		32.616436, 34.808514, 44.954590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137356, 34.680931, 44.158352>,  <33.297886, 34.965942, 44.925591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137356, 34.680931, 44.158352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801674, 34.816204, 44.328705>,  <32.600266, 34.897366, 44.430916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801674, 34.816204, 44.328705>,  <33.137356, 34.680931, 44.158352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801674, 34.816204, 44.328705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340887, 0.283056, -0.896480,
		-0.423721, -0.897504, -0.122259,
		-0.839200, 0.338180, 0.425884,
		32.549915, 34.917660, 44.456470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593388, 34.257618, 43.773293>,  <33.137356, 34.680931, 44.158352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593388, 34.257618, 43.773293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400543, 34.574139, 43.923714>,  <32.284836, 34.764050, 44.013966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400543, 34.574139, 43.923714>,  <32.593388, 34.257618, 43.773293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400543, 34.574139, 43.923714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355404, 0.215682, -0.909489,
		-0.800785, -0.572125, 0.177248,
		-0.482112, 0.791299, 0.376051,
		32.255909, 34.811527, 44.036530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981579, 34.242344, 43.324493>,  <32.593388, 34.257618, 43.773293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981579, 34.242344, 43.324493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009560, 34.597157, 43.507050>,  <32.026348, 34.810043, 43.616581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009560, 34.597157, 43.507050>,  <31.981579, 34.242344, 43.324493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009560, 34.597157, 43.507050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562924, 0.412803, -0.716038,
		-0.823543, -0.206825, 0.528205,
		0.069950, 0.887027, 0.456388,
		32.030544, 34.863266, 43.643967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273781, 34.461773, 43.382133>,  <31.981579, 34.242344, 43.324493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273781, 34.461773, 43.382133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512106, 34.782913, 43.373783>,  <31.655102, 34.975597, 43.368771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512106, 34.782913, 43.373783>,  <31.273781, 34.461773, 43.382133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512106, 34.782913, 43.373783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457885, 0.318217, -0.830108,
		-0.659809, 0.504150, 0.557212,
		0.595813, 0.802852, -0.020880,
		31.690849, 35.023769, 43.367519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869436, 34.930359, 43.284817>,  <31.273781, 34.461773, 43.382133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869436, 34.930359, 43.284817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216173, 35.097275, 43.175674>,  <31.424215, 35.197426, 43.110188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216173, 35.097275, 43.175674>,  <30.869436, 34.930359, 43.284817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216173, 35.097275, 43.175674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412709, 0.293486, -0.862286,
		-0.279745, 0.860077, 0.426627,
		0.866841, 0.417293, -0.272860,
		31.476225, 35.222462, 43.093815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648314, 35.521759, 43.077938>,  <30.869436, 34.930359, 43.284817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648314, 35.521759, 43.077938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014881, 35.476589, 42.924355>,  <31.234821, 35.449486, 42.832203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014881, 35.476589, 42.924355>,  <30.648314, 35.521759, 43.077938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014881, 35.476589, 42.924355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319525, 0.371264, -0.871818,
		0.240999, 0.921635, 0.304152,
		0.916419, -0.112923, -0.383960,
		31.289806, 35.442711, 42.809166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892645, 36.198586, 42.753628>,  <30.648314, 35.521759, 43.077938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892645, 36.198586, 42.753628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086834, 35.898083, 42.574772>,  <31.203346, 35.717781, 42.467457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086834, 35.898083, 42.574772>,  <30.892645, 36.198586, 42.753628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086834, 35.898083, 42.574772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354285, 0.298522, -0.886209,
		0.799250, 0.588645, -0.121233,
		0.485471, -0.751253, -0.447142,
		31.232475, 35.672707, 42.440628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171236, 36.470482, 42.205185>,  <30.892645, 36.198586, 42.753628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171236, 36.470482, 42.205185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204460, 36.080585, 42.122265>,  <31.224394, 35.846645, 42.072514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204460, 36.080585, 42.122265>,  <31.171236, 36.470482, 42.205185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204460, 36.080585, 42.122265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292028, 0.175078, -0.940249,
		0.952797, 0.138633, -0.270111,
		0.083059, -0.974746, -0.207298,
		31.229378, 35.788162, 42.060074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591694, 36.407593, 41.590435>,  <31.171236, 36.470482, 42.205185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591694, 36.407593, 41.590435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404163, 36.054535, 41.603920>,  <31.291645, 35.842701, 41.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404163, 36.054535, 41.603920>,  <31.591694, 36.407593, 41.590435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404163, 36.054535, 41.603920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121116, 0.026428, -0.992287,
		0.874946, -0.469296, -0.119293,
		-0.468829, -0.882646, 0.033716,
		31.263515, 35.789742, 41.614037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767929, 36.078274, 41.024902>,  <31.591694, 36.407593, 41.590435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767929, 36.078274, 41.024902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447611, 35.861828, 41.127598>,  <31.255419, 35.731960, 41.189217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447611, 35.861828, 41.127598>,  <31.767929, 36.078274, 41.024902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447611, 35.861828, 41.127598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168667, -0.207571, -0.963569,
		0.574696, -0.814927, 0.074953,
		-0.800797, -0.541117, 0.256742,
		31.207371, 35.699493, 41.204620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823702, 35.443714, 40.633625>,  <31.767929, 36.078274, 41.024902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823702, 35.443714, 40.633625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450294, 35.480083, 40.772350>,  <31.226250, 35.501904, 40.855587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450294, 35.480083, 40.772350>,  <31.823702, 35.443714, 40.633625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450294, 35.480083, 40.772350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348343, -0.458980, -0.817309,
		0.084872, -0.883782, 0.460137,
		-0.933517, 0.090919, 0.346814,
		31.170238, 35.507359, 40.876396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528074, 34.721596, 40.662018>,  <31.823702, 35.443714, 40.633625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528074, 34.721596, 40.662018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222929, 34.977409, 40.623993>,  <31.039843, 35.130898, 40.601177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222929, 34.977409, 40.623993>,  <31.528074, 34.721596, 40.662018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222929, 34.977409, 40.623993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325050, -0.506453, -0.798654,
		-0.558915, -0.578359, 0.594234,
		-0.762861, 0.639536, -0.095068,
		30.994070, 35.169270, 40.595474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989397, 34.302158, 40.483421>,  <31.528074, 34.721596, 40.662018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989397, 34.302158, 40.483421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867558, 34.668282, 40.378029>,  <30.794453, 34.887955, 40.314793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867558, 34.668282, 40.378029>,  <30.989397, 34.302158, 40.483421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867558, 34.668282, 40.378029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212780, -0.335028, -0.917868,
		-0.928409, -0.223519, 0.296810,
		-0.304600, 0.915312, -0.263482,
		30.776178, 34.942875, 40.298985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450823, 34.096020, 39.977146>,  <30.989397, 34.302158, 40.483421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450823, 34.096020, 39.977146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586075, 34.471558, 39.951118>,  <30.667227, 34.696880, 39.935501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586075, 34.471558, 39.951118>,  <30.450823, 34.096020, 39.977146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586075, 34.471558, 39.951118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090214, -0.036485, -0.995254,
		-0.936765, 0.342397, 0.072360,
		0.338132, 0.938846, -0.065067,
		30.687515, 34.753212, 39.931599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904259, 33.408932, 40.078518>,  <30.450823, 34.096020, 39.977146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904259, 33.408932, 40.078518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756615, 33.056995, 39.958763>,  <30.668028, 32.845833, 39.886909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756615, 33.056995, 39.958763>,  <30.904259, 33.408932, 40.078518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756615, 33.056995, 39.958763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619941, -0.473083, 0.625992,
		-0.692411, 0.045456, 0.720070,
		-0.369108, -0.879844, -0.299388,
		30.645882, 32.793041, 39.868946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980902, 33.133183, 40.689957>,  <30.904259, 33.408932, 40.078518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980902, 33.133183, 40.689957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965656, 32.769848, 40.523354>,  <30.956509, 32.551849, 40.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965656, 32.769848, 40.523354>,  <30.980902, 33.133183, 40.689957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965656, 32.769848, 40.523354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682158, -0.328228, 0.653396,
		-0.730211, -0.259219, 0.632137,
		-0.038112, -0.908335, -0.416504,
		30.954222, 32.497349, 40.398403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780849, 32.610432, 41.105309>,  <30.980902, 33.133183, 40.689957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780849, 32.610432, 41.105309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042004, 32.486301, 40.828922>,  <31.198696, 32.411823, 40.663090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042004, 32.486301, 40.828922>,  <30.780849, 32.610432, 41.105309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042004, 32.486301, 40.828922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601266, -0.342469, 0.721938,
		-0.460671, -0.886799, -0.037005,
		0.652887, -0.310326, -0.690968,
		31.237869, 32.393204, 40.621632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878933, 31.846056, 41.143005>,  <30.780849, 32.610432, 41.105309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878933, 31.846056, 41.143005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188272, 32.053852, 40.997643>,  <31.373877, 32.178532, 40.910427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188272, 32.053852, 40.997643>,  <30.878933, 31.846056, 41.143005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188272, 32.053852, 40.997643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583606, -0.359416, 0.728165,
		0.247663, -0.775209, -0.581132,
		0.773348, 0.519492, -0.363403,
		31.420277, 32.209698, 40.888622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371986, 31.390099, 41.024448>,  <30.878933, 31.846056, 41.143005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371986, 31.390099, 41.024448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572269, 31.735683, 41.045822>,  <31.692440, 31.943035, 41.058647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572269, 31.735683, 41.045822>,  <31.371986, 31.390099, 41.024448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572269, 31.735683, 41.045822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592457, -0.387052, 0.706531,
		0.631098, -0.322112, -0.705663,
		0.500710, 0.863965, 0.053430,
		31.722483, 31.994873, 41.061852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208241, 31.295681, 40.903870>,  <31.371986, 31.390099, 41.024448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208241, 31.295681, 40.903870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122795, 31.617863, 41.125000>,  <32.071526, 31.811171, 41.257679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122795, 31.617863, 41.125000>,  <32.208241, 31.295681, 40.903870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122795, 31.617863, 41.125000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545144, -0.371304, 0.751633,
		0.810670, 0.461930, -0.359770,
		-0.213618, 0.805452, 0.552823,
		32.058708, 31.859499, 41.290848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860569, 31.377485, 41.220348>,  <32.208241, 31.295681, 40.903870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860569, 31.377485, 41.220348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579922, 31.578684, 41.422230>,  <32.411533, 31.699402, 41.543358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579922, 31.578684, 41.422230>,  <32.860569, 31.377485, 41.220348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579922, 31.578684, 41.422230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433973, -0.260136, 0.862552,
		0.565151, 0.824212, -0.035769,
		-0.701621, 0.502995, 0.504702,
		32.369434, 31.729582, 41.573639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307068, 31.555933, 41.714287>,  <32.860569, 31.377485, 41.220348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307068, 31.555933, 41.714287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930912, 31.599995, 41.842999>,  <32.705219, 31.626432, 41.920223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930912, 31.599995, 41.842999>,  <33.307068, 31.555933, 41.714287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930912, 31.599995, 41.842999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277363, -0.299158, 0.913003,
		0.196834, 0.947824, 0.250771,
		-0.940386, 0.110156, 0.321776,
		32.648796, 31.633041, 41.939533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393112, 31.914846, 42.314785>,  <33.307068, 31.555933, 41.714287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393112, 31.914846, 42.314785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031246, 31.745935, 42.337631>,  <32.814125, 31.644588, 42.351341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031246, 31.745935, 42.337631>,  <33.393112, 31.914846, 42.314785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031246, 31.745935, 42.337631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238302, -0.390228, 0.889345,
		-0.353263, 0.818170, 0.453655,
		-0.904664, -0.422280, 0.057118,
		32.759846, 31.619251, 42.354767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173576, 32.144894, 42.958210>,  <33.393112, 31.914846, 42.314785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173576, 32.144894, 42.958210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989742, 31.813253, 42.830853>,  <32.879440, 31.614271, 42.754436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989742, 31.813253, 42.830853>,  <33.173576, 32.144894, 42.958210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989742, 31.813253, 42.830853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182509, -0.439019, 0.879746,
		-0.869176, 0.346212, 0.353086,
		-0.459590, -0.829096, -0.318398,
		32.851864, 31.564524, 42.735332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784729, 31.878170, 43.510212>,  <33.173576, 32.144894, 42.958210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784729, 31.878170, 43.510212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809971, 31.547861, 43.286026>,  <32.825115, 31.349676, 43.151516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809971, 31.547861, 43.286026>,  <32.784729, 31.878170, 43.510212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809971, 31.547861, 43.286026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404938, -0.492092, 0.770630,
		-0.912163, -0.275587, 0.303331,
		0.063108, -0.825771, -0.560464,
		32.828903, 31.300129, 43.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516365, 31.324860, 44.015411>,  <32.784729, 31.878170, 43.510212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516365, 31.324860, 44.015411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710873, 31.132204, 43.723778>,  <32.827576, 31.016611, 43.548798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710873, 31.132204, 43.723778>,  <32.516365, 31.324860, 44.015411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710873, 31.132204, 43.723778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374386, -0.639075, 0.671876,
		-0.789542, -0.599673, -0.130444,
		0.486270, -0.481638, -0.729086,
		32.856754, 30.987713, 43.505051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286274, 30.650053, 44.116699>,  <32.516365, 31.324860, 44.015411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286274, 30.650053, 44.116699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633717, 30.653921, 43.918533>,  <32.842182, 30.656242, 43.799633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633717, 30.653921, 43.918533>,  <32.286274, 30.650053, 44.116699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633717, 30.653921, 43.918533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381623, -0.650779, 0.656392,
		-0.316058, -0.759206, -0.568959,
		0.868603, 0.009670, -0.495414,
		32.894299, 30.656822, 43.769909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526543, 30.032272, 44.173416>,  <32.286274, 30.650053, 44.116699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526543, 30.032272, 44.173416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864296, 30.203825, 44.044998>,  <33.066948, 30.306757, 43.967945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864296, 30.203825, 44.044998>,  <32.526543, 30.032272, 44.173416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864296, 30.203825, 44.044998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521148, -0.518686, 0.677768,
		0.124157, -0.739612, -0.661482,
		0.844387, 0.428880, -0.321049,
		33.117611, 30.332489, 43.948685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012825, 29.553114, 44.302410>,  <32.526543, 30.032272, 44.173416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012825, 29.553114, 44.302410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239136, 29.881063, 44.267303>,  <33.374920, 30.077833, 44.246239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239136, 29.881063, 44.267303>,  <33.012825, 29.553114, 44.302410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239136, 29.881063, 44.267303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621347, -0.353947, 0.699035,
		0.542059, -0.450027, -0.709682,
		0.565775, 0.819876, -0.087763,
		33.408867, 30.127026, 44.240974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687088, 29.303997, 44.094074>,  <33.012825, 29.553114, 44.302410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687088, 29.303997, 44.094074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710190, 29.658615, 44.277683>,  <33.724052, 29.871386, 44.387848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710190, 29.658615, 44.277683>,  <33.687088, 29.303997, 44.094074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710190, 29.658615, 44.277683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540770, -0.414280, 0.732079,
		0.839185, 0.205945, -0.503344,
		0.057757, 0.886543, 0.459026,
		33.727516, 29.924578, 44.415390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351109, 29.400373, 44.215000>,  <33.687088, 29.303997, 44.094074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351109, 29.400373, 44.215000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171021, 29.658987, 44.461349>,  <34.062969, 29.814156, 44.609158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171021, 29.658987, 44.461349>,  <34.351109, 29.400373, 44.215000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171021, 29.658987, 44.461349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615354, -0.275133, 0.738676,
		0.647025, 0.711544, -0.273977,
		-0.450220, 0.646534, 0.615869,
		34.035954, 29.852947, 44.646111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867561, 29.822599, 44.463531>,  <34.351109, 29.400373, 44.215000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867561, 29.822599, 44.463531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565876, 29.801428, 44.725327>,  <34.384865, 29.788725, 44.882404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565876, 29.801428, 44.725327>,  <34.867561, 29.822599, 44.463531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565876, 29.801428, 44.725327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629461, -0.342004, 0.697719,
		0.186909, 0.938207, 0.291261,
		-0.754217, -0.052928, 0.654488,
		34.339611, 29.785549, 44.921673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216702, 29.850428, 45.093521>,  <34.867561, 29.822599, 44.463531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216702, 29.850428, 45.093521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840805, 29.759647, 45.195793>,  <34.615265, 29.705179, 45.257156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840805, 29.759647, 45.195793>,  <35.216702, 29.850428, 45.093521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840805, 29.759647, 45.195793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340545, -0.555538, 0.758555,
		-0.030117, 0.799919, 0.599352,
		-0.939746, -0.226951, 0.255677,
		34.558880, 29.691563, 45.272495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153469, 30.014488, 45.815960>,  <35.216702, 29.850428, 45.093521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153469, 30.014488, 45.815960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907734, 29.718590, 45.706150>,  <34.760292, 29.541050, 45.640266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907734, 29.718590, 45.706150>,  <35.153469, 30.014488, 45.815960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907734, 29.718590, 45.706150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405810, -0.594597, 0.694098,
		-0.676686, 0.315009, 0.665482,
		-0.614341, -0.739746, -0.274521,
		34.723431, 29.496666, 45.623795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094910, 29.629810, 46.443577>,  <35.153469, 30.014488, 45.815960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094910, 29.629810, 46.443577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935822, 29.377613, 46.176952>,  <34.840370, 29.226295, 46.016979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935822, 29.377613, 46.176952>,  <35.094910, 29.629810, 46.443577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935822, 29.377613, 46.176952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359472, -0.775487, 0.519038,
		-0.844156, -0.033179, 0.535069,
		-0.397718, -0.630491, -0.666559,
		34.816505, 29.188465, 45.976986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751461, 29.148392, 46.906559>,  <35.094910, 29.629810, 46.443577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751461, 29.148392, 46.906559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785847, 28.971577, 46.549412>,  <34.806477, 28.865488, 46.335125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785847, 28.971577, 46.549412>,  <34.751461, 29.148392, 46.906559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785847, 28.971577, 46.549412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365320, -0.819780, 0.441024,
		-0.926904, -0.364095, 0.091013,
		0.085964, -0.442036, -0.892869,
		34.811638, 28.838966, 46.281551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341576, 28.540665, 46.894295>,  <34.751461, 29.148392, 46.906559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341576, 28.540665, 46.894295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630451, 28.507921, 46.619560>,  <34.803776, 28.488276, 46.454720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630451, 28.507921, 46.619560>,  <34.341576, 28.540665, 46.894295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630451, 28.507921, 46.619560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253737, -0.892398, 0.373154,
		-0.643480, -0.443762, -0.623705,
		0.722185, -0.081860, -0.686839,
		34.847107, 28.483362, 46.413509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274723, 27.915438, 46.678833>,  <34.341576, 28.540665, 46.894295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274723, 27.915438, 46.678833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645119, 28.025566, 46.575489>,  <34.867355, 28.091642, 46.513481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645119, 28.025566, 46.575489>,  <34.274723, 27.915438, 46.678833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645119, 28.025566, 46.575489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348393, -0.886798, 0.303664,
		-0.145509, -0.371200, -0.917081,
		0.925986, 0.275319, -0.258360,
		34.922913, 28.108162, 46.497982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621708, 27.327333, 46.366310>,  <34.274723, 27.915438, 46.678833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621708, 27.327333, 46.366310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912357, 27.572357, 46.490753>,  <35.086746, 27.719372, 46.565418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912357, 27.572357, 46.490753>,  <34.621708, 27.327333, 46.366310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912357, 27.572357, 46.490753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472835, -0.774398, 0.420399,
		0.498438, -0.158371, -0.852337,
		0.726627, 0.612558, 0.311106,
		35.130344, 27.756124, 46.584084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097427, 26.828625, 46.458652>,  <34.621708, 27.327333, 46.366310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097427, 26.828625, 46.458652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223701, 27.155102, 46.652218>,  <35.299465, 27.350988, 46.768356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223701, 27.155102, 46.652218>,  <35.097427, 26.828625, 46.458652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223701, 27.155102, 46.652218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468081, -0.577575, 0.668810,
		0.825375, 0.015379, -0.564375,
		0.315683, 0.816193, 0.483915,
		35.318405, 27.399960, 46.797394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801331, 26.683529, 46.701836>,  <35.097427, 26.828625, 46.458652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801331, 26.683529, 46.701836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666199, 26.990767, 46.919422>,  <35.585121, 27.175110, 47.049973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666199, 26.990767, 46.919422>,  <35.801331, 26.683529, 46.701836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666199, 26.990767, 46.919422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204790, -0.504112, 0.839006,
		0.918658, 0.394840, 0.013006,
		-0.337830, 0.768096, 0.543966,
		35.564850, 27.221195, 47.082611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503319, 26.879791, 46.623531>,  <35.801331, 26.683529, 46.701836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503319, 26.879791, 46.623531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902843, 26.862017, 46.631546>,  <37.142559, 26.851351, 46.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902843, 26.862017, 46.631546>,  <36.503319, 26.879791, 46.623531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902843, 26.862017, 46.631546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040284, 0.521004, -0.852603,
		0.027448, 0.852396, 0.522175,
		0.998811, -0.044438, 0.020038,
		37.202488, 26.848686, 46.637558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761433, 27.513546, 46.644768>,  <36.503319, 26.879791, 46.623531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761433, 27.513546, 46.644768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033001, 27.267139, 46.484974>,  <37.195942, 27.119295, 46.389099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033001, 27.267139, 46.484974>,  <36.761433, 27.513546, 46.644768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033001, 27.267139, 46.484974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111941, 0.450891, -0.885532,
		0.725624, 0.645928, 0.237164,
		0.678925, -0.616014, -0.399484,
		37.236679, 27.082335, 46.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129131, 27.977028, 46.192097>,  <36.761433, 27.513546, 46.644768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129131, 27.977028, 46.192097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252247, 27.619541, 46.061535>,  <37.326115, 27.405048, 45.983200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252247, 27.619541, 46.061535>,  <37.129131, 27.977028, 46.192097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252247, 27.619541, 46.061535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058809, 0.360267, -0.930994,
		0.949636, 0.267352, 0.163444,
		0.307786, -0.893717, -0.326400,
		37.344582, 27.351425, 45.963615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735783, 28.076368, 45.741772>,  <37.129131, 27.977028, 46.192097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735783, 28.076368, 45.741772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574703, 27.722467, 45.647923>,  <37.478058, 27.510126, 45.591614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574703, 27.722467, 45.647923>,  <37.735783, 28.076368, 45.741772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574703, 27.722467, 45.647923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062292, 0.282218, -0.957326,
		0.913212, -0.370895, -0.168762,
		-0.402695, -0.884754, -0.234621,
		37.453896, 27.457041, 45.577538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035622, 27.872118, 45.171806>,  <37.735783, 28.076368, 45.741772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035622, 27.872118, 45.171806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703514, 27.650278, 45.193989>,  <37.504250, 27.517174, 45.207298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703514, 27.650278, 45.193989>,  <38.035622, 27.872118, 45.171806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703514, 27.650278, 45.193989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184356, 0.179361, -0.966355,
		0.525994, -0.812557, -0.251161,
		-0.830267, -0.554600, 0.055457,
		37.454433, 27.483898, 45.210625>
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
