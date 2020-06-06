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
	<24.513742, 34.367424, 35.195469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.450129, 34.726158, 35.030350>,  <24.411961, 34.941399, 34.931278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.450129, 34.726158, 35.030350>,  <24.513742, 34.367424, 35.195469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.450129, 34.726158, 35.030350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851090, -0.087366, -0.517699,
		-0.500353, -0.433660, -0.749390,
		-0.159034, 0.896831, -0.412798,
		24.402418, 34.995209, 34.906509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567577, 34.237957, 34.547947>,  <24.513742, 34.367424, 35.195469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567577, 34.237957, 34.547947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683884, 34.614967, 34.613796>,  <24.753668, 34.841175, 34.653305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683884, 34.614967, 34.613796>,  <24.567577, 34.237957, 34.547947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.683884, 34.614967, 34.613796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832682, -0.164528, -0.528744,
		-0.471270, 0.290819, -0.832664,
		0.290765, 0.942526, 0.164623,
		24.771112, 34.897724, 34.663181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629501, 34.689327, 33.877384>,  <24.567577, 34.237957, 34.547947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629501, 34.689327, 33.877384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867630, 34.824715, 34.168873>,  <25.010508, 34.905949, 34.343765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867630, 34.824715, 34.168873>,  <24.629501, 34.689327, 33.877384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.867630, 34.824715, 34.168873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782337, -0.037458, -0.621728,
		-0.183140, 0.940232, -0.287096,
		0.595322, 0.338469, 0.728718,
		25.046227, 34.926254, 34.387489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.086130, 35.261555, 33.668865>,  <24.629501, 34.689327, 33.877384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.086130, 35.261555, 33.668865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267635, 35.042580, 33.950123>,  <25.376537, 34.911194, 34.118877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267635, 35.042580, 33.950123>,  <25.086130, 35.261555, 33.668865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267635, 35.042580, 33.950123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860837, 0.065320, -0.504671,
		0.230348, 0.834292, 0.500897,
		0.453761, -0.547440, 0.703143,
		25.403763, 34.878349, 34.161064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857433, 35.500637, 33.676151>,  <25.086130, 35.261555, 33.668865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857433, 35.500637, 33.676151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833063, 35.154121, 33.874474>,  <25.818441, 34.946213, 33.993465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833063, 35.154121, 33.874474>,  <25.857433, 35.500637, 33.676151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833063, 35.154121, 33.874474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846134, -0.308322, -0.434736,
		0.529477, 0.393032, 0.751784,
		-0.060926, -0.866293, 0.495807,
		25.814785, 34.894234, 34.023216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495487, 35.497963, 33.794235>,  <25.857433, 35.500637, 33.676151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495487, 35.497963, 33.794235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326271, 35.135956, 33.776478>,  <26.224741, 34.918751, 33.765823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326271, 35.135956, 33.776478>,  <26.495487, 35.497963, 33.794235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326271, 35.135956, 33.776478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674123, -0.281615, -0.682826,
		0.605469, -0.318793, 0.729231,
		-0.423043, -0.905022, -0.044396,
		26.199358, 34.864449, 33.763161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769175, 35.827980, 33.192768>,  <26.495487, 35.497963, 33.794235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769175, 35.827980, 33.192768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025799, 36.119186, 33.096115>,  <27.179773, 36.293911, 33.038124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025799, 36.119186, 33.096115>,  <26.769175, 35.827980, 33.192768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025799, 36.119186, 33.096115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037569, -0.344453, -0.938051,
		-0.766153, 0.592738, -0.248338,
		0.641560, 0.728020, -0.241635,
		27.218267, 36.337593, 33.023624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540991, 36.259468, 32.644054>,  <26.769175, 35.827980, 33.192768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540991, 36.259468, 32.644054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939739, 36.290398, 32.637512>,  <27.178989, 36.308956, 32.633587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939739, 36.290398, 32.637512>,  <26.540991, 36.259468, 32.644054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939739, 36.290398, 32.637512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017183, -0.414008, -0.910111,
		-0.077143, 0.906983, -0.414042,
		0.996872, 0.077323, -0.016354,
		27.238800, 36.313595, 32.632607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706661, 36.623272, 32.038090>,  <26.540991, 36.259468, 32.644054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706661, 36.623272, 32.038090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028639, 36.412231, 32.146687>,  <27.221827, 36.285606, 32.211845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028639, 36.412231, 32.146687>,  <26.706661, 36.623272, 32.038090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028639, 36.412231, 32.146687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175505, -0.225370, -0.958335,
		0.566799, 0.819055, -0.088815,
		0.804945, -0.527597, 0.271487,
		27.270123, 36.253952, 32.228134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213209, 36.875324, 31.591688>,  <26.706661, 36.623272, 32.038090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213209, 36.875324, 31.591688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351557, 36.520657, 31.714447>,  <27.434565, 36.307854, 31.788103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351557, 36.520657, 31.714447>,  <27.213209, 36.875324, 31.591688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351557, 36.520657, 31.714447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128457, -0.279259, -0.951584,
		0.929448, 0.368547, 0.017312,
		0.345869, -0.886672, 0.306899,
		27.455317, 36.254654, 31.806517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837078, 36.723167, 31.316784>,  <27.213209, 36.875324, 31.591688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837078, 36.723167, 31.316784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704905, 36.359539, 31.418297>,  <27.625601, 36.141361, 31.479204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704905, 36.359539, 31.418297>,  <27.837078, 36.723167, 31.316784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704905, 36.359539, 31.418297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370558, -0.372249, -0.850951,
		0.868044, -0.187144, 0.459867,
		-0.330435, -0.909070, 0.253781,
		27.605774, 36.086819, 31.494431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445700, 36.370617, 31.046474>,  <27.837078, 36.723167, 31.316784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445700, 36.370617, 31.046474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154247, 36.100941, 31.094736>,  <27.979376, 35.939133, 31.123693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154247, 36.100941, 31.094736>,  <28.445700, 36.370617, 31.046474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154247, 36.100941, 31.094736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273052, -0.447496, -0.851581,
		0.628122, -0.587545, 0.510150,
		-0.728632, -0.674194, 0.120652,
		27.935658, 35.898682, 31.130932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671137, 35.814262, 30.707571>,  <28.445700, 36.370617, 31.046474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671137, 35.814262, 30.707571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282732, 35.721771, 30.731794>,  <28.049688, 35.666279, 30.746328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282732, 35.721771, 30.731794>,  <28.671137, 35.814262, 30.707571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282732, 35.721771, 30.731794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055533, -0.464657, -0.883748,
		0.232484, -0.854768, 0.464029,
		-0.971014, -0.231226, 0.060557,
		27.991428, 35.652405, 30.749962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531624, 35.145584, 30.659662>,  <28.671137, 35.814262, 30.707571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531624, 35.145584, 30.659662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198059, 35.309784, 30.512108>,  <27.997919, 35.408306, 30.423576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198059, 35.309784, 30.512108>,  <28.531624, 35.145584, 30.659662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198059, 35.309784, 30.512108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089682, -0.558719, -0.824494,
		-0.544545, -0.720646, 0.429115,
		-0.833924, 0.410490, -0.368876,
		27.947886, 35.432934, 30.401442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139261, 34.425049, 30.305843>,  <28.531624, 35.145584, 30.659662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139261, 34.425049, 30.305843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972855, 34.763149, 30.171694>,  <27.873011, 34.966011, 30.091204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972855, 34.763149, 30.171694>,  <28.139261, 34.425049, 30.305843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972855, 34.763149, 30.171694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152550, -0.428444, -0.890598,
		-0.896471, -0.319341, 0.307183,
		-0.416015, 0.845256, -0.335373,
		27.848049, 35.016727, 30.071081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605782, 34.215088, 29.936642>,  <28.139261, 34.425049, 30.305843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605782, 34.215088, 29.936642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660028, 34.576584, 29.774231>,  <27.692577, 34.793484, 29.676785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660028, 34.576584, 29.774231>,  <27.605782, 34.215088, 29.936642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660028, 34.576584, 29.774231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169357, -0.382634, -0.908245,
		-0.976179, 0.191936, 0.101164,
		0.135617, 0.903743, -0.406025,
		27.700714, 34.847706, 29.652424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032248, 34.336308, 29.559914>,  <27.605782, 34.215088, 29.936642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032248, 34.336308, 29.559914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316336, 34.565151, 29.395826>,  <27.486788, 34.702457, 29.297375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316336, 34.565151, 29.395826>,  <27.032248, 34.336308, 29.559914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316336, 34.565151, 29.395826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177300, -0.418563, -0.890713,
		-0.681287, 0.705334, -0.195837,
		0.710220, 0.572109, -0.410217,
		27.529402, 34.736786, 29.272760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724865, 34.383434, 28.836609>,  <27.032248, 34.336308, 29.559914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724865, 34.383434, 28.836609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099934, 34.522442, 28.837103>,  <27.324974, 34.605846, 28.837399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099934, 34.522442, 28.837103>,  <26.724865, 34.383434, 28.836609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099934, 34.522442, 28.837103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056157, -0.148012, -0.987390,
		-0.342953, 0.925918, -0.158302,
		0.937672, 0.347518, 0.001235,
		27.381235, 34.626698, 28.837473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712189, 34.945877, 28.354240>,  <26.724865, 34.383434, 28.836609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712189, 34.945877, 28.354240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080879, 34.794060, 28.386179>,  <27.302094, 34.702969, 28.405342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080879, 34.794060, 28.386179>,  <26.712189, 34.945877, 28.354240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080879, 34.794060, 28.386179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000854, -0.207852, -0.978160,
		0.387846, 0.901525, -0.191906,
		0.921724, -0.379539, 0.079845,
		27.357397, 34.680199, 28.410131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100773, 35.236320, 27.781233>,  <26.712189, 34.945877, 28.354240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100773, 35.236320, 27.781233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297485, 34.906235, 27.892351>,  <27.415512, 34.708183, 27.959023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297485, 34.906235, 27.892351>,  <27.100773, 35.236320, 27.781233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297485, 34.906235, 27.892351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121294, -0.251003, -0.960357,
		0.862229, 0.505980, -0.023345,
		0.491781, -0.825216, 0.277795,
		27.445021, 34.658669, 27.975689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652130, 35.112041, 27.295286>,  <27.100773, 35.236320, 27.781233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652130, 35.112041, 27.295286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617779, 34.750278, 27.462460>,  <27.597168, 34.533222, 27.562763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617779, 34.750278, 27.462460>,  <27.652130, 35.112041, 27.295286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617779, 34.750278, 27.462460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147443, -0.426403, -0.892435,
		0.985335, -0.015019, 0.169968,
		-0.085878, -0.904409, 0.417935,
		27.592014, 34.478954, 27.587841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038343, 34.697197, 26.830404>,  <27.652130, 35.112041, 27.295286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038343, 34.697197, 26.830404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863127, 34.416740, 27.055445>,  <27.757998, 34.248466, 27.190470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863127, 34.416740, 27.055445>,  <28.038343, 34.697197, 26.830404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863127, 34.416740, 27.055445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083903, -0.654994, -0.750961,
		0.895031, -0.281747, 0.345742,
		-0.438040, -0.701143, 0.562601,
		27.731714, 34.206398, 27.224224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564384, 34.043217, 26.875338>,  <28.038343, 34.697197, 26.830404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564384, 34.043217, 26.875338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169756, 33.988045, 26.910324>,  <27.932980, 33.954941, 26.931316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169756, 33.988045, 26.910324>,  <28.564384, 34.043217, 26.875338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169756, 33.988045, 26.910324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032504, -0.690622, -0.722485,
		0.160062, -0.709940, 0.685832,
		-0.986572, -0.137935, 0.087466,
		27.873785, 33.946663, 26.936563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367962, 33.330059, 26.810270>,  <28.564384, 34.043217, 26.875338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367962, 33.330059, 26.810270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028400, 33.519726, 26.716866>,  <27.824663, 33.633526, 26.660822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028400, 33.519726, 26.716866>,  <28.367962, 33.330059, 26.810270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028400, 33.519726, 26.716866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029978, -0.484285, -0.874397,
		-0.527703, -0.735275, 0.425324,
		-0.848900, 0.474172, -0.233517,
		27.773729, 33.661976, 26.646811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819586, 32.826321, 26.633873>,  <28.367962, 33.330059, 26.810270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819586, 32.826321, 26.633873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741314, 33.170574, 26.445822>,  <27.694351, 33.377125, 26.332991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741314, 33.170574, 26.445822>,  <27.819586, 32.826321, 26.633873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741314, 33.170574, 26.445822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238947, -0.506790, -0.828293,
		-0.951112, -0.049745, 0.304814,
		-0.195680, 0.860633, -0.470128,
		27.682610, 33.428764, 26.304783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389675, 32.668667, 26.147606>,  <27.819586, 32.826321, 26.633873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389675, 32.668667, 26.147606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494780, 33.025463, 26.000471>,  <27.557842, 33.239540, 25.912189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494780, 33.025463, 26.000471>,  <27.389675, 32.668667, 26.147606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494780, 33.025463, 26.000471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068357, -0.363067, -0.929252,
		-0.962437, 0.269314, -0.034425,
		0.262759, 0.891993, -0.367839,
		27.573606, 33.293060, 25.890120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964891, 32.860970, 25.611654>,  <27.389675, 32.668667, 26.147606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964891, 32.860970, 25.611654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303917, 33.068714, 25.568022>,  <27.507332, 33.193359, 25.541842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303917, 33.068714, 25.568022>,  <26.964891, 32.860970, 25.611654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303917, 33.068714, 25.568022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141916, -0.419876, -0.896417,
		-0.511364, 0.744291, -0.429577,
		0.847565, 0.519359, -0.109083,
		27.558186, 33.224522, 25.535297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096045, 33.170097, 24.889732>,  <26.964891, 32.860970, 25.611654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096045, 33.170097, 24.889732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451960, 33.120010, 25.065277>,  <27.665508, 33.089958, 25.170605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451960, 33.120010, 25.065277>,  <27.096045, 33.170097, 24.889732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451960, 33.120010, 25.065277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401497, -0.242424, -0.883194,
		0.216979, 0.962056, -0.165433,
		0.889787, -0.125214, 0.438863,
		27.718895, 33.082447, 25.196936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740883, 33.709023, 24.732595>,  <27.096045, 33.170097, 24.889732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740883, 33.709023, 24.732595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892921, 33.359352, 24.853491>,  <27.984144, 33.149551, 24.926027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892921, 33.359352, 24.853491>,  <27.740883, 33.709023, 24.732595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892921, 33.359352, 24.853491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461672, -0.103844, -0.880951,
		0.801490, 0.474380, 0.364111,
		0.380095, -0.874174, 0.302238,
		28.006950, 33.097099, 24.944162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284353, 33.623203, 24.191496>,  <27.740883, 33.709023, 24.732595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284353, 33.623203, 24.191496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246658, 33.273548, 24.382076>,  <28.224041, 33.063755, 24.496426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246658, 33.273548, 24.382076>,  <28.284353, 33.623203, 24.191496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246658, 33.273548, 24.382076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307323, -0.480751, -0.821238,
		0.946928, 0.069034, 0.313946,
		-0.094236, -0.874135, 0.476452,
		28.218388, 33.011307, 24.525011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979263, 33.220284, 24.125568>,  <28.284353, 33.623203, 24.191496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979263, 33.220284, 24.125568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676931, 32.965336, 24.185539>,  <28.495533, 32.812366, 24.221521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676931, 32.965336, 24.185539>,  <28.979263, 33.220284, 24.125568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676931, 32.965336, 24.185539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289409, -0.530598, -0.796686,
		0.587336, -0.558769, 0.585503,
		-0.755830, -0.637372, 0.149927,
		28.450182, 32.774124, 24.230516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160744, 32.481026, 24.145729>,  <28.979263, 33.220284, 24.125568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160744, 32.481026, 24.145729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785250, 32.551090, 24.027006>,  <28.559954, 32.593128, 23.955772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785250, 32.551090, 24.027006>,  <29.160744, 32.481026, 24.145729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785250, 32.551090, 24.027006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197559, -0.432170, -0.879886,
		-0.282393, -0.884617, 0.371089,
		-0.938736, 0.175162, -0.296806,
		28.503630, 32.603638, 23.937963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884239, 31.902613, 23.736792>,  <29.160744, 32.481026, 24.145729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884239, 31.902613, 23.736792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690252, 32.227741, 23.607714>,  <28.573860, 32.422817, 23.530268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690252, 32.227741, 23.607714>,  <28.884239, 31.902613, 23.736792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690252, 32.227741, 23.607714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134078, -0.295521, -0.945881,
		-0.864193, -0.501987, 0.034337,
		-0.484967, 0.812820, -0.322693,
		28.544762, 32.471588, 23.510906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134811, 31.762989, 24.446447>,  <28.884239, 31.902613, 23.736792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134811, 31.762989, 24.446447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377268, 32.070839, 24.526718>,  <29.522741, 32.255550, 24.574881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377268, 32.070839, 24.526718>,  <29.134811, 31.762989, 24.446447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377268, 32.070839, 24.526718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386412, -0.505486, 0.771472,
		0.695183, -0.390077, -0.603788,
		0.606140, 0.769625, 0.200675,
		29.559111, 32.301727, 24.586920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682775, 31.434223, 24.604342>,  <29.134811, 31.762989, 24.446447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682775, 31.434223, 24.604342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683321, 31.796080, 24.774809>,  <29.683649, 32.013195, 24.877089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683321, 31.796080, 24.774809>,  <29.682775, 31.434223, 24.604342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683321, 31.796080, 24.774809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493418, -0.371287, 0.786565,
		0.869791, 0.209206, -0.446874,
		0.001364, 0.904643, 0.426168,
		29.683731, 32.067474, 24.902658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308985, 31.528877, 24.928514>,  <29.682775, 31.434223, 24.604342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308985, 31.528877, 24.928514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093922, 31.822086, 25.095177>,  <29.964884, 31.998013, 25.195173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093922, 31.822086, 25.095177>,  <30.308985, 31.528877, 24.928514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093922, 31.822086, 25.095177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528128, -0.092433, 0.844119,
		0.657272, 0.673894, -0.337433,
		-0.537657, 0.733023, 0.416655,
		29.932625, 32.041992, 25.220173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655117, 31.567528, 25.470503>,  <30.308985, 31.528877, 24.928514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655117, 31.567528, 25.470503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382463, 31.858992, 25.497126>,  <30.218870, 32.033871, 25.513100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382463, 31.858992, 25.497126>,  <30.655117, 31.567528, 25.470503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382463, 31.858992, 25.497126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282538, 0.178211, 0.942557,
		0.674941, 0.661285, -0.327348,
		-0.681635, 0.728659, 0.066556,
		30.177973, 32.077591, 25.517092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004833, 32.108585, 25.715406>,  <30.655117, 31.567528, 25.470503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004833, 32.108585, 25.715406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626432, 32.187859, 25.818016>,  <30.399391, 32.235424, 25.879581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626432, 32.187859, 25.818016>,  <31.004833, 32.108585, 25.715406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626432, 32.187859, 25.818016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304751, 0.274012, 0.912165,
		0.110484, 0.941085, -0.319612,
		-0.946002, 0.198182, 0.256522,
		30.342632, 32.247314, 25.894972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010908, 32.749817, 25.936832>,  <31.004833, 32.108585, 25.715406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010908, 32.749817, 25.936832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677540, 32.600025, 26.099400>,  <30.477520, 32.510151, 26.196939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677540, 32.600025, 26.099400>,  <31.010908, 32.749817, 25.936832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677540, 32.600025, 26.099400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230852, 0.432271, 0.871693,
		-0.502115, 0.820309, -0.273813,
		-0.833419, -0.374480, 0.406420,
		30.427513, 32.487682, 26.221325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655907, 33.336712, 26.166292>,  <31.010908, 32.749817, 25.936832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655907, 33.336712, 26.166292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478630, 33.055710, 26.389027>,  <30.372263, 32.887108, 26.522667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478630, 33.055710, 26.389027>,  <30.655907, 33.336712, 26.166292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478630, 33.055710, 26.389027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044438, 0.637625, 0.769064,
		-0.895324, 0.316099, -0.313809,
		-0.443193, -0.702507, 0.556834,
		30.345673, 32.844959, 26.556076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071833, 33.606842, 26.488249>,  <30.655907, 33.336712, 26.166292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071833, 33.606842, 26.488249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155796, 33.282097, 26.706173>,  <30.206175, 33.087250, 26.836927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155796, 33.282097, 26.706173>,  <30.071833, 33.606842, 26.488249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155796, 33.282097, 26.706173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126117, 0.530085, 0.838513,
		-0.969553, -0.244720, 0.008879,
		0.209908, -0.811863, 0.544809,
		30.218769, 33.038536, 26.869616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599970, 33.597355, 27.095545>,  <30.071833, 33.606842, 26.488249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599970, 33.597355, 27.095545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913948, 33.366146, 27.184761>,  <30.102335, 33.227421, 27.238291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913948, 33.366146, 27.184761>,  <29.599970, 33.597355, 27.095545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913948, 33.366146, 27.184761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078237, 0.264636, 0.961169,
		-0.614603, -0.771917, 0.162503,
		0.784947, -0.578024, 0.223039,
		30.149433, 33.192738, 27.251673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453371, 33.274612, 27.770124>,  <29.599970, 33.597355, 27.095545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453371, 33.274612, 27.770124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847010, 33.273945, 27.699078>,  <30.083193, 33.273544, 27.656450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847010, 33.273945, 27.699078>,  <29.453371, 33.274612, 27.770124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847010, 33.273945, 27.699078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167490, 0.341678, 0.924772,
		0.059142, -0.939815, 0.336525,
		0.984098, -0.001672, -0.177617,
		30.142239, 33.273445, 27.645792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758062, 32.930016, 28.392071>,  <29.453371, 33.274612, 27.770124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758062, 32.930016, 28.392071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048502, 33.129013, 28.202217>,  <30.222767, 33.248413, 28.088305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048502, 33.129013, 28.202217>,  <29.758062, 32.930016, 28.392071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048502, 33.129013, 28.202217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317329, 0.369921, 0.873190,
		0.609984, -0.784639, 0.110731,
		0.726101, 0.497493, -0.474635,
		30.266333, 33.278259, 28.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393398, 32.850986, 28.842476>,  <29.758062, 32.930016, 28.392071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393398, 32.850986, 28.842476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499657, 33.159679, 28.611351>,  <30.563412, 33.344894, 28.472675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499657, 33.159679, 28.611351>,  <30.393398, 32.850986, 28.842476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499657, 33.159679, 28.611351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297079, 0.504655, 0.810597,
		0.917157, -0.386987, -0.095205,
		0.265645, 0.771728, -0.577813,
		30.579350, 33.391197, 28.438007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003052, 32.980743, 29.062632>,  <30.393398, 32.850986, 28.842476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003052, 32.980743, 29.062632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906387, 33.301414, 28.843941>,  <30.848389, 33.493816, 28.712727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906387, 33.301414, 28.843941>,  <31.003052, 32.980743, 29.062632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906387, 33.301414, 28.843941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329659, 0.597745, 0.730771,
		0.912647, -0.003633, -0.408733,
		-0.241663, 0.801678, -0.546728,
		30.833889, 33.541920, 28.679922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548309, 33.518784, 29.207531>,  <31.003052, 32.980743, 29.062632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548309, 33.518784, 29.207531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225826, 33.713551, 29.073107>,  <31.032335, 33.830410, 28.992453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225826, 33.713551, 29.073107>,  <31.548309, 33.518784, 29.207531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225826, 33.713551, 29.073107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073568, 0.646119, 0.759682,
		0.587039, 0.587740, -0.556729,
		-0.806209, 0.486921, -0.336058,
		30.983963, 33.859627, 28.972290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720387, 34.273270, 29.256910>,  <31.548309, 33.518784, 29.207531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720387, 34.273270, 29.256910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321716, 34.240696, 29.255667>,  <31.082514, 34.221153, 29.254921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321716, 34.240696, 29.255667>,  <31.720387, 34.273270, 29.256910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321716, 34.240696, 29.255667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051123, 0.595098, 0.802026,
		-0.063462, 0.799517, -0.597282,
		-0.996674, -0.081433, -0.003108,
		31.022715, 34.216267, 29.254734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547749, 34.940674, 29.474398>,  <31.720387, 34.273270, 29.256910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547749, 34.940674, 29.474398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230227, 34.715733, 29.567032>,  <31.039713, 34.580769, 29.622612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230227, 34.715733, 29.567032>,  <31.547749, 34.940674, 29.474398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230227, 34.715733, 29.567032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162952, 0.563536, 0.809860,
		-0.585933, 0.605135, -0.538975,
		-0.793807, -0.562351, 0.231587,
		30.992085, 34.547028, 29.636507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086731, 35.452927, 29.662292>,  <31.547749, 34.940674, 29.474398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086731, 35.452927, 29.662292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965256, 35.102722, 29.812628>,  <30.892370, 34.892601, 29.902828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965256, 35.102722, 29.812628>,  <31.086731, 35.452927, 29.662292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965256, 35.102722, 29.812628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308880, 0.463632, 0.830445,
		-0.901314, 0.136108, -0.411228,
		-0.303688, -0.875512, 0.375837,
		30.874149, 34.840069, 29.925379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442930, 35.565376, 29.845057>,  <31.086731, 35.452927, 29.662292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442930, 35.565376, 29.845057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550627, 35.255920, 30.074486>,  <30.615246, 35.070248, 30.212143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550627, 35.255920, 30.074486>,  <30.442930, 35.565376, 29.845057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550627, 35.255920, 30.074486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394037, 0.454942, 0.798600,
		-0.878774, -0.441026, -0.182355,
		0.269243, -0.773644, 0.573572,
		30.631399, 35.023827, 30.246557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944256, 35.651695, 30.363497>,  <30.442930, 35.565376, 29.845057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944256, 35.651695, 30.363497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222532, 35.400974, 30.503855>,  <30.389498, 35.250542, 30.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222532, 35.400974, 30.503855>,  <29.944256, 35.651695, 30.363497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222532, 35.400974, 30.503855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185657, 0.314993, 0.930758,
		-0.693934, -0.712667, 0.102767,
		0.695692, -0.626805, 0.350896,
		30.431240, 35.212933, 30.609123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560148, 35.125725, 30.755590>,  <29.944256, 35.651695, 30.363497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560148, 35.125725, 30.755590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937782, 35.175224, 30.877832>,  <30.164362, 35.204922, 30.951178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937782, 35.175224, 30.877832>,  <29.560148, 35.125725, 30.755590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937782, 35.175224, 30.877832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328718, 0.281516, 0.901495,
		0.025523, -0.951544, 0.306452,
		0.944083, 0.123746, 0.305604,
		30.221006, 35.212349, 30.969513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455328, 34.957714, 31.411861>,  <29.560148, 35.125725, 30.755590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455328, 34.957714, 31.411861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784357, 35.184860, 31.399799>,  <29.981773, 35.321148, 31.392563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784357, 35.184860, 31.399799>,  <29.455328, 34.957714, 31.411861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784357, 35.184860, 31.399799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178684, 0.308446, 0.934309,
		0.539859, -0.763148, 0.355187,
		0.822572, 0.567861, -0.030155,
		30.031128, 35.355217, 31.390753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673277, 34.930119, 32.077209>,  <29.455328, 34.957714, 31.411861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673277, 34.930119, 32.077209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894827, 35.228065, 31.928404>,  <30.027758, 35.406834, 31.839119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894827, 35.228065, 31.928404>,  <29.673277, 34.930119, 32.077209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894827, 35.228065, 31.928404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106387, 0.379835, 0.918916,
		0.825775, -0.548542, 0.131137,
		0.553875, 0.744867, -0.372017,
		30.060989, 35.451527, 31.816799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233801, 35.036827, 32.499252>,  <29.673277, 34.930119, 32.077209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233801, 35.036827, 32.499252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216213, 35.398350, 32.328979>,  <30.205660, 35.615265, 32.226818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216213, 35.398350, 32.328979>,  <30.233801, 35.036827, 32.499252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216213, 35.398350, 32.328979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154719, 0.427110, 0.890864,
		0.986980, -0.026690, -0.158616,
		-0.043969, 0.903806, -0.425678,
		30.203022, 35.669491, 32.201275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738459, 35.508694, 32.891224>,  <30.233801, 35.036827, 32.499252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738459, 35.508694, 32.891224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481552, 35.749336, 32.701248>,  <30.327408, 35.893723, 32.587265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481552, 35.749336, 32.701248>,  <30.738459, 35.508694, 32.891224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481552, 35.749336, 32.701248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082622, 0.670363, 0.737419,
		0.762015, 0.434379, -0.480258,
		-0.642267, 0.601605, -0.474937,
		30.288872, 35.929817, 32.558765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061628, 36.146927, 32.930508>,  <30.738459, 35.508694, 32.891224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061628, 36.146927, 32.930508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683977, 36.256508, 32.857224>,  <30.457386, 36.322258, 32.813251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683977, 36.256508, 32.857224>,  <31.061628, 36.146927, 32.930508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683977, 36.256508, 32.857224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104346, 0.775786, 0.622309,
		0.312619, 0.568423, -0.761029,
		-0.944130, 0.273956, -0.183212,
		30.400738, 36.338696, 32.802261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455462, 35.485508, 32.898121>,  <31.061628, 36.146927, 32.930508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455462, 35.485508, 32.898121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821508, 35.511482, 32.738953>,  <32.041138, 35.527065, 32.643452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821508, 35.511482, 32.738953>,  <31.455462, 35.485508, 32.898121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821508, 35.511482, 32.738953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172159, 0.829519, 0.531281,
		0.364582, -0.554690, 0.747929,
		0.915118, 0.064933, -0.397923,
		32.096043, 35.530964, 32.619576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123173, 35.366047, 33.398201>,  <31.455462, 35.485508, 32.898121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123173, 35.366047, 33.398201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221790, 35.597328, 33.087101>,  <32.280960, 35.736095, 32.900440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221790, 35.597328, 33.087101>,  <32.123173, 35.366047, 33.398201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221790, 35.597328, 33.087101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266152, 0.731269, 0.628020,
		0.931868, -0.361835, 0.026401,
		0.246545, 0.578205, -0.777750,
		32.295753, 35.770790, 32.853775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890476, 35.747540, 33.516457>,  <32.123173, 35.366047, 33.398201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890476, 35.747540, 33.516457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608582, 35.938911, 33.306904>,  <32.439445, 36.053734, 33.181171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608582, 35.938911, 33.306904>,  <32.890476, 35.747540, 33.516457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608582, 35.938911, 33.306904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083177, 0.789032, 0.608695,
		0.704576, 0.385395, -0.595855,
		-0.704737, 0.478434, -0.523877,
		32.397160, 36.082443, 33.149742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113914, 36.388924, 33.162521>,  <32.890476, 35.747540, 33.516457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113914, 36.388924, 33.162521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732952, 36.434982, 33.275414>,  <32.504375, 36.462616, 33.343151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732952, 36.434982, 33.275414>,  <33.113914, 36.388924, 33.162521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732952, 36.434982, 33.275414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298830, 0.535329, 0.790015,
		-0.060123, 0.836758, -0.544262,
		-0.952411, 0.115144, 0.282234,
		32.447227, 36.469524, 33.360085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088196, 37.132114, 33.308262>,  <33.113914, 36.388924, 33.162521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088196, 37.132114, 33.308262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872601, 36.881401, 33.533344>,  <32.743244, 36.730972, 33.668392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872601, 36.881401, 33.533344>,  <33.088196, 37.132114, 33.308262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872601, 36.881401, 33.533344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474973, 0.325544, 0.817570,
		-0.695622, 0.707932, 0.122238,
		-0.538991, -0.626780, 0.562705,
		32.710903, 36.693367, 33.702156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678856, 37.484737, 33.863453>,  <33.088196, 37.132114, 33.308262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678856, 37.484737, 33.863453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769215, 37.107780, 33.962143>,  <32.823429, 36.881607, 34.021355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769215, 37.107780, 33.962143>,  <32.678856, 37.484737, 33.863453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769215, 37.107780, 33.962143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424925, 0.323229, 0.845554,
		-0.876588, -0.086174, 0.473463,
		0.225901, -0.942389, 0.246721,
		32.836987, 36.825066, 34.036160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425247, 37.321884, 34.537235>,  <32.678856, 37.484737, 33.863453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425247, 37.321884, 34.537235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730217, 37.066998, 34.492229>,  <32.913200, 36.914066, 34.465225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730217, 37.066998, 34.492229>,  <32.425247, 37.321884, 34.537235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730217, 37.066998, 34.492229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380138, 0.300362, 0.874801,
		-0.523643, -0.709743, 0.471235,
		0.762425, -0.637218, -0.112518,
		32.958946, 36.875832, 34.458473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425777, 36.957047, 35.174213>,  <32.425247, 37.321884, 34.537235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425777, 36.957047, 35.174213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780319, 36.909256, 34.995285>,  <32.993046, 36.880581, 34.887928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780319, 36.909256, 34.995285>,  <32.425777, 36.957047, 35.174213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780319, 36.909256, 34.995285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462828, 0.201878, 0.863154,
		-0.012824, -0.972095, 0.234234,
		0.886355, -0.119479, -0.447324,
		33.046227, 36.873413, 34.861088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616165, 36.323288, 35.329449>,  <32.425777, 36.957047, 35.174213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616165, 36.323288, 35.329449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944080, 36.533997, 35.239586>,  <33.140827, 36.660419, 35.185669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944080, 36.533997, 35.239586>,  <32.616165, 36.323288, 35.329449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944080, 36.533997, 35.239586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372431, -0.192392, 0.907899,
		0.435029, -0.827950, -0.353904,
		0.819783, 0.526767, -0.224658,
		33.190014, 36.692028, 35.172188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077942, 36.080452, 35.735870>,  <32.616165, 36.323288, 35.329449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077942, 36.080452, 35.735870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256790, 36.420727, 35.625298>,  <33.364098, 36.624893, 35.558952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256790, 36.420727, 35.625298>,  <33.077942, 36.080452, 35.735870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256790, 36.420727, 35.625298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383653, 0.096788, 0.918391,
		0.808020, -0.516684, -0.283093,
		0.447118, 0.850688, -0.276434,
		33.390926, 36.675934, 35.542366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743526, 36.044682, 35.991364>,  <33.077942, 36.080452, 35.735870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743526, 36.044682, 35.991364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708916, 36.439758, 35.939255>,  <33.688148, 36.676804, 35.907990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708916, 36.439758, 35.939255>,  <33.743526, 36.044682, 35.991364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708916, 36.439758, 35.939255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337235, 0.152077, 0.929056,
		0.937436, 0.036456, -0.346244,
		-0.086525, 0.987696, -0.130268,
		33.682957, 36.736069, 35.900173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332790, 36.430630, 36.454437>,  <33.743526, 36.044682, 35.991364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332790, 36.430630, 36.454437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052536, 36.701687, 36.365074>,  <33.884384, 36.864323, 36.311455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052536, 36.701687, 36.365074>,  <34.332790, 36.430630, 36.454437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052536, 36.701687, 36.365074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116533, 0.417577, 0.901138,
		0.703943, 0.605331, -0.371535,
		-0.700632, 0.677646, -0.223410,
		33.842346, 36.904980, 36.298050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640671, 37.148209, 36.671394>,  <34.332790, 36.430630, 36.454437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640671, 37.148209, 36.671394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242222, 37.180199, 36.656727>,  <34.003151, 37.199394, 36.647926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242222, 37.180199, 36.656727>,  <34.640671, 37.148209, 36.671394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242222, 37.180199, 36.656727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008886, 0.323199, 0.946289,
		0.087531, 0.942946, -0.321235,
		-0.996122, 0.079975, -0.036669,
		33.943386, 37.204189, 36.645725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472282, 37.698029, 37.112633>,  <34.640671, 37.148209, 36.671394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472282, 37.698029, 37.112633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113194, 37.523567, 37.087742>,  <33.897739, 37.418888, 37.072807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113194, 37.523567, 37.087742>,  <34.472282, 37.698029, 37.112633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113194, 37.523567, 37.087742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183216, 0.241140, 0.953039,
		-0.400668, 0.866961, -0.296386,
		-0.897718, -0.436155, -0.062224,
		33.843880, 37.392719, 37.069073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991653, 38.144909, 37.428165>,  <34.472282, 37.698029, 37.112633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991653, 38.144909, 37.428165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835819, 37.777443, 37.454334>,  <33.742317, 37.556965, 37.470036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835819, 37.777443, 37.454334>,  <33.991653, 38.144909, 37.428165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835819, 37.777443, 37.454334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189976, 0.149665, 0.970314,
		-0.901182, 0.365596, -0.232832,
		-0.389590, -0.918662, 0.065421,
		33.718941, 37.501842, 37.473961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497417, 38.199520, 38.021492>,  <33.991653, 38.144909, 37.428165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497417, 38.199520, 38.021492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518173, 37.805347, 37.956711>,  <33.530628, 37.568844, 37.917843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518173, 37.805347, 37.956711>,  <33.497417, 38.199520, 38.021492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518173, 37.805347, 37.956711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227294, -0.169568, 0.958949,
		-0.972442, -0.012952, -0.232782,
		0.051893, -0.985433, -0.161952,
		33.533741, 37.509716, 37.908127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908756, 37.954933, 38.315765>,  <33.497417, 38.199520, 38.021492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908756, 37.954933, 38.315765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166168, 37.649963, 38.288677>,  <33.320614, 37.466984, 38.272423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166168, 37.649963, 38.288677>,  <32.908756, 37.954933, 38.315765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166168, 37.649963, 38.288677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170965, -0.229413, 0.958196,
		-0.746086, -0.605048, -0.277981,
		0.643527, -0.762422, -0.067719,
		33.359226, 37.421238, 38.268360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563511, 37.452759, 38.693398>,  <32.908756, 37.954933, 38.315765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563511, 37.452759, 38.693398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952641, 37.360226, 38.689274>,  <33.186119, 37.304707, 38.686798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952641, 37.360226, 38.689274>,  <32.563511, 37.452759, 38.693398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952641, 37.360226, 38.689274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071749, -0.343461, 0.936422,
		-0.220162, -0.910232, -0.350724,
		0.972821, -0.231329, -0.010309,
		33.244488, 37.290825, 38.686180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602676, 36.907219, 39.087646>,  <32.563511, 37.452759, 38.693398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602676, 36.907219, 39.087646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991199, 37.001743, 39.076893>,  <33.224312, 37.058456, 39.070442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991199, 37.001743, 39.076893>,  <32.602676, 36.907219, 39.087646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991199, 37.001743, 39.076893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064984, -0.154954, 0.985782,
		0.228782, -0.959243, -0.165864,
		0.971306, 0.236307, -0.026884,
		33.282593, 37.072636, 39.068829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011902, 36.403252, 39.378651>,  <32.602676, 36.907219, 39.087646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011902, 36.403252, 39.378651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227409, 36.738880, 39.408825>,  <33.356716, 36.940258, 39.426929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227409, 36.738880, 39.408825>,  <33.011902, 36.403252, 39.378651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227409, 36.738880, 39.408825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130189, -0.171394, 0.976563,
		0.832331, -0.516325, -0.201580,
		0.538773, 0.839067, 0.075436,
		33.389042, 36.990601, 39.431458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455521, 36.185139, 39.818638>,  <33.011902, 36.403252, 39.378651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455521, 36.185139, 39.818638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502144, 36.582413, 39.818428>,  <33.530117, 36.820778, 39.818302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502144, 36.582413, 39.818428>,  <33.455521, 36.185139, 39.818638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502144, 36.582413, 39.818428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069497, -0.007630, 0.997553,
		0.990749, -0.116313, -0.069913,
		0.116562, 0.993183, -0.000524,
		33.537113, 36.880367, 39.818272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015697, 36.242271, 40.239464>,  <33.455521, 36.185139, 39.818638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015697, 36.242271, 40.239464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820267, 36.591278, 40.240688>,  <33.703007, 36.800682, 40.241425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820267, 36.591278, 40.240688>,  <34.015697, 36.242271, 40.239464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820267, 36.591278, 40.240688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107864, 0.056918, 0.992535,
		0.865825, 0.485264, -0.121922,
		-0.488582, 0.872513, 0.003061,
		33.673691, 36.853031, 40.241608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358109, 36.591961, 40.635403>,  <34.015697, 36.242271, 40.239464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358109, 36.591961, 40.635403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018845, 36.803852, 40.637138>,  <33.815289, 36.930988, 40.638180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018845, 36.803852, 40.637138>,  <34.358109, 36.591961, 40.635403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018845, 36.803852, 40.637138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163941, 0.254679, 0.953028,
		0.503739, 0.809029, -0.302852,
		-0.848157, 0.529727, 0.004341,
		33.764397, 36.962769, 40.638439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460148, 37.241158, 40.955502>,  <34.358109, 36.591961, 40.635403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460148, 37.241158, 40.955502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060841, 37.228241, 40.975182>,  <33.821255, 37.220490, 40.986988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060841, 37.228241, 40.975182>,  <34.460148, 37.241158, 40.955502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060841, 37.228241, 40.975182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046557, 0.077975, 0.995868,
		-0.035997, 0.996432, -0.076337,
		-0.998267, -0.032294, 0.049198,
		33.761360, 37.218552, 40.989941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282036, 37.739109, 41.428383>,  <34.460148, 37.241158, 40.955502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282036, 37.739109, 41.428383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951077, 37.514576, 41.435478>,  <33.752499, 37.379856, 41.439735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951077, 37.514576, 41.435478>,  <34.282036, 37.739109, 41.428383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951077, 37.514576, 41.435478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006116, 0.022582, 0.999726,
		-0.561578, 0.827283, -0.015251,
		-0.827401, -0.561331, 0.017742,
		33.702858, 37.346176, 41.440800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819584, 38.016956, 41.842590>,  <34.282036, 37.739109, 41.428383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819584, 38.016956, 41.842590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705482, 37.633995, 41.824642>,  <33.637024, 37.404217, 41.813873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705482, 37.633995, 41.824642>,  <33.819584, 38.016956, 41.842590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705482, 37.633995, 41.824642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093759, -0.018715, 0.995419,
		-0.953856, 0.288150, -0.084427,
		-0.285250, -0.957403, -0.044868,
		33.619907, 37.346775, 41.811180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193573, 37.986839, 42.229362>,  <33.819584, 38.016956, 41.842590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193573, 37.986839, 42.229362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356651, 37.623543, 42.191681>,  <33.454498, 37.405563, 42.169071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356651, 37.623543, 42.191681>,  <33.193573, 37.986839, 42.229362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356651, 37.623543, 42.191681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020184, -0.112108, 0.993491,
		-0.912893, -0.403144, -0.064038,
		0.407699, -0.908244, -0.094206,
		33.478962, 37.351070, 42.163418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950119, 37.623650, 42.793667>,  <33.193573, 37.986839, 42.229362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950119, 37.623650, 42.793667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239250, 37.357269, 42.719887>,  <33.412731, 37.197441, 42.675617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239250, 37.357269, 42.719887>,  <32.950119, 37.623650, 42.793667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239250, 37.357269, 42.719887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129831, -0.131291, 0.982806,
		-0.678721, -0.734348, -0.008439,
		0.722829, -0.665955, -0.184451,
		33.456100, 37.157482, 42.664551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887222, 37.019505, 43.283562>,  <32.950119, 37.623650, 42.793667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887222, 37.019505, 43.283562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263824, 36.945671, 43.170776>,  <33.489784, 36.901371, 43.103107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263824, 36.945671, 43.170776>,  <32.887222, 37.019505, 43.283562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263824, 36.945671, 43.170776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273407, -0.070803, 0.959289,
		-0.197037, -0.980262, -0.016194,
		0.941502, -0.184588, -0.281961,
		33.546276, 36.890293, 43.086189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231163, 36.326122, 43.672695>,  <32.887222, 37.019505, 43.283562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231163, 36.326122, 43.672695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536736, 36.550167, 43.544514>,  <33.720078, 36.684593, 43.467606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536736, 36.550167, 43.544514>,  <33.231163, 36.326122, 43.672695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536736, 36.550167, 43.544514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379923, 0.011021, 0.924952,
		0.521605, -0.828346, -0.204378,
		0.763928, 0.560108, -0.320456,
		33.765915, 36.718201, 43.448376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796001, 35.918499, 43.910934>,  <33.231163, 36.326122, 43.672695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796001, 35.918499, 43.910934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954895, 36.273674, 43.818180>,  <34.050232, 36.486778, 43.762527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954895, 36.273674, 43.818180>,  <33.796001, 35.918499, 43.910934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954895, 36.273674, 43.818180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437206, 0.039059, 0.898513,
		0.806882, -0.458300, -0.372697,
		0.397231, 0.887939, -0.231887,
		34.074066, 36.540054, 43.748615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526745, 35.920559, 43.978836>,  <33.796001, 35.918499, 43.910934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526745, 35.920559, 43.978836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440495, 36.309990, 44.008907>,  <34.388744, 36.543648, 44.026951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440495, 36.309990, 44.008907>,  <34.526745, 35.920559, 43.978836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440495, 36.309990, 44.008907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572178, 0.063583, 0.817661,
		0.791276, 0.219325, -0.570770,
		-0.215625, 0.973578, 0.075181,
		34.375809, 36.602062, 44.031460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165234, 36.320503, 43.908905>,  <34.526745, 35.920559, 43.978836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165234, 36.320503, 43.908905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894634, 36.520603, 44.125092>,  <34.732273, 36.640663, 44.254803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894634, 36.520603, 44.125092>,  <35.165234, 36.320503, 43.908905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894634, 36.520603, 44.125092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594280, -0.062622, 0.801817,
		0.434951, 0.863616, -0.254923,
		-0.676498, 0.500246, 0.540467,
		34.691685, 36.670677, 44.287231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570755, 36.761257, 44.255913>,  <35.165234, 36.320503, 43.908905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570755, 36.761257, 44.255913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219055, 36.682625, 44.429478>,  <35.008038, 36.635445, 44.533615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219055, 36.682625, 44.429478>,  <35.570755, 36.761257, 44.255913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219055, 36.682625, 44.429478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473957, -0.269530, 0.838283,
		-0.047840, 0.942714, 0.330155,
		-0.879247, -0.196583, 0.433912,
		34.955280, 36.623650, 44.559650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555702, 37.041004, 44.962605>,  <35.570755, 36.761257, 44.255913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555702, 37.041004, 44.962605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242294, 36.792862, 44.976780>,  <35.054249, 36.643978, 44.985283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242294, 36.792862, 44.976780>,  <35.555702, 37.041004, 44.962605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242294, 36.792862, 44.976780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139855, -0.120498, 0.982813,
		-0.605422, 0.775010, 0.181172,
		-0.783521, -0.620354, 0.035437,
		35.007236, 36.606754, 44.987411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130962, 37.179352, 45.475021>,  <35.555702, 37.041004, 44.962605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130962, 37.179352, 45.475021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067184, 36.787426, 45.426800>,  <35.028919, 36.552269, 45.397865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067184, 36.787426, 45.426800>,  <35.130962, 37.179352, 45.475021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067184, 36.787426, 45.426800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195678, -0.151064, 0.968963,
		-0.967620, 0.130902, 0.215815,
		-0.159441, -0.979819, -0.120558,
		35.019352, 36.493481, 45.390633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791451, 36.843121, 46.074566>,  <35.130962, 37.179352, 45.475021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791451, 36.843121, 46.074566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959396, 36.519707, 45.909645>,  <35.060162, 36.325657, 45.810692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959396, 36.519707, 45.909645>,  <34.791451, 36.843121, 46.074566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959396, 36.519707, 45.909645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200040, -0.360666, 0.910990,
		-0.885268, -0.464966, 0.010309,
		0.419862, -0.808533, -0.412299,
		35.085354, 36.277145, 45.785957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561245, 36.245823, 46.480194>,  <34.791451, 36.843121, 46.074566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561245, 36.245823, 46.480194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878624, 36.107948, 46.279545>,  <35.069050, 36.025223, 46.159153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878624, 36.107948, 46.279545>,  <34.561245, 36.245823, 46.480194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878624, 36.107948, 46.279545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327133, -0.453490, 0.829054,
		-0.513252, -0.821909, -0.247060,
		0.793446, -0.344692, -0.501629,
		35.116657, 36.004539, 46.129055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592850, 35.571178, 46.541222>,  <34.561245, 36.245823, 46.480194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592850, 35.571178, 46.541222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967831, 35.654675, 46.429790>,  <35.192822, 35.704773, 46.362934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967831, 35.654675, 46.429790>,  <34.592850, 35.571178, 46.541222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967831, 35.654675, 46.429790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340735, -0.386456, 0.857060,
		0.071245, -0.898376, -0.433411,
		0.937456, 0.208740, -0.278575,
		35.249069, 35.717297, 46.346218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953671, 34.964077, 46.507038>,  <34.592850, 35.571178, 46.541222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953671, 34.964077, 46.507038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234402, 35.241951, 46.570084>,  <35.402840, 35.408676, 46.607910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234402, 35.241951, 46.570084>,  <34.953671, 34.964077, 46.507038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234402, 35.241951, 46.570084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258821, -0.454823, 0.852143,
		0.663662, -0.557265, -0.499008,
		0.701829, 0.694689, 0.157616,
		35.444950, 35.450359, 46.617367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468147, 34.539963, 46.838985>,  <34.953671, 34.964077, 46.507038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468147, 34.539963, 46.838985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574146, 34.916275, 46.923561>,  <35.637745, 35.142063, 46.974304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574146, 34.916275, 46.923561>,  <35.468147, 34.539963, 46.838985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574146, 34.916275, 46.923561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235673, -0.275817, 0.931871,
		0.935006, -0.197111, -0.294807,
		0.264995, 0.940783, 0.211436,
		35.653645, 35.198509, 46.986992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143372, 34.544559, 47.045513>,  <35.468147, 34.539963, 46.838985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143372, 34.544559, 47.045513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974964, 34.871208, 47.203434>,  <35.873920, 35.067200, 47.298187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974964, 34.871208, 47.203434>,  <36.143372, 34.544559, 47.045513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974964, 34.871208, 47.203434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336548, -0.263550, 0.904033,
		0.842307, 0.513481, -0.163876,
		-0.421015, 0.816626, 0.394802,
		35.848660, 35.116196, 47.321873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622391, 34.572903, 47.519451>,  <36.143372, 34.544559, 47.045513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622391, 34.572903, 47.519451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317543, 34.807926, 47.628227>,  <36.134636, 34.948940, 47.693493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317543, 34.807926, 47.628227>,  <36.622391, 34.572903, 47.519451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317543, 34.807926, 47.628227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215979, -0.165250, 0.962313,
		0.610355, 0.792128, -0.000961,
		-0.762116, 0.587560, 0.271944,
		36.088909, 34.984196, 47.709812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881088, 35.093552, 48.030464>,  <36.622391, 34.572903, 47.519451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881088, 35.093552, 48.030464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487400, 35.058689, 48.092049>,  <36.251186, 35.037769, 48.128998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487400, 35.058689, 48.092049>,  <36.881088, 35.093552, 48.030464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487400, 35.058689, 48.092049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159111, -0.055540, 0.985697,
		-0.077362, 0.994645, 0.068532,
		-0.984225, -0.087159, 0.153962,
		36.192131, 35.032543, 48.138237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836597, 35.398605, 48.683403>,  <36.881088, 35.093552, 48.030464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836597, 35.398605, 48.683403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493484, 35.204727, 48.614960>,  <36.287617, 35.088402, 48.573895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493484, 35.204727, 48.614960>,  <36.836597, 35.398605, 48.683403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493484, 35.204727, 48.614960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028343, -0.287783, 0.957276,
		-0.513231, 0.825984, 0.233118,
		-0.857782, -0.484696, -0.171110,
		36.236149, 35.059319, 48.563625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357414, 35.563782, 49.260357>,  <36.836597, 35.398605, 48.683403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357414, 35.563782, 49.260357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214619, 35.215473, 49.125114>,  <36.128941, 35.006489, 49.043968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214619, 35.215473, 49.125114>,  <36.357414, 35.563782, 49.260357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214619, 35.215473, 49.125114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031451, -0.350548, 0.936016,
		-0.933579, 0.344782, 0.097756,
		-0.356990, -0.870770, -0.338108,
		36.107521, 34.954243, 49.023682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929733, 35.324680, 49.826984>,  <36.357414, 35.563782, 49.260357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929733, 35.324680, 49.826984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984489, 35.002056, 49.596951>,  <36.017342, 34.808483, 49.458931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984489, 35.002056, 49.596951>,  <35.929733, 35.324680, 49.826984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984489, 35.002056, 49.596951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102122, -0.588949, 0.801692,
		-0.985308, -0.051014, -0.162987,
		0.136889, -0.806558, -0.575087,
		36.025555, 34.760090, 49.424423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394424, 34.776131, 50.003094>,  <35.929733, 35.324680, 49.826984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394424, 34.776131, 50.003094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734642, 34.639015, 49.843555>,  <35.938770, 34.556744, 49.747833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734642, 34.639015, 49.843555>,  <35.394424, 34.776131, 50.003094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734642, 34.639015, 49.843555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019005, -0.777924, 0.628071,
		-0.525565, -0.526620, -0.668171,
		0.850541, -0.342790, -0.398841,
		35.989803, 34.536179, 49.723904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487862, 34.112183, 49.629715>,  <35.394424, 34.776131, 50.003094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487862, 34.112183, 49.629715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819492, 34.093834, 49.852615>,  <36.018471, 34.082825, 49.986355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819492, 34.093834, 49.852615>,  <35.487862, 34.112183, 49.629715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819492, 34.093834, 49.852615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248162, -0.923278, 0.293212,
		0.501047, -0.381384, -0.776851,
		0.829076, -0.045872, 0.557251,
		36.068214, 34.080070, 50.019791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718224, 33.497292, 49.566914>,  <35.487862, 34.112183, 49.629715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718224, 33.497292, 49.566914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852661, 33.626850, 49.920666>,  <35.933323, 33.704586, 50.132919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852661, 33.626850, 49.920666>,  <35.718224, 33.497292, 49.566914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852661, 33.626850, 49.920666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244776, -0.876701, 0.414102,
		0.909464, -0.355653, -0.215373,
		0.336095, 0.323892, 0.884383,
		35.953491, 33.724018, 50.185982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551651, 32.856342, 49.938416>,  <35.718224, 33.497292, 49.566914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551651, 32.856342, 49.938416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677769, 33.141323, 50.189178>,  <35.753437, 33.312309, 50.339634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677769, 33.141323, 50.189178>,  <35.551651, 32.856342, 49.938416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677769, 33.141323, 50.189178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043308, -0.649106, 0.759464,
		0.948006, -0.266602, -0.173802,
		0.315290, 0.712450, 0.626903,
		35.772354, 33.355057, 50.377251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258598, 32.624710, 50.333218>,  <35.551651, 32.856342, 49.938416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258598, 32.624710, 50.333218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042721, 32.907516, 50.516022>,  <35.913193, 33.077202, 50.625702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042721, 32.907516, 50.516022>,  <36.258598, 32.624710, 50.333218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042721, 32.907516, 50.516022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086209, -0.493587, 0.865413,
		0.837433, 0.506460, 0.205437,
		-0.539698, 0.707016, 0.457007,
		35.880810, 33.119621, 50.653126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637947, 32.886642, 50.908596>,  <36.258598, 32.624710, 50.333218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637947, 32.886642, 50.908596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244457, 32.884541, 50.980431>,  <36.008362, 32.883278, 51.023529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244457, 32.884541, 50.980431>,  <36.637947, 32.886642, 50.908596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244457, 32.884541, 50.980431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166718, -0.399215, 0.901572,
		0.066953, 0.916842, 0.393596,
		-0.983729, -0.005256, 0.179583,
		35.949337, 32.882965, 51.034306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107487, 32.944382, 50.310184>,  <36.637947, 32.886642, 50.908596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107487, 32.944382, 50.310184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285053, 32.683907, 50.556404>,  <37.391594, 32.527622, 50.704136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285053, 32.683907, 50.556404>,  <37.107487, 32.944382, 50.310184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285053, 32.683907, 50.556404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700011, -0.176828, -0.691893,
		0.559399, 0.738028, 0.377343,
		0.443912, -0.651188, 0.615545,
		37.418228, 32.488548, 50.741066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860718, 33.073387, 50.338276>,  <37.107487, 32.944382, 50.310184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860718, 33.073387, 50.338276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770847, 32.686508, 50.385689>,  <37.716927, 32.454380, 50.414135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770847, 32.686508, 50.385689>,  <37.860718, 33.073387, 50.338276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770847, 32.686508, 50.385689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577181, -0.230099, -0.783528,
		0.785100, -0.107627, 0.609946,
		-0.224677, -0.967197, 0.118530,
		37.703445, 32.396351, 50.421249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561272, 32.726688, 49.780731>,  <37.860718, 33.073387, 50.338276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561272, 32.726688, 49.780731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349957, 32.410046, 49.903549>,  <37.223167, 32.220058, 49.977242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349957, 32.410046, 49.903549>,  <37.561272, 32.726688, 49.780731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349957, 32.410046, 49.903549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196391, -0.237895, -0.951229,
		0.826043, -0.562820, -0.029788,
		-0.528284, -0.791606, 0.307043,
		37.191471, 32.172565, 49.995663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909641, 32.040668, 49.563801>,  <37.561272, 32.726688, 49.780731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909641, 32.040668, 49.563801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511425, 32.042606, 49.601467>,  <37.272495, 32.043770, 49.624065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511425, 32.042606, 49.601467>,  <37.909641, 32.040668, 49.563801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511425, 32.042606, 49.601467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094273, -0.033244, -0.994991,
		-0.001687, -0.999436, 0.033553,
		-0.995545, 0.004842, 0.094163,
		37.212761, 32.044060, 49.629715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618858, 31.417223, 49.286671>,  <37.909641, 32.040668, 49.563801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618858, 31.417223, 49.286671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386410, 31.738276, 49.232880>,  <37.246941, 31.930906, 49.200607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386410, 31.738276, 49.232880>,  <37.618858, 31.417223, 49.286671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386410, 31.738276, 49.232880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155061, -0.271415, -0.949889,
		-0.798909, -0.531148, 0.282182,
		-0.581120, 0.802631, -0.134476,
		37.212074, 31.979065, 49.192535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050278, 31.264708, 48.896500>,  <37.618858, 31.417223, 49.286671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050278, 31.264708, 48.896500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103859, 31.658190, 48.848530>,  <37.136009, 31.894279, 48.819748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103859, 31.658190, 48.848530>,  <37.050278, 31.264708, 48.896500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103859, 31.658190, 48.848530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115341, -0.104721, -0.987790,
		-0.984252, 0.146151, 0.099433,
		0.133954, 0.983704, -0.119929,
		37.144047, 31.953300, 48.812550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529724, 31.384666, 48.467972>,  <37.050278, 31.264708, 48.896500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529724, 31.384666, 48.467972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732548, 31.728540, 48.443214>,  <36.854240, 31.934864, 48.428360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732548, 31.728540, 48.443214>,  <36.529724, 31.384666, 48.467972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732548, 31.728540, 48.443214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224326, 0.062299, -0.972521,
		-0.832206, 0.507011, 0.224439,
		0.507061, 0.859685, -0.061890,
		36.884666, 31.986446, 48.424648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022736, 31.924730, 48.109680>,  <36.529724, 31.384666, 48.467972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022736, 31.924730, 48.109680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414871, 31.994192, 48.072201>,  <36.650154, 32.035870, 48.049713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414871, 31.994192, 48.072201>,  <36.022736, 31.924730, 48.109680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414871, 31.994192, 48.072201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128084, 0.198792, -0.971636,
		-0.150103, 0.964534, 0.217126,
		0.980338, 0.173656, -0.093702,
		36.708973, 32.046288, 48.044090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920845, 32.454414, 47.689991>,  <36.022736, 31.924730, 48.109680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920845, 32.454414, 47.689991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303879, 32.348022, 47.645641>,  <36.533699, 32.284187, 47.619034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303879, 32.348022, 47.645641>,  <35.920845, 32.454414, 47.689991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303879, 32.348022, 47.645641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022736, 0.313820, -0.949210,
		0.287262, 0.911467, 0.294461,
		0.957582, -0.265977, -0.110872,
		36.591152, 32.268230, 47.612381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250317, 33.041531, 47.424034>,  <35.920845, 32.454414, 47.689991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250317, 33.041531, 47.424034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469501, 32.732243, 47.296371>,  <36.601013, 32.546669, 47.219772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469501, 32.732243, 47.296371>,  <36.250317, 33.041531, 47.424034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469501, 32.732243, 47.296371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093820, 0.322323, -0.941969,
		0.831223, 0.546110, 0.104078,
		0.547965, -0.773222, -0.319159,
		36.633892, 32.500275, 47.200623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687122, 33.361729, 46.955769>,  <36.250317, 33.041531, 47.424034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687122, 33.361729, 46.955769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704681, 32.972961, 46.863300>,  <36.715218, 32.739700, 46.807819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704681, 32.972961, 46.863300>,  <36.687122, 33.361729, 46.955769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704681, 32.972961, 46.863300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023948, 0.232353, -0.972337,
		0.998749, 0.037151, 0.033476,
		0.043902, -0.971922, -0.231172,
		36.717854, 32.681385, 46.793949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247856, 33.270256, 46.502220>,  <36.687122, 33.361729, 46.955769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247856, 33.270256, 46.502220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020943, 32.946362, 46.442196>,  <36.884796, 32.752026, 46.406181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020943, 32.946362, 46.442196>,  <37.247856, 33.270256, 46.502220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020943, 32.946362, 46.442196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013319, 0.173170, -0.984802,
		0.823417, -0.560657, -0.087452,
		-0.567281, -0.809738, -0.150059,
		36.850758, 32.703442, 46.397179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489727, 32.971951, 45.835808>,  <37.247856, 33.270256, 46.502220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489727, 32.971951, 45.835808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150703, 32.763557, 45.876247>,  <36.947289, 32.638523, 45.900509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150703, 32.763557, 45.876247>,  <37.489727, 32.971951, 45.835808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150703, 32.763557, 45.876247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100764, -0.029049, -0.994486,
		0.521046, -0.853073, -0.027876,
		-0.847560, -0.520982, 0.101095,
		36.896435, 32.607262, 45.906574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534676, 32.306534, 45.409851>,  <37.489727, 32.971951, 45.835808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534676, 32.306534, 45.409851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149021, 32.397072, 45.465302>,  <36.917629, 32.451393, 45.498573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149021, 32.397072, 45.465302>,  <37.534676, 32.306534, 45.409851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149021, 32.397072, 45.465302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188436, -0.215890, -0.958062,
		-0.186917, -0.949823, 0.250797,
		-0.964134, 0.226337, 0.138627,
		36.859783, 32.464973, 45.506889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304012, 31.842457, 44.892311>,  <37.534676, 32.306534, 45.409851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304012, 31.842457, 44.892311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054958, 32.133034, 45.008659>,  <36.905525, 32.307381, 45.078468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054958, 32.133034, 45.008659>,  <37.304012, 31.842457, 44.892311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054958, 32.133034, 45.008659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220990, 0.193338, -0.955921,
		-0.750658, -0.659469, 0.040158,
		-0.622636, 0.726444, 0.290867,
		36.868168, 32.350967, 45.095921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704128, 31.778194, 44.440044>,  <37.304012, 31.842457, 44.892311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704128, 31.778194, 44.440044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630997, 32.140434, 44.593124>,  <36.587120, 32.357780, 44.684975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630997, 32.140434, 44.593124>,  <36.704128, 31.778194, 44.440044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630997, 32.140434, 44.593124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182180, 0.351315, -0.918362,
		-0.966119, -0.237620, 0.100753,
		-0.182825, 0.905602, 0.382702,
		36.576149, 32.412113, 44.707935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024860, 32.036255, 44.238914>,  <36.704128, 31.778194, 44.440044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024860, 32.036255, 44.238914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241695, 32.362244, 44.320854>,  <36.371796, 32.557838, 44.370018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241695, 32.362244, 44.320854>,  <36.024860, 32.036255, 44.238914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241695, 32.362244, 44.320854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179056, 0.350197, -0.919403,
		-0.821026, 0.461714, 0.335762,
		0.542084, 0.814974, 0.204848,
		36.404320, 32.606735, 44.382309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626976, 32.667515, 44.091084>,  <36.024860, 32.036255, 44.238914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626976, 32.667515, 44.091084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006428, 32.794067, 44.089695>,  <36.234097, 32.869999, 44.088863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006428, 32.794067, 44.089695>,  <35.626976, 32.667515, 44.091084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006428, 32.794067, 44.089695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131669, 0.384770, -0.913573,
		-0.287704, 0.867095, 0.406660,
		0.948625, 0.316383, -0.003470,
		36.291016, 32.888981, 44.088654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608265, 33.352360, 44.077492>,  <35.626976, 32.667515, 44.091084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608265, 33.352360, 44.077492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980885, 33.287197, 43.947453>,  <36.204456, 33.248100, 43.869431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980885, 33.287197, 43.947453>,  <35.608265, 33.352360, 44.077492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980885, 33.287197, 43.947453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158164, 0.623515, -0.765646,
		0.327428, 0.764652, 0.555067,
		0.931545, -0.162902, -0.325096,
		36.260349, 33.238327, 43.849922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941795, 33.973732, 43.962883>,  <35.608265, 33.352360, 44.077492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941795, 33.973732, 43.962883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111549, 33.711620, 43.712921>,  <36.213402, 33.554356, 43.562943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111549, 33.711620, 43.712921>,  <35.941795, 33.973732, 43.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111549, 33.711620, 43.712921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111005, 0.647282, -0.754125,
		0.898651, 0.389409, 0.201959,
		0.424387, -0.655277, -0.624907,
		36.238865, 33.515038, 43.525448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334969, 34.303551, 43.476337>,  <35.941795, 33.973732, 43.962883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334969, 34.303551, 43.476337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266773, 33.951889, 43.298344>,  <36.225857, 33.740891, 43.191547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266773, 33.951889, 43.298344>,  <36.334969, 34.303551, 43.476337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266773, 33.951889, 43.298344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226029, 0.474450, -0.850769,
		0.959084, -0.044470, -0.279606,
		-0.170493, -0.879158, -0.444986,
		36.215626, 33.688141, 43.164848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683578, 34.385818, 42.818783>,  <36.334969, 34.303551, 43.476337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683578, 34.385818, 42.818783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427368, 34.082272, 42.771717>,  <36.273643, 33.900143, 42.743477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427368, 34.082272, 42.771717>,  <36.683578, 34.385818, 42.818783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427368, 34.082272, 42.771717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272190, 0.367616, -0.889253,
		0.718083, -0.537561, -0.442024,
		-0.640523, -0.758872, -0.117660,
		36.235210, 33.854610, 42.736420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722359, 34.284069, 42.022980>,  <36.683578, 34.385818, 42.818783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722359, 34.284069, 42.022980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411560, 34.054939, 42.127399>,  <36.225082, 33.917461, 42.190052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411560, 34.054939, 42.127399>,  <36.722359, 34.284069, 42.022980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411560, 34.054939, 42.127399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363880, 0.070303, -0.928789,
		0.513682, -0.816656, -0.263065,
		-0.776996, -0.572826, 0.261051,
		36.178463, 33.883091, 42.205715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669655, 33.772091, 41.477303>,  <36.722359, 34.284069, 42.022980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669655, 33.772091, 41.477303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319431, 33.810211, 41.666748>,  <36.109295, 33.833084, 41.780415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319431, 33.810211, 41.666748>,  <36.669655, 33.772091, 41.477303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319431, 33.810211, 41.666748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471159, 0.048236, -0.880728,
		-0.106775, -0.994280, 0.002666,
		-0.875562, 0.095296, 0.473615,
		36.056763, 33.838799, 41.808834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233578, 33.150639, 41.129913>,  <36.669655, 33.772091, 41.477303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233578, 33.150639, 41.129913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988441, 33.422070, 41.291882>,  <35.841362, 33.584927, 41.389061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988441, 33.422070, 41.291882>,  <36.233578, 33.150639, 41.129913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988441, 33.422070, 41.291882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487858, 0.078200, -0.869413,
		-0.621630, -0.730353, 0.283126,
		-0.612839, 0.678579, 0.404920,
		35.804588, 33.625645, 41.413357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569439, 33.026211, 40.862736>,  <36.233578, 33.150639, 41.129913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569439, 33.026211, 40.862736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522945, 33.401241, 40.993843>,  <35.495049, 33.626259, 41.072510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522945, 33.401241, 40.993843>,  <35.569439, 33.026211, 40.862736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522945, 33.401241, 40.993843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481479, 0.235450, -0.844240,
		-0.868716, -0.255942, 0.424059,
		-0.116231, 0.937580, 0.327770,
		35.488075, 33.682514, 41.092175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921379, 33.212704, 40.682743>,  <35.569439, 33.026211, 40.862736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921379, 33.212704, 40.682743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039402, 33.589207, 40.748436>,  <35.110214, 33.815109, 40.787853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039402, 33.589207, 40.748436>,  <34.921379, 33.212704, 40.682743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039402, 33.589207, 40.748436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546614, 0.307267, -0.778974,
		-0.783680, 0.140069, 0.605167,
		0.295058, 0.941258, 0.164235,
		35.127918, 33.871586, 40.797707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352821, 33.602249, 40.736805>,  <34.921379, 33.212704, 40.682743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352821, 33.602249, 40.736805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649017, 33.845417, 40.622196>,  <34.826736, 33.991318, 40.553429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649017, 33.845417, 40.622196>,  <34.352821, 33.602249, 40.736805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649017, 33.845417, 40.622196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565525, 0.333295, -0.754384,
		-0.363111, 0.720654, 0.590599,
		0.740494, 0.607925, -0.286525,
		34.871166, 34.027794, 40.536240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032200, 34.123600, 40.525326>,  <34.352821, 33.602249, 40.736805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032200, 34.123600, 40.525326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391880, 34.195515, 40.365772>,  <34.607689, 34.238663, 40.270039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391880, 34.195515, 40.365772>,  <34.032200, 34.123600, 40.525326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391880, 34.195515, 40.365772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436265, 0.299068, -0.848665,
		-0.033287, 0.937142, 0.347359,
		0.899203, 0.179790, -0.398886,
		34.661640, 34.249451, 40.246105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955902, 34.846336, 40.126148>,  <34.032200, 34.123600, 40.525326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955902, 34.846336, 40.126148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287949, 34.680607, 39.976887>,  <34.487175, 34.581169, 39.887329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287949, 34.680607, 39.976887>,  <33.955902, 34.846336, 40.126148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287949, 34.680607, 39.976887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251264, 0.319465, -0.913678,
		0.497766, 0.852220, 0.161090,
		0.830118, -0.414322, -0.373151,
		34.536983, 34.556309, 39.864941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941807, 35.150169, 39.522301>,  <33.955902, 34.846336, 40.126148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941807, 35.150169, 39.522301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224094, 34.869370, 39.484028>,  <34.393467, 34.700890, 39.461063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224094, 34.869370, 39.484028>,  <33.941807, 35.150169, 39.522301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224094, 34.869370, 39.484028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070332, 0.203797, -0.976484,
		0.704990, 0.682396, 0.193197,
		0.705721, -0.701999, -0.095680,
		34.435810, 34.658772, 39.455322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578564, 35.429588, 39.225521>,  <33.941807, 35.150169, 39.522301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578564, 35.429588, 39.225521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585945, 35.049053, 39.102482>,  <34.590374, 34.820732, 39.028660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585945, 35.049053, 39.102482>,  <34.578564, 35.429588, 39.225521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585945, 35.049053, 39.102482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113870, 0.307648, -0.944662,
		0.993324, -0.017598, 0.114005,
		0.018449, -0.951338, -0.307598,
		34.591480, 34.763653, 39.010201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231571, 35.364422, 38.741024>,  <34.578564, 35.429588, 39.225521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231571, 35.364422, 38.741024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964458, 35.074478, 38.673328>,  <34.804192, 34.900513, 38.632710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964458, 35.074478, 38.673328>,  <35.231571, 35.364422, 38.741024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964458, 35.074478, 38.673328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092499, 0.144797, -0.985128,
		0.738586, -0.673507, -0.029644,
		-0.667783, -0.724860, -0.169244,
		34.764122, 34.857021, 38.622555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474678, 35.098259, 38.220905>,  <35.231571, 35.364422, 38.741024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474678, 35.098259, 38.220905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106285, 34.942577, 38.227886>,  <34.885246, 34.849171, 38.232075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106285, 34.942577, 38.227886>,  <35.474678, 35.098259, 38.220905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106285, 34.942577, 38.227886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014400, -0.078767, -0.996789,
		0.389327, -0.917778, 0.078148,
		-0.920987, -0.389203, 0.017450,
		34.829990, 34.825817, 38.233120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560017, 34.475117, 37.947235>,  <35.474678, 35.098259, 38.220905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560017, 34.475117, 37.947235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185452, 34.605309, 37.894783>,  <34.960712, 34.683422, 37.863312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185452, 34.605309, 37.894783>,  <35.560017, 34.475117, 37.947235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185452, 34.605309, 37.894783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127395, -0.032851, -0.991308,
		-0.326955, -0.944979, -0.010702,
		-0.936414, 0.325477, -0.131126,
		34.904526, 34.702953, 37.855446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264973, 33.973434, 37.459278>,  <35.560017, 34.475117, 37.947235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264973, 33.973434, 37.459278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035667, 34.299583, 37.426929>,  <34.898083, 34.495274, 37.407520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035667, 34.299583, 37.426929>,  <35.264973, 33.973434, 37.459278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035667, 34.299583, 37.426929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181978, -0.222927, -0.957699,
		-0.798907, -0.534299, 0.276176,
		-0.573265, 0.815370, -0.080867,
		34.863689, 34.544193, 37.402668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705975, 33.734032, 37.042168>,  <35.264973, 33.973434, 37.459278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705975, 33.734032, 37.042168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661575, 34.131500, 37.035351>,  <34.634933, 34.369984, 37.031261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661575, 34.131500, 37.035351>,  <34.705975, 33.734032, 37.042168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661575, 34.131500, 37.035351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295289, -0.049353, -0.954132,
		-0.948938, -0.100878, 0.298900,
		-0.111003, 0.993674, -0.017044,
		34.628273, 34.429604, 37.030239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015430, 33.860210, 36.753826>,  <34.705975, 33.734032, 37.042168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015430, 33.860210, 36.753826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228207, 34.193745, 36.694836>,  <34.355873, 34.393867, 36.659443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228207, 34.193745, 36.694836>,  <34.015430, 33.860210, 36.753826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228207, 34.193745, 36.694836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395130, 0.090389, -0.914167,
		-0.748938, 0.544557, 0.377557,
		0.531944, 0.833839, -0.147475,
		34.387791, 34.443897, 36.650593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517918, 34.250530, 36.422665>,  <34.015430, 33.860210, 36.753826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517918, 34.250530, 36.422665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860958, 34.441753, 36.346802>,  <34.066784, 34.556488, 36.301285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860958, 34.441753, 36.346802>,  <33.517918, 34.250530, 36.422665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860958, 34.441753, 36.346802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234361, 0.034993, -0.971520,
		-0.457807, 0.877630, 0.142049,
		0.857606, 0.478059, -0.189662,
		34.118240, 34.585171, 36.289902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302475, 34.773422, 35.919357>,  <33.517918, 34.250530, 36.422665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302475, 34.773422, 35.919357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699398, 34.734634, 35.888588>,  <33.937553, 34.711361, 35.870125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699398, 34.734634, 35.888588>,  <33.302475, 34.773422, 35.919357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699398, 34.734634, 35.888588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086432, -0.098013, -0.991425,
		0.088598, 0.990450, -0.105640,
		0.992310, -0.096969, -0.076922,
		33.997089, 34.705544, 35.865513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421844, 35.204559, 35.417419>,  <33.302475, 34.773422, 35.919357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421844, 35.204559, 35.417419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742210, 34.965061, 35.419956>,  <33.934429, 34.821362, 35.421478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742210, 34.965061, 35.419956>,  <33.421844, 35.204559, 35.417419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742210, 34.965061, 35.419956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085397, -0.124699, -0.988513,
		0.592658, 0.791173, -0.151004,
		0.800914, -0.598745, 0.006340,
		33.982483, 34.785439, 35.421860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857372, 35.377449, 34.774178>,  <33.421844, 35.204559, 35.417419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857372, 35.377449, 34.774178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955418, 35.011459, 34.902390>,  <34.014244, 34.791866, 34.979317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955418, 35.011459, 34.902390>,  <33.857372, 35.377449, 34.774178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955418, 35.011459, 34.902390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057172, -0.343679, -0.937345,
		0.967806, 0.211434, -0.136552,
		0.245117, -0.914976, 0.320527,
		34.028954, 34.736965, 34.998547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407051, 35.177483, 34.343525>,  <33.857372, 35.377449, 34.774178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407051, 35.177483, 34.343525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252716, 34.842316, 34.497944>,  <34.160114, 34.641216, 34.590595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252716, 34.842316, 34.497944>,  <34.407051, 35.177483, 34.343525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252716, 34.842316, 34.497944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020495, -0.410561, -0.911603,
		0.922341, -0.359639, 0.141235,
		-0.385833, -0.837914, 0.386048,
		34.136967, 34.590942, 34.613758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843594, 35.506229, 34.821522>,  <34.407051, 35.177483, 34.343525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843594, 35.506229, 34.821522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219086, 35.624039, 34.893131>,  <35.444382, 35.694725, 34.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219086, 35.624039, 34.893131>,  <34.843594, 35.506229, 34.821522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219086, 35.624039, 34.893131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283919, -0.366298, -0.886124,
		-0.195405, 0.882657, -0.427474,
		0.938726, 0.294521, 0.179027,
		35.500702, 35.712395, 34.946838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460361, 35.030109, 34.560596>,  <34.843594, 35.506229, 34.821522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460361, 35.030109, 34.560596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772202, 35.208889, 34.385117>,  <35.959305, 35.316154, 34.279831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772202, 35.208889, 34.385117>,  <35.460361, 35.030109, 34.560596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772202, 35.208889, 34.385117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617447, -0.431354, 0.657794,
		0.104765, -0.783691, -0.612252,
		0.779605, 0.446947, -0.438697,
		36.006084, 35.342972, 34.253506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019306, 34.586288, 34.644753>,  <35.460361, 35.030109, 34.560596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019306, 34.586288, 34.644753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209808, 34.931465, 34.577198>,  <36.324108, 35.138569, 34.536667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209808, 34.931465, 34.577198>,  <36.019306, 34.586288, 34.644753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209808, 34.931465, 34.577198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661200, -0.224838, 0.715725,
		0.579655, -0.452532, -0.677654,
		0.476251, 0.862938, -0.168885,
		36.352684, 35.190346, 34.526531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589470, 34.430042, 34.928940>,  <36.019306, 34.586288, 34.644753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589470, 34.430042, 34.928940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631966, 34.826954, 34.903355>,  <36.657463, 35.065102, 34.888004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631966, 34.826954, 34.903355>,  <36.589470, 34.430042, 34.928940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631966, 34.826954, 34.903355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777782, -0.042852, 0.627072,
		0.619491, -0.116365, -0.776331,
		0.106237, 0.992282, -0.063960,
		36.663837, 35.124638, 34.884167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344837, 34.611755, 34.902248>,  <36.589470, 34.430042, 34.928940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344837, 34.611755, 34.902248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155922, 34.942539, 35.024284>,  <37.042572, 35.141010, 35.097507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155922, 34.942539, 35.024284>,  <37.344837, 34.611755, 34.902248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155922, 34.942539, 35.024284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669892, 0.111793, 0.733994,
		0.572874, 0.551039, -0.606771,
		-0.472292, 0.826957, 0.305093,
		37.014233, 35.190628, 35.115814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862747, 35.120342, 35.087841>,  <37.344837, 34.611755, 34.902248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862747, 35.120342, 35.087841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538353, 35.240997, 35.288368>,  <37.343716, 35.313393, 35.408684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538353, 35.240997, 35.288368>,  <37.862747, 35.120342, 35.087841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538353, 35.240997, 35.288368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538041, 0.047929, 0.841555,
		0.229819, 0.952216, -0.201165,
		-0.810984, 0.301640, 0.501316,
		37.295059, 35.331490, 35.438763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071865, 35.507828, 35.616493>,  <37.862747, 35.120342, 35.087841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071865, 35.507828, 35.616493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699917, 35.423126, 35.736828>,  <37.476749, 35.372307, 35.809029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699917, 35.423126, 35.736828>,  <38.071865, 35.507828, 35.616493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699917, 35.423126, 35.736828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324128, -0.084772, 0.942208,
		-0.174012, 0.973640, 0.147461,
		-0.929872, -0.211752, 0.300832,
		37.420956, 35.359600, 35.827076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896946, 36.014431, 36.133167>,  <38.071865, 35.507828, 35.616493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896946, 36.014431, 36.133167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680141, 35.686878, 36.208698>,  <37.550056, 35.490349, 36.254017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680141, 35.686878, 36.208698>,  <37.896946, 36.014431, 36.133167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680141, 35.686878, 36.208698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377207, -0.036273, 0.925418,
		-0.750957, 0.572818, 0.328548,
		-0.542014, -0.818880, 0.188832,
		37.517536, 35.441216, 36.265347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815845, 36.087769, 36.846531>,  <37.896946, 36.014431, 36.133167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815845, 36.087769, 36.846531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723587, 35.705437, 36.773659>,  <37.668232, 35.476036, 36.729935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723587, 35.705437, 36.773659>,  <37.815845, 36.087769, 36.846531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723587, 35.705437, 36.773659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345989, -0.255552, 0.902765,
		-0.909446, 0.145191, 0.389650,
		-0.230650, -0.955831, -0.182176,
		37.654392, 35.418686, 36.719006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641155, 35.913460, 37.543407>,  <37.815845, 36.087769, 36.846531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641155, 35.913460, 37.543407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699142, 35.575603, 37.337276>,  <37.733936, 35.372890, 37.213596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699142, 35.575603, 37.337276>,  <37.641155, 35.913460, 37.543407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699142, 35.575603, 37.337276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368468, -0.437283, 0.820375,
		-0.918268, -0.308811, 0.247831,
		0.144969, -0.844642, -0.515330,
		37.742634, 35.322212, 37.182678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374409, 35.394375, 37.998978>,  <37.641155, 35.913460, 37.543407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374409, 35.394375, 37.998978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613922, 35.216190, 37.732738>,  <37.757629, 35.109280, 37.572994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613922, 35.216190, 37.732738>,  <37.374409, 35.394375, 37.998978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613922, 35.216190, 37.732738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390351, -0.563341, 0.728198,
		-0.699342, -0.695851, -0.163434,
		0.598787, -0.445463, -0.665594,
		37.793560, 35.082550, 37.533062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304302, 34.667622, 38.161892>,  <37.374409, 35.394375, 37.998978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304302, 34.667622, 38.161892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657467, 34.693741, 37.975903>,  <37.869366, 34.709412, 37.864307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657467, 34.693741, 37.975903>,  <37.304302, 34.667622, 38.161892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657467, 34.693741, 37.975903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427283, -0.522298, 0.737993,
		-0.194669, -0.850260, -0.489042,
		0.882912, 0.065295, -0.464977,
		37.922340, 34.713329, 37.836411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590569, 33.979221, 38.132694>,  <37.304302, 34.667622, 38.161892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590569, 33.979221, 38.132694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904102, 34.221394, 38.077484>,  <38.092224, 34.366699, 38.044357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904102, 34.221394, 38.077484>,  <37.590569, 33.979221, 38.132694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904102, 34.221394, 38.077484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454492, -0.407887, 0.791875,
		0.423130, -0.683430, -0.594881,
		0.783836, 0.605435, -0.138024,
		38.139252, 34.403023, 38.036076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193058, 33.567703, 38.058342>,  <37.590569, 33.979221, 38.132694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193058, 33.567703, 38.058342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344307, 33.923771, 38.160023>,  <38.435055, 34.137413, 38.221031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344307, 33.923771, 38.160023>,  <38.193058, 33.567703, 38.058342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344307, 33.923771, 38.160023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335052, -0.387567, 0.858797,
		0.862998, -0.239557, -0.444801,
		0.378121, 0.890171, 0.254205,
		38.457745, 34.190823, 38.236282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878662, 33.533764, 38.101200>,  <38.193058, 33.567703, 38.058342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878662, 33.533764, 38.101200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762386, 33.830402, 38.343037>,  <38.692623, 34.008385, 38.488140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762386, 33.830402, 38.343037>,  <38.878662, 33.533764, 38.101200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762386, 33.830402, 38.343037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367255, -0.497003, 0.786201,
		0.883529, 0.450579, -0.127882,
		-0.290688, 0.741597, 0.604595,
		38.675179, 34.052883, 38.524414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444382, 33.602283, 38.556118>,  <38.878662, 33.533764, 38.101200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444382, 33.602283, 38.556118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166973, 33.816418, 38.748970>,  <39.000530, 33.944901, 38.864681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166973, 33.816418, 38.748970>,  <39.444382, 33.602283, 38.556118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166973, 33.816418, 38.748970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338728, -0.348340, 0.874027,
		0.635844, 0.769463, 0.060246,
		-0.693517, 0.535338, 0.482128,
		38.958920, 33.977020, 38.893608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791241, 33.831165, 39.123981>,  <39.444382, 33.602283, 38.556118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791241, 33.831165, 39.123981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423721, 33.927856, 39.248802>,  <39.203209, 33.985870, 39.323696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423721, 33.927856, 39.248802>,  <39.791241, 33.831165, 39.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423721, 33.927856, 39.248802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269583, -0.193182, 0.943401,
		0.288327, 0.950920, 0.112331,
		-0.918799, 0.241726, 0.312052,
		39.148083, 34.000374, 39.342419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839798, 34.344830, 39.726326>,  <39.791241, 33.831165, 39.123981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839798, 34.344830, 39.726326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488712, 34.155853, 39.758381>,  <39.278061, 34.042469, 39.777615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488712, 34.155853, 39.758381>,  <39.839798, 34.344830, 39.726326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488712, 34.155853, 39.758381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164216, -0.139446, 0.976518,
		-0.450168, 0.870263, 0.199975,
		-0.877714, -0.472437, 0.080137,
		39.225399, 34.014122, 39.782421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480202, 34.659649, 40.248642>,  <39.839798, 34.344830, 39.726326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480202, 34.659649, 40.248642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307835, 34.300243, 40.215229>,  <39.204414, 34.084599, 40.195183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307835, 34.300243, 40.215229>,  <39.480202, 34.659649, 40.248642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307835, 34.300243, 40.215229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005520, -0.095187, 0.995444,
		-0.902376, 0.428490, 0.045977,
		-0.430915, -0.898519, -0.083529,
		39.178558, 34.030689, 40.190170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926514, 34.660015, 40.717537>,  <39.480202, 34.659649, 40.248642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926514, 34.660015, 40.717537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979290, 34.267284, 40.662971>,  <39.010956, 34.031647, 40.630230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979290, 34.267284, 40.662971>,  <38.926514, 34.660015, 40.717537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979290, 34.267284, 40.662971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154119, -0.156263, 0.975617,
		-0.979204, -0.107698, -0.171935,
		0.131939, -0.981826, -0.136415,
		39.018871, 33.972736, 40.622047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511440, 34.329109, 41.205883>,  <38.926514, 34.660015, 40.717537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511440, 34.329109, 41.205883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754021, 34.033669, 41.088112>,  <38.899570, 33.856403, 41.017448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754021, 34.033669, 41.088112>,  <38.511440, 34.329109, 41.205883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754021, 34.033669, 41.088112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085685, -0.428840, 0.899308,
		-0.790489, -0.520160, -0.323358,
		0.606453, -0.738600, -0.294423,
		38.935955, 33.812088, 40.999786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190460, 33.756550, 41.430202>,  <38.511440, 34.329109, 41.205883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190460, 33.756550, 41.430202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574379, 33.655750, 41.380756>,  <38.804729, 33.595268, 41.351089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574379, 33.655750, 41.380756>,  <38.190460, 33.756550, 41.430202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574379, 33.655750, 41.380756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036407, -0.548460, 0.835384,
		-0.278318, -0.797300, -0.535586,
		0.959799, -0.252002, -0.123619,
		38.862320, 33.580151, 41.343670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219746, 33.017651, 41.600132>,  <38.190460, 33.756550, 41.430202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219746, 33.017651, 41.600132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567482, 33.206493, 41.658596>,  <38.776123, 33.319798, 41.693676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567482, 33.206493, 41.658596>,  <38.219746, 33.017651, 41.600132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567482, 33.206493, 41.658596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070693, -0.411490, 0.908669,
		0.489133, -0.779609, -0.391099,
		0.869340, 0.472107, 0.146161,
		38.828285, 33.348125, 41.702446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562004, 32.459419, 41.944843>,  <38.219746, 33.017651, 41.600132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562004, 32.459419, 41.944843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753769, 32.804955, 42.006756>,  <38.868828, 33.012276, 42.043903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753769, 32.804955, 42.006756>,  <38.562004, 32.459419, 41.944843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753769, 32.804955, 42.006756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080567, -0.218950, 0.972404,
		0.873885, -0.453710, -0.174564,
		0.479410, 0.863833, 0.154783,
		38.897591, 33.064106, 42.053192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127289, 32.306179, 42.341084>,  <38.562004, 32.459419, 41.944843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127289, 32.306179, 42.341084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099655, 32.701511, 42.395397>,  <39.083076, 32.938709, 42.427986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099655, 32.701511, 42.395397>,  <39.127289, 32.306179, 42.341084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099655, 32.701511, 42.395397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139200, -0.125226, 0.982315,
		0.987852, 0.086764, -0.128924,
		-0.069084, 0.988327, 0.135782,
		39.078930, 32.998009, 42.436131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740547, 32.499916, 42.836563>,  <39.127289, 32.306179, 42.341084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740547, 32.499916, 42.836563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474205, 32.797604, 42.857628>,  <39.314400, 32.976215, 42.870266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474205, 32.797604, 42.857628>,  <39.740547, 32.499916, 42.836563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474205, 32.797604, 42.857628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173625, 0.085928, 0.981056,
		0.725596, 0.662385, -0.186431,
		-0.665857, 0.744219, 0.052658,
		39.274448, 33.020870, 42.873425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063652, 33.100742, 43.155315>,  <39.740547, 32.499916, 42.836563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063652, 33.100742, 43.155315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674019, 33.186653, 43.183701>,  <39.440239, 33.238201, 43.200733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674019, 33.186653, 43.183701>,  <40.063652, 33.100742, 43.155315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674019, 33.186653, 43.183701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155351, 0.407194, 0.900033,
		0.164412, 0.887729, -0.430007,
		-0.974082, 0.214778, 0.070962,
		39.381794, 33.251087, 43.204990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027729, 33.706615, 43.576603>,  <40.063652, 33.100742, 43.155315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027729, 33.706615, 43.576603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643044, 33.598381, 43.559212>,  <39.412231, 33.533440, 43.548779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643044, 33.598381, 43.559212>,  <40.027729, 33.706615, 43.576603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643044, 33.598381, 43.559212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137003, 0.337301, 0.931374,
		-0.237349, 0.901672, -0.361458,
		-0.961715, -0.270582, -0.043474,
		39.354530, 33.517208, 43.546169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638966, 34.286629, 43.717766>,  <40.027729, 33.706615, 43.576603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638966, 34.286629, 43.717766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414772, 33.968090, 43.808708>,  <39.280254, 33.776966, 43.863274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414772, 33.968090, 43.808708>,  <39.638966, 34.286629, 43.717766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414772, 33.968090, 43.808708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007870, 0.269391, 0.962999,
		-0.828127, 0.541536, -0.144722,
		-0.560485, -0.796346, 0.227352,
		39.246628, 33.729187, 43.876915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129940, 34.590919, 44.077297>,  <39.638966, 34.286629, 43.717766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129940, 34.590919, 44.077297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178589, 34.213837, 44.201569>,  <39.207779, 33.987587, 44.276131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178589, 34.213837, 44.201569>,  <39.129940, 34.590919, 44.077297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178589, 34.213837, 44.201569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166293, 0.327929, 0.929951,
		-0.978548, -0.061435, 0.196647,
		0.121617, -0.942703, 0.310678,
		39.215073, 33.931026, 44.294773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619770, 34.504791, 44.601997>,  <39.129940, 34.590919, 44.077297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619770, 34.504791, 44.601997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880234, 34.209980, 44.674419>,  <39.036514, 34.033092, 44.717873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880234, 34.209980, 44.674419>,  <38.619770, 34.504791, 44.601997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880234, 34.209980, 44.674419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036050, 0.268327, 0.962653,
		-0.758082, -0.620316, 0.201293,
		0.651162, -0.737027, 0.181052,
		39.075581, 33.988873, 44.728733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458263, 34.159214, 45.187614>,  <38.619770, 34.504791, 44.601997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458263, 34.159214, 45.187614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845764, 34.060055, 45.184364>,  <39.078266, 34.000561, 45.182415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845764, 34.060055, 45.184364>,  <38.458263, 34.159214, 45.187614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845764, 34.060055, 45.184364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090765, 0.323821, 0.941754,
		-0.230824, -0.913065, 0.336203,
		0.968753, -0.247895, -0.008129,
		39.136391, 33.985687, 45.181927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680927, 34.058582, 45.921719>,  <38.458263, 34.159214, 45.187614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680927, 34.058582, 45.921719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036476, 34.085022, 45.740376>,  <39.249805, 34.100887, 45.631569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036476, 34.085022, 45.740376>,  <38.680927, 34.058582, 45.921719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036476, 34.085022, 45.740376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407961, 0.336107, 0.848882,
		0.208487, -0.939501, 0.271791,
		0.888876, 0.066101, -0.453354,
		39.303139, 34.104855, 45.604370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239914, 33.568645, 46.293484>,  <38.680927, 34.058582, 45.921719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239914, 33.568645, 46.293484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403519, 33.884163, 46.109955>,  <39.501682, 34.073471, 45.999836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403519, 33.884163, 46.109955>,  <39.239914, 33.568645, 46.293484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403519, 33.884163, 46.109955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437197, 0.271952, 0.857264,
		0.800979, -0.551228, -0.233625,
		0.409012, 0.788790, -0.458823,
		39.526222, 34.120800, 45.972309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002571, 33.497978, 46.391502>,  <39.239914, 33.568645, 46.293484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002571, 33.497978, 46.391502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932850, 33.885433, 46.320679>,  <39.891018, 34.117908, 46.278183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932850, 33.885433, 46.320679>,  <40.002571, 33.497978, 46.391502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932850, 33.885433, 46.320679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448531, 0.238178, 0.861447,
		0.876606, 0.070735, -0.475982,
		-0.174303, 0.968642, -0.177062,
		39.880558, 34.176025, 46.267559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573082, 33.717861, 46.640934>,  <40.002571, 33.497978, 46.391502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573082, 33.717861, 46.640934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311646, 34.018238, 46.603188>,  <40.154785, 34.198463, 46.580540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311646, 34.018238, 46.603188>,  <40.573082, 33.717861, 46.640934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311646, 34.018238, 46.603188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386683, 0.438501, 0.811291,
		0.650613, 0.493762, -0.576976,
		-0.653590, 0.750943, -0.094365,
		40.115570, 34.243523, 46.574879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973461, 34.243530, 46.523388>,  <40.573082, 33.717861, 46.640934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973461, 34.243530, 46.523388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624313, 34.375973, 46.666756>,  <40.414825, 34.455441, 46.752777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624313, 34.375973, 46.666756>,  <40.973461, 34.243530, 46.523388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624313, 34.375973, 46.666756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480066, 0.451195, 0.752303,
		0.087379, 0.828728, -0.552789,
		-0.872870, 0.331110, 0.358419,
		40.362453, 34.475307, 46.774281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038807, 34.932026, 46.744572>,  <40.973461, 34.243530, 46.523388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038807, 34.932026, 46.744572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702423, 34.819675, 46.929569>,  <40.500591, 34.752266, 47.040565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702423, 34.819675, 46.929569>,  <41.038807, 34.932026, 46.744572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702423, 34.819675, 46.929569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273514, 0.516838, 0.811214,
		-0.466882, 0.808696, -0.357816,
		-0.840958, -0.280874, 0.462492,
		40.450134, 34.735413, 47.068317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673286, 35.559040, 47.000729>,  <41.038807, 34.932026, 46.744572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673286, 35.559040, 47.000729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530518, 35.253773, 47.216202>,  <40.444855, 35.070610, 47.345486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530518, 35.253773, 47.216202>,  <40.673286, 35.559040, 47.000729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530518, 35.253773, 47.216202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195469, 0.502877, 0.841966,
		-0.913453, 0.405814, -0.030313,
		-0.356925, -0.763171, 0.538678,
		40.423439, 35.024822, 47.377804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300541, 35.832512, 47.648563>,  <40.673286, 35.559040, 47.000729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300541, 35.832512, 47.648563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427513, 35.458832, 47.713680>,  <40.503696, 35.234623, 47.752750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427513, 35.458832, 47.713680>,  <40.300541, 35.832512, 47.648563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427513, 35.458832, 47.713680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515329, 0.314056, 0.797374,
		-0.796035, -0.169220, 0.581113,
		0.317434, -0.934202, 0.162795,
		40.522743, 35.178570, 47.762520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922707, 36.486645, 47.669067>,  <40.300541, 35.832512, 47.648563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922707, 36.486645, 47.669067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231960, 36.724873, 47.581825>,  <40.417511, 36.867809, 47.529480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231960, 36.724873, 47.581825>,  <39.922707, 36.486645, 47.669067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231960, 36.724873, 47.581825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287878, 0.023098, -0.957389,
		-0.565152, 0.802973, 0.189309,
		0.773130, 0.595568, -0.218105,
		40.463898, 36.903542, 47.516396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689709, 37.125622, 47.337337>,  <39.922707, 36.486645, 47.669067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689709, 37.125622, 47.337337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070396, 37.065208, 47.230442>,  <40.298809, 37.028961, 47.166306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070396, 37.065208, 47.230442>,  <39.689709, 37.125622, 47.337337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070396, 37.065208, 47.230442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240837, 0.172424, -0.955127,
		0.190332, 0.973375, 0.127726,
		0.951720, -0.151030, -0.267243,
		40.355911, 37.019897, 47.150269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845417, 37.559139, 46.843357>,  <39.689709, 37.125622, 47.337337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845417, 37.559139, 46.843357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140732, 37.300388, 46.766960>,  <40.317921, 37.145138, 46.721123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140732, 37.300388, 46.766960>,  <39.845417, 37.559139, 46.843357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140732, 37.300388, 46.766960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075133, 0.202533, -0.976389,
		0.670290, 0.735204, 0.100925,
		0.738286, -0.646881, -0.190994,
		40.362217, 37.106323, 46.709663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230358, 37.870358, 46.350372>,  <39.845417, 37.559139, 46.843357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230358, 37.870358, 46.350372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349152, 37.489086, 46.327560>,  <40.420429, 37.260323, 46.313873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349152, 37.489086, 46.327560>,  <40.230358, 37.870358, 46.350372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349152, 37.489086, 46.327560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003464, 0.060798, -0.998144,
		0.954876, 0.296236, 0.021358,
		0.296985, -0.953178, -0.057029,
		40.438248, 37.203133, 46.310452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799725, 37.843212, 45.861549>,  <40.230358, 37.870358, 46.350372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799725, 37.843212, 45.861549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620449, 37.485687, 45.867584>,  <40.512882, 37.271172, 45.871204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620449, 37.485687, 45.867584>,  <40.799725, 37.843212, 45.861549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620449, 37.485687, 45.867584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048885, -0.041354, -0.997948,
		0.892601, -0.446532, 0.062228,
		-0.448189, -0.893812, 0.015084,
		40.485992, 37.217545, 45.872108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220486, 37.526932, 45.316265>,  <40.799725, 37.843212, 45.861549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220486, 37.526932, 45.316265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890060, 37.315861, 45.395443>,  <40.691807, 37.189220, 45.442947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890060, 37.315861, 45.395443>,  <41.220486, 37.526932, 45.316265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890060, 37.315861, 45.395443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210299, -0.037247, -0.976927,
		0.522872, -0.848630, -0.080202,
		-0.826062, -0.527674, 0.197941,
		40.642242, 37.157558, 45.454826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247169, 36.941063, 44.927780>,  <41.220486, 37.526932, 45.316265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247169, 36.941063, 44.927780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858833, 36.959820, 45.021816>,  <40.625832, 36.971073, 45.078239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858833, 36.959820, 45.021816>,  <41.247169, 36.941063, 44.927780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858833, 36.959820, 45.021816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239649, -0.214333, -0.946905,
		0.005985, -0.975634, 0.219321,
		-0.970841, 0.046893, 0.235092,
		40.567581, 36.973888, 45.092342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987194, 36.496513, 44.438419>,  <41.247169, 36.941063, 44.927780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987194, 36.496513, 44.438419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648514, 36.659195, 44.575649>,  <40.445305, 36.756802, 44.657986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648514, 36.659195, 44.575649>,  <40.987194, 36.496513, 44.438419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648514, 36.659195, 44.575649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365672, 0.023600, -0.930445,
		-0.386510, -0.913256, 0.128737,
		-0.846696, 0.406701, 0.343074,
		40.394505, 36.781204, 44.678570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379387, 36.136749, 44.177204>,  <40.987194, 36.496513, 44.438419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379387, 36.136749, 44.177204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266735, 36.506863, 44.278824>,  <40.199146, 36.728931, 44.339794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266735, 36.506863, 44.278824>,  <40.379387, 36.136749, 44.177204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266735, 36.506863, 44.278824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403549, 0.125990, -0.906242,
		-0.870537, -0.357740, 0.337915,
		-0.281625, 0.925283, 0.254045,
		40.182247, 36.784447, 44.355038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679409, 36.149677, 43.941639>,  <40.379387, 36.136749, 44.177204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679409, 36.149677, 43.941639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768192, 36.538158, 43.976280>,  <39.821461, 36.771248, 43.997063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768192, 36.538158, 43.976280>,  <39.679409, 36.149677, 43.941639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768192, 36.538158, 43.976280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327371, 0.157886, -0.931612,
		-0.918458, 0.178425, 0.352987,
		0.221954, 0.971204, 0.086600,
		39.834778, 36.829521, 44.002262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119240, 36.591438, 43.649578>,  <39.679409, 36.149677, 43.941639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119240, 36.591438, 43.649578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468491, 36.784019, 43.618973>,  <39.678040, 36.899570, 43.600609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468491, 36.784019, 43.618973>,  <39.119240, 36.591438, 43.649578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468491, 36.784019, 43.618973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118167, 0.056745, -0.991371,
		-0.472961, 0.874631, 0.106437,
		0.873123, 0.481457, -0.076514,
		39.730427, 36.928455, 43.596020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068630, 37.111267, 43.160267>,  <39.119240, 36.591438, 43.649578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068630, 37.111267, 43.160267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468067, 37.119705, 43.179768>,  <39.707729, 37.124767, 43.191467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468067, 37.119705, 43.179768>,  <39.068630, 37.111267, 43.160267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468067, 37.119705, 43.179768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040708, 0.285732, -0.957445,
		-0.034132, 0.958077, 0.284469,
		0.998588, 0.021099, 0.048754,
		39.767643, 37.126034, 43.194393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192066, 37.669575, 42.796833>,  <39.068630, 37.111267, 43.160267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192066, 37.669575, 42.796833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545601, 37.482841, 42.808823>,  <39.757721, 37.370804, 42.816017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545601, 37.482841, 42.808823>,  <39.192066, 37.669575, 42.796833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545601, 37.482841, 42.808823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116698, 0.157991, -0.980520,
		0.453001, 0.870120, 0.194117,
		0.883839, -0.466830, 0.029971,
		39.810753, 37.342793, 42.817814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764149, 38.082745, 42.342098>,  <39.192066, 37.669575, 42.796833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764149, 38.082745, 42.342098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882954, 37.703918, 42.390850>,  <39.954235, 37.476624, 42.420101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882954, 37.703918, 42.390850>,  <39.764149, 38.082745, 42.342098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882954, 37.703918, 42.390850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254548, -0.044496, -0.966036,
		0.920320, 0.317949, 0.227857,
		0.297011, -0.947063, 0.121884,
		39.972057, 37.419800, 42.427414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417934, 38.035984, 42.025784>,  <39.764149, 38.082745, 42.342098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417934, 38.035984, 42.025784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273106, 37.663639, 42.006157>,  <40.186207, 37.440231, 41.994381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273106, 37.663639, 42.006157>,  <40.417934, 38.035984, 42.025784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273106, 37.663639, 42.006157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318728, -0.074164, -0.944940,
		0.875966, -0.357776, 0.323543,
		-0.362072, -0.930858, -0.049068,
		40.164482, 37.384380, 41.991436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901855, 37.740021, 41.634521>,  <40.417934, 38.035984, 42.025784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901855, 37.740021, 41.634521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572727, 37.513428, 41.616325>,  <40.375252, 37.377472, 41.605408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572727, 37.513428, 41.616325>,  <40.901855, 37.740021, 41.634521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572727, 37.513428, 41.616325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182464, -0.187528, -0.965163,
		0.538218, -0.802453, 0.257664,
		-0.822817, -0.566483, -0.045488,
		40.325882, 37.343483, 41.602680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060501, 37.206696, 41.259850>,  <40.901855, 37.740021, 41.634521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060501, 37.206696, 41.259850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661854, 37.199429, 41.227795>,  <40.422665, 37.195068, 41.208561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661854, 37.199429, 41.227795>,  <41.060501, 37.206696, 41.259850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661854, 37.199429, 41.227795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082105, -0.259340, -0.962290,
		-0.003300, -0.965615, 0.259955,
		-0.996618, -0.018168, -0.080137,
		40.362869, 37.193977, 41.203754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916737, 36.527920, 40.988232>,  <41.060501, 37.206696, 41.259850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916737, 36.527920, 40.988232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582394, 36.732159, 40.907600>,  <40.381786, 36.854702, 40.859222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582394, 36.732159, 40.907600>,  <40.916737, 36.527920, 40.988232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582394, 36.732159, 40.907600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078357, -0.474430, -0.876799,
		-0.543326, -0.717083, 0.436564,
		-0.835857, 0.510596, -0.201582,
		40.331635, 36.885338, 40.847126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377113, 36.058384, 40.607002>,  <40.916737, 36.527920, 40.988232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377113, 36.058384, 40.607002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244530, 36.430531, 40.544319>,  <40.164978, 36.653816, 40.506710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244530, 36.430531, 40.544319>,  <40.377113, 36.058384, 40.607002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244530, 36.430531, 40.544319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125387, -0.208062, -0.970045,
		-0.935099, -0.301886, 0.185621,
		-0.331463, 0.930363, -0.156706,
		40.145092, 36.709641, 40.497307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715359, 36.034779, 40.237602>,  <40.377113, 36.058384, 40.607002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715359, 36.034779, 40.237602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868191, 36.394764, 40.153625>,  <39.959888, 36.610756, 40.103241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868191, 36.394764, 40.153625>,  <39.715359, 36.034779, 40.237602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868191, 36.394764, 40.153625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257207, -0.114640, -0.959532,
		-0.887614, 0.420617, 0.187676,
		0.382080, 0.899966, -0.209942,
		39.982815, 36.664753, 40.090641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213085, 36.380024, 39.852303>,  <39.715359, 36.034779, 40.237602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213085, 36.380024, 39.852303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554070, 36.561356, 39.748142>,  <39.758659, 36.670155, 39.685646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554070, 36.561356, 39.748142>,  <39.213085, 36.380024, 39.852303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554070, 36.561356, 39.748142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298370, 0.012864, -0.954363,
		-0.429286, 0.891253, 0.146224,
		0.852460, 0.453324, -0.260401,
		39.809807, 36.697353, 39.670021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076893, 36.912045, 39.269108>,  <39.213085, 36.380024, 39.852303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076893, 36.912045, 39.269108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458462, 36.800797, 39.224060>,  <39.687405, 36.734047, 39.197033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458462, 36.800797, 39.224060>,  <39.076893, 36.912045, 39.269108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458462, 36.800797, 39.224060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087294, 0.101862, -0.990961,
		0.287078, 0.955130, 0.072890,
		0.953921, -0.278120, -0.112620,
		39.744637, 36.717361, 39.190273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221046, 37.379974, 38.722569>,  <39.076893, 36.912045, 39.269108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221046, 37.379974, 38.722569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515182, 37.109463, 38.740086>,  <39.691666, 36.947155, 38.750595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515182, 37.109463, 38.740086>,  <39.221046, 37.379974, 38.722569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515182, 37.109463, 38.740086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083533, 0.026323, -0.996157,
		0.672526, 0.736176, 0.075847,
		0.735344, -0.676278, 0.043792,
		39.735786, 36.906578, 38.753223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731464, 37.633144, 38.300110>,  <39.221046, 37.379974, 38.722569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731464, 37.633144, 38.300110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801857, 37.242149, 38.346668>,  <39.844093, 37.007553, 38.374603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801857, 37.242149, 38.346668>,  <39.731464, 37.633144, 38.300110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801857, 37.242149, 38.346668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038368, -0.124967, -0.991419,
		0.983646, 0.170004, -0.059496,
		0.175980, -0.977488, 0.116400,
		39.854652, 36.948902, 38.381588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255577, 37.464230, 37.777340>,  <39.731464, 37.633144, 38.300110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255577, 37.464230, 37.777340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126381, 37.101181, 37.884602>,  <40.048862, 36.883354, 37.948959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126381, 37.101181, 37.884602>,  <40.255577, 37.464230, 37.777340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126381, 37.101181, 37.884602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291289, -0.364923, -0.884297,
		0.900460, -0.207508, 0.382246,
		-0.322989, -0.907619, 0.268154,
		40.029484, 36.828896, 37.965046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788452, 36.990173, 37.736748>,  <40.255577, 37.464230, 37.777340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788452, 36.990173, 37.736748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444107, 36.796471, 37.674259>,  <40.237499, 36.680248, 37.636765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444107, 36.796471, 37.674259>,  <40.788452, 36.990173, 37.736748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444107, 36.796471, 37.674259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321226, -0.279108, -0.904938,
		0.394617, -0.829215, 0.395830,
		-0.860867, -0.484254, -0.156225,
		40.185848, 36.651196, 37.627392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938332, 36.250435, 37.518028>,  <40.788452, 36.990173, 37.736748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938332, 36.250435, 37.518028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556599, 36.302223, 37.410328>,  <40.327560, 36.333298, 37.345707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556599, 36.302223, 37.410328>,  <40.938332, 36.250435, 37.518028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556599, 36.302223, 37.410328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203712, -0.377232, -0.903437,
		-0.218536, -0.917024, 0.333629,
		-0.954329, 0.129469, -0.269247,
		40.270302, 36.341064, 37.329552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889545, 35.664627, 37.162884>,  <40.938332, 36.250435, 37.518028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889545, 35.664627, 37.162884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573914, 35.883797, 37.051796>,  <40.384533, 36.015297, 36.985142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573914, 35.883797, 37.051796>,  <40.889545, 35.664627, 37.162884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573914, 35.883797, 37.051796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079701, -0.356962, -0.930712,
		-0.609096, -0.756543, 0.238003,
		-0.789082, 0.547924, -0.277721,
		40.337189, 36.048172, 36.968479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309494, 35.246647, 36.779083>,  <40.889545, 35.664627, 37.162884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309494, 35.246647, 36.779083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273193, 35.628544, 36.665787>,  <40.251411, 35.857681, 36.597809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273193, 35.628544, 36.665787>,  <40.309494, 35.246647, 36.779083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273193, 35.628544, 36.665787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075109, -0.277042, -0.957918,
		-0.993037, -0.108207, -0.046567,
		-0.090753, 0.954746, -0.283240,
		40.245968, 35.914967, 36.580814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954102, 35.169327, 36.224499>,  <40.309494, 35.246647, 36.779083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954102, 35.169327, 36.224499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064083, 35.553036, 36.198574>,  <40.130070, 35.783260, 36.183018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064083, 35.553036, 36.198574>,  <39.954102, 35.169327, 36.224499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064083, 35.553036, 36.198574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021759, -0.073604, -0.997050,
		-0.961212, 0.272728, -0.041110,
		0.274950, 0.959271, -0.064815,
		40.146568, 35.840816, 36.179131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501984, 35.428551, 35.630199>,  <39.954102, 35.169327, 36.224499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501984, 35.428551, 35.630199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807545, 35.680115, 35.688068>,  <39.990883, 35.831051, 35.722790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807545, 35.680115, 35.688068>,  <39.501984, 35.428551, 35.630199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807545, 35.680115, 35.688068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058984, 0.291290, -0.954815,
		-0.642631, 0.720852, 0.259612,
		0.763902, 0.628906, 0.144673,
		40.036716, 35.868786, 35.731472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318069, 36.096653, 35.385826>,  <39.501984, 35.428551, 35.630199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318069, 36.096653, 35.385826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717068, 36.070805, 35.374348>,  <39.956467, 36.055294, 35.367462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717068, 36.070805, 35.374348>,  <39.318069, 36.096653, 35.385826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717068, 36.070805, 35.374348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008519, 0.293001, -0.956074,
		0.070192, 0.953925, 0.291718,
		0.997497, -0.064624, -0.028692,
		40.016315, 36.051418, 35.365742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415997, 36.643524, 35.095406>,  <39.318069, 36.096653, 35.385826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415997, 36.643524, 35.095406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783371, 36.486935, 35.072678>,  <40.003796, 36.392979, 35.059040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783371, 36.486935, 35.072678>,  <39.415997, 36.643524, 35.095406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783371, 36.486935, 35.072678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108007, 0.386355, -0.916005,
		0.380547, 0.835151, 0.397123,
		0.918432, -0.391475, -0.056824,
		40.058899, 36.369492, 35.055630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861092, 37.196609, 34.901024>,  <39.415997, 36.643524, 35.095406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861092, 37.196609, 34.901024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016872, 36.847374, 34.783699>,  <40.110340, 36.637833, 34.713303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016872, 36.847374, 34.783699>,  <39.861092, 37.196609, 34.901024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016872, 36.847374, 34.783699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120906, 0.364166, -0.923453,
		0.913076, 0.324179, 0.247388,
		0.389454, -0.873093, -0.293316,
		40.133709, 36.585445, 34.695705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409836, 37.324890, 34.466114>,  <39.861092, 37.196609, 34.901024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409836, 37.324890, 34.466114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336143, 36.944897, 34.365250>,  <40.291927, 36.716900, 34.304729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336143, 36.944897, 34.365250>,  <40.409836, 37.324890, 34.466114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336143, 36.944897, 34.365250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379437, 0.167925, -0.909851,
		0.906689, -0.263306, 0.329521,
		-0.184235, -0.949985, -0.252164,
		40.280872, 36.659901, 34.289600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023952, 37.143353, 34.105556>,  <40.409836, 37.324890, 34.466114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023952, 37.143353, 34.105556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740852, 36.877964, 34.008484>,  <40.570992, 36.718731, 33.950241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740852, 36.877964, 34.008484>,  <41.023952, 37.143353, 34.105556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740852, 36.877964, 34.008484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287363, 0.043444, -0.956836,
		0.645379, -0.746936, 0.159910,
		-0.707748, -0.663475, -0.242679,
		40.528526, 36.678921, 33.935680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316486, 36.628387, 33.613670>,  <41.023952, 37.143353, 34.105556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316486, 36.628387, 33.613670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920231, 36.668999, 33.577183>,  <40.682476, 36.693367, 33.555290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920231, 36.668999, 33.577183>,  <41.316486, 36.628387, 33.613670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920231, 36.668999, 33.577183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090795, -0.008838, -0.995830,
		-0.101917, -0.994793, -0.000464,
		-0.990641, 0.101535, -0.091223,
		40.623039, 36.699459, 33.549816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217121, 36.334179, 32.991238>,  <41.316486, 36.628387, 33.613670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217121, 36.334179, 32.991238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864353, 36.512501, 33.052532>,  <40.652695, 36.619492, 33.089310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864353, 36.512501, 33.052532>,  <41.217121, 36.334179, 32.991238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864353, 36.512501, 33.052532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122883, 0.531239, -0.838263,
		-0.455106, -0.720449, -0.523290,
		-0.881918, 0.445802, 0.153239,
		40.599777, 36.646240, 33.098503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394608, 35.650982, 32.896809>,  <41.217121, 36.334179, 32.991238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394608, 35.650982, 32.896809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788986, 35.585201, 32.885006>,  <42.025612, 35.545734, 32.877926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788986, 35.585201, 32.885006>,  <41.394608, 35.650982, 32.896809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788986, 35.585201, 32.885006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057751, -0.501142, 0.863436,
		-0.156779, -0.849595, -0.503596,
		0.985943, -0.164452, -0.029503,
		42.084770, 35.535866, 32.876156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404202, 34.978737, 32.962181>,  <41.394608, 35.650982, 32.896809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404202, 34.978737, 32.962181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754372, 35.140896, 33.067463>,  <41.964474, 35.238194, 33.130630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754372, 35.140896, 33.067463>,  <41.404202, 34.978737, 32.962181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754372, 35.140896, 33.067463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074873, -0.424231, 0.902453,
		0.477514, -0.809740, -0.341031,
		0.875428, 0.405400, 0.263204,
		42.017002, 35.262516, 33.146423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984890, 34.471535, 33.155750>,  <41.404202, 34.978737, 32.962181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984890, 34.471535, 33.155750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979946, 34.809715, 33.369316>,  <41.976978, 35.012623, 33.497456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979946, 34.809715, 33.369316>,  <41.984890, 34.471535, 33.155750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979946, 34.809715, 33.369316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042679, -0.533913, 0.844462,
		0.999012, -0.012349, 0.042682,
		-0.012360, 0.845449, 0.533913,
		41.976238, 35.063351, 33.529491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515594, 34.447605, 33.650925>,  <41.984890, 34.471535, 33.155750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515594, 34.447605, 33.650925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241608, 34.691036, 33.811153>,  <42.077217, 34.837093, 33.907291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241608, 34.691036, 33.811153>,  <42.515594, 34.447605, 33.650925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241608, 34.691036, 33.811153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131203, -0.437781, 0.889457,
		0.716664, 0.661804, 0.220018,
		-0.684966, 0.608575, 0.400572,
		42.036118, 34.873608, 33.931324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764046, 34.704880, 34.269024>,  <42.515594, 34.447605, 33.650925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764046, 34.704880, 34.269024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366489, 34.660954, 34.273479>,  <42.127956, 34.634598, 34.276154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366489, 34.660954, 34.273479>,  <42.764046, 34.704880, 34.269024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366489, 34.660954, 34.273479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073500, -0.583111, 0.809061,
		-0.082354, 0.804936, 0.587619,
		-0.993889, -0.109820, 0.011142,
		42.068321, 34.628006, 34.276821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916687, 35.033894, 34.977203>,  <42.764046, 34.704880, 34.269024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916687, 35.033894, 34.977203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089058, 35.291801, 35.229733>,  <43.192482, 35.446545, 35.381252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089058, 35.291801, 35.229733>,  <42.916687, 35.033894, 34.977203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089058, 35.291801, 35.229733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047959, 0.682267, -0.729529,
		-0.901112, 0.344651, 0.263084,
		0.430926, 0.644770, 0.631328,
		43.218334, 35.485233, 35.419132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542053, 35.737144, 34.949486>,  <42.916687, 35.033894, 34.977203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542053, 35.737144, 34.949486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927937, 35.748508, 35.054203>,  <43.159466, 35.755325, 35.117035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927937, 35.748508, 35.054203>,  <42.542053, 35.737144, 34.949486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927937, 35.748508, 35.054203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184737, 0.635459, -0.749709,
		-0.187657, 0.771612, 0.607783,
		0.964706, 0.028408, 0.261793,
		43.217350, 35.757030, 35.132740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779530, 36.366005, 34.868011>,  <42.542053, 35.737144, 34.949486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779530, 36.366005, 34.868011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118710, 36.155155, 34.845661>,  <43.322216, 36.028645, 34.832253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118710, 36.155155, 34.845661>,  <42.779530, 36.366005, 34.868011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118710, 36.155155, 34.845661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261211, 0.507249, -0.821259,
		0.461247, 0.681792, 0.567813,
		0.847950, -0.527123, -0.055876,
		43.373096, 35.997017, 34.828899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242191, 36.804085, 34.765656>,  <42.779530, 36.366005, 34.868011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242191, 36.804085, 34.765656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391430, 36.462383, 34.620853>,  <43.480972, 36.257362, 34.533970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391430, 36.462383, 34.620853>,  <43.242191, 36.804085, 34.765656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391430, 36.462383, 34.620853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239776, 0.465707, -0.851836,
		0.896273, 0.231016, 0.378583,
		0.373097, -0.854253, -0.362008,
		43.503361, 36.206108, 34.512253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878956, 36.973274, 34.464256>,  <43.242191, 36.804085, 34.765656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878956, 36.973274, 34.464256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757122, 36.642769, 34.274723>,  <43.684021, 36.444466, 34.161003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757122, 36.642769, 34.274723>,  <43.878956, 36.973274, 34.464256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757122, 36.642769, 34.274723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230309, 0.418824, -0.878376,
		0.924222, -0.376669, 0.062728,
		-0.304585, -0.826261, -0.473836,
		43.665745, 36.394890, 34.132572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304230, 36.972893, 33.967640>,  <43.878956, 36.973274, 34.464256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304230, 36.972893, 33.967640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012608, 36.739258, 33.824913>,  <43.837635, 36.599075, 33.739277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012608, 36.739258, 33.824913>,  <44.304230, 36.972893, 33.967640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012608, 36.739258, 33.824913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177575, 0.342053, -0.922750,
		0.661017, -0.736098, -0.145657,
		-0.729057, -0.584088, -0.356816,
		43.793892, 36.564030, 33.717869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497250, 36.766960, 33.309856>,  <44.304230, 36.972893, 33.967640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497250, 36.766960, 33.309856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109718, 36.671967, 33.281647>,  <43.877201, 36.614971, 33.264721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109718, 36.671967, 33.281647>,  <44.497250, 36.766960, 33.309856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109718, 36.671967, 33.281647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004817, 0.266573, -0.963803,
		0.247678, -0.934101, -0.257121,
		-0.968831, -0.237474, -0.070524,
		43.819069, 36.600723, 33.260490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485424, 36.300819, 32.789471>,  <44.497250, 36.766960, 33.309856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485424, 36.300819, 32.789471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115948, 36.443123, 32.846375>,  <43.894264, 36.528503, 32.880516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115948, 36.443123, 32.846375>,  <44.485424, 36.300819, 32.789471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115948, 36.443123, 32.846375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101775, 0.130133, -0.986259,
		-0.369380, -0.925475, -0.083995,
		-0.923688, 0.355756, 0.142259,
		43.838840, 36.549850, 32.889053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035450, 35.864029, 32.403831>,  <44.485424, 36.300819, 32.789471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035450, 35.864029, 32.403831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853069, 36.218655, 32.435093>,  <43.743641, 36.431431, 32.453850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853069, 36.218655, 32.435093>,  <44.035450, 35.864029, 32.403831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853069, 36.218655, 32.435093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129641, 0.020712, -0.991345,
		-0.880510, -0.462140, 0.105491,
		-0.455955, 0.886565, 0.078150,
		43.716282, 36.484623, 32.458538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565735, 35.859814, 31.922586>,  <44.035450, 35.864029, 32.403831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565735, 35.859814, 31.922586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576214, 36.251984, 32.000637>,  <43.582500, 36.487286, 32.047466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576214, 36.251984, 32.000637>,  <43.565735, 35.859814, 31.922586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576214, 36.251984, 32.000637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159923, 0.196791, -0.967315,
		-0.986782, -0.005865, 0.161948,
		0.026197, 0.980428, 0.195128,
		43.584072, 36.546112, 32.059174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943310, 36.167427, 31.572332>,  <43.565735, 35.859814, 31.922586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943310, 36.167427, 31.572332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155636, 36.501034, 31.632536>,  <43.283031, 36.701199, 31.668657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155636, 36.501034, 31.632536>,  <42.943310, 36.167427, 31.572332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155636, 36.501034, 31.632536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134506, 0.258249, -0.956669,
		-0.836746, 0.487569, 0.249262,
		0.530814, 0.834017, 0.150508,
		43.314880, 36.751240, 31.677689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573673, 36.816833, 31.249643>,  <42.943310, 36.167427, 31.572332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573673, 36.816833, 31.249643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963287, 36.902348, 31.279455>,  <43.197056, 36.953655, 31.297342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963287, 36.902348, 31.279455>,  <42.573673, 36.816833, 31.249643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963287, 36.902348, 31.279455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011306, 0.282846, -0.959099,
		-0.226124, 0.935036, 0.273084,
		0.974033, 0.213788, 0.074530,
		43.255497, 36.966484, 31.301813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640625, 37.515057, 31.080025>,  <42.573673, 36.816833, 31.249643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640625, 37.515057, 31.080025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988293, 37.339863, 30.988180>,  <43.196892, 37.234745, 30.933073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988293, 37.339863, 30.988180>,  <42.640625, 37.515057, 31.080025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988293, 37.339863, 30.988180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158525, 0.193037, -0.968301,
		0.468423, 0.878014, 0.098350,
		0.869166, -0.437983, -0.229610,
		43.249043, 37.208469, 30.919296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869835, 37.929111, 30.531456>,  <42.640625, 37.515057, 31.080025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869835, 37.929111, 30.531456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091217, 37.597908, 30.495501>,  <43.224049, 37.399185, 30.473927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091217, 37.597908, 30.495501>,  <42.869835, 37.929111, 30.531456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091217, 37.597908, 30.495501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001722, 0.106791, -0.994280,
		0.832875, 0.550447, 0.057679,
		0.553458, -0.828012, -0.089891,
		43.257256, 37.349503, 30.468533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242081, 38.028641, 29.941031>,  <42.869835, 37.929111, 30.531456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242081, 38.028641, 29.941031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316452, 37.637295, 29.977333>,  <43.361076, 37.402489, 29.999115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316452, 37.637295, 29.977333>,  <43.242081, 38.028641, 29.941031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316452, 37.637295, 29.977333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049768, -0.082873, -0.995317,
		0.981302, 0.189576, 0.033283,
		0.185930, -0.978362, 0.090759,
		43.372231, 37.343784, 30.004560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831722, 37.911068, 29.619413>,  <43.242081, 38.028641, 29.941031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831722, 37.911068, 29.619413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661026, 37.549931, 29.640474>,  <43.558609, 37.333248, 29.653111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661026, 37.549931, 29.640474>,  <43.831722, 37.911068, 29.619413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661026, 37.549931, 29.640474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135235, -0.121269, -0.983364,
		0.894208, -0.412517, 0.173846,
		-0.426737, -0.902842, 0.052653,
		43.533005, 37.279079, 29.656271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110031, 37.568939, 29.022690>,  <43.831722, 37.911068, 29.619413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110031, 37.568939, 29.022690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819046, 37.307095, 29.104937>,  <43.644455, 37.149986, 29.154285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819046, 37.307095, 29.104937>,  <44.110031, 37.568939, 29.022690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819046, 37.307095, 29.104937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008697, -0.290852, -0.956729,
		0.686090, -0.697775, 0.205892,
		-0.727465, -0.654611, 0.205619,
		43.600807, 37.110710, 29.166622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280590, 36.960964, 28.674608>,  <44.110031, 37.568939, 29.022690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280590, 36.960964, 28.674608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887821, 36.902992, 28.723322>,  <43.652161, 36.868210, 28.752550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887821, 36.902992, 28.723322>,  <44.280590, 36.960964, 28.674608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887821, 36.902992, 28.723322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005785, -0.620067, -0.784528,
		0.189213, -0.771047, 0.608017,
		-0.981919, -0.144926, 0.121785,
		43.593246, 36.859516, 28.759857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226242, 36.246323, 28.372972>,  <44.280590, 36.960964, 28.674608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226242, 36.246323, 28.372972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863892, 36.412106, 28.407862>,  <43.646481, 36.511574, 28.428795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863892, 36.412106, 28.407862>,  <44.226242, 36.246323, 28.372972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863892, 36.412106, 28.407862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341181, -0.592075, -0.730097,
		-0.250948, -0.691141, 0.677753,
		-0.905881, 0.414453, 0.087224,
		43.592129, 36.536442, 28.434029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783665, 35.806274, 28.275993>,  <44.226242, 36.246323, 28.372972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783665, 35.806274, 28.275993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539051, 36.114693, 28.204979>,  <43.392284, 36.299744, 28.162371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539051, 36.114693, 28.204979>,  <43.783665, 35.806274, 28.275993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539051, 36.114693, 28.204979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343454, -0.460824, -0.818340,
		-0.712790, -0.439466, 0.546626,
		-0.611531, 0.771046, -0.177534,
		43.355591, 36.346004, 28.151718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049671, 35.550873, 28.127445>,  <43.783665, 35.806274, 28.275993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049671, 35.550873, 28.127445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095276, 35.903465, 27.944147>,  <43.122639, 36.115021, 27.834167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095276, 35.903465, 27.944147>,  <43.049671, 35.550873, 28.127445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095276, 35.903465, 27.944147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472763, -0.357544, -0.805392,
		-0.873783, 0.308465, 0.375969,
		0.114010, 0.881482, -0.458247,
		43.129478, 36.167912, 27.806673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442669, 35.408306, 27.790564>,  <43.049671, 35.550873, 28.127445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442669, 35.408306, 27.790564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645092, 35.716721, 27.635950>,  <42.766548, 35.901768, 27.543182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645092, 35.716721, 27.635950>,  <42.442669, 35.408306, 27.790564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645092, 35.716721, 27.635950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148976, -0.363282, -0.919691,
		-0.849533, 0.523006, -0.068978,
		0.506063, 0.771033, -0.386535,
		42.796909, 35.948029, 27.519989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072788, 35.713535, 27.214767>,  <42.442669, 35.408306, 27.790564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072788, 35.713535, 27.214767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437046, 35.865036, 27.148710>,  <42.655602, 35.955936, 27.109076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437046, 35.865036, 27.148710>,  <42.072788, 35.713535, 27.214767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437046, 35.865036, 27.148710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131893, -0.112313, -0.984881,
		-0.391574, 0.918657, -0.052322,
		0.910645, 0.378753, -0.165143,
		42.710239, 35.978661, 27.099167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108822, 36.269382, 26.671759>,  <42.072788, 35.713535, 27.214767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108822, 36.269382, 26.671759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471634, 36.100956, 26.671606>,  <42.689320, 35.999901, 26.671515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471634, 36.100956, 26.671606>,  <42.108822, 36.269382, 26.671759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471634, 36.100956, 26.671606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169142, -0.363530, -0.916099,
		0.385597, 0.830994, -0.400953,
		0.907031, -0.421063, -0.000380,
		42.743744, 35.974636, 26.671492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241924, 36.163311, 26.072571>,  <42.108822, 36.269382, 26.671759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241924, 36.163311, 26.072571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546555, 35.932701, 26.190971>,  <42.729332, 35.794334, 26.262012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546555, 35.932701, 26.190971>,  <42.241924, 36.163311, 26.072571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546555, 35.932701, 26.190971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153074, -0.603840, -0.782270,
		0.629739, 0.550447, -0.548121,
		0.761575, -0.576529, 0.296003,
		42.775028, 35.759743, 26.279772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550568, 35.852703, 25.527050>,  <42.241924, 36.163311, 26.072571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550568, 35.852703, 25.527050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622250, 35.607189, 25.834597>,  <42.665257, 35.459881, 26.019125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622250, 35.607189, 25.834597>,  <42.550568, 35.852703, 25.527050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622250, 35.607189, 25.834597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086114, -0.788304, -0.609230,
		0.980036, 0.042965, -0.194121,
		0.179202, -0.613784, 0.768867,
		42.676010, 35.423054, 26.065256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890675, 35.343460, 25.249825>,  <42.550568, 35.852703, 25.527050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890675, 35.343460, 25.249825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732552, 35.181423, 25.579584>,  <42.637676, 35.084202, 25.777439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732552, 35.181423, 25.579584>,  <42.890675, 35.343460, 25.249825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732552, 35.181423, 25.579584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320954, -0.780014, -0.537184,
		0.860649, -0.476948, 0.178333,
		-0.395311, -0.405090, 0.824397,
		42.613956, 35.059895, 25.826904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061356, 34.650074, 25.294905>,  <42.890675, 35.343460, 25.249825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061356, 34.650074, 25.294905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743626, 34.627319, 25.536837>,  <42.552990, 34.613667, 25.681995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743626, 34.627319, 25.536837>,  <43.061356, 34.650074, 25.294905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743626, 34.627319, 25.536837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287611, -0.841741, -0.456893,
		0.535101, -0.536875, 0.652252,
		-0.794322, -0.056889, 0.604828,
		42.505329, 34.610252, 25.718285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013077, 34.038700, 25.673519>,  <43.061356, 34.650074, 25.294905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013077, 34.038700, 25.673519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653999, 34.185677, 25.576248>,  <42.438553, 34.273861, 25.517885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653999, 34.185677, 25.576248>,  <43.013077, 34.038700, 25.673519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653999, 34.185677, 25.576248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213772, -0.845785, -0.488824,
		-0.385290, -0.386829, 0.837804,
		-0.897693, 0.367438, -0.243179,
		42.384693, 34.295906, 25.503294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308914, 33.615795, 25.870474>,  <43.013077, 34.038700, 25.673519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308914, 33.615795, 25.870474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287991, 33.834610, 25.536285>,  <42.275436, 33.965900, 25.335773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287991, 33.834610, 25.536285>,  <42.308914, 33.615795, 25.870474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287991, 33.834610, 25.536285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110831, -0.834627, -0.539550,
		-0.992462, 0.064374, 0.104285,
		-0.052306, 0.547041, -0.835470,
		42.272297, 33.998722, 25.285645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366516, 32.910133, 25.507147>,  <42.308914, 33.615795, 25.870474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366516, 32.910133, 25.507147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730362, 33.061382, 25.438303>,  <42.948669, 33.152134, 25.396996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730362, 33.061382, 25.438303>,  <42.366516, 32.910133, 25.507147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730362, 33.061382, 25.438303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058016, 0.294604, 0.953857,
		0.411384, -0.877627, 0.246038,
		0.909614, 0.378127, -0.172112,
		43.003246, 33.174820, 25.386669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022362, 32.671387, 25.875423>,  <42.366516, 32.910133, 25.507147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022362, 32.671387, 25.875423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081696, 33.055187, 25.779629>,  <43.117294, 33.285469, 25.722153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081696, 33.055187, 25.779629>,  <43.022362, 32.671387, 25.875423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081696, 33.055187, 25.779629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444023, 0.151766, 0.883069,
		0.883653, -0.237323, -0.403530,
		0.148330, 0.959503, -0.239485,
		43.126194, 33.343037, 25.707783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764042, 32.941895, 26.047775>,  <43.022362, 32.671387, 25.875423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764042, 32.941895, 26.047775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496632, 33.239311, 26.041876>,  <43.336185, 33.417763, 26.038336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496632, 33.239311, 26.041876>,  <43.764042, 32.941895, 26.047775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496632, 33.239311, 26.041876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323352, 0.308475, 0.894587,
		0.669712, 0.593288, -0.446650,
		-0.668528, 0.743541, -0.014748,
		43.296074, 33.462372, 26.037451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418571, 33.202503, 26.144497>,  <43.764042, 32.941895, 26.047775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418571, 33.202503, 26.144497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062222, 33.363770, 26.228216>,  <43.848412, 33.460529, 26.278448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062222, 33.363770, 26.228216>,  <44.418571, 33.202503, 26.144497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062222, 33.363770, 26.228216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396485, 0.465259, 0.791412,
		0.221690, 0.788032, -0.574334,
		-0.890872, 0.403163, 0.209300,
		43.794960, 33.484718, 26.291006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826904, 33.635559, 26.554447>,  <44.418571, 33.202503, 26.144497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826904, 33.635559, 26.554447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453152, 33.654552, 26.695690>,  <44.228901, 33.665951, 26.780436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453152, 33.654552, 26.695690>,  <44.826904, 33.635559, 26.554447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453152, 33.654552, 26.695690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331733, 0.477480, 0.813613,
		-0.129966, 0.877359, -0.461899,
		-0.934378, 0.047485, 0.353105,
		44.172840, 33.668797, 26.801622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782677, 34.226650, 26.790043>,  <44.826904, 33.635559, 26.554447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782677, 34.226650, 26.790043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489677, 34.038803, 26.987181>,  <44.313877, 33.926094, 27.105463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489677, 34.038803, 26.987181>,  <44.782677, 34.226650, 26.790043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489677, 34.038803, 26.987181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341278, 0.373097, 0.862744,
		-0.589041, 0.800160, -0.113024,
		-0.732503, -0.469619, 0.492846,
		44.269928, 33.897919, 27.135035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653023, 34.689060, 27.274700>,  <44.782677, 34.226650, 26.790043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653023, 34.689060, 27.274700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503769, 34.343510, 27.410040>,  <44.414215, 34.136177, 27.491243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503769, 34.343510, 27.410040>,  <44.653023, 34.689060, 27.274700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503769, 34.343510, 27.410040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364448, 0.198895, 0.909735,
		-0.853199, 0.462765, 0.240625,
		-0.373135, -0.863880, 0.338351,
		44.391827, 34.084347, 27.511545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259132, 34.910320, 27.841959>,  <44.653023, 34.689060, 27.274700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259132, 34.910320, 27.841959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334366, 34.519268, 27.879635>,  <44.379505, 34.284637, 27.902241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334366, 34.519268, 27.879635>,  <44.259132, 34.910320, 27.841959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334366, 34.519268, 27.879635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302764, 0.148941, 0.941356,
		-0.934323, -0.148532, 0.324003,
		0.188079, -0.977627, 0.094189,
		44.390789, 34.225979, 27.907892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025867, 34.719803, 28.518623>,  <44.259132, 34.910320, 27.841959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025867, 34.719803, 28.518623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294807, 34.438240, 28.427013>,  <44.456173, 34.269302, 28.372047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294807, 34.438240, 28.427013>,  <44.025867, 34.719803, 28.518623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294807, 34.438240, 28.427013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320031, -0.002564, 0.947404,
		-0.667476, -0.710283, 0.223549,
		0.672352, -0.703912, -0.229024,
		44.496513, 34.227066, 28.358307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059334, 34.217800, 29.092133>,  <44.025867, 34.719803, 28.518623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059334, 34.217800, 29.092133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404911, 34.154842, 28.900791>,  <44.612259, 34.117065, 28.785986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404911, 34.154842, 28.900791>,  <44.059334, 34.217800, 29.092133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404911, 34.154842, 28.900791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440341, -0.224744, 0.869247,
		-0.244343, -0.961618, -0.124847,
		0.863942, -0.157419, -0.478355,
		44.664097, 34.107624, 28.757286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200760, 33.613064, 29.413136>,  <44.059334, 34.217800, 29.092133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200760, 33.613064, 29.413136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528309, 33.795521, 29.273775>,  <44.724838, 33.904995, 29.190159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528309, 33.795521, 29.273775>,  <44.200760, 33.613064, 29.413136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528309, 33.795521, 29.273775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391380, 0.000263, 0.920229,
		0.419844, -0.889909, -0.178308,
		0.818873, 0.456139, -0.348403,
		44.773972, 33.932362, 29.169254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721676, 33.287571, 29.741585>,  <44.200760, 33.613064, 29.413136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721676, 33.287571, 29.741585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890320, 33.619190, 29.594656>,  <44.991505, 33.818161, 29.506498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890320, 33.619190, 29.594656>,  <44.721676, 33.287571, 29.741585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890320, 33.619190, 29.594656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430457, 0.173546, 0.885770,
		0.798092, -0.531566, -0.283701,
		0.421610, 0.829047, -0.367322,
		45.016804, 33.867905, 29.484459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400974, 33.199646, 29.858541>,  <44.721676, 33.287571, 29.741585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400974, 33.199646, 29.858541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316727, 33.589603, 29.829649>,  <45.266178, 33.823578, 29.812313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316727, 33.589603, 29.829649>,  <45.400974, 33.199646, 29.858541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316727, 33.589603, 29.829649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354591, 0.145046, 0.923703,
		0.910992, 0.168933, -0.376239,
		-0.210615, 0.974897, -0.072233,
		45.253544, 33.882072, 29.807980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014862, 33.473412, 30.181793>,  <45.400974, 33.199646, 29.858541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014862, 33.473412, 30.181793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741089, 33.764404, 30.201086>,  <45.576824, 33.938999, 30.212662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741089, 33.764404, 30.201086>,  <46.014862, 33.473412, 30.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741089, 33.764404, 30.201086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430620, 0.349984, 0.831912,
		0.588317, 0.590159, -0.552807,
		-0.684434, 0.727478, 0.048233,
		45.535759, 33.982647, 30.215555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422306, 34.119770, 30.451031>,  <46.014862, 33.473412, 30.181793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422306, 34.119770, 30.451031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029331, 34.143242, 30.521891>,  <45.793549, 34.157326, 30.564407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029331, 34.143242, 30.521891>,  <46.422306, 34.119770, 30.451031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029331, 34.143242, 30.521891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186426, 0.351513, 0.917433,
		-0.008435, 0.934342, -0.356278,
		-0.982433, 0.058681, 0.177151,
		45.734600, 34.160847, 30.575035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434643, 34.564396, 30.923931>,  <46.422306, 34.119770, 30.451031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434643, 34.564396, 30.923931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050018, 34.455242, 30.936180>,  <45.819244, 34.389751, 30.943529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050018, 34.455242, 30.936180>,  <46.434643, 34.564396, 30.923931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050018, 34.455242, 30.936180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055556, 0.302551, 0.951513,
		-0.268915, 0.913235, -0.306081,
		-0.961560, -0.272881, 0.030625,
		45.761551, 34.373379, 30.945368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142384, 35.139515, 31.191496>,  <46.434643, 34.564396, 30.923931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142384, 35.139515, 31.191496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901234, 34.829830, 31.268576>,  <45.756542, 34.644020, 31.314823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901234, 34.829830, 31.268576>,  <46.142384, 35.139515, 31.191496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901234, 34.829830, 31.268576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137682, 0.338860, 0.930708,
		-0.785867, 0.534568, -0.310885,
		-0.602874, -0.774216, 0.192699,
		45.720371, 34.597565, 31.326385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662060, 35.395432, 31.615871>,  <46.142384, 35.139515, 31.191496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662060, 35.395432, 31.615871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.615223, 35.001884, 31.669970>,  <45.587120, 34.765755, 31.702429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.615223, 35.001884, 31.669970>,  <45.662060, 35.395432, 31.615871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615223, 35.001884, 31.669970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154546, 0.152577, 0.976133,
		-0.981022, 0.093399, -0.169919,
		-0.117096, -0.983868, 0.135247,
		45.580093, 34.706722, 31.710545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065174, 35.280464, 31.986979>,  <45.662060, 35.395432, 31.615871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065174, 35.280464, 31.986979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289227, 34.957291, 32.060188>,  <45.423656, 34.763386, 32.104115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289227, 34.957291, 32.060188>,  <45.065174, 35.280464, 31.986979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289227, 34.957291, 32.060188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006525, 0.216623, 0.976233,
		-0.828379, -0.548012, 0.116066,
		0.560131, -0.807933, 0.183022,
		45.457264, 34.714912, 32.115093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648903, 34.969109, 32.432213>,  <45.065174, 35.280464, 31.986979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648903, 34.969109, 32.432213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.006630, 34.796017, 32.477726>,  <45.221268, 34.692162, 32.505032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.006630, 34.796017, 32.477726>,  <44.648903, 34.969109, 32.432213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006630, 34.796017, 32.477726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101594, 0.051268, 0.993504,
		-0.435749, -0.900066, 0.001887,
		0.894316, -0.432727, 0.113781,
		45.274925, 34.666199, 32.511860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621872, 34.360237, 32.938179>,  <44.648903, 34.969109, 32.432213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621872, 34.360237, 32.938179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007729, 34.465668, 32.937515>,  <45.239243, 34.528927, 32.937119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007729, 34.465668, 32.937515>,  <44.621872, 34.360237, 32.938179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007729, 34.465668, 32.937515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016506, -0.054118, 0.998398,
		0.263065, -0.963119, -0.056555,
		0.964637, 0.263577, -0.001660,
		45.297119, 34.544743, 32.937016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991833, 33.820538, 33.428787>,  <44.621872, 34.360237, 32.938179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991833, 33.820538, 33.428787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202156, 34.156498, 33.374973>,  <45.328350, 34.358074, 33.342686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202156, 34.156498, 33.374973>,  <44.991833, 33.820538, 33.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202156, 34.156498, 33.374973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113338, 0.087577, 0.989689,
		0.843020, -0.535633, -0.049144,
		0.525806, 0.839897, -0.134537,
		45.359898, 34.408466, 33.334614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565060, 33.724117, 33.788300>,  <44.991833, 33.820538, 33.428787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565060, 33.724117, 33.788300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550652, 34.121754, 33.747353>,  <45.542007, 34.360336, 33.722786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550652, 34.121754, 33.747353>,  <45.565060, 33.724117, 33.788300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550652, 34.121754, 33.747353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043808, 0.103903, 0.993622,
		0.998390, 0.031311, -0.047292,
		-0.036025, 0.994094, -0.102364,
		45.539845, 34.419983, 33.716644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095249, 33.935711, 34.236267>,  <45.565060, 33.724117, 33.788300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095249, 33.935711, 34.236267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852020, 34.250565, 34.194958>,  <45.706081, 34.439476, 34.170170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852020, 34.250565, 34.194958>,  <46.095249, 33.935711, 34.236267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852020, 34.250565, 34.194958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062886, 0.177439, 0.982120,
		0.791387, 0.590705, -0.157396,
		-0.608072, 0.787136, -0.103276,
		45.669598, 34.486706, 34.163975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517437, 34.526340, 34.571621>,  <46.095249, 33.935711, 34.236267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517437, 34.526340, 34.571621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127110, 34.612362, 34.555988>,  <45.892914, 34.663975, 34.546608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127110, 34.612362, 34.555988>,  <46.517437, 34.526340, 34.571621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127110, 34.612362, 34.555988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012206, 0.232129, 0.972608,
		0.218230, 0.948615, -0.229141,
		-0.975821, 0.215050, -0.039079,
		45.834362, 34.676876, 34.544266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.117371, 34.255150, 34.753056>,  <46.517437, 34.526340, 34.571621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.117371, 34.255150, 34.753056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213959, 34.370125, 35.123798>,  <47.271912, 34.439110, 35.346245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213959, 34.370125, 35.123798>,  <47.117371, 34.255150, 34.753056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213959, 34.370125, 35.123798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701340, -0.711811, 0.038034,
		0.670683, 0.640861, -0.373472,
		0.241468, 0.287440, 0.926861,
		47.286400, 34.456356, 35.401855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716328, 34.442703, 34.711334>,  <47.117371, 34.255150, 34.753056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716328, 34.442703, 34.711334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602833, 34.272507, 35.055069>,  <47.534737, 34.170387, 35.261311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602833, 34.272507, 35.055069>,  <47.716328, 34.442703, 34.711334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.602833, 34.272507, 35.055069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693684, -0.709801, -0.122411,
		0.662040, 0.561373, 0.496551,
		-0.283734, -0.425490, 0.859333,
		47.517712, 34.144859, 35.312870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235687, 35.116261, 34.664547>,  <47.716328, 34.442703, 34.711334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235687, 35.116261, 34.664547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211571, 35.094700, 35.063236>,  <47.197102, 35.081764, 35.302448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211571, 35.094700, 35.063236>,  <47.235687, 35.116261, 34.664547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.211571, 35.094700, 35.063236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997996, -0.022464, 0.059150,
		0.019202, 0.998294, 0.055148,
		-0.060288, -0.053902, 0.996725,
		47.193485, 35.078529, 35.362255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763252, 35.379299, 34.853985>,  <47.235687, 35.116261, 34.664547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763252, 35.379299, 34.853985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688740, 35.152073, 35.174633>,  <47.644032, 35.015736, 35.367023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688740, 35.152073, 35.174633>,  <47.763252, 35.379299, 34.853985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.688740, 35.152073, 35.174633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979553, -0.044282, 0.196252,
		-0.075987, 0.821789, 0.564702,
		-0.186284, -0.568069, 0.801621,
		47.632854, 34.981651, 35.415119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.647995, 40.125893, 42.564350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434948, 39.798893, 42.652000>,  <35.307117, 39.602695, 42.704590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434948, 39.798893, 42.652000>,  <35.647995, 40.125893, 42.564350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434948, 39.798893, 42.652000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220332, -0.116050, -0.968497,
		0.817171, -0.564123, -0.118309,
		-0.532622, -0.817495, 0.219127,
		35.275162, 39.553646, 42.717739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862167, 39.708813, 42.028748>,  <35.647995, 40.125893, 42.564350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862167, 39.708813, 42.028748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520866, 39.532265, 42.139854>,  <35.316086, 39.426334, 42.206520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520866, 39.532265, 42.139854>,  <35.862167, 39.708813, 42.028748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520866, 39.532265, 42.139854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250538, -0.120211, -0.960615,
		0.457379, -0.889236, -0.008010,
		-0.853250, -0.441372, 0.277769,
		35.264893, 39.399853, 42.223186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796726, 39.184200, 41.644138>,  <35.862167, 39.708813, 42.028748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796726, 39.184200, 41.644138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419552, 39.245487, 41.762383>,  <35.193245, 39.282261, 41.833328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419552, 39.245487, 41.762383>,  <35.796726, 39.184200, 41.644138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419552, 39.245487, 41.762383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316140, -0.133382, -0.939289,
		-0.104486, -0.979150, 0.174209,
		-0.942941, 0.153217, 0.295612,
		35.136669, 39.291454, 41.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423412, 38.670231, 41.346348>,  <35.796726, 39.184200, 41.644138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423412, 38.670231, 41.346348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160229, 38.960438, 41.427055>,  <35.002319, 39.134563, 41.475479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160229, 38.960438, 41.427055>,  <35.423412, 38.670231, 41.346348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160229, 38.960438, 41.427055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333266, -0.040271, -0.941972,
		-0.675295, -0.687022, 0.268288,
		-0.657960, 0.725520, 0.201766,
		34.962841, 39.178093, 41.487587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714516, 38.436306, 41.065071>,  <35.423412, 38.670231, 41.346348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714516, 38.436306, 41.065071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.684437, 38.832363, 41.112324>,  <34.666389, 39.070000, 41.140675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.684437, 38.832363, 41.112324>,  <34.714516, 38.436306, 41.065071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684437, 38.832363, 41.112324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272015, 0.093605, -0.957729,
		-0.959350, -0.104156, 0.262295,
		-0.075201, 0.990146, 0.118132,
		34.661877, 39.129406, 41.147762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033634, 38.698059, 40.833397>,  <34.714516, 38.436306, 41.065071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033634, 38.698059, 40.833397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.242916, 39.038612, 40.848328>,  <34.368484, 39.242947, 40.857288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.242916, 39.038612, 40.848328>,  <34.033634, 38.698059, 40.833397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242916, 39.038612, 40.848328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286656, 0.217072, -0.933117,
		-0.802548, 0.477513, 0.357629,
		0.523207, 0.851388, 0.037329,
		34.399879, 39.294029, 40.859528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580765, 39.142212, 40.416176>,  <34.033634, 38.698059, 40.833397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580765, 39.142212, 40.416176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944927, 39.306957, 40.431843>,  <34.163425, 39.405804, 40.441242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944927, 39.306957, 40.431843>,  <33.580765, 39.142212, 40.416176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944927, 39.306957, 40.431843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008176, 0.076738, -0.997018,
		-0.413639, 0.908010, 0.066495,
		0.910404, 0.411861, 0.039166,
		34.218048, 39.430515, 40.443592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554760, 39.726318, 39.918564>,  <33.580765, 39.142212, 40.416176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554760, 39.726318, 39.918564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.940479, 39.636135, 39.974136>,  <34.171909, 39.582027, 40.007481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.940479, 39.636135, 39.974136>,  <33.554760, 39.726318, 39.918564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940479, 39.636135, 39.974136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133314, -0.040038, -0.990265,
		0.228823, 0.973431, -0.008552,
		0.964296, -0.225455, 0.138934,
		34.229767, 39.568497, 40.015816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966770, 40.178017, 39.506859>,  <33.554760, 39.726318, 39.918564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966770, 40.178017, 39.506859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214462, 39.874905, 39.589153>,  <34.363079, 39.693039, 39.638531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214462, 39.874905, 39.589153>,  <33.966770, 40.178017, 39.506859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214462, 39.874905, 39.589153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287134, -0.025340, -0.957555,
		0.730827, 0.652021, 0.201892,
		0.619230, -0.757777, 0.205736,
		34.400230, 39.647572, 39.650875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612873, 40.260902, 39.170715>,  <33.966770, 40.178017, 39.506859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612873, 40.260902, 39.170715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.679325, 39.872807, 39.241188>,  <34.719196, 39.639950, 39.283474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.679325, 39.872807, 39.241188>,  <34.612873, 40.260902, 39.170715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679325, 39.872807, 39.241188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511846, -0.067872, -0.856392,
		0.842862, 0.232448, 0.485337,
		0.166126, -0.970238, 0.176184,
		34.729164, 39.581734, 39.294044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328648, 40.056835, 38.991848>,  <34.612873, 40.260902, 39.170715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328648, 40.056835, 38.991848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132362, 39.708607, 39.006283>,  <35.014591, 39.499668, 39.014942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132362, 39.708607, 39.006283>,  <35.328648, 40.056835, 38.991848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132362, 39.708607, 39.006283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462661, -0.295434, -0.835861,
		0.738339, -0.393474, 0.547754,
		-0.490714, -0.870573, 0.036085,
		34.985149, 39.447433, 39.017109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800106, 39.557777, 38.856991>,  <35.328648, 40.056835, 38.991848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800106, 39.557777, 38.856991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461716, 39.365784, 38.764091>,  <35.258682, 39.250587, 38.708351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461716, 39.365784, 38.764091>,  <35.800106, 39.557777, 38.856991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461716, 39.365784, 38.764091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424770, -0.343336, -0.837670,
		0.322333, -0.807299, 0.494338,
		-0.845974, -0.479988, -0.232248,
		35.207924, 39.221786, 38.694416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970364, 38.893688, 38.806881>,  <35.800106, 39.557777, 38.856991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970364, 38.893688, 38.806881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655476, 38.953403, 38.567551>,  <35.466541, 38.989235, 38.423954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655476, 38.953403, 38.567551>,  <35.970364, 38.893688, 38.806881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655476, 38.953403, 38.567551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449595, -0.525135, -0.722563,
		-0.422075, -0.837822, 0.346277,
		-0.787221, 0.149291, -0.598327,
		35.419308, 38.998192, 38.388054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939766, 38.317684, 38.366989>,  <35.970364, 38.893688, 38.806881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939766, 38.317684, 38.366989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719749, 38.575153, 38.154144>,  <35.587742, 38.729633, 38.026440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719749, 38.575153, 38.154144>,  <35.939766, 38.317684, 38.366989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719749, 38.575153, 38.154144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445255, -0.313022, -0.838907,
		-0.706545, -0.698356, -0.114425,
		-0.550038, 0.643674, -0.532110,
		35.554737, 38.768257, 37.994511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725197, 37.878628, 37.835129>,  <35.939766, 38.317684, 38.366989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725197, 37.878628, 37.835129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674229, 38.258881, 37.721947>,  <35.643650, 38.487034, 37.654037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674229, 38.258881, 37.721947>,  <35.725197, 37.878628, 37.835129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674229, 38.258881, 37.721947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363738, -0.220621, -0.904997,
		-0.922745, -0.218235, -0.317670,
		-0.127418, 0.950631, -0.282958,
		35.636002, 38.544071, 37.637058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344387, 37.760071, 37.215134>,  <35.725197, 37.878628, 37.835129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344387, 37.760071, 37.215134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.504940, 38.125671, 37.191452>,  <35.601273, 38.345032, 37.177242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.504940, 38.125671, 37.191452>,  <35.344387, 37.760071, 37.215134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504940, 38.125671, 37.191452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406569, -0.235721, -0.882687,
		-0.820730, 0.330220, -0.466216,
		0.401378, 0.913997, -0.059206,
		35.625355, 38.399872, 37.173691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376354, 37.809326, 36.514900>,  <35.344387, 37.760071, 37.215134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376354, 37.809326, 36.514900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.559280, 38.147964, 36.623810>,  <35.669037, 38.351147, 36.689156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.559280, 38.147964, 36.623810>,  <35.376354, 37.809326, 36.514900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559280, 38.147964, 36.623810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397356, 0.079382, -0.914225,
		-0.795595, 0.526279, -0.300098,
		0.457315, 0.846598, 0.272276,
		35.696476, 38.401943, 36.705494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292004, 38.311687, 35.981113>,  <35.376354, 37.809326, 36.514900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292004, 38.311687, 35.981113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610565, 38.423965, 36.195385>,  <35.801701, 38.491333, 36.323948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610565, 38.423965, 36.195385>,  <35.292004, 38.311687, 35.981113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610565, 38.423965, 36.195385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569089, -0.048103, -0.820868,
		-0.204646, 0.958591, -0.198050,
		0.796403, 0.280696, 0.535679,
		35.849487, 38.508175, 36.356091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560574, 38.948547, 35.641937>,  <35.292004, 38.311687, 35.981113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560574, 38.948547, 35.641937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.836205, 38.723904, 35.825134>,  <36.001583, 38.589115, 35.935051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.836205, 38.723904, 35.825134>,  <35.560574, 38.948547, 35.641937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836205, 38.723904, 35.825134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523681, -0.050949, -0.850389,
		0.500924, 0.825830, 0.258998,
		0.689081, -0.561613, 0.457993,
		36.042931, 38.555420, 35.962532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227592, 39.179550, 35.323795>,  <35.560574, 38.948547, 35.641937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227592, 39.179550, 35.323795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291660, 38.824146, 35.495792>,  <36.330101, 38.610905, 35.598991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291660, 38.824146, 35.495792>,  <36.227592, 39.179550, 35.323795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291660, 38.824146, 35.495792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597236, -0.259606, -0.758890,
		0.785910, 0.378359, 0.489070,
		0.160167, -0.888510, 0.429997,
		36.339710, 38.557594, 35.624790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908264, 39.077583, 35.248871>,  <36.227592, 39.179550, 35.323795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908264, 39.077583, 35.248871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782753, 38.705002, 35.322556>,  <36.707447, 38.481453, 35.366768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782753, 38.705002, 35.322556>,  <36.908264, 39.077583, 35.248871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782753, 38.705002, 35.322556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509783, -0.328946, -0.794931,
		0.801040, -0.155521, 0.578056,
		-0.313778, -0.931455, 0.184216,
		36.688622, 38.425564, 35.377819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494461, 38.640110, 35.122509>,  <36.908264, 39.077583, 35.248871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494461, 38.640110, 35.122509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178692, 38.395134, 35.105865>,  <36.989231, 38.248150, 35.095879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178692, 38.395134, 35.105865>,  <37.494461, 38.640110, 35.122509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178692, 38.395134, 35.105865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465147, -0.552578, -0.691589,
		0.400562, -0.565312, 0.721091,
		-0.789423, -0.612438, -0.041611,
		36.941864, 38.211403, 35.093384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775173, 38.348404, 34.440002>,  <37.494461, 38.640110, 35.122509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775173, 38.348404, 34.440002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133217, 38.526741, 34.438904>,  <38.348042, 38.633743, 34.438244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133217, 38.526741, 34.438904>,  <37.775173, 38.348404, 34.440002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133217, 38.526741, 34.438904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061058, 0.128673, 0.989806,
		0.441653, -0.885813, 0.142398,
		0.895106, 0.445845, -0.002743,
		38.401749, 38.660496, 34.438080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111198, 38.021732, 34.866997>,  <37.775173, 38.348404, 34.440002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111198, 38.021732, 34.866997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334839, 38.353226, 34.857124>,  <38.469025, 38.552120, 34.851200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334839, 38.353226, 34.857124>,  <38.111198, 38.021732, 34.866997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334839, 38.353226, 34.857124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187440, -0.097350, 0.977440,
		0.807635, -0.551112, -0.209766,
		0.559100, 0.828733, -0.024677,
		38.502567, 38.601845, 34.849720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669720, 37.937603, 35.141392>,  <38.111198, 38.021732, 34.866997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669720, 37.937603, 35.141392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.660149, 38.335903, 35.176975>,  <38.654408, 38.574883, 35.198326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.660149, 38.335903, 35.176975>,  <38.669720, 37.937603, 35.141392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660149, 38.335903, 35.176975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320161, -0.076663, 0.944257,
		0.947061, 0.051071, -0.316965,
		-0.023925, 0.995748, 0.088955,
		38.652969, 38.634628, 35.203663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133183, 38.081516, 35.665325>,  <38.669720, 37.937603, 35.141392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133183, 38.081516, 35.665325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944786, 38.434139, 35.652569>,  <38.831749, 38.645714, 35.644917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944786, 38.434139, 35.652569>,  <39.133183, 38.081516, 35.665325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944786, 38.434139, 35.652569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190557, 0.136972, 0.972073,
		0.861309, 0.451763, -0.232500,
		-0.470993, 0.881560, -0.031888,
		38.803490, 38.698608, 35.643002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602463, 38.559845, 36.030163>,  <39.133183, 38.081516, 35.665325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602463, 38.559845, 36.030163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234764, 38.717312, 36.031326>,  <39.014145, 38.811790, 36.032024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234764, 38.717312, 36.031326>,  <39.602463, 38.559845, 36.030163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234764, 38.717312, 36.031326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104575, 0.237061, 0.965850,
		0.379531, 0.888161, -0.259085,
		-0.919250, 0.393664, 0.002907,
		38.958988, 38.835411, 36.032200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728168, 39.136806, 36.485943>,  <39.602463, 38.559845, 36.030163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728168, 39.136806, 36.485943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338734, 39.046715, 36.470997>,  <39.105072, 38.992661, 36.462029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338734, 39.046715, 36.470997>,  <39.728168, 39.136806, 36.485943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338734, 39.046715, 36.470997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100278, 0.274841, 0.956246,
		-0.205109, 0.934737, -0.290168,
		-0.973588, -0.225232, -0.037362,
		39.046658, 38.979145, 36.459789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292244, 39.756363, 36.713547>,  <39.728168, 39.136806, 36.485943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292244, 39.756363, 36.713547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102520, 39.409000, 36.771374>,  <38.988686, 39.200584, 36.806068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102520, 39.409000, 36.771374>,  <39.292244, 39.756363, 36.713547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102520, 39.409000, 36.771374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009183, 0.159322, 0.987184,
		-0.880308, 0.469563, -0.067594,
		-0.474315, -0.868405, 0.144565,
		38.960224, 39.148479, 36.814743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863655, 39.924091, 37.126202>,  <39.292244, 39.756363, 36.713547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863655, 39.924091, 37.126202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845158, 39.526897, 37.169727>,  <38.834061, 39.288582, 37.195843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845158, 39.526897, 37.169727>,  <38.863655, 39.924091, 37.126202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845158, 39.526897, 37.169727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116038, 0.113529, 0.986735,
		-0.992168, 0.033004, -0.120474,
		-0.046244, -0.992986, 0.108810,
		38.831284, 39.229000, 37.202370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197479, 39.859516, 37.437004>,  <38.863655, 39.924091, 37.126202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197479, 39.859516, 37.437004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421642, 39.537720, 37.515732>,  <38.556141, 39.344643, 37.562969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421642, 39.537720, 37.515732>,  <38.197479, 39.859516, 37.437004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421642, 39.537720, 37.515732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065272, 0.194000, 0.978828,
		-0.825642, -0.561387, 0.056207,
		0.560405, -0.804493, 0.196817,
		38.589764, 39.296371, 37.574776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864830, 39.540272, 38.044624>,  <38.197479, 39.859516, 37.437004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864830, 39.540272, 38.044624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222092, 39.362064, 38.020008>,  <38.436447, 39.255138, 38.005238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222092, 39.362064, 38.020008>,  <37.864830, 39.540272, 38.044624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222092, 39.362064, 38.020008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167142, 0.201769, 0.965066,
		-0.417541, -0.872238, 0.254676,
		0.893154, -0.445522, -0.061541,
		38.490036, 39.228409, 38.001545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819324, 38.916309, 38.400730>,  <37.864830, 39.540272, 38.044624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819324, 38.916309, 38.400730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202061, 39.030815, 38.380672>,  <38.431702, 39.099518, 38.368637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202061, 39.030815, 38.380672>,  <37.819324, 38.916309, 38.400730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202061, 39.030815, 38.380672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090995, 0.458951, 0.883789,
		0.276013, -0.841080, 0.465190,
		0.956837, 0.286268, -0.050142,
		38.489113, 39.116695, 38.365631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067596, 38.663944, 38.999138>,  <37.819324, 38.916309, 38.400730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067596, 38.663944, 38.999138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364471, 38.909252, 38.891022>,  <38.542595, 39.056438, 38.826153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364471, 38.909252, 38.891022>,  <38.067596, 38.663944, 38.999138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364471, 38.909252, 38.891022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104248, 0.504039, 0.857366,
		0.662035, -0.608149, 0.438023,
		0.742187, 0.613269, -0.270294,
		38.587128, 39.093231, 38.809933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470028, 38.842506, 39.617920>,  <38.067596, 38.663944, 38.999138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470028, 38.842506, 39.617920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562523, 39.135426, 39.361713>,  <38.618019, 39.311176, 39.207989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562523, 39.135426, 39.361713>,  <38.470028, 38.842506, 39.617920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562523, 39.135426, 39.361713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036471, 0.664422, 0.746467,
		0.972213, -0.149253, 0.180348,
		0.231240, 0.732302, -0.640516,
		38.631893, 39.355118, 39.169559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912617, 39.234833, 39.931416>,  <38.470028, 38.842506, 39.617920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912617, 39.234833, 39.931416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.742004, 39.467518, 39.654381>,  <38.639637, 39.607128, 39.488159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.742004, 39.467518, 39.654381>,  <38.912617, 39.234833, 39.931416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742004, 39.467518, 39.654381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200795, 0.685728, 0.699613,
		0.881903, 0.437475, -0.175679,
		-0.426531, 0.581715, -0.692588,
		38.614044, 39.642033, 39.446606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211285, 39.904270, 39.972076>,  <38.912617, 39.234833, 39.931416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211285, 39.904270, 39.972076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856327, 39.988396, 39.807980>,  <38.643353, 40.038872, 39.709522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856327, 39.988396, 39.807980>,  <39.211285, 39.904270, 39.972076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856327, 39.988396, 39.807980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186473, 0.650090, 0.736622,
		0.421614, 0.730174, -0.537669,
		-0.887395, 0.210309, -0.410244,
		38.590107, 40.051487, 39.684906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184383, 40.621384, 39.945885>,  <39.211285, 39.904270, 39.972076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184383, 40.621384, 39.945885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.808064, 40.489437, 39.914665>,  <38.582272, 40.410271, 39.895935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.808064, 40.489437, 39.914665>,  <39.184383, 40.621384, 39.945885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808064, 40.489437, 39.914665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272875, 0.600413, 0.751694,
		-0.201098, 0.728488, -0.654878,
		-0.940797, -0.329864, -0.078045,
		38.525826, 40.390476, 39.891251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750359, 41.275703, 40.138958>,  <39.184383, 40.621384, 39.945885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750359, 41.275703, 40.138958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491493, 40.971588, 40.161377>,  <38.336174, 40.789120, 40.174828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491493, 40.971588, 40.161377>,  <38.750359, 41.275703, 40.138958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491493, 40.971588, 40.161377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415137, 0.413127, 0.810548,
		-0.639402, 0.501292, -0.582984,
		-0.647168, -0.760284, 0.056050,
		38.297344, 40.743504, 40.178192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016758, 41.517666, 40.391392>,  <38.750359, 41.275703, 40.138958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016758, 41.517666, 40.391392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.005623, 41.125916, 40.471443>,  <37.998943, 40.890865, 40.519474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.005623, 41.125916, 40.471443>,  <38.016758, 41.517666, 40.391392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005623, 41.125916, 40.471443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381821, 0.195442, 0.903335,
		-0.923817, -0.051270, -0.379386,
		-0.027834, -0.979374, 0.200129,
		37.997272, 40.832104, 40.531483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.358047, 41.316921, 40.919071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.616989, 41.016182, 40.969128>,  <37.772354, 40.835739, 40.999161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.616989, 41.016182, 40.969128>,  <37.358047, 41.316921, 40.919071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616989, 41.016182, 40.969128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027135, 0.141344, 0.989588,
		-0.761708, -0.644007, 0.071098,
		0.647351, -0.751849, 0.125138,
		37.811195, 40.790627, 41.006668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059948, 40.952782, 41.516582>,  <37.358047, 41.316921, 40.919071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059948, 40.952782, 41.516582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428116, 40.803616, 41.469658>,  <37.649017, 40.714115, 41.441505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428116, 40.803616, 41.469658>,  <37.059948, 40.952782, 41.516582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428116, 40.803616, 41.469658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047936, -0.190147, 0.980585,
		-0.387985, -0.908171, -0.157138,
		0.920418, -0.372919, -0.117308,
		37.704243, 40.691742, 41.434467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044697, 40.257679, 41.793755>,  <37.059948, 40.952782, 41.516582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044697, 40.257679, 41.793755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.440338, 40.316406, 41.798183>,  <37.677723, 40.351643, 41.800838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.440338, 40.316406, 41.798183>,  <37.044697, 40.257679, 41.793755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440338, 40.316406, 41.798183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030915, -0.280593, 0.959329,
		0.143957, -0.948531, -0.282074,
		0.989101, 0.146823, 0.011069,
		37.737068, 40.360455, 41.801506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458523, 39.642948, 42.100998>,  <37.044697, 40.257679, 41.793755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458523, 39.642948, 42.100998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722237, 39.943501, 42.112068>,  <37.880466, 40.123833, 42.118710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722237, 39.943501, 42.112068>,  <37.458523, 39.642948, 42.100998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722237, 39.943501, 42.112068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319105, -0.312946, 0.894560,
		0.680817, -0.580940, -0.446090,
		0.659288, 0.751381, 0.027678,
		37.920025, 40.168915, 42.120373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062252, 39.335106, 42.354759>,  <37.458523, 39.642948, 42.100998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062252, 39.335106, 42.354759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078342, 39.728264, 42.426647>,  <38.087997, 39.964157, 42.469780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078342, 39.728264, 42.426647>,  <38.062252, 39.335106, 42.354759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078342, 39.728264, 42.426647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156906, -0.183849, 0.970351,
		0.986794, -0.010834, -0.161618,
		0.040226, 0.982895, 0.179721,
		38.090408, 40.023132, 42.480564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649292, 39.431210, 42.711845>,  <38.062252, 39.335106, 42.354759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649292, 39.431210, 42.711845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429230, 39.750664, 42.809418>,  <38.297192, 39.942337, 42.867962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429230, 39.750664, 42.809418>,  <38.649292, 39.431210, 42.711845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429230, 39.750664, 42.809418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293596, -0.088469, 0.951827,
		0.781747, 0.595271, -0.185806,
		-0.550157, 0.798640, 0.243930,
		38.264183, 39.990257, 42.882595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025646, 39.768890, 43.130554>,  <38.649292, 39.431210, 42.711845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025646, 39.768890, 43.130554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666039, 39.923267, 43.213310>,  <38.450272, 40.015892, 43.262966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666039, 39.923267, 43.213310>,  <39.025646, 39.768890, 43.130554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666039, 39.923267, 43.213310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213045, -0.027288, 0.976661,
		0.382581, 0.922119, -0.057690,
		-0.899024, 0.385942, 0.206893,
		38.396332, 40.039051, 43.275379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256264, 40.232536, 43.639042>,  <39.025646, 39.768890, 43.130554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256264, 40.232536, 43.639042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864311, 40.160225, 43.672859>,  <38.629139, 40.116837, 43.693150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864311, 40.160225, 43.672859>,  <39.256264, 40.232536, 43.639042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864311, 40.160225, 43.672859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104605, -0.104460, 0.989013,
		-0.169963, 0.977960, 0.121269,
		-0.979883, -0.180781, 0.084545,
		38.570347, 40.105991, 43.698223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057400, 40.712372, 44.149677>,  <39.256264, 40.232536, 43.639042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057400, 40.712372, 44.149677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756153, 40.449284, 44.143906>,  <38.575405, 40.291431, 44.140442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756153, 40.449284, 44.143906>,  <39.057400, 40.712372, 44.149677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756153, 40.449284, 44.143906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158219, 0.159791, 0.974389,
		-0.638574, 0.736114, -0.224407,
		-0.753120, -0.657725, -0.014429,
		38.530216, 40.251965, 44.139576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493759, 41.022354, 44.384647>,  <39.057400, 40.712372, 44.149677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493759, 41.022354, 44.384647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445194, 40.629158, 44.439774>,  <38.416054, 40.393242, 44.472847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445194, 40.629158, 44.439774>,  <38.493759, 41.022354, 44.384647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445194, 40.629158, 44.439774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084031, 0.148520, 0.985333,
		-0.989039, 0.108054, -0.100634,
		-0.121415, -0.982988, 0.137813,
		38.408772, 40.334263, 44.481117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905991, 40.952522, 44.946522>,  <38.493759, 41.022354, 44.384647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905991, 40.952522, 44.946522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127594, 40.620239, 44.924648>,  <38.260555, 40.420868, 44.911522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127594, 40.620239, 44.924648>,  <37.905991, 40.952522, 44.946522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127594, 40.620239, 44.924648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027156, -0.047621, 0.998496,
		-0.832066, -0.554663, -0.003824,
		0.554011, -0.830712, -0.054686,
		38.293797, 40.371025, 44.908241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665180, 40.401943, 45.414944>,  <37.905991, 40.952522, 44.946522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665180, 40.401943, 45.414944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.038227, 40.265560, 45.367649>,  <38.262054, 40.183731, 45.339272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.038227, 40.265560, 45.367649>,  <37.665180, 40.401943, 45.414944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038227, 40.265560, 45.367649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070088, -0.150271, 0.986157,
		-0.354008, -0.927990, -0.116248,
		0.932612, -0.340960, -0.118238,
		38.318012, 40.163273, 45.332176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672794, 39.824791, 45.883953>,  <37.665180, 40.401943, 45.414944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672794, 39.824791, 45.883953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052319, 39.915642, 45.796165>,  <38.280033, 39.970154, 45.743492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052319, 39.915642, 45.796165>,  <37.672794, 39.824791, 45.883953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052319, 39.915642, 45.796165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260951, -0.172294, 0.949852,
		0.177926, -0.958503, -0.222744,
		0.948813, 0.227129, -0.219467,
		38.336964, 39.983780, 45.730324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082066, 39.141457, 46.204319>,  <37.672794, 39.824791, 45.883953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082066, 39.141457, 46.204319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344643, 39.437542, 46.146122>,  <38.502190, 39.615192, 46.111202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344643, 39.437542, 46.146122>,  <38.082066, 39.141457, 46.204319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344643, 39.437542, 46.146122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408632, -0.186791, 0.893381,
		0.634114, -0.645907, -0.425092,
		0.656445, 0.740212, -0.145491,
		38.541576, 39.659607, 46.102474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711548, 38.869061, 46.328346>,  <38.082066, 39.141457, 46.204319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711548, 38.869061, 46.328346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.789940, 39.260128, 46.358685>,  <38.836975, 39.494770, 46.376888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.789940, 39.260128, 46.358685>,  <38.711548, 38.869061, 46.328346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789940, 39.260128, 46.358685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364062, -0.144359, 0.920119,
		0.910523, -0.152710, -0.384224,
		0.195978, 0.977671, 0.075846,
		38.848732, 39.553429, 46.381439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456837, 38.869621, 46.590527>,  <38.711548, 38.869061, 46.328346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456837, 38.869621, 46.590527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.274307, 39.215389, 46.674950>,  <39.164787, 39.422852, 46.725605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.274307, 39.215389, 46.674950>,  <39.456837, 38.869621, 46.590527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274307, 39.215389, 46.674950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252808, -0.101471, 0.962181,
		0.853144, 0.492425, -0.172229,
		-0.456326, 0.864420, 0.211058,
		39.137409, 39.474716, 46.738266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895679, 39.209064, 47.046379>,  <39.456837, 38.869621, 46.590527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895679, 39.209064, 47.046379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531460, 39.362541, 47.107941>,  <39.312927, 39.454628, 47.144878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531460, 39.362541, 47.107941>,  <39.895679, 39.209064, 47.046379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531460, 39.362541, 47.107941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083715, -0.193425, 0.977537,
		0.404840, 0.902977, 0.144002,
		-0.910547, 0.383691, 0.153899,
		39.258297, 39.477650, 47.154110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931538, 39.568321, 47.659317>,  <39.895679, 39.209064, 47.046379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931538, 39.568321, 47.659317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532150, 39.549850, 47.647110>,  <39.292519, 39.538769, 47.639786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532150, 39.549850, 47.647110>,  <39.931538, 39.568321, 47.659317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532150, 39.549850, 47.647110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008838, -0.411284, 0.911464,
		-0.054643, 0.910337, 0.410245,
		-0.998467, -0.046179, -0.030519,
		39.232609, 39.535995, 47.637955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728565, 39.926788, 48.212624>,  <39.931538, 39.568321, 47.659317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728565, 39.926788, 48.212624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432384, 39.682873, 48.099560>,  <39.254677, 39.536526, 48.031719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432384, 39.682873, 48.099560>,  <39.728565, 39.926788, 48.212624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432384, 39.682873, 48.099560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119069, -0.294895, 0.948082,
		-0.661481, 0.735663, 0.145748,
		-0.740449, -0.609784, -0.282662,
		39.210251, 39.499939, 48.014763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297775, 40.036972, 48.744762>,  <39.728565, 39.926788, 48.212624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297775, 40.036972, 48.744762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172707, 39.691833, 48.585899>,  <39.097664, 39.484753, 48.490582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172707, 39.691833, 48.585899>,  <39.297775, 40.036972, 48.744762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172707, 39.691833, 48.585899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298712, -0.307591, 0.903415,
		-0.901668, 0.401112, -0.161566,
		-0.312674, -0.862843, -0.397162,
		39.078903, 39.432980, 48.466751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813461, 39.866051, 49.213390>,  <39.297775, 40.036972, 48.744762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813461, 39.866051, 49.213390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907597, 39.523384, 49.029762>,  <38.964077, 39.317783, 48.919586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907597, 39.523384, 49.029762>,  <38.813461, 39.866051, 49.213390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907597, 39.523384, 49.029762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197131, -0.504593, 0.840551,
		-0.951713, -0.107313, -0.287623,
		0.235334, -0.856662, -0.459073,
		38.978195, 39.266384, 48.892040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360939, 39.284420, 49.617256>,  <38.813461, 39.866051, 49.213390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360939, 39.284420, 49.617256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644737, 39.118008, 49.389736>,  <38.815018, 39.018158, 49.253223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644737, 39.118008, 49.389736>,  <38.360939, 39.284420, 49.617256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644737, 39.118008, 49.389736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228572, -0.627645, 0.744189,
		-0.666609, -0.658011, -0.350219,
		0.709498, -0.416033, -0.568796,
		38.857586, 38.993198, 49.219097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282959, 38.494492, 49.505527>,  <38.360939, 39.284420, 49.617256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282959, 38.494492, 49.505527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.658298, 38.632416, 49.515339>,  <38.883503, 38.715172, 49.521225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.658298, 38.632416, 49.515339>,  <38.282959, 38.494492, 49.505527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658298, 38.632416, 49.515339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197071, -0.591882, 0.781562,
		0.284010, -0.728546, -0.623345,
		0.938350, 0.344815, 0.024525,
		38.939804, 38.735859, 49.522697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923321, 38.514263, 50.201401>,  <38.282959, 38.494492, 49.505527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923321, 38.514263, 50.201401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800301, 38.229645, 50.454105>,  <37.726490, 38.058876, 50.605728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800301, 38.229645, 50.454105>,  <37.923321, 38.514263, 50.201401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800301, 38.229645, 50.454105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251691, -0.579461, -0.775163,
		0.917642, -0.397408, -0.000877,
		-0.307547, -0.711543, 0.631761,
		37.708035, 38.016182, 50.643635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290771, 37.821026, 50.080627>,  <37.923321, 38.514263, 50.201401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290771, 37.821026, 50.080627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915646, 37.813217, 50.219261>,  <37.690571, 37.808533, 50.302441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915646, 37.813217, 50.219261>,  <38.290771, 37.821026, 50.080627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915646, 37.813217, 50.219261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330145, -0.258390, -0.907876,
		0.107276, -0.965843, 0.235878,
		-0.937814, -0.019520, 0.346588,
		37.634300, 37.807362, 50.323238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029446, 37.294109, 49.819847>,  <38.290771, 37.821026, 50.080627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029446, 37.294109, 49.819847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690758, 37.489532, 49.904114>,  <37.487545, 37.606785, 49.954674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690758, 37.489532, 49.904114>,  <38.029446, 37.294109, 49.819847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690758, 37.489532, 49.904114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395538, -0.313200, -0.863397,
		-0.355845, -0.814377, 0.458437,
		-0.846713, 0.488565, 0.210666,
		37.436745, 37.636101, 49.967316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520912, 36.800388, 49.662094>,  <38.029446, 37.294109, 49.819847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520912, 36.800388, 49.662094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356705, 37.164810, 49.646824>,  <37.258179, 37.383461, 49.637661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356705, 37.164810, 49.646824>,  <37.520912, 36.800388, 49.662094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356705, 37.164810, 49.646824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440527, -0.234810, -0.866487,
		-0.798378, -0.338896, 0.497737,
		-0.410523, 0.911051, -0.038174,
		37.233547, 37.438126, 49.635372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998821, 36.667465, 49.216961>,  <37.520912, 36.800388, 49.662094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998821, 36.667465, 49.216961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013546, 37.066544, 49.239765>,  <37.022381, 37.305992, 49.253448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013546, 37.066544, 49.239765>,  <36.998821, 36.667465, 49.216961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013546, 37.066544, 49.239765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438188, 0.067390, -0.896354,
		-0.898129, 0.008011, 0.439659,
		0.036810, 0.997694, 0.057015,
		37.024590, 37.365852, 49.256870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319565, 36.933727, 49.000027>,  <36.998821, 36.667465, 49.216961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319565, 36.933727, 49.000027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583271, 37.227543, 48.935741>,  <36.741493, 37.403831, 48.897171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583271, 37.227543, 48.935741>,  <36.319565, 36.933727, 49.000027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583271, 37.227543, 48.935741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369521, 0.130349, -0.920034,
		-0.654848, 0.665933, 0.357361,
		0.659263, 0.734535, -0.160718,
		36.781052, 37.447903, 48.887527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949177, 37.214214, 48.486778>,  <36.319565, 36.933727, 49.000027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949177, 37.214214, 48.486778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297619, 37.408970, 48.461132>,  <36.506683, 37.525826, 48.445744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297619, 37.408970, 48.461132>,  <35.949177, 37.214214, 48.486778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297619, 37.408970, 48.461132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240204, 0.308552, -0.920379,
		-0.428342, 0.817149, 0.385734,
		0.871106, 0.486892, -0.064117,
		36.558952, 37.555038, 48.441898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782085, 37.893658, 48.296925>,  <35.949177, 37.214214, 48.486778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782085, 37.893658, 48.296925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.147594, 37.820992, 48.151585>,  <36.366898, 37.777393, 48.064381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.147594, 37.820992, 48.151585>,  <35.782085, 37.893658, 48.296925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147594, 37.820992, 48.151585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291582, 0.329491, -0.898006,
		0.282856, 0.926517, 0.248109,
		0.913768, -0.181662, -0.363354,
		36.421726, 37.766491, 48.042580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015965, 38.537323, 47.902683>,  <35.782085, 37.893658, 48.296925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015965, 38.537323, 47.902683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248219, 38.241680, 47.766102>,  <36.387569, 38.064297, 47.684155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248219, 38.241680, 47.766102>,  <36.015965, 38.537323, 47.902683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248219, 38.241680, 47.766102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128581, 0.330880, -0.934872,
		0.803946, 0.586723, 0.097086,
		0.580635, -0.739103, -0.341452,
		36.422409, 38.019951, 47.663666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188122, 38.857224, 47.303238>,  <36.015965, 38.537323, 47.902683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188122, 38.857224, 47.303238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301254, 38.478046, 47.244709>,  <36.369133, 38.250542, 47.209591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301254, 38.478046, 47.244709>,  <36.188122, 38.857224, 47.303238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301254, 38.478046, 47.244709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037930, 0.141374, -0.989229,
		0.958418, 0.285338, 0.004030,
		0.282835, -0.947943, -0.146318,
		36.386105, 38.193665, 47.200813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774994, 38.840408, 46.962273>,  <36.188122, 38.857224, 47.303238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774994, 38.840408, 46.962273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.606670, 38.492908, 46.857822>,  <36.505676, 38.284409, 46.795151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.606670, 38.492908, 46.857822>,  <36.774994, 38.840408, 46.962273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606670, 38.492908, 46.857822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067626, 0.257012, -0.964039,
		0.904624, -0.423338, -0.049403,
		-0.420812, -0.868752, -0.261128,
		36.480427, 38.232285, 46.779484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100628, 38.662045, 46.358917>,  <36.774994, 38.840408, 46.962273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100628, 38.662045, 46.358917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786518, 38.414936, 46.342419>,  <36.598053, 38.266670, 46.332520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786518, 38.414936, 46.342419>,  <37.100628, 38.662045, 46.358917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786518, 38.414936, 46.342419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067437, 0.151557, -0.986146,
		0.615463, -0.771615, -0.160674,
		-0.785276, -0.617772, -0.041243,
		36.550934, 38.229607, 46.330048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270195, 38.113625, 45.875969>,  <37.100628, 38.662045, 46.358917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270195, 38.113625, 45.875969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873093, 38.132698, 45.920086>,  <36.634830, 38.144142, 45.946556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873093, 38.132698, 45.920086>,  <37.270195, 38.113625, 45.875969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873093, 38.132698, 45.920086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105773, 0.088729, -0.990424,
		-0.057019, -0.994914, -0.083041,
		-0.992754, 0.047689, 0.110294,
		36.575268, 38.147003, 45.953175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931492, 37.795971, 45.229877>,  <37.270195, 38.113625, 45.875969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931492, 37.795971, 45.229877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635952, 38.001278, 45.404533>,  <36.458626, 38.124462, 45.509327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635952, 38.001278, 45.404533>,  <36.931492, 37.795971, 45.229877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635952, 38.001278, 45.404533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304446, 0.323815, -0.895799,
		-0.601173, -0.794798, -0.082990,
		-0.738852, 0.513264, 0.436642,
		36.414295, 38.155258, 45.535526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331505, 37.594769, 44.936764>,  <36.931492, 37.795971, 45.229877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331505, 37.594769, 44.936764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295887, 37.968479, 45.074863>,  <36.274517, 38.192707, 45.157722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295887, 37.968479, 45.074863>,  <36.331505, 37.594769, 44.936764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295887, 37.968479, 45.074863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225138, 0.318773, -0.920705,
		-0.970249, -0.159715, 0.181955,
		-0.089048, 0.934278, 0.345247,
		36.269173, 38.248764, 45.178436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708897, 37.904480, 44.679386>,  <36.331505, 37.594769, 44.936764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708897, 37.904480, 44.679386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902199, 38.240326, 44.778595>,  <36.018181, 38.441833, 44.838120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902199, 38.240326, 44.778595>,  <35.708897, 37.904480, 44.679386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902199, 38.240326, 44.778595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294499, 0.422684, -0.857093,
		-0.824462, 0.341151, 0.451529,
		0.483252, 0.839615, 0.248018,
		36.047173, 38.492210, 44.853001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206619, 38.451443, 44.587994>,  <35.708897, 37.904480, 44.679386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206619, 38.451443, 44.587994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548168, 38.659275, 44.600216>,  <35.753098, 38.783974, 44.607548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548168, 38.659275, 44.600216>,  <35.206619, 38.451443, 44.587994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548168, 38.659275, 44.600216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317955, 0.567194, -0.759734,
		-0.412073, 0.639003, 0.649516,
		0.853874, 0.519583, 0.030551,
		35.804329, 38.815151, 44.609383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084053, 39.144825, 44.656792>,  <35.206619, 38.451443, 44.587994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084053, 39.144825, 44.656792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443253, 39.115929, 44.483181>,  <35.658772, 39.098591, 44.379013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443253, 39.115929, 44.483181>,  <35.084053, 39.144825, 44.656792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443253, 39.115929, 44.483181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279613, 0.667941, -0.689690,
		0.339728, 0.740700, 0.579610,
		0.897999, -0.072240, -0.434028,
		35.712650, 39.094257, 44.352974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208817, 39.756451, 44.383900>,  <35.084053, 39.144825, 44.656792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208817, 39.756451, 44.383900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449898, 39.535458, 44.153591>,  <35.594547, 39.402863, 44.015408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449898, 39.535458, 44.153591>,  <35.208817, 39.756451, 44.383900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449898, 39.535458, 44.153591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289973, 0.520580, -0.803064,
		0.743411, 0.650970, 0.153553,
		0.602707, -0.552480, -0.575769,
		35.630711, 39.369713, 43.980862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361702, 40.166698, 43.859901>,  <35.208817, 39.756451, 44.383900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361702, 40.166698, 43.859901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439510, 39.802269, 43.714520>,  <35.486195, 39.583611, 43.627289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439510, 39.802269, 43.714520>,  <35.361702, 40.166698, 43.859901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439510, 39.802269, 43.714520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333710, 0.286965, -0.897936,
		0.922387, 0.295959, -0.248214,
		0.194523, -0.911076, -0.363458,
		35.497868, 39.528946, 43.605484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302555, 40.312656, 43.221615>,  <35.361702, 40.166698, 43.859901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302555, 40.312656, 43.221615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325188, 39.913799, 43.201599>,  <35.338768, 39.674484, 43.189590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325188, 39.913799, 43.201599>,  <35.302555, 40.312656, 43.221615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325188, 39.913799, 43.201599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156580, 0.040632, -0.986829,
		0.986043, 0.063672, -0.153833,
		0.056583, -0.997143, -0.050035,
		35.342163, 39.614655, 43.186588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.925949, 35.591202, 26.678682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562466, 35.752911, 26.637093>,  <43.344376, 35.849934, 26.612139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562466, 35.752911, 26.637093>,  <43.925949, 35.591202, 26.678682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562466, 35.752911, 26.637093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101373, 0.455355, 0.884520,
		0.404927, 0.793234, -0.454768,
		-0.908712, 0.404267, -0.103973,
		43.289852, 35.874191, 26.605900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929466, 36.372616, 26.838583>,  <43.925949, 35.591202, 26.678682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929466, 36.372616, 26.838583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.560429, 36.241005, 26.919146>,  <43.339005, 36.162037, 26.967484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.560429, 36.241005, 26.919146>,  <43.929466, 36.372616, 26.838583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560429, 36.241005, 26.919146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015840, 0.553951, 0.832399,
		-0.385451, 0.764775, -0.516283,
		-0.922593, -0.329026, 0.201407,
		43.283649, 36.142296, 26.979568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637772, 36.872417, 27.174875>,  <43.929466, 36.372616, 26.838583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637772, 36.872417, 27.174875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362556, 36.596336, 27.264517>,  <43.197426, 36.430687, 27.318302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362556, 36.596336, 27.264517>,  <43.637772, 36.872417, 27.174875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362556, 36.596336, 27.264517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099459, 0.395599, 0.913023,
		-0.718828, 0.605904, -0.340833,
		-0.688037, -0.690205, 0.224105,
		43.156147, 36.389275, 27.331749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206429, 37.331440, 27.334322>,  <43.637772, 36.872417, 27.174875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206429, 37.331440, 27.334322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.164375, 36.972160, 27.505054>,  <43.139145, 36.756592, 27.607494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.164375, 36.972160, 27.505054>,  <43.206429, 37.331440, 27.334322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164375, 36.972160, 27.505054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089755, 0.436029, 0.895445,
		-0.990400, 0.055827, -0.126457,
		-0.105129, -0.898199, 0.426833,
		43.132835, 36.702702, 27.633104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775414, 37.455898, 27.818985>,  <43.206429, 37.331440, 27.334322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775414, 37.455898, 27.818985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955688, 37.115891, 27.928057>,  <43.063854, 36.911888, 27.993500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955688, 37.115891, 27.928057>,  <42.775414, 37.455898, 27.818985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955688, 37.115891, 27.928057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000989, 0.304985, 0.952356,
		-0.892680, -0.429486, 0.136613,
		0.450689, -0.850015, 0.272679,
		43.090897, 36.860886, 28.009861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447937, 37.203465, 28.363228>,  <42.775414, 37.455898, 27.818985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447937, 37.203465, 28.363228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.810360, 37.037376, 28.395844>,  <43.027813, 36.937725, 28.415413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.810360, 37.037376, 28.395844>,  <42.447937, 37.203465, 28.363228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810360, 37.037376, 28.395844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002536, 0.198022, 0.980194,
		-0.423144, -0.887907, 0.180473,
		0.906059, -0.415221, 0.081541,
		43.082176, 36.912811, 28.420305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456608, 37.119476, 29.046713>,  <42.447937, 37.203465, 28.363228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456608, 37.119476, 29.046713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811760, 36.970879, 28.938150>,  <43.024853, 36.881721, 28.873013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811760, 36.970879, 28.938150>,  <42.456608, 37.119476, 29.046713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811760, 36.970879, 28.938150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210450, -0.196646, 0.957623,
		-0.409124, -0.907371, -0.096417,
		0.887879, -0.371496, -0.271408,
		43.078125, 36.859428, 28.856728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514271, 36.441334, 29.316265>,  <42.456608, 37.119476, 29.046713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514271, 36.441334, 29.316265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.860062, 36.640961, 29.292219>,  <43.067535, 36.760738, 29.277792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.860062, 36.640961, 29.292219>,  <42.514271, 36.441334, 29.316265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860062, 36.640961, 29.292219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148812, -0.139854, 0.978926,
		0.480144, -0.855203, -0.195167,
		0.864475, 0.499068, -0.060115,
		43.119404, 36.790680, 29.274185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004707, 36.100029, 29.736368>,  <42.514271, 36.441334, 29.316265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004707, 36.100029, 29.736368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157166, 36.469364, 29.717730>,  <43.248638, 36.690968, 29.706547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157166, 36.469364, 29.717730>,  <43.004707, 36.100029, 29.736368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157166, 36.469364, 29.717730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170538, -0.020682, 0.985134,
		0.908652, -0.383422, -0.165348,
		0.381142, 0.923342, -0.046595,
		43.271507, 36.746368, 29.703751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582275, 36.080242, 30.118153>,  <43.004707, 36.100029, 29.736368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582275, 36.080242, 30.118153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530148, 36.474934, 30.079403>,  <43.498871, 36.711750, 30.056152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530148, 36.474934, 30.079403>,  <43.582275, 36.080242, 30.118153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530148, 36.474934, 30.079403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161382, 0.117514, 0.979870,
		0.978250, 0.112058, -0.174554,
		-0.130315, 0.986729, -0.096874,
		43.491055, 36.770950, 30.050341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189751, 36.404156, 30.333580>,  <43.582275, 36.080242, 30.118153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189751, 36.404156, 30.333580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903908, 36.679749, 30.381968>,  <43.732403, 36.845104, 30.411001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903908, 36.679749, 30.381968>,  <44.189751, 36.404156, 30.333580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903908, 36.679749, 30.381968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186625, 0.021113, 0.982204,
		0.674168, 0.724470, -0.143668,
		-0.714611, 0.688982, 0.120971,
		43.689526, 36.886444, 30.418259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481853, 36.922657, 30.755091>,  <44.189751, 36.404156, 30.333580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481853, 36.922657, 30.755091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091251, 37.000290, 30.792557>,  <43.856892, 37.046867, 30.815037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091251, 37.000290, 30.792557>,  <44.481853, 36.922657, 30.755091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091251, 37.000290, 30.792557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121847, 0.138766, 0.982801,
		0.177745, 0.971122, -0.159154,
		-0.976504, 0.194080, 0.093663,
		43.798302, 37.058514, 30.820656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387218, 37.487953, 31.298086>,  <44.481853, 36.922657, 30.755091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387218, 37.487953, 31.298086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.044491, 37.282211, 31.283674>,  <43.838856, 37.158764, 31.275028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.044491, 37.282211, 31.283674>,  <44.387218, 37.487953, 31.298086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044491, 37.282211, 31.283674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017270, -0.098463, 0.994991,
		-0.515327, 0.851905, 0.093248,
		-0.856819, -0.514356, -0.036029,
		43.787445, 37.127903, 31.272865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201210, 37.613266, 32.065586>,  <44.387218, 37.487953, 31.298086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201210, 37.613266, 32.065586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901989, 37.380127, 31.938650>,  <43.722454, 37.240242, 31.862488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901989, 37.380127, 31.938650>,  <44.201210, 37.613266, 32.065586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901989, 37.380127, 31.938650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216730, -0.237405, 0.946925,
		-0.627250, 0.777129, 0.051271,
		-0.748055, -0.582846, -0.317340,
		43.677574, 37.205273, 31.843449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584698, 37.809875, 32.359947>,  <44.201210, 37.613266, 32.065586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584698, 37.809875, 32.359947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561810, 37.420448, 32.271496>,  <43.548077, 37.186794, 32.218426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561810, 37.420448, 32.271496>,  <43.584698, 37.809875, 32.359947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561810, 37.420448, 32.271496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155407, -0.210102, 0.965249,
		-0.986192, 0.089597, -0.139277,
		-0.057221, -0.973565, -0.221125,
		43.544643, 37.128380, 32.205158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050438, 37.592010, 32.719975>,  <43.584698, 37.809875, 32.359947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050438, 37.592010, 32.719975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242016, 37.250984, 32.636318>,  <43.356964, 37.046368, 32.586124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242016, 37.250984, 32.636318>,  <43.050438, 37.592010, 32.719975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242016, 37.250984, 32.636318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232538, -0.352952, 0.906284,
		-0.846483, -0.385430, -0.367301,
		0.478949, -0.852566, -0.209141,
		43.385700, 36.995216, 32.573574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700375, 37.099163, 33.116394>,  <43.050438, 37.592010, 32.719975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700375, 37.099163, 33.116394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045372, 36.916790, 33.028549>,  <43.252373, 36.807365, 32.975842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045372, 36.916790, 33.028549>,  <42.700375, 37.099163, 33.116394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045372, 36.916790, 33.028549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006904, -0.444526, 0.895739,
		-0.506021, -0.771053, -0.386549,
		0.862494, -0.455932, -0.219616,
		43.304119, 36.780010, 32.962666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547100, 36.412800, 33.321228>,  <42.700375, 37.099163, 33.116394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547100, 36.412800, 33.321228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942841, 36.468460, 33.304161>,  <43.180286, 36.501858, 33.293922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942841, 36.468460, 33.304161>,  <42.547100, 36.412800, 33.321228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942841, 36.468460, 33.304161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113843, -0.557216, 0.822527,
		0.090685, -0.818625, -0.567124,
		0.989351, 0.139154, -0.042664,
		43.239647, 36.510204, 33.291363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871574, 35.719006, 33.315945>,  <42.547100, 36.412800, 33.321228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871574, 35.719006, 33.315945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.139645, 35.977882, 33.461273>,  <43.300488, 36.133209, 33.548470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.139645, 35.977882, 33.461273>,  <42.871574, 35.719006, 33.315945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139645, 35.977882, 33.461273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125825, -0.581506, 0.803753,
		0.731458, -0.492941, -0.471145,
		0.670177, 0.647194, 0.363323,
		43.340698, 36.172039, 33.570271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331158, 35.304062, 33.574429>,  <42.871574, 35.719006, 33.315945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331158, 35.304062, 33.574429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.440845, 35.650814, 33.740952>,  <43.506657, 35.858868, 33.840866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.440845, 35.650814, 33.740952>,  <43.331158, 35.304062, 33.574429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440845, 35.650814, 33.740952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034222, -0.423835, 0.905093,
		0.961058, -0.262442, -0.086558,
		0.274221, 0.866884, 0.416311,
		43.523113, 35.910881, 33.865845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860367, 35.062412, 34.006538>,  <43.331158, 35.304062, 33.574429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860367, 35.062412, 34.006538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739353, 35.413616, 34.154900>,  <43.666744, 35.624340, 34.243916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739353, 35.413616, 34.154900>,  <43.860367, 35.062412, 34.006538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739353, 35.413616, 34.154900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066808, -0.407712, 0.910663,
		0.950794, 0.250729, 0.182006,
		-0.302536, 0.878012, 0.370900,
		43.648594, 35.677021, 34.266171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580597, 34.959244, 34.243793>,  <43.860367, 35.062412, 34.006538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580597, 34.959244, 34.243793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951668, 34.932102, 34.390663>,  <45.174309, 34.915817, 34.478786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951668, 34.932102, 34.390663>,  <44.580597, 34.959244, 34.243793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951668, 34.932102, 34.390663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370544, 0.046041, -0.927673,
		0.046041, 0.996632, 0.067854,
		0.927673, -0.067854, 0.367176,
		45.229969, 34.911747, 34.500816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886787, 35.522289, 34.031967>,  <44.580597, 34.959244, 34.243793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886787, 35.522289, 34.031967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149284, 35.222301, 34.065151>,  <45.306782, 35.042309, 34.085060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149284, 35.222301, 34.065151>,  <44.886787, 35.522289, 34.031967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149284, 35.222301, 34.065151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213565, 0.079169, -0.973716,
		0.723692, 0.656715, 0.212122,
		0.656247, -0.749972, 0.082957,
		45.346157, 34.997311, 34.090038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501324, 35.738430, 33.643112>,  <44.886787, 35.522289, 34.031967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501324, 35.738430, 33.643112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.501659, 35.338528, 33.651890>,  <45.501862, 35.098587, 33.657158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.501659, 35.338528, 33.651890>,  <45.501324, 35.738430, 33.643112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501659, 35.338528, 33.651890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153426, -0.021558, -0.987925,
		0.988160, 0.004196, 0.153371,
		0.000839, -0.999759, 0.021947,
		45.501911, 35.038601, 33.658474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049572, 35.467400, 33.127228>,  <45.501324, 35.738430, 33.643112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049572, 35.467400, 33.127228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.842545, 35.132305, 33.196880>,  <45.718327, 34.931248, 33.238674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.842545, 35.132305, 33.196880>,  <46.049572, 35.467400, 33.127228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842545, 35.132305, 33.196880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223314, -0.328714, -0.917648,
		0.825986, -0.436060, 0.357210,
		-0.517570, -0.837734, 0.174135,
		45.687275, 34.880985, 33.249123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491619, 34.889141, 32.950390>,  <46.049572, 35.467400, 33.127228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491619, 34.889141, 32.950390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.110615, 34.769257, 32.928879>,  <45.882011, 34.697327, 32.915974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.110615, 34.769257, 32.928879>,  <46.491619, 34.889141, 32.950390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110615, 34.769257, 32.928879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169051, -0.373622, -0.912046,
		0.253255, -0.877828, 0.406546,
		-0.952514, -0.299708, -0.053776,
		45.824860, 34.679344, 32.912746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490528, 34.223900, 32.633755>,  <46.491619, 34.889141, 32.950390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490528, 34.223900, 32.633755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106018, 34.330479, 32.605572>,  <45.875313, 34.394424, 32.588661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106018, 34.330479, 32.605572>,  <46.490528, 34.223900, 32.633755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106018, 34.330479, 32.605572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012278, -0.213976, -0.976762,
		-0.275332, -0.939797, 0.202418,
		-0.961271, 0.266449, -0.070453,
		45.817638, 34.410412, 32.584435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168175, 33.644474, 32.234798>,  <46.490528, 34.223900, 32.633755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168175, 33.644474, 32.234798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949425, 33.977970, 32.204334>,  <45.818172, 34.178066, 32.186054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949425, 33.977970, 32.204334>,  <46.168175, 33.644474, 32.234798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949425, 33.977970, 32.204334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093403, -0.151162, -0.984087,
		-0.831985, -0.531063, 0.160541,
		-0.546879, 0.833740, -0.076162,
		45.785362, 34.228092, 32.181484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497910, 33.434864, 31.929214>,  <46.168175, 33.644474, 32.234798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497910, 33.434864, 31.929214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.534317, 33.827404, 31.861483>,  <45.556160, 34.062927, 31.820843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.534317, 33.827404, 31.861483>,  <45.497910, 33.434864, 31.929214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534317, 33.827404, 31.861483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262293, -0.140409, -0.954719,
		-0.960686, 0.131311, 0.244620,
		0.091018, 0.981348, -0.169331,
		45.561623, 34.121807, 31.810684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945793, 33.648682, 31.703592>,  <45.497910, 33.434864, 31.929214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945793, 33.648682, 31.703592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183640, 33.937622, 31.562374>,  <45.326347, 34.110985, 31.477644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183640, 33.937622, 31.562374>,  <44.945793, 33.648682, 31.703592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183640, 33.937622, 31.562374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415006, -0.100338, -0.904269,
		-0.688624, 0.684208, 0.240117,
		0.594615, 0.722351, -0.353045,
		45.362022, 34.154327, 31.456461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548359, 34.087826, 31.268696>,  <44.945793, 33.648682, 31.703592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548359, 34.087826, 31.268696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924507, 34.151318, 31.148359>,  <45.150196, 34.189411, 31.076159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924507, 34.151318, 31.148359>,  <44.548359, 34.087826, 31.268696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924507, 34.151318, 31.148359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307417, 0.018061, -0.951403,
		-0.145581, 0.987157, 0.065780,
		0.940373, 0.158728, -0.300840,
		45.206619, 34.198936, 31.058107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455349, 34.377140, 30.567677>,  <44.548359, 34.087826, 31.268696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455349, 34.377140, 30.567677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853119, 34.337337, 30.581615>,  <45.091782, 34.313457, 30.589979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853119, 34.337337, 30.581615>,  <44.455349, 34.377140, 30.567677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853119, 34.337337, 30.581615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048456, 0.137795, -0.989275,
		0.093638, 0.985450, 0.141848,
		0.994426, -0.099507, 0.034848,
		45.151447, 34.307484, 30.592070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644165, 34.864136, 30.166353>,  <44.455349, 34.377140, 30.567677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644165, 34.864136, 30.166353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933754, 34.590141, 30.198992>,  <45.107510, 34.425747, 30.218575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933754, 34.590141, 30.198992>,  <44.644165, 34.864136, 30.166353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933754, 34.590141, 30.198992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020229, -0.097155, -0.995064,
		0.689529, 0.722052, -0.056482,
		0.723975, -0.684983, 0.081598,
		45.150948, 34.384647, 30.223471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115746, 35.159489, 29.633701>,  <44.644165, 34.864136, 30.166353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115746, 35.159489, 29.633701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175888, 34.768646, 29.693913>,  <45.211975, 34.534142, 29.730040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175888, 34.768646, 29.693913>,  <45.115746, 35.159489, 29.633701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175888, 34.768646, 29.693913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055669, -0.160384, -0.985484,
		0.987063, 0.139798, -0.078510,
		0.150360, -0.977105, 0.150526,
		45.220997, 34.475513, 29.739071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469635, 34.984447, 29.096119>,  <45.115746, 35.159489, 29.633701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469635, 34.984447, 29.096119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.325001, 34.635883, 29.228724>,  <45.238220, 34.426746, 29.308287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.325001, 34.635883, 29.228724>,  <45.469635, 34.984447, 29.096119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325001, 34.635883, 29.228724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104052, -0.391065, -0.914463,
		0.926513, -0.296166, 0.232077,
		-0.361590, -0.871409, 0.331510,
		45.216522, 34.374462, 29.328176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859371, 34.509113, 28.695002>,  <45.469635, 34.984447, 29.096119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859371, 34.509113, 28.695002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540333, 34.314037, 28.836983>,  <45.348907, 34.196991, 28.922173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540333, 34.314037, 28.836983>,  <45.859371, 34.509113, 28.695002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540333, 34.314037, 28.836983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194624, -0.348915, -0.916722,
		0.570928, -0.800259, 0.183378,
		-0.797598, -0.487693, 0.354955,
		45.301052, 34.167728, 28.943470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.802544, 33.919312, 28.192797>,  <45.859371, 34.509113, 28.695002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.802544, 33.919312, 28.192797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451492, 33.966103, 28.378735>,  <45.240860, 33.994179, 28.490297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451492, 33.966103, 28.378735>,  <45.802544, 33.919312, 28.192797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451492, 33.966103, 28.378735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478779, -0.167170, -0.861873,
		-0.023111, -0.978964, 0.202719,
		-0.877631, 0.116976, 0.464844,
		45.188202, 34.001194, 28.518188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343826, 33.282452, 28.014967>,  <45.802544, 33.919312, 28.192797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343826, 33.282452, 28.014967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.085651, 33.566616, 28.127205>,  <44.930748, 33.737114, 28.194548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.085651, 33.566616, 28.127205>,  <45.343826, 33.282452, 28.014967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085651, 33.566616, 28.127205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587573, -0.227073, -0.776657,
		-0.488027, -0.666152, 0.563978,
		-0.645436, 0.710408, 0.280595,
		44.892021, 33.779739, 28.211384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695267, 32.981831, 28.006907>,  <45.343826, 33.282452, 28.014967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695267, 32.981831, 28.006907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.590485, 33.367859, 28.005459>,  <44.527615, 33.599476, 28.004589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.590485, 33.367859, 28.005459>,  <44.695267, 32.981831, 28.006907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590485, 33.367859, 28.005459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654602, -0.180435, -0.734125,
		-0.709138, -0.189937, 0.679004,
		-0.261954, 0.965074, -0.003620,
		44.511898, 33.657379, 28.004374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963455, 32.940590, 27.925049>,  <44.695267, 32.981831, 28.006907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963455, 32.940590, 27.925049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.093483, 33.295982, 27.795479>,  <44.171501, 33.509216, 27.717737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.093483, 33.295982, 27.795479>,  <43.963455, 32.940590, 27.925049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093483, 33.295982, 27.795479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629242, -0.052486, -0.775435,
		-0.705962, 0.455901, 0.542008,
		0.325074, 0.888482, -0.323925,
		44.191006, 33.562527, 27.698301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316261, 33.282547, 27.732607>,  <43.963455, 32.940590, 27.925049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316261, 33.282547, 27.732607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606342, 33.474243, 27.534855>,  <43.780392, 33.589260, 27.416204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606342, 33.474243, 27.534855>,  <43.316261, 33.282547, 27.732607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606342, 33.474243, 27.534855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554742, -0.018634, -0.831814,
		-0.407850, 0.877486, 0.252341,
		0.725203, 0.479240, -0.494378,
		43.823902, 33.618015, 27.386541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995361, 33.744812, 27.338877>,  <43.316261, 33.282547, 27.732607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995361, 33.744812, 27.338877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350765, 33.732174, 27.155767>,  <43.564007, 33.724590, 27.045902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350765, 33.732174, 27.155767>,  <42.995361, 33.744812, 27.338877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350765, 33.732174, 27.155767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458860, -0.063982, -0.886202,
		-0.001289, 0.997451, -0.071346,
		0.888508, -0.031595, -0.457772,
		43.617317, 33.722694, 27.018436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.472855, 40.014797, 38.394905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245918, 39.717796, 38.537342>,  <39.109756, 39.539597, 38.622807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245918, 39.717796, 38.537342>,  <39.472855, 40.014797, 38.394905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245918, 39.717796, 38.537342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073906, -0.476594, -0.876012,
		0.820158, -0.470683, 0.325268,
		-0.567344, -0.742507, 0.356096,
		39.075714, 39.495045, 38.644173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804382, 39.403381, 38.297359>,  <39.472855, 40.014797, 38.394905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804382, 39.403381, 38.297359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413284, 39.321491, 38.315731>,  <39.178627, 39.272358, 38.326756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413284, 39.321491, 38.315731>,  <39.804382, 39.403381, 38.297359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413284, 39.321491, 38.315731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066842, -0.511456, -0.856706,
		0.198879, -0.834567, 0.513756,
		-0.977742, -0.204721, 0.045934,
		39.119961, 39.260075, 38.329510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752434, 38.724583, 37.951904>,  <39.804382, 39.403381, 38.297359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752434, 38.724583, 37.951904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380917, 38.871464, 37.971939>,  <39.158009, 38.959591, 37.983959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380917, 38.871464, 37.971939>,  <39.752434, 38.724583, 37.951904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380917, 38.871464, 37.971939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215137, -0.424177, -0.879653,
		-0.301764, -0.827791, 0.472971,
		-0.928792, 0.367202, 0.050088,
		39.102280, 38.981625, 37.986965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337536, 38.225822, 37.681160>,  <39.752434, 38.724583, 37.951904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337536, 38.225822, 37.681160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098198, 38.545574, 37.659336>,  <38.954597, 38.737427, 37.646240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098198, 38.545574, 37.659336>,  <39.337536, 38.225822, 37.681160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098198, 38.545574, 37.659336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155906, -0.182948, -0.970682,
		-0.785928, -0.572292, 0.234093,
		-0.598340, 0.799382, -0.054560,
		38.918697, 38.785389, 37.642967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631527, 37.972916, 37.390076>,  <39.337536, 38.225822, 37.681160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631527, 37.972916, 37.390076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709774, 38.358570, 37.318329>,  <38.756721, 38.589962, 37.275280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709774, 38.358570, 37.318329>,  <38.631527, 37.972916, 37.390076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709774, 38.358570, 37.318329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273215, -0.122078, -0.954175,
		-0.941853, 0.235661, 0.239536,
		0.195620, 0.964137, -0.179365,
		38.768459, 38.647812, 37.264519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118546, 38.126221, 36.920578>,  <38.631527, 37.972916, 37.390076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118546, 38.126221, 36.920578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369221, 38.436001, 36.885963>,  <38.519627, 38.621868, 36.865196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369221, 38.436001, 36.885963>,  <38.118546, 38.126221, 36.920578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369221, 38.436001, 36.885963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245929, 0.091182, -0.964990,
		-0.739449, 0.626026, 0.247603,
		0.626686, 0.774453, -0.086533,
		38.557228, 38.668335, 36.860004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736008, 38.737080, 36.580002>,  <38.118546, 38.126221, 36.920578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736008, 38.737080, 36.580002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131271, 38.773525, 36.530621>,  <38.368431, 38.795391, 36.500992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131271, 38.773525, 36.530621>,  <37.736008, 38.737080, 36.580002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131271, 38.773525, 36.530621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144724, 0.286306, -0.947145,
		-0.050951, 0.953796, 0.296102,
		0.988159, 0.091111, -0.123450,
		38.427719, 38.800858, 36.493587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774010, 39.321388, 36.017536>,  <37.736008, 38.737080, 36.580002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774010, 39.321388, 36.017536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144123, 39.173454, 36.051147>,  <38.366192, 39.084694, 36.071316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144123, 39.173454, 36.051147>,  <37.774010, 39.321388, 36.017536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144123, 39.173454, 36.051147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130547, 0.102558, -0.986123,
		0.356089, 0.923418, 0.143177,
		0.925288, -0.369839, 0.084030,
		38.421711, 39.062504, 36.076355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073120, 39.794426, 35.568775>,  <37.774010, 39.321388, 36.017536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073120, 39.794426, 35.568775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294666, 39.461594, 35.580662>,  <38.427593, 39.261894, 35.587795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294666, 39.461594, 35.580662>,  <38.073120, 39.794426, 35.568775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294666, 39.461594, 35.580662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067693, 0.009429, -0.997662,
		0.829852, 0.554579, 0.061548,
		0.553862, -0.832078, 0.029716,
		38.460823, 39.211971, 35.589577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410328, 39.842388, 34.960510>,  <38.073120, 39.794426, 35.568775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410328, 39.842388, 34.960510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532352, 39.478130, 35.071987>,  <38.605568, 39.259575, 35.138874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532352, 39.478130, 35.071987>,  <38.410328, 39.842388, 34.960510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532352, 39.478130, 35.071987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289213, -0.190236, -0.938172,
		0.907356, 0.366798, 0.205337,
		0.305057, -0.910642, 0.278695,
		38.623871, 39.204937, 35.155594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107555, 39.763710, 34.803890>,  <38.410328, 39.842388, 34.960510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107555, 39.763710, 34.803890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927547, 39.406597, 34.812073>,  <38.819542, 39.192329, 34.816982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927547, 39.406597, 34.812073>,  <39.107555, 39.763710, 34.803890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927547, 39.406597, 34.812073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297985, -0.171719, -0.938998,
		0.841835, -0.416473, 0.343313,
		-0.450021, -0.892784, 0.020457,
		38.792542, 39.138763, 34.818211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517529, 39.337120, 34.415730>,  <39.107555, 39.763710, 34.803890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517529, 39.337120, 34.415730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173973, 39.132401, 34.423496>,  <38.967842, 39.009567, 34.428158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173973, 39.132401, 34.423496>,  <39.517529, 39.337120, 34.415730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173973, 39.132401, 34.423496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196276, -0.363928, -0.910512,
		0.473065, -0.778215, 0.413026,
		-0.858886, -0.511799, 0.019416,
		38.916306, 38.978863, 34.429321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672592, 38.786739, 33.911716>,  <39.517529, 39.337120, 34.415730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672592, 38.786739, 33.911716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285114, 38.795700, 34.010605>,  <39.052628, 38.801079, 34.069939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285114, 38.795700, 34.010605>,  <39.672592, 38.786739, 33.911716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285114, 38.795700, 34.010605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245984, -0.220577, -0.943842,
		0.033387, -0.975112, 0.219184,
		-0.968699, 0.022404, 0.247226,
		38.994503, 38.802422, 34.084774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335480, 38.201664, 33.445362>,  <39.672592, 38.786739, 33.911716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335480, 38.201664, 33.445362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062233, 38.455013, 33.590790>,  <38.898285, 38.607025, 33.678047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062233, 38.455013, 33.590790>,  <39.335480, 38.201664, 33.445362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062233, 38.455013, 33.590790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434078, 0.048210, -0.899585,
		-0.587303, -0.772341, 0.242001,
		-0.683119, 0.633376, 0.363570,
		38.857296, 38.645027, 33.699860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981224, 37.696850, 33.386703>,  <39.335480, 38.201664, 33.445362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981224, 37.696850, 33.386703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106110, 37.425983, 33.120182>,  <40.181042, 37.263462, 32.960270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106110, 37.425983, 33.120182>,  <39.981224, 37.696850, 33.386703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106110, 37.425983, 33.120182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283500, -0.735822, 0.614975,
		-0.906724, -0.003108, -0.421713,
		0.312217, -0.677168, -0.666307,
		40.199776, 37.222832, 32.920292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449978, 37.298542, 33.323227>,  <39.981224, 37.696850, 33.386703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449978, 37.298542, 33.323227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788471, 37.094109, 33.262993>,  <39.991570, 36.971447, 33.226852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788471, 37.094109, 33.262993>,  <39.449978, 37.298542, 33.323227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788471, 37.094109, 33.262993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234617, -0.611197, 0.755905,
		-0.478368, -0.604345, -0.637127,
		0.846238, -0.511082, -0.150587,
		40.042343, 36.940784, 33.217815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316929, 36.561619, 33.474770>,  <39.449978, 37.298542, 33.323227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316929, 36.561619, 33.474770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714188, 36.600815, 33.500259>,  <39.952541, 36.624332, 33.515553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714188, 36.600815, 33.500259>,  <39.316929, 36.561619, 33.474770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714188, 36.600815, 33.500259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028388, -0.731069, 0.681713,
		0.113392, -0.675230, -0.728839,
		0.993145, 0.097991, 0.063729,
		40.012131, 36.630211, 33.519379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579266, 35.865753, 33.609989>,  <39.316929, 36.561619, 33.474770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579266, 35.865753, 33.609989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883060, 36.108067, 33.704826>,  <40.065338, 36.253456, 33.761726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883060, 36.108067, 33.704826>,  <39.579266, 35.865753, 33.609989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883060, 36.108067, 33.704826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212649, -0.575626, 0.789579,
		0.614790, -0.549254, -0.565998,
		0.759483, 0.605784, 0.237090,
		40.110905, 36.289803, 33.775955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089565, 35.455990, 33.934284>,  <39.579266, 35.865753, 33.609989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089565, 35.455990, 33.934284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191391, 35.822945, 34.056660>,  <40.252487, 36.043118, 34.130085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191391, 35.822945, 34.056660>,  <40.089565, 35.455990, 33.934284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191391, 35.822945, 34.056660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084158, -0.336179, 0.938031,
		0.963388, -0.213039, -0.162783,
		0.254562, 0.917387, 0.305942,
		40.267761, 36.098160, 34.148441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820438, 35.462917, 34.333248>,  <40.089565, 35.455990, 33.934284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820438, 35.462917, 34.333248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597126, 35.773922, 34.449039>,  <40.463139, 35.960526, 34.518517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597126, 35.773922, 34.449039>,  <40.820438, 35.462917, 34.333248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597126, 35.773922, 34.449039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171058, -0.233551, 0.957180,
		0.811825, 0.583895, -0.002611,
		-0.558283, 0.777509, 0.289482,
		40.429642, 36.007175, 34.535885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189877, 35.717857, 34.950722>,  <40.820438, 35.462917, 34.333248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189877, 35.717857, 34.950722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850174, 35.928711, 34.962658>,  <40.646351, 36.055225, 34.969822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850174, 35.928711, 34.962658>,  <41.189877, 35.717857, 34.950722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850174, 35.928711, 34.962658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028315, -0.101912, 0.994390,
		0.527220, 0.843648, 0.101476,
		-0.849257, 0.527136, 0.029842,
		40.595398, 36.086853, 34.971611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328213, 36.033924, 35.547256>,  <41.189877, 35.717857, 34.950722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328213, 36.033924, 35.547256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938530, 36.068523, 35.463894>,  <40.704720, 36.089283, 35.413876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938530, 36.068523, 35.463894>,  <41.328213, 36.033924, 35.547256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938530, 36.068523, 35.463894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212206, -0.037216, 0.976516,
		0.076711, 0.995557, 0.054611,
		-0.974209, 0.086498, -0.208409,
		40.646267, 36.094471, 35.401371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092838, 36.721840, 35.806854>,  <41.328213, 36.033924, 35.547256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092838, 36.721840, 35.806854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794781, 36.455410, 35.793575>,  <40.615948, 36.295551, 35.785610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794781, 36.455410, 35.793575>,  <41.092838, 36.721840, 35.806854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794781, 36.455410, 35.793575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079129, 0.038878, 0.996106,
		-0.662192, 0.744870, -0.081676,
		-0.745144, -0.666077, -0.033196,
		40.571236, 36.255589, 35.783615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615459, 37.033695, 36.231586>,  <41.092838, 36.721840, 35.806854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615459, 37.033695, 36.231586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461647, 36.664673, 36.218765>,  <40.369358, 36.443260, 36.211071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461647, 36.664673, 36.218765>,  <40.615459, 37.033695, 36.231586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461647, 36.664673, 36.218765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251828, 0.071432, 0.965132,
		-0.888099, 0.379195, -0.259793,
		-0.384531, -0.922556, -0.032054,
		40.346287, 36.387905, 36.209148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967793, 37.160431, 36.280479>,  <40.615459, 37.033695, 36.231586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967793, 37.160431, 36.280479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055977, 36.784851, 36.386135>,  <40.108887, 36.559502, 36.449528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055977, 36.784851, 36.386135>,  <39.967793, 37.160431, 36.280479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055977, 36.784851, 36.386135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508076, 0.120618, 0.852825,
		-0.832620, -0.322216, -0.450467,
		0.220460, -0.938951, 0.264140,
		40.122116, 36.503166, 36.465378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404198, 36.904385, 36.622562>,  <39.967793, 37.160431, 36.280479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404198, 36.904385, 36.622562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662701, 36.622921, 36.740692>,  <39.817802, 36.454044, 36.811569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662701, 36.622921, 36.740692>,  <39.404198, 36.904385, 36.622562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662701, 36.622921, 36.740692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382389, 0.036312, 0.923288,
		-0.660402, -0.709611, -0.245604,
		0.646256, -0.703658, 0.295328,
		39.856579, 36.411823, 36.829292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010319, 36.440243, 37.040386>,  <39.404198, 36.904385, 36.622562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010319, 36.440243, 37.040386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401291, 36.439117, 37.124886>,  <39.635872, 36.438442, 37.175587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401291, 36.439117, 37.124886>,  <39.010319, 36.440243, 37.040386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401291, 36.439117, 37.124886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205706, 0.215325, 0.954631,
		-0.048174, -0.976539, 0.209886,
		0.977428, -0.002813, 0.211253,
		39.694519, 36.438274, 37.188263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121319, 35.910831, 37.491203>,  <39.010319, 36.440243, 37.040386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121319, 35.910831, 37.491203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435059, 36.154282, 37.539139>,  <39.623302, 36.300354, 37.567902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435059, 36.154282, 37.539139>,  <39.121319, 35.910831, 37.491203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435059, 36.154282, 37.539139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302042, 0.205976, 0.930776,
		0.541815, -0.766252, 0.345390,
		0.784352, 0.608631, 0.119840,
		39.670364, 36.336872, 37.575092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040478, 35.300636, 37.805042>,  <39.121319, 35.910831, 37.491203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040478, 35.300636, 37.805042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774284, 35.009953, 37.873188>,  <38.614571, 34.835541, 37.914074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774284, 35.009953, 37.873188>,  <39.040478, 35.300636, 37.805042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774284, 35.009953, 37.873188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445458, 0.203531, -0.871862,
		0.598918, -0.656098, -0.459166,
		-0.665481, -0.726713, 0.170366,
		38.574638, 34.791939, 37.924297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059540, 34.900600, 37.166546>,  <39.040478, 35.300636, 37.805042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059540, 34.900600, 37.166546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717014, 34.848808, 37.366531>,  <38.511501, 34.817734, 37.486523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717014, 34.848808, 37.366531>,  <39.059540, 34.900600, 37.166546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717014, 34.848808, 37.366531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516449, 0.221386, -0.827205,
		-0.003581, -0.966552, -0.256444,
		-0.856310, -0.129478, 0.499968,
		38.460121, 34.809963, 37.516521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613770, 34.452969, 36.718056>,  <39.059540, 34.900600, 37.166546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613770, 34.452969, 36.718056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371422, 34.638870, 36.976337>,  <38.226013, 34.750412, 37.131306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371422, 34.638870, 36.976337>,  <38.613770, 34.452969, 36.718056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371422, 34.638870, 36.976337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598902, 0.267813, -0.754713,
		-0.523682, -0.843968, 0.116082,
		-0.605866, 0.464752, 0.645703,
		38.189663, 34.778297, 37.170048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061428, 34.270054, 36.483063>,  <38.613770, 34.452969, 36.718056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061428, 34.270054, 36.483063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969124, 34.590046, 36.704613>,  <37.913742, 34.782043, 36.837543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969124, 34.590046, 36.704613>,  <38.061428, 34.270054, 36.483063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969124, 34.590046, 36.704613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690976, 0.266046, -0.672140,
		-0.685057, -0.537814, 0.491378,
		-0.230757, 0.799985, 0.553873,
		37.899899, 34.830040, 36.870773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366642, 34.210903, 36.447544>,  <38.061428, 34.270054, 36.483063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366642, 34.210903, 36.447544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463707, 34.590813, 36.526577>,  <37.521946, 34.818760, 36.573997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463707, 34.590813, 36.526577>,  <37.366642, 34.210903, 36.447544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463707, 34.590813, 36.526577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588750, 0.306059, -0.748132,
		-0.771029, 0.065220, 0.633451,
		0.242667, 0.949776, 0.197582,
		37.536507, 34.875744, 36.585854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679844, 34.494591, 36.545788>,  <37.366642, 34.210903, 36.447544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679844, 34.494591, 36.545788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947212, 34.779919, 36.461517>,  <37.107635, 34.951115, 36.410954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947212, 34.779919, 36.461517>,  <36.679844, 34.494591, 36.545788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947212, 34.779919, 36.461517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520542, 0.246326, -0.817533,
		-0.531268, 0.656124, 0.535963,
		0.668424, 0.713320, -0.210675,
		37.147739, 34.993916, 36.398315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269665, 34.940777, 36.243538>,  <36.679844, 34.494591, 36.545788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269665, 34.940777, 36.243538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623596, 35.081337, 36.121166>,  <36.835957, 35.165672, 36.047745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623596, 35.081337, 36.121166>,  <36.269665, 34.940777, 36.243538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623596, 35.081337, 36.121166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428173, 0.354421, -0.831296,
		-0.183692, 0.866546, 0.464064,
		0.884831, 0.351402, -0.305928,
		36.889046, 35.186756, 36.029388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189899, 35.693295, 36.042072>,  <36.269665, 34.940777, 36.243538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189899, 35.693295, 36.042072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522537, 35.562458, 35.862534>,  <36.722118, 35.483955, 35.754810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522537, 35.562458, 35.862534>,  <36.189899, 35.693295, 36.042072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522537, 35.562458, 35.862534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322485, 0.373591, -0.869732,
		0.452164, 0.868011, 0.205195,
		0.831595, -0.327089, -0.448845,
		36.772015, 35.464333, 35.727879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425907, 36.268757, 35.599785>,  <36.189899, 35.693295, 36.042072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425907, 36.268757, 35.599785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599648, 35.944077, 35.443588>,  <36.703892, 35.749268, 35.349869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599648, 35.944077, 35.443588>,  <36.425907, 36.268757, 35.599785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599648, 35.944077, 35.443588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395197, 0.217841, -0.892392,
		0.809421, 0.541930, -0.226163,
		0.434347, -0.811700, -0.390494,
		36.729950, 35.700565, 35.326439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664642, 36.389202, 34.954990>,  <36.425907, 36.268757, 35.599785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664642, 36.389202, 34.954990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660576, 35.991261, 34.914658>,  <36.658134, 35.752495, 34.890457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660576, 35.991261, 34.914658>,  <36.664642, 36.389202, 34.954990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660576, 35.991261, 34.914658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443367, 0.094871, -0.891305,
		0.896283, 0.035646, -0.442048,
		-0.010167, -0.994851, -0.100836,
		36.657524, 35.692806, 34.884407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828899, 36.357750, 34.327301>,  <36.664642, 36.389202, 34.954990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828899, 36.357750, 34.327301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697044, 35.981720, 34.362175>,  <36.617931, 35.756104, 34.383099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697044, 35.981720, 34.362175>,  <36.828899, 36.357750, 34.327301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697044, 35.981720, 34.362175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386401, 0.050075, -0.920971,
		0.861414, -0.337275, -0.379752,
		-0.329636, -0.940074, 0.087188,
		36.598152, 35.699699, 34.388332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053501, 35.985142, 33.773010>,  <36.828899, 36.357750, 34.327301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053501, 35.985142, 33.773010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736774, 35.790443, 33.920578>,  <36.546738, 35.673622, 34.009121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736774, 35.790443, 33.920578>,  <37.053501, 35.985142, 33.773010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736774, 35.790443, 33.920578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397840, -0.047258, -0.916237,
		0.463412, -0.872262, -0.156229,
		-0.791816, -0.486750, 0.368921,
		36.499229, 35.644417, 34.031254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.116150, 33.306389, 41.077736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.731457, 33.366100, 41.169636>,  <39.500641, 33.401928, 41.224777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.731457, 33.366100, 41.169636>,  <40.116150, 33.306389, 41.077736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731457, 33.366100, 41.169636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224887, 0.048942, -0.973155,
		-0.156515, -0.987583, -0.013499,
		-0.961732, 0.149278, 0.229754,
		39.442936, 33.410885, 41.238564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813446, 32.942345, 40.660446>,  <40.116150, 33.306389, 41.077736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813446, 32.942345, 40.660446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533207, 33.211960, 40.754108>,  <39.365063, 33.373730, 40.810307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533207, 33.211960, 40.754108>,  <39.813446, 32.942345, 40.660446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533207, 33.211960, 40.754108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222495, 0.105438, -0.969216,
		-0.677978, -0.731132, 0.076100,
		-0.700601, 0.674039, 0.234158,
		39.323025, 33.414173, 40.824356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262009, 32.705635, 40.345181>,  <39.813446, 32.942345, 40.660446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262009, 32.705635, 40.345181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198868, 33.093086, 40.421967>,  <39.160984, 33.325558, 40.468040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198868, 33.093086, 40.421967>,  <39.262009, 32.705635, 40.345181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198868, 33.093086, 40.421967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271760, 0.144285, -0.951487,
		-0.949331, -0.202361, 0.240458,
		-0.157849, 0.968624, 0.191967,
		39.151512, 33.383675, 40.479557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653755, 32.886456, 40.003868>,  <39.262009, 32.705635, 40.345181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653755, 32.886456, 40.003868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.826176, 33.241177, 40.070522>,  <38.929626, 33.454010, 40.110516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.826176, 33.241177, 40.070522>,  <38.653755, 32.886456, 40.003868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826176, 33.241177, 40.070522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339734, 0.330591, -0.880506,
		-0.835928, 0.322931, 0.443780,
		0.431052, 0.886807, 0.166639,
		38.955490, 33.507217, 40.120514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126026, 33.381607, 39.974194>,  <38.653755, 32.886456, 40.003868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126026, 33.381607, 39.974194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463352, 33.581142, 39.894211>,  <38.665749, 33.700863, 39.846222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.463352, 33.581142, 39.894211>,  <38.126026, 33.381607, 39.974194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463352, 33.581142, 39.894211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433003, 0.410301, -0.802597,
		-0.318328, 0.763420, 0.562012,
		0.843313, 0.498842, -0.199953,
		38.716347, 33.730797, 39.834225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899883, 34.134956, 39.685402>,  <38.126026, 33.381607, 39.974194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899883, 34.134956, 39.685402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288204, 34.102570, 39.595078>,  <38.521194, 34.083138, 39.540882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288204, 34.102570, 39.595078>,  <37.899883, 34.134956, 39.685402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288204, 34.102570, 39.595078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164994, 0.457936, -0.873540,
		0.174137, 0.885290, 0.431204,
		0.970800, -0.080970, -0.225812,
		38.579445, 34.078278, 39.527332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144260, 34.743816, 39.541389>,  <37.899883, 34.134956, 39.685402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144260, 34.743816, 39.541389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.393845, 34.495647, 39.351337>,  <38.543594, 34.346745, 39.237305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.393845, 34.495647, 39.351337>,  <38.144260, 34.743816, 39.541389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393845, 34.495647, 39.351337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201429, 0.459770, -0.864892,
		0.755050, 0.635363, 0.161907,
		0.623960, -0.620424, -0.475129,
		38.581032, 34.309521, 39.208797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597301, 35.198414, 39.193325>,  <38.144260, 34.743816, 39.541389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597301, 35.198414, 39.193325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611301, 34.846573, 39.003555>,  <38.619701, 34.635468, 38.889694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611301, 34.846573, 39.003555>,  <38.597301, 35.198414, 39.193325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611301, 34.846573, 39.003555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001507, 0.474669, -0.880163,
		0.999386, 0.031517, 0.015285,
		0.034996, -0.879600, -0.474425,
		38.621799, 34.582691, 38.861229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957848, 35.323845, 38.564529>,  <38.597301, 35.198414, 39.193325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957848, 35.323845, 38.564529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771061, 34.982533, 38.471695>,  <38.658989, 34.777744, 38.415993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771061, 34.982533, 38.471695>,  <38.957848, 35.323845, 38.564529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771061, 34.982533, 38.471695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230603, 0.370883, -0.899593,
		0.853679, -0.366558, -0.369957,
		-0.466964, -0.853277, -0.232086,
		38.630970, 34.726551, 38.402069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495083, 35.688488, 38.257240>,  <38.957848, 35.323845, 38.564529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495083, 35.688488, 38.257240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.666088, 36.036320, 38.158390>,  <39.768692, 36.245018, 38.099079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.666088, 36.036320, 38.158390>,  <39.495083, 35.688488, 38.257240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666088, 36.036320, 38.158390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160772, 0.195878, 0.967359,
		0.889599, -0.453289, -0.056063,
		0.427512, 0.869575, -0.247129,
		39.794342, 36.297192, 38.084251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035725, 35.657761, 38.592854>,  <39.495083, 35.688488, 38.257240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035725, 35.657761, 38.592854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.964653, 36.043938, 38.516598>,  <39.922009, 36.275646, 38.470844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.964653, 36.043938, 38.516598>,  <40.035725, 35.657761, 38.592854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964653, 36.043938, 38.516598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154349, 0.218668, 0.963515,
		0.971909, 0.141770, -0.187868,
		-0.177678, 0.965446, -0.190643,
		39.911350, 36.333572, 38.459404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634754, 36.012508, 38.826771>,  <40.035725, 35.657761, 38.592854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634754, 36.012508, 38.826771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338421, 36.280861, 38.813625>,  <40.160622, 36.441872, 38.805737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338421, 36.280861, 38.813625>,  <40.634754, 36.012508, 38.826771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338421, 36.280861, 38.813625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158203, 0.221837, 0.962164,
		0.652789, 0.707606, -0.270481,
		-0.740836, 0.670882, -0.032867,
		40.116169, 36.482124, 38.803764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991486, 36.529312, 39.161541>,  <40.634754, 36.012508, 38.826771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991486, 36.529312, 39.161541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.598827, 36.605549, 39.164047>,  <40.363232, 36.651291, 39.165550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.598827, 36.605549, 39.164047>,  <40.991486, 36.529312, 39.161541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598827, 36.605549, 39.164047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061709, 0.286397, 0.956122,
		0.180434, 0.938963, -0.292902,
		-0.981650, 0.190591, 0.006266,
		40.304333, 36.662727, 39.165928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937004, 37.242950, 39.402489>,  <40.991486, 36.529312, 39.161541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937004, 37.242950, 39.402489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578533, 37.077362, 39.466358>,  <40.363449, 36.978008, 39.504681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.578533, 37.077362, 39.466358>,  <40.937004, 37.242950, 39.402489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578533, 37.077362, 39.466358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002715, 0.354746, 0.934959,
		-0.443685, 0.838323, -0.316792,
		-0.896178, -0.413967, 0.159672,
		40.309681, 36.953171, 39.514259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483334, 37.802845, 39.726265>,  <40.937004, 37.242950, 39.402489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483334, 37.802845, 39.726265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330250, 37.447735, 39.828548>,  <40.238400, 37.234669, 39.889919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330250, 37.447735, 39.828548>,  <40.483334, 37.802845, 39.726265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330250, 37.447735, 39.828548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086388, 0.309953, 0.946819,
		-0.919822, 0.340264, -0.195315,
		-0.382707, -0.887777, 0.255707,
		40.215439, 37.181400, 39.905262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868992, 37.934330, 40.244835>,  <40.483334, 37.802845, 39.726265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868992, 37.934330, 40.244835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961914, 37.551895, 40.316319>,  <40.017666, 37.322433, 40.359207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961914, 37.551895, 40.316319>,  <39.868992, 37.934330, 40.244835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961914, 37.551895, 40.316319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050424, 0.171648, 0.983867,
		-0.971336, -0.237564, -0.008336,
		0.232301, -0.956086, 0.178707,
		40.031605, 37.265068, 40.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318447, 37.647438, 40.689556>,  <39.868992, 37.934330, 40.244835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318447, 37.647438, 40.689556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628868, 37.397823, 40.726032>,  <39.815121, 37.248055, 40.747917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628868, 37.397823, 40.726032>,  <39.318447, 37.647438, 40.689556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628868, 37.397823, 40.726032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075933, 0.051083, 0.995804,
		-0.626078, -0.779722, -0.007742,
		0.776054, -0.624039, 0.091189,
		39.861683, 37.210613, 40.753387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071877, 37.120117, 41.244312>,  <39.318447, 37.647438, 40.689556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071877, 37.120117, 41.244312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468117, 37.150726, 41.198975>,  <39.705860, 37.169094, 41.171772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468117, 37.150726, 41.198975>,  <39.071877, 37.120117, 41.244312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468117, 37.150726, 41.198975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110566, 0.039578, 0.993080,
		0.080486, -0.996282, 0.030744,
		0.990604, 0.076529, -0.113341,
		39.765297, 37.173683, 41.164974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270679, 36.592579, 41.585369>,  <39.071877, 37.120117, 41.244312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270679, 36.592579, 41.585369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.625748, 36.776711, 41.580627>,  <39.838787, 36.887188, 41.577782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.625748, 36.776711, 41.580627>,  <39.270679, 36.592579, 41.585369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625748, 36.776711, 41.580627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006098, 0.013993, 0.999884,
		0.460439, -0.887639, 0.009614,
		0.887670, 0.460326, -0.011855,
		39.892048, 36.914810, 41.577072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787693, 36.185272, 42.077106>,  <39.270679, 36.592579, 41.585369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787693, 36.185272, 42.077106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907230, 36.565468, 42.043022>,  <39.978954, 36.793587, 42.022572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907230, 36.565468, 42.043022>,  <39.787693, 36.185272, 42.077106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907230, 36.565468, 42.043022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066318, 0.068390, 0.995452,
		0.951994, -0.303137, -0.042597,
		0.298845, 0.950490, -0.085210,
		39.996883, 36.850616, 42.017460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465263, 36.231426, 42.328960>,  <39.787693, 36.185272, 42.077106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465263, 36.231426, 42.328960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.343678, 36.608669, 42.382843>,  <40.270725, 36.835014, 42.415173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.343678, 36.608669, 42.382843>,  <40.465263, 36.231426, 42.328960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343678, 36.608669, 42.382843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236076, -0.062417, 0.969728,
		0.922970, 0.326563, -0.203674,
		-0.303964, 0.943112, 0.134702,
		40.252487, 36.891602, 42.423252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922573, 36.608456, 42.811817>,  <40.465263, 36.231426, 42.328960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922573, 36.608456, 42.811817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.581493, 36.817398, 42.809143>,  <40.376846, 36.942764, 42.807541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.581493, 36.817398, 42.809143>,  <40.922573, 36.608456, 42.811817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581493, 36.817398, 42.809143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037448, 0.073882, 0.996564,
		0.521055, 0.849521, -0.082560,
		-0.852701, 0.522356, -0.006684,
		40.325684, 36.974106, 42.807137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065289, 37.109253, 43.422894>,  <40.922573, 36.608456, 42.811817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065289, 37.109253, 43.422894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.673477, 37.145477, 43.350983>,  <40.438389, 37.167210, 43.307835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.673477, 37.145477, 43.350983>,  <41.065289, 37.109253, 43.422894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673477, 37.145477, 43.350983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179289, 0.013560, 0.983703,
		0.091518, 0.995799, 0.002954,
		-0.979530, 0.090556, -0.179777,
		40.379620, 37.172646, 43.297050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.924759, 37.645176, 44.828537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148186, 37.355171, 44.667358>,  <34.282242, 37.181168, 44.570652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148186, 37.355171, 44.667358>,  <33.924759, 37.645176, 44.828537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148186, 37.355171, 44.667358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236856, 0.326146, -0.915165,
		0.794923, 0.606620, 0.010451,
		0.558566, -0.725011, -0.402943,
		34.315754, 37.137669, 44.546474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066589, 37.836586, 44.140156>,  <33.924759, 37.645176, 44.828537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066589, 37.836586, 44.140156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175060, 37.452709, 44.110592>,  <34.240143, 37.222385, 44.092854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175060, 37.452709, 44.110592>,  <34.066589, 37.836586, 44.140156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175060, 37.452709, 44.110592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266127, -0.000966, -0.963938,
		0.925009, 0.281063, -0.255661,
		0.271174, -0.959689, -0.073905,
		34.256413, 37.164803, 44.088421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586548, 37.747936, 43.597813>,  <34.066589, 37.836586, 44.140156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586548, 37.747936, 43.597813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.377705, 37.409031, 43.636909>,  <34.252399, 37.205688, 43.660370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.377705, 37.409031, 43.636909>,  <34.586548, 37.747936, 43.597813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377705, 37.409031, 43.636909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126644, -0.036320, -0.991283,
		0.843425, -0.529934, -0.088337,
		-0.522106, -0.847261, 0.097746,
		34.221073, 37.154854, 43.666233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808105, 37.378738, 43.027565>,  <34.586548, 37.747936, 43.597813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808105, 37.378738, 43.027565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476200, 37.192406, 43.150528>,  <34.277058, 37.080605, 43.224304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476200, 37.192406, 43.150528>,  <34.808105, 37.378738, 43.027565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476200, 37.192406, 43.150528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200638, -0.264999, -0.943144,
		0.520808, -0.844261, 0.126423,
		-0.829762, -0.465831, 0.307404,
		34.227272, 37.052658, 43.242748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881207, 36.822407, 42.657223>,  <34.808105, 37.378738, 43.027565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881207, 36.822407, 42.657223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.502228, 36.855518, 42.780834>,  <34.274841, 36.875385, 42.855003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.502228, 36.855518, 42.780834>,  <34.881207, 36.822407, 42.657223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502228, 36.855518, 42.780834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319926, -0.243026, -0.915743,
		-0.000702, -0.966481, 0.256736,
		-0.947442, 0.082780, 0.309032,
		34.217995, 36.880352, 42.873543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402752, 36.297955, 42.434750>,  <34.881207, 36.822407, 42.657223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402752, 36.297955, 42.434750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136475, 36.588795, 42.501900>,  <33.976707, 36.763298, 42.542191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136475, 36.588795, 42.501900>,  <34.402752, 36.297955, 42.434750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136475, 36.588795, 42.501900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405466, -0.163580, -0.899355,
		-0.626459, -0.666760, 0.403708,
		-0.665692, 0.727099, 0.167872,
		33.936768, 36.806923, 42.552261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692337, 36.030163, 42.162849>,  <34.402752, 36.297955, 42.434750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692337, 36.030163, 42.162849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678680, 36.429535, 42.180607>,  <33.670486, 36.669159, 42.191261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678680, 36.429535, 42.180607>,  <33.692337, 36.030163, 42.162849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678680, 36.429535, 42.180607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397067, 0.027210, -0.917386,
		-0.917154, -0.048944, 0.395515,
		-0.034139, 0.998431, 0.044390,
		33.668438, 36.729065, 42.193924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145065, 36.148655, 41.819038>,  <33.692337, 36.030163, 42.162849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145065, 36.148655, 41.819038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298515, 36.517902, 41.808582>,  <33.390583, 36.739452, 41.802307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298515, 36.517902, 41.808582>,  <33.145065, 36.148655, 41.819038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298515, 36.517902, 41.808582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260119, 0.080853, -0.962186,
		-0.886100, 0.375914, 0.271138,
		0.383622, 0.923120, -0.026139,
		33.413601, 36.794838, 41.800739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703716, 36.504391, 41.396542>,  <33.145065, 36.148655, 41.819038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703716, 36.504391, 41.396542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994183, 36.778374, 41.420242>,  <33.168465, 36.942764, 41.434464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994183, 36.778374, 41.420242>,  <32.703716, 36.504391, 41.396542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994183, 36.778374, 41.420242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111066, 0.201930, -0.973082,
		-0.678485, 0.700041, 0.222711,
		0.726169, 0.684958, 0.059256,
		33.212032, 36.983860, 41.438019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497002, 37.047310, 40.992031>,  <32.703716, 36.504391, 41.396542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497002, 37.047310, 40.992031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895542, 37.081211, 40.996101>,  <33.134666, 37.101551, 40.998543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895542, 37.081211, 40.996101>,  <32.497002, 37.047310, 40.992031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895542, 37.081211, 40.996101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002591, 0.089091, -0.996020,
		-0.085325, 0.992411, 0.088546,
		0.996350, 0.084756, 0.010172,
		33.194447, 37.106636, 40.999153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616734, 37.452633, 40.500076>,  <32.497002, 37.047310, 40.992031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616734, 37.452633, 40.500076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.975056, 37.285385, 40.560352>,  <33.190048, 37.185036, 40.596516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.975056, 37.285385, 40.560352>,  <32.616734, 37.452633, 40.500076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975056, 37.285385, 40.560352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227429, 0.139956, -0.963685,
		0.381846, 0.897545, 0.220466,
		0.895807, -0.418120, 0.150686,
		33.243797, 37.159950, 40.605556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027332, 37.978882, 40.229130>,  <32.616734, 37.452633, 40.500076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027332, 37.978882, 40.229130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.216270, 37.626316, 40.228455>,  <33.329632, 37.414776, 40.228050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.216270, 37.626316, 40.228455>,  <33.027332, 37.978882, 40.229130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216270, 37.626316, 40.228455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123062, 0.067841, -0.990077,
		0.872783, 0.467447, 0.140513,
		0.472342, -0.881414, -0.001686,
		33.357971, 37.361893, 40.227947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643929, 38.175903, 39.874657>,  <33.027332, 37.978882, 40.229130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643929, 38.175903, 39.874657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589970, 37.781216, 39.838440>,  <33.557594, 37.544403, 39.816711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589970, 37.781216, 39.838440>,  <33.643929, 38.175903, 39.874657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589970, 37.781216, 39.838440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068515, 0.081865, -0.994286,
		0.988488, -0.140329, 0.056561,
		-0.134897, -0.986715, -0.090537,
		33.549500, 37.485203, 39.811279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284485, 37.928505, 39.565456>,  <33.643929, 38.175903, 39.874657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284485, 37.928505, 39.565456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988754, 37.664597, 39.511642>,  <33.811317, 37.506252, 39.479355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988754, 37.664597, 39.511642>,  <34.284485, 37.928505, 39.565456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988754, 37.664597, 39.511642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309494, -0.155521, -0.938097,
		0.598010, -0.735194, 0.319177,
		-0.739322, -0.659775, -0.134535,
		33.766956, 37.466663, 39.471283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861408, 38.295330, 39.444511>,  <34.284485, 37.928505, 39.565456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861408, 38.295330, 39.444511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815384, 38.688438, 39.386654>,  <34.787769, 38.924305, 39.351940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815384, 38.688438, 39.386654>,  <34.861408, 38.295330, 39.444511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815384, 38.688438, 39.386654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013776, 0.144017, 0.989479,
		0.993263, 0.115839, -0.003031,
		-0.115057, 0.982772, -0.144643,
		34.780869, 38.983269, 39.343262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279949, 38.720856, 39.836342>,  <34.861408, 38.295330, 39.444511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279949, 38.720856, 39.836342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.020687, 39.017281, 39.766228>,  <34.865131, 39.195137, 39.724159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.020687, 39.017281, 39.766228>,  <35.279949, 38.720856, 39.836342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020687, 39.017281, 39.766228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058065, 0.277610, 0.958937,
		0.759295, 0.611358, -0.222963,
		-0.648151, 0.741062, -0.175289,
		34.826241, 39.239601, 39.713642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481785, 39.327965, 40.230022>,  <35.279949, 38.720856, 39.836342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481785, 39.327965, 40.230022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.095768, 39.402618, 40.156418>,  <34.864159, 39.447411, 40.112255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.095768, 39.402618, 40.156418>,  <35.481785, 39.327965, 40.230022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095768, 39.402618, 40.156418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178445, 0.046337, 0.982858,
		0.191966, 0.981335, -0.011413,
		-0.965042, 0.186639, -0.184010,
		34.806255, 39.458611, 40.101215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383656, 39.917179, 40.575218>,  <35.481785, 39.327965, 40.230022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383656, 39.917179, 40.575218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016907, 39.767273, 40.520229>,  <34.796860, 39.677330, 40.487236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016907, 39.767273, 40.520229>,  <35.383656, 39.917179, 40.575218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016907, 39.767273, 40.520229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170579, 0.056463, 0.983725,
		-0.360906, 0.925398, -0.115697,
		-0.916869, -0.374768, -0.137475,
		34.741844, 39.654842, 40.478989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971626, 40.422562, 40.860592>,  <35.383656, 39.917179, 40.575218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971626, 40.422562, 40.860592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807503, 40.057854, 40.853394>,  <34.709026, 39.839031, 40.849075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807503, 40.057854, 40.853394>,  <34.971626, 40.422562, 40.860592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807503, 40.057854, 40.853394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080667, 0.016634, 0.996602,
		-0.908370, 0.410370, -0.080375,
		-0.410313, -0.911768, -0.017994,
		34.684410, 39.784325, 40.847996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459496, 40.427383, 41.322460>,  <34.971626, 40.422562, 40.860592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459496, 40.427383, 41.322460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523712, 40.036655, 41.265812>,  <34.562241, 39.802219, 41.231823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523712, 40.036655, 41.265812>,  <34.459496, 40.427383, 41.322460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523712, 40.036655, 41.265812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021979, -0.146980, 0.988895,
		-0.986784, -0.155646, -0.045066,
		0.160541, -0.976817, -0.141617,
		34.571873, 39.743610, 41.223328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151749, 40.085037, 41.911968>,  <34.459496, 40.427383, 41.322460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151749, 40.085037, 41.911968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379169, 39.786766, 41.772995>,  <34.515621, 39.607803, 41.689610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.379169, 39.786766, 41.772995>,  <34.151749, 40.085037, 41.911968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379169, 39.786766, 41.772995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116091, -0.345385, 0.931253,
		-0.814412, -0.569803, -0.109804,
		0.568556, -0.745677, -0.347434,
		34.549736, 39.563065, 41.668766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899712, 39.345718, 42.218613>,  <34.151749, 40.085037, 41.911968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899712, 39.345718, 42.218613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282478, 39.348213, 42.102497>,  <34.512138, 39.349709, 42.032829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282478, 39.348213, 42.102497>,  <33.899712, 39.345718, 42.218613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282478, 39.348213, 42.102497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281648, -0.262952, 0.922784,
		-0.070578, -0.964789, -0.253380,
		0.956918, 0.006236, -0.290289,
		34.569553, 39.350082, 42.015411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185898, 38.710224, 42.486240>,  <33.899712, 39.345718, 42.218613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185898, 38.710224, 42.486240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.501938, 38.950298, 42.436409>,  <34.691563, 39.094345, 42.406509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.501938, 38.950298, 42.436409>,  <34.185898, 38.710224, 42.486240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501938, 38.950298, 42.436409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376828, -0.315275, 0.870978,
		0.483474, -0.735102, -0.475266,
		0.790097, 0.600189, -0.124579,
		34.738968, 39.130356, 42.399036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622707, 38.489731, 42.959030>,  <34.185898, 38.710224, 42.486240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622707, 38.489731, 42.959030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837383, 38.820145, 42.890175>,  <34.966187, 39.018394, 42.848862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837383, 38.820145, 42.890175>,  <34.622707, 38.489731, 42.959030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837383, 38.820145, 42.890175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483000, -0.133473, 0.865388,
		0.691867, -0.547584, -0.470608,
		0.536686, 0.826037, -0.172138,
		34.998390, 39.067955, 42.838535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214046, 38.300423, 43.102890>,  <34.622707, 38.489731, 42.959030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214046, 38.300423, 43.102890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276314, 38.694412, 43.132801>,  <35.313675, 38.930805, 43.150745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276314, 38.694412, 43.132801>,  <35.214046, 38.300423, 43.102890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276314, 38.694412, 43.132801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488623, -0.142570, 0.860768,
		0.858496, -0.097457, -0.503475,
		0.155669, 0.984975, 0.074776,
		35.323013, 38.989906, 43.155235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811005, 38.374073, 43.186584>,  <35.214046, 38.300423, 43.102890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811005, 38.374073, 43.186584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724033, 38.742920, 43.314602>,  <35.671852, 38.964226, 43.391415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724033, 38.742920, 43.314602>,  <35.811005, 38.374073, 43.186584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724033, 38.742920, 43.314602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578321, -0.142439, 0.803278,
		0.786302, 0.359742, -0.502309,
		-0.217425, 0.922115, 0.320047,
		35.658806, 39.019554, 43.410614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467754, 38.703968, 43.314709>,  <35.811005, 38.374073, 43.186584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467754, 38.703968, 43.314709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193256, 38.905407, 43.524647>,  <36.028557, 39.026272, 43.650608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193256, 38.905407, 43.524647>,  <36.467754, 38.703968, 43.314709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193256, 38.905407, 43.524647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526474, -0.153984, 0.836130,
		0.501891, 0.850105, -0.159461,
		-0.686244, 0.503598, 0.524841,
		35.987385, 39.056488, 43.682098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858498, 39.260574, 43.857815>,  <36.467754, 38.703968, 43.314709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858498, 39.260574, 43.857815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.497810, 39.181377, 44.011547>,  <36.281399, 39.133858, 44.103786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.497810, 39.181377, 44.011547>,  <36.858498, 39.260574, 43.857815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497810, 39.181377, 44.011547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427664, -0.278246, 0.860048,
		-0.063344, 0.939882, 0.335573,
		-0.901716, -0.197992, 0.384328,
		36.227295, 39.121979, 44.126846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300175, 39.949749, 43.779179>,  <36.858498, 39.260574, 43.857815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300175, 39.949749, 43.779179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.696568, 40.000938, 43.763279>,  <37.934402, 40.031651, 43.753738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.696568, 40.000938, 43.763279>,  <37.300175, 39.949749, 43.779179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696568, 40.000938, 43.763279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092781, 0.441195, -0.892602,
		-0.096689, 0.888240, 0.449089,
		0.990981, 0.127971, -0.039753,
		37.993862, 40.039330, 43.751354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331982, 40.676167, 43.525742>,  <37.300175, 39.949749, 43.779179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331982, 40.676167, 43.525742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660198, 40.461544, 43.446938>,  <37.857128, 40.332771, 43.399654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660198, 40.461544, 43.446938>,  <37.331982, 40.676167, 43.525742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660198, 40.461544, 43.446938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044292, 0.403333, -0.913981,
		0.569863, 0.741236, 0.354718,
		0.820545, -0.536555, -0.197014,
		37.906361, 40.300579, 43.387833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593708, 41.087925, 43.093765>,  <37.331982, 40.676167, 43.525742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593708, 41.087925, 43.093765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.804535, 40.753098, 43.035091>,  <37.931030, 40.552200, 42.999889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.804535, 40.753098, 43.035091>,  <37.593708, 41.087925, 43.093765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804535, 40.753098, 43.035091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083846, 0.222981, -0.971210,
		0.845679, 0.499591, 0.187711,
		0.527064, -0.837071, -0.146682,
		37.962654, 40.501976, 42.991085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992420, 41.348354, 42.672138>,  <37.593708, 41.087925, 43.093765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992420, 41.348354, 42.672138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025021, 40.952187, 42.627541>,  <38.044582, 40.714485, 42.600780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025021, 40.952187, 42.627541>,  <37.992420, 41.348354, 42.672138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025021, 40.952187, 42.627541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166802, 0.123847, -0.978182,
		0.982616, 0.061127, 0.175297,
		0.081503, -0.990417, -0.111498,
		38.049473, 40.655060, 42.594090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669098, 41.195114, 42.271961>,  <37.992420, 41.348354, 42.672138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669098, 41.195114, 42.271961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438057, 40.871838, 42.226006>,  <38.299431, 40.677872, 42.198433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438057, 40.871838, 42.226006>,  <38.669098, 41.195114, 42.271961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438057, 40.871838, 42.226006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228697, -0.025107, -0.973174,
		0.783625, -0.588385, 0.199333,
		-0.577606, -0.808191, -0.114887,
		38.264774, 40.629379, 42.191540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988224, 40.940067, 41.759998>,  <38.669098, 41.195114, 42.271961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988224, 40.940067, 41.759998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.638912, 40.745190, 41.761898>,  <38.429325, 40.628262, 41.763039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.638912, 40.745190, 41.761898>,  <38.988224, 40.940067, 41.759998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638912, 40.745190, 41.761898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005563, 0.000225, -0.999985,
		0.487188, -0.873292, -0.002907,
		-0.873280, -0.487197, 0.004749,
		38.376930, 40.599030, 41.763321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005253, 40.424984, 41.370102>,  <38.988224, 40.940067, 41.759998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005253, 40.424984, 41.370102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.608963, 40.476273, 41.388103>,  <38.371189, 40.507046, 41.398907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.608963, 40.476273, 41.388103>,  <39.005253, 40.424984, 41.370102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608963, 40.476273, 41.388103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057257, -0.093512, -0.993970,
		-0.123243, -0.987327, 0.099986,
		-0.990723, 0.128225, 0.045006,
		38.311745, 40.514736, 41.401608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663509, 39.794743, 41.164246>,  <39.005253, 40.424984, 41.370102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663509, 39.794743, 41.164246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.400234, 40.089905, 41.104534>,  <38.242268, 40.267002, 41.068707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.400234, 40.089905, 41.104534>,  <38.663509, 39.794743, 41.164246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400234, 40.089905, 41.104534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049680, -0.240419, -0.969397,
		-0.751211, -0.630632, 0.194900,
		-0.658190, 0.737904, -0.149275,
		38.202778, 40.311275, 41.059753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034615, 39.562614, 40.789623>,  <38.663509, 39.794743, 41.164246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034615, 39.562614, 40.789623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.040485, 39.954590, 40.710117>,  <38.044010, 40.189774, 40.662415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.040485, 39.954590, 40.710117>,  <38.034615, 39.562614, 40.789623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040485, 39.954590, 40.710117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208497, -0.197416, -0.957891,
		-0.977913, -0.027381, -0.207212,
		0.014679, 0.979937, -0.198764,
		38.044888, 40.248569, 40.650490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536194, 39.661114, 40.309448>,  <38.034615, 39.562614, 40.789623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536194, 39.661114, 40.309448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.767281, 39.984699, 40.265945>,  <37.905933, 40.178848, 40.239845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.767281, 39.984699, 40.265945>,  <37.536194, 39.661114, 40.309448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767281, 39.984699, 40.265945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079188, -0.188156, -0.978941,
		-0.812389, 0.556937, -0.172761,
		0.577715, 0.808962, -0.108753,
		37.940594, 40.227386, 40.233318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312817, 39.992924, 39.697617>,  <37.536194, 39.661114, 40.309448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312817, 39.992924, 39.697617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686222, 40.118538, 39.766819>,  <37.910267, 40.193909, 39.808342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686222, 40.118538, 39.766819>,  <37.312817, 39.992924, 39.697617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686222, 40.118538, 39.766819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257083, -0.249922, -0.933513,
		-0.249922, 0.915925, -0.314040,
		0.933513, 0.314040, 0.173008,
		37.966274, 40.212749, 39.818722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584641, 40.369473, 39.009472>,  <37.312817, 39.992924, 39.697617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584641, 40.369473, 39.009472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884205, 40.227837, 39.233528>,  <38.063942, 40.142857, 39.367962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884205, 40.227837, 39.233528>,  <37.584641, 40.369473, 39.009472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884205, 40.227837, 39.233528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396986, -0.437080, -0.807071,
		0.530601, 0.826790, -0.186764,
		0.748909, -0.354090, 0.560139,
		38.108879, 40.121609, 39.401569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188850, 40.469082, 38.568382>,  <37.584641, 40.369473, 39.009472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188850, 40.469082, 38.568382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286800, 40.182854, 38.830067>,  <38.345570, 40.011116, 38.987080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286800, 40.182854, 38.830067>,  <38.188850, 40.469082, 38.568382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286800, 40.182854, 38.830067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445529, -0.516249, -0.731431,
		0.861127, 0.470582, 0.192390,
		0.244877, -0.715570, 0.654213,
		38.360264, 39.968182, 39.026329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712963, 40.268993, 38.288754>,  <38.188850, 40.469082, 38.568382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712963, 40.268993, 38.288754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692055, 39.987064, 38.571735>,  <38.679508, 39.817905, 38.741524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692055, 39.987064, 38.571735>,  <38.712963, 40.268993, 38.288754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692055, 39.987064, 38.571735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493109, -0.634252, -0.595457,
		0.868396, 0.317728, 0.380707,
		-0.052271, -0.704822, 0.707456,
		38.676373, 39.775620, 38.783974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.901884, 34.541401, 26.124849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034328, 34.163967, 26.126661>,  <27.113794, 33.937508, 26.127748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034328, 34.163967, 26.126661>,  <26.901884, 34.541401, 26.124849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034328, 34.163967, 26.126661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345796, 0.125808, 0.929837,
		-0.877947, -0.306312, 0.367943,
		0.331111, -0.943581, 0.004531,
		27.133661, 33.880894, 26.128021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547199, 34.117809, 26.542961>,  <26.901884, 34.541401, 26.124849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547199, 34.117809, 26.542961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.929247, 33.999477, 26.549023>,  <27.158476, 33.928478, 26.552660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.929247, 33.999477, 26.549023>,  <26.547199, 34.117809, 26.542961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929247, 33.999477, 26.549023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059758, 0.242538, 0.968300,
		-0.290125, -0.923938, 0.249332,
		0.955122, -0.295827, 0.015153,
		27.215784, 33.910728, 26.553568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530704, 33.779724, 27.176260>,  <26.547199, 34.117809, 26.542961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530704, 33.779724, 27.176260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915655, 33.840672, 27.086266>,  <27.146626, 33.877239, 27.032269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915655, 33.840672, 27.086266>,  <26.530704, 33.779724, 27.176260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915655, 33.840672, 27.086266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179447, 0.265371, 0.947300,
		0.204038, -0.952031, 0.228046,
		0.962375, 0.152363, -0.224985,
		27.204369, 33.886383, 27.018770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914513, 33.403622, 27.762871>,  <26.530704, 33.779724, 27.176260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914513, 33.403622, 27.762871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164076, 33.673023, 27.604311>,  <27.313814, 33.834663, 27.509174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164076, 33.673023, 27.604311>,  <26.914513, 33.403622, 27.762871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164076, 33.673023, 27.604311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225925, 0.330129, 0.916500,
		0.748128, -0.661368, 0.053809,
		0.623908, 0.673503, -0.396399,
		27.351248, 33.875072, 27.485392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579826, 33.309170, 28.081226>,  <26.914513, 33.403622, 27.762871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579826, 33.309170, 28.081226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585110, 33.677059, 27.924286>,  <27.588280, 33.897793, 27.830122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585110, 33.677059, 27.924286>,  <27.579826, 33.309170, 28.081226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585110, 33.677059, 27.924286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093004, 0.389553, 0.916296,
		0.995578, -0.048594, -0.080392,
		0.013210, 0.919721, -0.392350,
		27.589073, 33.952976, 27.806581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065304, 33.681984, 28.461824>,  <27.579826, 33.309170, 28.081226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065304, 33.681984, 28.461824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.845652, 33.983131, 28.316692>,  <27.713861, 34.163818, 28.229612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.845652, 33.983131, 28.316692>,  <28.065304, 33.681984, 28.461824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845652, 33.983131, 28.316692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275310, 0.572870, 0.772026,
		0.789090, 0.324050, -0.521852,
		-0.549128, 0.752868, -0.362832,
		27.680914, 34.208992, 28.207842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548141, 34.204144, 28.546209>,  <28.065304, 33.681984, 28.461824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548141, 34.204144, 28.546209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174646, 34.342831, 28.510607>,  <27.950550, 34.426044, 28.489244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174646, 34.342831, 28.510607>,  <28.548141, 34.204144, 28.546209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174646, 34.342831, 28.510607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120629, 0.538883, 0.833699,
		0.337026, 0.767717, -0.544999,
		-0.933736, 0.346721, -0.089008,
		27.894526, 34.446846, 28.483904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639500, 34.942051, 28.719744>,  <28.548141, 34.204144, 28.546209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639500, 34.942051, 28.719744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254696, 34.853008, 28.782976>,  <28.023813, 34.799583, 28.820915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254696, 34.853008, 28.782976>,  <28.639500, 34.942051, 28.719744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254696, 34.853008, 28.782976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058351, 0.733255, 0.677445,
		-0.266713, 0.642484, -0.718386,
		-0.962008, -0.222602, 0.158079,
		27.966093, 34.786228, 28.830400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379059, 35.569942, 28.860109>,  <28.639500, 34.942051, 28.719744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379059, 35.569942, 28.860109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087742, 35.319469, 28.971457>,  <27.912952, 35.169186, 29.038265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087742, 35.319469, 28.971457>,  <28.379059, 35.569942, 28.860109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087742, 35.319469, 28.971457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129278, 0.524469, 0.841558,
		-0.672963, 0.576913, -0.462918,
		-0.728292, -0.626182, 0.278366,
		27.869255, 35.131615, 29.054966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784357, 36.030575, 29.200962>,  <28.379059, 35.569942, 28.860109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784357, 36.030575, 29.200962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760084, 35.659061, 29.347206>,  <27.745520, 35.436153, 29.434952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760084, 35.659061, 29.347206>,  <27.784357, 36.030575, 29.200962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760084, 35.659061, 29.347206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223532, 0.369627, 0.901892,
		-0.972806, -0.026996, -0.230044,
		-0.060683, -0.928788, 0.365610,
		27.741879, 35.380424, 29.456888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295805, 36.204155, 29.721928>,  <27.784357, 36.030575, 29.200962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295805, 36.204155, 29.721928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449919, 35.848740, 29.821569>,  <27.542387, 35.635490, 29.881353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449919, 35.848740, 29.821569>,  <27.295805, 36.204155, 29.721928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449919, 35.848740, 29.821569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164156, 0.199644, 0.966020,
		-0.908079, -0.413086, -0.068939,
		0.385287, -0.888539, 0.249103,
		27.565504, 35.582176, 29.896301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786121, 35.852345, 30.127489>,  <27.295805, 36.204155, 29.721928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786121, 35.852345, 30.127489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.147589, 35.700352, 30.206474>,  <27.364470, 35.609154, 30.253866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.147589, 35.700352, 30.206474>,  <26.786121, 35.852345, 30.127489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147589, 35.700352, 30.206474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085470, 0.291795, 0.952654,
		-0.419613, -0.877763, 0.231209,
		0.903670, -0.379985, 0.197464,
		27.418690, 35.586357, 30.265713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708046, 35.442066, 30.783150>,  <26.786121, 35.852345, 30.127489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708046, 35.442066, 30.783150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104942, 35.488560, 30.765484>,  <27.343081, 35.516457, 30.754885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104942, 35.488560, 30.765484>,  <26.708046, 35.442066, 30.783150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104942, 35.488560, 30.765484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023396, 0.174309, 0.984413,
		0.122114, -0.977808, 0.170237,
		0.992240, 0.116228, -0.044162,
		27.402615, 35.523430, 30.752235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888569, 34.948334, 31.219402>,  <26.708046, 35.442066, 30.783150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888569, 34.948334, 31.219402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166254, 35.235607, 31.200308>,  <27.332865, 35.407970, 31.188850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166254, 35.235607, 31.200308>,  <26.888569, 34.948334, 31.219402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166254, 35.235607, 31.200308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129010, 0.189407, 0.973387,
		0.708112, -0.669580, 0.224142,
		0.694214, 0.718184, -0.047738,
		27.374519, 35.451061, 31.185986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266376, 34.846615, 31.776209>,  <26.888569, 34.948334, 31.219402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266376, 34.846615, 31.776209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377554, 35.220123, 31.686039>,  <27.444260, 35.444229, 31.631937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377554, 35.220123, 31.686039>,  <27.266376, 34.846615, 31.776209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377554, 35.220123, 31.686039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046569, 0.247496, 0.967769,
		0.959468, -0.258486, 0.112274,
		0.277942, 0.933773, -0.225427,
		27.460938, 35.500256, 31.618410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739458, 35.043591, 32.323219>,  <27.266376, 34.846615, 31.776209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739458, 35.043591, 32.323219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.676926, 35.407970, 32.170521>,  <27.639406, 35.626598, 32.078903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.676926, 35.407970, 32.170521>,  <27.739458, 35.043591, 32.323219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676926, 35.407970, 32.170521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023831, 0.389862, 0.920565,
		0.987417, 0.134814, -0.082656,
		-0.156329, 0.910951, -0.381744,
		27.630028, 35.681255, 32.055996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259712, 35.514442, 32.500946>,  <27.739458, 35.043591, 32.323219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259712, 35.514442, 32.500946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938488, 35.741962, 32.429874>,  <27.745754, 35.878475, 32.387234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938488, 35.741962, 32.429874>,  <28.259712, 35.514442, 32.500946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938488, 35.741962, 32.429874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023275, 0.327878, 0.944433,
		0.595446, 0.754300, -0.276544,
		-0.803058, 0.568795, -0.177677,
		27.697571, 35.912601, 32.376572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481310, 36.069386, 32.937519>,  <28.259712, 35.514442, 32.500946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481310, 36.069386, 32.937519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098370, 36.110470, 32.829498>,  <27.868605, 36.135120, 32.764687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098370, 36.110470, 32.829498>,  <28.481310, 36.069386, 32.937519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098370, 36.110470, 32.829498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204071, 0.421296, 0.883665,
		0.204534, 0.901088, -0.382368,
		-0.957351, 0.102709, -0.270055,
		27.811165, 36.141281, 32.748482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145391, 36.348698, 33.127468>,  <28.481310, 36.069386, 32.937519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145391, 36.348698, 33.127468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.501215, 36.515774, 33.053474>,  <29.714710, 36.616020, 33.009079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.501215, 36.515774, 33.053474>,  <29.145391, 36.348698, 33.127468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501215, 36.515774, 33.053474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166271, -0.673211, -0.720515,
		-0.425485, 0.610183, -0.668311,
		0.889560, 0.417689, -0.184985,
		29.768084, 36.641079, 32.997978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153664, 36.533699, 32.466755>,  <29.145391, 36.348698, 33.127468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153664, 36.533699, 32.466755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537962, 36.491444, 32.569366>,  <29.768541, 36.466091, 32.630936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537962, 36.491444, 32.569366>,  <29.153664, 36.533699, 32.466755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537962, 36.491444, 32.569366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160714, -0.541805, -0.824996,
		0.226139, 0.833840, -0.503560,
		0.960746, -0.105635, 0.256533,
		29.826185, 36.459755, 32.646328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510820, 36.772163, 31.899216>,  <29.153664, 36.533699, 32.466755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510820, 36.772163, 31.899216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758759, 36.530373, 32.099373>,  <29.907522, 36.385296, 32.219467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758759, 36.530373, 32.099373>,  <29.510820, 36.772163, 31.899216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758759, 36.530373, 32.099373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289802, -0.416258, -0.861826,
		0.729249, 0.679215, -0.082837,
		0.619847, -0.604480, 0.500394,
		29.944712, 36.349030, 32.249493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120317, 36.771458, 31.539494>,  <29.510820, 36.772163, 31.899216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120317, 36.771458, 31.539494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135557, 36.429047, 31.745703>,  <30.144701, 36.223598, 31.869429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135557, 36.429047, 31.745703>,  <30.120317, 36.771458, 31.539494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135557, 36.429047, 31.745703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330868, -0.475992, -0.814836,
		0.942908, 0.201616, 0.265097,
		0.038100, -0.856027, 0.515525,
		30.146988, 36.172237, 31.900360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711266, 36.455292, 31.292953>,  <30.120317, 36.771458, 31.539494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711266, 36.455292, 31.292953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534136, 36.151112, 31.482952>,  <30.427858, 35.968605, 31.596951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534136, 36.151112, 31.482952>,  <30.711266, 36.455292, 31.292953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534136, 36.151112, 31.482952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302739, -0.625473, -0.719119,
		0.843952, -0.174645, 0.507194,
		-0.442826, -0.760449, 0.474997,
		30.401287, 35.922977, 31.625452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248062, 35.965725, 31.330524>,  <30.711266, 36.455292, 31.292953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248062, 35.965725, 31.330524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.909672, 35.755089, 31.364065>,  <30.706638, 35.628708, 31.384190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.909672, 35.755089, 31.364065>,  <31.248062, 35.965725, 31.330524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909672, 35.755089, 31.364065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377726, -0.702814, -0.602806,
		0.376363, -0.478286, 0.793469,
		-0.845975, -0.526588, 0.083852,
		30.655880, 35.597111, 31.389221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399340, 35.135372, 31.430201>,  <31.248062, 35.965725, 31.330524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399340, 35.135372, 31.430201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.019339, 35.157204, 31.307226>,  <30.791338, 35.170303, 31.233442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.019339, 35.157204, 31.307226>,  <31.399340, 35.135372, 31.430201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019339, 35.157204, 31.307226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226770, -0.556240, -0.799483,
		-0.214642, -0.829228, 0.516052,
		-0.950002, 0.054578, -0.307436,
		30.734339, 35.173576, 31.214994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364246, 34.475880, 31.099722>,  <31.399340, 35.135372, 31.430201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364246, 34.475880, 31.099722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.055590, 34.678493, 30.945841>,  <30.870396, 34.800060, 30.853512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.055590, 34.678493, 30.945841>,  <31.364246, 34.475880, 31.099722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055590, 34.678493, 30.945841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226014, -0.346999, -0.910225,
		-0.594550, -0.789314, 0.153275,
		-0.771639, 0.506532, -0.384705,
		30.824099, 34.830452, 30.830429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070286, 33.941219, 30.854439>,  <31.364246, 34.475880, 31.099722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070286, 33.941219, 30.854439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912548, 34.258274, 30.668442>,  <30.817905, 34.448505, 30.556843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912548, 34.258274, 30.668442>,  <31.070286, 33.941219, 30.854439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912548, 34.258274, 30.668442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180537, -0.429316, -0.884926,
		-0.901054, -0.432915, 0.026199,
		-0.394345, 0.792636, -0.464994,
		30.794245, 34.496063, 30.528944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428427, 33.731678, 30.524101>,  <31.070286, 33.941219, 30.854439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428427, 33.731678, 30.524101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.588326, 34.052200, 30.346064>,  <30.684265, 34.244514, 30.239241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.588326, 34.052200, 30.346064>,  <30.428427, 33.731678, 30.524101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588326, 34.052200, 30.346064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104268, -0.522177, -0.846439,
		-0.910675, 0.291954, -0.292290,
		0.399749, 0.801308, -0.445093,
		30.708250, 34.292591, 30.212536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014273, 33.738834, 29.886684>,  <30.428427, 33.731678, 30.524101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014273, 33.738834, 29.886684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307951, 33.993298, 29.791807>,  <30.484158, 34.145977, 29.734880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307951, 33.993298, 29.791807>,  <30.014273, 33.738834, 29.886684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307951, 33.993298, 29.791807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018571, -0.368047, -0.929622,
		-0.678685, 0.678118, -0.282032,
		0.734194, 0.636158, -0.237195,
		30.528210, 34.184147, 29.720648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764965, 34.110550, 29.349514>,  <30.014273, 33.738834, 29.886684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764965, 34.110550, 29.349514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.164520, 34.106628, 29.331064>,  <30.404253, 34.104275, 29.319994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.164520, 34.106628, 29.331064>,  <29.764965, 34.110550, 29.349514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164520, 34.106628, 29.331064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046829, -0.321096, -0.945888,
		-0.005535, 0.946996, -0.321199,
		0.998888, -0.009806, -0.046124,
		30.464186, 34.103687, 29.317226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808664, 34.249016, 28.679352>,  <29.764965, 34.110550, 29.349514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808664, 34.249016, 28.679352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179968, 34.135666, 28.775711>,  <30.402750, 34.067654, 28.833527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179968, 34.135666, 28.775711>,  <29.808664, 34.249016, 28.679352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179968, 34.135666, 28.775711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063650, -0.517103, -0.853553,
		0.366448, 0.807652, -0.461968,
		0.928259, -0.283378, 0.240899,
		30.458447, 34.050652, 28.847980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263721, 34.530537, 28.103062>,  <29.808664, 34.249016, 28.679352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263721, 34.530537, 28.103062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471266, 34.235325, 28.275614>,  <30.595793, 34.058197, 28.379145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471266, 34.235325, 28.275614>,  <30.263721, 34.530537, 28.103062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471266, 34.235325, 28.275614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118398, -0.437719, -0.891282,
		0.846621, 0.513525, -0.139733,
		0.518860, -0.738034, 0.431382,
		30.626925, 34.013916, 28.405029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843102, 34.409107, 27.665205>,  <30.263721, 34.530537, 28.103062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843102, 34.409107, 27.665205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.765171, 34.088581, 27.891457>,  <30.718412, 33.896267, 28.027208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.765171, 34.088581, 27.891457>,  <30.843102, 34.409107, 27.665205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765171, 34.088581, 27.891457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115875, -0.553839, -0.824521,
		0.973969, -0.226180, 0.015050,
		-0.194826, -0.801314, 0.565631,
		30.706724, 33.848186, 28.061146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274048, 33.837700, 27.501434>,  <30.843102, 34.409107, 27.665205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274048, 33.837700, 27.501434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.962210, 33.664120, 27.682066>,  <30.775106, 33.559971, 27.790445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.962210, 33.664120, 27.682066>,  <31.274048, 33.837700, 27.501434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962210, 33.664120, 27.682066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065699, -0.660403, -0.748032,
		0.622831, -0.612829, 0.486336,
		-0.779593, -0.433946, 0.451581,
		30.728333, 33.533936, 27.817541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426661, 33.167675, 27.402905>,  <31.274048, 33.837700, 27.501434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426661, 33.167675, 27.402905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.033632, 33.186016, 27.474962>,  <30.797815, 33.197021, 27.518198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.033632, 33.186016, 27.474962>,  <31.426661, 33.167675, 27.402905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033632, 33.186016, 27.474962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165135, -0.660269, -0.732649,
		0.085352, -0.749628, 0.656333,
		-0.982571, 0.045851, 0.180146,
		30.738861, 33.199772, 27.529005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139397, 32.445396, 27.567825>,  <31.426661, 33.167675, 27.402905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139397, 32.445396, 27.567825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816545, 32.660851, 27.471148>,  <30.622835, 32.790123, 27.413141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816545, 32.660851, 27.471148>,  <31.139397, 32.445396, 27.567825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816545, 32.660851, 27.471148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291344, -0.719469, -0.630463,
		-0.513481, -0.438448, 0.737632,
		-0.807128, 0.538636, -0.241695,
		30.574408, 32.822441, 27.398640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613035, 32.028889, 27.544624>,  <31.139397, 32.445396, 27.567825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613035, 32.028889, 27.544624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478971, 32.337265, 27.327986>,  <30.398533, 32.522289, 27.198002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478971, 32.337265, 27.327986>,  <30.613035, 32.028889, 27.544624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478971, 32.337265, 27.327986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235902, -0.625200, -0.743959,
		-0.912151, -0.121580, 0.391406,
		-0.335158, 0.770937, -0.541596,
		30.378424, 32.568546, 27.165506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104792, 31.778805, 27.258083>,  <30.613035, 32.028889, 27.544624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104792, 31.778805, 27.258083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.149229, 32.110146, 27.038450>,  <30.175892, 32.308949, 26.906672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.149229, 32.110146, 27.038450>,  <30.104792, 31.778805, 27.258083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149229, 32.110146, 27.038450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210931, -0.520260, -0.827549,
		-0.971168, 0.207752, 0.116928,
		0.111092, 0.828353, -0.549081,
		30.182556, 32.358650, 26.873726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443048, 31.956463, 26.887629>,  <30.104792, 31.778805, 27.258083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443048, 31.956463, 26.887629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745642, 32.123631, 26.686401>,  <29.927198, 32.223930, 26.565664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745642, 32.123631, 26.686401>,  <29.443048, 31.956463, 26.887629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745642, 32.123631, 26.686401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389477, -0.330062, -0.859864,
		-0.525396, 0.846407, -0.086917,
		0.756483, 0.417918, -0.503069,
		29.972586, 32.249004, 26.535480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122391, 32.277805, 26.281773>,  <29.443048, 31.956463, 26.887629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122391, 32.277805, 26.281773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505146, 32.285126, 26.165819>,  <29.734798, 32.289516, 26.096247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505146, 32.285126, 26.165819>,  <29.122391, 32.277805, 26.281773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505146, 32.285126, 26.165819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286379, -0.107232, -0.952097,
		-0.048507, 0.994066, -0.097368,
		0.956888, 0.018299, -0.289881,
		29.792212, 32.290615, 26.078856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181728, 32.890553, 25.818090>,  <29.122391, 32.277805, 26.281773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181728, 32.890553, 25.818090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448961, 32.607624, 25.725691>,  <29.609301, 32.437866, 25.670250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448961, 32.607624, 25.725691>,  <29.181728, 32.890553, 25.818090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448961, 32.607624, 25.725691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219665, 0.109130, -0.969452,
		0.710924, 0.698417, -0.082466,
		0.668083, -0.707322, -0.231001,
		29.649385, 32.395428, 25.656391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679464, 33.213829, 25.297993>,  <29.181728, 32.890553, 25.818090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679464, 33.213829, 25.297993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.603033, 32.825027, 25.243303>,  <29.557175, 32.591747, 25.210489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.603033, 32.825027, 25.243303>,  <29.679464, 33.213829, 25.297993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603033, 32.825027, 25.243303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179016, 0.171464, -0.968790,
		0.965113, -0.160640, -0.206768,
		-0.191079, -0.972006, -0.136725,
		29.545710, 32.533424, 25.202286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.830513, 37.729740, 43.737514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.524303, 37.473961, 43.709011>,  <40.340580, 37.320492, 43.691910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.524303, 37.473961, 43.709011>,  <40.830513, 37.729740, 43.737514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524303, 37.473961, 43.709011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140835, 0.058474, 0.988305,
		-0.627808, 0.766603, -0.134820,
		-0.765521, -0.639453, -0.071254,
		40.294647, 37.282124, 43.687634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130550, 38.036972, 43.953465>,  <40.830513, 37.729740, 43.737514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130550, 38.036972, 43.953465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.087414, 37.641289, 43.993126>,  <40.061531, 37.403877, 44.016922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.087414, 37.641289, 43.993126>,  <40.130550, 38.036972, 43.953465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087414, 37.641289, 43.993126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103282, 0.110342, 0.988513,
		-0.988788, 0.096365, -0.114068,
		-0.107845, -0.989211, 0.099153,
		40.055061, 37.344524, 44.022873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648655, 37.961227, 44.523342>,  <40.130550, 38.036972, 43.953465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648655, 37.961227, 44.523342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.820415, 37.602741, 44.478756>,  <39.923470, 37.387650, 44.452003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.820415, 37.602741, 44.478756>,  <39.648655, 37.961227, 44.523342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820415, 37.602741, 44.478756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017352, -0.115211, 0.993189,
		-0.902949, -0.428407, -0.033921,
		0.429397, -0.896211, -0.111463,
		39.949234, 37.333878, 44.445316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271111, 37.420452, 44.887486>,  <39.648655, 37.961227, 44.523342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271111, 37.420452, 44.887486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.619923, 37.225822, 44.866253>,  <39.829208, 37.109043, 44.853512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.619923, 37.225822, 44.866253>,  <39.271111, 37.420452, 44.887486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619923, 37.225822, 44.866253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011209, -0.088573, 0.996007,
		-0.489332, -0.869138, -0.071784,
		0.872025, -0.486573, -0.053083,
		39.881531, 37.079849, 44.850327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304199, 37.046764, 45.426693>,  <39.271111, 37.420452, 44.887486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304199, 37.046764, 45.426693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.687447, 37.013092, 45.317211>,  <39.917397, 36.992889, 45.251522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.687447, 37.013092, 45.317211>,  <39.304199, 37.046764, 45.426693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687447, 37.013092, 45.317211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271018, -0.042088, 0.961654,
		-0.092471, -0.995561, -0.017511,
		0.958122, -0.084179, -0.273707,
		39.974884, 36.987839, 45.235100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596714, 36.326942, 45.626183>,  <39.304199, 37.046764, 45.426693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596714, 36.326942, 45.626183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.904545, 36.575516, 45.567444>,  <40.089245, 36.724659, 45.532200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.904545, 36.575516, 45.567444>,  <39.596714, 36.326942, 45.626183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904545, 36.575516, 45.567444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288052, -0.132613, 0.948388,
		0.569887, -0.772161, -0.281061,
		0.769581, 0.621435, -0.146848,
		40.135418, 36.761948, 45.523388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060707, 36.049126, 46.144989>,  <39.596714, 36.326942, 45.626183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060707, 36.049126, 46.144989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201385, 36.409969, 46.044975>,  <40.285793, 36.626476, 45.984966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201385, 36.409969, 46.044975>,  <40.060707, 36.049126, 46.144989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201385, 36.409969, 46.044975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426285, 0.083458, 0.900730,
		0.833422, -0.423365, -0.355203,
		0.351693, 0.902107, -0.250030,
		40.306892, 36.680603, 45.969967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852875, 36.007862, 46.381065>,  <40.060707, 36.049126, 46.144989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852875, 36.007862, 46.381065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.708950, 36.377945, 46.332859>,  <40.622593, 36.599995, 46.303936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.708950, 36.377945, 46.332859>,  <40.852875, 36.007862, 46.381065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708950, 36.377945, 46.332859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409412, 0.272630, 0.870663,
		0.838400, 0.263937, -0.476888,
		-0.359814, 0.925208, -0.120514,
		40.601006, 36.655506, 46.296703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384846, 36.412609, 46.401722>,  <40.852875, 36.007862, 46.381065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384846, 36.412609, 46.401722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.062733, 36.621777, 46.513489>,  <40.869465, 36.747276, 46.580547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.062733, 36.621777, 46.513489>,  <41.384846, 36.412609, 46.401722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062733, 36.621777, 46.513489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459325, 0.252260, 0.851695,
		0.374884, 0.814199, -0.443331,
		-0.805284, 0.522920, 0.279414,
		40.821148, 36.778652, 46.597313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616947, 36.897007, 46.799625>,  <41.384846, 36.412609, 46.401722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616947, 36.897007, 46.799625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.230244, 36.925343, 46.897903>,  <40.998222, 36.942345, 46.956871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.230244, 36.925343, 46.897903>,  <41.616947, 36.897007, 46.799625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230244, 36.925343, 46.897903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252487, 0.416380, 0.873429,
		-0.040429, 0.906427, -0.420424,
		-0.966755, 0.070840, 0.245694,
		40.940216, 36.946594, 46.971611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517979, 37.560589, 47.123920>,  <41.616947, 36.897007, 46.799625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517979, 37.560589, 47.123920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.214470, 37.336666, 47.257114>,  <41.032364, 37.202312, 47.337032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.214470, 37.336666, 47.257114>,  <41.517979, 37.560589, 47.123920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214470, 37.336666, 47.257114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075190, 0.432526, 0.898481,
		-0.647000, 0.706781, -0.286097,
		-0.758773, -0.559805, 0.332988,
		40.986839, 37.168724, 47.357010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900417, 38.090946, 47.274563>,  <41.517979, 37.560589, 47.123920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900417, 38.090946, 47.274563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.859688, 37.734589, 47.451626>,  <40.835251, 37.520775, 47.557865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.859688, 37.734589, 47.451626>,  <40.900417, 38.090946, 47.274563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859688, 37.734589, 47.451626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269667, 0.453030, 0.849731,
		-0.957555, -0.032846, -0.286374,
		-0.101826, -0.890890, 0.442659,
		40.829140, 37.467323, 47.584423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302437, 38.117153, 47.661175>,  <40.900417, 38.090946, 47.274563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302437, 38.117153, 47.661175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.513378, 37.834694, 47.850174>,  <40.639942, 37.665218, 47.963573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.513378, 37.834694, 47.850174>,  <40.302437, 38.117153, 47.661175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513378, 37.834694, 47.850174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294903, 0.369413, 0.881230,
		-0.796825, -0.604061, -0.013433,
		0.527354, -0.706147, 0.472497,
		40.671585, 37.622849, 47.991924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002876, 37.781013, 48.314842>,  <40.302437, 38.117153, 47.661175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002876, 37.781013, 48.314842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.401100, 37.817448, 48.305256>,  <40.640034, 37.839306, 48.299503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.401100, 37.817448, 48.305256>,  <40.002876, 37.781013, 48.314842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401100, 37.817448, 48.305256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043005, 0.666001, 0.744710,
		0.083789, -0.740369, 0.666958,
		0.995555, 0.091081, -0.023964,
		40.699768, 37.844772, 48.298065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862217, 38.414379, 48.657036>,  <40.002876, 37.781013, 48.314842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862217, 38.414379, 48.657036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.549355, 38.591782, 48.832096>,  <39.361637, 38.698223, 48.937130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.549355, 38.591782, 48.832096>,  <39.862217, 38.414379, 48.657036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549355, 38.591782, 48.832096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250682, 0.419047, -0.872673,
		-0.570433, -0.792275, -0.216579,
		-0.782154, 0.443509, 0.437648,
		39.314709, 38.724834, 48.963390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336544, 38.184582, 48.192619>,  <39.862217, 38.414379, 48.657036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336544, 38.184582, 48.192619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.217598, 38.512413, 48.388523>,  <39.146229, 38.709114, 48.506065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.217598, 38.512413, 48.388523>,  <39.336544, 38.184582, 48.192619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217598, 38.512413, 48.388523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278746, 0.416087, -0.865547,
		-0.913166, -0.393904, 0.104723,
		-0.297369, 0.819580, 0.489756,
		39.128387, 38.758286, 48.535450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745720, 38.280285, 47.972935>,  <39.336544, 38.184582, 48.192619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745720, 38.280285, 47.972935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828163, 38.643818, 48.118015>,  <38.877628, 38.861938, 48.205063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828163, 38.643818, 48.118015>,  <38.745720, 38.280285, 47.972935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828163, 38.643818, 48.118015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203390, 0.402348, -0.892607,
		-0.957159, 0.110200, 0.267773,
		0.206104, 0.908830, 0.362698,
		38.889996, 38.916466, 48.226826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133972, 38.696228, 47.778103>,  <38.745720, 38.280285, 47.972935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133972, 38.696228, 47.778103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448826, 38.934677, 47.841415>,  <38.637737, 39.077747, 47.879402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448826, 38.934677, 47.841415>,  <38.133972, 38.696228, 47.778103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448826, 38.934677, 47.841415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196467, 0.485596, -0.851820,
		-0.584652, 0.639400, 0.499349,
		0.787136, 0.596124, 0.158284,
		38.684967, 39.113514, 47.888901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929543, 39.325195, 47.467876>,  <38.133972, 38.696228, 47.778103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929543, 39.325195, 47.467876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.320309, 39.396267, 47.515316>,  <38.554768, 39.438911, 47.543781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.320309, 39.396267, 47.515316>,  <37.929543, 39.325195, 47.467876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320309, 39.396267, 47.515316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020478, 0.474734, -0.879891,
		-0.212645, 0.862008, 0.460136,
		0.976915, 0.177682, 0.118602,
		38.613384, 39.449570, 47.550896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152447, 40.097546, 47.432335>,  <37.929543, 39.325195, 47.467876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152447, 40.097546, 47.432335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467621, 39.873219, 47.330643>,  <38.656727, 39.738621, 47.269627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467621, 39.873219, 47.330643>,  <38.152447, 40.097546, 47.432335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467621, 39.873219, 47.330643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009338, 0.423716, -0.905747,
		0.615684, 0.711299, 0.339099,
		0.787938, -0.560820, -0.254233,
		38.704002, 39.704971, 47.254372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542736, 40.519375, 47.137974>,  <38.152447, 40.097546, 47.432335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542736, 40.519375, 47.137974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.730637, 40.196239, 46.995579>,  <38.843376, 40.002357, 46.910141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.730637, 40.196239, 46.995579>,  <38.542736, 40.519375, 47.137974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730637, 40.196239, 46.995579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031662, 0.387574, -0.921295,
		0.882228, 0.444055, 0.156487,
		0.469756, -0.807837, -0.355988,
		38.871563, 39.953888, 46.888783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146385, 40.766937, 46.734837>,  <38.542736, 40.519375, 47.137974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146385, 40.766937, 46.734837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.032761, 40.406166, 46.604713>,  <38.964584, 40.189701, 46.526638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.032761, 40.406166, 46.604713>,  <39.146385, 40.766937, 46.734837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032761, 40.406166, 46.604713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156659, 0.378389, -0.912294,
		0.945920, -0.208188, -0.248782,
		-0.284065, -0.901931, -0.325312,
		38.947540, 40.135586, 46.507118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459301, 40.711720, 46.042187>,  <39.146385, 40.766937, 46.734837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459301, 40.711720, 46.042187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.200619, 40.406628, 46.042770>,  <39.045410, 40.223572, 46.043121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.200619, 40.406628, 46.042770>,  <39.459301, 40.711720, 46.042187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200619, 40.406628, 46.042770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143619, 0.119892, -0.982344,
		0.749093, -0.635501, -0.187078,
		-0.646710, -0.762734, 0.001460,
		39.006607, 40.177807, 46.043209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618671, 40.221527, 45.430870>,  <39.459301, 40.711720, 46.042187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618671, 40.221527, 45.430870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244026, 40.122726, 45.530262>,  <39.019238, 40.063446, 45.589897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244026, 40.122726, 45.530262>,  <39.618671, 40.221527, 45.430870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244026, 40.122726, 45.530262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222913, -0.127037, -0.966525,
		0.270297, -0.960652, 0.063926,
		-0.936616, -0.246999, 0.248480,
		38.963043, 40.048626, 45.604805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465202, 39.673847, 45.051964>,  <39.618671, 40.221527, 45.430870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465202, 39.673847, 45.051964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104507, 39.807854, 45.161247>,  <38.888092, 39.888256, 45.226818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104507, 39.807854, 45.161247>,  <39.465202, 39.673847, 45.051964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104507, 39.807854, 45.161247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350857, -0.197982, -0.915261,
		-0.252537, -0.921178, 0.296069,
		-0.901734, 0.335015, 0.273204,
		38.833988, 39.908356, 45.243210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855354, 39.196510, 44.915844>,  <39.465202, 39.673847, 45.051964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855354, 39.196510, 44.915844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691154, 39.560612, 44.894222>,  <38.592632, 39.779072, 44.881248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691154, 39.560612, 44.894222>,  <38.855354, 39.196510, 44.915844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691154, 39.560612, 44.894222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407316, -0.236082, -0.882247,
		-0.815832, -0.340147, 0.467674,
		-0.410503, 0.910256, -0.054056,
		38.568005, 39.833687, 44.878006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112644, 39.107079, 44.555397>,  <38.855354, 39.196510, 44.915844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112644, 39.107079, 44.555397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232590, 39.487804, 44.529686>,  <38.304558, 39.716240, 44.514259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232590, 39.487804, 44.529686>,  <38.112644, 39.107079, 44.555397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232590, 39.487804, 44.529686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195438, -0.004653, -0.980705,
		-0.933747, 0.306641, 0.184626,
		0.299865, 0.951814, -0.064274,
		38.322548, 39.773350, 44.510403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580360, 39.355595, 44.092152>,  <38.112644, 39.107079, 44.555397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580360, 39.355595, 44.092152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.856289, 39.644104, 44.117149>,  <38.021847, 39.817211, 44.132149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.856289, 39.644104, 44.117149>,  <37.580360, 39.355595, 44.092152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856289, 39.644104, 44.117149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280116, 0.345502, -0.895636,
		-0.667591, 0.600326, 0.440376,
		0.689824, 0.721275, 0.062493,
		38.063236, 39.860485, 44.135899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936733, 39.430141, 44.622826>,  <37.580360, 39.355595, 44.092152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936733, 39.430141, 44.622826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599644, 39.215679, 44.603451>,  <36.397388, 39.087002, 44.591827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599644, 39.215679, 44.603451>,  <36.936733, 39.430141, 44.622826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599644, 39.215679, 44.603451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060928, -0.184385, 0.980964,
		-0.534880, 0.823735, 0.188054,
		-0.842728, -0.536156, -0.048435,
		36.346825, 39.054832, 44.588921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556152, 39.620770, 45.196125>,  <36.936733, 39.430141, 44.622826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556152, 39.620770, 45.196125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419201, 39.263172, 45.080505>,  <36.337029, 39.048615, 45.011135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419201, 39.263172, 45.080505>,  <36.556152, 39.620770, 45.196125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419201, 39.263172, 45.080505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042240, -0.321978, 0.945804,
		-0.938611, 0.311616, 0.148002,
		-0.342381, -0.893994, -0.289050,
		36.316486, 38.994972, 44.993790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047031, 39.407818, 45.762848>,  <36.556152, 39.620770, 45.196125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047031, 39.407818, 45.762848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114338, 39.064663, 45.568645>,  <36.154720, 38.858768, 45.452122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114338, 39.064663, 45.568645>,  <36.047031, 39.407818, 45.762848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114338, 39.064663, 45.568645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086963, -0.503529, 0.859591,
		-0.981899, -0.102415, -0.159329,
		0.168262, -0.857887, -0.485508,
		36.164818, 38.807297, 45.422993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540771, 38.944157, 46.029369>,  <36.047031, 39.407818, 45.762848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540771, 38.944157, 46.029369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849136, 38.740406, 45.876411>,  <36.034157, 38.618156, 45.784637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849136, 38.740406, 45.876411>,  <35.540771, 38.944157, 46.029369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849136, 38.740406, 45.876411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013195, -0.613006, 0.789969,
		-0.636812, -0.603946, -0.479291,
		0.770906, -0.509386, -0.382400,
		36.080410, 38.587593, 45.761692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330921, 38.190903, 46.084778>,  <35.540771, 38.944157, 46.029369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330921, 38.190903, 46.084778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729782, 38.185612, 46.055077>,  <35.969097, 38.182438, 46.037254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729782, 38.185612, 46.055077>,  <35.330921, 38.190903, 46.084778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729782, 38.185612, 46.055077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059667, -0.463890, 0.883881,
		-0.046135, -0.885794, -0.461780,
		0.997152, -0.013225, -0.074254,
		36.028927, 38.181644, 46.032799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534237, 37.496426, 46.279907>,  <35.330921, 38.190903, 46.084778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534237, 37.496426, 46.279907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849354, 37.740524, 46.313324>,  <36.038425, 37.886982, 46.333374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849354, 37.740524, 46.313324>,  <35.534237, 37.496426, 46.279907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849354, 37.740524, 46.313324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240869, -0.430059, 0.870076,
		0.566890, -0.665317, -0.485787,
		0.787793, 0.610248, 0.083542,
		36.085693, 37.923599, 46.338387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197098, 37.002430, 46.506836>,  <35.534237, 37.496426, 46.279907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197098, 37.002430, 46.506836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266644, 37.389771, 46.578472>,  <36.308369, 37.622173, 46.621456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266644, 37.389771, 46.578472>,  <36.197098, 37.002430, 46.506836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266644, 37.389771, 46.578472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382881, -0.234026, 0.893663,
		0.907290, -0.086801, -0.411450,
		0.173861, 0.968348, 0.179095,
		36.318802, 37.680275, 46.632202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402256, 36.271324, 46.767452>,  <36.197098, 37.002430, 46.506836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402256, 36.271324, 46.767452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064938, 36.057476, 46.745430>,  <35.862545, 35.929169, 46.732216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064938, 36.057476, 46.745430>,  <36.402256, 36.271324, 46.767452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064938, 36.057476, 46.745430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082061, 0.229317, -0.969886,
		0.531148, -0.813384, -0.237254,
		-0.843296, -0.534622, -0.055054,
		35.811947, 35.897091, 46.728912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407013, 36.150955, 46.039276>,  <36.402256, 36.271324, 46.767452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407013, 36.150955, 46.039276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055779, 36.000931, 46.158134>,  <35.845039, 35.910915, 46.229450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055779, 36.000931, 46.158134>,  <36.407013, 36.150955, 46.039276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055779, 36.000931, 46.158134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379646, 0.168075, -0.909736,
		0.291263, -0.911636, -0.289974,
		-0.878086, -0.375060, 0.297145,
		35.792351, 35.888412, 46.247276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205601, 35.729397, 45.502243>,  <36.407013, 36.150955, 46.039276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205601, 35.729397, 45.502243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.858643, 35.797066, 45.689434>,  <35.650467, 35.837666, 45.801750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.858643, 35.797066, 45.689434>,  <36.205601, 35.729397, 45.502243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858643, 35.797066, 45.689434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427602, 0.227628, -0.874838,
		-0.254526, -0.958940, -0.125104,
		-0.867394, 0.169174, 0.467981,
		35.598423, 35.847816, 45.829830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603531, 35.277168, 45.209564>,  <36.205601, 35.729397, 45.502243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603531, 35.277168, 45.209564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438263, 35.591141, 45.394245>,  <35.339104, 35.779526, 45.505054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438263, 35.591141, 45.394245>,  <35.603531, 35.277168, 45.209564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438263, 35.591141, 45.394245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594488, 0.151571, -0.789690,
		-0.689836, -0.600751, 0.404010,
		-0.413171, 0.784936, 0.461699,
		35.314312, 35.826622, 45.532753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828842, 35.237553, 45.157539>,  <35.603531, 35.277168, 45.209564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828842, 35.237553, 45.157539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898094, 35.626396, 45.220814>,  <34.939644, 35.859703, 45.258778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898094, 35.626396, 45.220814>,  <34.828842, 35.237553, 45.157539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898094, 35.626396, 45.220814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597299, 0.231341, -0.767929,
		-0.783109, 0.038466, 0.620694,
		0.173131, 0.972112, 0.158189,
		34.950035, 35.918030, 45.268272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173523, 35.613483, 44.982479>,  <34.828842, 35.237553, 45.157539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173523, 35.613483, 44.982479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428898, 35.920418, 45.006481>,  <34.582123, 36.104576, 45.020882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428898, 35.920418, 45.006481>,  <34.173523, 35.613483, 44.982479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428898, 35.920418, 45.006481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438101, 0.426392, -0.791364,
		-0.632827, 0.478944, 0.608393,
		0.638434, 0.767334, 0.060006,
		34.620426, 36.150620, 45.024483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778000, 36.196442, 44.966026>,  <34.173523, 35.613483, 44.982479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778000, 36.196442, 44.966026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140594, 36.308254, 44.839447>,  <34.358150, 36.375343, 44.763500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140594, 36.308254, 44.839447>,  <33.778000, 36.196442, 44.966026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140594, 36.308254, 44.839447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414381, 0.445192, -0.793784,
		-0.081009, 0.850686, 0.519395,
		0.906491, 0.279531, -0.316444,
		34.412540, 36.392113, 44.744514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.757694, 34.114120, 48.044079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.956429, 34.392868, 47.837185>,  <40.075668, 34.560116, 47.713051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.956429, 34.392868, 47.837185>,  <39.757694, 34.114120, 48.044079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956429, 34.392868, 47.837185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347186, -0.386620, -0.854393,
		-0.795372, 0.604067, 0.049857,
		0.496835, 0.696870, -0.517230,
		40.105480, 34.601929, 47.682014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249619, 34.307270, 47.471233>,  <39.757694, 34.114120, 48.044079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249619, 34.307270, 47.471233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.621773, 34.429340, 47.389999>,  <39.845066, 34.502583, 47.341259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.621773, 34.429340, 47.389999>,  <39.249619, 34.307270, 47.471233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621773, 34.429340, 47.389999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205553, -0.024388, -0.978342,
		-0.303521, 0.951983, 0.040040,
		0.930389, 0.305177, -0.203086,
		39.900890, 34.520893, 47.329075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134727, 34.922451, 47.026737>,  <39.249619, 34.307270, 47.471233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134727, 34.922451, 47.026737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.508556, 34.790932, 46.972382>,  <39.732853, 34.712021, 46.939770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.508556, 34.790932, 46.972382>,  <39.134727, 34.922451, 47.026737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508556, 34.790932, 46.972382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151994, -0.023659, -0.988098,
		0.321674, 0.944102, -0.072086,
		0.934571, -0.328802, -0.135887,
		39.788929, 34.692291, 46.931614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352402, 35.312382, 46.475807>,  <39.134727, 34.922451, 47.026737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352402, 35.312382, 46.475807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.567245, 34.976124, 46.503593>,  <39.696152, 34.774368, 46.520267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.567245, 34.976124, 46.503593>,  <39.352402, 35.312382, 46.475807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567245, 34.976124, 46.503593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160744, -0.182856, -0.969910,
		0.828054, 0.509783, -0.233342,
		0.537111, -0.840646, 0.069470,
		39.728378, 34.723930, 46.524433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810776, 35.383041, 45.853664>,  <39.352402, 35.312382, 46.475807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810776, 35.383041, 45.853664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.815304, 35.001831, 45.974735>,  <39.818020, 34.773106, 46.047379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.815304, 35.001831, 45.974735>,  <39.810776, 35.383041, 45.853664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815304, 35.001831, 45.974735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029702, -0.302239, -0.952769,
		0.999495, 0.019774, 0.024886,
		0.011319, -0.953027, 0.302673,
		39.818699, 34.715923, 46.065536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229877, 35.016975, 45.355396>,  <39.810776, 35.383041, 45.853664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229877, 35.016975, 45.355396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.009975, 34.737194, 45.538063>,  <39.878036, 34.569324, 45.647663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.009975, 34.737194, 45.538063>,  <40.229877, 35.016975, 45.355396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009975, 34.737194, 45.538063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248277, -0.385162, -0.888825,
		0.797578, -0.602013, 0.038087,
		-0.549753, -0.699451, 0.456662,
		39.845051, 34.527359, 45.675060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397652, 34.438580, 44.980286>,  <40.229877, 35.016975, 45.355396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397652, 34.438580, 44.980286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.068233, 34.320042, 45.173759>,  <39.870583, 34.248920, 45.289845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.068233, 34.320042, 45.173759>,  <40.397652, 34.438580, 44.980286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068233, 34.320042, 45.173759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286692, -0.518313, -0.805704,
		0.489462, -0.802205, 0.341898,
		-0.823550, -0.296342, 0.483681,
		39.821167, 34.231140, 45.318863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384884, 33.692032, 45.075962>,  <40.397652, 34.438580, 44.980286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384884, 33.692032, 45.075962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.996075, 33.774784, 45.120441>,  <39.762787, 33.824436, 45.147129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.996075, 33.774784, 45.120441>,  <40.384884, 33.692032, 45.075962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996075, 33.774784, 45.120441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203254, -0.503671, -0.839645,
		-0.117701, -0.838758, 0.531631,
		-0.972026, 0.206883, 0.111199,
		39.704468, 33.836849, 45.153801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982639, 33.023373, 44.966961>,  <40.384884, 33.692032, 45.075962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982639, 33.023373, 44.966961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.708191, 33.305580, 44.895988>,  <39.543522, 33.474903, 44.853405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.708191, 33.305580, 44.895988>,  <39.982639, 33.023373, 44.966961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708191, 33.305580, 44.895988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149403, -0.375347, -0.914764,
		-0.711982, -0.601129, 0.362941,
		-0.686120, 0.705520, -0.177430,
		39.502354, 33.517235, 44.842758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364662, 32.666260, 44.631851>,  <39.982639, 33.023373, 44.966961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364662, 32.666260, 44.631851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.324863, 33.051125, 44.530380>,  <39.300983, 33.282043, 44.469498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.324863, 33.051125, 44.530380>,  <39.364662, 32.666260, 44.631851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324863, 33.051125, 44.530380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039879, -0.258595, -0.965163,
		-0.994239, -0.085913, 0.064098,
		-0.099495, 0.962158, -0.253679,
		39.295013, 33.339771, 44.454277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671585, 32.721066, 44.344189>,  <39.364662, 32.666260, 44.631851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671585, 32.721066, 44.344189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.883926, 33.027431, 44.199104>,  <39.011333, 33.211250, 44.112053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.883926, 33.027431, 44.199104>,  <38.671585, 32.721066, 44.344189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883926, 33.027431, 44.199104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282047, -0.243925, -0.927874,
		-0.799149, 0.594872, 0.086535,
		0.530858, 0.765917, -0.362714,
		39.043182, 33.257206, 44.090290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207916, 32.998631, 43.879833>,  <38.671585, 32.721066, 44.344189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207916, 32.998631, 43.879833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.577187, 33.112949, 43.777023>,  <38.798748, 33.181541, 43.715336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.577187, 33.112949, 43.777023>,  <38.207916, 32.998631, 43.879833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577187, 33.112949, 43.777023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221360, -0.151366, -0.963373,
		-0.314238, 0.946259, -0.076472,
		0.923176, 0.285801, -0.257029,
		38.854141, 33.198689, 43.699913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587822, 33.229057, 44.083115>,  <38.207916, 32.998631, 43.879833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587822, 33.229057, 44.083115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.200558, 33.129063, 44.088200>,  <36.968197, 33.069065, 44.091251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.200558, 33.129063, 44.088200>,  <37.587822, 33.229057, 44.083115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200558, 33.129063, 44.088200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076254, -0.246170, 0.966222,
		-0.238414, 0.936433, 0.257396,
		-0.968165, -0.249989, 0.012717,
		36.910107, 33.054066, 44.092014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143192, 33.607983, 44.679577>,  <37.587822, 33.229057, 44.083115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143192, 33.607983, 44.679577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.925388, 33.287529, 44.580223>,  <36.794704, 33.095257, 44.520611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.925388, 33.287529, 44.580223>,  <37.143192, 33.607983, 44.679577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925388, 33.287529, 44.580223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209880, -0.156578, 0.965108,
		-0.812069, 0.577646, -0.082883,
		-0.544513, -0.801130, -0.248389,
		36.762035, 33.047192, 44.505707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618244, 33.661964, 45.067276>,  <37.143192, 33.607983, 44.679577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618244, 33.661964, 45.067276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603958, 33.275684, 44.964401>,  <36.595387, 33.043915, 44.902676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603958, 33.275684, 44.964401>,  <36.618244, 33.661964, 45.067276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603958, 33.275684, 44.964401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169336, -0.247779, 0.953903,
		-0.984911, 0.077618, -0.154679,
		-0.035714, -0.965702, -0.257184,
		36.593243, 32.985973, 44.887245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954113, 33.298744, 45.467300>,  <36.618244, 33.661964, 45.067276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954113, 33.298744, 45.467300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.227764, 33.032619, 45.347748>,  <36.391956, 32.872944, 45.276016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.227764, 33.032619, 45.347748>,  <35.954113, 33.298744, 45.467300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227764, 33.032619, 45.347748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042210, -0.372979, 0.926879,
		-0.728138, -0.646721, -0.227084,
		0.684130, -0.665310, -0.298879,
		36.433002, 32.833027, 45.258083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633396, 32.752361, 45.709290>,  <35.954113, 33.298744, 45.467300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633396, 32.752361, 45.709290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.008480, 32.628006, 45.647263>,  <36.233532, 32.553394, 45.610046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.008480, 32.628006, 45.647263>,  <35.633396, 32.752361, 45.709290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008480, 32.628006, 45.647263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032855, -0.365000, 0.930427,
		-0.345853, -0.877569, -0.332052,
		0.937713, -0.310881, -0.155069,
		36.289795, 32.534740, 45.600742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728065, 32.073654, 45.996384>,  <35.633396, 32.752361, 45.709290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728065, 32.073654, 45.996384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.097717, 32.224030, 45.969112>,  <36.319508, 32.314255, 45.952747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.097717, 32.224030, 45.969112>,  <35.728065, 32.073654, 45.996384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097717, 32.224030, 45.969112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210542, -0.352155, 0.911953,
		0.318833, -0.857119, -0.404589,
		0.924131, 0.375943, -0.068181,
		36.374958, 32.336811, 45.948658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256584, 31.558701, 46.253300>,  <35.728065, 32.073654, 45.996384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256584, 31.558701, 46.253300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418205, 31.922600, 46.291447>,  <36.515179, 32.140938, 46.314335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418205, 31.922600, 46.291447>,  <36.256584, 31.558701, 46.253300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418205, 31.922600, 46.291447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468063, -0.295203, 0.832930,
		0.785911, -0.291912, -0.545098,
		0.404057, 0.909749, 0.095370,
		36.539421, 32.195526, 46.320057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901821, 31.418102, 46.525646>,  <36.256584, 31.558701, 46.253300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901821, 31.418102, 46.525646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.867943, 31.809555, 46.600590>,  <36.847618, 32.044426, 46.645557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.867943, 31.809555, 46.600590>,  <36.901821, 31.418102, 46.525646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867943, 31.809555, 46.600590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362588, -0.144874, 0.920620,
		0.928093, 0.145903, -0.342571,
		-0.084691, 0.978634, 0.187359,
		36.842537, 32.103146, 46.656799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488899, 31.592188, 46.779579>,  <36.901821, 31.418102, 46.525646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488899, 31.592188, 46.779579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.236313, 31.873329, 46.910572>,  <37.084759, 32.042015, 46.989166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.236313, 31.873329, 46.910572>,  <37.488899, 31.592188, 46.779579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236313, 31.873329, 46.910572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307455, -0.160759, 0.937885,
		0.711840, 0.692932, -0.114581,
		-0.631470, 0.702853, 0.327480,
		37.046871, 32.084187, 47.008816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765610, 31.848385, 47.361206>,  <37.488899, 31.592188, 46.779579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765610, 31.848385, 47.361206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.403698, 32.008991, 47.417999>,  <37.186550, 32.105354, 47.452076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.403698, 32.008991, 47.417999>,  <37.765610, 31.848385, 47.361206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403698, 32.008991, 47.417999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170737, 0.036557, 0.984638,
		0.390159, 0.915121, -0.101630,
		-0.904779, 0.401518, 0.141982,
		37.132263, 32.129448, 47.460594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936707, 32.372318, 47.886597>,  <37.765610, 31.848385, 47.361206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936707, 32.372318, 47.886597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.542381, 32.313828, 47.919552>,  <37.305786, 32.278732, 47.939323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.542381, 32.313828, 47.919552>,  <37.936707, 32.372318, 47.886597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542381, 32.313828, 47.919552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062839, 0.133580, 0.989044,
		-0.155632, 0.980190, -0.122497,
		-0.985814, -0.146229, 0.082384,
		37.246635, 32.269958, 47.944267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654324, 32.982616, 48.226074>,  <37.936707, 32.372318, 47.886597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654324, 32.982616, 48.226074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416939, 32.663601, 48.269398>,  <37.274509, 32.472191, 48.295391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416939, 32.663601, 48.269398>,  <37.654324, 32.982616, 48.226074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416939, 32.663601, 48.269398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027138, 0.114660, 0.993034,
		-0.804404, 0.592268, -0.046403,
		-0.593463, -0.797541, 0.108306,
		37.238899, 32.424339, 48.301891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019886, 33.203392, 48.536751>,  <37.654324, 32.982616, 48.226074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019886, 33.203392, 48.536751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.103558, 32.820667, 48.617500>,  <37.153759, 32.591034, 48.665951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.103558, 32.820667, 48.617500>,  <37.019886, 33.203392, 48.536751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103558, 32.820667, 48.617500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023608, 0.211326, 0.977131,
		-0.977592, -0.199629, 0.066793,
		0.209179, -0.956812, 0.201877,
		37.166313, 32.533623, 48.678062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608418, 33.040825, 49.012917>,  <37.019886, 33.203392, 48.536751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608418, 33.040825, 49.012917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.899796, 32.775528, 49.081585>,  <37.074623, 32.616348, 49.122787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.899796, 32.775528, 49.081585>,  <36.608418, 33.040825, 49.012917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899796, 32.775528, 49.081585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051815, 0.196527, 0.979128,
		-0.683141, -0.722137, 0.108794,
		0.728446, -0.663245, 0.171673,
		37.118328, 32.576553, 49.133087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251892, 33.682961, 48.678612>,  <36.608418, 33.040825, 49.012917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251892, 33.682961, 48.678612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.129707, 33.983349, 48.912788>,  <36.056396, 34.163582, 49.053295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.129707, 33.983349, 48.912788>,  <36.251892, 33.682961, 48.678612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129707, 33.983349, 48.912788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032535, 0.606233, -0.794621,
		-0.951648, -0.261774, -0.160748,
		-0.305463, 0.750970, 0.585438,
		36.038067, 34.208641, 49.088421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591248, 33.903576, 48.403076>,  <36.251892, 33.682961, 48.678612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591248, 33.903576, 48.403076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.760025, 34.203003, 48.607670>,  <35.861290, 34.382660, 48.730427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.760025, 34.203003, 48.607670>,  <35.591248, 33.903576, 48.403076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760025, 34.203003, 48.607670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239487, 0.636153, -0.733455,
		-0.874419, 0.186984, 0.447693,
		0.421945, 0.748563, 0.511484,
		35.886608, 34.427570, 48.761116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096397, 34.443665, 48.526360>,  <35.591248, 33.903576, 48.403076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096397, 34.443665, 48.526360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.456768, 34.617180, 48.531322>,  <35.672993, 34.721291, 48.534298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.456768, 34.617180, 48.531322>,  <35.096397, 34.443665, 48.526360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456768, 34.617180, 48.531322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258031, 0.558448, -0.788388,
		-0.348920, 0.707081, 0.615054,
		0.900930, 0.433787, 0.012405,
		35.727047, 34.747314, 48.535046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890366, 35.067680, 48.185749>,  <35.096397, 34.443665, 48.526360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890366, 35.067680, 48.185749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.290028, 35.052147, 48.191212>,  <35.529823, 35.042828, 48.194489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.290028, 35.052147, 48.191212>,  <34.890366, 35.067680, 48.185749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290028, 35.052147, 48.191212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031645, 0.512425, -0.858149,
		0.026330, 0.857853, 0.513220,
		0.999152, -0.038836, 0.013655,
		35.589775, 35.040497, 48.195309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015255, 35.737587, 48.102062>,  <34.890366, 35.067680, 48.185749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015255, 35.737587, 48.102062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324493, 35.516518, 47.977566>,  <35.510036, 35.383877, 47.902870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324493, 35.516518, 47.977566>,  <35.015255, 35.737587, 48.102062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324493, 35.516518, 47.977566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056602, 0.548845, -0.834005,
		0.631755, 0.627152, 0.455594,
		0.773099, -0.552675, -0.311238,
		35.556423, 35.350716, 47.884193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390457, 36.235371, 47.759041>,  <35.015255, 35.737587, 48.102062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390457, 36.235371, 47.759041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.537594, 35.883030, 47.639851>,  <35.625877, 35.671623, 47.568336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.537594, 35.883030, 47.639851>,  <35.390457, 36.235371, 47.759041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537594, 35.883030, 47.639851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221250, 0.394144, -0.892020,
		0.903184, 0.262194, 0.339872,
		0.367841, -0.880855, -0.297974,
		35.647945, 35.618774, 47.550457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984547, 36.442360, 47.338856>,  <35.390457, 36.235371, 47.759041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984547, 36.442360, 47.338856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888519, 36.071404, 47.224098>,  <35.830902, 35.848827, 47.155243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888519, 36.071404, 47.224098>,  <35.984547, 36.442360, 47.338856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888519, 36.071404, 47.224098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032905, 0.287592, -0.957188,
		0.970197, -0.239234, -0.038527,
		-0.240072, -0.927393, -0.286892,
		35.816498, 35.793186, 47.138031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607040, 36.932079, 47.184361>,  <35.984547, 36.442360, 47.338856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607040, 36.932079, 47.184361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.556480, 37.328159, 47.160591>,  <36.526146, 37.565807, 47.146328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.556480, 37.328159, 47.160591>,  <36.607040, 36.932079, 47.184361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556480, 37.328159, 47.160591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433242, 0.108994, 0.894663,
		0.892371, 0.087337, -0.442772,
		-0.126397, 0.990198, -0.059425,
		36.518562, 37.625217, 47.142765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225140, 37.233250, 47.162319>,  <36.607040, 36.932079, 47.184361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225140, 37.233250, 47.162319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.953434, 37.477127, 47.325718>,  <36.790409, 37.623455, 47.423759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.953434, 37.477127, 47.325718>,  <37.225140, 37.233250, 47.162319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953434, 37.477127, 47.325718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411482, -0.144498, 0.899890,
		0.607687, 0.779353, -0.152727,
		-0.679264, 0.609696, 0.408500,
		36.749657, 37.660034, 47.448269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605995, 37.751915, 47.496384>,  <37.225140, 37.233250, 47.162319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605995, 37.751915, 47.496384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.254295, 37.708500, 47.681915>,  <37.043274, 37.682453, 47.793232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.254295, 37.708500, 47.681915>,  <37.605995, 37.751915, 47.496384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254295, 37.708500, 47.681915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462315, 0.040238, 0.885803,
		-0.114804, 0.993278, 0.014798,
		-0.879253, -0.108535, 0.463826,
		36.990520, 37.675938, 47.821064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751431, 37.959366, 48.193390>,  <37.605995, 37.751915, 47.496384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751431, 37.959366, 48.193390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374035, 37.866280, 48.287769>,  <37.147598, 37.810429, 48.344398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374035, 37.866280, 48.287769>,  <37.751431, 37.959366, 48.193390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374035, 37.866280, 48.287769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197219, 0.177915, 0.964080,
		-0.266338, 0.956132, -0.121965,
		-0.943488, -0.232717, 0.235953,
		37.090988, 37.796463, 48.358555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563370, 38.437599, 48.639389>,  <37.751431, 37.959366, 48.193390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563370, 38.437599, 48.639389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.320190, 38.126644, 48.703972>,  <37.174282, 37.940071, 48.742722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.320190, 38.126644, 48.703972>,  <37.563370, 38.437599, 48.639389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320190, 38.126644, 48.703972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152084, 0.085573, 0.984656,
		-0.779277, 0.623172, 0.066205,
		-0.607945, -0.777389, 0.161460,
		37.137806, 37.893429, 48.752411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213322, 38.663288, 49.225197>,  <37.563370, 38.437599, 48.639389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213322, 38.663288, 49.225197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.156101, 38.267708, 49.209618>,  <37.121769, 38.030361, 49.200272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.156101, 38.267708, 49.209618>,  <37.213322, 38.663288, 49.225197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156101, 38.267708, 49.209618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035951, -0.034133, 0.998770,
		-0.989063, 0.144271, -0.030671,
		-0.143047, -0.988949, -0.038947,
		37.113186, 37.971024, 49.197933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653412, 38.578640, 49.607647>,  <37.213322, 38.663288, 49.225197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653412, 38.578640, 49.607647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.825214, 38.217480, 49.614571>,  <36.928295, 38.000786, 49.618725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.825214, 38.217480, 49.614571>,  <36.653412, 38.578640, 49.607647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825214, 38.217480, 49.614571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053193, 0.044424, 0.997596,
		-0.901496, -0.427554, 0.067109,
		0.429507, -0.902898, 0.017305,
		36.954067, 37.946609, 49.619762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441376, 38.324322, 50.310509>,  <36.653412, 38.578640, 49.607647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441376, 38.324322, 50.310509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.742825, 38.088219, 50.194820>,  <36.923695, 37.946556, 50.125408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.742825, 38.088219, 50.194820>,  <36.441376, 38.324322, 50.310509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742825, 38.088219, 50.194820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376051, 0.026284, 0.926226,
		-0.539109, -0.806788, 0.241775,
		0.753623, -0.590257, -0.289223,
		36.968910, 37.911140, 50.108055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458557, 37.753777, 50.844864>,  <36.441376, 38.324322, 50.310509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458557, 37.753777, 50.844864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.807327, 37.814526, 50.658669>,  <37.016590, 37.850975, 50.546951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.807327, 37.814526, 50.658669>,  <36.458557, 37.753777, 50.844864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807327, 37.814526, 50.658669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440546, 0.171562, 0.881184,
		0.213690, -0.973396, 0.082681,
		0.871926, 0.151875, -0.465487,
		37.068905, 37.860088, 50.519024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.991848, 37.374580, 35.006287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293640, 37.635036, 35.039227>,  <36.474716, 37.791309, 35.058990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293640, 37.635036, 35.039227>,  <35.991848, 37.374580, 35.006287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293640, 37.635036, 35.039227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207476, 0.117578, 0.971148,
		0.622667, -0.749797, 0.223806,
		0.754479, 0.651137, 0.082353,
		36.519985, 37.830376, 35.063931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291401, 37.214607, 35.553570>,  <35.991848, 37.374580, 35.006287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291401, 37.214607, 35.553570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425350, 37.589790, 35.517574>,  <36.505718, 37.814899, 35.495979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425350, 37.589790, 35.517574>,  <36.291401, 37.214607, 35.553570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425350, 37.589790, 35.517574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248228, 0.179941, 0.951843,
		0.908981, -0.296405, 0.293084,
		0.334869, 0.937958, -0.089987,
		36.525810, 37.871178, 35.490578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605011, 37.460117, 36.263645>,  <36.291401, 37.214607, 35.553570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605011, 37.460117, 36.263645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510811, 37.794849, 36.065960>,  <36.454292, 37.995689, 35.947350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510811, 37.794849, 36.065960>,  <36.605011, 37.460117, 36.263645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510811, 37.794849, 36.065960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359535, 0.397423, 0.844268,
		0.902925, 0.376513, 0.207278,
		-0.235501, 0.836835, -0.494213,
		36.440159, 38.045898, 35.917694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979813, 37.993324, 36.654022>,  <36.605011, 37.460117, 36.263645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979813, 37.993324, 36.654022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673161, 38.141743, 36.444412>,  <36.489170, 38.230793, 36.318645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673161, 38.141743, 36.444412>,  <36.979813, 37.993324, 36.654022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673161, 38.141743, 36.444412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410450, 0.344402, 0.844345,
		0.493767, 0.862386, -0.111733,
		-0.766632, 0.371049, -0.524021,
		36.443172, 38.253056, 36.287205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956760, 38.664864, 36.984035>,  <36.979813, 37.993324, 36.654022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956760, 38.664864, 36.984035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612900, 38.610336, 36.787090>,  <36.406582, 38.577621, 36.668922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612900, 38.610336, 36.787090>,  <36.956760, 38.664864, 36.984035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612900, 38.610336, 36.787090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508688, 0.317633, 0.800216,
		0.047305, 0.938364, -0.342397,
		-0.859650, -0.136320, -0.492360,
		36.355003, 38.569439, 36.639381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665234, 39.243664, 37.135441>,  <36.956760, 38.664864, 36.984035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665234, 39.243664, 37.135441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375401, 39.002369, 37.002125>,  <36.201500, 38.857594, 36.922134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375401, 39.002369, 37.002125>,  <36.665234, 39.243664, 37.135441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375401, 39.002369, 37.002125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590283, 0.293584, 0.751914,
		-0.355731, 0.741562, -0.568806,
		-0.724583, -0.603236, -0.333295,
		36.158024, 38.821400, 36.902138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119270, 39.605888, 37.139553>,  <36.665234, 39.243664, 37.135441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119270, 39.605888, 37.139553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975670, 39.232574, 37.143620>,  <35.889511, 39.008587, 37.146061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975670, 39.232574, 37.143620>,  <36.119270, 39.605888, 37.139553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975670, 39.232574, 37.143620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601159, 0.239551, 0.762380,
		-0.713952, 0.267581, -0.647050,
		-0.359000, -0.933282, 0.010169,
		35.867970, 38.952591, 37.146671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329296, 39.636547, 37.066448>,  <36.119270, 39.605888, 37.139553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329296, 39.636547, 37.066448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424740, 39.301895, 37.263676>,  <35.482006, 39.101105, 37.382011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424740, 39.301895, 37.263676>,  <35.329296, 39.636547, 37.066448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424740, 39.301895, 37.263676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687817, 0.212835, 0.693981,
		-0.685546, -0.504735, -0.524661,
		0.238610, -0.836626, 0.493073,
		35.496323, 39.050907, 37.411598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699516, 39.442596, 37.314480>,  <35.329296, 39.636547, 37.066448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699516, 39.442596, 37.314480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953270, 39.225330, 37.534489>,  <35.105522, 39.094971, 37.666492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953270, 39.225330, 37.534489>,  <34.699516, 39.442596, 37.314480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953270, 39.225330, 37.534489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574492, 0.144794, 0.805602,
		-0.517218, -0.827044, -0.220191,
		0.634385, -0.543170, 0.550020,
		35.143585, 39.062378, 37.699493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185600, 39.078571, 37.832584>,  <34.699516, 39.442596, 37.314480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185600, 39.078571, 37.832584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552872, 39.029854, 37.983372>,  <34.773235, 39.000622, 38.073845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552872, 39.029854, 37.983372>,  <34.185600, 39.078571, 37.832584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552872, 39.029854, 37.983372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370406, 0.073542, 0.925954,
		-0.140501, -0.989827, 0.022411,
		0.918182, -0.121796, 0.376970,
		34.828327, 38.993317, 38.096462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196671, 38.586075, 38.308002>,  <34.185600, 39.078571, 37.832584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196671, 38.586075, 38.308002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509228, 38.802784, 38.431881>,  <34.696762, 38.932808, 38.506210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509228, 38.802784, 38.431881>,  <34.196671, 38.586075, 38.308002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509228, 38.802784, 38.431881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339364, -0.047572, 0.939451,
		0.523703, -0.839177, 0.146686,
		0.781388, 0.541773, 0.309700,
		34.743645, 38.965317, 38.524792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464249, 38.300026, 38.826622>,  <34.196671, 38.586075, 38.308002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464249, 38.300026, 38.826622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601597, 38.670204, 38.890694>,  <34.684006, 38.892311, 38.929134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601597, 38.670204, 38.890694>,  <34.464249, 38.300026, 38.826622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601597, 38.670204, 38.890694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287502, -0.058787, 0.955974,
		0.894115, -0.374302, 0.245881,
		0.343368, 0.925442, 0.160174,
		34.704609, 38.947838, 38.938747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491737, 37.515324, 38.994957>,  <34.464249, 38.300026, 38.826622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491737, 37.515324, 38.994957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123962, 37.363876, 39.037449>,  <33.903297, 37.273010, 39.062946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123962, 37.363876, 39.037449>,  <34.491737, 37.515324, 38.994957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123962, 37.363876, 39.037449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055960, -0.393375, -0.917673,
		0.389233, -0.837799, 0.382871,
		-0.919438, -0.378614, 0.106231,
		33.848129, 37.250294, 39.069317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559071, 36.874226, 38.718586>,  <34.491737, 37.515324, 38.994957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559071, 36.874226, 38.718586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177147, 36.992485, 38.706333>,  <33.947994, 37.063438, 38.698982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177147, 36.992485, 38.706333>,  <34.559071, 36.874226, 38.718586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177147, 36.992485, 38.706333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023186, -0.176835, -0.983967,
		-0.296323, -0.938788, 0.175698,
		-0.954806, 0.295646, -0.030634,
		33.890705, 37.081177, 38.697144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203575, 36.422901, 38.291794>,  <34.559071, 36.874226, 38.718586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203575, 36.422901, 38.291794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976044, 36.751530, 38.276505>,  <33.839527, 36.948708, 38.267330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976044, 36.751530, 38.276505>,  <34.203575, 36.422901, 38.291794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976044, 36.751530, 38.276505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027881, -0.065709, -0.997449,
		-0.821986, -0.566308, 0.060283,
		-0.568824, 0.821570, -0.038223,
		33.805397, 36.998001, 38.265038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711678, 36.254589, 37.775848>,  <34.203575, 36.422901, 38.291794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711678, 36.254589, 37.775848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670277, 36.649254, 37.826103>,  <33.645435, 36.886051, 37.856258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670277, 36.649254, 37.826103>,  <33.711678, 36.254589, 37.775848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670277, 36.649254, 37.826103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179905, 0.105665, -0.977992,
		-0.978224, -0.123829, 0.166568,
		-0.103503, 0.986662, 0.125641,
		33.639225, 36.945251, 37.863796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244415, 36.296314, 37.300713>,  <33.711678, 36.254589, 37.775848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244415, 36.296314, 37.300713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368435, 36.670635, 37.367809>,  <33.442848, 36.895229, 37.408066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368435, 36.670635, 37.367809>,  <33.244415, 36.296314, 37.300713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368435, 36.670635, 37.367809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237736, 0.247146, -0.939361,
		-0.920516, 0.251371, 0.299102,
		0.310051, 0.935805, 0.167742,
		33.461449, 36.951378, 37.418133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684296, 36.780479, 37.102673>,  <33.244415, 36.296314, 37.300713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684296, 36.780479, 37.102673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040871, 36.960968, 37.085968>,  <33.254814, 37.069260, 37.075943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040871, 36.960968, 37.085968>,  <32.684296, 36.780479, 37.102673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040871, 36.960968, 37.085968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121166, 0.148530, -0.981457,
		-0.436650, 0.879965, 0.187077,
		0.891435, 0.451221, -0.041766,
		33.308300, 37.096333, 37.073437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645088, 37.476418, 36.689396>,  <32.684296, 36.780479, 37.102673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645088, 37.476418, 36.689396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026676, 37.357540, 36.673328>,  <33.255630, 37.286213, 36.663689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026676, 37.357540, 36.673328>,  <32.645088, 37.476418, 36.689396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026676, 37.357540, 36.673328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012639, 0.093970, -0.995495,
		0.299634, 0.950180, 0.085889,
		0.953971, -0.297198, -0.040166,
		33.312866, 37.268379, 36.661278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854416, 37.763325, 36.033741>,  <32.645088, 37.476418, 36.689396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854416, 37.763325, 36.033741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141632, 37.496784, 36.114132>,  <33.313961, 37.336861, 36.162369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141632, 37.496784, 36.114132>,  <32.854416, 37.763325, 36.033741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141632, 37.496784, 36.114132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273367, 0.004451, -0.961899,
		0.640070, 0.745623, 0.185355,
		0.718040, -0.666353, 0.200980,
		33.357044, 37.296879, 36.174427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489910, 37.994045, 35.668060>,  <32.854416, 37.763325, 36.033741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489910, 37.994045, 35.668060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538425, 37.605991, 35.752094>,  <33.567535, 37.373161, 35.802517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538425, 37.605991, 35.752094>,  <33.489910, 37.994045, 35.668060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538425, 37.605991, 35.752094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166444, -0.188775, -0.967812,
		0.978563, 0.152353, 0.138576,
		0.121289, -0.970130, 0.210087,
		33.574814, 37.314953, 35.815121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015911, 37.816959, 35.247864>,  <33.489910, 37.994045, 35.668060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015911, 37.816959, 35.247864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840530, 37.465675, 35.324284>,  <33.735302, 37.254906, 35.370136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840530, 37.465675, 35.324284>,  <34.015911, 37.816959, 35.247864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840530, 37.465675, 35.324284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019448, -0.203252, -0.978933,
		0.898543, -0.432932, 0.072038,
		-0.438453, -0.878213, 0.191050,
		33.708996, 37.202213, 35.381599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202969, 37.397251, 34.714436>,  <34.015911, 37.816959, 35.247864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202969, 37.397251, 34.714436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922825, 37.160736, 34.874378>,  <33.754738, 37.018829, 34.970345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922825, 37.160736, 34.874378>,  <34.202969, 37.397251, 34.714436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922825, 37.160736, 34.874378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221351, -0.352661, -0.909194,
		0.678606, -0.725267, 0.116106,
		-0.700355, -0.591285, 0.399857,
		33.712719, 36.983353, 34.994335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233814, 36.721252, 34.441662>,  <34.202969, 37.397251, 34.714436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233814, 36.721252, 34.441662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860435, 36.769375, 34.576843>,  <33.636410, 36.798248, 34.657951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860435, 36.769375, 34.576843>,  <34.233814, 36.721252, 34.441662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860435, 36.769375, 34.576843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358712, -0.321926, -0.876179,
		0.003382, -0.939090, 0.343656,
		-0.933442, 0.120310, 0.337951,
		33.580402, 36.805470, 34.678230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860081, 35.985802, 34.257805>,  <34.233814, 36.721252, 34.441662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860081, 35.985802, 34.257805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582912, 36.263554, 34.335464>,  <33.416611, 36.430206, 34.382061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582912, 36.263554, 34.335464>,  <33.860081, 35.985802, 34.257805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582912, 36.263554, 34.335464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618198, -0.433590, -0.655615,
		-0.371068, -0.574311, 0.729709,
		-0.692922, 0.694383, 0.194146,
		33.375034, 36.471870, 34.393707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196419, 35.621052, 34.376957>,  <33.860081, 35.985802, 34.257805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196419, 35.621052, 34.376957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104294, 35.992828, 34.261650>,  <33.049019, 36.215893, 34.192467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104294, 35.992828, 34.261650>,  <33.196419, 35.621052, 34.376957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104294, 35.992828, 34.261650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630684, -0.368162, -0.683150,
		-0.741076, 0.024468, 0.670975,
		-0.230312, 0.929440, -0.288268,
		33.035202, 36.271660, 34.175171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279015, 35.038952, 33.842625>,  <33.196419, 35.621052, 34.376957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279015, 35.038952, 33.842625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425888, 35.410107, 33.816681>,  <33.514011, 35.632797, 33.801113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425888, 35.410107, 33.816681>,  <33.279015, 35.038952, 33.842625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425888, 35.410107, 33.816681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222118, -0.155184, -0.962591,
		-0.903237, 0.339045, -0.263081,
		0.367188, 0.927883, -0.064859,
		33.536045, 35.688473, 33.797222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202103, 34.209381, 34.050083>,  <33.279015, 35.038952, 33.842625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202103, 34.209381, 34.050083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568069, 34.051559, 34.016018>,  <33.787651, 33.956867, 33.995579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568069, 34.051559, 34.016018>,  <33.202103, 34.209381, 34.050083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568069, 34.051559, 34.016018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154062, 0.146326, 0.977166,
		-0.373079, -0.907149, 0.194661,
		0.914919, -0.394550, -0.085166,
		33.842545, 33.933193, 33.990467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249264, 33.688560, 34.574947>,  <33.202103, 34.209381, 34.050083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249264, 33.688560, 34.574947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607540, 33.845505, 34.491249>,  <33.822506, 33.939671, 34.441032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607540, 33.845505, 34.491249>,  <33.249264, 33.688560, 34.574947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607540, 33.845505, 34.491249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191175, 0.085064, 0.977863,
		0.401476, -0.915869, 0.001182,
		0.895695, 0.392362, -0.209243,
		33.876247, 33.963215, 34.428474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660564, 33.482124, 35.130508>,  <33.249264, 33.688560, 34.574947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660564, 33.482124, 35.130508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846661, 33.798645, 34.971817>,  <33.958321, 33.988556, 34.876602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846661, 33.798645, 34.971817>,  <33.660564, 33.482124, 35.130508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846661, 33.798645, 34.971817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312169, 0.272721, 0.910040,
		0.828311, -0.547236, -0.120138,
		0.465243, 0.791300, -0.396728,
		33.986233, 34.036034, 34.852798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364006, 33.502636, 35.422859>,  <33.660564, 33.482124, 35.130508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364006, 33.502636, 35.422859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286697, 33.875874, 35.301548>,  <34.240311, 34.099815, 35.228764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286697, 33.875874, 35.301548>,  <34.364006, 33.502636, 35.422859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286697, 33.875874, 35.301548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321748, 0.352286, 0.878848,
		0.926890, 0.072278, -0.368308,
		-0.193271, 0.933097, -0.303275,
		34.228718, 34.155804, 35.210564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933495, 33.961330, 35.541142>,  <34.364006, 33.502636, 35.422859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933495, 33.961330, 35.541142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644043, 34.230755, 35.480911>,  <34.470371, 34.392410, 35.444775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644043, 34.230755, 35.480911>,  <34.933495, 33.961330, 35.541142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644043, 34.230755, 35.480911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219833, 0.431735, 0.874802,
		0.654240, 0.599934, -0.460488,
		-0.723632, 0.673561, -0.150573,
		34.426952, 34.432823, 35.435738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316422, 34.603336, 35.784061>,  <34.933495, 33.961330, 35.541142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316422, 34.603336, 35.784061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917835, 34.626793, 35.808144>,  <34.678684, 34.640865, 35.822594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917835, 34.626793, 35.808144>,  <35.316422, 34.603336, 35.784061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917835, 34.626793, 35.808144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074376, 0.281678, 0.956622,
		0.039137, 0.957716, -0.285042,
		-0.996462, 0.058639, 0.060207,
		34.618896, 34.644386, 35.826206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200287, 35.238514, 36.003040>,  <35.316422, 34.603336, 35.784061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200287, 35.238514, 36.003040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871300, 35.034344, 36.103451>,  <34.673908, 34.911842, 36.163696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871300, 35.034344, 36.103451>,  <35.200287, 35.238514, 36.003040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871300, 35.034344, 36.103451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085586, 0.325248, 0.941748,
		-0.562336, 0.796042, -0.223821,
		-0.822468, -0.510423, 0.251029,
		34.624561, 34.881218, 36.178761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953857, 35.568981, 36.466938>,  <35.200287, 35.238514, 36.003040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953857, 35.568981, 36.466938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776161, 35.216309, 36.530544>,  <34.669544, 35.004704, 36.568707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776161, 35.216309, 36.530544>,  <34.953857, 35.568981, 36.466938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776161, 35.216309, 36.530544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081023, 0.137225, 0.987221,
		-0.892238, 0.451444, 0.010476,
		-0.444237, -0.881685, 0.159014,
		34.642891, 34.951801, 36.578247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599079, 35.705395, 37.065971>,  <34.953857, 35.568981, 36.466938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599079, 35.705395, 37.065971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577076, 35.306080, 37.057961>,  <34.563873, 35.066490, 37.053154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577076, 35.306080, 37.057961>,  <34.599079, 35.705395, 37.065971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577076, 35.306080, 37.057961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052264, -0.022907, 0.998370,
		-0.997117, 0.053872, 0.053434,
		-0.055008, -0.998285, -0.020026,
		34.560574, 35.006596, 37.051952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066982, 35.539211, 37.508392>,  <34.599079, 35.705395, 37.065971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066982, 35.539211, 37.508392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319073, 35.232082, 37.462334>,  <34.470325, 35.047806, 37.434700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319073, 35.232082, 37.462334>,  <34.066982, 35.539211, 37.508392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319073, 35.232082, 37.462334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071469, -0.090306, 0.993346,
		-0.773115, -0.634263, -0.002037,
		0.630227, -0.767825, -0.115147,
		34.508141, 35.001736, 37.427788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701977, 35.086010, 37.805702>,  <34.066982, 35.539211, 37.508392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701977, 35.086010, 37.805702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075249, 34.942757, 37.817772>,  <34.299213, 34.856804, 37.825012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075249, 34.942757, 37.817772>,  <33.701977, 35.086010, 37.805702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075249, 34.942757, 37.817772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151886, -0.316880, 0.936225,
		-0.325751, -0.878245, -0.350103,
		0.933176, -0.358152, 0.030170,
		34.355202, 34.835316, 37.826824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605221, 34.403969, 38.068188>,  <33.701977, 35.086010, 37.805702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605221, 34.403969, 38.068188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982143, 34.529510, 38.114769>,  <34.208298, 34.604836, 38.142715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982143, 34.529510, 38.114769>,  <33.605221, 34.403969, 38.068188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982143, 34.529510, 38.114769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012060, -0.315811, 0.948745,
		0.334544, -0.895410, -0.293804,
		0.942303, 0.313854, 0.116452,
		34.264835, 34.623665, 38.149704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958458, 33.781578, 38.305641>,  <33.605221, 34.403969, 38.068188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958458, 33.781578, 38.305641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177414, 34.101372, 38.404591>,  <34.308788, 34.293247, 38.463959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177414, 34.101372, 38.404591>,  <33.958458, 33.781578, 38.305641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177414, 34.101372, 38.404591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151062, -0.385124, 0.910417,
		0.823131, -0.460985, -0.331584,
		0.547390, 0.799482, 0.247370,
		34.341629, 34.341217, 38.478802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395046, 33.555191, 38.767464>,  <33.958458, 33.781578, 38.305641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395046, 33.555191, 38.767464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482471, 33.942295, 38.817535>,  <34.534927, 34.174557, 38.847576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482471, 33.942295, 38.817535>,  <34.395046, 33.555191, 38.767464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482471, 33.942295, 38.817535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339779, -0.195726, 0.919914,
		0.914756, -0.158531, -0.371604,
		0.218568, 0.967760, 0.125176,
		34.548042, 34.232624, 38.855087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007866, 33.573746, 39.100040>,  <34.395046, 33.555191, 38.767464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007866, 33.573746, 39.100040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858952, 33.931782, 39.198200>,  <34.769600, 34.146603, 39.257095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858952, 33.931782, 39.198200>,  <35.007866, 33.573746, 39.100040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858952, 33.931782, 39.198200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333035, -0.117959, 0.935507,
		0.866307, 0.430006, -0.254180,
		-0.372291, 0.895087, 0.245396,
		34.747265, 34.200310, 39.271820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580547, 33.925667, 39.447483>,  <35.007866, 33.573746, 39.100040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580547, 33.925667, 39.447483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251637, 34.123020, 39.560921>,  <35.054291, 34.241432, 39.628983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251637, 34.123020, 39.560921>,  <35.580547, 33.925667, 39.447483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251637, 34.123020, 39.560921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369637, 0.084146, 0.925358,
		0.432691, 0.865733, -0.251564,
		-0.822281, 0.493382, 0.283598,
		35.004951, 34.271034, 39.646000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876602, 34.416851, 39.747990>,  <35.580547, 33.925667, 39.447483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876602, 34.416851, 39.747990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503345, 34.395138, 39.890141>,  <35.279392, 34.382111, 39.975430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503345, 34.395138, 39.890141>,  <35.876602, 34.416851, 39.747990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503345, 34.395138, 39.890141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359399, -0.117687, 0.925733,
		-0.008432, 0.991566, 0.129329,
		-0.933146, -0.054286, 0.355375,
		35.223400, 34.378853, 39.996754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644962, 34.983154, 40.189560>,  <35.876602, 34.416851, 39.747990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644962, 34.983154, 40.189560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441765, 34.657547, 40.302219>,  <35.319847, 34.462185, 40.369816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441765, 34.657547, 40.302219>,  <35.644962, 34.983154, 40.189560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441765, 34.657547, 40.302219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439118, 0.036562, 0.897685,
		-0.741027, 0.579692, 0.338875,
		-0.507991, -0.814015, 0.281647,
		35.289368, 34.413342, 40.386715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670193, 35.031990, 40.872444>,  <35.644962, 34.983154, 40.189560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670193, 35.031990, 40.872444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507793, 34.666992, 40.852383>,  <35.410355, 34.447994, 40.840347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507793, 34.666992, 40.852383>,  <35.670193, 35.031990, 40.872444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507793, 34.666992, 40.852383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352368, -0.206941, 0.912695,
		-0.843211, 0.352877, 0.405552,
		-0.405995, -0.912498, -0.050153,
		35.385994, 34.393242, 40.837337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451565, 34.899731, 41.521133>,  <35.670193, 35.031990, 40.872444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451565, 34.899731, 41.521133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452679, 34.524681, 41.382072>,  <35.453346, 34.299652, 41.298637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452679, 34.524681, 41.382072>,  <35.451565, 34.899731, 41.521133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452679, 34.524681, 41.382072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367881, -0.322309, 0.872227,
		-0.929869, -0.130325, 0.344034,
		0.002788, -0.937620, -0.347650,
		35.453514, 34.243397, 41.277779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122990, 34.589668, 41.996147>,  <35.451565, 34.899731, 41.521133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122990, 34.589668, 41.996147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306671, 34.274048, 41.832916>,  <35.416882, 34.084675, 41.734978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306671, 34.274048, 41.832916>,  <35.122990, 34.589668, 41.996147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306671, 34.274048, 41.832916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287644, -0.302553, 0.908693,
		-0.840473, -0.534655, 0.088034,
		0.459202, -0.789054, -0.408077,
		35.444431, 34.037331, 41.710491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877712, 33.930233, 42.320187>,  <35.122990, 34.589668, 41.996147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877712, 33.930233, 42.320187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248055, 33.904591, 42.171227>,  <35.470261, 33.889206, 42.081852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248055, 33.904591, 42.171227>,  <34.877712, 33.930233, 42.320187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248055, 33.904591, 42.171227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322595, -0.379109, 0.867299,
		-0.196776, -0.923128, -0.330322,
		0.925857, -0.064104, -0.372396,
		35.525810, 33.885361, 42.059509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100018, 33.283131, 42.433514>,  <34.877712, 33.930233, 42.320187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100018, 33.283131, 42.433514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424480, 33.513191, 42.391117>,  <35.619156, 33.651226, 42.365681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424480, 33.513191, 42.391117>,  <35.100018, 33.283131, 42.433514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424480, 33.513191, 42.391117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415276, -0.438833, 0.796851,
		0.411797, -0.690383, -0.594807,
		0.811153, 0.575150, -0.105989,
		35.667828, 33.685738, 42.359322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575787, 32.788338, 42.631603>,  <35.100018, 33.283131, 42.433514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575787, 32.788338, 42.631603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790585, 33.125519, 42.644695>,  <35.919464, 33.327827, 42.652550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790585, 33.125519, 42.644695>,  <35.575787, 32.788338, 42.631603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790585, 33.125519, 42.644695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562128, -0.386494, 0.731187,
		0.629004, -0.374246, -0.681391,
		0.536997, 0.842949, 0.032732,
		35.951683, 33.378403, 42.654514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263988, 32.544758, 42.545433>,  <35.575787, 32.788338, 42.631603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263988, 32.544758, 42.545433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224670, 32.888729, 42.745773>,  <36.201080, 33.095112, 42.865978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224670, 32.888729, 42.745773>,  <36.263988, 32.544758, 42.545433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224670, 32.888729, 42.745773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428086, -0.417805, 0.801362,
		0.898376, 0.293181, -0.327055,
		-0.098299, 0.859932, 0.500853,
		36.195179, 33.146709, 42.896030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915062, 32.622673, 42.862373>,  <36.263988, 32.544758, 42.545433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915062, 32.622673, 42.862373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707409, 32.897438, 43.065804>,  <36.582817, 33.062298, 43.187862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707409, 32.897438, 43.065804>,  <36.915062, 32.622673, 42.862373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707409, 32.897438, 43.065804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427941, -0.306179, 0.850365,
		0.739840, 0.659098, -0.135008,
		-0.519137, 0.686910, 0.508578,
		36.551666, 33.103512, 43.218376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429333, 32.992973, 43.320221>,  <36.915062, 32.622673, 42.862373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429333, 32.992973, 43.320221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062771, 33.046959, 43.470947>,  <36.842834, 33.079350, 43.561382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062771, 33.046959, 43.470947>,  <37.429333, 32.992973, 43.320221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062771, 33.046959, 43.470947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339566, -0.236269, 0.910424,
		0.211904, 0.962269, 0.170689,
		-0.916402, 0.134963, 0.376820,
		36.787849, 33.087448, 43.583992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048805, 33.451900, 43.183041>,  <37.429333, 32.992973, 43.320221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048805, 33.451900, 43.183041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443146, 33.388851, 43.205872>,  <38.679749, 33.351021, 43.219570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443146, 33.388851, 43.205872>,  <38.048805, 33.451900, 43.183041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443146, 33.388851, 43.205872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061922, 0.025972, -0.997743,
		0.155781, 0.987158, 0.035365,
		0.985849, -0.157619, 0.057080,
		38.738899, 33.341564, 43.222996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377575, 33.972233, 42.843426>,  <38.048805, 33.451900, 43.183041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377575, 33.972233, 42.843426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648941, 33.678425, 42.849674>,  <38.811760, 33.502140, 42.853424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648941, 33.678425, 42.849674>,  <38.377575, 33.972233, 42.843426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648941, 33.678425, 42.849674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022935, -0.000074, -0.999737,
		0.734324, 0.678591, 0.016796,
		0.678411, -0.734516, 0.015618,
		38.852463, 33.458069, 42.854359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875622, 34.253441, 42.458042>,  <38.377575, 33.972233, 42.843426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875622, 34.253441, 42.458042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959198, 33.862370, 42.466854>,  <39.009342, 33.627728, 42.472141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959198, 33.862370, 42.466854>,  <38.875622, 34.253441, 42.458042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959198, 33.862370, 42.466854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227173, 0.026612, -0.973491,
		0.951176, 0.208407, 0.227662,
		0.208940, -0.977680, 0.022032,
		39.021881, 33.569065, 42.473465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574722, 34.214504, 42.138367>,  <38.875622, 34.253441, 42.458042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574722, 34.214504, 42.138367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385651, 33.863533, 42.105629>,  <39.272205, 33.652950, 42.085987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385651, 33.863533, 42.105629>,  <39.574722, 34.214504, 42.138367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385651, 33.863533, 42.105629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177841, -0.004014, -0.984051,
		0.863102, -0.479698, 0.157939,
		-0.472681, -0.877424, -0.081846,
		39.243847, 33.600307, 42.081074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966297, 33.922203, 41.706505>,  <39.574722, 34.214504, 42.138367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966297, 33.922203, 41.706505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619770, 33.722534, 41.699352>,  <39.411854, 33.602734, 41.695061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619770, 33.722534, 41.699352>,  <39.966297, 33.922203, 41.706505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619770, 33.722534, 41.699352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027314, 0.083090, -0.996168,
		0.498748, -0.862508, -0.085617,
		-0.866316, -0.499176, -0.017882,
		39.359875, 33.572781, 41.693989>
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
