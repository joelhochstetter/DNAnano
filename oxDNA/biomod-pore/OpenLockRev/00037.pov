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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.828197, 33.698170, 47.649490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662014, 33.958908, 47.903259>,  <40.562305, 34.115349, 48.055523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662014, 33.958908, 47.903259>,  <40.828197, 33.698170, 47.649490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662014, 33.958908, 47.903259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849264, 0.527786, 0.013870,
		-0.325800, 0.544557, -0.772860,
		-0.415457, 0.651843, 0.634425,
		40.537376, 34.154461, 48.093586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948872, 34.403893, 47.436436>,  <40.828197, 33.698170, 47.649490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948872, 34.403893, 47.436436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888924, 34.439281, 47.830330>,  <40.852955, 34.460514, 48.066666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888924, 34.439281, 47.830330>,  <40.948872, 34.403893, 47.436436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888924, 34.439281, 47.830330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811110, 0.580534, 0.071287,
		-0.565368, 0.809416, -0.158763,
		-0.149868, 0.088471, 0.984740,
		40.843964, 34.465824, 48.125751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160549, 35.121582, 47.620583>,  <40.948872, 34.403893, 47.436436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160549, 35.121582, 47.620583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183754, 34.928806, 47.970295>,  <41.197678, 34.813141, 48.180122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183754, 34.928806, 47.970295>,  <41.160549, 35.121582, 47.620583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183754, 34.928806, 47.970295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904700, 0.395644, 0.158066,
		-0.422082, 0.781793, 0.458962,
		0.058010, -0.481940, 0.874282,
		41.201157, 34.784225, 48.232578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469669, 35.549835, 48.043362>,  <41.160549, 35.121582, 47.620583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469669, 35.549835, 48.043362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522263, 35.242741, 48.294216>,  <41.553818, 35.058483, 48.444729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522263, 35.242741, 48.294216>,  <41.469669, 35.549835, 48.043362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522263, 35.242741, 48.294216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812366, 0.446008, 0.375685,
		-0.568133, 0.460067, 0.682322,
		0.131481, -0.767734, 0.627134,
		41.561707, 35.012421, 48.482357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614914, 35.775047, 48.777538>,  <41.469669, 35.549835, 48.043362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614914, 35.775047, 48.777538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760612, 35.403339, 48.752941>,  <41.848034, 35.180313, 48.738182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760612, 35.403339, 48.752941>,  <41.614914, 35.775047, 48.777538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760612, 35.403339, 48.752941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839892, 0.299253, 0.452802,
		-0.402373, -0.216579, 0.889488,
		0.364249, -0.929269, -0.061491,
		41.869888, 35.124557, 48.734493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839745, 35.633957, 49.467285>,  <41.614914, 35.775047, 48.777538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839745, 35.633957, 49.467285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016792, 35.378212, 49.215790>,  <42.123020, 35.224766, 49.064892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016792, 35.378212, 49.215790>,  <41.839745, 35.633957, 49.467285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016792, 35.378212, 49.215790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860734, 0.106315, 0.497829,
		-0.251447, -0.761524, 0.597374,
		0.442618, -0.639358, -0.628737,
		42.149578, 35.186405, 49.027168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029972, 35.161514, 49.931141>,  <41.839745, 35.633957, 49.467285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029972, 35.161514, 49.931141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257595, 35.135601, 49.603245>,  <42.394169, 35.120052, 49.406506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257595, 35.135601, 49.603245>,  <42.029972, 35.161514, 49.931141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257595, 35.135601, 49.603245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821202, 0.096203, 0.562470,
		0.042420, -0.993251, 0.107950,
		0.569059, -0.064789, -0.819740,
		42.428314, 35.116165, 49.357323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545883, 34.679279, 50.132431>,  <42.029972, 35.161514, 49.931141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545883, 34.679279, 50.132431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687275, 34.844868, 49.796886>,  <42.772110, 34.944221, 49.595562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687275, 34.844868, 49.796886>,  <42.545883, 34.679279, 50.132431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687275, 34.844868, 49.796886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869193, 0.186118, 0.458108,
		0.345769, -0.891061, -0.294030,
		0.353478, 0.413968, -0.838858,
		42.793320, 34.969059, 49.545227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231789, 34.401985, 49.979984>,  <42.545883, 34.679279, 50.132431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231789, 34.401985, 49.979984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245163, 34.752247, 49.787277>,  <43.253185, 34.962406, 49.671654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245163, 34.752247, 49.787277>,  <43.231789, 34.401985, 49.979984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245163, 34.752247, 49.787277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958290, 0.108809, 0.264272,
		0.283834, -0.470513, -0.835498,
		0.033434, 0.875659, -0.481772,
		43.255192, 35.014946, 49.642746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870678, 34.371326, 49.751411>,  <43.231789, 34.401985, 49.979984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870678, 34.371326, 49.751411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782475, 34.760189, 49.719696>,  <43.729553, 34.993507, 49.700668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782475, 34.760189, 49.719696>,  <43.870678, 34.371326, 49.751411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782475, 34.760189, 49.719696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887196, 0.233685, 0.397838,
		0.405289, 0.017384, -0.914023,
		-0.220510, 0.972157, -0.079287,
		43.716320, 35.051838, 49.695911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416866, 34.627739, 49.399292>,  <43.870678, 34.371326, 49.751411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416866, 34.627739, 49.399292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244339, 34.926449, 49.601795>,  <44.140823, 35.105675, 49.723297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244339, 34.926449, 49.601795>,  <44.416866, 34.627739, 49.399292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244339, 34.926449, 49.601795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899544, 0.312939, 0.304777,
		0.069173, 0.586854, -0.806732,
		-0.431318, 0.746774, 0.506254,
		44.114944, 35.150482, 49.753670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848915, 35.228168, 49.247166>,  <44.416866, 34.627739, 49.399292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848915, 35.228168, 49.247166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650208, 35.324139, 49.580791>,  <44.530983, 35.381721, 49.780968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650208, 35.324139, 49.580791>,  <44.848915, 35.228168, 49.247166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650208, 35.324139, 49.580791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825695, 0.426639, 0.369062,
		-0.267297, 0.872019, -0.410043,
		-0.496769, 0.239921, 0.834061,
		44.501175, 35.396114, 49.831009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037975, 35.925175, 49.382870>,  <44.848915, 35.228168, 49.247166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037975, 35.925175, 49.382870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898739, 35.780045, 49.728630>,  <44.815197, 35.692966, 49.936085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898739, 35.780045, 49.728630>,  <45.037975, 35.925175, 49.382870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898739, 35.780045, 49.728630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880347, 0.190408, 0.434436,
		-0.322213, 0.912197, 0.253131,
		-0.348093, -0.362824, 0.864402,
		44.794312, 35.671196, 49.987949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146381, 36.378136, 49.879742>,  <45.037975, 35.925175, 49.382870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146381, 36.378136, 49.879742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133045, 36.036839, 50.087917>,  <45.125042, 35.832058, 50.212822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133045, 36.036839, 50.087917>,  <45.146381, 36.378136, 49.879742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133045, 36.036839, 50.087917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796192, 0.292085, 0.529873,
		-0.604125, 0.432036, 0.669610,
		-0.033341, -0.853247, 0.520440,
		45.123043, 35.780865, 50.244049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387222, 36.575821, 50.569771>,  <45.146381, 36.378136, 49.879742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387222, 36.575821, 50.569771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385593, 36.179386, 50.623028>,  <45.384617, 35.941525, 50.654980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385593, 36.179386, 50.623028>,  <45.387222, 36.575821, 50.569771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385593, 36.179386, 50.623028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787468, 0.078883, 0.611287,
		-0.616342, 0.107334, 0.780129,
		-0.004073, -0.991089, 0.133140,
		45.384373, 35.882061, 50.662971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546314, 36.439781, 51.280853>,  <45.387222, 36.575821, 50.569771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546314, 36.439781, 51.280853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635357, 36.095612, 51.097504>,  <45.688782, 35.889111, 50.987492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635357, 36.095612, 51.097504>,  <45.546314, 36.439781, 51.280853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635357, 36.095612, 51.097504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903821, 0.005893, 0.427869,
		-0.365449, -0.509538, 0.778985,
		0.222606, -0.860428, -0.458378,
		45.702137, 35.837482, 50.959991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655125, 36.047562, 51.834694>,  <45.546314, 36.439781, 51.280853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655125, 36.047562, 51.834694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831291, 35.837082, 51.543724>,  <45.936993, 35.710793, 51.369144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831291, 35.837082, 51.543724>,  <45.655125, 36.047562, 51.834694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831291, 35.837082, 51.543724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865520, 0.033572, 0.499748,
		-0.238548, -0.849696, 0.470224,
		0.440420, -0.526202, -0.727421,
		45.963417, 35.679222, 51.325497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950054, 35.503166, 52.157467>,  <45.655125, 36.047562, 51.834694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950054, 35.503166, 52.157467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142395, 35.560699, 51.811497>,  <46.257797, 35.595219, 51.603916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142395, 35.560699, 51.811497>,  <45.950054, 35.503166, 52.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142395, 35.560699, 51.811497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872054, 0.024088, 0.488817,
		0.091145, -0.989308, -0.113851,
		0.480848, 0.143837, -0.864926,
		46.286648, 35.603851, 51.552017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537029, 34.983635, 52.161671>,  <45.950054, 35.503166, 52.157467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537029, 34.983635, 52.161671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660664, 35.256374, 51.896477>,  <46.734844, 35.420017, 51.737362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660664, 35.256374, 51.896477>,  <46.537029, 34.983635, 52.161671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660664, 35.256374, 51.896477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905052, 0.003262, 0.425288,
		0.292145, -0.731486, -0.616100,
		0.309083, 0.681848, -0.662986,
		46.753387, 35.460930, 51.697582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174278, 34.731369, 51.783142>,  <46.537029, 34.983635, 52.161671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174278, 34.731369, 51.783142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172062, 35.130512, 51.757072>,  <47.170734, 35.369999, 51.741432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172062, 35.130512, 51.757072>,  <47.174278, 34.731369, 51.783142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.172062, 35.130512, 51.757072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957411, 0.024105, 0.287720,
		0.288675, -0.060805, -0.955495,
		-0.005537, 0.997858, -0.065174,
		47.170403, 35.429871, 51.737518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853638, 34.957188, 51.554802>,  <47.174278, 34.731369, 51.783142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853638, 34.957188, 51.554802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686485, 35.285255, 51.711105>,  <47.586193, 35.482098, 51.804886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686485, 35.285255, 51.711105>,  <47.853638, 34.957188, 51.554802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686485, 35.285255, 51.711105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835489, 0.177998, 0.519879,
		0.356837, 0.543720, -0.759628,
		-0.417881, 0.820174, 0.390756,
		47.561119, 35.531307, 51.828331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.287907, 34.622868, 51.607559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.417236, 34.961163, 51.777355>,  <24.494835, 35.164139, 51.879234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.417236, 34.961163, 51.777355>,  <24.287907, 34.622868, 51.607559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417236, 34.961163, 51.777355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821317, -0.028003, -0.569784,
		-0.469999, 0.532867, -0.703672,
		0.323324, 0.845736, 0.424491,
		24.514233, 35.214882, 51.904701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614565, 35.020824, 51.112827>,  <24.287907, 34.622868, 51.607559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614565, 35.020824, 51.112827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.742468, 35.211208, 51.440536>,  <24.819210, 35.325439, 51.637161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.742468, 35.211208, 51.440536>,  <24.614565, 35.020824, 51.112827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742468, 35.211208, 51.440536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850574, 0.236782, -0.469530,
		-0.417468, 0.846991, -0.329129,
		0.319756, 0.475963, 0.819278,
		24.838394, 35.353996, 51.686321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849232, 35.636818, 50.914871>,  <24.614565, 35.020824, 51.112827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849232, 35.636818, 50.914871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.039621, 35.601727, 51.264900>,  <25.153854, 35.580673, 51.474918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.039621, 35.601727, 51.264900>,  <24.849232, 35.636818, 50.914871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039621, 35.601727, 51.264900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859729, 0.256000, -0.441963,
		-0.185246, 0.962688, 0.197271,
		0.475974, -0.087727, 0.875073,
		25.182413, 35.575409, 51.527424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271944, 36.199776, 51.049801>,  <24.849232, 35.636818, 50.914871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271944, 36.199776, 51.049801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.432747, 35.896259, 51.254787>,  <25.529228, 35.714149, 51.377781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.432747, 35.896259, 51.254787>,  <25.271944, 36.199776, 51.049801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432747, 35.896259, 51.254787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899633, 0.223140, -0.375324,
		0.170442, 0.611915, 0.772341,
		0.402007, -0.758794, 0.512466,
		25.553349, 35.668621, 51.408527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869030, 36.443901, 51.091717>,  <25.271944, 36.199776, 51.049801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869030, 36.443901, 51.091717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.920223, 36.064163, 51.206512>,  <25.950939, 35.836319, 51.275391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.920223, 36.064163, 51.206512>,  <25.869030, 36.443901, 51.091717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920223, 36.064163, 51.206512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972370, 0.063147, -0.224744,
		0.195237, 0.307822, 0.931197,
		0.127983, -0.949346, 0.286988,
		25.958618, 35.779358, 51.292610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533451, 36.397232, 51.472202>,  <25.869030, 36.443901, 51.091717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533451, 36.397232, 51.472202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.471893, 36.013065, 51.379318>,  <26.434959, 35.782566, 51.323589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.471893, 36.013065, 51.379318>,  <26.533451, 36.397232, 51.472202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471893, 36.013065, 51.379318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959490, -0.089125, -0.267274,
		0.235998, -0.263934, 0.935224,
		-0.153895, -0.960414, -0.232209,
		26.425724, 35.724941, 51.309654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118164, 36.104874, 51.756611>,  <26.533451, 36.397232, 51.472202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118164, 36.104874, 51.756611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.970209, 35.836502, 51.499538>,  <26.881435, 35.675480, 51.345295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.970209, 35.836502, 51.499538>,  <27.118164, 36.104874, 51.756611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970209, 35.836502, 51.499538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922832, -0.185255, -0.337728,
		0.107533, -0.718005, 0.687681,
		-0.369887, -0.670931, -0.642678,
		26.859243, 35.635223, 51.306736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457264, 35.491528, 51.846218>,  <27.118164, 36.104874, 51.756611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457264, 35.491528, 51.846218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.309879, 35.457726, 51.475899>,  <27.221449, 35.437447, 51.253708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.309879, 35.457726, 51.475899>,  <27.457264, 35.491528, 51.846218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309879, 35.457726, 51.475899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897935, -0.290225, -0.330881,
		-0.240729, -0.953220, 0.182815,
		-0.368460, -0.084503, -0.925795,
		27.199341, 35.432373, 51.198162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846638, 34.935455, 51.650349>,  <27.457264, 35.491528, 51.846218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846638, 34.935455, 51.650349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.706051, 35.141747, 51.337814>,  <27.621698, 35.265522, 51.150291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.706051, 35.141747, 51.337814>,  <27.846638, 34.935455, 51.650349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706051, 35.141747, 51.337814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844340, -0.185911, -0.502521,
		-0.404426, -0.836335, -0.370112,
		-0.351468, 0.515733, -0.781339,
		27.600611, 35.296467, 51.103413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075201, 34.535732, 51.122185>,  <27.846638, 34.935455, 51.650349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075201, 34.535732, 51.122185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.994461, 34.884861, 50.944447>,  <27.946016, 35.094337, 50.837803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.994461, 34.884861, 50.944447>,  <28.075201, 34.535732, 51.122185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994461, 34.884861, 50.944447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910347, -0.000157, -0.413846,
		-0.361283, -0.488042, -0.794538,
		-0.201850, 0.872820, -0.444344,
		27.933907, 35.146706, 50.811142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377590, 34.418758, 50.503498>,  <28.075201, 34.535732, 51.122185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377590, 34.418758, 50.503498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.346947, 34.816242, 50.536179>,  <28.328560, 35.054733, 50.555786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.346947, 34.816242, 50.536179>,  <28.377590, 34.418758, 50.503498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346947, 34.816242, 50.536179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834998, 0.108724, -0.539404,
		-0.544893, 0.026898, -0.838074,
		-0.076610, 0.993708, 0.081703,
		28.323963, 35.114353, 50.560688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463001, 34.674416, 49.822311>,  <28.377590, 34.418758, 50.503498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463001, 34.674416, 49.822311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.553926, 34.966347, 50.080204>,  <28.608482, 35.141506, 50.234940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.553926, 34.966347, 50.080204>,  <28.463001, 34.674416, 49.822311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553926, 34.966347, 50.080204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830720, 0.200157, -0.519462,
		-0.508165, 0.653673, -0.560784,
		0.227313, 0.729828, 0.644733,
		28.622120, 35.185295, 50.273624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607187, 35.351456, 49.469654>,  <28.463001, 34.674416, 49.822311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607187, 35.351456, 49.469654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.776260, 35.381287, 49.830936>,  <28.877705, 35.399185, 50.047707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.776260, 35.381287, 49.830936>,  <28.607187, 35.351456, 49.469654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776260, 35.381287, 49.830936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865265, 0.263204, -0.426662,
		-0.269547, 0.961853, 0.046721,
		0.422683, 0.074580, 0.903204,
		28.903065, 35.403660, 50.101898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059675, 35.838013, 49.380417>,  <28.607187, 35.351456, 49.469654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059675, 35.838013, 49.380417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.190851, 35.650784, 49.708652>,  <29.269558, 35.538445, 49.905594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.190851, 35.650784, 49.708652>,  <29.059675, 35.838013, 49.380417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190851, 35.650784, 49.708652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941305, 0.235458, -0.241878,
		-0.079997, 0.851743, 0.517816,
		0.327941, -0.468074, 0.820586,
		29.289234, 35.510361, 49.954830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598803, 36.274590, 49.640602>,  <29.059675, 35.838013, 49.380417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598803, 36.274590, 49.640602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.679029, 35.920025, 49.807476>,  <29.727165, 35.707287, 49.907600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.679029, 35.920025, 49.807476>,  <29.598803, 36.274590, 49.640602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679029, 35.920025, 49.807476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963887, 0.102392, -0.245842,
		0.175202, 0.451425, 0.874940,
		0.200566, -0.886415, 0.417184,
		29.739199, 35.654099, 49.932632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106014, 36.374287, 49.996410>,  <29.598803, 36.274590, 49.640602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106014, 36.374287, 49.996410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.132074, 35.982475, 49.920223>,  <30.147711, 35.747387, 49.874512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.132074, 35.982475, 49.920223>,  <30.106014, 36.374287, 49.996410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132074, 35.982475, 49.920223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981170, 0.097662, -0.166633,
		0.181823, -0.176027, 0.967448,
		0.065151, -0.979529, -0.190470,
		30.151619, 35.688618, 49.863083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644672, 36.206718, 50.402203>,  <30.106014, 36.374287, 49.996410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644672, 36.206718, 50.402203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.621481, 35.866043, 50.193871>,  <30.607567, 35.661640, 50.068871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.621481, 35.866043, 50.193871>,  <30.644672, 36.206718, 50.402203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621481, 35.866043, 50.193871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996484, -0.080985, 0.021506,
		-0.060496, -0.517756, 0.853387,
		-0.057977, -0.851687, -0.520834,
		30.604088, 35.610538, 50.037621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334652, 35.754345, 50.535461>,  <30.644672, 36.206718, 50.402203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334652, 35.754345, 50.535461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.201925, 35.598293, 50.191906>,  <31.122290, 35.504662, 49.985771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.201925, 35.598293, 50.191906>,  <31.334652, 35.754345, 50.535461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201925, 35.598293, 50.191906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942498, -0.098569, -0.319345,
		0.039927, -0.915467, 0.400406,
		-0.331818, -0.390133, -0.858891,
		31.102381, 35.481255, 49.934238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555182, 35.057770, 50.547089>,  <31.334652, 35.754345, 50.535461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555182, 35.057770, 50.547089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.488373, 35.170765, 50.169239>,  <31.448288, 35.238560, 49.942532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.488373, 35.170765, 50.169239>,  <31.555182, 35.057770, 50.547089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488373, 35.170765, 50.169239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950707, -0.207738, -0.230220,
		-0.261267, -0.936508, -0.233862,
		-0.167021, 0.282483, -0.944620,
		31.438267, 35.255508, 49.885853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883480, 34.545193, 50.014549>,  <31.555182, 35.057770, 50.547089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883480, 34.545193, 50.014549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.844116, 34.888290, 49.812721>,  <31.820498, 35.094151, 49.691624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.844116, 34.888290, 49.812721>,  <31.883480, 34.545193, 50.014549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844116, 34.888290, 49.812721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920395, -0.114344, -0.373896,
		-0.378402, -0.501197, -0.778212,
		-0.098412, 0.857745, -0.504567,
		31.814592, 35.145615, 49.661350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039215, 34.400211, 49.396759>,  <31.883480, 34.545193, 50.014549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039215, 34.400211, 49.396759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.098278, 34.795029, 49.421860>,  <32.133717, 35.031921, 49.436920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.098278, 34.795029, 49.421860>,  <32.039215, 34.400211, 49.396759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098278, 34.795029, 49.421860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959919, -0.127737, -0.249477,
		-0.238230, 0.097070, -0.966346,
		0.147655, 0.987047, 0.062749,
		32.142574, 35.091141, 49.440685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.463383, 34.902618, 34.908363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.243748, 35.123840, 35.159004>,  <24.111967, 35.256573, 35.309387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.243748, 35.123840, 35.159004>,  <24.463383, 34.902618, 34.908363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243748, 35.123840, 35.159004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821462, 0.495248, 0.282718,
		-0.153964, 0.669967, -0.726250,
		-0.549086, 0.553059, 0.626603,
		24.079021, 35.289757, 35.346985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716614, 35.632313, 34.896255>,  <24.463383, 34.902618, 34.908363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716614, 35.632313, 34.896255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.532125, 35.547848, 35.240971>,  <24.421432, 35.497169, 35.447800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.532125, 35.547848, 35.240971>,  <24.716614, 35.632313, 34.896255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532125, 35.547848, 35.240971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791691, 0.340603, 0.507163,
		-0.400623, 0.916187, 0.010084,
		-0.461222, -0.211165, 0.861791,
		24.393759, 35.484497, 35.499508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677814, 36.228916, 35.432568>,  <24.716614, 35.632313, 34.896255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677814, 36.228916, 35.432568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.738598, 35.871906, 35.602417>,  <24.775068, 35.657700, 35.704327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.738598, 35.871906, 35.602417>,  <24.677814, 36.228916, 35.432568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738598, 35.871906, 35.602417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846795, 0.339130, 0.409791,
		-0.509752, 0.297295, 0.807322,
		0.151959, -0.892528, 0.424620,
		24.784185, 35.604149, 35.729801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948811, 36.489037, 36.010941>,  <24.677814, 36.228916, 35.432568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948811, 36.489037, 36.010941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.045334, 36.104000, 35.961632>,  <25.103249, 35.872978, 35.932045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.045334, 36.104000, 35.961632>,  <24.948811, 36.489037, 36.010941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045334, 36.104000, 35.961632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911635, 0.181297, 0.368855,
		-0.332705, -0.201390, 0.921276,
		0.241308, -0.962587, -0.123275,
		25.117727, 35.815224, 35.924648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322372, 36.272598, 36.589943>,  <24.948811, 36.489037, 36.010941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322372, 36.272598, 36.589943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.433390, 35.969200, 36.354095>,  <25.500000, 35.787159, 36.212585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.433390, 35.969200, 36.354095>,  <25.322372, 36.272598, 36.589943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433390, 35.969200, 36.354095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918364, 0.029258, 0.394654,
		-0.282093, -0.651019, 0.704697,
		0.277545, -0.758497, -0.589619,
		25.516653, 35.741650, 36.177208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642580, 35.698578, 36.996590>,  <25.322372, 36.272598, 36.589943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642580, 35.698578, 36.996590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.792122, 35.745811, 36.628613>,  <25.881847, 35.774151, 36.407825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.792122, 35.745811, 36.628613>,  <25.642580, 35.698578, 36.996590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792122, 35.745811, 36.628613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890225, 0.232632, 0.391640,
		0.260253, -0.965370, -0.018149,
		0.373856, 0.118082, -0.919939,
		25.904278, 35.781235, 36.352631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181873, 35.327625, 36.863041>,  <25.642580, 35.698578, 36.996590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181873, 35.327625, 36.863041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.206882, 35.661839, 36.644695>,  <26.221888, 35.862366, 36.513687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.206882, 35.661839, 36.644695>,  <26.181873, 35.327625, 36.863041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206882, 35.661839, 36.644695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939137, 0.135868, 0.315534,
		0.337806, -0.532371, -0.776188,
		0.062522, 0.835536, -0.545866,
		26.225639, 35.912498, 36.480934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802385, 35.365902, 36.294319>,  <26.181873, 35.327625, 36.863041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802385, 35.365902, 36.294319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.696640, 35.723961, 36.437885>,  <26.633192, 35.938797, 36.524025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.696640, 35.723961, 36.437885>,  <26.802385, 35.365902, 36.294319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696640, 35.723961, 36.437885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960117, 0.209147, 0.185563,
		0.091041, 0.393655, -0.914739,
		-0.264363, 0.895150, 0.358914,
		26.617331, 35.992504, 36.545559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151211, 35.862839, 35.985340>,  <26.802385, 35.365902, 36.294319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151211, 35.862839, 35.985340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.045233, 35.999382, 36.346069>,  <26.981646, 36.081310, 36.562508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.045233, 35.999382, 36.346069>,  <27.151211, 35.862839, 35.985340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045233, 35.999382, 36.346069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939175, 0.303304, 0.161111,
		-0.218528, 0.889651, -0.400958,
		-0.264945, 0.341362, 0.901818,
		26.965750, 36.101791, 36.616615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408329, 36.546013, 36.171364>,  <27.151211, 35.862839, 35.985340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408329, 36.546013, 36.171364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.346298, 36.373257, 36.526764>,  <27.309080, 36.269604, 36.740002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.346298, 36.373257, 36.526764>,  <27.408329, 36.546013, 36.171364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346298, 36.373257, 36.526764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854769, 0.392257, 0.339859,
		-0.495300, 0.812163, 0.308334,
		-0.155075, -0.431887, 0.888496,
		27.299776, 36.243690, 36.793312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470020, 37.062397, 36.752651>,  <27.408329, 36.546013, 36.171364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470020, 37.062397, 36.752651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578897, 36.698662, 36.878521>,  <27.644224, 36.480423, 36.954044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578897, 36.698662, 36.878521>,  <27.470020, 37.062397, 36.752651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578897, 36.698662, 36.878521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818909, 0.390630, 0.420470,
		-0.505271, 0.143245, 0.850989,
		0.272192, -0.909334, 0.314679,
		27.660555, 36.425861, 36.972923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388391, 36.966801, 37.421669>,  <27.470020, 37.062397, 36.752651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388391, 36.966801, 37.421669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.697729, 36.736561, 37.315369>,  <27.883331, 36.598419, 37.251587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.697729, 36.736561, 37.315369>,  <27.388391, 36.966801, 37.421669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697729, 36.736561, 37.315369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611413, 0.566266, 0.552736,
		-0.167665, -0.589942, 0.789846,
		0.773345, -0.575597, -0.265755,
		27.929733, 36.563881, 37.235641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692545, 36.706848, 38.004948>,  <27.388391, 36.966801, 37.421669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692545, 36.706848, 38.004948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949230, 36.756252, 37.702175>,  <28.103241, 36.785896, 37.520512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949230, 36.756252, 37.702175>,  <27.692545, 36.706848, 38.004948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949230, 36.756252, 37.702175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508478, 0.670339, 0.540459,
		0.574153, -0.731704, 0.367365,
		0.641715, 0.123510, -0.756932,
		28.141745, 36.793304, 37.475094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477482, 36.550953, 38.143864>,  <27.692545, 36.706848, 38.004948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477482, 36.550953, 38.143864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.423721, 36.841366, 37.874107>,  <28.391464, 37.015614, 37.712254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.423721, 36.841366, 37.874107>,  <28.477482, 36.550953, 38.143864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423721, 36.841366, 37.874107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613797, 0.595285, 0.518544,
		0.777939, -0.344248, -0.525647,
		-0.134402, 0.726037, -0.674394,
		28.383400, 37.059177, 37.671791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115231, 36.737381, 37.733818>,  <28.477482, 36.550953, 38.143864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115231, 36.737381, 37.733818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.890974, 37.058929, 37.813290>,  <28.756420, 37.251858, 37.860973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.890974, 37.058929, 37.813290>,  <29.115231, 36.737381, 37.733818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890974, 37.058929, 37.813290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796241, 0.457484, 0.395865,
		0.227333, 0.380132, -0.896560,
		-0.560643, 0.803870, 0.198675,
		28.722780, 37.300091, 37.872890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398726, 37.337784, 37.378757>,  <29.115231, 36.737381, 37.733818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398726, 37.337784, 37.378757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.195475, 37.390331, 37.719238>,  <29.073524, 37.421860, 37.923527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.195475, 37.390331, 37.719238>,  <29.398726, 37.337784, 37.378757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195475, 37.390331, 37.719238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779993, 0.489319, 0.390099,
		-0.365262, 0.862153, -0.351107,
		-0.508128, 0.131373, 0.851203,
		29.043036, 37.429745, 37.974598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732813, 37.904007, 37.672440>,  <29.398726, 37.337784, 37.378757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732813, 37.904007, 37.672440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.555637, 37.738510, 37.990589>,  <29.449331, 37.639214, 38.181480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.555637, 37.738510, 37.990589>,  <29.732813, 37.904007, 37.672440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555637, 37.738510, 37.990589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642101, 0.472756, 0.603497,
		-0.625709, 0.778025, 0.056259,
		-0.442939, -0.413737, 0.795378,
		29.422756, 37.614388, 38.229202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509607, 38.416107, 38.200623>,  <29.732813, 37.904007, 37.672440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509607, 38.416107, 38.200623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601423, 38.075497, 38.389179>,  <29.656513, 37.871132, 38.502316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601423, 38.075497, 38.389179>,  <29.509607, 38.416107, 38.200623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601423, 38.075497, 38.389179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808609, 0.436409, 0.394586,
		-0.541722, 0.290602, 0.788726,
		0.229540, -0.851527, 0.471396,
		29.670284, 37.820038, 38.530598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581316, 38.427921, 38.926445>,  <29.509607, 38.416107, 38.200623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581316, 38.427921, 38.926445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.836380, 38.170662, 38.756859>,  <29.989418, 38.016308, 38.655106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.836380, 38.170662, 38.756859>,  <29.581316, 38.427921, 38.926445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836380, 38.170662, 38.756859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732937, 0.337191, 0.590851,
		-0.237048, -0.687504, 0.686401,
		0.637661, -0.643149, -0.423967,
		30.027678, 37.977718, 38.629669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021908, 38.067024, 39.341747>,  <29.581316, 38.427921, 38.926445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021908, 38.067024, 39.341747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250092, 37.999981, 39.020130>,  <30.387001, 37.959755, 38.827160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250092, 37.999981, 39.020130>,  <30.021908, 38.067024, 39.341747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250092, 37.999981, 39.020130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788023, 0.387635, 0.478287,
		0.231508, -0.906446, 0.353212,
		0.570460, -0.167612, -0.804041,
		30.421230, 37.949696, 38.778919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722578, 37.776428, 39.532951>,  <30.021908, 38.067024, 39.341747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722578, 37.776428, 39.532951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.767611, 37.978870, 39.190914>,  <30.794630, 38.100338, 38.985691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.767611, 37.978870, 39.190914>,  <30.722578, 37.776428, 39.532951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767611, 37.978870, 39.190914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794331, 0.471169, 0.383455,
		0.596963, -0.722393, -0.348975,
		0.112579, 0.506110, -0.855090,
		30.801384, 38.130703, 38.934387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753864, 36.983829, 39.474911>,  <30.722578, 37.776428, 39.532951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753864, 36.983829, 39.474911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707296, 36.607941, 39.603519>,  <30.679356, 36.382408, 39.680683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707296, 36.607941, 39.603519>,  <30.753864, 36.983829, 39.474911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707296, 36.607941, 39.603519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502288, 0.223568, 0.835299,
		-0.856827, 0.258743, 0.445981,
		-0.116421, -0.939718, 0.321523,
		30.672371, 36.326027, 39.699978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538807, 36.900074, 40.129795>,  <30.753864, 36.983829, 39.474911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538807, 36.900074, 40.129795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790623, 36.598011, 40.056667>,  <30.941711, 36.416775, 40.012791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790623, 36.598011, 40.056667>,  <30.538807, 36.900074, 40.129795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790623, 36.598011, 40.056667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590131, 0.311675, 0.744717,
		-0.505398, -0.576713, 0.641853,
		0.629538, -0.755156, -0.182817,
		30.979485, 36.371464, 40.001823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579922, 36.502316, 40.692142>,  <30.538807, 36.900074, 40.129795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579922, 36.502316, 40.692142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905041, 36.535942, 40.461563>,  <31.100111, 36.556118, 40.323215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905041, 36.535942, 40.461563>,  <30.579922, 36.502316, 40.692142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905041, 36.535942, 40.461563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492186, 0.430246, 0.756731,
		0.311633, -0.898789, 0.308325,
		0.812797, 0.084069, -0.576450,
		31.148880, 36.561165, 40.288628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122099, 36.132069, 41.006516>,  <30.579922, 36.502316, 40.692142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122099, 36.132069, 41.006516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254719, 36.442173, 40.791462>,  <31.334291, 36.628235, 40.662430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254719, 36.442173, 40.791462>,  <31.122099, 36.132069, 41.006516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254719, 36.442173, 40.791462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597748, 0.268268, 0.755466,
		0.729912, -0.571844, -0.374465,
		0.331551, 0.775259, -0.537631,
		31.354185, 36.674751, 40.630173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898972, 36.257553, 41.013126>,  <31.122099, 36.132069, 41.006516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898972, 36.257553, 41.013126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.726667, 36.610878, 40.939152>,  <31.623285, 36.822872, 40.894768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.726667, 36.610878, 40.939152>,  <31.898972, 36.257553, 41.013126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726667, 36.610878, 40.939152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609339, 0.435833, 0.662386,
		0.665696, 0.172642, -0.725977,
		-0.430760, 0.883314, -0.184935,
		31.597439, 36.875874, 40.883671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359207, 36.680786, 40.854733>,  <31.898972, 36.257553, 41.013126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359207, 36.680786, 40.854733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.064884, 36.903126, 41.009453>,  <31.888290, 37.036530, 41.102283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.064884, 36.903126, 41.009453>,  <32.359207, 36.680786, 40.854733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064884, 36.903126, 41.009453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638092, 0.377829, 0.670883,
		0.226768, 0.740455, -0.632694,
		-0.735810, 0.555852, 0.386799,
		31.844141, 37.069881, 41.125492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595680, 37.309879, 40.955467>,  <32.359207, 36.680786, 40.854733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595680, 37.309879, 40.955467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301346, 37.307655, 41.226322>,  <32.124744, 37.306320, 41.388836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301346, 37.307655, 41.226322>,  <32.595680, 37.309879, 40.955467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301346, 37.307655, 41.226322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611691, 0.423501, 0.668192,
		-0.290483, 0.905878, -0.308227,
		-0.735835, -0.005559, 0.677138,
		32.080597, 37.305988, 41.429462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337231, 37.986370, 41.291912>,  <32.595680, 37.309879, 40.955467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337231, 37.986370, 41.291912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.322651, 37.669746, 41.535912>,  <32.313904, 37.479771, 41.682312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.322651, 37.669746, 41.535912>,  <32.337231, 37.986370, 41.291912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322651, 37.669746, 41.535912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618273, 0.461699, 0.636061,
		-0.785118, 0.400331, 0.472573,
		-0.036448, -0.791562, 0.610001,
		32.311718, 37.432278, 41.718910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080818, 38.159786, 41.907200>,  <32.337231, 37.986370, 41.291912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080818, 38.159786, 41.907200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.342064, 37.859047, 41.943356>,  <32.498810, 37.678604, 41.965050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.342064, 37.859047, 41.943356>,  <32.080818, 38.159786, 41.907200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342064, 37.859047, 41.943356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608668, 0.592213, 0.528022,
		-0.450520, -0.289843, 0.844407,
		0.653112, -0.751848, 0.090385,
		32.537998, 37.633492, 41.970470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047707, 37.988792, 42.677044>,  <32.080818, 38.159786, 41.907200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047707, 37.988792, 42.677044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.377430, 37.961922, 42.452190>,  <32.575264, 37.945797, 42.317276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.377430, 37.961922, 42.452190>,  <32.047707, 37.988792, 42.677044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377430, 37.961922, 42.452190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455834, 0.667620, 0.588641,
		0.335750, -0.741464, 0.580949,
		0.824310, -0.067181, -0.562138,
		32.624722, 37.941769, 42.283550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985491, 37.339039, 42.969879>,  <32.047707, 37.988792, 42.677044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985491, 37.339039, 42.969879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346394, 37.170521, 42.933128>,  <32.562935, 37.069408, 42.911079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346394, 37.170521, 42.933128>,  <31.985491, 37.339039, 42.969879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346394, 37.170521, 42.933128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022839, -0.166072, 0.985849,
		-0.430592, -0.891588, -0.140218,
		0.902258, -0.421296, -0.091872,
		32.617069, 37.044132, 42.905567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912340, 36.715740, 43.445770>,  <31.985491, 37.339039, 42.969879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912340, 36.715740, 43.445770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.293545, 36.820091, 43.384171>,  <32.522266, 36.882702, 43.347210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.293545, 36.820091, 43.384171>,  <31.912340, 36.715740, 43.445770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293545, 36.820091, 43.384171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220414, -0.248391, 0.943249,
		0.207821, -0.932869, -0.294220,
		0.953010, 0.260878, -0.153996,
		32.579449, 36.898354, 43.337971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259575, 36.076878, 43.547134>,  <31.912340, 36.715740, 43.445770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259575, 36.076878, 43.547134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483944, 36.405968, 43.583988>,  <32.618565, 36.603420, 43.606102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483944, 36.405968, 43.583988>,  <32.259575, 36.076878, 43.547134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483944, 36.405968, 43.583988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147426, -0.208783, 0.966786,
		0.814635, -0.528710, -0.238402,
		0.560924, 0.822725, 0.092136,
		32.652222, 36.652786, 43.611629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919395, 35.947609, 43.623539>,  <32.259575, 36.076878, 43.547134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919395, 35.947609, 43.623539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864639, 36.303535, 43.797665>,  <32.831787, 36.517090, 43.902138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864639, 36.303535, 43.797665>,  <32.919395, 35.947609, 43.623539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864639, 36.303535, 43.797665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341447, -0.370131, 0.863954,
		0.929879, 0.266901, -0.253157,
		-0.136889, 0.889813, 0.435310,
		32.823574, 36.570480, 43.928257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506599, 36.100040, 44.035053>,  <32.919395, 35.947609, 43.623539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506599, 36.100040, 44.035053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.168262, 36.257679, 44.178856>,  <32.965260, 36.352261, 44.265137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.168262, 36.257679, 44.178856>,  <33.506599, 36.100040, 44.035053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168262, 36.257679, 44.178856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178734, -0.425612, 0.887078,
		0.502604, 0.814582, 0.289561,
		-0.845839, 0.394094, 0.359508,
		32.914513, 36.375908, 44.286709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646645, 36.297852, 44.763248>,  <33.506599, 36.100040, 44.035053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646645, 36.297852, 44.763248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253361, 36.226860, 44.746319>,  <33.017391, 36.184265, 44.736160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253361, 36.226860, 44.746319>,  <33.646645, 36.297852, 44.763248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253361, 36.226860, 44.746319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051435, -0.492180, 0.868972,
		-0.175056, 0.852209, 0.493047,
		-0.983214, -0.177479, -0.042326,
		32.958397, 36.173615, 44.733620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471451, 36.214237, 45.474087>,  <33.646645, 36.297852, 44.763248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471451, 36.214237, 45.474087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180637, 36.036915, 45.264366>,  <33.006149, 35.930523, 45.138535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180637, 36.036915, 45.264366>,  <33.471451, 36.214237, 45.474087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180637, 36.036915, 45.264366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237371, -0.554256, 0.797782,
		-0.644260, 0.704473, 0.297738,
		-0.727038, -0.443304, -0.524306,
		32.962524, 35.903923, 45.107075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763878, 36.262627, 46.140831>,  <33.471451, 36.214237, 45.474087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763878, 36.262627, 46.140831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993973, 36.367325, 46.450825>,  <34.132030, 36.430141, 46.636822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993973, 36.367325, 46.450825>,  <33.763878, 36.262627, 46.140831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993973, 36.367325, 46.450825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807178, 0.028103, 0.589639,
		0.132553, -0.964729, 0.227437,
		0.575234, 0.261741, 0.774982,
		34.166542, 36.445847, 46.683319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852161, 35.847462, 46.837360>,  <33.763878, 36.262627, 46.140831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852161, 35.847462, 46.837360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894047, 36.237701, 46.914562>,  <33.919178, 36.471844, 46.960884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894047, 36.237701, 46.914562>,  <33.852161, 35.847462, 46.837360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894047, 36.237701, 46.914562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763092, -0.045635, 0.644677,
		0.637751, -0.214782, 0.739690,
		0.104709, 0.975595, 0.193003,
		33.925461, 36.530380, 46.972462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970322, 35.936535, 47.632210>,  <33.852161, 35.847462, 46.837360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970322, 35.936535, 47.632210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795895, 36.236217, 47.432800>,  <33.691238, 36.416027, 47.313156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795895, 36.236217, 47.432800>,  <33.970322, 35.936535, 47.632210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795895, 36.236217, 47.432800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831068, -0.122767, 0.542452,
		0.345209, 0.650855, 0.676180,
		-0.436070, 0.749210, -0.498524,
		33.665073, 36.460979, 47.283241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378113, 36.116261, 47.992954>,  <33.970322, 35.936535, 47.632210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378113, 36.116261, 47.992954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364681, 35.900581, 48.329556>,  <33.356621, 35.771172, 48.531517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364681, 35.900581, 48.329556>,  <33.378113, 36.116261, 47.992954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364681, 35.900581, 48.329556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958755, -0.255159, -0.125232,
		0.282243, 0.802594, 0.525530,
		-0.033583, -0.539200, 0.841508,
		33.354607, 35.738823, 48.582008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961536, 36.471661, 48.409382>,  <33.378113, 36.116261, 47.992954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961536, 36.471661, 48.409382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886349, 36.094231, 48.518448>,  <33.841236, 35.867775, 48.583885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886349, 36.094231, 48.518448>,  <33.961536, 36.471661, 48.409382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886349, 36.094231, 48.518448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932784, -0.258423, -0.251262,
		0.307545, 0.207105, 0.928722,
		-0.187965, -0.943570, 0.272661,
		33.829960, 35.811161, 48.600246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498020, 36.285702, 48.761410>,  <33.961536, 36.471661, 48.409382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498020, 36.285702, 48.761410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348423, 35.929386, 48.658169>,  <34.258667, 35.715595, 48.596222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348423, 35.929386, 48.658169>,  <34.498020, 36.285702, 48.761410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348423, 35.929386, 48.658169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899731, -0.280977, -0.333969,
		0.224976, -0.357128, 0.906557,
		-0.373991, -0.890793, -0.258106,
		34.236225, 35.662148, 48.580738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939201, 35.714031, 49.017925>,  <34.498020, 36.285702, 48.761410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939201, 35.714031, 49.017925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.752247, 35.506615, 48.731525>,  <34.640072, 35.382164, 48.559685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.752247, 35.506615, 48.731525>,  <34.939201, 35.714031, 49.017925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752247, 35.506615, 48.731525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880807, -0.342463, -0.326952,
		-0.075665, -0.783473, 0.616802,
		-0.467390, -0.518545, -0.716001,
		34.612030, 35.351051, 48.516724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057106, 34.936756, 49.042519>,  <34.939201, 35.714031, 49.017925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057106, 34.936756, 49.042519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002960, 35.061073, 48.666203>,  <34.970470, 35.135662, 48.440414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002960, 35.061073, 48.666203>,  <35.057106, 34.936756, 49.042519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002960, 35.061073, 48.666203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926782, -0.296047, -0.231152,
		-0.350359, -0.903196, -0.247964,
		-0.135367, 0.310795, -0.940788,
		34.962349, 35.154312, 48.383965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355556, 34.408150, 48.616047>,  <35.057106, 34.936756, 49.042519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355556, 34.408150, 48.616047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322586, 34.714516, 48.360989>,  <35.302803, 34.898335, 48.207954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322586, 34.714516, 48.360989>,  <35.355556, 34.408150, 48.616047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322586, 34.714516, 48.360989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791872, -0.338140, -0.508528,
		-0.605099, -0.546847, -0.578631,
		-0.082429, 0.765911, -0.637641,
		35.297859, 34.944290, 48.169697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528942, 34.123699, 47.959938>,  <35.355556, 34.408150, 48.616047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528942, 34.123699, 47.959938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542076, 34.521072, 47.916096>,  <35.549957, 34.759495, 47.889790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542076, 34.521072, 47.916096>,  <35.528942, 34.123699, 47.959938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542076, 34.521072, 47.916096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829316, -0.088285, -0.551761,
		-0.557814, -0.072782, -0.826769,
		0.032833, 0.993433, -0.109606,
		35.551926, 34.819103, 47.883213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618824, 34.176571, 47.191338>,  <35.528942, 34.123699, 47.959938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618824, 34.176571, 47.191338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754921, 34.502064, 47.379841>,  <35.836578, 34.697357, 47.492943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754921, 34.502064, 47.379841>,  <35.618824, 34.176571, 47.191338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754921, 34.502064, 47.379841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895939, -0.128358, -0.425226,
		-0.285529, 0.566897, -0.772723,
		0.340245, 0.813727, 0.471255,
		35.856995, 34.746181, 47.521217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757339, 34.607037, 46.697495>,  <35.618824, 34.176571, 47.191338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757339, 34.607037, 46.697495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967785, 34.714649, 47.020191>,  <36.094051, 34.779217, 47.213810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967785, 34.714649, 47.020191>,  <35.757339, 34.607037, 46.697495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967785, 34.714649, 47.020191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843834, -0.047373, -0.534509,
		-0.105584, 0.961965, -0.251943,
		0.526114, 0.269034, 0.806737,
		36.125618, 34.795361, 47.262211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200043, 35.112053, 46.392906>,  <35.757339, 34.607037, 46.697495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200043, 35.112053, 46.392906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356419, 35.025833, 46.750835>,  <36.450245, 34.974102, 46.965591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356419, 35.025833, 46.750835>,  <36.200043, 35.112053, 46.392906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356419, 35.025833, 46.750835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918131, 0.022843, -0.395617,
		0.064833, 0.976227, 0.206829,
		0.390936, -0.215545, 0.894823,
		36.473698, 34.961170, 47.019283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902920, 35.524384, 46.359913>,  <36.200043, 35.112053, 46.392906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902920, 35.524384, 46.359913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929695, 35.261799, 46.660465>,  <36.945759, 35.104248, 46.840797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929695, 35.261799, 46.660465>,  <36.902920, 35.524384, 46.359913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929695, 35.261799, 46.660465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893629, -0.295509, -0.337789,
		0.443786, 0.694068, 0.566854,
		0.066938, -0.656463, 0.751382,
		36.949776, 35.064861, 46.885880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467213, 35.764469, 46.750984>,  <36.902920, 35.524384, 46.359913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467213, 35.764469, 46.750984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.413513, 35.378700, 46.842072>,  <37.381294, 35.147240, 46.896725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.413513, 35.378700, 46.842072>,  <37.467213, 35.764469, 46.750984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413513, 35.378700, 46.842072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932194, -0.200864, -0.301111,
		0.336141, 0.171856, 0.925999,
		-0.134252, -0.964427, 0.227722,
		37.373238, 35.089371, 46.910389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957317, 35.496742, 47.310646>,  <37.467213, 35.764469, 46.750984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957317, 35.496742, 47.310646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846241, 35.177376, 47.096951>,  <37.779594, 34.985756, 46.968731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846241, 35.177376, 47.096951>,  <37.957317, 35.496742, 47.310646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846241, 35.177376, 47.096951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934497, -0.353428, 0.042459,
		-0.222716, -0.487456, 0.844266,
		-0.277691, -0.798421, -0.534240,
		37.762936, 34.937851, 46.936680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749065, 35.253159, 47.262222>,  <37.957317, 35.496742, 47.310646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749065, 35.253159, 47.262222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692940, 35.309814, 47.654190>,  <38.659264, 35.343807, 47.889370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692940, 35.309814, 47.654190>,  <38.749065, 35.253159, 47.262222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692940, 35.309814, 47.654190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049796, 0.987453, -0.149859,
		-0.988855, -0.069823, -0.131497,
		-0.140311, 0.141641, 0.979924,
		38.650848, 35.352306, 47.948166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645222, 34.816456, 46.540829>,  <38.749065, 35.253159, 47.262222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645222, 34.816456, 46.540829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995792, 34.980015, 46.439098>,  <39.206135, 35.078152, 46.378059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995792, 34.980015, 46.439098>,  <38.645222, 34.816456, 46.540829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995792, 34.980015, 46.439098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307599, -0.069050, 0.949007,
		0.370487, -0.909964, -0.186294,
		0.876426, 0.408899, -0.254322,
		39.258720, 35.102684, 46.362801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958992, 34.410000, 46.831425>,  <38.645222, 34.816456, 46.540829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958992, 34.410000, 46.831425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.179749, 34.740643, 46.787342>,  <39.312202, 34.939026, 46.760895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.179749, 34.740643, 46.787342>,  <38.958992, 34.410000, 46.831425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179749, 34.740643, 46.787342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201789, -0.004149, 0.979420,
		0.809136, -0.562768, -0.169090,
		0.551888, 0.826604, -0.110203,
		39.345314, 34.988625, 46.754280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211712, 33.760803, 47.298054>,  <38.958992, 34.410000, 46.831425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211712, 33.760803, 47.298054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447712, 33.684486, 47.611866>,  <39.589314, 33.638695, 47.800156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447712, 33.684486, 47.611866>,  <39.211712, 33.760803, 47.298054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447712, 33.684486, 47.611866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670639, -0.656883, 0.344599,
		0.449600, -0.729454, -0.515516,
		0.590003, -0.190793, 0.784535,
		39.624714, 33.627247, 47.847225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073273, 32.991409, 47.434513>,  <39.211712, 33.760803, 47.298054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073273, 32.991409, 47.434513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192524, 33.177994, 47.767628>,  <39.264076, 33.289944, 47.967495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192524, 33.177994, 47.767628>,  <39.073273, 32.991409, 47.434513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192524, 33.177994, 47.767628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613044, -0.575167, 0.541627,
		0.731640, -0.672008, 0.114490,
		0.298127, 0.466464, 0.832785,
		39.281963, 33.317932, 48.017464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173065, 32.367458, 47.895756>,  <39.073273, 32.991409, 47.434513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173065, 32.367458, 47.895756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110069, 32.714344, 48.084705>,  <39.072273, 32.922474, 48.198074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110069, 32.714344, 48.084705>,  <39.173065, 32.367458, 47.895756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110069, 32.714344, 48.084705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606170, -0.462519, 0.647020,
		0.779587, -0.184439, 0.598521,
		-0.157491, 0.867213, 0.472375,
		39.062820, 32.974506, 48.226418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348347, 32.240173, 48.564816>,  <39.173065, 32.367458, 47.895756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348347, 32.240173, 48.564816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096584, 32.551003, 48.566048>,  <38.945526, 32.737499, 48.566788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096584, 32.551003, 48.566048>,  <39.348347, 32.240173, 48.564816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096584, 32.551003, 48.566048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473650, -0.386777, 0.791239,
		0.616039, 0.496554, 0.611499,
		-0.629407, 0.777070, 0.003077,
		38.907761, 32.784122, 48.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417328, 32.464287, 49.240593>,  <39.348347, 32.240173, 48.564816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417328, 32.464287, 49.240593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059109, 32.602551, 49.128513>,  <38.844177, 32.685509, 49.061268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059109, 32.602551, 49.128513>,  <39.417328, 32.464287, 49.240593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059109, 32.602551, 49.128513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359389, -0.190614, 0.913513,
		0.262354, 0.918796, 0.294930,
		-0.895550, 0.345658, -0.280197,
		38.790443, 32.706249, 49.044453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197044, 32.858673, 49.837166>,  <39.417328, 32.464287, 49.240593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197044, 32.858673, 49.837166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866547, 32.793896, 49.621357>,  <38.668247, 32.755028, 49.491871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866547, 32.793896, 49.621357>,  <39.197044, 32.858673, 49.837166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866547, 32.793896, 49.621357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500891, -0.226991, 0.835214,
		-0.257726, 0.960338, 0.106434,
		-0.826248, -0.161944, -0.539526,
		38.618671, 32.745312, 49.459499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693695, 33.294529, 50.090908>,  <39.197044, 32.858673, 49.837166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693695, 33.294529, 50.090908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459534, 33.018600, 49.920517>,  <38.319038, 32.853043, 49.818283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459534, 33.018600, 49.920517>,  <38.693695, 33.294529, 50.090908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459534, 33.018600, 49.920517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543644, -0.055797, 0.837459,
		-0.601463, 0.721829, -0.342352,
		-0.585400, -0.689819, -0.425977,
		38.283913, 32.811653, 49.792725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081226, 33.490685, 50.291283>,  <38.693695, 33.294529, 50.090908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081226, 33.490685, 50.291283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016747, 33.110069, 50.186520>,  <37.978058, 32.881702, 50.123661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016747, 33.110069, 50.186520>,  <38.081226, 33.490685, 50.291283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016747, 33.110069, 50.186520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695191, -0.078883, 0.714484,
		-0.700517, 0.297249, -0.648783,
		-0.161202, -0.951536, -0.261904,
		37.968388, 32.824608, 50.107948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328129, 33.408268, 50.170452>,  <38.081226, 33.490685, 50.291283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328129, 33.408268, 50.170452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478523, 33.043232, 50.234711>,  <37.568760, 32.824211, 50.273266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478523, 33.043232, 50.234711>,  <37.328129, 33.408268, 50.170452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478523, 33.043232, 50.234711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648976, -0.135596, 0.748628,
		-0.661410, -0.385731, -0.643233,
		0.375989, -0.912593, 0.160645,
		37.591320, 32.769455, 50.282906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696598, 32.990719, 50.104366>,  <37.328129, 33.408268, 50.170452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696598, 32.990719, 50.104366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975048, 32.788811, 50.308567>,  <37.142117, 32.667664, 50.431087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975048, 32.788811, 50.308567>,  <36.696598, 32.990719, 50.104366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975048, 32.788811, 50.308567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702519, -0.332451, 0.629240,
		-0.147907, -0.796668, -0.586041,
		0.696126, -0.504774, 0.510502,
		37.183887, 32.637379, 50.461720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335114, 32.302879, 50.273926>,  <36.696598, 32.990719, 50.104366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335114, 32.302879, 50.273926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648823, 32.363670, 50.514530>,  <36.837048, 32.400143, 50.658894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648823, 32.363670, 50.514530>,  <36.335114, 32.302879, 50.273926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648823, 32.363670, 50.514530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588626, -0.124074, 0.798827,
		0.196034, -0.980566, -0.007851,
		0.784276, 0.151976, 0.601510,
		36.884106, 32.409264, 50.694984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205475, 31.852289, 50.774120>,  <36.335114, 32.302879, 50.273926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205475, 31.852289, 50.774120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465321, 32.107849, 50.938950>,  <36.621227, 32.261185, 51.037846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465321, 32.107849, 50.938950>,  <36.205475, 31.852289, 50.774120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465321, 32.107849, 50.938950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512602, -0.032201, 0.858022,
		0.561459, -0.768616, 0.306583,
		0.649618, 0.638899, 0.412074,
		36.660206, 32.299519, 51.062572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388424, 31.566257, 51.353737>,  <36.205475, 31.852289, 50.774120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388424, 31.566257, 51.353737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424309, 31.959127, 51.419811>,  <36.445839, 32.194851, 51.459454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424309, 31.959127, 51.419811>,  <36.388424, 31.566257, 51.353737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424309, 31.959127, 51.419811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426723, -0.111951, 0.897426,
		0.899921, -0.151001, 0.409073,
		0.089717, 0.982174, 0.165182,
		36.451225, 32.253780, 51.469364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603146, 31.680956, 51.993359>,  <36.388424, 31.566257, 51.353737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603146, 31.680956, 51.993359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464951, 32.048817, 51.918652>,  <36.382034, 32.269531, 51.873825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464951, 32.048817, 51.918652>,  <36.603146, 31.680956, 51.993359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464951, 32.048817, 51.918652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430340, 0.021603, 0.902408,
		0.833936, 0.392141, 0.388300,
		-0.345483, 0.919651, -0.186770,
		36.361305, 32.324711, 51.862621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566185, 31.975510, 52.676804>,  <36.603146, 31.680956, 51.993359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566185, 31.975510, 52.676804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334156, 32.210285, 52.450874>,  <36.194939, 32.351151, 52.315315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334156, 32.210285, 52.450874>,  <36.566185, 31.975510, 52.676804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334156, 32.210285, 52.450874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650886, 0.082930, 0.754633,
		0.489763, 0.805374, 0.333924,
		-0.580069, 0.586937, -0.564823,
		36.160133, 32.386368, 52.281429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339973, 32.540539, 53.183823>,  <36.566185, 31.975510, 52.676804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339973, 32.540539, 53.183823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094200, 32.551136, 52.868416>,  <35.946735, 32.557495, 52.679173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094200, 32.551136, 52.868416>,  <36.339973, 32.540539, 53.183823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094200, 32.551136, 52.868416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761027, 0.243707, 0.601203,
		0.208098, 0.969487, -0.129578,
		-0.614438, 0.026497, -0.788520,
		35.909870, 32.559086, 52.631859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933727, 33.138031, 53.310360>,  <36.339973, 32.540539, 53.183823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933727, 33.138031, 53.310360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689922, 32.938805, 53.063644>,  <35.543640, 32.819271, 52.915615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689922, 32.938805, 53.063644>,  <35.933727, 33.138031, 53.310360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689922, 32.938805, 53.063644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792737, 0.375321, 0.480315,
		-0.007733, 0.781709, -0.623595,
		-0.609515, -0.498061, -0.616787,
		35.507069, 32.789387, 52.878609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521370, 33.655445, 53.089207>,  <35.933727, 33.138031, 53.310360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521370, 33.655445, 53.089207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325115, 33.309544, 53.046337>,  <35.207363, 33.102005, 53.020615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325115, 33.309544, 53.046337>,  <35.521370, 33.655445, 53.089207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325115, 33.309544, 53.046337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780968, 0.381840, 0.494255,
		-0.386483, 0.326198, -0.862685,
		-0.490633, -0.864750, -0.107176,
		35.177925, 33.050117, 53.014183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818825, 33.831379, 52.911125>,  <35.521370, 33.655445, 53.089207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818825, 33.831379, 52.911125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817299, 33.461052, 53.062305>,  <34.816383, 33.238857, 53.153011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817299, 33.461052, 53.062305>,  <34.818825, 33.831379, 52.911125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817299, 33.461052, 53.062305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863443, 0.193700, 0.465775,
		-0.504432, -0.324561, -0.800130,
		-0.003813, -0.925819, 0.377948,
		34.816154, 33.183308, 53.175690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157108, 33.740894, 52.936729>,  <34.818825, 33.831379, 52.911125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157108, 33.740894, 52.936729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261753, 33.424530, 53.158009>,  <34.324539, 33.234711, 53.290775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261753, 33.424530, 53.158009>,  <34.157108, 33.740894, 52.936729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261753, 33.424530, 53.158009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657784, 0.273332, 0.701862,
		-0.706314, -0.547498, -0.448740,
		0.261613, -0.790908, 0.553193,
		34.340237, 33.187256, 53.323967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560532, 33.382793, 53.133503>,  <34.157108, 33.740894, 52.936729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560532, 33.382793, 53.133503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.822960, 33.273331, 53.414837>,  <33.980419, 33.207653, 53.583637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.822960, 33.273331, 53.414837>,  <33.560532, 33.382793, 53.133503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822960, 33.273331, 53.414837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658028, 0.248918, 0.710661,
		-0.369550, -0.929060, -0.016765,
		0.656073, -0.273656, 0.703335,
		34.019783, 33.191235, 53.625839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221474, 32.949123, 53.659359>,  <33.560532, 33.382793, 53.133503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221474, 32.949123, 53.659359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545750, 33.096886, 53.841053>,  <33.740314, 33.185543, 53.950069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545750, 33.096886, 53.841053>,  <33.221474, 32.949123, 53.659359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545750, 33.096886, 53.841053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563037, 0.279139, 0.777863,
		0.160552, -0.886353, 0.434283,
		0.810686, 0.369405, 0.454234,
		33.788956, 33.207706, 53.977322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179600, 32.732433, 54.329285>,  <33.221474, 32.949123, 53.659359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179600, 32.732433, 54.329285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456928, 33.020683, 54.329533>,  <33.623325, 33.193634, 54.329681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456928, 33.020683, 54.329533>,  <33.179600, 32.732433, 54.329285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456928, 33.020683, 54.329533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324570, 0.311508, 0.893094,
		0.643393, -0.619405, 0.449870,
		0.693325, 0.720625, 0.000618,
		33.664925, 33.236870, 54.329720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299007, 32.855553, 55.039356>,  <33.179600, 32.732433, 54.329285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299007, 32.855553, 55.039356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475994, 33.180450, 54.887314>,  <33.582184, 33.375389, 54.796089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475994, 33.180450, 54.887314>,  <33.299007, 32.855553, 55.039356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475994, 33.180450, 54.887314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231355, 0.512898, 0.826687,
		0.866430, -0.277839, 0.414856,
		0.442464, 0.812244, -0.380111,
		33.608734, 33.424122, 54.773281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918346, 33.065639, 55.469185>,  <33.299007, 32.855553, 55.039356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918346, 33.065639, 55.469185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799667, 33.392216, 55.271034>,  <33.728462, 33.588161, 55.152142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799667, 33.392216, 55.271034>,  <33.918346, 33.065639, 55.469185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799667, 33.392216, 55.271034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190927, 0.457550, 0.868444,
		0.935692, 0.352244, 0.020128,
		-0.296695, 0.816439, -0.495379,
		33.710659, 33.637146, 55.122421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319950, 33.624485, 55.727646>,  <33.918346, 33.065639, 55.469185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319950, 33.624485, 55.727646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984085, 33.768585, 55.565071>,  <33.782566, 33.855045, 55.467525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984085, 33.768585, 55.565071>,  <34.319950, 33.624485, 55.727646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984085, 33.768585, 55.565071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077429, 0.661301, 0.746113,
		0.537562, 0.657952, -0.527376,
		-0.839662, 0.360248, -0.406435,
		33.732185, 33.876659, 55.443142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368076, 34.283340, 56.019234>,  <34.319950, 33.624485, 55.727646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368076, 34.283340, 56.019234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.992592, 34.215134, 55.899403>,  <33.767300, 34.174210, 55.827503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.992592, 34.215134, 55.899403>,  <34.368076, 34.283340, 56.019234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992592, 34.215134, 55.899403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344415, 0.499452, 0.794938,
		0.014076, 0.849396, -0.527568,
		-0.938712, -0.170513, -0.299575,
		33.710979, 34.163979, 55.809528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020134, 34.910866, 56.145203>,  <34.368076, 34.283340, 56.019234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020134, 34.910866, 56.145203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722267, 34.643963, 56.138958>,  <33.543549, 34.483822, 56.135212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722267, 34.643963, 56.138958>,  <34.020134, 34.910866, 56.145203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722267, 34.643963, 56.138958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484609, 0.524449, 0.700077,
		-0.458943, 0.528888, -0.713897,
		-0.744664, -0.667256, -0.015612,
		33.498867, 34.443787, 56.134274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427647, 35.253639, 56.145618>,  <34.020134, 34.910866, 56.145203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427647, 35.253639, 56.145618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308205, 34.896461, 56.280365>,  <33.236538, 34.682156, 56.361214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308205, 34.896461, 56.280365>,  <33.427647, 35.253639, 56.145618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308205, 34.896461, 56.280365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515070, 0.447940, 0.730789,
		-0.803452, 0.044709, -0.593688,
		-0.298609, -0.892945, 0.336870,
		33.218620, 34.628578, 56.381428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902199, 35.452579, 56.542145>,  <33.427647, 35.253639, 56.145618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902199, 35.452579, 56.542145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952721, 35.073536, 56.659508>,  <32.983032, 34.846111, 56.729927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952721, 35.073536, 56.659508>,  <32.902199, 35.452579, 56.542145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952721, 35.073536, 56.659508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484923, 0.199052, 0.851603,
		-0.865388, -0.249842, -0.434375,
		0.126303, -0.947606, 0.293412,
		32.990612, 34.789253, 56.747532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146767, 35.213390, 56.951912>,  <32.902199, 35.452579, 56.542145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146767, 35.213390, 56.951912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.412933, 34.947639, 57.088039>,  <32.572636, 34.788189, 57.169716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.412933, 34.947639, 57.088039>,  <32.146767, 35.213390, 56.951912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412933, 34.947639, 57.088039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475805, -0.026214, 0.879160,
		-0.575175, -0.746935, -0.333559,
		0.665420, -0.664380, 0.340318,
		32.612560, 34.748325, 57.190136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783300, 34.682648, 57.117596>,  <32.146767, 35.213390, 56.951912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783300, 34.682648, 57.117596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125076, 34.674740, 57.325264>,  <32.330143, 34.669994, 57.449863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125076, 34.674740, 57.325264>,  <31.783300, 34.682648, 57.117596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125076, 34.674740, 57.325264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518555, 0.029278, 0.854543,
		-0.032102, -0.999376, 0.014761,
		0.854441, -0.019778, 0.519172,
		32.381409, 34.668808, 57.481014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707661, 34.154858, 57.604069>,  <31.783300, 34.682648, 57.117596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707661, 34.154858, 57.604069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999310, 34.374332, 57.767689>,  <32.174297, 34.506020, 57.865860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999310, 34.374332, 57.767689>,  <31.707661, 34.154858, 57.604069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999310, 34.374332, 57.767689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480118, -0.015842, 0.877061,
		0.487715, -0.835875, 0.251885,
		0.729123, 0.548691, 0.409045,
		32.218048, 34.538940, 57.890404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835028, 33.855705, 58.229092>,  <31.707661, 34.154858, 57.604069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835028, 33.855705, 58.229092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.019611, 34.208862, 58.263878>,  <32.130360, 34.420757, 58.284752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.019611, 34.208862, 58.263878>,  <31.835028, 33.855705, 58.229092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019611, 34.208862, 58.263878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401040, 0.120155, 0.908146,
		0.791343, -0.453949, 0.409520,
		0.461458, 0.882889, 0.086967,
		32.158051, 34.473728, 58.289967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282604, 33.835339, 58.834152>,  <31.835028, 33.855705, 58.229092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282604, 33.835339, 58.834152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186394, 34.217121, 58.763538>,  <32.128666, 34.446190, 58.721172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186394, 34.217121, 58.763538>,  <32.282604, 33.835339, 58.834152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186394, 34.217121, 58.763538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428661, 0.058720, 0.901555,
		0.870859, 0.292523, 0.395013,
		-0.240531, 0.954454, -0.176530,
		32.114235, 34.503456, 58.710579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398746, 34.184521, 59.477829>,  <32.282604, 33.835339, 58.834152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398746, 34.184521, 59.477829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195049, 34.473030, 59.290028>,  <32.072830, 34.646137, 59.177345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195049, 34.473030, 59.290028>,  <32.398746, 34.184521, 59.477829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195049, 34.473030, 59.290028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489681, 0.205790, 0.847268,
		0.707732, 0.661373, 0.248398,
		-0.509242, 0.721275, -0.469505,
		32.042278, 34.689411, 59.149178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108295, 34.521244, 60.051350>,  <32.398746, 34.184521, 59.477829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108295, 34.521244, 60.051350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919046, 34.701504, 59.748543>,  <31.805498, 34.809658, 59.566860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919046, 34.701504, 59.748543>,  <32.108295, 34.521244, 60.051350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919046, 34.701504, 59.748543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605982, 0.457251, 0.650928,
		0.639486, 0.766705, 0.056750,
		-0.473121, 0.450649, -0.757015,
		31.777111, 34.836697, 59.521439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017601, 35.242687, 60.250500>,  <32.108295, 34.521244, 60.051350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017601, 35.242687, 60.250500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739256, 35.128788, 59.986774>,  <31.572250, 35.060448, 59.828537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739256, 35.128788, 59.986774>,  <32.017601, 35.242687, 60.250500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739256, 35.128788, 59.986774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716805, 0.332127, 0.613092,
		0.044398, 0.899227, -0.435224,
		-0.695858, -0.284751, -0.659316,
		31.530499, 35.043362, 59.788979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591360, 35.864449, 60.119026>,  <32.017601, 35.242687, 60.250500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591360, 35.864449, 60.119026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.376694, 35.550125, 59.996059>,  <31.247894, 35.361530, 59.922279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.376694, 35.550125, 59.996059>,  <31.591360, 35.864449, 60.119026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376694, 35.550125, 59.996059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823551, 0.408463, 0.393601,
		-0.183727, 0.464402, -0.866358,
		-0.536664, -0.785805, -0.307413,
		31.215694, 35.314384, 59.903835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977697, 36.124611, 59.793312>,  <31.591360, 35.864449, 60.119026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977697, 36.124611, 59.793312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859467, 35.752552, 59.880447>,  <30.788528, 35.529316, 59.932728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859467, 35.752552, 59.880447>,  <30.977697, 36.124611, 59.793312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859467, 35.752552, 59.880447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803149, 0.365423, 0.470552,
		-0.517287, -0.035872, -0.855060,
		-0.295579, -0.930151, 0.217839,
		30.770794, 35.473507, 59.945801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340204, 36.144669, 59.539261>,  <30.977697, 36.124611, 59.793312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340204, 36.144669, 59.539261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.343975, 35.848907, 59.808540>,  <30.346237, 35.671452, 59.970108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.343975, 35.848907, 59.808540>,  <30.340204, 36.144669, 59.539261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343975, 35.848907, 59.808540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753525, 0.437311, 0.490876,
		-0.657351, -0.511897, -0.553037,
		0.009429, -0.739406, 0.673194,
		30.346804, 35.627087, 60.010498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709225, 36.086308, 59.723484>,  <30.340204, 36.144669, 59.539261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709225, 36.086308, 59.723484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.877903, 35.880394, 60.022060>,  <29.979109, 35.756844, 60.201206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.877903, 35.880394, 60.022060>,  <29.709225, 36.086308, 59.723484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877903, 35.880394, 60.022060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656632, 0.394332, 0.642913,
		-0.625308, -0.761247, -0.171739,
		0.421693, -0.514788, 0.746437,
		30.004412, 35.725956, 60.245991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140936, 35.815941, 60.098900>,  <29.709225, 36.086308, 59.723484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140936, 35.815941, 60.098900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.461536, 35.820866, 60.338047>,  <29.653896, 35.823822, 60.481533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.461536, 35.820866, 60.338047>,  <29.140936, 35.815941, 60.098900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461536, 35.820866, 60.338047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490865, 0.584563, 0.646016,
		-0.341535, -0.811255, 0.474574,
		0.801502, 0.012315, 0.597865,
		29.701986, 35.824558, 60.517406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881258, 35.727951, 60.755211>,  <29.140936, 35.815941, 60.098900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881258, 35.727951, 60.755211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228397, 35.920204, 60.805542>,  <29.436680, 36.035557, 60.835743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228397, 35.920204, 60.805542>,  <28.881258, 35.727951, 60.755211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228397, 35.920204, 60.805542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454789, 0.666539, 0.590671,
		0.200024, -0.569839, 0.797041,
		0.867846, 0.480634, 0.125833,
		29.488750, 36.064396, 60.843292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951242, 35.753830, 61.563000>,  <28.881258, 35.727951, 60.755211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951242, 35.753830, 61.563000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.161798, 36.042866, 61.383762>,  <29.288132, 36.216286, 61.276222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.161798, 36.042866, 61.383762>,  <28.951242, 35.753830, 61.563000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161798, 36.042866, 61.383762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478885, 0.687434, 0.545988,
		0.702552, -0.072823, 0.707896,
		0.526392, 0.722586, -0.448085,
		29.319715, 36.259644, 61.249336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355568, 36.187347, 62.019764>,  <28.951242, 35.753830, 61.563000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355568, 36.187347, 62.019764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.210512, 36.377594, 61.699196>,  <29.123478, 36.491741, 61.506855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.210512, 36.377594, 61.699196>,  <29.355568, 36.187347, 62.019764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210512, 36.377594, 61.699196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538920, 0.594558, 0.596713,
		0.760301, 0.648294, 0.040711,
		-0.362640, 0.475621, -0.801422,
		29.101721, 36.520279, 61.458771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168348, 36.861275, 62.336811>,  <29.355568, 36.187347, 62.019764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168348, 36.861275, 62.336811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.978107, 36.872627, 61.985130>,  <28.863962, 36.879436, 61.774120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.978107, 36.872627, 61.985130>,  <29.168348, 36.861275, 62.336811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978107, 36.872627, 61.985130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664188, 0.643741, 0.380068,
		0.576764, 0.764717, -0.287317,
		-0.475602, 0.028377, -0.879202,
		28.835426, 36.881142, 61.721371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411572, 36.754032, 62.130928>,  <29.168348, 36.861275, 62.336811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411572, 36.754032, 62.130928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.212448, 36.645706, 62.460495>,  <28.092974, 36.580711, 62.658237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.212448, 36.645706, 62.460495>,  <28.411572, 36.754032, 62.130928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212448, 36.645706, 62.460495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485405, -0.874269, 0.005918,
		0.718726, 0.402881, 0.566674,
		-0.497810, -0.270813, 0.823921,
		28.063105, 36.564461, 62.707672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328815, 37.355766, 62.630531>,  <28.411572, 36.754032, 62.130928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328815, 37.355766, 62.630531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.094131, 37.525246, 62.906574>,  <27.953321, 37.626934, 63.072201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.094131, 37.525246, 62.906574>,  <28.328815, 37.355766, 62.630531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094131, 37.525246, 62.906574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805643, 0.219215, 0.550349,
		0.081901, 0.878876, -0.469967,
		-0.586712, 0.423700, 0.690107,
		27.918118, 37.652355, 63.113605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550262, 38.143707, 62.647148>,  <28.328815, 37.355766, 62.630531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550262, 38.143707, 62.647148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.430473, 37.954826, 62.978771>,  <28.358601, 37.841496, 63.177746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.430473, 37.954826, 62.978771>,  <28.550262, 38.143707, 62.647148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430473, 37.954826, 62.978771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828496, 0.302251, 0.471421,
		-0.473192, 0.828049, 0.300706,
		-0.299471, -0.472206, 0.829059,
		28.340631, 37.813164, 63.227489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984781, 38.583553, 62.214085>,  <28.550262, 38.143707, 62.647148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984781, 38.583553, 62.214085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707098, 38.302670, 62.150875>,  <28.540487, 38.134140, 62.112949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707098, 38.302670, 62.150875>,  <28.984781, 38.583553, 62.214085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707098, 38.302670, 62.150875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717446, 0.657435, 0.230329,
		-0.057849, 0.273271, -0.960196,
		-0.694208, -0.702213, -0.158025,
		28.498835, 38.092007, 62.103466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496027, 38.130703, 62.325943>,  <28.984781, 38.583553, 62.214085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496027, 38.130703, 62.325943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670931, 38.427223, 62.529617>,  <29.775873, 38.605137, 62.651821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670931, 38.427223, 62.529617>,  <29.496027, 38.130703, 62.325943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670931, 38.427223, 62.529617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846098, -0.147178, -0.512306,
		-0.304832, 0.654835, -0.691570,
		0.437260, 0.741303, 0.509190,
		29.802109, 38.649612, 62.682373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863363, 38.183285, 61.855572>,  <29.496027, 38.130703, 62.325943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863363, 38.183285, 61.855572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.973270, 38.445549, 62.136887>,  <30.039215, 38.602909, 62.305676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.973270, 38.445549, 62.136887>,  <29.863363, 38.183285, 61.855572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973270, 38.445549, 62.136887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875569, 0.131644, -0.464811,
		-0.397342, 0.743489, -0.537907,
		0.274769, 0.655663, 0.703283,
		30.055700, 38.642246, 62.347870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842594, 38.958946, 61.751953>,  <29.863363, 38.183285, 61.855572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842594, 38.958946, 61.751953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151159, 38.838291, 61.976074>,  <30.336298, 38.765900, 62.110546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151159, 38.838291, 61.976074>,  <29.842594, 38.958946, 61.751953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151159, 38.838291, 61.976074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636034, 0.338478, -0.693465,
		0.019525, 0.891318, 0.452958,
		0.771414, -0.301637, 0.560300,
		30.382584, 38.747799, 62.144165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358423, 39.575630, 61.806942>,  <29.842594, 38.958946, 61.751953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358423, 39.575630, 61.806942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.476734, 39.193813, 61.792206>,  <30.547720, 38.964722, 61.783363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.476734, 39.193813, 61.792206>,  <30.358423, 39.575630, 61.806942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476734, 39.193813, 61.792206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346434, 0.143127, -0.927091,
		0.890224, 0.261450, 0.373021,
		0.295778, -0.954546, -0.036840,
		30.565468, 38.907448, 61.781155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108040, 39.605354, 61.697792>,  <30.358423, 39.575630, 61.806942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108040, 39.605354, 61.697792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957195, 39.256477, 61.573174>,  <30.866688, 39.047150, 61.498402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957195, 39.256477, 61.573174>,  <31.108040, 39.605354, 61.697792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957195, 39.256477, 61.573174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544657, 0.063223, -0.836272,
		0.749089, -0.485055, 0.451206,
		-0.377112, -0.872195, -0.311548,
		30.844061, 38.994820, 61.479710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678339, 39.167988, 61.362511>,  <31.108040, 39.605354, 61.697792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678339, 39.167988, 61.362511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.340651, 39.004524, 61.223782>,  <31.138037, 38.906445, 61.140545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.340651, 39.004524, 61.223782>,  <31.678339, 39.167988, 61.362511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340651, 39.004524, 61.223782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420642, -0.104110, -0.901233,
		0.332191, -0.906729, 0.259793,
		-0.844221, -0.408661, -0.346824,
		31.087383, 38.881927, 61.119736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852112, 38.511967, 61.066692>,  <31.678339, 39.167988, 61.362511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852112, 38.511967, 61.066692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.505377, 38.645226, 60.918312>,  <31.297337, 38.725182, 60.829285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.505377, 38.645226, 60.918312>,  <31.852112, 38.511967, 61.066692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505377, 38.645226, 60.918312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334808, -0.162358, -0.928194,
		-0.369455, -0.928790, 0.029197,
		-0.866837, 0.333151, -0.370951,
		31.245325, 38.745171, 60.807026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653275, 37.935497, 60.653881>,  <31.852112, 38.511967, 61.066692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653275, 37.935497, 60.653881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424973, 38.233910, 60.516666>,  <31.287991, 38.412956, 60.434338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424973, 38.233910, 60.516666>,  <31.653275, 37.935497, 60.653881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424973, 38.233910, 60.516666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259726, -0.232291, -0.937328,
		-0.778961, -0.624080, -0.061183,
		-0.570756, 0.746033, -0.343035,
		31.253746, 38.457718, 60.413757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091438, 37.695312, 60.063244>,  <31.653275, 37.935497, 60.653881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091438, 37.695312, 60.063244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.173428, 38.085510, 60.031250>,  <31.222622, 38.319630, 60.012054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.173428, 38.085510, 60.031250>,  <31.091438, 37.695312, 60.063244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173428, 38.085510, 60.031250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110850, -0.104329, -0.988346,
		-0.972470, 0.193720, -0.129519,
		0.204975, 0.975494, -0.079983,
		31.234921, 38.378159, 60.007256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814722, 37.825184, 59.428398>,  <31.091438, 37.695312, 60.063244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814722, 37.825184, 59.428398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049500, 38.138123, 59.511761>,  <31.190367, 38.325886, 59.561779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049500, 38.138123, 59.511761>,  <30.814722, 37.825184, 59.428398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049500, 38.138123, 59.511761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256968, 0.064088, -0.964293,
		-0.767765, 0.619540, -0.163421,
		0.586945, 0.782344, 0.208407,
		31.225582, 38.372826, 59.574284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822760, 38.209946, 58.849766>,  <30.814722, 37.825184, 59.428398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822760, 38.209946, 58.849766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.151766, 38.344238, 59.033394>,  <31.349171, 38.424812, 59.143570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.151766, 38.344238, 59.033394>,  <30.822760, 38.209946, 58.849766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151766, 38.344238, 59.033394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474284, 0.040567, -0.879437,
		-0.313879, 0.941083, -0.125865,
		0.822518, 0.335732, 0.459074,
		31.398521, 38.444958, 59.171116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115751, 38.788982, 58.475445>,  <30.822760, 38.209946, 58.849766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115751, 38.788982, 58.475445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449013, 38.667084, 58.660046>,  <31.648970, 38.593945, 58.770805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449013, 38.667084, 58.660046>,  <31.115751, 38.788982, 58.475445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449013, 38.667084, 58.660046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513301, 0.115507, -0.850400,
		0.205848, 0.945404, 0.252661,
		0.833156, -0.304744, 0.461500,
		31.698959, 38.575661, 58.798496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663219, 39.289112, 58.376881>,  <31.115751, 38.788982, 58.475445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663219, 39.289112, 58.376881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862169, 38.956120, 58.474529>,  <31.981539, 38.756325, 58.533119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862169, 38.956120, 58.474529>,  <31.663219, 39.289112, 58.376881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862169, 38.956120, 58.474529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562512, 0.095236, -0.821286,
		0.660453, 0.545812, 0.515647,
		0.497376, -0.832478, 0.244126,
		32.011383, 38.706375, 58.547768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261322, 39.424698, 58.219707>,  <31.663219, 39.289112, 58.376881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261322, 39.424698, 58.219707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346809, 39.036098, 58.260746>,  <32.398102, 38.802940, 58.285370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346809, 39.036098, 58.260746>,  <32.261322, 39.424698, 58.219707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346809, 39.036098, 58.260746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566944, 0.037821, -0.822887,
		0.795550, 0.234028, 0.558866,
		0.213716, -0.971494, 0.102592,
		32.410923, 38.744652, 58.291523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004051, 39.231861, 58.335335>,  <32.261322, 39.424698, 58.219707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004051, 39.231861, 58.335335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839882, 38.894943, 58.195568>,  <32.741379, 38.692791, 58.111710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839882, 38.894943, 58.195568>,  <33.004051, 39.231861, 58.335335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839882, 38.894943, 58.195568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796626, -0.144710, -0.586895,
		0.443775, -0.519228, 0.730388,
		-0.410427, -0.842295, -0.349412,
		32.716755, 38.642254, 58.090744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511211, 38.883617, 58.142975>,  <33.004051, 39.231861, 58.335335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511211, 38.883617, 58.142975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236839, 38.663036, 57.953072>,  <33.072216, 38.530685, 57.839130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236839, 38.663036, 57.953072>,  <33.511211, 38.883617, 58.142975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236839, 38.663036, 57.953072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642462, -0.152603, -0.750969,
		0.341677, -0.820127, 0.458965,
		-0.685930, -0.551456, -0.474759,
		33.031059, 38.497601, 57.810642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858437, 38.155266, 57.965832>,  <33.511211, 38.883617, 58.142975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858437, 38.155266, 57.965832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.542294, 38.266117, 57.747280>,  <33.352608, 38.332626, 57.616150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.542294, 38.266117, 57.747280>,  <33.858437, 38.155266, 57.965832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542294, 38.266117, 57.747280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527654, -0.145253, -0.836948,
		-0.311304, -0.949791, -0.031424,
		-0.790362, 0.277126, -0.546379,
		33.305183, 38.349255, 57.583366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793335, 37.697613, 57.432487>,  <33.858437, 38.155266, 57.965832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793335, 37.697613, 57.432487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594341, 37.998878, 57.260319>,  <33.474945, 38.179638, 57.157017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594341, 37.998878, 57.260319>,  <33.793335, 37.697613, 57.432487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594341, 37.998878, 57.260319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550047, -0.109804, -0.827883,
		-0.670792, -0.648607, -0.359649,
		-0.497480, 0.753162, -0.430420,
		33.445099, 38.224827, 57.131191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455101, 37.375462, 56.875195>,  <33.793335, 37.697613, 57.432487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455101, 37.375462, 56.875195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512348, 37.768379, 56.826843>,  <33.546696, 38.004131, 56.797832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512348, 37.768379, 56.826843>,  <33.455101, 37.375462, 56.875195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512348, 37.768379, 56.826843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374654, -0.166816, -0.912035,
		-0.916052, 0.085245, -0.391896,
		0.143121, 0.982296, -0.120874,
		33.555283, 38.063068, 56.790581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228287, 37.427254, 56.263233>,  <33.455101, 37.375462, 56.875195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228287, 37.427254, 56.263233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461872, 37.750946, 56.288944>,  <33.602024, 37.945160, 56.304371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461872, 37.750946, 56.288944>,  <33.228287, 37.427254, 56.263233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461872, 37.750946, 56.288944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357282, -0.185111, -0.915469,
		-0.728926, 0.557568, -0.397221,
		0.583967, 0.809229, 0.064276,
		33.637062, 37.993713, 56.308228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239883, 37.664288, 55.544968>,  <33.228287, 37.427254, 56.263233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239883, 37.664288, 55.544968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.552353, 37.842419, 55.719990>,  <33.739834, 37.949295, 55.825005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.552353, 37.842419, 55.719990>,  <33.239883, 37.664288, 55.544968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552353, 37.842419, 55.719990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584668, -0.276044, -0.762865,
		-0.218937, 0.851755, -0.476005,
		0.781172, 0.445324, 0.437557,
		33.786705, 37.976017, 55.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595219, 38.026268, 55.017536>,  <33.239883, 37.664288, 55.544968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595219, 38.026268, 55.017536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.865318, 38.039162, 55.312290>,  <34.027378, 38.046898, 55.489143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.865318, 38.039162, 55.312290>,  <33.595219, 38.026268, 55.017536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865318, 38.039162, 55.312290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734933, 0.055317, -0.675879,
		-0.062548, 0.997948, 0.013665,
		0.675249, 0.032232, 0.736886,
		34.067894, 38.048832, 55.533356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107552, 38.564682, 54.931084>,  <33.595219, 38.026268, 55.017536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107552, 38.564682, 54.931084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.273872, 38.257183, 55.125462>,  <34.373665, 38.072685, 55.242088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.273872, 38.257183, 55.125462>,  <34.107552, 38.564682, 54.931084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273872, 38.257183, 55.125462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798000, 0.052104, -0.600401,
		0.436235, 0.637431, 0.635123,
		0.415806, -0.768744, 0.485941,
		34.398613, 38.026562, 55.271244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849548, 38.705971, 54.842575>,  <34.107552, 38.564682, 54.931084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849548, 38.705971, 54.842575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845871, 38.332558, 54.985924>,  <34.843662, 38.108509, 55.071934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845871, 38.332558, 54.985924>,  <34.849548, 38.705971, 54.842575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845871, 38.332558, 54.985924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783722, -0.229312, -0.577231,
		0.621044, 0.275556, 0.733740,
		-0.009196, -0.933534, 0.358371,
		34.843113, 38.052498, 55.093433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506516, 38.694458, 55.144470>,  <34.849548, 38.705971, 54.842575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506516, 38.694458, 55.144470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408096, 38.311138, 55.086349>,  <35.349045, 38.081146, 55.051476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408096, 38.311138, 55.086349>,  <35.506516, 38.694458, 55.144470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408096, 38.311138, 55.086349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729076, -0.084206, -0.679233,
		0.638676, -0.273062, 0.719395,
		-0.246051, -0.958304, -0.145303,
		35.334282, 38.023647, 55.042759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180183, 38.287140, 55.150909>,  <35.506516, 38.694458, 55.144470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180183, 38.287140, 55.150909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907482, 38.079700, 54.944500>,  <35.743862, 37.955238, 54.820656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907482, 38.079700, 54.944500>,  <36.180183, 38.287140, 55.150909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907482, 38.079700, 54.944500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678816, -0.185382, -0.710523,
		0.272813, -0.834680, 0.478415,
		-0.681749, -0.518596, -0.516019,
		35.702957, 37.924122, 54.789696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601067, 37.803272, 54.859020>,  <36.180183, 38.287140, 55.150909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601067, 37.803272, 54.859020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259666, 37.739616, 54.660542>,  <36.054825, 37.701424, 54.541454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259666, 37.739616, 54.660542>,  <36.601067, 37.803272, 54.859020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259666, 37.739616, 54.660542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521023, -0.276312, -0.807581,
		-0.008587, -0.947801, 0.318748,
		-0.853500, -0.159140, -0.496198,
		36.003616, 37.691875, 54.511681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478157, 36.976398, 54.639816>,  <36.601067, 37.803272, 54.859020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478157, 36.976398, 54.639816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.260143, 37.210659, 54.399834>,  <36.129333, 37.351215, 54.255844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.260143, 37.210659, 54.399834>,  <36.478157, 36.976398, 54.639816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260143, 37.210659, 54.399834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574090, -0.260815, -0.776142,
		-0.611028, -0.767452, -0.194065,
		-0.545037, 0.585656, -0.599952,
		36.096634, 37.386356, 54.219849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254375, 36.615341, 54.151321>,  <36.478157, 36.976398, 54.639816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254375, 36.615341, 54.151321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251995, 36.985001, 53.998524>,  <36.250568, 37.206795, 53.906845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251995, 36.985001, 53.998524>,  <36.254375, 36.615341, 54.151321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251995, 36.985001, 53.998524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480783, -0.332305, -0.811431,
		-0.876819, -0.188480, -0.442338,
		-0.005948, 0.924147, -0.381990,
		36.250210, 37.262245, 53.883926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074841, 36.486767, 53.464909>,  <36.254375, 36.615341, 54.151321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074841, 36.486767, 53.464909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238686, 36.850586, 53.493027>,  <36.336990, 37.068878, 53.509899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238686, 36.850586, 53.493027>,  <36.074841, 36.486767, 53.464909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238686, 36.850586, 53.493027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389338, -0.104608, -0.915135,
		-0.825006, 0.402218, -0.396970,
		0.409610, 0.909548, 0.070296,
		36.361568, 37.123451, 53.514114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923008, 36.828144, 52.834553>,  <36.074841, 36.486767, 53.464909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923008, 36.828144, 52.834553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236591, 37.015556, 52.997471>,  <36.424740, 37.128002, 53.095222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236591, 37.015556, 52.997471>,  <35.923008, 36.828144, 52.834553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236591, 37.015556, 52.997471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488395, -0.060445, -0.870527,
		-0.383250, 0.881377, -0.276214,
		0.783958, 0.468532, 0.407295,
		36.471779, 37.156116, 53.119659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052673, 37.494572, 52.439976>,  <35.923008, 36.828144, 52.834553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052673, 37.494572, 52.439976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395782, 37.408115, 52.626522>,  <36.601650, 37.356243, 52.738449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395782, 37.408115, 52.626522>,  <36.052673, 37.494572, 52.439976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395782, 37.408115, 52.626522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472829, -0.024096, -0.880824,
		0.201620, 0.976065, 0.081529,
		0.857777, -0.216141, 0.466370,
		36.653114, 37.343273, 52.766434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543495, 37.866924, 52.062775>,  <36.052673, 37.494572, 52.439976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543495, 37.866924, 52.062775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767857, 37.585850, 52.237873>,  <36.902473, 37.417206, 52.342934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767857, 37.585850, 52.237873>,  <36.543495, 37.866924, 52.062775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767857, 37.585850, 52.237873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568140, -0.057885, -0.820894,
		0.602167, 0.709145, 0.366754,
		0.560903, -0.702683, 0.437750,
		36.936127, 37.375046, 52.369198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149719, 37.806835, 51.629410>,  <36.543495, 37.866924, 52.062775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149719, 37.806835, 51.629410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231087, 37.497669, 51.869820>,  <37.279907, 37.312172, 52.014065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231087, 37.497669, 51.869820>,  <37.149719, 37.806835, 51.629410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231087, 37.497669, 51.869820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592883, -0.391276, -0.703842,
		0.779172, 0.499513, 0.378652,
		0.203421, -0.772910, 0.601024,
		37.292114, 37.265797, 52.050125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888031, 37.838299, 51.617565>,  <37.149719, 37.806835, 51.629410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888031, 37.838299, 51.617565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.713318, 37.490311, 51.709110>,  <37.608490, 37.281517, 51.764038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.713318, 37.490311, 51.709110>,  <37.888031, 37.838299, 51.617565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713318, 37.490311, 51.709110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376621, -0.407897, -0.831731,
		0.816932, -0.277088, 0.505810,
		-0.436782, -0.869966, 0.228867,
		37.582283, 37.229321, 51.777771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459053, 37.379204, 51.554310>,  <37.888031, 37.838299, 51.617565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459053, 37.379204, 51.554310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113022, 37.182724, 51.513577>,  <37.905403, 37.064838, 51.489136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113022, 37.182724, 51.513577>,  <38.459053, 37.379204, 51.554310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113022, 37.182724, 51.513577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354565, -0.455102, -0.816802,
		0.354865, -0.742702, 0.567859,
		-0.865075, -0.491198, -0.101837,
		37.853500, 37.035366, 51.483025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611954, 36.680347, 51.382683>,  <38.459053, 37.379204, 51.554310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611954, 36.680347, 51.382683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245544, 36.757133, 51.241802>,  <38.025700, 36.803207, 51.157276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245544, 36.757133, 51.241802>,  <38.611954, 36.680347, 51.382683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245544, 36.757133, 51.241802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277529, -0.330626, -0.902034,
		-0.289603, -0.924033, 0.249587,
		-0.916028, 0.191965, -0.352196,
		37.970737, 36.814724, 51.136143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454178, 36.108837, 51.084167>,  <38.611954, 36.680347, 51.382683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454178, 36.108837, 51.084167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168976, 36.332596, 50.915073>,  <37.997856, 36.466850, 50.813618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168976, 36.332596, 50.915073>,  <38.454178, 36.108837, 51.084167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168976, 36.332596, 50.915073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187687, -0.428638, -0.883766,
		-0.675574, -0.709470, 0.200629,
		-0.713003, 0.559394, -0.422735,
		37.955074, 36.500416, 50.788254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003681, 35.614746, 50.729790>,  <38.454178, 36.108837, 51.084167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003681, 35.614746, 50.729790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951962, 35.976292, 50.566666>,  <37.920929, 36.193218, 50.468792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951962, 35.976292, 50.566666>,  <38.003681, 35.614746, 50.729790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951962, 35.976292, 50.566666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197988, -0.379450, -0.903780,
		-0.971639, -0.197600, -0.129892,
		-0.129300, 0.903865, -0.407811,
		37.913170, 36.247452, 50.444321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754345, 35.481049, 50.085781>,  <38.003681, 35.614746, 50.729790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754345, 35.481049, 50.085781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861851, 35.864449, 50.047733>,  <37.926353, 36.094486, 50.024906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861851, 35.864449, 50.047733>,  <37.754345, 35.481049, 50.085781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861851, 35.864449, 50.047733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253104, -0.165560, -0.953168,
		-0.929356, 0.232107, -0.287096,
		0.268769, 0.958497, -0.095117,
		37.942482, 36.151997, 50.019199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376434, 35.724861, 49.506145>,  <37.754345, 35.481049, 50.085781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376434, 35.724861, 49.506145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681694, 35.979637, 49.549793>,  <37.864849, 36.132504, 49.575981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681694, 35.979637, 49.549793>,  <37.376434, 35.724861, 49.506145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681694, 35.979637, 49.549793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189446, -0.059078, -0.980112,
		-0.617828, 0.768645, -0.165751,
		0.763151, 0.636942, 0.109116,
		37.910641, 36.170719, 49.582527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319195, 36.297710, 48.931828>,  <37.376434, 35.724861, 49.506145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319195, 36.297710, 48.931828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694572, 36.224739, 49.049160>,  <37.919800, 36.180958, 49.119560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694572, 36.224739, 49.049160>,  <37.319195, 36.297710, 48.931828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694572, 36.224739, 49.049160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285809, -0.066859, -0.955951,
		0.194006, 0.980943, -0.010603,
		0.938443, -0.182429, 0.293333,
		37.976105, 36.170010, 49.137161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668423, 36.757423, 48.609077>,  <37.319195, 36.297710, 48.931828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668423, 36.757423, 48.609077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931389, 36.462322, 48.670433>,  <38.089169, 36.285263, 48.707249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931389, 36.462322, 48.670433>,  <37.668423, 36.757423, 48.609077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931389, 36.462322, 48.670433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101218, -0.115261, -0.988165,
		0.746697, 0.665163, -0.001101,
		0.657418, -0.737749, 0.153392,
		38.128613, 36.240997, 48.716450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027782, 37.024231, 48.933189>,  <37.668423, 36.757423, 48.609077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027782, 37.024231, 48.933189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997490, 37.287819, 48.633850>,  <36.979313, 37.445972, 48.454247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997490, 37.287819, 48.633850>,  <37.027782, 37.024231, 48.933189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997490, 37.287819, 48.633850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839121, 0.363302, 0.404831,
		0.538647, 0.658615, 0.525439,
		-0.075734, 0.658968, -0.748348,
		36.974770, 37.485508, 48.409344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360195, 37.387230, 49.113728>,  <37.027782, 37.024231, 48.933189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360195, 37.387230, 49.113728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520794, 37.612450, 48.824791>,  <36.617153, 37.747581, 48.651428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520794, 37.612450, 48.824791>,  <36.360195, 37.387230, 49.113728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520794, 37.612450, 48.824791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697931, 0.698796, 0.156770,
		0.593039, 0.441201, 0.673533,
		0.401495, 0.563050, -0.722341,
		36.641243, 37.781364, 48.608089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535152, 38.045437, 49.423615>,  <36.360195, 37.387230, 49.113728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535152, 38.045437, 49.423615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460506, 38.113533, 49.036587>,  <36.415718, 38.154388, 48.804371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460506, 38.113533, 49.036587>,  <36.535152, 38.045437, 49.423615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460506, 38.113533, 49.036587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757783, 0.601861, 0.252048,
		0.625252, 0.780244, 0.016687,
		-0.186615, 0.170239, -0.967571,
		36.404522, 38.164604, 48.746315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396145, 38.826153, 49.337776>,  <36.535152, 38.045437, 49.423615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396145, 38.826153, 49.337776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235790, 38.626663, 49.030384>,  <36.139580, 38.506969, 48.845947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235790, 38.626663, 49.030384>,  <36.396145, 38.826153, 49.337776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235790, 38.626663, 49.030384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874845, 0.457376, 0.159542,
		0.271918, 0.736261, -0.619661,
		-0.400883, -0.498725, -0.768483,
		36.115524, 38.477047, 48.799839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034695, 39.343666, 48.926025>,  <36.396145, 38.826153, 49.337776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034695, 39.343666, 48.926025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901070, 38.992275, 48.789391>,  <35.820896, 38.781441, 48.707409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901070, 38.992275, 48.789391>,  <36.034695, 39.343666, 48.926025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901070, 38.992275, 48.789391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900606, 0.404405, -0.159269,
		0.278054, 0.254431, -0.926256,
		-0.334060, -0.878477, -0.341588,
		35.800854, 38.728733, 48.686913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620197, 39.465336, 48.229946>,  <36.034695, 39.343666, 48.926025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620197, 39.465336, 48.229946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518421, 39.111973, 48.387352>,  <35.457355, 38.899956, 48.481796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518421, 39.111973, 48.387352>,  <35.620197, 39.465336, 48.229946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518421, 39.111973, 48.387352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964307, 0.262590, -0.034022,
		-0.073278, -0.388128, -0.918688,
		-0.254443, -0.883405, 0.393516,
		35.442089, 38.846951, 48.505405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964230, 39.180607, 47.827427>,  <35.620197, 39.465336, 48.229946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964230, 39.180607, 47.827427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953953, 38.974567, 48.170124>,  <34.947784, 38.850945, 48.375744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953953, 38.974567, 48.170124>,  <34.964230, 39.180607, 47.827427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953953, 38.974567, 48.170124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941795, 0.299849, 0.152030,
		-0.335205, -0.802973, -0.492820,
		-0.025695, -0.515096, 0.856747,
		34.946243, 38.820038, 48.427147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391453, 38.793137, 47.933800>,  <34.964230, 39.180607, 47.827427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391453, 38.793137, 47.933800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.499802, 38.793240, 48.318848>,  <34.564812, 38.793301, 48.549877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.499802, 38.793240, 48.318848>,  <34.391453, 38.793137, 47.933800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499802, 38.793240, 48.318848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961994, -0.035877, 0.270702,
		0.034605, -0.999356, -0.009473,
		0.270868, 0.000255, 0.962616,
		34.581062, 38.793316, 48.607632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027294, 38.279255, 48.346260>,  <34.391453, 38.793137, 47.933800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027294, 38.279255, 48.346260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.128609, 38.550468, 48.622265>,  <34.189400, 38.713196, 48.787868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.128609, 38.550468, 48.622265>,  <34.027294, 38.279255, 48.346260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128609, 38.550468, 48.622265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916291, -0.060604, 0.395900,
		0.310250, -0.732531, 0.605923,
		0.253288, 0.678030, 0.690014,
		34.204594, 38.753876, 48.829269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637997, 37.992180, 49.016216>,  <34.027294, 38.279255, 48.346260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637997, 37.992180, 49.016216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739887, 38.374660, 49.073906>,  <33.801022, 38.604149, 49.108521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739887, 38.374660, 49.073906>,  <33.637997, 37.992180, 49.016216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739887, 38.374660, 49.073906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802881, 0.125999, 0.582672,
		0.538979, -0.264212, 0.799809,
		0.254724, 0.956199, 0.144220,
		33.816303, 38.661522, 49.117172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378796, 38.111721, 49.699486>,  <33.637997, 37.992180, 49.016216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378796, 38.111721, 49.699486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493011, 38.482567, 49.602383>,  <33.561543, 38.705074, 49.544121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493011, 38.482567, 49.602383>,  <33.378796, 38.111721, 49.699486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493011, 38.482567, 49.602383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730424, 0.374516, 0.571155,
		0.620441, 0.014228, 0.784124,
		0.285541, 0.927112, -0.242757,
		33.578674, 38.760700, 49.529556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787800, 38.444321, 50.265583>,  <33.378796, 38.111721, 49.699486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787800, 38.444321, 50.265583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620678, 38.728199, 50.038681>,  <33.520405, 38.898525, 49.902538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620678, 38.728199, 50.038681>,  <33.787800, 38.444321, 50.265583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620678, 38.728199, 50.038681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470359, 0.365214, 0.803356,
		0.777306, 0.602456, 0.181224,
		-0.417801, 0.709694, -0.567254,
		33.495338, 38.941109, 49.868504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918808, 39.136185, 50.612633>,  <33.787800, 38.444321, 50.265583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918808, 39.136185, 50.612633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602131, 39.183311, 50.372852>,  <33.412125, 39.211590, 50.228985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602131, 39.183311, 50.372852>,  <33.918808, 39.136185, 50.612633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602131, 39.183311, 50.372852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539359, 0.326006, 0.776410,
		0.286901, 0.937997, -0.194549,
		-0.791694, 0.117821, -0.599448,
		33.364624, 39.218658, 50.193016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641514, 39.818253, 50.702164>,  <33.918808, 39.136185, 50.612633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641514, 39.818253, 50.702164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.345039, 39.574268, 50.590023>,  <33.167156, 39.427879, 50.522739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.345039, 39.574268, 50.590023>,  <33.641514, 39.818253, 50.702164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345039, 39.574268, 50.590023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572047, 0.355340, 0.739254,
		-0.351292, 0.708299, -0.612296,
		-0.741186, -0.609956, -0.280352,
		33.122684, 39.391281, 50.505917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110966, 40.256462, 50.794468>,  <33.641514, 39.818253, 50.702164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110966, 40.256462, 50.794468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964462, 39.885479, 50.764362>,  <32.876560, 39.662888, 50.746300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964462, 39.885479, 50.764362>,  <33.110966, 40.256462, 50.794468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964462, 39.885479, 50.764362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613393, 0.179827, 0.769033,
		-0.699715, 0.327835, -0.634763,
		-0.366263, -0.927463, -0.075264,
		32.854584, 39.607239, 50.741783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434155, 40.295120, 50.910778>,  <33.110966, 40.256462, 50.794468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434155, 40.295120, 50.910778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480305, 39.904472, 50.983334>,  <32.507996, 39.670082, 51.026867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480305, 39.904472, 50.983334>,  <32.434155, 40.295120, 50.910778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480305, 39.904472, 50.983334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649560, 0.063974, 0.757614,
		-0.751505, -0.205236, -0.626992,
		0.115378, -0.976619, 0.181390,
		32.514919, 39.611488, 51.037750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772799, 40.190842, 51.143578>,  <32.434155, 40.295120, 50.910778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772799, 40.190842, 51.143578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996317, 39.883293, 51.267887>,  <32.130428, 39.698765, 51.342472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996317, 39.883293, 51.267887>,  <31.772799, 40.190842, 51.143578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996317, 39.883293, 51.267887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465888, 0.018966, 0.884640,
		-0.686072, -0.639118, -0.347612,
		0.558796, -0.768875, 0.310770,
		32.163956, 39.652630, 51.361118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331871, 39.798149, 51.522694>,  <31.772799, 40.190842, 51.143578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331871, 39.798149, 51.522694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697216, 39.673080, 51.627007>,  <31.916422, 39.598042, 51.689594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697216, 39.673080, 51.627007>,  <31.331871, 39.798149, 51.522694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697216, 39.673080, 51.627007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287144, -0.040579, 0.957028,
		-0.288652, -0.948995, -0.126845,
		0.913361, -0.312671, 0.260784,
		31.971224, 39.579281, 51.705242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144741, 39.356075, 52.098541>,  <31.331871, 39.798149, 51.522694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144741, 39.356075, 52.098541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.541540, 39.365578, 52.148136>,  <31.779619, 39.371281, 52.177895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.541540, 39.365578, 52.148136>,  <31.144741, 39.356075, 52.098541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541540, 39.365578, 52.148136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121094, -0.098516, 0.987740,
		0.035680, -0.994852, -0.094851,
		0.991999, 0.023756, 0.123986,
		31.839140, 39.372704, 52.185333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337204, 38.812160, 52.566307>,  <31.144741, 39.356075, 52.098541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337204, 38.812160, 52.566307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624779, 39.087872, 52.602139>,  <31.797323, 39.253300, 52.623638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624779, 39.087872, 52.602139>,  <31.337204, 38.812160, 52.566307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624779, 39.087872, 52.602139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109323, -0.015138, 0.993891,
		0.686424, -0.724338, 0.064471,
		0.718937, 0.689278, 0.089578,
		31.840460, 39.294655, 52.629013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837240, 38.560921, 53.159920>,  <31.337204, 38.812160, 52.566307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837240, 38.560921, 53.159920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884281, 38.956055, 53.119221>,  <31.912506, 39.193134, 53.094803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884281, 38.956055, 53.119221>,  <31.837240, 38.560921, 53.159920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884281, 38.956055, 53.119221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017547, 0.100374, 0.994795,
		0.992906, -0.118776, -0.005529,
		0.117603, 0.987835, -0.101746,
		31.919561, 39.252403, 53.088696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251762, 38.647667, 53.670650>,  <31.837240, 38.560921, 53.159920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251762, 38.647667, 53.670650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.107471, 39.012119, 53.590931>,  <32.020897, 39.230789, 53.543098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.107471, 39.012119, 53.590931>,  <32.251762, 38.647667, 53.670650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107471, 39.012119, 53.590931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031028, 0.225291, 0.973797,
		0.932156, 0.345090, -0.109538,
		-0.360726, 0.911130, -0.199299,
		31.999254, 39.285458, 53.531143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638210, 39.053360, 54.063721>,  <32.251762, 38.647667, 53.670650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638210, 39.053360, 54.063721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303501, 39.260719, 53.993206>,  <32.102676, 39.385136, 53.950897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303501, 39.260719, 53.993206>,  <32.638210, 39.053360, 54.063721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303501, 39.260719, 53.993206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049991, 0.248276, 0.967399,
		0.545261, 0.818307, -0.181836,
		-0.836775, 0.518394, -0.176283,
		32.052467, 39.416237, 53.940323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646919, 39.723827, 54.410439>,  <32.638210, 39.053360, 54.063721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646919, 39.723827, 54.410439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259483, 39.628685, 54.381409>,  <32.027023, 39.571598, 54.363991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259483, 39.628685, 54.381409>,  <32.646919, 39.723827, 54.410439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259483, 39.628685, 54.381409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158308, 0.364684, 0.917575,
		-0.191782, 0.900239, -0.390881,
		-0.968586, -0.237854, -0.072575,
		31.968908, 39.557327, 54.359634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374748, 40.170094, 54.836884>,  <32.646919, 39.723827, 54.410439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374748, 40.170094, 54.836884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063477, 39.923462, 54.789093>,  <31.876715, 39.775482, 54.760418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063477, 39.923462, 54.789093>,  <32.374748, 40.170094, 54.836884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063477, 39.923462, 54.789093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318460, 0.223414, 0.921233,
		-0.541317, 0.754931, -0.370210,
		-0.778177, -0.616576, -0.119478,
		31.830023, 39.738491, 54.753250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796770, 40.552036, 55.111061>,  <32.374748, 40.170094, 54.836884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796770, 40.552036, 55.111061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740589, 40.156906, 55.137817>,  <31.706881, 39.919827, 55.153870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740589, 40.156906, 55.137817>,  <31.796770, 40.552036, 55.111061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740589, 40.156906, 55.137817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533547, 0.132427, 0.835339,
		-0.834027, 0.081637, -0.545651,
		-0.140453, -0.987825, 0.066890,
		31.698454, 39.860558, 55.157883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008738, 40.544582, 55.268887>,  <31.796770, 40.552036, 55.111061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008738, 40.544582, 55.268887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170778, 40.191830, 55.365360>,  <31.268003, 39.980179, 55.423244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170778, 40.191830, 55.365360>,  <31.008738, 40.544582, 55.268887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170778, 40.191830, 55.365360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610728, -0.064710, 0.789192,
		-0.680370, -0.467001, -0.564806,
		0.405102, -0.881885, 0.241184,
		31.292309, 39.927265, 55.437717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444225, 39.995773, 55.277363>,  <31.008738, 40.544582, 55.268887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444225, 39.995773, 55.277363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742357, 39.866375, 55.510544>,  <30.921236, 39.788738, 55.650452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742357, 39.866375, 55.510544>,  <30.444225, 39.995773, 55.277363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742357, 39.866375, 55.510544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664415, -0.288117, 0.689595,
		-0.055118, -0.901300, -0.429674,
		0.745328, -0.323491, 0.582957,
		30.965956, 39.769329, 55.685432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256893, 39.257027, 55.543663>,  <30.444225, 39.995773, 55.277363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256893, 39.257027, 55.543663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551407, 39.352386, 55.796978>,  <30.728115, 39.409603, 55.948967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551407, 39.352386, 55.796978>,  <30.256893, 39.257027, 55.543663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551407, 39.352386, 55.796978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512119, -0.415393, 0.751786,
		0.442290, -0.877846, -0.183757,
		0.736284, 0.238402, 0.633285,
		30.772291, 39.423908, 55.986965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214394, 38.726822, 56.001999>,  <30.256893, 39.257027, 55.543663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214394, 38.726822, 56.001999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438152, 39.013855, 56.167965>,  <30.572409, 39.186073, 56.267544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438152, 39.013855, 56.167965>,  <30.214394, 38.726822, 56.001999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438152, 39.013855, 56.167965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386283, -0.217202, 0.896442,
		0.733388, -0.661743, 0.155686,
		0.559399, 0.717579, 0.414914,
		30.605972, 39.229130, 56.292439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711517, 38.432903, 56.525414>,  <30.214394, 38.726822, 56.001999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711517, 38.432903, 56.525414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616854, 38.812298, 56.609669>,  <30.560055, 39.039932, 56.660221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616854, 38.812298, 56.609669>,  <30.711517, 38.432903, 56.525414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616854, 38.812298, 56.609669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419950, -0.295359, 0.858141,
		0.876147, 0.114630, 0.468216,
		-0.236660, 0.948485, 0.210639,
		30.545856, 39.096844, 56.672859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820253, 38.472939, 57.229965>,  <30.711517, 38.432903, 56.525414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820253, 38.472939, 57.229965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586981, 38.786404, 57.144386>,  <30.447018, 38.974483, 57.093037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586981, 38.786404, 57.144386>,  <30.820253, 38.472939, 57.229965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586981, 38.786404, 57.144386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487612, -0.127046, 0.863767,
		0.649720, 0.608057, 0.456214,
		-0.583180, 0.783662, -0.213951,
		30.412027, 39.021503, 57.080200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655386, 38.623657, 57.900864>,  <30.820253, 38.472939, 57.229965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655386, 38.623657, 57.900864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380106, 38.856041, 57.727032>,  <30.214937, 38.995472, 57.622730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380106, 38.856041, 57.727032>,  <30.655386, 38.623657, 57.900864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380106, 38.856041, 57.727032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457030, 0.118062, 0.881581,
		0.563473, 0.805322, 0.184266,
		-0.688202, 0.580962, -0.434582,
		30.173645, 39.030331, 57.596657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455746, 39.325184, 58.286163>,  <30.655386, 38.623657, 57.900864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455746, 39.325184, 58.286163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.139200, 39.270905, 58.047726>,  <29.949274, 39.238335, 57.904663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.139200, 39.270905, 58.047726>,  <30.455746, 39.325184, 58.286163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139200, 39.270905, 58.047726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611330, 0.183041, 0.769916,
		0.004631, 0.973694, -0.227811,
		-0.791362, -0.135702, -0.596096,
		29.901793, 39.230194, 57.868896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977659, 39.795677, 58.534420>,  <30.455746, 39.325184, 58.286163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977659, 39.795677, 58.534420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774378, 39.532825, 58.311741>,  <29.652409, 39.375114, 58.178131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774378, 39.532825, 58.311741>,  <29.977659, 39.795677, 58.534420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774378, 39.532825, 58.311741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754181, 0.027437, 0.656094,
		-0.415862, 0.753281, -0.509535,
		-0.508203, -0.657126, -0.556700,
		29.621918, 39.335686, 58.144730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268093, 40.155926, 58.363300>,  <29.977659, 39.795677, 58.534420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268093, 40.155926, 58.363300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.262745, 39.756626, 58.386379>,  <29.259537, 39.517048, 58.400227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.262745, 39.756626, 58.386379>,  <29.268093, 40.155926, 58.363300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262745, 39.756626, 58.386379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783590, 0.046305, 0.619550,
		-0.621134, -0.036930, -0.782834,
		-0.013370, -0.998244, 0.057700,
		29.258734, 39.457153, 58.403690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516804, 39.875191, 58.260643>,  <29.268093, 40.155926, 58.363300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516804, 39.875191, 58.260643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.719992, 39.585003, 58.446400>,  <28.841906, 39.410892, 58.557854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.719992, 39.585003, 58.446400>,  <28.516804, 39.875191, 58.260643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719992, 39.585003, 58.446400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781100, -0.160685, 0.603376,
		-0.363108, -0.669237, -0.648286,
		0.507971, -0.725467, 0.464395,
		28.872383, 39.367363, 58.585720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974092, 39.597778, 58.492119>,  <28.516804, 39.875191, 58.260643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974092, 39.597778, 58.492119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.264103, 39.408195, 58.692001>,  <28.438110, 39.294445, 58.811932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.264103, 39.408195, 58.692001>,  <27.974092, 39.597778, 58.492119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264103, 39.408195, 58.692001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673845, -0.338185, 0.656935,
		-0.142366, -0.813017, -0.564566,
		0.725027, -0.473956, 0.499702,
		28.481611, 39.266010, 58.841911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611498, 39.001789, 58.844048>,  <27.974092, 39.597778, 58.492119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611498, 39.001789, 58.844048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.951809, 39.096561, 59.031685>,  <28.155994, 39.153423, 59.144268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.951809, 39.096561, 59.031685>,  <27.611498, 39.001789, 58.844048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951809, 39.096561, 59.031685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462687, -0.085568, 0.882382,
		0.249203, -0.967751, 0.036826,
		0.850775, 0.236931, 0.469090,
		28.207041, 39.167641, 59.172413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358162, 38.288250, 58.839062>,  <27.611498, 39.001789, 58.844048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358162, 38.288250, 58.839062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.100698, 38.029068, 58.676159>,  <26.946220, 37.873558, 58.578415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.100698, 38.029068, 58.676159>,  <27.358162, 38.288250, 58.839062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100698, 38.029068, 58.676159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281285, 0.294606, -0.913283,
		0.711746, -0.702399, -0.007366,
		-0.643659, -0.647953, -0.407259,
		26.907600, 37.834682, 58.553982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794313, 37.872200, 58.410877>,  <27.358162, 38.288250, 58.839062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794313, 37.872200, 58.410877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414326, 37.874096, 58.285957>,  <27.186333, 37.875233, 58.211006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414326, 37.874096, 58.285957>,  <27.794313, 37.872200, 58.410877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414326, 37.874096, 58.285957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302528, 0.262594, -0.916254,
		0.077665, -0.964895, -0.250891,
		-0.949971, 0.004741, -0.312302,
		27.129333, 37.875519, 58.192268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912401, 37.630817, 57.832363>,  <27.794313, 37.872200, 58.410877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912401, 37.630817, 57.832363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.533627, 37.742733, 57.769081>,  <27.306362, 37.809883, 57.731113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.533627, 37.742733, 57.769081>,  <27.912401, 37.630817, 57.832363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533627, 37.742733, 57.769081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179018, 0.050316, -0.982558,
		-0.266945, -0.958743, -0.097733,
		-0.946938, 0.279785, -0.158200,
		27.249544, 37.826668, 57.721622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494993, 37.136940, 57.377705>,  <27.912401, 37.630817, 57.832363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494993, 37.136940, 57.377705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.377867, 37.517624, 57.340801>,  <27.307590, 37.746033, 57.318661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.377867, 37.517624, 57.340801>,  <27.494993, 37.136940, 57.377705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377867, 37.517624, 57.340801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133124, -0.054969, -0.989574,
		-0.946857, -0.302044, -0.110600,
		-0.292815, 0.951708, -0.092257,
		27.290022, 37.803135, 57.313126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344461, 37.087730, 56.690117>,  <27.494993, 37.136940, 57.377705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344461, 37.087730, 56.690117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.297937, 37.470089, 56.797989>,  <27.270023, 37.699505, 56.862713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.297937, 37.470089, 56.797989>,  <27.344461, 37.087730, 56.690117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297937, 37.470089, 56.797989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159220, 0.285958, -0.944922,
		-0.980368, -0.066964, -0.185458,
		-0.116309, 0.955900, 0.269682,
		27.263044, 37.756859, 56.878895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134245, 37.329266, 56.099091>,  <27.344461, 37.087730, 56.690117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134245, 37.329266, 56.099091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.299355, 37.639515, 56.290100>,  <27.398420, 37.825665, 56.404705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.299355, 37.639515, 56.290100>,  <27.134245, 37.329266, 56.099091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299355, 37.639515, 56.290100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419604, 0.303397, -0.855502,
		-0.808424, 0.553501, -0.200219,
		0.412775, 0.775620, 0.477525,
		27.423187, 37.872200, 56.433357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853687, 37.860420, 55.817982>,  <27.134245, 37.329266, 56.099091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853687, 37.860420, 55.817982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.205379, 37.957409, 55.982014>,  <27.416395, 38.015602, 56.080433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.205379, 37.957409, 55.982014>,  <26.853687, 37.860420, 55.817982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205379, 37.957409, 55.982014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358778, 0.229294, -0.904822,
		-0.313420, 0.942673, 0.114610,
		0.879231, 0.242469, 0.410075,
		27.469149, 38.030151, 56.105038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979210, 38.458221, 55.418728>,  <26.853687, 37.860420, 55.817982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979210, 38.458221, 55.418728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.310251, 38.327408, 55.601208>,  <27.508877, 38.248920, 55.710697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.310251, 38.327408, 55.601208>,  <26.979210, 38.458221, 55.418728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310251, 38.327408, 55.601208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531961, 0.197599, -0.823390,
		0.179133, 0.924122, 0.337504,
		0.827604, -0.327036, 0.456201,
		27.558533, 38.229298, 55.738068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496243, 38.888084, 55.109264>,  <26.979210, 38.458221, 55.418728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496243, 38.888084, 55.109264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.717518, 38.614525, 55.299534>,  <27.850283, 38.450390, 55.413696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.717518, 38.614525, 55.299534>,  <27.496243, 38.888084, 55.109264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717518, 38.614525, 55.299534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694623, 0.063471, -0.716569,
		0.459871, 0.726809, 0.510165,
		0.553189, -0.683901, 0.475669,
		27.883474, 38.409355, 55.442234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256441, 39.132492, 55.105576>,  <27.496243, 38.888084, 55.109264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256441, 39.132492, 55.105576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.266836, 38.738056, 55.171234>,  <28.273073, 38.501392, 55.210629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.266836, 38.738056, 55.171234>,  <28.256441, 39.132492, 55.105576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266836, 38.738056, 55.171234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681025, -0.102740, -0.725017,
		0.731799, 0.130631, 0.668884,
		0.025989, -0.986093, 0.164148,
		28.274633, 38.442226, 55.220478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929178, 38.988045, 55.166779>,  <28.256441, 39.132492, 55.105576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929178, 38.988045, 55.166779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.729149, 38.657639, 55.062756>,  <28.609131, 38.459396, 55.000343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.729149, 38.657639, 55.062756>,  <28.929178, 38.988045, 55.166779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729149, 38.657639, 55.062756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670344, -0.179119, -0.720108,
		0.548237, -0.534435, 0.643285,
		-0.500075, -0.826012, -0.260056,
		28.579126, 38.409836, 54.984737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520487, 38.512856, 55.019665>,  <28.929178, 38.988045, 55.166779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520487, 38.512856, 55.019665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.179173, 38.378113, 54.860451>,  <28.974384, 38.297268, 54.764923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.179173, 38.378113, 54.860451>,  <29.520487, 38.512856, 55.019665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179173, 38.378113, 54.860451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479256, -0.205843, -0.853195,
		0.205475, -0.918779, 0.337085,
		-0.853284, -0.336860, -0.398035,
		28.923187, 38.277054, 54.741039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682676, 37.903072, 54.629353>,  <29.520487, 38.512856, 55.019665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682676, 37.903072, 54.629353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.344254, 38.040333, 54.466167>,  <29.141201, 38.122688, 54.368256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.344254, 38.040333, 54.466167>,  <29.682676, 37.903072, 54.629353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344254, 38.040333, 54.466167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314100, -0.297455, -0.901588,
		-0.430732, -0.890936, 0.143880,
		-0.846056, 0.343151, -0.407967,
		29.090437, 38.143276, 54.343777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512331, 37.378601, 54.137283>,  <29.682676, 37.903072, 54.629353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512331, 37.378601, 54.137283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.284058, 37.689915, 54.032524>,  <29.147093, 37.876701, 53.969669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.284058, 37.689915, 54.032524>,  <29.512331, 37.378601, 54.137283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284058, 37.689915, 54.032524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122727, -0.234517, -0.964334,
		-0.811946, -0.582473, 0.038318,
		-0.570685, 0.778285, -0.261900,
		29.112852, 37.923401, 53.953953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971140, 37.111462, 53.644741>,  <29.512331, 37.378601, 54.137283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971140, 37.111462, 53.644741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.027876, 37.502953, 53.585453>,  <29.061918, 37.737846, 53.549881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.027876, 37.502953, 53.585453>,  <28.971140, 37.111462, 53.644741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027876, 37.502953, 53.585453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055638, -0.141613, -0.988357,
		-0.988324, 0.148437, 0.034368,
		0.141842, 0.978730, -0.148218,
		29.070429, 37.796570, 53.540989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657143, 37.240990, 52.971561>,  <28.971140, 37.111462, 53.644741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657143, 37.240990, 52.971561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.912899, 37.539555, 53.045368>,  <29.066353, 37.718693, 53.089653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.912899, 37.539555, 53.045368>,  <28.657143, 37.240990, 52.971561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912899, 37.539555, 53.045368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042545, 0.205273, -0.977780,
		-0.767704, 0.633034, 0.099493,
		0.639391, 0.746412, 0.184521,
		29.104715, 37.763477, 53.100723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541533, 37.780434, 52.510513>,  <28.657143, 37.240990, 52.971561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541533, 37.780434, 52.510513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926331, 37.831120, 52.607273>,  <29.157209, 37.861530, 52.665329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926331, 37.831120, 52.607273>,  <28.541533, 37.780434, 52.510513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926331, 37.831120, 52.607273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214804, 0.195814, -0.956826,
		-0.168607, 0.972420, 0.161154,
		0.961993, 0.126711, 0.241895,
		29.214928, 37.869133, 52.679840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788841, 38.403088, 52.039677>,  <28.541533, 37.780434, 52.510513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788841, 38.403088, 52.039677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124077, 38.249859, 52.195042>,  <29.325218, 38.157921, 52.288261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124077, 38.249859, 52.195042>,  <28.788841, 38.403088, 52.039677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124077, 38.249859, 52.195042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461446, 0.118018, -0.879283,
		0.290987, 0.916149, 0.275676,
		0.838089, -0.383070, 0.388412,
		29.375504, 38.134937, 52.311565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168009, 38.857845, 51.712563>,  <28.788841, 38.403088, 52.039677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168009, 38.857845, 51.712563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.389063, 38.547493, 51.834282>,  <29.521696, 38.361282, 51.907314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.389063, 38.547493, 51.834282>,  <29.168009, 38.857845, 51.712563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389063, 38.547493, 51.834282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591180, 0.107584, -0.799332,
		0.587451, 0.621635, 0.518142,
		0.552637, -0.775883, 0.304298,
		29.554853, 38.314728, 51.925571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886656, 39.029324, 51.858807>,  <29.168009, 38.857845, 51.712563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886656, 39.029324, 51.858807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.916414, 38.639442, 51.774502>,  <29.934269, 38.405514, 51.723919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.916414, 38.639442, 51.774502>,  <29.886656, 39.029324, 51.858807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916414, 38.639442, 51.774502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656881, 0.206919, -0.725046,
		0.750315, -0.084507, 0.655657,
		0.074397, -0.974702, -0.210766,
		29.938734, 38.347031, 51.711273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605192, 38.795658, 51.727436>,  <29.886656, 39.029324, 51.858807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605192, 38.795658, 51.727436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.420937, 38.512012, 51.513908>,  <30.310383, 38.341824, 51.385792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.420937, 38.512012, 51.513908>,  <30.605192, 38.795658, 51.727436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420937, 38.512012, 51.513908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735701, 0.031416, -0.676577,
		0.496543, -0.704391, 0.507227,
		-0.460639, -0.709117, -0.533821,
		30.282745, 38.299278, 51.353764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174219, 38.391800, 51.484802>,  <30.605192, 38.795658, 51.727436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174219, 38.391800, 51.484802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862194, 38.317215, 51.245892>,  <30.674980, 38.272465, 51.102547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862194, 38.317215, 51.245892>,  <31.174219, 38.391800, 51.484802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862194, 38.317215, 51.245892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614708, -0.050208, -0.787155,
		0.116788, -0.981178, 0.153787,
		-0.780060, -0.186465, -0.597274,
		30.628176, 38.261276, 51.066708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485020, 38.072208, 51.021923>,  <31.174219, 38.391800, 51.484802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485020, 38.072208, 51.021923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132378, 38.122395, 50.839920>,  <30.920792, 38.152508, 50.730721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132378, 38.122395, 50.839920>,  <31.485020, 38.072208, 51.021923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132378, 38.122395, 50.839920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462109, 0.033250, -0.886200,
		-0.096060, -0.991541, -0.087293,
		-0.881605, 0.125467, -0.455006,
		30.867895, 38.160034, 50.703419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390285, 37.579525, 50.614738>,  <31.485020, 38.072208, 51.021923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390285, 37.579525, 50.614738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.124857, 37.827763, 50.447628>,  <30.965599, 37.976704, 50.347363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.124857, 37.827763, 50.447628>,  <31.390285, 37.579525, 50.614738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124857, 37.827763, 50.447628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356142, -0.229052, -0.905924,
		-0.657900, -0.749935, -0.069026,
		-0.663574, 0.620590, -0.417777,
		30.925785, 38.013939, 50.322296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868778, 37.257275, 50.049290>,  <31.390285, 37.579525, 50.614738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868778, 37.257275, 50.049290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907526, 37.646671, 49.966408>,  <30.930775, 37.880310, 49.916679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907526, 37.646671, 49.966408>,  <30.868778, 37.257275, 50.049290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907526, 37.646671, 49.966408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254328, -0.225482, -0.940465,
		-0.962255, 0.038404, -0.269428,
		0.096869, 0.973490, -0.207204,
		30.936586, 37.938717, 49.904247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650698, 37.146374, 49.488220>,  <30.868778, 37.257275, 50.049290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650698, 37.146374, 49.488220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797586, 37.518341, 49.480133>,  <30.885719, 37.741520, 49.475281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797586, 37.518341, 49.480133>,  <30.650698, 37.146374, 49.488220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797586, 37.518341, 49.480133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038125, -0.036767, -0.998596,
		-0.929352, 0.365935, -0.048955,
		0.367222, 0.929914, -0.020218,
		30.907753, 37.797314, 49.474068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285645, 37.609253, 48.996529>,  <30.650698, 37.146374, 49.488220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285645, 37.609253, 48.996529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.646505, 37.776886, 49.037495>,  <30.863022, 37.877464, 49.062073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.646505, 37.776886, 49.037495>,  <30.285645, 37.609253, 48.996529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646505, 37.776886, 49.037495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086382, 0.057100, -0.994624,
		-0.422678, 0.906151, 0.015312,
		0.902154, 0.419083, 0.102411,
		30.917152, 37.902611, 49.068218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316599, 37.844006, 48.304104>,  <30.285645, 37.609253, 48.996529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316599, 37.844006, 48.304104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689531, 37.939728, 48.412540>,  <30.913292, 37.997162, 48.477600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689531, 37.939728, 48.412540>,  <30.316599, 37.844006, 48.304104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689531, 37.939728, 48.412540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299963, -0.093176, -0.949389,
		-0.201937, 0.966463, -0.158654,
		0.932332, 0.239307, 0.271088,
		30.969231, 38.011520, 48.493866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428934, 38.268181, 47.811844>,  <30.316599, 37.844006, 48.304104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428934, 38.268181, 47.811844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.773531, 38.139473, 47.968964>,  <30.980289, 38.062248, 48.063236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.773531, 38.139473, 47.968964>,  <30.428934, 38.268181, 47.811844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773531, 38.139473, 47.968964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319856, -0.256904, -0.911972,
		0.394360, 0.911297, -0.118400,
		0.861494, -0.321774, 0.392796,
		31.031979, 38.042942, 48.086803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977341, 38.425709, 47.324799>,  <30.428934, 38.268181, 47.811844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977341, 38.425709, 47.324799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109722, 38.116398, 47.541138>,  <31.189152, 37.930813, 47.670940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109722, 38.116398, 47.541138>,  <30.977341, 38.425709, 47.324799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109722, 38.116398, 47.541138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169184, -0.515231, -0.840186,
		0.928356, 0.369566, -0.039692,
		0.330955, -0.773277, 0.540843,
		31.209009, 37.884415, 47.703392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590723, 38.148762, 46.978924>,  <30.977341, 38.425709, 47.324799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590723, 38.148762, 46.978924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472616, 37.838982, 47.202724>,  <31.401752, 37.653114, 47.337006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472616, 37.838982, 47.202724>,  <31.590723, 38.148762, 46.978924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472616, 37.838982, 47.202724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232119, -0.626215, -0.744295,
		0.926789, -0.089895, 0.364666,
		-0.295268, -0.774451, 0.559502,
		31.384035, 37.606647, 47.370575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007889, 37.644550, 46.736206>,  <31.590723, 38.148762, 46.978924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007889, 37.644550, 46.736206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703741, 37.449181, 46.907452>,  <31.521254, 37.331959, 47.010197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703741, 37.449181, 46.907452>,  <32.007889, 37.644550, 46.736206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703741, 37.449181, 46.907452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161155, -0.780413, -0.604139,
		0.629182, -0.390376, 0.672113,
		-0.760368, -0.488428, 0.428111,
		31.475632, 37.302650, 47.035885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237179, 36.986122, 46.975002>,  <32.007889, 37.644550, 46.736206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237179, 36.986122, 46.975002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841274, 36.949245, 46.931423>,  <31.603731, 36.927120, 46.905273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841274, 36.949245, 46.931423>,  <32.237179, 36.986122, 46.975002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841274, 36.949245, 46.931423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140585, -0.761469, -0.632772,
		-0.024625, -0.641611, 0.766635,
		-0.989762, -0.092195, -0.108952,
		31.544346, 36.921585, 46.898739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151943, 36.264561, 47.135712>,  <32.237179, 36.986122, 46.975002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151943, 36.264561, 47.135712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.817282, 36.380272, 46.949669>,  <31.616484, 36.449699, 46.838043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.817282, 36.380272, 46.949669>,  <32.151943, 36.264561, 47.135712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817282, 36.380272, 46.949669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026151, -0.827094, -0.561455,
		-0.547103, -0.481908, 0.684430,
		-0.836657, 0.289275, -0.465108,
		31.566284, 36.467056, 46.810135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715532, 35.689503, 47.093403>,  <32.151943, 36.264561, 47.135712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715532, 35.689503, 47.093403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595207, 35.936634, 46.802803>,  <31.523012, 36.084915, 46.628445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595207, 35.936634, 46.802803>,  <31.715532, 35.689503, 47.093403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595207, 35.936634, 46.802803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077223, -0.775058, -0.627154,
		-0.950551, -0.132554, 0.280858,
		-0.300813, 0.617831, -0.726496,
		31.504963, 36.121983, 46.584854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346712, 35.270924, 46.696991>,  <31.715532, 35.689503, 47.093403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346712, 35.270924, 46.696991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402719, 35.577881, 46.446712>,  <31.436323, 35.762054, 46.296543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402719, 35.577881, 46.446712>,  <31.346712, 35.270924, 46.696991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402719, 35.577881, 46.446712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116515, -0.640303, -0.759234,
		-0.983270, 0.033404, -0.179068,
		0.140019, 0.767396, -0.625698,
		31.444725, 35.808098, 46.259003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105183, 35.048172, 46.093422>,  <31.346712, 35.270924, 46.696991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105183, 35.048172, 46.093422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.351830, 35.343727, 45.984737>,  <31.499817, 35.521061, 45.919525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.351830, 35.343727, 45.984737>,  <31.105183, 35.048172, 46.093422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351830, 35.343727, 45.984737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285264, -0.531380, -0.797659,
		-0.733762, 0.414342, -0.538436,
		0.616618, 0.738889, -0.271710,
		31.536816, 35.565395, 45.903225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978792, 35.074993, 45.388908>,  <31.105183, 35.048172, 46.093422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978792, 35.074993, 45.388908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331875, 35.256161, 45.439014>,  <31.543724, 35.364861, 45.469078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331875, 35.256161, 45.439014>,  <30.978792, 35.074993, 45.388908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331875, 35.256161, 45.439014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364990, -0.492900, -0.789831,
		-0.295990, 0.742908, -0.600398,
		0.882707, 0.452921, 0.125260,
		31.596687, 35.392036, 45.476593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144896, 35.328480, 44.730293>,  <30.978792, 35.074993, 45.388908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144896, 35.328480, 44.730293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.480051, 35.294666, 44.945995>,  <31.681145, 35.274376, 45.075417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.480051, 35.294666, 44.945995>,  <31.144896, 35.328480, 44.730293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480051, 35.294666, 44.945995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399018, -0.579265, -0.710800,
		0.372459, 0.810744, -0.451629,
		0.837890, -0.084535, 0.539254,
		31.731419, 35.269306, 45.107773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682079, 35.297806, 44.177006>,  <31.144896, 35.328480, 44.730293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682079, 35.297806, 44.177006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.888096, 35.205349, 44.507172>,  <32.011707, 35.149876, 44.705269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.888096, 35.205349, 44.507172>,  <31.682079, 35.297806, 44.177006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888096, 35.205349, 44.507172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653500, -0.517254, -0.552618,
		0.554682, 0.824028, -0.115354,
		0.515040, -0.231143, 0.825413,
		32.042606, 35.136005, 44.754795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392544, 35.492332, 44.041710>,  <31.682079, 35.297806, 44.177006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392544, 35.492332, 44.041710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371204, 35.186600, 44.298756>,  <32.358402, 35.003159, 44.452984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371204, 35.186600, 44.298756>,  <32.392544, 35.492332, 44.041710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371204, 35.186600, 44.298756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491974, -0.580126, -0.649166,
		0.868974, 0.281519, 0.406977,
		-0.053345, -0.764331, 0.642614,
		32.355202, 34.957302, 44.491539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117573, 35.134056, 44.143158>,  <32.392544, 35.492332, 44.041710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117573, 35.134056, 44.143158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.814259, 34.884701, 44.219471>,  <32.632271, 34.735088, 44.265259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.814259, 34.884701, 44.219471>,  <33.117573, 35.134056, 44.143158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814259, 34.884701, 44.219471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403593, -0.678703, -0.613575,
		0.511978, -0.388266, 0.766243,
		-0.758282, -0.623387, 0.190779,
		32.586773, 34.697685, 44.276703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372795, 34.432892, 44.184898>,  <33.117573, 35.134056, 44.143158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372795, 34.432892, 44.184898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981026, 34.401672, 44.110451>,  <32.745964, 34.382938, 44.065784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981026, 34.401672, 44.110451>,  <33.372795, 34.432892, 44.184898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981026, 34.401672, 44.110451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170548, -0.813173, -0.556474,
		-0.107909, -0.576765, 0.809752,
		-0.979423, -0.078053, -0.186115,
		32.687199, 34.378258, 44.054615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963375, 34.251366, 44.402119>,  <33.372795, 34.432892, 44.184898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963375, 34.251366, 44.402119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046570, 33.929810, 44.179230>,  <34.096485, 33.736874, 44.045498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046570, 33.929810, 44.179230>,  <33.963375, 34.251366, 44.402119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046570, 33.929810, 44.179230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874586, -0.102257, 0.473966,
		-0.437999, -0.585915, 0.681807,
		0.207984, -0.803895, -0.557221,
		34.108967, 33.688641, 44.012062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132526, 33.677124, 44.772621>,  <33.963375, 34.251366, 44.402119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132526, 33.677124, 44.772621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323555, 33.638947, 44.423264>,  <34.438171, 33.616039, 44.213650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323555, 33.638947, 44.423264>,  <34.132526, 33.677124, 44.772621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323555, 33.638947, 44.423264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857663, -0.165047, 0.487005,
		-0.190634, -0.981657, 0.003039,
		0.477570, -0.095446, -0.873394,
		34.466827, 33.610313, 44.161243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539265, 33.097832, 44.906322>,  <34.132526, 33.677124, 44.772621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539265, 33.097832, 44.906322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.701962, 33.366547, 44.658688>,  <34.799580, 33.527775, 44.510109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.701962, 33.366547, 44.658688>,  <34.539265, 33.097832, 44.906322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701962, 33.366547, 44.658688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862690, -0.059506, 0.502220,
		0.300546, -0.738350, -0.603748,
		0.406740, 0.671788, -0.619083,
		34.823982, 33.568085, 44.472961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987049, 32.740486, 44.485416>,  <34.539265, 33.097832, 44.906322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987049, 32.740486, 44.485416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076069, 33.123405, 44.559231>,  <35.129478, 33.353157, 44.603519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076069, 33.123405, 44.559231>,  <34.987049, 32.740486, 44.485416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076069, 33.123405, 44.559231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864991, -0.281200, 0.415593,
		0.449738, 0.067135, -0.890634,
		0.222545, 0.957298, 0.184537,
		35.142834, 33.410595, 44.614594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740921, 32.967442, 44.170105>,  <34.987049, 32.740486, 44.485416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740921, 32.967442, 44.170105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631535, 33.160019, 44.503193>,  <35.565903, 33.275566, 44.703045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631535, 33.160019, 44.503193>,  <35.740921, 32.967442, 44.170105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631535, 33.160019, 44.503193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794729, -0.374609, 0.477571,
		0.541870, 0.792387, -0.280176,
		-0.273465, 0.481446, 0.832723,
		35.549496, 33.304451, 44.753010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285297, 33.319485, 44.427441>,  <35.740921, 32.967442, 44.170105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285297, 33.319485, 44.427441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042183, 33.299023, 44.744419>,  <35.896313, 33.286747, 44.934608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042183, 33.299023, 44.744419>,  <36.285297, 33.319485, 44.427441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042183, 33.299023, 44.744419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771852, -0.272610, 0.574395,
		0.186645, 0.960764, 0.205175,
		-0.607790, -0.051157, 0.792448,
		35.859844, 33.283676, 44.982155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624451, 33.769806, 45.003853>,  <36.285297, 33.319485, 44.427441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624451, 33.769806, 45.003853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373032, 33.515587, 45.183189>,  <36.222179, 33.363056, 45.290791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373032, 33.515587, 45.183189>,  <36.624451, 33.769806, 45.003853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373032, 33.515587, 45.183189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692729, -0.195362, 0.694234,
		-0.353631, 0.746934, 0.563057,
		-0.628547, -0.635549, 0.448337,
		36.184467, 33.324921, 45.317692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749969, 33.896942, 45.683151>,  <36.624451, 33.769806, 45.003853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749969, 33.896942, 45.683151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571964, 33.538876, 45.693245>,  <36.465160, 33.324036, 45.699303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571964, 33.538876, 45.693245>,  <36.749969, 33.896942, 45.683151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571964, 33.538876, 45.693245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558726, -0.255518, 0.789009,
		-0.699847, 0.365221, 0.613863,
		-0.445016, -0.895167, 0.025235,
		36.438461, 33.270325, 45.700817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328945, 33.827244, 46.326767>,  <36.749969, 33.896942, 45.683151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328945, 33.827244, 46.326767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428337, 33.458961, 46.206394>,  <36.487972, 33.237991, 46.134171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428337, 33.458961, 46.206394>,  <36.328945, 33.827244, 46.326767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428337, 33.458961, 46.206394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349634, -0.204483, 0.914299,
		-0.903335, -0.332403, 0.271099,
		0.248481, -0.920704, -0.300936,
		36.502880, 33.182751, 46.116112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357586, 33.434895, 46.907497>,  <36.328945, 33.827244, 46.326767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357586, 33.434895, 46.907497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549835, 33.177296, 46.669415>,  <36.665184, 33.022736, 46.526566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549835, 33.177296, 46.669415>,  <36.357586, 33.434895, 46.907497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549835, 33.177296, 46.669415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573611, -0.282519, 0.768865,
		-0.663305, -0.710949, 0.233621,
		0.480621, -0.643999, -0.595205,
		36.694023, 32.984097, 46.490852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653973, 32.971790, 47.345760>,  <36.357586, 33.434895, 46.907497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653973, 32.971790, 47.345760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864510, 32.894653, 47.014515>,  <36.990833, 32.848373, 46.815765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864510, 32.894653, 47.014515>,  <36.653973, 32.971790, 47.345760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864510, 32.894653, 47.014515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813258, -0.170058, 0.556499,
		-0.248143, -0.966381, 0.067320,
		0.526342, -0.192840, -0.828117,
		37.022411, 32.836800, 46.766079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011566, 32.349373, 47.422230>,  <36.653973, 32.971790, 47.345760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011566, 32.349373, 47.422230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216511, 32.551434, 47.144440>,  <37.339478, 32.672672, 46.977764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216511, 32.551434, 47.144440>,  <37.011566, 32.349373, 47.422230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216511, 32.551434, 47.144440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858726, -0.293423, 0.420111,
		0.008446, -0.811616, -0.584130,
		0.512366, 0.505156, -0.694477,
		37.370220, 32.702980, 46.936096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556965, 31.975086, 47.248505>,  <37.011566, 32.349373, 47.422230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556965, 31.975086, 47.248505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686966, 32.325230, 47.105328>,  <37.764965, 32.535316, 47.019421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686966, 32.325230, 47.105328>,  <37.556965, 31.975086, 47.248505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686966, 32.325230, 47.105328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920902, -0.206804, 0.330411,
		0.215204, -0.437012, -0.873331,
		0.325003, 0.875358, -0.357940,
		37.784466, 32.587837, 46.997944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129574, 31.841854, 46.756783>,  <37.556965, 31.975086, 47.248505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129574, 31.841854, 46.756783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160339, 32.217548, 46.890602>,  <38.178799, 32.442966, 46.970894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160339, 32.217548, 46.890602>,  <38.129574, 31.841854, 46.756783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160339, 32.217548, 46.890602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945868, -0.174847, 0.273428,
		0.315308, 0.295410, -0.901839,
		0.076911, 0.939234, 0.334549,
		38.183411, 32.499317, 46.990967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848949, 32.164722, 46.557949>,  <38.129574, 31.841854, 46.756783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848949, 32.164722, 46.557949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680805, 32.352901, 46.868294>,  <38.579918, 32.465809, 47.054501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680805, 32.352901, 46.868294>,  <38.848949, 32.164722, 46.557949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680805, 32.352901, 46.868294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901907, 0.123079, 0.414024,
		0.099285, 0.873800, -0.476042,
		-0.420365, 0.470452, 0.775866,
		38.554695, 32.494038, 47.101055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508217, 31.898550, 46.967510>,  <38.848949, 32.164722, 46.557949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508217, 31.898550, 46.967510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652229, 32.265419, 46.899193>,  <39.738636, 32.485538, 46.858200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652229, 32.265419, 46.899193>,  <39.508217, 31.898550, 46.967510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652229, 32.265419, 46.899193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333775, -0.297587, -0.894447,
		-0.871189, 0.265024, -0.413270,
		0.360034, 0.917172, -0.170796,
		39.760239, 32.540569, 46.847954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496655, 31.940409, 46.240223>,  <39.508217, 31.898550, 46.967510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496655, 31.940409, 46.240223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777592, 32.191967, 46.373615>,  <39.946152, 32.342903, 46.453651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777592, 32.191967, 46.373615>,  <39.496655, 31.940409, 46.240223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777592, 32.191967, 46.373615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595819, -0.263020, -0.758829,
		-0.389511, 0.731650, -0.559436,
		0.702340, 0.628895, 0.333482,
		39.988293, 32.380634, 46.473660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623741, 32.219460, 45.596943>,  <39.496655, 31.940409, 46.240223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623741, 32.219460, 45.596943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921925, 32.263927, 45.859829>,  <40.100834, 32.290607, 46.017563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921925, 32.263927, 45.859829>,  <39.623741, 32.219460, 45.596943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921925, 32.263927, 45.859829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659567, -0.265408, -0.703228,
		0.096252, 0.957705, -0.271175,
		0.745457, 0.111171, 0.657217,
		40.145561, 32.297279, 46.056995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228046, 32.797913, 45.432755>,  <39.623741, 32.219460, 45.596943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228046, 32.797913, 45.432755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376289, 32.507812, 45.664848>,  <40.465237, 32.333752, 45.804104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376289, 32.507812, 45.664848>,  <40.228046, 32.797913, 45.432755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376289, 32.507812, 45.664848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732108, -0.156324, -0.663009,
		0.571549, 0.670508, 0.473023,
		0.370608, -0.725246, 0.580231,
		40.487473, 32.290237, 45.838917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868534, 32.959126, 45.685493>,  <40.228046, 32.797913, 45.432755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868534, 32.959126, 45.685493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.836750, 32.567738, 45.609299>,  <40.817680, 32.332905, 45.563583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.836750, 32.567738, 45.609299>,  <40.868534, 32.959126, 45.685493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836750, 32.567738, 45.609299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874347, 0.023366, -0.484738,
		0.478753, -0.205067, 0.853665,
		-0.079457, -0.978469, -0.190486,
		40.812912, 32.274197, 45.552155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399517, 32.389244, 45.882065>,  <40.868534, 32.959126, 45.685493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399517, 32.389244, 45.882065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.208271, 32.296154, 45.543304>,  <41.093525, 32.240299, 45.340046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.208271, 32.296154, 45.543304>,  <41.399517, 32.389244, 45.882065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208271, 32.296154, 45.543304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848894, 0.124966, -0.513579,
		0.225356, -0.964481, 0.137810,
		-0.478115, -0.232724, -0.846903,
		41.064835, 32.226337, 45.289234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980709, 32.161411, 45.461708>,  <41.399517, 32.389244, 45.882065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980709, 32.161411, 45.461708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.662941, 32.270874, 45.244820>,  <41.472279, 32.336552, 45.114685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.662941, 32.270874, 45.244820>,  <41.980709, 32.161411, 45.461708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662941, 32.270874, 45.244820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588206, 0.569105, -0.574572,
		0.151349, -0.775392, -0.613074,
		-0.794422, 0.273653, -0.542224,
		41.424614, 32.352970, 45.082153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043415, 32.006424, 44.686378>,  <41.980709, 32.161411, 45.461708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043415, 32.006424, 44.686378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812447, 32.318340, 44.783131>,  <41.673866, 32.505489, 44.841183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812447, 32.318340, 44.783131>,  <42.043415, 32.006424, 44.686378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812447, 32.318340, 44.783131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594808, 0.604729, -0.529629,
		-0.559270, -0.161951, -0.813012,
		-0.577425, 0.779791, 0.241878,
		41.639217, 32.552277, 44.855694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731926, 31.596085, 44.169407>,  <42.043415, 32.006424, 44.686378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731926, 31.596085, 44.169407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511959, 31.303787, 44.331200>,  <41.379978, 31.128408, 44.428276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511959, 31.303787, 44.331200>,  <41.731926, 31.596085, 44.169407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511959, 31.303787, 44.331200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677687, 0.673448, 0.295312,
		-0.488197, -0.111718, -0.865554,
		-0.549913, -0.730744, 0.404484,
		41.346985, 31.084564, 44.452545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728966, 32.220318, 43.602299>,  <41.731926, 31.596085, 44.169407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728966, 32.220318, 43.602299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.774242, 32.067787, 43.235306>,  <41.801407, 31.976269, 43.015110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.774242, 32.067787, 43.235306>,  <41.728966, 32.220318, 43.602299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774242, 32.067787, 43.235306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661196, -0.718170, 0.216914,
		-0.741625, 0.582084, -0.333423,
		0.113192, -0.381327, -0.917485,
		41.808201, 31.953388, 42.960060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019619, 31.898540, 43.630272>,  <41.728966, 32.220318, 43.602299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019619, 31.898540, 43.630272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.142765, 32.137409, 43.926544>,  <41.216652, 32.280731, 44.104305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.142765, 32.137409, 43.926544>,  <41.019619, 31.898540, 43.630272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142765, 32.137409, 43.926544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417824, 0.614545, -0.669147,
		-0.854776, 0.515480, -0.060317,
		0.307865, 0.597173, 0.740678,
		41.235123, 32.316563, 44.148746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904472, 32.679947, 43.406803>,  <41.019619, 31.898540, 43.630272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904472, 32.679947, 43.406803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162697, 32.635578, 43.709049>,  <41.317631, 32.608955, 43.890396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162697, 32.635578, 43.709049>,  <40.904472, 32.679947, 43.406803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162697, 32.635578, 43.709049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528671, 0.778923, -0.337322,
		-0.551147, 0.617231, 0.561483,
		0.645558, -0.110926, 0.755613,
		41.356365, 32.602299, 43.935734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980808, 33.362705, 43.721210>,  <40.904472, 32.679947, 43.406803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980808, 33.362705, 43.721210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.290913, 33.110157, 43.728596>,  <41.476974, 32.958630, 43.733025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.290913, 33.110157, 43.728596>,  <40.980808, 33.362705, 43.721210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290913, 33.110157, 43.728596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580717, 0.700966, -0.414021,
		0.248460, 0.331695, 0.910080,
		0.775264, -0.631367, 0.018459,
		41.523491, 32.920746, 43.734135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787418, 33.950359, 43.271133>,  <40.980808, 33.362705, 43.721210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787418, 33.950359, 43.271133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.029377, 34.268478, 43.287090>,  <41.174553, 34.459351, 43.296665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.029377, 34.268478, 43.287090>,  <40.787418, 33.950359, 43.271133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029377, 34.268478, 43.287090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175447, -0.084247, -0.980878,
		-0.776732, 0.600332, -0.190494,
		0.604901, 0.795301, 0.039889,
		41.210846, 34.507069, 43.299057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173069, 34.159924, 42.892288>,  <40.787418, 33.950359, 43.271133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173069, 34.159924, 42.892288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003628, 34.317963, 42.566231>,  <39.901962, 34.412785, 42.370598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003628, 34.317963, 42.566231>,  <40.173069, 34.159924, 42.892288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003628, 34.317963, 42.566231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753409, 0.653275, -0.074880,
		0.502928, -0.645857, -0.574397,
		-0.423601, 0.395097, -0.815145,
		39.876549, 34.436493, 42.321686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663887, 34.120857, 42.358288>,  <40.173069, 34.159924, 42.892288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663887, 34.120857, 42.358288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.400051, 34.406269, 42.263786>,  <40.241749, 34.577518, 42.207085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.400051, 34.406269, 42.263786>,  <40.663887, 34.120857, 42.358288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400051, 34.406269, 42.263786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739704, 0.671989, -0.035613,
		0.133351, -0.198249, -0.971038,
		-0.659587, 0.713532, -0.236256,
		40.202175, 34.620327, 42.192909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926800, 34.461124, 41.808372>,  <40.663887, 34.120857, 42.358288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926800, 34.461124, 41.808372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688377, 34.682159, 42.041393>,  <40.545326, 34.814781, 42.181206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688377, 34.682159, 42.041393>,  <40.926800, 34.461124, 41.808372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688377, 34.682159, 42.041393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762613, 0.616649, 0.195359,
		-0.251281, 0.560709, -0.788963,
		-0.596053, 0.552584, 0.582557,
		40.509560, 34.847935, 42.216160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725643, 35.197815, 41.520508>,  <40.926800, 34.461124, 41.808372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725643, 35.197815, 41.520508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819221, 35.141613, 41.905327>,  <40.875370, 35.107891, 42.136219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819221, 35.141613, 41.905327>,  <40.725643, 35.197815, 41.520508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819221, 35.141613, 41.905327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694494, 0.716626, -0.064224,
		-0.680402, 0.683159, 0.265231,
		0.233947, -0.140503, 0.962043,
		40.889404, 35.099461, 42.193939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446049, 35.488083, 40.852818>,  <40.725643, 35.197815, 41.520508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446049, 35.488083, 40.852818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.607197, 35.797230, 41.048927>,  <40.703884, 35.982719, 41.166592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.607197, 35.797230, 41.048927>,  <40.446049, 35.488083, 40.852818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607197, 35.797230, 41.048927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363908, 0.356242, -0.860617,
		-0.839802, 0.525130, -0.137735,
		0.402869, 0.772871, 0.490272,
		40.728058, 36.029091, 41.196011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201130, 36.154003, 40.547375>,  <40.446049, 35.488083, 40.852818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201130, 36.154003, 40.547375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570335, 36.154034, 40.701279>,  <40.791859, 36.154053, 40.793621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570335, 36.154034, 40.701279>,  <40.201130, 36.154003, 40.547375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570335, 36.154034, 40.701279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334081, 0.495900, -0.801544,
		-0.190863, 0.868379, 0.457699,
		0.923017, 0.000077, 0.384758,
		40.847240, 36.154057, 40.816708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491825, 36.862152, 40.473892>,  <40.201130, 36.154003, 40.547375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491825, 36.862152, 40.473892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785698, 36.592209, 40.501656>,  <40.962021, 36.430244, 40.518314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785698, 36.592209, 40.501656>,  <40.491825, 36.862152, 40.473892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785698, 36.592209, 40.501656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537078, 0.516063, -0.667253,
		0.414480, 0.527494, 0.741590,
		0.734679, -0.674855, 0.069407,
		41.006104, 36.389751, 40.522476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153923, 37.232941, 40.767418>,  <40.491825, 36.862152, 40.473892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153923, 37.232941, 40.767418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175735, 36.908741, 40.534142>,  <41.188824, 36.714222, 40.394176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175735, 36.908741, 40.534142>,  <41.153923, 37.232941, 40.767418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175735, 36.908741, 40.534142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560687, 0.508143, -0.653774,
		0.826230, -0.291333, 0.482150,
		0.054535, -0.810504, -0.583190,
		41.192097, 36.665588, 40.359184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826069, 37.215752, 40.441116>,  <41.153923, 37.232941, 40.767418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826069, 37.215752, 40.441116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.598442, 36.983677, 40.208038>,  <41.461864, 36.844433, 40.068192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.598442, 36.983677, 40.208038>,  <41.826069, 37.215752, 40.441116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598442, 36.983677, 40.208038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520806, 0.294068, -0.801426,
		0.636334, -0.759541, 0.134822,
		-0.569069, -0.580191, -0.582699,
		41.427723, 36.809620, 40.033230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199242, 36.721279, 40.127254>,  <41.826069, 37.215752, 40.441116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199242, 36.721279, 40.127254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.888893, 36.888836, 39.938553>,  <41.702682, 36.989368, 39.825333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.888893, 36.888836, 39.938553>,  <42.199242, 36.721279, 40.127254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888893, 36.888836, 39.938553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626416, 0.422599, -0.654991,
		-0.075004, -0.803705, -0.590282,
		-0.775872, 0.418889, -0.471757,
		41.656132, 37.014503, 39.797028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047798, 36.521198, 40.147694>,  <42.199242, 36.721279, 40.127254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047798, 36.521198, 40.147694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.330780, 36.787811, 40.241703>,  <43.500568, 36.947781, 40.298107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.330780, 36.787811, 40.241703>,  <43.047798, 36.521198, 40.147694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330780, 36.787811, 40.241703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580985, -0.359116, -0.730406,
		-0.402440, 0.653276, -0.641305,
		0.707459, 0.666533, 0.235021,
		43.543018, 36.987770, 40.312210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370239, 36.911060, 39.504478>,  <43.047798, 36.521198, 40.147694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370239, 36.911060, 39.504478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.649994, 36.945148, 39.788338>,  <43.817848, 36.965599, 39.958652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.649994, 36.945148, 39.788338>,  <43.370239, 36.911060, 39.504478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649994, 36.945148, 39.788338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714736, -0.078893, -0.694931,
		-0.003235, 0.993234, -0.116085,
		0.699387, 0.085218, 0.709645,
		43.859810, 36.970715, 40.001232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833298, 37.384628, 39.116394>,  <43.370239, 36.911060, 39.504478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833298, 37.384628, 39.116394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.970165, 37.163715, 39.420471>,  <44.052288, 37.031166, 39.602917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.970165, 37.163715, 39.420471>,  <43.833298, 37.384628, 39.116394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970165, 37.163715, 39.420471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697385, -0.392943, -0.599375,
		0.629740, 0.735239, 0.250701,
		0.342173, -0.552285, 0.760197,
		44.072819, 36.998032, 39.648529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562832, 37.216663, 38.934414>,  <43.833298, 37.384628, 39.116394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562832, 37.216663, 38.934414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.471905, 36.963707, 39.230633>,  <44.417347, 36.811932, 39.408363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.471905, 36.963707, 39.230633>,  <44.562832, 37.216663, 38.934414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471905, 36.963707, 39.230633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658711, -0.659938, -0.361362,
		0.717235, 0.405659, 0.566581,
		-0.227319, -0.632395, 0.740543,
		44.403709, 36.773987, 39.452797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127949, 37.241291, 39.392006>,  <44.562832, 37.216663, 38.934414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127949, 37.241291, 39.392006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.917355, 36.908272, 39.323101>,  <44.790997, 36.708462, 39.281757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.917355, 36.908272, 39.323101>,  <45.127949, 37.241291, 39.392006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917355, 36.908272, 39.323101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835300, -0.468794, -0.287238,
		0.158386, -0.295115, 0.942243,
		-0.526486, -0.832550, -0.172259,
		44.759407, 36.658508, 39.271423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367989, 36.609058, 39.734165>,  <45.127949, 37.241291, 39.392006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367989, 36.609058, 39.734165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.174492, 36.504963, 39.399914>,  <45.058395, 36.442505, 39.199364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.174492, 36.504963, 39.399914>,  <45.367989, 36.609058, 39.734165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174492, 36.504963, 39.399914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777012, -0.567114, -0.273193,
		-0.402802, -0.781447, 0.476541,
		-0.483739, -0.260235, -0.835628,
		45.029369, 36.426891, 39.149227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398716, 35.845467, 39.719585>,  <45.367989, 36.609058, 39.734165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398716, 35.845467, 39.719585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.348846, 36.035637, 39.371235>,  <45.318924, 36.149738, 39.162224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.348846, 36.035637, 39.371235>,  <45.398716, 35.845467, 39.719585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348846, 36.035637, 39.371235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939217, -0.226432, -0.258069,
		-0.319886, -0.850118, -0.418297,
		-0.124673, 0.475424, -0.870878,
		45.311443, 36.178265, 39.109970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641663, 35.432377, 39.100273>,  <45.398716, 35.845467, 39.719585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641663, 35.432377, 39.100273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.701912, 35.814686, 38.999226>,  <45.738060, 36.044071, 38.938599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.701912, 35.814686, 38.999226>,  <45.641663, 35.432377, 39.100273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701912, 35.814686, 38.999226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921452, -0.228297, -0.314333,
		-0.358102, -0.185429, -0.915084,
		0.150625, 0.955770, -0.252618,
		45.747101, 36.101418, 38.923439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006695, 35.486099, 38.441818>,  <45.641663, 35.432377, 39.100273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006695, 35.486099, 38.441818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.097031, 35.799213, 38.673763>,  <46.151234, 35.987083, 38.812931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.097031, 35.799213, 38.673763>,  <46.006695, 35.486099, 38.441818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097031, 35.799213, 38.673763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970166, -0.234600, -0.061158,
		0.088162, 0.576375, -0.812416,
		0.225842, 0.782786, 0.579863,
		46.164783, 36.034050, 38.847721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513191, 36.032230, 38.093861>,  <46.006695, 35.486099, 38.441818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513191, 36.032230, 38.093861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.568863, 36.025948, 38.489918>,  <46.602268, 36.022179, 38.727551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.568863, 36.025948, 38.489918>,  <46.513191, 36.032230, 38.093861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568863, 36.025948, 38.489918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990105, -0.015863, -0.139428,
		0.017896, 0.999751, 0.013345,
		0.139181, -0.015708, 0.990142,
		46.610619, 36.021236, 38.786961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258785, 35.706280, 37.407303>,  <46.513191, 36.032230, 38.093861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258785, 35.706280, 37.407303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.648884, 35.618401, 37.397228>,  <46.882942, 35.565674, 37.391186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.648884, 35.618401, 37.397228>,  <46.258785, 35.706280, 37.407303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648884, 35.618401, 37.397228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072261, 0.424248, -0.902658,
		0.208994, 0.878492, 0.429620,
		0.975244, -0.219695, -0.025184,
		46.941456, 35.552494, 37.389671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621429, 35.989437, 36.836052>,  <46.258785, 35.706280, 37.407303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621429, 35.989437, 36.836052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.953140, 35.818588, 36.980202>,  <47.152168, 35.716080, 37.066692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.953140, 35.818588, 36.980202>,  <46.621429, 35.989437, 36.836052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953140, 35.818588, 36.980202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474451, 0.197362, -0.857872,
		0.295294, 0.882391, 0.366316,
		0.829276, -0.427123, 0.360371,
		47.201923, 35.690453, 37.088314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183331, 36.454403, 36.675220>,  <46.621429, 35.989437, 36.836052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183331, 36.454403, 36.675220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.279686, 36.066399, 36.688129>,  <47.337502, 35.833595, 36.695877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.279686, 36.066399, 36.688129>,  <47.183331, 36.454403, 36.675220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.279686, 36.066399, 36.688129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482136, 0.090741, -0.871385,
		0.842328, 0.225471, 0.489538,
		0.240893, -0.970015, 0.032274,
		47.351955, 35.775394, 36.697811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836994, 36.140911, 36.332737>,  <47.183331, 36.454403, 36.675220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836994, 36.140911, 36.332737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.552162, 35.860916, 36.354527>,  <47.381264, 35.692921, 36.367599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.552162, 35.860916, 36.354527>,  <47.836994, 36.140911, 36.332737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552162, 35.860916, 36.354527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228416, -0.304324, -0.924777,
		0.663907, -0.646071, 0.376590,
		-0.712077, -0.699986, 0.054470,
		47.338539, 35.650921, 36.370869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.072670, 35.542435, 36.139538>,  <47.836994, 36.140911, 36.332737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.072670, 35.542435, 36.139538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.678944, 35.534637, 36.069397>,  <47.442707, 35.529957, 36.027313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.678944, 35.534637, 36.069397>,  <48.072670, 35.542435, 36.139538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.678944, 35.534637, 36.069397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172613, -0.312141, -0.934223,
		-0.036520, -0.949836, 0.310609,
		-0.984313, -0.019497, -0.175353,
		47.383652, 35.528790, 36.016792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.918106, 34.867702, 36.144043>,  <48.072670, 35.542435, 36.139538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.918106, 34.867702, 36.144043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.716175, 35.122116, 35.910599>,  <47.595016, 35.274765, 35.770531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.716175, 35.122116, 35.910599>,  <47.918106, 34.867702, 36.144043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.716175, 35.122116, 35.910599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550552, -0.283491, -0.785191,
		-0.664861, -0.717696, -0.207058,
		-0.504830, 0.636039, -0.583611,
		47.564728, 35.312927, 35.735516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.621727, 34.536972, 35.555531>,  <47.918106, 34.867702, 36.144043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.621727, 34.536972, 35.555531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.711151, 34.920216, 35.483925>,  <47.764805, 35.150162, 35.440960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.711151, 34.920216, 35.483925>,  <47.621727, 34.536972, 35.555531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.711151, 34.920216, 35.483925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593514, -0.279501, -0.754732,
		-0.773151, 0.062479, -0.631137,
		0.223558, 0.958111, -0.179014,
		47.778217, 35.207649, 35.430222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.345947, 34.953693, 34.962112>,  <47.621727, 34.536972, 35.555531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.345947, 34.953693, 34.962112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.710323, 35.094063, 35.048859>,  <47.928951, 35.178284, 35.100906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.710323, 35.094063, 35.048859>,  <47.345947, 34.953693, 34.962112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710323, 35.094063, 35.048859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340392, -0.342418, -0.875719,
		-0.233054, 0.871551, -0.431376,
		0.910944, 0.350927, 0.216867,
		47.983608, 35.199341, 35.113918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.250010, 31.571102, 54.272114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.604855, 31.647499, 54.440186>,  <30.817762, 31.693338, 54.541031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.604855, 31.647499, 54.440186>,  <30.250010, 31.571102, 54.272114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604855, 31.647499, 54.440186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460115, -0.294121, -0.837727,
		-0.036416, 0.936490, -0.348797,
		0.887112, 0.190994, 0.420183,
		30.870989, 31.704798, 54.566242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630913, 31.894415, 53.740089>,  <30.250010, 31.571102, 54.272114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630913, 31.894415, 53.740089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.902275, 31.785370, 54.012985>,  <31.065092, 31.719942, 54.176723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.902275, 31.785370, 54.012985>,  <30.630913, 31.894415, 53.740089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902275, 31.785370, 54.012985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675817, -0.132658, -0.725033,
		0.288159, 0.952934, 0.094241,
		0.678407, -0.272614, 0.682236,
		31.105797, 31.703585, 54.217655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326262, 32.064545, 53.454746>,  <30.630913, 31.894415, 53.740089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326262, 32.064545, 53.454746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.446730, 31.846838, 53.767941>,  <31.519011, 31.716213, 53.955856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.446730, 31.846838, 53.767941>,  <31.326262, 32.064545, 53.454746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446730, 31.846838, 53.767941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843924, -0.230144, -0.484589,
		0.443946, 0.806725, 0.390009,
		0.301171, -0.544269, 0.782986,
		31.537081, 31.683558, 54.002838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059139, 32.192543, 53.591557>,  <31.326262, 32.064545, 53.454746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059139, 32.192543, 53.591557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.960602, 31.828894, 53.725903>,  <31.901480, 31.610704, 53.806511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.960602, 31.828894, 53.725903>,  <32.059139, 32.192543, 53.591557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960602, 31.828894, 53.725903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739759, -0.400269, -0.540870,
		0.626155, 0.115218, 0.771139,
		-0.246345, -0.909126, 0.335864,
		31.886698, 31.556156, 53.826660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773552, 31.946594, 53.776901>,  <32.059139, 32.192543, 53.591557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773552, 31.946594, 53.776901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.536480, 31.624891, 53.794334>,  <32.394238, 31.431870, 53.804794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.536480, 31.624891, 53.794334>,  <32.773552, 31.946594, 53.776901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536480, 31.624891, 53.794334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772961, -0.583163, -0.249904,
		0.226403, -0.114425, 0.967289,
		-0.592683, -0.804256, 0.043584,
		32.358677, 31.383614, 53.807411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153057, 31.414515, 54.125683>,  <32.773552, 31.946594, 53.776901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153057, 31.414515, 54.125683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.886520, 31.216543, 53.902603>,  <32.726597, 31.097759, 53.768753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.886520, 31.216543, 53.902603>,  <33.153057, 31.414515, 54.125683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886520, 31.216543, 53.902603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745388, -0.422524, -0.515626,
		0.019556, -0.759288, 0.650461,
		-0.666344, -0.494930, -0.557701,
		32.686619, 31.068064, 53.735294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477882, 30.797672, 54.027939>,  <33.153057, 31.414515, 54.125683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477882, 30.797672, 54.027939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.199451, 30.853033, 53.746140>,  <33.032394, 30.886250, 53.577061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.199451, 30.853033, 53.746140>,  <33.477882, 30.797672, 54.027939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199451, 30.853033, 53.746140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650823, -0.292696, -0.700542,
		-0.303171, -0.946135, 0.113653,
		-0.696072, 0.138416, -0.704503,
		32.990627, 30.894554, 53.534790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456291, 30.160608, 53.537174>,  <33.477882, 30.797672, 54.027939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456291, 30.160608, 53.537174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.299072, 30.471397, 53.340473>,  <33.204739, 30.657871, 53.222454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.299072, 30.471397, 53.340473>,  <33.456291, 30.160608, 53.537174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299072, 30.471397, 53.340473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679650, -0.114730, -0.724509,
		-0.619344, -0.618989, -0.482976,
		-0.393051, 0.776974, -0.491753,
		33.181156, 30.704491, 53.192947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319180, 29.948444, 52.905628>,  <33.456291, 30.160608, 53.537174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319180, 29.948444, 52.905628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.323792, 30.340601, 52.826942>,  <33.326561, 30.575895, 52.779732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.323792, 30.340601, 52.826942>,  <33.319180, 29.948444, 52.905628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323792, 30.340601, 52.826942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539036, -0.171790, -0.824578,
		-0.842204, -0.096524, -0.530449,
		0.011535, 0.980393, -0.196712,
		33.327251, 30.634720, 52.767929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037037, 29.987087, 52.245678>,  <33.319180, 29.948444, 52.905628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037037, 29.987087, 52.245678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.242695, 30.327547, 52.288006>,  <33.366089, 30.531822, 52.313404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.242695, 30.327547, 52.288006>,  <33.037037, 29.987087, 52.245678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242695, 30.327547, 52.288006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442284, -0.157390, -0.882957,
		-0.734872, 0.500773, -0.457372,
		0.514147, 0.851149, 0.105823,
		33.396938, 30.582891, 52.319752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883968, 30.250772, 51.666046>,  <33.037037, 29.987087, 52.245678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883968, 30.250772, 51.666046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.182343, 30.488308, 51.786667>,  <33.361366, 30.630829, 51.859039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.182343, 30.488308, 51.786667>,  <32.883968, 30.250772, 51.666046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182343, 30.488308, 51.786667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411038, -0.054219, -0.910004,
		-0.524048, 0.802754, -0.284535,
		0.745936, 0.593841, 0.301549,
		33.406124, 30.666460, 51.877132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906586, 30.882563, 51.217815>,  <32.883968, 30.250772, 51.666046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906586, 30.882563, 51.217815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.268250, 30.822926, 51.377945>,  <33.485249, 30.787144, 51.474022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.268250, 30.822926, 51.377945>,  <32.906586, 30.882563, 51.217815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268250, 30.822926, 51.377945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410041, 0.040072, -0.911187,
		0.119808, 0.988011, 0.097365,
		0.904164, -0.149091, 0.400324,
		33.539497, 30.778198, 51.498043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300201, 31.493422, 51.004040>,  <32.906586, 30.882563, 51.217815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300201, 31.493422, 51.004040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.531345, 31.179117, 51.092274>,  <33.670033, 30.990534, 51.145214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.531345, 31.179117, 51.092274>,  <33.300201, 31.493422, 51.004040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531345, 31.179117, 51.092274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362274, 0.004762, -0.932059,
		0.731325, 0.618512, 0.287413,
		0.577859, -0.785761, 0.220588,
		33.704704, 30.943390, 51.158451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806477, 31.670090, 50.575695>,  <33.300201, 31.493422, 51.004040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806477, 31.670090, 50.575695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.912380, 31.300884, 50.687374>,  <33.975922, 31.079361, 50.754383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.912380, 31.300884, 50.687374>,  <33.806477, 31.670090, 50.575695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912380, 31.300884, 50.687374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455886, -0.135328, -0.879690,
		0.849747, 0.360189, 0.384959,
		0.264759, -0.923011, 0.279200,
		33.991806, 31.023981, 50.771133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477131, 31.664724, 50.497471>,  <33.806477, 31.670090, 50.575695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477131, 31.664724, 50.497471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.375610, 31.279915, 50.457287>,  <34.314697, 31.049028, 50.433174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.375610, 31.279915, 50.457287>,  <34.477131, 31.664724, 50.497471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375610, 31.279915, 50.457287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479533, -0.034942, -0.876828,
		0.840021, -0.270712, 0.470191,
		-0.253797, -0.962026, -0.100463,
		34.299473, 30.991306, 50.427147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062763, 31.327074, 50.335335>,  <34.477131, 31.664724, 50.497471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062763, 31.327074, 50.335335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.785984, 31.065418, 50.213150>,  <34.619915, 30.908424, 50.139839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.785984, 31.065418, 50.213150>,  <35.062763, 31.327074, 50.335335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785984, 31.065418, 50.213150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542316, -0.191669, -0.818020,
		0.476552, -0.731685, 0.487376,
		-0.691947, -0.654141, -0.305464,
		34.578400, 30.869175, 50.121510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386787, 30.790052, 50.006767>,  <35.062763, 31.327074, 50.335335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386787, 30.790052, 50.006767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.003887, 30.770945, 49.892651>,  <34.774147, 30.759480, 49.824181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.003887, 30.770945, 49.892651>,  <35.386787, 30.790052, 50.006767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003887, 30.770945, 49.892651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287790, -0.057816, -0.955947,
		0.029173, -0.997184, 0.069092,
		-0.957249, -0.047772, -0.285293,
		34.716713, 30.756613, 49.807064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393112, 30.280581, 49.449890>,  <35.386787, 30.790052, 50.006767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393112, 30.280581, 49.449890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.066845, 30.504425, 49.391209>,  <34.871086, 30.638731, 49.355999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.066845, 30.504425, 49.391209>,  <35.393112, 30.280581, 49.449890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066845, 30.504425, 49.391209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260586, 0.128993, -0.956795,
		-0.516508, -0.818656, -0.251042,
		-0.815669, 0.559609, -0.146704,
		34.822144, 30.672308, 49.347198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068783, 30.028633, 48.799980>,  <35.393112, 30.280581, 49.449890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068783, 30.028633, 48.799980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.927071, 30.398130, 48.858196>,  <34.842045, 30.619829, 48.893127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.927071, 30.398130, 48.858196>,  <35.068783, 30.028633, 48.799980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927071, 30.398130, 48.858196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036209, 0.169074, -0.984938,
		-0.934438, -0.343674, -0.093348,
		-0.354281, 0.923743, 0.145545,
		34.820786, 30.675253, 48.901859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670425, 30.174173, 48.218578>,  <35.068783, 30.028633, 48.799980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670425, 30.174173, 48.218578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.743210, 30.529781, 48.386642>,  <34.786880, 30.743147, 48.487480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.743210, 30.529781, 48.386642>,  <34.670425, 30.174173, 48.218578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743210, 30.529781, 48.386642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023254, 0.423283, -0.905699,
		-0.983031, 0.174572, 0.056347,
		0.181960, 0.889020, 0.420160,
		34.797798, 30.796488, 48.512691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296738, 30.686085, 47.764156>,  <34.670425, 30.174173, 48.218578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296738, 30.686085, 47.764156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.577530, 30.881018, 47.971897>,  <34.746006, 30.997978, 48.096542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.577530, 30.881018, 47.971897>,  <34.296738, 30.686085, 47.764156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577530, 30.881018, 47.971897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329250, 0.424561, -0.843411,
		-0.631519, 0.763056, 0.137580,
		0.701981, 0.487332, 0.519355,
		34.788124, 31.027218, 48.127705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279079, 31.363802, 47.622734>,  <34.296738, 30.686085, 47.764156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279079, 31.363802, 47.622734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.656288, 31.272419, 47.719494>,  <34.882614, 31.217588, 47.777550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.656288, 31.272419, 47.719494>,  <34.279079, 31.363802, 47.622734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656288, 31.272419, 47.719494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330581, 0.560785, -0.759102,
		0.037767, 0.795819, 0.604356,
		0.943022, -0.228457, 0.241904,
		34.939194, 31.203882, 47.792065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837608, 31.729620, 47.035721>,  <34.279079, 31.363802, 47.622734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837608, 31.729620, 47.035721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.719875, 32.036510, 46.807781>,  <33.649235, 32.220646, 46.671017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.719875, 32.036510, 46.807781>,  <33.837608, 31.729620, 47.035721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719875, 32.036510, 46.807781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923871, -0.075810, 0.375120,
		0.244603, 0.636878, 0.731134,
		-0.294333, 0.767229, -0.569850,
		33.631577, 32.266678, 46.636826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593117, 32.179722, 47.502769>,  <33.837608, 31.729620, 47.035721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593117, 32.179722, 47.502769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434631, 32.302917, 47.156784>,  <33.339539, 32.376835, 46.949192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434631, 32.302917, 47.156784>,  <33.593117, 32.179722, 47.502769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434631, 32.302917, 47.156784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866349, 0.186573, 0.463282,
		0.304063, 0.932918, 0.192900,
		-0.396214, 0.307986, -0.864962,
		33.315765, 32.395313, 46.897297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297871, 32.738888, 47.693745>,  <33.593117, 32.179722, 47.502769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297871, 32.738888, 47.693745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.124443, 32.601585, 47.360470>,  <33.020386, 32.519203, 47.160507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.124443, 32.601585, 47.360470>,  <33.297871, 32.738888, 47.693745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124443, 32.601585, 47.360470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892162, 0.293575, 0.343310,
		0.126759, 0.892183, -0.433523,
		-0.433566, -0.343255, -0.833185,
		32.994373, 32.498608, 47.110516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837730, 33.261673, 47.415684>,  <33.297871, 32.738888, 47.693745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837730, 33.261673, 47.415684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.713516, 32.896694, 47.309090>,  <32.638988, 32.677708, 47.245132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.713516, 32.896694, 47.309090>,  <32.837730, 33.261673, 47.415684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713516, 32.896694, 47.309090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840741, 0.132833, 0.524891,
		-0.443534, 0.387046, -0.808377,
		-0.310535, -0.912442, -0.266489,
		32.620354, 32.622963, 47.229141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153164, 33.383255, 47.360138>,  <32.837730, 33.261673, 47.415684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153164, 33.383255, 47.360138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.164597, 32.983425, 47.362591>,  <32.171455, 32.743526, 47.364063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.164597, 32.983425, 47.362591>,  <32.153164, 33.383255, 47.360138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164597, 32.983425, 47.362591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752746, -0.017487, 0.658079,
		-0.657690, -0.023422, -0.752924,
		0.028580, -0.999573, 0.006130,
		32.173172, 32.683552, 47.364429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419724, 33.156277, 47.347996>,  <32.153164, 33.383255, 47.360138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419724, 33.156277, 47.347996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.595324, 32.827682, 47.493565>,  <31.700684, 32.630527, 47.580906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.595324, 32.827682, 47.493565>,  <31.419724, 33.156277, 47.347996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595324, 32.827682, 47.493565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652766, -0.013284, 0.757444,
		-0.617393, -0.570077, -0.542068,
		0.439002, -0.821484, 0.363925,
		31.727024, 32.581238, 47.602741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869030, 32.488792, 47.383976>,  <31.419724, 33.156277, 47.347996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869030, 32.488792, 47.383976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.180458, 32.431782, 47.628441>,  <31.367315, 32.397575, 47.775120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.180458, 32.431782, 47.628441>,  <30.869030, 32.488792, 47.383976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180458, 32.431782, 47.628441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624497, -0.079860, 0.776934,
		-0.061912, -0.986566, -0.151173,
		0.778569, -0.142509, 0.611163,
		31.414028, 32.389023, 47.811790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589378, 32.106941, 47.820415>,  <30.869030, 32.488792, 47.383976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589378, 32.106941, 47.820415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.932079, 32.196762, 48.006126>,  <31.137699, 32.250652, 48.117554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.932079, 32.196762, 48.006126>,  <30.589378, 32.106941, 47.820415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932079, 32.196762, 48.006126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485832, 0.049338, 0.872659,
		0.173051, -0.973212, 0.151365,
		0.856750, 0.224552, 0.464279,
		31.189104, 32.264126, 48.145409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730085, 31.576654, 48.390476>,  <30.589378, 32.106941, 47.820415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730085, 31.576654, 48.390476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.922186, 31.912338, 48.492523>,  <31.037447, 32.113750, 48.553753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.922186, 31.912338, 48.492523>,  <30.730085, 31.576654, 48.390476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922186, 31.912338, 48.492523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499172, 0.022334, 0.866215,
		0.721239, -0.543348, 0.429636,
		0.480252, 0.839210, 0.255116,
		31.066261, 32.164101, 48.569057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007996, 31.420347, 48.991756>,  <30.730085, 31.576654, 48.390476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007996, 31.420347, 48.991756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.973642, 31.818802, 48.999134>,  <30.953030, 32.057873, 49.003559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.973642, 31.818802, 48.999134>,  <31.007996, 31.420347, 48.991756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973642, 31.818802, 48.999134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436893, -0.054290, 0.897874,
		0.895404, 0.069057, 0.439867,
		-0.085885, 0.996135, 0.018441,
		30.947876, 32.117641, 49.004665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082680, 31.596809, 49.726616>,  <31.007996, 31.420347, 48.991756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082680, 31.596809, 49.726616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.920773, 31.929564, 49.574760>,  <30.823627, 32.129215, 49.483646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.920773, 31.929564, 49.574760>,  <31.082680, 31.596809, 49.726616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920773, 31.929564, 49.574760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529436, 0.125305, 0.839045,
		0.745561, 0.540615, 0.389711,
		-0.404767, 0.831886, -0.379643,
		30.799343, 32.179131, 49.460869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389605, 32.172302, 50.264832>,  <31.082680, 31.596809, 49.726616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389605, 32.172302, 50.264832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.079147, 32.289017, 50.041241>,  <30.892872, 32.359047, 49.907085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.079147, 32.289017, 50.041241>,  <31.389605, 32.172302, 50.264832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079147, 32.289017, 50.041241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443152, 0.378227, 0.812749,
		0.448571, 0.878524, -0.164253,
		-0.776145, 0.291786, -0.558982,
		30.846304, 32.376553, 49.873547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172464, 32.913269, 50.469238>,  <31.389605, 32.172302, 50.264832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172464, 32.913269, 50.469238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.844120, 32.761436, 50.298542>,  <30.647114, 32.670338, 50.196125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.844120, 32.761436, 50.298542>,  <31.172464, 32.913269, 50.469238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844120, 32.761436, 50.298542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564084, 0.421837, 0.709833,
		-0.089427, 0.823389, -0.560386,
		-0.820861, -0.379583, -0.426737,
		30.597862, 32.647560, 50.170521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643108, 33.369694, 50.667866>,  <31.172464, 32.913269, 50.469238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643108, 33.369694, 50.667866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.396774, 33.076729, 50.551720>,  <30.248974, 32.900948, 50.482033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.396774, 33.076729, 50.551720>,  <30.643108, 33.369694, 50.667866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396774, 33.076729, 50.551720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719049, 0.371834, 0.587118,
		-0.322047, 0.570356, -0.755632,
		-0.615836, -0.732416, -0.290366,
		30.212023, 32.857002, 50.464611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935080, 33.726254, 50.680523>,  <30.643108, 33.369694, 50.667866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935080, 33.726254, 50.680523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.846376, 33.337334, 50.650959>,  <29.793154, 33.103981, 50.633221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.846376, 33.337334, 50.650959>,  <29.935080, 33.726254, 50.680523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846376, 33.337334, 50.650959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617808, 0.081455, 0.782099,
		-0.754411, 0.219100, -0.618755,
		-0.221758, -0.972296, -0.073912,
		29.779848, 33.045647, 50.628784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136806, 33.557884, 50.626469>,  <29.935080, 33.726254, 50.680523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136806, 33.557884, 50.626469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.325256, 33.239693, 50.778912>,  <29.438328, 33.048779, 50.870377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.325256, 33.239693, 50.778912>,  <29.136806, 33.557884, 50.626469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325256, 33.239693, 50.778912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561956, 0.062344, 0.824815,
		-0.679886, -0.602760, -0.417654,
		0.471127, -0.795483, 0.381111,
		29.466595, 33.001049, 50.893246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580938, 33.162609, 50.758980>,  <29.136806, 33.557884, 50.626469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580938, 33.162609, 50.758980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.888031, 33.027302, 50.976665>,  <29.072287, 32.946117, 51.107277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.888031, 33.027302, 50.976665>,  <28.580938, 33.162609, 50.758980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888031, 33.027302, 50.976665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563603, 0.047604, 0.824673,
		-0.304867, -0.939845, -0.154101,
		0.767729, -0.338267, 0.544212,
		29.118349, 32.925823, 51.139931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230406, 32.669228, 51.276451>,  <28.580938, 33.162609, 50.758980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230406, 32.669228, 51.276451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.602188, 32.697132, 51.421364>,  <28.825256, 32.713875, 51.508312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.602188, 32.697132, 51.421364>,  <28.230406, 32.669228, 51.276451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602188, 32.697132, 51.421364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368338, 0.119588, 0.921968,
		0.020992, -0.990370, 0.136847,
		0.929455, 0.069760, 0.362281,
		28.881025, 32.718060, 51.530048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.796785, 31.748457, 52.218327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908911, 32.130718, 52.182220>,  <28.976187, 32.360077, 52.160557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908911, 32.130718, 52.182220>,  <28.796785, 31.748457, 52.218327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908911, 32.130718, 52.182220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096168, 0.121519, 0.987919,
		0.955079, -0.268246, 0.125967,
		0.280313, 0.955655, -0.090264,
		28.993004, 32.417416, 52.155140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148598, 31.751041, 52.764771>,  <28.796785, 31.748457, 52.218327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148598, 31.751041, 52.764771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092590, 32.135262, 52.668655>,  <29.058985, 32.365795, 52.610985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092590, 32.135262, 52.668655>,  <29.148598, 31.751041, 52.764771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092590, 32.135262, 52.668655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076274, 0.231496, 0.969841,
		0.987206, 0.154125, 0.040851,
		-0.140020, 0.960549, -0.240290,
		29.050585, 32.423428, 52.596569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615381, 32.153362, 53.211319>,  <29.148598, 31.751041, 52.764771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615381, 32.153362, 53.211319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333303, 32.416256, 53.104935>,  <29.164057, 32.573994, 53.041103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333303, 32.416256, 53.104935>,  <29.615381, 32.153362, 53.211319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333303, 32.416256, 53.104935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026962, 0.349990, 0.936365,
		0.708501, 0.667491, -0.229091,
		-0.705195, 0.657239, -0.265965,
		29.121744, 32.613426, 53.025146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785398, 32.555599, 53.679161>,  <29.615381, 32.153362, 53.211319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785398, 32.555599, 53.679161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420147, 32.676189, 53.569393>,  <29.200996, 32.748543, 53.503532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420147, 32.676189, 53.569393>,  <29.785398, 32.555599, 53.679161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420147, 32.676189, 53.569393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035386, 0.611994, 0.790070,
		0.406134, 0.731146, -0.548161,
		-0.913128, 0.301478, -0.274424,
		29.146208, 32.766632, 53.487064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824295, 33.282093, 53.776600>,  <29.785398, 32.555599, 53.679161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824295, 33.282093, 53.776600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436991, 33.182686, 53.787247>,  <29.204607, 33.123043, 53.793633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436991, 33.182686, 53.787247>,  <29.824295, 33.282093, 53.776600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436991, 33.182686, 53.787247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121724, 0.561886, 0.818210,
		-0.218292, 0.789002, -0.574304,
		-0.968262, -0.248515, 0.026614,
		29.146511, 33.108131, 53.795231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570604, 33.808746, 54.151443>,  <29.824295, 33.282093, 53.776600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570604, 33.808746, 54.151443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260990, 33.557133, 54.122631>,  <29.075222, 33.406166, 54.105343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260990, 33.557133, 54.122631>,  <29.570604, 33.808746, 54.151443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260990, 33.557133, 54.122631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503638, 0.542775, 0.672119,
		-0.383689, 0.556520, -0.736931,
		-0.774036, -0.629031, -0.072028,
		29.028780, 33.368423, 54.101021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006996, 34.213917, 54.073521>,  <29.570604, 33.808746, 54.151443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006996, 34.213917, 54.073521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871437, 33.869686, 54.225601>,  <28.790102, 33.663147, 54.316849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871437, 33.869686, 54.225601>,  <29.006996, 34.213917, 54.073521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871437, 33.869686, 54.225601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463467, 0.504387, 0.728554,
		-0.818747, 0.070694, -0.569785,
		-0.338897, -0.860579, 0.380201,
		28.769768, 33.611511, 54.339661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339056, 34.385624, 54.298298>,  <29.006996, 34.213917, 54.073521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339056, 34.385624, 54.298298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470362, 34.085823, 54.528252>,  <28.549145, 33.905945, 54.666225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470362, 34.085823, 54.528252>,  <28.339056, 34.385624, 54.298298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470362, 34.085823, 54.528252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399933, 0.441088, 0.803427,
		-0.855743, -0.493653, -0.154955,
		0.328265, -0.749498, 0.574886,
		28.568842, 33.860973, 54.700718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711359, 34.159714, 54.685097>,  <28.339056, 34.385624, 54.298298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711359, 34.159714, 54.685097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025827, 34.019253, 54.888519>,  <28.214508, 33.934978, 55.010574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025827, 34.019253, 54.888519>,  <27.711359, 34.159714, 54.685097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025827, 34.019253, 54.888519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412434, 0.314737, 0.854891,
		-0.460256, -0.881836, 0.102611,
		0.786170, -0.351149, 0.508559,
		28.261679, 33.913910, 55.041088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412254, 33.814915, 55.337486>,  <27.711359, 34.159714, 54.685097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412254, 33.814915, 55.337486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793583, 33.904610, 55.418381>,  <28.022379, 33.958427, 55.466919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793583, 33.904610, 55.418381>,  <27.412254, 33.814915, 55.337486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793583, 33.904610, 55.418381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240319, 0.157879, 0.957769,
		0.182838, -0.961661, 0.204397,
		0.953319, 0.224237, 0.202239,
		28.079578, 33.971878, 55.479053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511236, 33.343998, 55.848354>,  <27.412254, 33.814915, 55.337486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511236, 33.343998, 55.848354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803896, 33.616158, 55.865055>,  <27.979492, 33.779453, 55.875076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803896, 33.616158, 55.865055>,  <27.511236, 33.343998, 55.848354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803896, 33.616158, 55.865055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236683, 0.196120, 0.951587,
		0.639274, -0.706109, 0.304530,
		0.731649, 0.680402, 0.041750,
		28.023392, 33.820278, 55.877579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773079, 33.280842, 56.522110>,  <27.511236, 33.343998, 55.848354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773079, 33.280842, 56.522110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924337, 33.634541, 56.412479>,  <28.015093, 33.846760, 56.346703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924337, 33.634541, 56.412479>,  <27.773079, 33.280842, 56.522110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924337, 33.634541, 56.412479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125629, 0.342336, 0.931141,
		0.917182, -0.317676, 0.240540,
		0.378147, 0.884244, -0.274076,
		28.037781, 33.899815, 56.330257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248392, 33.486820, 56.956051>,  <27.773079, 33.280842, 56.522110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248392, 33.486820, 56.956051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127056, 33.833832, 56.798382>,  <28.054255, 34.042038, 56.703781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127056, 33.833832, 56.798382>,  <28.248392, 33.486820, 56.956051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127056, 33.833832, 56.798382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238784, 0.331257, 0.912826,
		0.922479, 0.371018, 0.106669,
		-0.303340, 0.867534, -0.394170,
		28.036055, 34.094093, 56.680130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434021, 33.949707, 57.367741>,  <28.248392, 33.486820, 56.956051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434021, 33.949707, 57.367741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162333, 34.162083, 57.165054>,  <27.999319, 34.289509, 57.043442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162333, 34.162083, 57.165054>,  <28.434021, 33.949707, 57.367741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162333, 34.162083, 57.165054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343747, 0.379867, 0.858801,
		0.648456, 0.757498, -0.075504,
		-0.679222, 0.530941, -0.506715,
		27.958567, 34.321365, 57.013039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506727, 34.490391, 57.669189>,  <28.434021, 33.949707, 57.367741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506727, 34.490391, 57.669189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152534, 34.556435, 57.495449>,  <27.940018, 34.596062, 57.391205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152534, 34.556435, 57.495449>,  <28.506727, 34.490391, 57.669189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152534, 34.556435, 57.495449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359227, 0.349685, 0.865261,
		0.294747, 0.922204, -0.250329,
		-0.885483, 0.165108, -0.434349,
		27.886890, 34.605968, 57.365143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365204, 35.170235, 57.798325>,  <28.506727, 34.490391, 57.669189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365204, 35.170235, 57.798325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007698, 35.011330, 57.715023>,  <27.793196, 34.915985, 57.665043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007698, 35.011330, 57.715023>,  <28.365204, 35.170235, 57.798325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007698, 35.011330, 57.715023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358981, 0.355176, 0.863124,
		-0.268924, 0.846186, -0.460054,
		-0.893763, -0.397265, -0.208250,
		27.739569, 34.892151, 57.652550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975325, 35.736874, 57.908913>,  <28.365204, 35.170235, 57.798325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975325, 35.736874, 57.908913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739391, 35.416176, 57.947510>,  <27.597832, 35.223759, 57.970669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739391, 35.416176, 57.947510>,  <27.975325, 35.736874, 57.908913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739391, 35.416176, 57.947510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494381, 0.453001, 0.741874,
		-0.638503, 0.389876, -0.663560,
		-0.589832, -0.801740, 0.096495,
		27.562441, 35.175655, 57.976460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323803, 35.984840, 57.767155>,  <27.975325, 35.736874, 57.908913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323803, 35.984840, 57.767155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299311, 35.660618, 58.000137>,  <27.284615, 35.466084, 58.139927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299311, 35.660618, 58.000137>,  <27.323803, 35.984840, 57.767155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299311, 35.660618, 58.000137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608821, 0.492753, 0.621717,
		-0.790941, -0.316543, -0.523653,
		-0.061231, -0.810552, 0.582457,
		27.280941, 35.417454, 58.174873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620874, 36.039661, 58.044144>,  <27.323803, 35.984840, 57.767155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620874, 36.039661, 58.044144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801970, 35.794006, 58.302715>,  <26.910627, 35.646614, 58.457859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801970, 35.794006, 58.302715>,  <26.620874, 36.039661, 58.044144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801970, 35.794006, 58.302715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531775, 0.395958, 0.748621,
		-0.715712, -0.682681, -0.147318,
		0.452738, -0.614137, 0.646424,
		26.937790, 35.609764, 58.496643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071489, 35.702602, 58.362900>,  <26.620874, 36.039661, 58.044144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071489, 35.702602, 58.362900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386135, 35.670399, 58.607769>,  <26.574923, 35.651077, 58.754692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386135, 35.670399, 58.607769>,  <26.071489, 35.702602, 58.362900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386135, 35.670399, 58.607769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558538, 0.329846, 0.761076,
		-0.263198, -0.940595, 0.214493,
		0.786614, -0.080512, 0.612173,
		26.622120, 35.646244, 58.791420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741997, 35.450771, 59.070068>,  <26.071489, 35.702602, 58.362900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741997, 35.450771, 59.070068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112814, 35.555611, 59.177322>,  <26.335304, 35.618515, 59.241676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112814, 35.555611, 59.177322>,  <25.741997, 35.450771, 59.070068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112814, 35.555611, 59.177322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356664, 0.395760, 0.846265,
		0.115691, -0.880157, 0.460368,
		0.927042, 0.262102, 0.268135,
		26.390926, 35.634243, 59.257763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869831, 35.010540, 59.629906>,  <25.741997, 35.450771, 59.070068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869831, 35.010540, 59.629906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078505, 35.351151, 59.608929>,  <26.203709, 35.555515, 59.596340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078505, 35.351151, 59.608929>,  <25.869831, 35.010540, 59.629906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078505, 35.351151, 59.608929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409131, 0.303650, 0.860470,
		0.748638, -0.427436, 0.506794,
		0.521683, 0.851525, -0.052447,
		26.235010, 35.606609, 59.593193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474010, 35.050915, 60.048996>,  <25.869831, 35.010540, 59.629906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474010, 35.050915, 60.048996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319111, 35.416157, 59.997959>,  <26.226171, 35.635303, 59.967339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319111, 35.416157, 59.997959>,  <26.474010, 35.050915, 60.048996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319111, 35.416157, 59.997959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086250, 0.101900, 0.991049,
		0.917932, 0.394787, 0.039294,
		-0.387249, 0.913104, -0.127587,
		26.202936, 35.690086, 59.959682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771088, 34.661331, 60.735935>,  <26.474010, 35.050915, 60.048996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771088, 34.661331, 60.735935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653521, 35.041660, 60.696861>,  <26.582979, 35.269859, 60.673416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653521, 35.041660, 60.696861>,  <26.771088, 34.661331, 60.735935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653521, 35.041660, 60.696861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850075, 0.306757, 0.428104,
		0.437017, 0.042788, -0.898435,
		-0.293919, 0.950826, -0.097685,
		26.565346, 35.326908, 60.667557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226107, 34.025906, 60.882473>,  <26.771088, 34.661331, 60.735935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226107, 34.025906, 60.882473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585630, 34.110004, 61.036324>,  <27.801346, 34.160465, 61.128632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585630, 34.110004, 61.036324>,  <27.226107, 34.025906, 60.882473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585630, 34.110004, 61.036324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438336, -0.429302, -0.789659,
		-0.000904, 0.878348, -0.478020,
		0.898811, 0.210248, 0.384624,
		27.855274, 34.173080, 61.151711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684580, 34.434788, 60.371792>,  <27.226107, 34.025906, 60.882473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684580, 34.434788, 60.371792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925095, 34.265957, 60.643173>,  <28.069403, 34.164658, 60.806004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925095, 34.265957, 60.643173>,  <27.684580, 34.434788, 60.371792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925095, 34.265957, 60.643173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651868, -0.231912, -0.722001,
		0.462084, 0.876393, 0.135694,
		0.601288, -0.422080, 0.678455,
		28.105480, 34.139332, 60.846710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294630, 34.664883, 60.236469>,  <27.684580, 34.434788, 60.371792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294630, 34.664883, 60.236469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398880, 34.339561, 60.444550>,  <28.461430, 34.144367, 60.569397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398880, 34.339561, 60.444550>,  <28.294630, 34.664883, 60.236469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398880, 34.339561, 60.444550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738280, -0.179308, -0.650224,
		0.622107, 0.553518, 0.553715,
		0.260626, -0.813306, 0.520200,
		28.477068, 34.095570, 60.600609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926025, 34.768696, 60.294224>,  <28.294630, 34.664883, 60.236469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926025, 34.768696, 60.294224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821722, 34.383179, 60.316517>,  <28.759140, 34.151867, 60.329895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821722, 34.383179, 60.316517>,  <28.926025, 34.768696, 60.294224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821722, 34.383179, 60.316517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605506, -0.208241, -0.768114,
		0.751909, -0.166544, 0.637883,
		-0.260759, -0.963794, 0.055735,
		28.743494, 34.094040, 60.333237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536985, 34.373150, 60.291626>,  <28.926025, 34.768696, 60.294224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536985, 34.373150, 60.291626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253397, 34.112228, 60.184399>,  <29.083244, 33.955677, 60.120064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253397, 34.112228, 60.184399>,  <29.536985, 34.373150, 60.291626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253397, 34.112228, 60.184399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638639, -0.432588, -0.636403,
		0.299165, -0.622390, 0.723278,
		-0.708972, -0.652303, -0.268067,
		29.040705, 33.916538, 60.103977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871397, 33.732677, 60.208317>,  <29.536985, 34.373150, 60.291626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871397, 33.732677, 60.208317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526146, 33.657623, 60.020782>,  <29.318996, 33.612591, 59.908264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526146, 33.657623, 60.020782>,  <29.871397, 33.732677, 60.208317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526146, 33.657623, 60.020782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504084, -0.375656, -0.777677,
		-0.030198, -0.907565, 0.418825,
		-0.863127, -0.187638, -0.468833,
		29.267208, 33.601334, 59.880131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877554, 32.980370, 59.973335>,  <29.871397, 33.732677, 60.208317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877554, 32.980370, 59.973335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634941, 33.209946, 59.753262>,  <29.489374, 33.347691, 59.621216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634941, 33.209946, 59.753262>,  <29.877554, 32.980370, 59.973335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634941, 33.209946, 59.753262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507149, -0.253651, -0.823687,
		-0.612306, -0.778620, -0.137228,
		-0.606532, 0.573944, -0.550189,
		29.452982, 33.382130, 59.588203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655191, 32.593788, 59.356594>,  <29.877554, 32.980370, 59.973335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655191, 32.593788, 59.356594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566317, 32.965988, 59.240105>,  <29.512991, 33.189308, 59.170212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566317, 32.965988, 59.240105>,  <29.655191, 32.593788, 59.356594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566317, 32.965988, 59.240105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381308, -0.191971, -0.904296,
		-0.897350, -0.311968, -0.312152,
		-0.222187, 0.930496, -0.291221,
		29.499660, 33.245136, 59.152737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472307, 32.465042, 58.707150>,  <29.655191, 32.593788, 59.356594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472307, 32.465042, 58.707150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535488, 32.859680, 58.723545>,  <29.573397, 33.096462, 58.733383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535488, 32.859680, 58.723545>,  <29.472307, 32.465042, 58.707150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535488, 32.859680, 58.723545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262938, -0.002012, -0.964811,
		-0.951795, 0.163173, -0.259731,
		0.157953, 0.986595, 0.040989,
		29.582874, 33.155659, 58.735844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034880, 32.790329, 58.185425>,  <29.472307, 32.465042, 58.707150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034880, 32.790329, 58.185425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339790, 33.030937, 58.281013>,  <29.522736, 33.175301, 58.338367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339790, 33.030937, 58.281013>,  <29.034880, 32.790329, 58.185425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339790, 33.030937, 58.281013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287797, 0.015711, -0.957563,
		-0.579749, 0.798702, -0.161140,
		0.762275, 0.601522, 0.238973,
		29.568474, 33.211395, 58.352707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999674, 33.357887, 57.670742>,  <29.034880, 32.790329, 58.185425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999674, 33.357887, 57.670742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376692, 33.317944, 57.798264>,  <29.602903, 33.293980, 57.874775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376692, 33.317944, 57.798264>,  <28.999674, 33.357887, 57.670742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376692, 33.317944, 57.798264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319902, -0.005237, -0.947436,
		0.096276, 0.994988, 0.027008,
		0.942546, -0.099855, 0.318803,
		29.659456, 33.287987, 57.893906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397764, 33.822990, 57.306656>,  <28.999674, 33.357887, 57.670742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397764, 33.822990, 57.306656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661978, 33.552052, 57.436211>,  <29.820505, 33.389488, 57.513943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661978, 33.552052, 57.436211>,  <29.397764, 33.822990, 57.306656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661978, 33.552052, 57.436211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313430, -0.143234, -0.938747,
		0.682245, 0.721589, 0.117689,
		0.660532, -0.677343, 0.323888,
		29.860138, 33.348850, 57.533379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912491, 33.965832, 56.801701>,  <29.397764, 33.822990, 57.306656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912491, 33.965832, 56.801701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017172, 33.621262, 56.975807>,  <30.079981, 33.414520, 57.080273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017172, 33.621262, 56.975807>,  <29.912491, 33.965832, 56.801701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017172, 33.621262, 56.975807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285302, -0.361788, -0.887532,
		0.922016, 0.356454, 0.151085,
		0.261703, -0.861423, 0.435271,
		30.095682, 33.362835, 57.106388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370190, 33.872437, 56.343941>,  <29.912491, 33.965832, 56.801701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370190, 33.872437, 56.343941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310768, 33.537476, 56.554348>,  <30.275114, 33.336498, 56.680592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310768, 33.537476, 56.554348>,  <30.370190, 33.872437, 56.343941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310768, 33.537476, 56.554348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650909, -0.483246, -0.585483,
		0.744479, 0.255412, 0.616860,
		-0.148555, -0.837399, 0.526016,
		30.266201, 33.286255, 56.712154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054401, 33.524288, 56.455585>,  <30.370190, 33.872437, 56.343941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054401, 33.524288, 56.455585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746849, 33.271004, 56.491047>,  <30.562317, 33.119034, 56.512325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746849, 33.271004, 56.491047>,  <31.054401, 33.524288, 56.455585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746849, 33.271004, 56.491047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371938, -0.555727, -0.743525,
		0.520079, -0.538709, 0.662805,
		-0.768882, -0.633215, 0.088656,
		30.516184, 33.081039, 56.517643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439560, 32.869453, 56.369007>,  <31.054401, 33.524288, 56.455585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439560, 32.869453, 56.369007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054800, 32.784409, 56.300255>,  <30.823944, 32.733379, 56.259003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054800, 32.784409, 56.300255>,  <31.439560, 32.869453, 56.369007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054800, 32.784409, 56.300255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266512, -0.588904, -0.762996,
		0.061003, -0.779735, 0.623131,
		-0.961899, -0.212616, -0.171884,
		30.766230, 32.720623, 56.248692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363823, 32.175549, 56.301895>,  <31.439560, 32.869453, 56.369007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363823, 32.175549, 56.301895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026289, 32.308041, 56.133026>,  <30.823769, 32.387535, 56.031704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026289, 32.308041, 56.133026>,  <31.363823, 32.175549, 56.301895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026289, 32.308041, 56.133026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077876, -0.702829, -0.707083,
		-0.530922, -0.629539, 0.567277,
		-0.843835, 0.331229, -0.422173,
		30.773138, 32.407410, 56.006374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935236, 31.560228, 56.230045>,  <31.363823, 32.175549, 56.301895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935236, 31.560228, 56.230045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792757, 31.832121, 55.973579>,  <30.707270, 31.995256, 55.819702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792757, 31.832121, 55.973579>,  <30.935236, 31.560228, 56.230045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792757, 31.832121, 55.973579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198686, -0.615379, -0.762780,
		-0.913043, -0.399090, 0.084143,
		-0.356198, 0.679733, -0.641160,
		30.685898, 32.036041, 55.781231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571865, 31.122383, 55.753349>,  <30.935236, 31.560228, 56.230045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571865, 31.122383, 55.753349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637190, 31.464655, 55.556923>,  <30.676384, 31.670017, 55.439068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637190, 31.464655, 55.556923>,  <30.571865, 31.122383, 55.753349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637190, 31.464655, 55.556923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367539, -0.514683, -0.774607,
		-0.915557, -0.053983, -0.398549,
		0.163310, 0.855680, -0.491062,
		30.686184, 31.721359, 55.409603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309956, 31.018511, 54.966007>,  <30.571865, 31.122383, 55.753349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309956, 31.018511, 54.966007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585964, 31.303568, 55.016621>,  <30.751570, 31.474602, 55.046989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585964, 31.303568, 55.016621>,  <30.309956, 31.018511, 54.966007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585964, 31.303568, 55.016621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525734, -0.373330, -0.764348,
		-0.497468, 0.593940, -0.632266,
		0.690021, 0.712643, 0.126535,
		30.792971, 31.517361, 55.054581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.054844, 36.610321, 52.302345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.213360, 36.278038, 52.145943>,  <47.308472, 36.078671, 52.052101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.213360, 36.278038, 52.145943>,  <47.054844, 36.610321, 52.302345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213360, 36.278038, 52.145943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820032, -0.128720, -0.557654,
		0.412916, 0.541628, -0.732215,
		0.396292, -0.830705, -0.391002,
		47.332249, 36.028828, 52.028641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935577, 36.736629, 51.573780>,  <47.054844, 36.610321, 52.302345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935577, 36.736629, 51.573780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.012878, 36.349796, 51.639984>,  <47.059258, 36.117695, 51.679707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.012878, 36.349796, 51.639984>,  <46.935577, 36.736629, 51.573780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012878, 36.349796, 51.639984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772514, -0.253979, -0.581994,
		0.604876, -0.015390, -0.796171,
		0.193254, -0.967087, 0.165515,
		47.070854, 36.059669, 51.689640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017445, 36.506626, 50.923191>,  <46.935577, 36.736629, 51.573780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.017445, 36.506626, 50.923191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.938633, 36.194294, 51.160336>,  <46.891346, 36.006897, 51.302624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.938633, 36.194294, 51.160336>,  <47.017445, 36.506626, 50.923191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938633, 36.194294, 51.160336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728661, -0.287947, -0.621402,
		0.655921, -0.554432, -0.512224,
		-0.197032, -0.780828, 0.592863,
		46.879524, 35.960045, 51.338196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893631, 35.799137, 50.426308>,  <47.017445, 36.506626, 50.923191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893631, 35.799137, 50.426308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.713181, 35.726505, 50.775826>,  <46.604912, 35.682926, 50.985535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.713181, 35.726505, 50.775826>,  <46.893631, 35.799137, 50.426308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713181, 35.726505, 50.775826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825324, -0.287678, -0.485881,
		0.339599, -0.940356, -0.020085,
		-0.451123, -0.181581, 0.873794,
		46.577843, 35.672031, 51.037964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515583, 35.209820, 50.237583>,  <46.893631, 35.799137, 50.426308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515583, 35.209820, 50.237583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.338299, 35.370232, 50.558270>,  <46.231930, 35.466476, 50.750679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.338299, 35.370232, 50.558270>,  <46.515583, 35.209820, 50.237583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.338299, 35.370232, 50.558270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891389, -0.291763, -0.346842,
		0.094818, -0.868362, 0.486782,
		-0.443209, 0.401025, 0.801713,
		46.205338, 35.490540, 50.798782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057159, 34.685215, 50.473167>,  <46.515583, 35.209820, 50.237583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057159, 34.685215, 50.473167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.930965, 35.031948, 50.627605>,  <45.855251, 35.239990, 50.720268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.930965, 35.031948, 50.627605>,  <46.057159, 34.685215, 50.473167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930965, 35.031948, 50.627605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923251, -0.186373, -0.335966,
		-0.219271, -0.462448, 0.859105,
		-0.315480, 0.866838, 0.386089,
		45.836323, 35.292000, 50.743435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394329, 34.574009, 50.815216>,  <46.057159, 34.685215, 50.473167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394329, 34.574009, 50.815216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.414040, 34.964600, 50.731255>,  <45.425865, 35.198956, 50.680878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.414040, 34.964600, 50.731255>,  <45.394329, 34.574009, 50.815216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414040, 34.964600, 50.731255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878912, -0.057429, -0.473514,
		-0.474431, 0.207821, 0.855410,
		0.049281, 0.976479, -0.209902,
		45.428825, 35.257542, 50.668285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764400, 34.683086, 50.877010>,  <45.394329, 34.574009, 50.815216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764400, 34.683086, 50.877010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.888927, 35.019367, 50.699787>,  <44.963642, 35.221134, 50.593452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.888927, 35.019367, 50.699787>,  <44.764400, 34.683086, 50.877010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888927, 35.019367, 50.699787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893225, 0.099717, -0.438413,
		-0.324395, 0.532236, 0.781981,
		0.311316, 0.840703, -0.443058,
		44.982323, 35.271580, 50.566868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307686, 35.147068, 51.068390>,  <44.764400, 34.683086, 50.877010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307686, 35.147068, 51.068390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.468330, 35.291855, 50.731892>,  <44.564716, 35.378727, 50.529995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.468330, 35.291855, 50.731892>,  <44.307686, 35.147068, 51.068390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468330, 35.291855, 50.731892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905556, 0.019881, -0.423761,
		-0.136662, 0.931979, 0.335765,
		0.401612, 0.361966, -0.841242,
		44.588814, 35.400444, 50.479519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957867, 35.784294, 50.913639>,  <44.307686, 35.147068, 51.068390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957867, 35.784294, 50.913639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.115658, 35.659275, 50.567993>,  <44.210331, 35.584263, 50.360603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.115658, 35.659275, 50.567993>,  <43.957867, 35.784294, 50.913639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115658, 35.659275, 50.567993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910524, -0.006230, -0.413409,
		0.123828, 0.949881, -0.287042,
		0.394477, -0.312550, -0.864118,
		44.234001, 35.565510, 50.308758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675564, 36.175102, 50.318874>,  <43.957867, 35.784294, 50.913639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675564, 36.175102, 50.318874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.802025, 35.838818, 50.143036>,  <43.877903, 35.637047, 50.037533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.802025, 35.838818, 50.143036>,  <43.675564, 36.175102, 50.318874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802025, 35.838818, 50.143036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858456, -0.056261, -0.509793,
		0.403857, 0.538550, -0.739502,
		0.316154, -0.840713, -0.439600,
		43.896870, 35.586605, 50.011154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466503, 36.285748, 49.658844>,  <43.675564, 36.175102, 50.318874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466503, 36.285748, 49.658844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.538277, 35.892254, 49.662086>,  <43.581341, 35.656158, 49.664032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.538277, 35.892254, 49.662086>,  <43.466503, 36.285748, 49.658844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538277, 35.892254, 49.662086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851144, -0.159367, -0.500156,
		0.493314, 0.082847, -0.865897,
		0.179431, -0.983737, 0.008103,
		43.592106, 35.597134, 49.664516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221813, 36.125973, 49.061401>,  <43.466503, 36.285748, 49.658844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221813, 36.125973, 49.061401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.244610, 35.765110, 49.232456>,  <43.258289, 35.548592, 49.335091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.244610, 35.765110, 49.232456>,  <43.221813, 36.125973, 49.061401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244610, 35.765110, 49.232456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796096, -0.299549, -0.525834,
		0.602480, -0.310469, -0.735273,
		0.056995, -0.902152, 0.427636,
		43.261707, 35.494465, 49.360748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368095, 35.602509, 48.546909>,  <43.221813, 36.125973, 49.061401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368095, 35.602509, 48.546909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.177528, 35.423157, 48.849426>,  <43.063187, 35.315548, 49.030937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.177528, 35.423157, 48.849426>,  <43.368095, 35.602509, 48.546909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177528, 35.423157, 48.849426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718822, -0.296686, -0.628707,
		0.506279, -0.843171, -0.180955,
		-0.476420, -0.448375, 0.756296,
		43.034603, 35.288643, 49.076317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164162, 35.009949, 48.292500>,  <43.368095, 35.602509, 48.546909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164162, 35.009949, 48.292500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.938675, 35.014111, 48.622860>,  <42.803383, 35.016609, 48.821075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.938675, 35.014111, 48.622860>,  <43.164162, 35.009949, 48.292500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938675, 35.014111, 48.622860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753269, -0.416671, -0.508891,
		0.338834, -0.908998, 0.242724,
		-0.563717, 0.010407, 0.825902,
		42.769558, 35.017231, 48.870632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882668, 34.359840, 48.307823>,  <43.164162, 35.009949, 48.292500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882668, 34.359840, 48.307823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.650806, 34.594795, 48.533737>,  <42.511692, 34.735767, 48.669289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.650806, 34.594795, 48.533737>,  <42.882668, 34.359840, 48.307823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650806, 34.594795, 48.533737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813967, -0.449911, -0.367474,
		0.038258, -0.672727, 0.738901,
		-0.579650, 0.587383, 0.564790,
		42.476910, 34.771011, 48.703175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350853, 33.944408, 48.579678>,  <42.882668, 34.359840, 48.307823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350853, 33.944408, 48.579678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.199059, 34.313850, 48.601406>,  <42.107983, 34.535515, 48.614441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.199059, 34.313850, 48.601406>,  <42.350853, 33.944408, 48.579678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199059, 34.313850, 48.601406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921493, -0.372068, -0.111424,
		-0.082701, -0.092338, 0.992287,
		-0.379487, 0.923601, 0.054318,
		42.085213, 34.590931, 48.617702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766548, 33.865597, 48.830299>,  <42.350853, 33.944408, 48.579678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766548, 33.865597, 48.830299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.690731, 34.254574, 48.776005>,  <41.645241, 34.487961, 48.743427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.690731, 34.254574, 48.776005>,  <41.766548, 33.865597, 48.830299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690731, 34.254574, 48.776005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981804, -0.186087, 0.037856,
		0.011554, 0.140445, 0.990021,
		-0.189546, 0.972444, -0.135739,
		41.633865, 34.546307, 48.735283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282185, 34.214634, 49.368629>,  <41.766548, 33.865597, 48.830299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282185, 34.214634, 49.368629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.251617, 34.385983, 49.008484>,  <41.233276, 34.488792, 48.792397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.251617, 34.385983, 49.008484>,  <41.282185, 34.214634, 49.368629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251617, 34.385983, 49.008484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991366, -0.129142, 0.022698,
		-0.106552, 0.894325, 0.434545,
		-0.076417, 0.428375, -0.900364,
		41.228691, 34.514496, 48.738373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676029, 34.479759, 49.395992>,  <41.282185, 34.214634, 49.368629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676029, 34.479759, 49.395992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726425, 34.483200, 48.999195>,  <40.756664, 34.485264, 48.761116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726425, 34.483200, 48.999195>,  <40.676029, 34.479759, 49.395992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726425, 34.483200, 48.999195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961611, -0.244674, -0.124256,
		-0.243784, 0.969567, -0.022555,
		0.125993, 0.008602, -0.991994,
		40.764225, 34.485783, 48.701595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002983, 34.823021, 49.133900>,  <40.676029, 34.479759, 49.395992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002983, 34.823021, 49.133900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.170017, 34.595070, 48.850815>,  <40.270237, 34.458298, 48.680962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.170017, 34.595070, 48.850815>,  <40.002983, 34.823021, 49.133900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170017, 34.595070, 48.850815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834269, -0.549075, -0.050122,
		-0.360025, 0.611356, -0.704717,
		0.417585, -0.569879, -0.707716,
		40.295292, 34.424107, 48.638500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675144, 34.899876, 48.485836>,  <40.002983, 34.823021, 49.133900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675144, 34.899876, 48.485836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.826698, 34.530296, 48.506866>,  <39.917629, 34.308548, 48.519485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.826698, 34.530296, 48.506866>,  <39.675144, 34.899876, 48.485836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826698, 34.530296, 48.506866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910044, -0.382298, -0.160217,
		0.168133, 0.012856, -0.985681,
		0.378883, -0.923950, 0.052577,
		39.940365, 34.253113, 48.522640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277927, 34.483334, 48.037781>,  <39.675144, 34.899876, 48.485836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277927, 34.483334, 48.037781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.432507, 34.214558, 48.290497>,  <39.525253, 34.053291, 48.442127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.432507, 34.214558, 48.290497>,  <39.277927, 34.483334, 48.037781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432507, 34.214558, 48.290497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906089, -0.404504, 0.124014,
		0.172233, -0.620386, -0.765151,
		0.386443, -0.671936, 0.631794,
		39.548439, 34.012978, 48.480034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935768, 33.856495, 47.973396>,  <39.277927, 34.483334, 48.037781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935768, 33.856495, 47.973396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071796, 33.841129, 48.349243>,  <39.153416, 33.831909, 48.574749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071796, 33.841129, 48.349243>,  <38.935768, 33.856495, 47.973396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071796, 33.841129, 48.349243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837826, -0.466144, 0.284177,
		0.427081, -0.883874, -0.190704,
		0.340072, -0.038410, 0.939614,
		39.173817, 33.829605, 48.631126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286346, 33.418755, 47.985420>,  <38.935768, 33.856495, 47.973396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286346, 33.418755, 47.985420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.392414, 33.148346, 47.710411>,  <38.456055, 32.986103, 47.545406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.392414, 33.148346, 47.710411>,  <38.286346, 33.418755, 47.985420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392414, 33.148346, 47.710411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809629, 0.231118, -0.539523,
		0.523626, 0.699703, -0.486037,
		0.265174, -0.676018, -0.687519,
		38.471966, 32.945541, 47.504154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232464, 33.804924, 47.266758>,  <38.286346, 33.418755, 47.985420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232464, 33.804924, 47.266758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209137, 33.409126, 47.213840>,  <38.195141, 33.171646, 47.182091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209137, 33.409126, 47.213840>,  <38.232464, 33.804924, 47.266758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209137, 33.409126, 47.213840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785762, 0.127236, -0.605301,
		0.615774, 0.068654, -0.784926,
		-0.058315, -0.989494, -0.132294,
		38.191643, 33.112278, 47.174152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240162, 33.728924, 46.528202>,  <38.232464, 33.804924, 47.266758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240162, 33.728924, 46.528202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.083481, 33.383850, 46.656162>,  <37.989471, 33.176804, 46.732941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.083481, 33.383850, 46.656162>,  <38.240162, 33.728924, 46.528202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083481, 33.383850, 46.656162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730565, 0.080256, -0.678110,
		0.559322, -0.499331, -0.661685,
		-0.391705, -0.862686, 0.319905,
		37.965969, 33.125046, 46.752132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017452, 33.333511, 46.054863>,  <38.240162, 33.728924, 46.528202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017452, 33.333511, 46.054863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829876, 33.117592, 46.334496>,  <37.717331, 32.988041, 46.502277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829876, 33.117592, 46.334496>,  <38.017452, 33.333511, 46.054863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829876, 33.117592, 46.334496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771966, -0.134087, -0.621360,
		0.429145, -0.831049, -0.353825,
		-0.468938, -0.539795, 0.699084,
		37.689194, 32.955654, 46.544220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808517, 32.757465, 45.759018>,  <38.017452, 33.333511, 46.054863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808517, 32.757465, 45.759018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554844, 32.758533, 46.068287>,  <37.402641, 32.759174, 46.253849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554844, 32.758533, 46.068287>,  <37.808517, 32.757465, 45.759018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554844, 32.758533, 46.068287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759326, -0.190619, -0.622165,
		0.145721, -0.981660, 0.122915,
		-0.634185, 0.002670, 0.773177,
		37.364590, 32.759335, 46.300240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380569, 32.180775, 45.669434>,  <37.808517, 32.757465, 45.759018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380569, 32.180775, 45.669434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.168503, 32.410160, 45.919250>,  <37.041264, 32.547791, 46.069141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.168503, 32.410160, 45.919250>,  <37.380569, 32.180775, 45.669434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168503, 32.410160, 45.919250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728928, 0.067991, -0.681205,
		-0.433113, -0.816402, 0.381970,
		-0.530167, 0.573467, 0.624546,
		37.009453, 32.582199, 46.106613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693104, 31.975605, 45.592884>,  <37.380569, 32.180775, 45.669434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693104, 31.975605, 45.592884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627037, 32.330685, 45.764793>,  <36.587395, 32.543732, 45.867939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627037, 32.330685, 45.764793>,  <36.693104, 31.975605, 45.592884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627037, 32.330685, 45.764793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775583, 0.152281, -0.612602,
		-0.609253, -0.434512, 0.663332,
		-0.165170, 0.887699, 0.429778,
		36.577484, 32.596992, 45.893726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916744, 32.072922, 45.869602>,  <36.693104, 31.975605, 45.592884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916744, 32.072922, 45.869602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073719, 32.436806, 45.815327>,  <36.167904, 32.655136, 45.782761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073719, 32.436806, 45.815327>,  <35.916744, 32.072922, 45.869602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073719, 32.436806, 45.815327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809780, 0.271769, -0.519997,
		-0.436172, 0.313947, 0.843321,
		0.392441, 0.909713, -0.135690,
		36.191452, 32.709721, 45.774620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489094, 32.629063, 46.137527>,  <35.916744, 32.072922, 45.869602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489094, 32.629063, 46.137527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.702854, 32.808914, 45.851242>,  <35.831112, 32.916824, 45.679470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.702854, 32.808914, 45.851242>,  <35.489094, 32.629063, 46.137527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702854, 32.808914, 45.851242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845226, 0.281669, -0.454154,
		-0.002605, 0.847643, 0.530560,
		0.534403, 0.449626, -0.715716,
		35.863174, 32.943802, 45.636528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163021, 33.357285, 46.077923>,  <35.489094, 32.629063, 46.137527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163021, 33.357285, 46.077923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.352943, 33.290070, 45.732365>,  <35.466896, 33.249741, 45.525028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.352943, 33.290070, 45.732365>,  <35.163021, 33.357285, 46.077923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352943, 33.290070, 45.732365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813840, 0.289804, -0.503665,
		0.334996, 0.942219, 0.000845,
		0.474808, -0.168038, -0.863899,
		35.495384, 33.239658, 45.473194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001526, 33.951427, 45.762039>,  <35.163021, 33.357285, 46.077923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001526, 33.951427, 45.762039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135151, 33.725853, 45.459946>,  <35.215328, 33.590508, 45.278690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135151, 33.725853, 45.459946>,  <35.001526, 33.951427, 45.762039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135151, 33.725853, 45.459946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722997, 0.360749, -0.589182,
		0.604711, 0.742856, -0.287211,
		0.334066, -0.563937, -0.755232,
		35.235371, 33.556671, 45.233376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.819397, 32.942402, 49.225143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.115274, 32.743214, 49.406197>,  <30.292801, 32.623703, 49.514828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.115274, 32.743214, 49.406197>,  <29.819397, 32.942402, 49.225143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115274, 32.743214, 49.406197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524101, 0.004397, -0.851644,
		0.422101, 0.867185, 0.264238,
		0.739695, -0.497967, 0.452637,
		30.337183, 32.593822, 49.541988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349283, 33.260506, 48.925732>,  <29.819397, 32.942402, 49.225143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349283, 33.260506, 48.925732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.471889, 32.916729, 49.089397>,  <30.545452, 32.710464, 49.187595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.471889, 32.916729, 49.089397>,  <30.349283, 33.260506, 48.925732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471889, 32.916729, 49.089397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622590, -0.144140, -0.769159,
		0.720021, 0.490499, 0.490897,
		0.306514, -0.859438, 0.409164,
		30.563843, 32.658897, 49.212147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010849, 33.382862, 49.058422>,  <30.349283, 33.260506, 48.925732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010849, 33.382862, 49.058422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997219, 32.983444, 49.041718>,  <30.989042, 32.743793, 49.031693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997219, 32.983444, 49.041718>,  <31.010849, 33.382862, 49.058422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997219, 32.983444, 49.041718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776276, -0.000123, -0.630393,
		0.629472, -0.053900, 0.775152,
		-0.034073, -0.998546, -0.041764,
		30.986998, 32.683880, 49.029190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706684, 33.170410, 49.049625>,  <31.010849, 33.382862, 49.058422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706684, 33.170410, 49.049625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.493790, 32.873760, 48.886307>,  <31.366053, 32.695770, 48.788315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.493790, 32.873760, 48.886307>,  <31.706684, 33.170410, 49.049625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493790, 32.873760, 48.886307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683108, -0.091321, -0.724585,
		0.500087, -0.664565, 0.555218,
		-0.532237, -0.741629, -0.408301,
		31.334118, 32.651272, 48.763817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205219, 32.704323, 48.840698>,  <31.706684, 33.170410, 49.049625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205219, 32.704323, 48.840698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892193, 32.564205, 48.634827>,  <31.704378, 32.480137, 48.511303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892193, 32.564205, 48.634827>,  <32.205219, 32.704323, 48.840698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892193, 32.564205, 48.634827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584878, -0.130369, -0.800576,
		0.213337, -0.927524, 0.306899,
		-0.782563, -0.350291, -0.514676,
		31.657423, 32.459118, 48.480423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410828, 32.028763, 48.614925>,  <32.205219, 32.704323, 48.840698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410828, 32.028763, 48.614925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108269, 32.141167, 48.378654>,  <31.926733, 32.208607, 48.236893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108269, 32.141167, 48.378654>,  <32.410828, 32.028763, 48.614925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108269, 32.141167, 48.378654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603658, -0.047891, -0.795804,
		-0.251913, -0.958511, -0.133407,
		-0.756397, 0.281006, -0.590677,
		31.881350, 32.225468, 48.201450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496078, 31.629347, 48.098717>,  <32.410828, 32.028763, 48.614925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496078, 31.629347, 48.098717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.256802, 31.910833, 47.945381>,  <32.113235, 32.079727, 47.853378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.256802, 31.910833, 47.945381>,  <32.496078, 31.629347, 48.098717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256802, 31.910833, 47.945381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620267, 0.103715, -0.777504,
		-0.507385, -0.702868, -0.498534,
		-0.598188, 0.703718, -0.383342,
		32.077347, 32.121948, 47.830379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331928, 31.385807, 47.388954>,  <32.496078, 31.629347, 48.098717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331928, 31.385807, 47.388954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295586, 31.783648, 47.409023>,  <32.273781, 32.022350, 47.421062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295586, 31.783648, 47.409023>,  <32.331928, 31.385807, 47.388954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295586, 31.783648, 47.409023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646133, 0.097210, -0.757009,
		-0.757797, -0.036365, -0.651476,
		-0.090859, 0.994599, 0.050169,
		32.268330, 32.082027, 47.424072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244583, 31.540592, 46.632240>,  <32.331928, 31.385807, 47.388954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244583, 31.540592, 46.632240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356590, 31.872972, 46.824539>,  <32.423794, 32.072399, 46.939919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356590, 31.872972, 46.824539>,  <32.244583, 31.540592, 46.632240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356590, 31.872972, 46.824539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772955, 0.101830, -0.626235,
		-0.569324, 0.546950, -0.613772,
		0.280019, 0.830949, 0.480742,
		32.440598, 32.122257, 46.968761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483303, 32.017380, 46.031940>,  <32.244583, 31.540592, 46.632240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483303, 32.017380, 46.031940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643368, 32.156212, 46.371212>,  <32.739407, 32.239513, 46.574776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643368, 32.156212, 46.371212>,  <32.483303, 32.017380, 46.031940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643368, 32.156212, 46.371212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864073, 0.165501, -0.475381,
		-0.305371, 0.923115, -0.233680,
		0.400157, 0.347085, 0.848178,
		32.763416, 32.260338, 46.625664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675232, 32.599274, 45.800323>,  <32.483303, 32.017380, 46.031940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675232, 32.599274, 45.800323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875183, 32.527435, 46.139233>,  <32.995155, 32.484333, 46.342579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875183, 32.527435, 46.139233>,  <32.675232, 32.599274, 45.800323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875183, 32.527435, 46.139233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836825, 0.352332, -0.419031,
		-0.223261, 0.918480, 0.326417,
		0.499879, -0.179601, 0.847269,
		33.025146, 32.473557, 46.393414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232944, 33.047680, 45.680775>,  <32.675232, 32.599274, 45.800323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232944, 33.047680, 45.680775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340084, 32.834839, 46.002056>,  <33.404366, 32.707134, 46.194824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340084, 32.834839, 46.002056>,  <33.232944, 33.047680, 45.680775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340084, 32.834839, 46.002056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953862, 0.029059, -0.298837,
		0.135671, 0.846183, 0.515332,
		0.267845, -0.532099, 0.803200,
		33.420437, 32.675209, 46.243015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839302, 33.516300, 45.096802>,  <33.232944, 33.047680, 45.680775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839302, 33.516300, 45.096802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.971252, 33.177685, 44.929684>,  <33.050423, 32.974514, 44.829414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.971252, 33.177685, 44.929684>,  <32.839302, 33.516300, 45.096802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971252, 33.177685, 44.929684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844576, 0.066931, 0.531236,
		-0.421750, -0.528098, 0.737047,
		0.329876, -0.846541, -0.417791,
		33.070217, 32.923721, 44.804348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284523, 33.998875, 45.389267>,  <32.839302, 33.516300, 45.096802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284523, 33.998875, 45.389267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.304600, 34.296318, 45.122574>,  <32.316647, 34.474785, 44.962559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.304600, 34.296318, 45.122574>,  <32.284523, 33.998875, 45.389267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304600, 34.296318, 45.122574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227548, 0.658527, 0.717331,
		0.972472, 0.115707, 0.202261,
		0.050194, 0.743609, -0.666728,
		32.319656, 34.519402, 44.922554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606506, 34.529858, 45.747814>,  <32.284523, 33.998875, 45.389267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606506, 34.529858, 45.747814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431118, 34.728039, 45.447876>,  <32.325886, 34.846947, 45.267914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431118, 34.728039, 45.447876>,  <32.606506, 34.529858, 45.747814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431118, 34.728039, 45.447876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128186, 0.791318, 0.597817,
		0.889556, 0.358245, -0.283460,
		-0.438472, 0.495456, -0.749844,
		32.299576, 34.876675, 45.222923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829769, 35.158493, 45.794895>,  <32.606506, 34.529858, 45.747814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829769, 35.158493, 45.794895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501019, 35.215233, 45.574207>,  <32.303768, 35.249275, 45.441795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501019, 35.215233, 45.574207>,  <32.829769, 35.158493, 45.794895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501019, 35.215233, 45.574207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299031, 0.716915, 0.629773,
		0.484868, 0.682578, -0.546800,
		-0.821878, 0.141847, -0.551721,
		32.254456, 35.257786, 45.408691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782822, 35.913593, 45.594654>,  <32.829769, 35.158493, 45.794895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782822, 35.913593, 45.594654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.420826, 35.744823, 45.572823>,  <32.203629, 35.643562, 45.559723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.420826, 35.744823, 45.572823>,  <32.782822, 35.913593, 45.594654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420826, 35.744823, 45.572823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388798, 0.768130, 0.508737,
		-0.172726, 0.481620, -0.859191,
		-0.904987, -0.421924, -0.054577,
		32.149330, 35.618248, 45.556450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417656, 36.436890, 45.499626>,  <32.782822, 35.913593, 45.594654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417656, 36.436890, 45.499626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126514, 36.183296, 45.604164>,  <31.951830, 36.031139, 45.666889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126514, 36.183296, 45.604164>,  <32.417656, 36.436890, 45.499626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126514, 36.183296, 45.604164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478269, 0.742448, 0.469073,
		-0.491420, 0.216420, -0.843605,
		-0.727849, -0.633982, 0.261347,
		31.908159, 35.993103, 45.682568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793858, 36.857365, 45.516949>,  <32.417656, 36.436890, 45.499626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793858, 36.857365, 45.516949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.681786, 36.545609, 45.741112>,  <31.614542, 36.358555, 45.875610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.681786, 36.545609, 45.741112>,  <31.793858, 36.857365, 45.516949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681786, 36.545609, 45.741112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421432, 0.624387, 0.657675,
		-0.862493, -0.051904, -0.503401,
		-0.280181, -0.779389, 0.560403,
		31.597731, 36.311790, 45.909233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158924, 36.927906, 45.640949>,  <31.793858, 36.857365, 45.516949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158924, 36.927906, 45.640949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.283716, 36.686974, 45.934853>,  <31.358591, 36.542416, 46.111195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.283716, 36.686974, 45.934853>,  <31.158924, 36.927906, 45.640949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283716, 36.686974, 45.934853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405185, 0.615153, 0.676322,
		-0.859357, -0.508711, -0.052140,
		0.311979, -0.602329, 0.734758,
		31.377310, 36.506275, 46.155281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544350, 36.922543, 46.151348>,  <31.158924, 36.927906, 45.640949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544350, 36.922543, 46.151348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858143, 36.769970, 46.346939>,  <31.046419, 36.678429, 46.464294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858143, 36.769970, 46.346939>,  <30.544350, 36.922543, 46.151348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858143, 36.769970, 46.346939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268748, 0.501505, 0.822355,
		-0.558896, -0.776534, 0.290913,
		0.784481, -0.381428, 0.488981,
		31.093487, 36.655540, 46.493633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308661, 36.706085, 46.845161>,  <30.544350, 36.922543, 46.151348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308661, 36.706085, 46.845161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.701324, 36.776272, 46.874969>,  <30.936924, 36.818382, 46.892857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.701324, 36.776272, 46.874969>,  <30.308661, 36.706085, 46.845161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701324, 36.776272, 46.874969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157874, 0.529148, 0.833714,
		0.106854, -0.830189, 0.547145,
		0.981661, 0.175466, 0.074523,
		30.995823, 36.828911, 46.897327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549006, 36.583199, 47.636024>,  <30.308661, 36.706085, 46.845161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549006, 36.583199, 47.636024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.806370, 36.823940, 47.446800>,  <30.960789, 36.968388, 47.333263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.806370, 36.823940, 47.446800>,  <30.549006, 36.583199, 47.636024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806370, 36.823940, 47.446800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020868, 0.631525, 0.775075,
		0.765237, -0.488820, 0.418889,
		0.643411, 0.601857, -0.473065,
		30.999393, 37.004498, 47.304882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006615, 36.641548, 48.151783>,  <30.549006, 36.583199, 47.636024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006615, 36.641548, 48.151783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.118132, 36.937527, 47.906914>,  <31.185041, 37.115112, 47.759991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.118132, 36.937527, 47.906914>,  <31.006615, 36.641548, 48.151783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118132, 36.937527, 47.906914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115740, 0.606915, 0.786294,
		0.953351, -0.290067, 0.083563,
		0.278793, 0.739943, -0.612175,
		31.201769, 37.159512, 47.723263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588335, 36.904373, 48.493744>,  <31.006615, 36.641548, 48.151783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588335, 36.904373, 48.493744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.478615, 37.211712, 48.262432>,  <31.412783, 37.396114, 48.123646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.478615, 37.211712, 48.262432>,  <31.588335, 36.904373, 48.493744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478615, 37.211712, 48.262432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083597, 0.580013, 0.810307,
		0.958004, 0.270608, -0.094866,
		-0.274299, 0.768347, -0.578276,
		31.396324, 37.442215, 48.088947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058971, 37.471485, 48.552177>,  <31.588335, 36.904373, 48.493744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058971, 37.471485, 48.552177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.716322, 37.637524, 48.429619>,  <31.510731, 37.737148, 48.356083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.716322, 37.637524, 48.429619>,  <32.058971, 37.471485, 48.552177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716322, 37.637524, 48.429619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041308, 0.536785, 0.842707,
		0.514278, 0.734544, -0.442679,
		-0.856628, 0.415099, -0.306400,
		31.459333, 37.762054, 48.337700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215431, 38.142189, 48.742981>,  <32.058971, 37.471485, 48.552177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215431, 38.142189, 48.742981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.822662, 38.073734, 48.710625>,  <31.587002, 38.032661, 48.691212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.822662, 38.073734, 48.710625>,  <32.215431, 38.142189, 48.742981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822662, 38.073734, 48.710625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152561, 0.462489, 0.873401,
		-0.112063, 0.869951, -0.480237,
		-0.981920, -0.171142, -0.080892,
		31.528086, 38.022392, 48.686356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995365, 38.667271, 49.096394>,  <32.215431, 38.142189, 48.742981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995365, 38.667271, 49.096394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.676685, 38.425613, 49.089672>,  <31.485477, 38.280621, 49.085640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.676685, 38.425613, 49.089672>,  <31.995365, 38.667271, 49.096394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676685, 38.425613, 49.089672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265238, 0.324528, 0.907926,
		-0.543064, 0.727801, -0.418793,
		-0.796699, -0.604142, -0.016801,
		31.437675, 38.244370, 49.084633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340965, 39.218861, 49.383266>,  <31.995365, 38.667271, 49.096394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340965, 39.218861, 49.383266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647388, 39.237350, 49.639709>,  <32.831242, 39.248444, 49.793575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647388, 39.237350, 49.639709>,  <32.340965, 39.218861, 49.383266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647388, 39.237350, 49.639709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642767, -0.051998, -0.764295,
		-0.001993, 0.997577, -0.069545,
		0.766059, 0.046225, 0.641106,
		32.877205, 39.251217, 49.832043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841213, 39.822811, 49.146812>,  <32.340965, 39.218861, 49.383266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841213, 39.822811, 49.146812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.028866, 39.536243, 49.353371>,  <33.141457, 39.364304, 49.477306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.028866, 39.536243, 49.353371>,  <32.841213, 39.822811, 49.146812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028866, 39.536243, 49.353371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745203, 0.007352, -0.666797,
		0.473912, 0.697628, 0.537329,
		0.469127, -0.716422, 0.516391,
		33.169605, 39.321316, 49.508289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565784, 39.827721, 48.915352>,  <32.841213, 39.822811, 49.146812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565784, 39.827721, 48.915352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582027, 39.500404, 49.144699>,  <33.591774, 39.304016, 49.282307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582027, 39.500404, 49.144699>,  <33.565784, 39.827721, 48.915352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582027, 39.500404, 49.144699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797970, -0.318794, -0.511482,
		0.601328, 0.478298, 0.640028,
		0.040603, -0.818292, 0.573367,
		33.594208, 39.254917, 49.316708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172485, 39.870350, 49.230518>,  <33.565784, 39.827721, 48.915352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172485, 39.870350, 49.230518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064159, 39.485516, 49.217556>,  <33.999165, 39.254616, 49.209778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064159, 39.485516, 49.217556>,  <34.172485, 39.870350, 49.230518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064159, 39.485516, 49.217556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914893, -0.246771, -0.319491,
		0.299381, -0.116170, 0.947035,
		-0.270816, -0.962086, -0.032405,
		33.982914, 39.196892, 49.207836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538219, 39.460934, 49.863819>,  <34.172485, 39.870350, 49.230518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538219, 39.460934, 49.863819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437729, 39.275974, 49.523685>,  <34.377434, 39.164997, 49.319603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437729, 39.275974, 49.523685>,  <34.538219, 39.460934, 49.863819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437729, 39.275974, 49.523685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956580, -0.252735, -0.145186,
		-0.147776, -0.849890, 0.505814,
		-0.251229, -0.462397, -0.850337,
		34.362362, 39.137257, 49.268585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959373, 38.819427, 49.820057>,  <34.538219, 39.460934, 49.863819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959373, 38.819427, 49.820057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844299, 38.824093, 49.436996>,  <34.775257, 38.826893, 49.207161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844299, 38.824093, 49.436996>,  <34.959373, 38.819427, 49.820057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844299, 38.824093, 49.436996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839937, -0.477362, -0.258132,
		-0.460158, -0.878630, 0.127535,
		-0.287683, 0.011660, -0.957655,
		34.757996, 38.827591, 49.149700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070644, 38.104813, 49.499599>,  <34.959373, 38.819427, 49.820057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070644, 38.104813, 49.499599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.023151, 38.337418, 49.177670>,  <34.994656, 38.476982, 48.984512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.023151, 38.337418, 49.177670>,  <35.070644, 38.104813, 49.499599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023151, 38.337418, 49.177670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734324, -0.494158, -0.465378,
		-0.668335, -0.646256, -0.368350,
		-0.118730, 0.581516, -0.804824,
		34.987534, 38.511871, 48.936222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168205, 37.641003, 48.941895>,  <35.070644, 38.104813, 49.499599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168205, 37.641003, 48.941895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.220528, 38.011177, 48.799652>,  <35.251923, 38.233280, 48.714306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.220528, 38.011177, 48.799652>,  <35.168205, 37.641003, 48.941895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220528, 38.011177, 48.799652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886381, -0.269840, -0.376185,
		-0.444092, -0.265995, -0.855587,
		0.130808, 0.925437, -0.355607,
		35.259769, 38.288807, 48.692970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428722, 37.592960, 48.249668>,  <35.168205, 37.641003, 48.941895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428722, 37.592960, 48.249668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529957, 37.959602, 48.373466>,  <35.590698, 38.179588, 48.447746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529957, 37.959602, 48.373466>,  <35.428722, 37.592960, 48.249668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529957, 37.959602, 48.373466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913120, -0.120625, -0.389438,
		-0.319627, 0.381165, -0.867497,
		0.253082, 0.916604, 0.309494,
		35.605881, 38.234585, 48.466316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780380, 37.904629, 47.676346>,  <35.428722, 37.592960, 48.249668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780380, 37.904629, 47.676346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879612, 38.059475, 48.031559>,  <35.939152, 38.152382, 48.244686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879612, 38.059475, 48.031559>,  <35.780380, 37.904629, 47.676346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879612, 38.059475, 48.031559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968211, -0.068825, -0.240478,
		-0.031974, 0.919458, -0.391886,
		0.248081, 0.387117, 0.888029,
		35.954037, 38.175610, 48.297966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234020, 38.368397, 47.461639>,  <35.780380, 37.904629, 47.676346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234020, 38.368397, 47.461639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295147, 38.278320, 47.846542>,  <36.331821, 38.224274, 48.077484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295147, 38.278320, 47.846542>,  <36.234020, 38.368397, 47.461639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295147, 38.278320, 47.846542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964882, -0.176516, -0.194538,
		0.213662, 0.958192, 0.190309,
		0.152812, -0.225191, 0.962256,
		36.340992, 38.210762, 48.135220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972862, 38.474808, 47.567574>,  <36.234020, 38.368397, 47.461639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972862, 38.474808, 47.567574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858681, 38.278931, 47.897114>,  <36.790173, 38.161404, 48.094837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858681, 38.278931, 47.897114>,  <36.972862, 38.474808, 47.567574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858681, 38.278931, 47.897114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905207, -0.420137, 0.063915,
		0.314830, 0.763996, 0.563198,
		-0.285451, -0.489689, 0.823846,
		36.773045, 38.132023, 48.144268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.589987, 38.676567, 55.731911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484995, 39.052876, 55.646072>,  <31.422001, 39.278660, 55.594570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484995, 39.052876, 55.646072>,  <31.589987, 38.676567, 55.731911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484995, 39.052876, 55.646072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384956, -0.101837, -0.917299,
		-0.884824, -0.323380, -0.335427,
		-0.262477, 0.940773, -0.214595,
		31.406252, 39.335106, 55.581696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177622, 38.630276, 55.170528>,  <31.589987, 38.676567, 55.731911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177622, 38.630276, 55.170528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325296, 39.001877, 55.160355>,  <31.413902, 39.224838, 55.154251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325296, 39.001877, 55.160355>,  <31.177622, 38.630276, 55.170528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325296, 39.001877, 55.160355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078348, -0.058387, -0.995215,
		-0.926047, 0.365428, -0.094342,
		0.369187, 0.929007, -0.025439,
		31.436052, 39.280579, 55.152721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883205, 38.926189, 54.542343>,  <31.177622, 38.630276, 55.170528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883205, 38.926189, 54.542343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.170921, 39.194084, 54.616188>,  <31.343552, 39.354820, 54.660496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.170921, 39.194084, 54.616188>,  <30.883205, 38.926189, 54.542343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170921, 39.194084, 54.616188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240441, 0.009320, -0.970619,
		-0.651776, 0.742544, -0.154327,
		0.719289, 0.669732, 0.184613,
		31.386707, 39.395004, 54.671574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687643, 39.461037, 54.070347>,  <30.883205, 38.926189, 54.542343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687643, 39.461037, 54.070347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.076738, 39.493698, 54.157169>,  <31.310196, 39.513294, 54.209263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.076738, 39.493698, 54.157169>,  <30.687643, 39.461037, 54.070347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076738, 39.493698, 54.157169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215809, 0.023944, -0.976142,
		-0.084902, 0.996373, 0.005669,
		0.972737, 0.081653, 0.217059,
		31.368559, 39.518192, 54.222286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946482, 40.039093, 53.609806>,  <30.687643, 39.461037, 54.070347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946482, 40.039093, 53.609806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.297073, 39.875252, 53.711006>,  <31.507427, 39.776947, 53.771725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.297073, 39.875252, 53.711006>,  <30.946482, 40.039093, 53.609806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297073, 39.875252, 53.711006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297957, 0.048725, -0.953335,
		0.378164, 0.910960, 0.164752,
		0.876478, -0.409606, 0.253001,
		31.560017, 39.752369, 53.786907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462351, 40.387440, 53.168812>,  <30.946482, 40.039093, 53.609806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462351, 40.387440, 53.168812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.633686, 40.043499, 53.279938>,  <31.736488, 39.837135, 53.346615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.633686, 40.043499, 53.279938>,  <31.462351, 40.387440, 53.168812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633686, 40.043499, 53.279938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385669, -0.104079, -0.916748,
		0.817180, 0.499827, 0.287036,
		0.428340, -0.859849, 0.277819,
		31.762188, 39.785545, 53.363285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208088, 40.479301, 52.914024>,  <31.462351, 40.387440, 53.168812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208088, 40.479301, 52.914024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.099369, 40.098961, 52.973362>,  <32.034138, 39.870758, 53.008965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.099369, 40.098961, 52.973362>,  <32.208088, 40.479301, 52.914024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099369, 40.098961, 52.973362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466169, -0.264942, -0.844093,
		0.841910, -0.160270, 0.515268,
		-0.271799, -0.950852, 0.148344,
		32.017830, 39.813705, 53.017864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828655, 40.191601, 52.700100>,  <32.208088, 40.479301, 52.914024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828655, 40.191601, 52.700100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.541153, 39.914295, 52.679043>,  <32.368652, 39.747910, 52.666409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.541153, 39.914295, 52.679043>,  <32.828655, 40.191601, 52.700100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541153, 39.914295, 52.679043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291366, -0.231603, -0.928152,
		0.631265, -0.682452, 0.368460,
		-0.718756, -0.693267, -0.052640,
		32.325527, 39.706314, 52.663250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037750, 39.612877, 52.547516>,  <32.828655, 40.191601, 52.700100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037750, 39.612877, 52.547516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.666458, 39.553242, 52.411190>,  <32.443684, 39.517460, 52.329395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.666458, 39.553242, 52.411190>,  <33.037750, 39.612877, 52.547516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666458, 39.553242, 52.411190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371533, -0.325891, -0.869344,
		0.018538, -0.933578, 0.357893,
		-0.928234, -0.149085, -0.340814,
		32.387989, 39.508518, 52.308945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150902, 39.158298, 52.087261>,  <33.037750, 39.612877, 52.547516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150902, 39.158298, 52.087261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.786022, 39.280468, 51.978008>,  <32.567093, 39.353771, 51.912457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.786022, 39.280468, 51.978008>,  <33.150902, 39.158298, 52.087261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786022, 39.280468, 51.978008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201522, -0.245983, -0.948093,
		-0.356762, -0.919895, 0.162835,
		-0.912201, 0.305428, -0.273137,
		32.512363, 39.372097, 51.896069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823116, 38.642395, 51.793640>,  <33.150902, 39.158298, 52.087261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823116, 38.642395, 51.793640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.646793, 38.974667, 51.657600>,  <32.541000, 39.174030, 51.575977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.646793, 38.974667, 51.657600>,  <32.823116, 38.642395, 51.793640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646793, 38.974667, 51.657600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334012, -0.199882, -0.921131,
		-0.833139, -0.519642, -0.189345,
		-0.440812, 0.830674, -0.340096,
		32.514549, 39.223869, 51.555573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541916, 38.388142, 51.210213>,  <32.823116, 38.642395, 51.793640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541916, 38.388142, 51.210213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.501404, 38.779175, 51.136368>,  <32.477097, 39.013794, 51.092060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.501404, 38.779175, 51.136368>,  <32.541916, 38.388142, 51.210213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501404, 38.779175, 51.136368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271087, -0.151423, -0.950570,
		-0.957212, -0.146316, -0.249674,
		-0.101277, 0.977580, -0.184608,
		32.471020, 39.072449, 51.080986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170368, 38.453625, 50.571640>,  <32.541916, 38.388142, 51.210213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170368, 38.453625, 50.571640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.366779, 38.799953, 50.610092>,  <32.484627, 39.007751, 50.633163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.366779, 38.799953, 50.610092>,  <32.170368, 38.453625, 50.571640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366779, 38.799953, 50.610092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464324, -0.166756, -0.869825,
		-0.737085, 0.471743, -0.483905,
		0.491028, 0.865824, 0.096128,
		32.514088, 39.059700, 50.638931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072086, 38.769966, 50.010635>,  <32.170368, 38.453625, 50.571640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072086, 38.769966, 50.010635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.384262, 38.974293, 50.154850>,  <32.571568, 39.096889, 50.241379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.384262, 38.974293, 50.154850>,  <32.072086, 38.769966, 50.010635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384262, 38.974293, 50.154850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477683, -0.115094, -0.870961,
		-0.403404, 0.851952, -0.333830,
		0.780439, 0.510814, 0.360534,
		32.618393, 39.127537, 50.263012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461838, 38.966949, 49.559185>,  <32.072086, 38.769966, 50.010635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461838, 38.966949, 49.559185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.272486, 38.617828, 49.511658>,  <31.158875, 38.408356, 49.483143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.272486, 38.617828, 49.511658>,  <31.461838, 38.966949, 49.559185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272486, 38.617828, 49.511658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458394, 0.128909, 0.879350,
		-0.752186, 0.470735, -0.461113,
		-0.473382, -0.872807, -0.118818,
		31.130470, 38.355988, 49.476013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686211, 39.169800, 49.655663>,  <31.461838, 38.966949, 49.559185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686211, 39.169800, 49.655663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.773178, 38.782013, 49.701031>,  <30.825359, 38.549339, 49.728252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.773178, 38.782013, 49.701031>,  <30.686211, 39.169800, 49.655663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773178, 38.782013, 49.701031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550703, -0.025901, 0.834299,
		-0.805887, -0.243852, -0.539520,
		0.217420, -0.969466, 0.113417,
		30.838404, 38.491173, 49.735054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098289, 38.992893, 50.003357>,  <30.686211, 39.169800, 49.655663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098289, 38.992893, 50.003357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361221, 38.699169, 50.071129>,  <30.518980, 38.522934, 50.111790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361221, 38.699169, 50.071129>,  <30.098289, 38.992893, 50.003357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361221, 38.699169, 50.071129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388728, -0.137784, 0.910992,
		-0.645605, -0.664684, -0.376016,
		0.657331, -0.734309, 0.169428,
		30.558420, 38.478878, 50.121956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715227, 38.421192, 50.149265>,  <30.098289, 38.992893, 50.003357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715227, 38.421192, 50.149265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070425, 38.315281, 50.299656>,  <30.283545, 38.251736, 50.389889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070425, 38.315281, 50.299656>,  <29.715227, 38.421192, 50.149265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070425, 38.315281, 50.299656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447156, -0.306383, 0.840345,
		-0.107310, -0.914343, -0.390463,
		0.887995, -0.264776, 0.375976,
		30.336824, 38.235847, 50.412449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668308, 37.746704, 50.429440>,  <29.715227, 38.421192, 50.149265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668308, 37.746704, 50.429440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.963253, 37.933498, 50.624668>,  <30.140221, 38.045574, 50.741806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.963253, 37.933498, 50.624668>,  <29.668308, 37.746704, 50.429440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963253, 37.933498, 50.624668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440971, -0.214562, 0.871497,
		0.511702, -0.857837, 0.047719,
		0.737364, 0.466989, 0.488073,
		30.184462, 38.073593, 50.771091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610126, 37.271694, 50.973248>,  <29.668308, 37.746704, 50.429440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610126, 37.271694, 50.973248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805193, 37.597660, 51.098534>,  <29.922234, 37.793240, 51.173706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805193, 37.597660, 51.098534>,  <29.610126, 37.271694, 50.973248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805193, 37.597660, 51.098534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420035, -0.095503, 0.902469,
		0.765344, -0.571664, 0.295717,
		0.487667, 0.814910, 0.313212,
		29.951494, 37.842133, 51.192497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023798, 37.058788, 51.528076>,  <29.610126, 37.271694, 50.973248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023798, 37.058788, 51.528076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.995630, 37.455547, 51.570362>,  <29.978729, 37.693604, 51.595734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.995630, 37.455547, 51.570362>,  <30.023798, 37.058788, 51.528076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995630, 37.455547, 51.570362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431777, -0.125845, 0.893158,
		0.899227, 0.017252, 0.437141,
		-0.070421, 0.991900, 0.105715,
		29.974504, 37.753117, 51.602077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166292, 37.099709, 52.310135>,  <30.023798, 37.058788, 51.528076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166292, 37.099709, 52.310135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027569, 37.459030, 52.202229>,  <29.944336, 37.674622, 52.137486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027569, 37.459030, 52.202229>,  <30.166292, 37.099709, 52.310135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027569, 37.459030, 52.202229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433195, 0.101698, 0.895544,
		0.831906, 0.427443, 0.353872,
		-0.346806, 0.898304, -0.269770,
		29.923527, 37.728519, 52.121296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369957, 37.536270, 52.836674>,  <30.166292, 37.099709, 52.310135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369957, 37.536270, 52.836674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.061033, 37.719028, 52.660137>,  <29.875679, 37.828686, 52.554214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.061033, 37.719028, 52.660137>,  <30.369957, 37.536270, 52.836674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061033, 37.719028, 52.660137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323848, 0.314504, 0.892306,
		0.546497, 0.832063, -0.094928,
		-0.772311, 0.456900, -0.441337,
		29.829340, 37.856098, 52.527737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379131, 38.167538, 53.126186>,  <30.369957, 37.536270, 52.836674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379131, 38.167538, 53.126186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017273, 38.082657, 52.978355>,  <29.800158, 38.031731, 52.889656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017273, 38.082657, 52.978355>,  <30.379131, 38.167538, 53.126186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017273, 38.082657, 52.978355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412207, 0.215545, 0.885227,
		-0.108184, 0.953159, -0.282462,
		-0.904645, -0.212200, -0.369580,
		29.745880, 38.018997, 52.867481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871799, 38.789928, 53.180534>,  <30.379131, 38.167538, 53.126186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871799, 38.789928, 53.180534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632490, 38.470230, 53.157631>,  <29.488905, 38.278412, 53.143890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632490, 38.470230, 53.157631>,  <29.871799, 38.789928, 53.180534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632490, 38.470230, 53.157631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443984, 0.271161, 0.854020,
		-0.667043, 0.536361, -0.517080,
		-0.598274, -0.799243, -0.057260,
		29.453009, 38.230457, 53.140453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209679, 39.075096, 53.317318>,  <29.871799, 38.789928, 53.180534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209679, 39.075096, 53.317318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178211, 38.681576, 53.381752>,  <29.159330, 38.445465, 53.420414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178211, 38.681576, 53.381752>,  <29.209679, 39.075096, 53.317318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178211, 38.681576, 53.381752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498784, 0.178754, 0.848093,
		-0.863149, -0.013628, -0.504766,
		-0.078671, -0.983799, 0.161089,
		29.154610, 38.386436, 53.430080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533785, 39.009033, 53.531967>,  <29.209679, 39.075096, 53.317318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533785, 39.009033, 53.531967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728970, 38.683563, 53.658352>,  <28.846081, 38.488281, 53.734180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728970, 38.683563, 53.658352>,  <28.533785, 39.009033, 53.531967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728970, 38.683563, 53.658352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379589, 0.128144, 0.916238,
		-0.786006, -0.567023, -0.246331,
		0.487962, -0.813673, 0.315958,
		28.875359, 38.439461, 53.753139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022161, 38.630161, 53.885635>,  <28.533785, 39.009033, 53.531967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022161, 38.630161, 53.885635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347410, 38.434986, 54.012604>,  <28.542559, 38.317883, 54.088783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347410, 38.434986, 54.012604>,  <28.022161, 38.630161, 53.885635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347410, 38.434986, 54.012604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391434, -0.054735, 0.918577,
		-0.430832, -0.871162, -0.235500,
		0.813120, -0.487935, 0.317420,
		28.591347, 38.288605, 54.107830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.484760, 33.956364, 57.709408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.240513, 34.221596, 57.536217>,  <33.093964, 34.380733, 57.432301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.240513, 34.221596, 57.536217>,  <33.484760, 33.956364, 57.709408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240513, 34.221596, 57.536217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466347, -0.140810, -0.873323,
		-0.640048, -0.735188, -0.223242,
		-0.610622, 0.663077, -0.432978,
		33.057327, 34.420517, 57.406322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139820, 33.611839, 57.152012>,  <33.484760, 33.956364, 57.709408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139820, 33.611839, 57.152012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097214, 33.992531, 57.036865>,  <33.071651, 34.220947, 56.967777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097214, 33.992531, 57.036865>,  <33.139820, 33.611839, 57.152012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097214, 33.992531, 57.036865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321728, -0.240949, -0.915661,
		-0.940822, -0.190144, -0.280534,
		-0.106513, 0.951729, -0.287865,
		33.065258, 34.278049, 56.950504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662025, 33.487003, 56.680725>,  <33.139820, 33.611839, 57.152012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662025, 33.487003, 56.680725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859676, 33.826069, 56.603470>,  <32.978268, 34.029507, 56.557117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859676, 33.826069, 56.603470>,  <32.662025, 33.487003, 56.680725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859676, 33.826069, 56.603470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259650, -0.355898, -0.897729,
		-0.829709, 0.393448, -0.395956,
		0.494130, 0.847665, -0.193133,
		33.007915, 34.080368, 56.545528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626045, 33.507370, 56.071678>,  <32.662025, 33.487003, 56.680725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626045, 33.507370, 56.071678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880432, 33.815895, 56.081642>,  <33.033066, 34.001011, 56.087620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880432, 33.815895, 56.081642>,  <32.626045, 33.507370, 56.071678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880432, 33.815895, 56.081642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157933, -0.098485, -0.982526,
		-0.755383, 0.628788, -0.184450,
		0.635966, 0.771315, 0.024913,
		33.071220, 34.047291, 56.089115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432037, 33.972691, 55.498455>,  <32.626045, 33.507370, 56.071678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432037, 33.972691, 55.498455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815632, 34.048927, 55.582382>,  <33.045788, 34.094669, 55.632740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815632, 34.048927, 55.582382>,  <32.432037, 33.972691, 55.498455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815632, 34.048927, 55.582382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236878, -0.132311, -0.962488,
		-0.155679, 0.972712, -0.172031,
		0.958985, 0.190589, 0.209816,
		33.103329, 34.106106, 55.645329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720463, 34.491467, 55.039734>,  <32.432037, 33.972691, 55.498455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720463, 34.491467, 55.039734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.022251, 34.266003, 55.174229>,  <33.203323, 34.130722, 55.254925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.022251, 34.266003, 55.174229>,  <32.720463, 34.491467, 55.039734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022251, 34.266003, 55.174229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314958, -0.138527, -0.938942,
		0.575824, 0.814307, 0.073015,
		0.754472, -0.563662, 0.336240,
		33.248592, 34.096905, 55.275101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194618, 34.662510, 54.507481>,  <32.720463, 34.491467, 55.039734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194618, 34.662510, 54.507481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347919, 34.343639, 54.694084>,  <33.439899, 34.152317, 54.806046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347919, 34.343639, 54.694084>,  <33.194618, 34.662510, 54.507481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347919, 34.343639, 54.694084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341248, -0.347132, -0.873527,
		0.858293, 0.493977, 0.138995,
		0.383252, -0.797174, 0.466510,
		33.462894, 34.104488, 54.834038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872452, 34.592628, 54.274296>,  <33.194618, 34.662510, 54.507481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872452, 34.592628, 54.274296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814915, 34.222214, 54.413872>,  <33.780392, 33.999966, 54.497620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814915, 34.222214, 54.413872>,  <33.872452, 34.592628, 54.274296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814915, 34.222214, 54.413872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518033, -0.370897, -0.770764,
		0.843180, 0.069898, 0.533069,
		-0.143838, -0.926040, 0.348943,
		33.771763, 33.944401, 54.518555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578457, 34.224640, 54.413723>,  <33.872452, 34.592628, 54.274296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578457, 34.224640, 54.413723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296791, 33.941132, 54.396774>,  <34.127792, 33.771027, 54.386604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296791, 33.941132, 54.396774>,  <34.578457, 34.224640, 54.413723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296791, 33.941132, 54.396774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627950, -0.593798, -0.503073,
		0.331399, -0.380858, 0.863205,
		-0.704168, -0.708767, -0.042375,
		34.085541, 33.728500, 54.384060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835884, 33.601097, 54.573261>,  <34.578457, 34.224640, 54.413723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835884, 33.601097, 54.573261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512676, 33.484612, 54.368404>,  <34.318752, 33.414722, 54.245491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512676, 33.484612, 54.368404>,  <34.835884, 33.601097, 54.573261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512676, 33.484612, 54.368404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571632, -0.597928, -0.561889,
		-0.142597, -0.746778, 0.649606,
		-0.808024, -0.291212, -0.512145,
		34.270267, 33.397247, 54.214760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921585, 32.793495, 54.487728>,  <34.835884, 33.601097, 54.573261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921585, 32.793495, 54.487728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638069, 32.917896, 54.234463>,  <34.467960, 32.992535, 54.082504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638069, 32.917896, 54.234463>,  <34.921585, 32.793495, 54.487728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638069, 32.917896, 54.234463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497618, -0.415749, -0.761268,
		-0.499991, -0.854653, 0.139920,
		-0.708791, 0.311000, -0.633161,
		34.425430, 33.011196, 54.044514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919521, 32.264408, 54.061771>,  <34.921585, 32.793495, 54.487728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919521, 32.264408, 54.061771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740364, 32.551510, 53.848518>,  <34.632870, 32.723770, 53.720566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740364, 32.551510, 53.848518>,  <34.919521, 32.264408, 54.061771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740364, 32.551510, 53.848518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342909, -0.412783, -0.843815,
		-0.825716, -0.560752, -0.061242,
		-0.447892, 0.717752, -0.533128,
		34.605995, 32.766834, 53.688580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549000, 31.984636, 53.492535>,  <34.919521, 32.264408, 54.061771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549000, 31.984636, 53.492535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663548, 32.354782, 53.393188>,  <34.732277, 32.576870, 53.333580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663548, 32.354782, 53.393188>,  <34.549000, 31.984636, 53.492535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663548, 32.354782, 53.393188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344216, -0.341285, -0.874666,
		-0.894151, 0.164989, -0.416261,
		0.286373, 0.925367, -0.248368,
		34.749458, 32.632393, 53.318680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571552, 31.858063, 52.815144>,  <34.549000, 31.984636, 53.492535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571552, 31.858063, 52.815144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750046, 32.208878, 52.886349>,  <34.857140, 32.419365, 52.929073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750046, 32.208878, 52.886349>,  <34.571552, 31.858063, 52.815144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750046, 32.208878, 52.886349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623879, -0.162258, -0.764491,
		-0.641602, 0.452198, -0.619568,
		0.446231, 0.877035, 0.178012,
		34.883915, 32.471989, 52.939751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910801, 31.759459, 52.325291>,  <34.571552, 31.858063, 52.815144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910801, 31.759459, 52.325291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765690, 31.387903, 52.355122>,  <33.678623, 31.164970, 52.373020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765690, 31.387903, 52.355122>,  <33.910801, 31.759459, 52.325291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765690, 31.387903, 52.355122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558257, 0.280706, 0.780739,
		-0.746152, 0.241603, -0.620392,
		-0.362777, -0.928887, 0.074573,
		33.656857, 31.109238, 52.377495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302242, 31.904202, 52.508854>,  <33.910801, 31.759459, 52.325291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302242, 31.904202, 52.508854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342010, 31.514147, 52.588078>,  <33.365871, 31.280115, 52.635612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342010, 31.514147, 52.588078>,  <33.302242, 31.904202, 52.508854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342010, 31.514147, 52.588078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628985, 0.092654, 0.771877,
		-0.771035, -0.201316, -0.604134,
		0.099416, -0.975134, 0.198064,
		33.371834, 31.221607, 52.647495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683887, 31.644680, 52.424892>,  <33.302242, 31.904202, 52.508854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683887, 31.644680, 52.424892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.833870, 31.348276, 52.647713>,  <32.923859, 31.170433, 52.781406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.833870, 31.348276, 52.647713>,  <32.683887, 31.644680, 52.424892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833870, 31.348276, 52.647713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835962, -0.010532, 0.548687,
		-0.400716, -0.671411, -0.623405,
		0.374960, -0.741011, 0.557054,
		32.946358, 31.125973, 52.814827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143177, 31.129377, 52.532681>,  <32.683887, 31.644680, 52.424892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143177, 31.129377, 52.532681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383923, 31.058840, 52.844234>,  <32.528370, 31.016518, 53.031166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383923, 31.058840, 52.844234>,  <32.143177, 31.129377, 52.532681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383923, 31.058840, 52.844234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798579, -0.125698, 0.588619,
		-0.005897, -0.976269, -0.216480,
		0.601862, -0.176347, 0.778886,
		32.564480, 31.005936, 53.077900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823740, 30.595213, 52.900253>,  <32.143177, 31.129377, 52.532681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823740, 30.595213, 52.900253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083576, 30.758606, 53.156746>,  <32.239479, 30.856642, 53.310642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083576, 30.758606, 53.156746>,  <31.823740, 30.595213, 52.900253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083576, 30.758606, 53.156746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746955, 0.185657, 0.638427,
		0.141739, -0.893684, 0.425721,
		0.649591, 0.408485, 0.641227,
		32.278454, 30.881151, 53.349113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736444, 30.305849, 53.564262>,  <31.823740, 30.595213, 52.900253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736444, 30.305849, 53.564262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908516, 30.656696, 53.649685>,  <32.011761, 30.867205, 53.700939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908516, 30.656696, 53.649685>,  <31.736444, 30.305849, 53.564262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908516, 30.656696, 53.649685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758193, 0.222644, 0.612841,
		0.489989, -0.425547, 0.760803,
		0.430180, 0.877120, 0.213554,
		32.037571, 30.919832, 53.713753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633476, 30.382256, 54.283848>,  <31.736444, 30.305849, 53.564262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633476, 30.382256, 54.283848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708220, 30.755453, 54.160816>,  <31.753065, 30.979372, 54.086998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708220, 30.755453, 54.160816>,  <31.633476, 30.382256, 54.283848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708220, 30.755453, 54.160816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696891, 0.346566, 0.627882,
		0.692407, 0.097028, 0.714953,
		0.186856, 0.932994, -0.307582,
		31.764277, 31.035351, 54.068542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745296, 30.756598, 54.947945>,  <31.633476, 30.382256, 54.283848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745296, 30.756598, 54.947945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689850, 31.013962, 54.646797>,  <31.656582, 31.168381, 54.466110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689850, 31.013962, 54.646797>,  <31.745296, 30.756598, 54.947945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689850, 31.013962, 54.646797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494766, 0.613548, 0.615439,
		0.857900, 0.457803, 0.233290,
		-0.138615, 0.643409, -0.752868,
		31.648266, 31.206984, 54.420937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999756, 31.293772, 55.122585>,  <31.745296, 30.756598, 54.947945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999756, 31.293772, 55.122585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738974, 31.413542, 54.843933>,  <31.582504, 31.485405, 54.676743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738974, 31.413542, 54.843933>,  <31.999756, 31.293772, 55.122585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738974, 31.413542, 54.843933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283897, 0.755513, 0.590425,
		0.703105, 0.582703, -0.407554,
		-0.651955, 0.299427, -0.696633,
		31.543386, 31.503370, 54.634945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003380, 31.972797, 55.159325>,  <31.999756, 31.293772, 55.122585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003380, 31.972797, 55.159325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.661203, 31.893066, 54.968124>,  <31.455896, 31.845228, 54.853405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.661203, 31.893066, 54.968124>,  <32.003380, 31.972797, 55.159325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661203, 31.893066, 54.968124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458090, 0.721788, 0.518822,
		0.241603, 0.662791, -0.708757,
		-0.855443, -0.199325, -0.478004,
		31.404572, 31.833269, 54.824722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545723, 32.608669, 55.006172>,  <32.003380, 31.972797, 55.159325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545723, 32.608669, 55.006172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328327, 32.275333, 55.046494>,  <31.197889, 32.075333, 55.070686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328327, 32.275333, 55.046494>,  <31.545723, 32.608669, 55.006172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328327, 32.275333, 55.046494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644242, 0.491086, 0.586334,
		-0.538116, 0.253728, -0.803774,
		-0.543491, -0.833341, 0.100799,
		31.165279, 32.025330, 55.076733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926592, 32.819355, 54.755070>,  <31.545723, 32.608669, 55.006172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926592, 32.819355, 54.755070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.851498, 32.488277, 54.966606>,  <30.806442, 32.289631, 55.093529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.851498, 32.488277, 54.966606>,  <30.926592, 32.819355, 54.755070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851498, 32.488277, 54.966606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620571, 0.517291, 0.589323,
		-0.761346, -0.217547, -0.610758,
		-0.187734, -0.827698, 0.528841,
		30.795177, 32.239967, 55.125259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202950, 32.811241, 54.815678>,  <30.926592, 32.819355, 54.755070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202950, 32.811241, 54.815678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.364227, 32.598625, 55.113644>,  <30.460995, 32.471054, 55.292423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.364227, 32.598625, 55.113644>,  <30.202950, 32.811241, 54.815678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364227, 32.598625, 55.113644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462138, 0.584320, 0.667082,
		-0.789850, -0.613218, -0.010051,
		0.403194, -0.531539, 0.744916,
		30.485186, 32.439163, 55.337120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729530, 32.888550, 55.273331>,  <30.202950, 32.811241, 54.815678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729530, 32.888550, 55.273331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.042751, 32.755856, 55.483768>,  <30.230684, 32.676239, 55.610031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.042751, 32.755856, 55.483768>,  <29.729530, 32.888550, 55.273331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042751, 32.755856, 55.483768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344429, 0.473032, 0.810931,
		-0.517879, -0.816205, 0.256148,
		0.783052, -0.331739, 0.526098,
		30.277666, 32.656334, 55.641598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915934, 32.794353, 55.369034>,  <29.729530, 32.888550, 55.273331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915934, 32.794353, 55.369034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.777382, 33.121674, 55.185555>,  <28.694250, 33.318066, 55.075466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.777382, 33.121674, 55.185555>,  <28.915934, 32.794353, 55.369034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777382, 33.121674, 55.185555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071057, -0.464673, -0.882627,
		-0.935399, -0.338319, 0.102807,
		-0.346381, 0.818303, -0.458694,
		28.673468, 33.367165, 55.047947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517378, 32.458096, 54.838924>,  <28.915934, 32.794353, 55.369034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517378, 32.458096, 54.838924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.622175, 32.818428, 54.700443>,  <28.685053, 33.034630, 54.617355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.622175, 32.818428, 54.700443>,  <28.517378, 32.458096, 54.838924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622175, 32.818428, 54.700443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186450, -0.399220, -0.897697,
		-0.946888, 0.170641, -0.272554,
		0.261993, 0.900836, -0.346200,
		28.700773, 33.088680, 54.596584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187660, 32.444611, 54.234676>,  <28.517378, 32.458096, 54.838924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187660, 32.444611, 54.234676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.471802, 32.725208, 54.211674>,  <28.642286, 32.893566, 54.197872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.471802, 32.725208, 54.211674>,  <28.187660, 32.444611, 54.234676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471802, 32.725208, 54.211674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147546, -0.228306, -0.962344,
		-0.688207, 0.675119, -0.265680,
		0.710353, 0.701492, -0.057511,
		28.684908, 32.935658, 54.194420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888229, 32.927105, 53.725872>,  <28.187660, 32.444611, 54.234676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888229, 32.927105, 53.725872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.287783, 32.945103, 53.731594>,  <28.527515, 32.955902, 53.735027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.287783, 32.945103, 53.731594>,  <27.888229, 32.927105, 53.725872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287783, 32.945103, 53.731594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029531, -0.358946, -0.932891,
		-0.036844, 0.932273, -0.359874,
		0.998885, 0.044999, 0.014306,
		28.587448, 32.958603, 53.735886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941986, 33.061375, 53.077858>,  <27.888229, 32.927105, 53.725872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941986, 33.061375, 53.077858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.307072, 32.964386, 53.209408>,  <28.526123, 32.906193, 53.288338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.307072, 32.964386, 53.209408>,  <27.941986, 33.061375, 53.077858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307072, 32.964386, 53.209408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258997, -0.279218, -0.924639,
		0.316029, 0.929109, -0.192046,
		0.912713, -0.242474, 0.328878,
		28.580885, 32.891644, 53.308071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296665, 33.470814, 52.641426>,  <27.941986, 33.061375, 53.077858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296665, 33.470814, 52.641426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.555128, 33.205597, 52.792614>,  <28.710205, 33.046467, 52.883327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.555128, 33.205597, 52.792614>,  <28.296665, 33.470814, 52.641426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555128, 33.205597, 52.792614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311812, -0.222674, -0.923683,
		0.696601, 0.714699, 0.062861,
		0.646158, -0.663039, 0.377967,
		28.748976, 33.006683, 52.906006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911703, 33.729519, 52.369595>,  <28.296665, 33.470814, 52.641426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911703, 33.729519, 52.369595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.938135, 33.336304, 52.438019>,  <28.953995, 33.100372, 52.479073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.938135, 33.336304, 52.438019>,  <28.911703, 33.729519, 52.369595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938135, 33.336304, 52.438019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394520, -0.131726, -0.909397,
		0.916508, 0.127583, 0.379125,
		0.066083, -0.983042, 0.171062,
		28.957960, 33.041389, 52.489338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545969, 33.601139, 52.204391>,  <28.911703, 33.729519, 52.369595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545969, 33.601139, 52.204391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.358763, 33.248947, 52.174175>,  <29.246439, 33.037632, 52.156044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.358763, 33.248947, 52.174175>,  <29.545969, 33.601139, 52.204391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358763, 33.248947, 52.174175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432523, -0.153680, -0.888429,
		0.770638, -0.448475, 0.452755,
		-0.468017, -0.880484, -0.075544,
		29.218357, 32.984802, 52.151512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013433, 33.071308, 52.016960>,  <29.545969, 33.601139, 52.204391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013433, 33.071308, 52.016960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.664989, 32.936771, 51.873829>,  <29.455923, 32.856049, 51.787952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.664989, 32.936771, 51.873829>,  <30.013433, 33.071308, 52.016960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664989, 32.936771, 51.873829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464079, -0.325499, -0.823821,
		0.160616, -0.883698, 0.439636,
		-0.871110, -0.336345, -0.357825,
		29.403656, 32.835869, 51.766479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999331, 32.291859, 51.847935>,  <30.013433, 33.071308, 52.016960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999331, 32.291859, 51.847935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.737988, 32.486572, 51.616016>,  <29.581181, 32.603401, 51.476864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.737988, 32.486572, 51.616016>,  <29.999331, 32.291859, 51.847935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737988, 32.486572, 51.616016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453513, -0.361570, -0.814612,
		-0.606176, -0.795180, 0.015474,
		-0.653359, 0.486781, -0.579799,
		29.541981, 32.632607, 51.442078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791216, 31.891504, 51.302437>,  <29.999331, 32.291859, 51.847935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791216, 31.891504, 51.302437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.700802, 32.249954, 51.149666>,  <29.646553, 32.465023, 51.058002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.700802, 32.249954, 51.149666>,  <29.791216, 31.891504, 51.302437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700802, 32.249954, 51.149666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396403, -0.273523, -0.876384,
		-0.889816, -0.349488, -0.293402,
		-0.226034, 0.896127, -0.381924,
		29.632992, 32.518791, 51.035088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707584, 31.728054, 50.652477>,  <29.791216, 31.891504, 51.302437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707584, 31.728054, 50.652477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714048, 32.127560, 50.633656>,  <29.717926, 32.367264, 50.622364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714048, 32.127560, 50.633656>,  <29.707584, 31.728054, 50.652477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714048, 32.127560, 50.633656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299831, -0.049734, -0.952695,
		-0.953855, 0.001286, -0.300264,
		0.016158, 0.998762, -0.047053,
		29.718895, 32.427189, 50.619541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479971, 31.863970, 49.982239>,  <29.707584, 31.728054, 50.652477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479971, 31.863970, 49.982239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.703016, 32.169540, 50.112152>,  <29.836843, 32.352882, 50.190098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.703016, 32.169540, 50.112152>,  <29.479971, 31.863970, 49.982239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703016, 32.169540, 50.112152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498493, 0.004685, -0.866881,
		-0.663754, 0.645287, -0.378200,
		0.557615, 0.763926, 0.324781,
		29.870300, 32.398720, 50.209587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557146, 32.181671, 49.402374>,  <29.479971, 31.863970, 49.982239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557146, 32.181671, 49.402374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.854671, 32.312847, 49.635334>,  <30.033188, 32.391552, 49.775112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.854671, 32.312847, 49.635334>,  <29.557146, 32.181671, 49.402374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854671, 32.312847, 49.635334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610837, 0.020195, -0.791499,
		-0.271328, 0.944482, -0.185298,
		0.743814, 0.327942, 0.582404,
		30.077816, 32.411228, 49.810055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.797115, 38.012280, 54.209499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.163013, 38.064621, 54.362400>,  <28.382553, 38.096027, 54.454140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.163013, 38.064621, 54.362400>,  <27.797115, 38.012280, 54.209499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163013, 38.064621, 54.362400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356608, -0.183237, 0.916109,
		0.189922, -0.974321, -0.120951,
		0.914746, 0.130857, 0.382251,
		28.437437, 38.103878, 54.477074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951942, 37.324409, 54.681400>,  <27.797115, 38.012280, 54.209499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951942, 37.324409, 54.681400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.153694, 37.658447, 54.769230>,  <28.274744, 37.858871, 54.821930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.153694, 37.658447, 54.769230>,  <27.951942, 37.324409, 54.681400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153694, 37.658447, 54.769230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327199, -0.050490, 0.943606,
		0.799090, -0.547779, 0.247777,
		0.504377, 0.835098, 0.219578,
		28.305008, 37.908978, 54.835102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256289, 37.151756, 55.317764>,  <27.951942, 37.324409, 54.681400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256289, 37.151756, 55.317764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.229767, 37.548626, 55.275455>,  <28.213854, 37.786747, 55.250069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.229767, 37.548626, 55.275455>,  <28.256289, 37.151756, 55.317764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229767, 37.548626, 55.275455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305846, 0.080694, 0.948655,
		0.949769, 0.095249, 0.298103,
		-0.066303, 0.992177, -0.105772,
		28.209875, 37.846279, 55.243725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550903, 37.464222, 55.919823>,  <28.256289, 37.151756, 55.317764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550903, 37.464222, 55.919823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.296879, 37.735760, 55.772385>,  <28.144464, 37.898682, 55.683922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.296879, 37.735760, 55.772385>,  <28.550903, 37.464222, 55.919823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296879, 37.735760, 55.772385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300084, 0.222885, 0.927508,
		0.711792, 0.699634, 0.062166,
		-0.635061, 0.678848, -0.368597,
		28.106361, 37.939415, 55.661804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633392, 37.995174, 56.348576>,  <28.550903, 37.464222, 55.919823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633392, 37.995174, 56.348576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.292017, 38.056156, 56.149216>,  <28.087193, 38.092747, 56.029598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.292017, 38.056156, 56.149216>,  <28.633392, 37.995174, 56.348576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292017, 38.056156, 56.149216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435317, 0.317347, 0.842490,
		0.286608, 0.935974, -0.204469,
		-0.853437, 0.152456, -0.498400,
		28.035986, 38.101894, 55.999695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473122, 38.627514, 56.614685>,  <28.633392, 37.995174, 56.348576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473122, 38.627514, 56.614685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.148249, 38.457027, 56.455338>,  <27.953325, 38.354736, 56.359730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.148249, 38.457027, 56.455338>,  <28.473122, 38.627514, 56.614685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148249, 38.457027, 56.455338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498049, 0.150952, 0.853909,
		-0.303817, 0.891937, -0.334878,
		-0.812183, -0.426218, -0.398367,
		27.904594, 38.329163, 56.335827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977564, 38.905708, 56.969639>,  <28.473122, 38.627514, 56.614685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977564, 38.905708, 56.969639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.789137, 38.583241, 56.826427>,  <27.676081, 38.389759, 56.740501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.789137, 38.583241, 56.826427>,  <27.977564, 38.905708, 56.969639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789137, 38.583241, 56.826427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389004, -0.174428, 0.904572,
		-0.791689, 0.565391, -0.231435,
		-0.471068, -0.806169, -0.358032,
		27.647816, 38.341389, 56.719017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167772, 39.022446, 57.135033>,  <27.977564, 38.905708, 56.969639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167772, 39.022446, 57.135033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.217033, 38.632008, 57.063408>,  <27.246590, 38.397743, 57.020435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.217033, 38.632008, 57.063408>,  <27.167772, 39.022446, 57.135033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217033, 38.632008, 57.063408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583283, -0.217174, 0.782698,
		-0.802879, 0.008049, -0.596088,
		0.123155, -0.976100, -0.179059,
		27.253981, 38.339176, 57.009689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630657, 38.871319, 57.435478>,  <27.167772, 39.022446, 57.135033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630657, 38.871319, 57.435478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.826355, 38.526409, 57.383137>,  <26.943773, 38.319462, 57.351730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.826355, 38.526409, 57.383137>,  <26.630657, 38.871319, 57.435478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826355, 38.526409, 57.383137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479330, -0.391191, 0.785628,
		-0.728616, -0.321642, -0.604703,
		0.489246, -0.862273, -0.130855,
		26.973129, 38.267727, 57.343880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148464, 38.467419, 57.612835>,  <26.630657, 38.871319, 57.435478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148464, 38.467419, 57.612835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.467554, 38.226730, 57.628674>,  <26.659008, 38.082317, 57.638176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.467554, 38.226730, 57.628674>,  <26.148464, 38.467419, 57.612835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467554, 38.226730, 57.628674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346323, -0.403394, 0.846955,
		-0.493660, -0.689349, -0.530188,
		0.797722, -0.601724, 0.039598,
		26.706871, 38.046215, 57.640553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916178, 37.808067, 57.838509>,  <26.148464, 38.467419, 57.612835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916178, 37.808067, 57.838509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.307495, 37.818573, 57.920731>,  <26.542286, 37.824875, 57.970062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.307495, 37.818573, 57.920731>,  <25.916178, 37.808067, 57.838509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307495, 37.818573, 57.920731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139334, -0.650876, 0.746288,
		0.153390, -0.758729, -0.633089,
		0.978293, 0.026263, 0.205555,
		26.600983, 37.826450, 57.982395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103994, 37.047363, 57.933613>,  <25.916178, 37.808067, 57.838509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103994, 37.047363, 57.933613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.368637, 37.275391, 58.128468>,  <26.527422, 37.412209, 58.245380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.368637, 37.275391, 58.128468>,  <26.103994, 37.047363, 57.933613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368637, 37.275391, 58.128468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277624, -0.417250, 0.865348,
		0.696565, -0.707759, -0.117790,
		0.661605, 0.570070, 0.487133,
		26.567120, 37.446411, 58.274609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396305, 36.722107, 58.532974>,  <26.103994, 37.047363, 57.933613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396305, 36.722107, 58.532974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.457602, 37.107349, 58.621471>,  <26.494379, 37.338493, 58.674568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.457602, 37.107349, 58.621471>,  <26.396305, 36.722107, 58.532974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457602, 37.107349, 58.621471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233822, -0.182189, 0.955057,
		0.960127, -0.198086, 0.197276,
		0.153242, 0.963104, 0.221242,
		26.503574, 37.396282, 58.687843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764904, 36.728405, 59.163937>,  <26.396305, 36.722107, 58.532974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764904, 36.728405, 59.163937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.580189, 37.078583, 59.106869>,  <26.469360, 37.288689, 59.072628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.580189, 37.078583, 59.106869>,  <26.764904, 36.728405, 59.163937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580189, 37.078583, 59.106869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348774, -0.031324, 0.936683,
		0.815542, 0.482308, 0.319796,
		-0.461787, 0.875441, -0.142671,
		26.441652, 37.341217, 59.064068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133448, 36.579605, 59.739464>,  <26.764904, 36.728405, 59.163937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133448, 36.579605, 59.739464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.908600, 36.248787, 59.737968>,  <26.773691, 36.050297, 59.737072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.908600, 36.248787, 59.737968>,  <27.133448, 36.579605, 59.739464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908600, 36.248787, 59.737968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472669, -0.317541, -0.822041,
		0.678678, -0.463856, 0.569416,
		-0.562121, -0.827047, -0.003743,
		26.739964, 36.000671, 59.736847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591175, 36.048916, 59.645050>,  <27.133448, 36.579605, 59.739464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591175, 36.048916, 59.645050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.228971, 35.918987, 59.535839>,  <27.011650, 35.841030, 59.470310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.228971, 35.918987, 59.535839>,  <27.591175, 36.048916, 59.645050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228971, 35.918987, 59.535839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412311, -0.521490, -0.747026,
		0.100268, -0.789012, 0.606141,
		-0.905509, -0.324822, -0.273030,
		26.957319, 35.821541, 59.453930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657120, 35.316242, 59.567078>,  <27.591175, 36.048916, 59.645050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657120, 35.316242, 59.567078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.336800, 35.418751, 59.350544>,  <27.144608, 35.480255, 59.220623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.336800, 35.418751, 59.350544>,  <27.657120, 35.316242, 59.567078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336800, 35.418751, 59.350544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311755, -0.593385, -0.742094,
		-0.511400, -0.763032, 0.395287,
		-0.800799, 0.256274, -0.541335,
		27.096560, 35.495632, 59.188145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458492, 34.690216, 59.277206>,  <27.657120, 35.316242, 59.567078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458492, 34.690216, 59.277206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.311750, 34.982765, 59.047245>,  <27.223705, 35.158295, 58.909267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.311750, 34.982765, 59.047245>,  <27.458492, 34.690216, 59.277206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311750, 34.982765, 59.047245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226967, -0.528948, -0.817741,
		-0.902166, -0.430476, 0.028050,
		-0.366855, 0.731372, -0.574902,
		27.201694, 35.202175, 58.874775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038750, 34.332970, 58.835835>,  <27.458492, 34.690216, 59.277206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038750, 34.332970, 58.835835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.122057, 34.669006, 58.635487>,  <27.172041, 34.870628, 58.515278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.122057, 34.669006, 58.635487>,  <27.038750, 34.332970, 58.835835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122057, 34.669006, 58.635487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183342, -0.536551, -0.823710,
		-0.960734, 0.079721, -0.265770,
		0.208266, 0.840093, -0.500867,
		27.184536, 34.921036, 58.485226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662531, 34.241257, 58.133602>,  <27.038750, 34.332970, 58.835835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662531, 34.241257, 58.133602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.919231, 34.536728, 58.051128>,  <27.073252, 34.714012, 58.001644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.919231, 34.536728, 58.051128>,  <26.662531, 34.241257, 58.133602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919231, 34.536728, 58.051128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300826, -0.489770, -0.818309,
		-0.705451, 0.463122, -0.536523,
		0.641750, 0.738677, -0.206189,
		27.111755, 34.758331, 57.989273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532692, 34.463104, 57.457405>,  <26.662531, 34.241257, 58.133602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532692, 34.463104, 57.457405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.909575, 34.581268, 57.520626>,  <27.135704, 34.652168, 57.558559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.909575, 34.581268, 57.520626>,  <26.532692, 34.463104, 57.457405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909575, 34.581268, 57.520626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265118, -0.368968, -0.890828,
		-0.204842, 0.881247, -0.425962,
		0.942206, 0.295409, 0.158054,
		27.192236, 34.669891, 57.568043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707747, 34.682056, 56.815266>,  <26.532692, 34.463104, 57.457405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707747, 34.682056, 56.815266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.070862, 34.685356, 56.983006>,  <27.288731, 34.687336, 57.083649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.070862, 34.685356, 56.983006>,  <26.707747, 34.682056, 56.815266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070862, 34.685356, 56.983006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408638, -0.242709, -0.879834,
		0.094523, 0.970064, -0.223698,
		0.907789, 0.008247, 0.419346,
		27.343199, 34.687832, 57.108810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112898, 35.020741, 56.359631>,  <26.707747, 34.682056, 56.815266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112898, 35.020741, 56.359631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.359238, 34.792812, 56.577267>,  <27.507042, 34.656055, 56.707848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.359238, 34.792812, 56.577267>,  <27.112898, 35.020741, 56.359631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359238, 34.792812, 56.577267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559693, -0.169619, -0.811155,
		0.554503, 0.804071, 0.214466,
		0.615849, -0.569824, 0.544087,
		27.543993, 34.621864, 56.740494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692921, 35.175674, 56.064606>,  <27.112898, 35.020741, 56.359631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692921, 35.175674, 56.064606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.814636, 34.852291, 56.266121>,  <27.887665, 34.658260, 56.387028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.814636, 34.852291, 56.266121>,  <27.692921, 35.175674, 56.064606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814636, 34.852291, 56.266121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608474, -0.241945, -0.755792,
		0.732917, 0.536519, 0.418306,
		0.304290, -0.808462, 0.503784,
		27.905924, 34.609753, 56.417255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334564, 35.063934, 55.850784>,  <27.692921, 35.175674, 56.064606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334564, 35.063934, 55.850784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.259300, 34.714092, 56.029514>,  <28.214142, 34.504185, 56.136753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.259300, 34.714092, 56.029514>,  <28.334564, 35.063934, 55.850784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259300, 34.714092, 56.029514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489591, -0.477924, -0.729307,
		0.851409, 0.081538, 0.518126,
		-0.188159, -0.874609, 0.446828,
		28.202852, 34.451710, 56.163563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986834, 34.776081, 56.006073>,  <28.334564, 35.063934, 55.850784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986834, 34.776081, 56.006073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.707327, 34.497807, 55.939445>,  <28.539623, 34.330841, 55.899471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.707327, 34.497807, 55.939445>,  <28.986834, 34.776081, 56.006073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707327, 34.497807, 55.939445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548834, -0.372035, -0.748580,
		0.458811, -0.614498, 0.641782,
		-0.698766, -0.695688, -0.166564,
		28.497698, 34.289101, 55.889477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307331, 34.187920, 55.826748>,  <28.986834, 34.776081, 56.006073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307331, 34.187920, 55.826748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.931847, 34.124790, 55.704166>,  <28.706556, 34.086914, 55.630619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.931847, 34.124790, 55.704166>,  <29.307331, 34.187920, 55.826748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931847, 34.124790, 55.704166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341803, -0.541323, -0.768206,
		-0.044648, -0.825870, 0.562091,
		-0.938711, -0.157825, -0.306454,
		28.650234, 34.077442, 55.612228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204803, 33.406853, 55.797695>,  <29.307331, 34.187920, 55.826748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204803, 33.406853, 55.797695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.917805, 33.577286, 55.577274>,  <28.745605, 33.679546, 55.445023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.917805, 33.577286, 55.577274>,  <29.204803, 33.406853, 55.797695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917805, 33.577286, 55.577274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233431, -0.598277, -0.766534,
		-0.656288, -0.678615, 0.329799,
		-0.717493, 0.426081, -0.551052,
		28.702557, 33.705109, 55.411961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464565, 32.644070, 55.972267>,  <29.204803, 33.406853, 55.797695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464565, 32.644070, 55.972267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.856672, 32.649651, 56.051136>,  <30.091938, 32.653000, 56.098457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.856672, 32.649651, 56.051136>,  <29.464565, 32.644070, 55.972267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856672, 32.649651, 56.051136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197541, 0.104289, 0.974732,
		-0.006961, -0.994449, 0.104988,
		0.980270, 0.013954, 0.197170,
		30.150753, 32.653839, 56.110287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630043, 32.150810, 56.566750>,  <29.464565, 32.644070, 55.972267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630043, 32.150810, 56.566750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.901825, 32.444141, 56.557159>,  <30.064894, 32.620140, 56.551403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.901825, 32.444141, 56.557159>,  <29.630043, 32.150810, 56.566750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901825, 32.444141, 56.557159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175705, 0.194352, 0.965068,
		0.712371, -0.651504, 0.260902,
		0.679452, 0.733328, -0.023978,
		30.105661, 32.664139, 56.549965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968700, 32.070702, 57.199036>,  <29.630043, 32.150810, 56.566750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968700, 32.070702, 57.199036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091599, 32.434494, 57.086998>,  <30.165337, 32.652767, 57.019775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091599, 32.434494, 57.086998>,  <29.968700, 32.070702, 57.199036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091599, 32.434494, 57.086998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159491, 0.339377, 0.927031,
		0.938170, -0.240153, 0.249325,
		0.307244, 0.909478, -0.280091,
		30.183771, 32.707336, 57.002972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478300, 32.274994, 57.693161>,  <29.968700, 32.070702, 57.199036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478300, 32.274994, 57.693161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.360535, 32.605553, 57.501163>,  <30.289875, 32.803886, 57.385963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.360535, 32.605553, 57.501163>,  <30.478300, 32.274994, 57.693161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360535, 32.605553, 57.501163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005219, 0.500857, 0.865514,
		0.955663, 0.257326, -0.143148,
		-0.294416, 0.826393, -0.479993,
		30.272209, 32.853470, 57.357166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988510, 32.786930, 57.883400>,  <30.478300, 32.274994, 57.693161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988510, 32.786930, 57.883400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.637583, 32.953171, 57.787411>,  <30.427027, 33.052914, 57.729816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.637583, 32.953171, 57.787411>,  <30.988510, 32.786930, 57.883400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637583, 32.953171, 57.787411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041310, 0.432785, 0.900550,
		0.478126, 0.799983, -0.362522,
		-0.877319, 0.415600, -0.239973,
		30.374388, 33.077850, 57.715420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889641, 33.241673, 58.386360>,  <30.988510, 32.786930, 57.883400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889641, 33.241673, 58.386360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519608, 33.261570, 58.235764>,  <30.297588, 33.273510, 58.145405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519608, 33.261570, 58.235764>,  <30.889641, 33.241673, 58.386360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519608, 33.261570, 58.235764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359833, 0.202122, 0.910861,
		0.121410, 0.978096, -0.169079,
		-0.925084, 0.049747, -0.376491,
		30.242083, 33.276493, 58.122818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631443, 33.919468, 58.550545>,  <30.889641, 33.241673, 58.386360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631443, 33.919468, 58.550545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.305088, 33.696068, 58.490677>,  <30.109276, 33.562027, 58.454758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.305088, 33.696068, 58.490677>,  <30.631443, 33.919468, 58.550545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305088, 33.696068, 58.490677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397640, 0.354052, 0.846481,
		-0.419774, 0.750146, -0.510950,
		-0.815888, -0.558505, -0.149666,
		30.060322, 33.528515, 58.445778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691126, 34.615608, 58.844528>,  <30.631443, 33.919468, 58.550545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691126, 34.615608, 58.844528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930141, 34.770401, 59.125439>,  <31.073551, 34.863277, 59.293983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930141, 34.770401, 59.125439>,  <30.691126, 34.615608, 58.844528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930141, 34.770401, 59.125439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782071, -0.087987, -0.616946,
		-0.176956, 0.917879, -0.355224,
		0.597537, 0.386983, 0.702277,
		31.109402, 34.886497, 59.336121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978712, 35.183811, 58.546722>,  <30.691126, 34.615608, 58.844528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978712, 35.183811, 58.546722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.233929, 35.071033, 58.833332>,  <31.387058, 35.003368, 59.005299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.233929, 35.071033, 58.833332>,  <30.978712, 35.183811, 58.546722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233929, 35.071033, 58.833332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768243, 0.170197, -0.617119,
		0.052041, 0.944214, 0.325193,
		0.638040, -0.281943, 0.716529,
		31.425341, 34.986450, 59.048290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419853, 35.692558, 58.584080>,  <30.978712, 35.183811, 58.546722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419853, 35.692558, 58.584080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604624, 35.373325, 58.738842>,  <31.715487, 35.181786, 58.831699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604624, 35.373325, 58.738842>,  <31.419853, 35.692558, 58.584080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604624, 35.373325, 58.738842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768358, 0.142199, -0.624023,
		0.443002, 0.585535, 0.678895,
		0.461925, -0.798078, 0.386906,
		31.743202, 35.133904, 58.854916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132000, 35.820763, 58.523872>,  <31.419853, 35.692558, 58.584080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132000, 35.820763, 58.523872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114315, 35.423218, 58.564453>,  <32.103706, 35.184692, 58.588802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114315, 35.423218, 58.564453>,  <32.132000, 35.820763, 58.523872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114315, 35.423218, 58.564453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727912, -0.101597, -0.678102,
		0.684244, 0.043867, 0.727932,
		-0.044209, -0.993858, 0.101449,
		32.101051, 35.125061, 58.594887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706779, 35.683498, 58.302250>,  <32.132000, 35.820763, 58.523872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706779, 35.683498, 58.302250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.548271, 35.316257, 58.305363>,  <32.453167, 35.095913, 58.307232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.548271, 35.316257, 58.305363>,  <32.706779, 35.683498, 58.302250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548271, 35.316257, 58.305363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621207, -0.274346, -0.734054,
		0.676072, -0.286046, 0.679046,
		-0.396267, -0.918102, 0.007783,
		32.429390, 35.040825, 58.307697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249454, 35.297714, 58.176365>,  <32.706779, 35.683498, 58.302250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249454, 35.297714, 58.176365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.934544, 35.061825, 58.104347>,  <32.745598, 34.920292, 58.061138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.934544, 35.061825, 58.104347>,  <33.249454, 35.297714, 58.176365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934544, 35.061825, 58.104347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495317, -0.430963, -0.754276,
		0.367225, -0.683003, 0.631389,
		-0.787278, -0.589727, -0.180042,
		32.698360, 34.884907, 58.050335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543556, 34.564648, 58.094543>,  <33.249454, 35.297714, 58.176365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543556, 34.564648, 58.094543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184513, 34.594810, 57.920830>,  <32.969086, 34.612907, 57.816601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184513, 34.594810, 57.920830>,  <33.543556, 34.564648, 58.094543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184513, 34.594810, 57.920830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378241, -0.374136, -0.846733,
		-0.226335, -0.924303, 0.307306,
		-0.897611, 0.075409, -0.434289,
		32.915230, 34.617432, 57.790543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.361183, 39.276939, 59.898361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046438, 39.126179, 59.702896>,  <28.857592, 39.035721, 59.585617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046438, 39.126179, 59.702896>,  <29.361183, 39.276939, 59.898361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046438, 39.126179, 59.702896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531850, -0.012532, -0.846746,
		0.313020, -0.926167, 0.210318,
		-0.786864, -0.376906, -0.488659,
		28.810379, 39.013107, 59.556297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463539, 38.735516, 59.529205>,  <29.361183, 39.276939, 59.898361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463539, 38.735516, 59.529205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159641, 38.889774, 59.319801>,  <28.977303, 38.982330, 59.194160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159641, 38.889774, 59.319801>,  <29.463539, 38.735516, 59.529205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159641, 38.889774, 59.319801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524623, -0.112082, -0.843924,
		-0.384136, -0.915812, -0.117168,
		-0.759744, 0.385650, -0.523511,
		28.931719, 39.005470, 59.162746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359194, 38.242817, 59.119469>,  <29.463539, 38.735516, 59.529205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359194, 38.242817, 59.119469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226473, 38.589279, 58.969975>,  <29.146839, 38.797157, 58.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226473, 38.589279, 58.969975>,  <29.359194, 38.242817, 59.119469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226473, 38.589279, 58.969975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549882, -0.144329, -0.822678,
		-0.766509, -0.478478, -0.428395,
		-0.331804, 0.866157, -0.373736,
		29.126932, 38.849125, 58.857853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250015, 38.102764, 58.415279>,  <29.359194, 38.242817, 59.119469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250015, 38.102764, 58.415279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244043, 38.502541, 58.427299>,  <29.240461, 38.742405, 58.434513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244043, 38.502541, 58.427299>,  <29.250015, 38.102764, 58.415279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244043, 38.502541, 58.427299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591606, 0.033060, -0.805549,
		-0.806089, 0.005755, -0.591766,
		-0.014928, 0.999437, 0.030054,
		29.239565, 38.802372, 58.436317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133482, 38.322556, 57.628841>,  <29.250015, 38.102764, 58.415279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133482, 38.322556, 57.628841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244152, 38.666351, 57.800766>,  <29.310555, 38.872627, 57.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244152, 38.666351, 57.800766>,  <29.133482, 38.322556, 57.628841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244152, 38.666351, 57.800766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508820, 0.248402, -0.824256,
		-0.815202, 0.446746, -0.368597,
		0.276673, 0.859485, 0.429811,
		29.327154, 38.924198, 57.929710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050932, 38.817863, 57.058968>,  <29.133482, 38.322556, 57.628841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050932, 38.817863, 57.058968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301565, 38.970062, 57.331032>,  <29.451944, 39.061382, 57.494270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301565, 38.970062, 57.331032>,  <29.050932, 38.817863, 57.058968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301565, 38.970062, 57.331032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626653, 0.272903, -0.729952,
		-0.463360, 0.883600, -0.067441,
		0.626581, 0.380493, 0.680163,
		29.489540, 39.084209, 57.535080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321529, 39.485928, 56.814621>,  <29.050932, 38.817863, 57.058968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321529, 39.485928, 56.814621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592783, 39.399307, 57.095543>,  <29.755535, 39.347336, 57.264095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592783, 39.399307, 57.095543>,  <29.321529, 39.485928, 56.814621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592783, 39.399307, 57.095543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722553, 0.371137, -0.583244,
		-0.134348, 0.902973, 0.408154,
		0.678135, -0.216555, 0.702308,
		29.796223, 39.334339, 57.306236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738111, 40.107521, 56.800011>,  <29.321529, 39.485928, 56.814621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738111, 40.107521, 56.800011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949282, 39.780373, 56.891567>,  <30.075983, 39.584084, 56.946499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949282, 39.780373, 56.891567>,  <29.738111, 40.107521, 56.800011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949282, 39.780373, 56.891567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631147, 0.197473, -0.750105,
		0.568287, 0.540461, 0.620445,
		0.527924, -0.817867, 0.228889,
		30.107658, 39.535011, 56.960236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366898, 40.335758, 56.974850>,  <29.738111, 40.107521, 56.800011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366898, 40.335758, 56.974850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416594, 39.952538, 56.871540>,  <30.446411, 39.722607, 56.809555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416594, 39.952538, 56.871540>,  <30.366898, 40.335758, 56.974850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416594, 39.952538, 56.871540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708657, 0.267867, -0.652727,
		0.694528, -0.101935, 0.712208,
		0.124241, -0.958048, -0.258278,
		30.453865, 39.665123, 56.794056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027136, 40.249989, 56.972515>,  <30.366898, 40.335758, 56.974850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027136, 40.249989, 56.972515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937416, 39.917957, 56.768295>,  <30.883585, 39.718739, 56.645763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937416, 39.917957, 56.768295>,  <31.027136, 40.249989, 56.972515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937416, 39.917957, 56.768295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821897, 0.120360, -0.556775,
		0.523618, -0.544499, 0.655244,
		-0.224298, -0.830081, -0.510545,
		30.870127, 39.668934, 56.615131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717104, 39.724350, 56.770271>,  <31.027136, 40.249989, 56.972515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717104, 39.724350, 56.770271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407761, 39.667618, 56.523113>,  <31.222155, 39.633579, 56.374817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407761, 39.667618, 56.523113>,  <31.717104, 39.724350, 56.770271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407761, 39.667618, 56.523113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626213, -0.018914, -0.779423,
		0.098860, -0.989710, 0.103444,
		-0.773359, -0.141832, -0.617899,
		31.175753, 39.625069, 56.337742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924334, 39.124657, 56.247787>,  <31.717104, 39.724350, 56.770271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924334, 39.124657, 56.247787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620361, 39.335087, 56.095078>,  <31.437979, 39.461346, 56.003452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620361, 39.335087, 56.095078>,  <31.924334, 39.124657, 56.247787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620361, 39.335087, 56.095078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435561, -0.023838, -0.899844,
		-0.482486, -0.850104, -0.211022,
		-0.759931, 0.526075, -0.381773,
		31.392382, 39.492908, 55.980545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724804, 39.081676, 56.515701>,  <31.924334, 39.124657, 56.247787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724804, 39.081676, 56.515701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950199, 38.805340, 56.696907>,  <33.085438, 38.639538, 56.805630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950199, 38.805340, 56.696907>,  <32.724804, 39.081676, 56.515701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950199, 38.805340, 56.696907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703217, -0.113332, 0.701884,
		-0.433546, -0.714073, -0.549671,
		0.563492, -0.690837, 0.453013,
		33.119247, 38.598087, 56.832809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266792, 38.555172, 56.764946>,  <32.724804, 39.081676, 56.515701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266792, 38.555172, 56.764946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585308, 38.521259, 57.004520>,  <32.776417, 38.500912, 57.148266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585308, 38.521259, 57.004520>,  <32.266792, 38.555172, 56.764946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585308, 38.521259, 57.004520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572051, -0.427432, 0.700043,
		0.196657, -0.900063, -0.388859,
		0.796294, -0.084779, 0.598940,
		32.824196, 38.495827, 57.184204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161575, 37.887104, 57.074680>,  <32.266792, 38.555172, 56.764946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161575, 37.887104, 57.074680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417133, 38.085434, 57.309959>,  <32.570469, 38.204430, 57.451126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417133, 38.085434, 57.309959>,  <32.161575, 37.887104, 57.074680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417133, 38.085434, 57.309959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513454, -0.294528, 0.805989,
		0.572867, -0.816954, 0.066409,
		0.638897, 0.495823, 0.588193,
		32.608803, 38.234180, 57.486416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262959, 37.487862, 57.695805>,  <32.161575, 37.887104, 57.074680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262959, 37.487862, 57.695805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403225, 37.842445, 57.816620>,  <32.487385, 38.055195, 57.889111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403225, 37.842445, 57.816620>,  <32.262959, 37.487862, 57.695805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403225, 37.842445, 57.816620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561996, -0.058799, 0.825047,
		0.749130, -0.459057, 0.477567,
		0.350663, 0.886458, 0.302037,
		32.508423, 38.108383, 57.907230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432808, 37.456600, 58.362053>,  <32.262959, 37.487862, 57.695805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432808, 37.456600, 58.362053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439949, 37.856075, 58.342865>,  <32.444233, 38.095760, 58.331352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439949, 37.856075, 58.342865>,  <32.432808, 37.456600, 58.362053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439949, 37.856075, 58.342865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381189, 0.051150, 0.923081,
		0.924325, 0.001800, 0.381603,
		0.017857, 0.998690, -0.047966,
		32.445305, 38.155682, 58.328476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733452, 37.712292, 58.921127>,  <32.432808, 37.456600, 58.362053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733452, 37.712292, 58.921127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499138, 38.013016, 58.800037>,  <32.358551, 38.193451, 58.727383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499138, 38.013016, 58.800037>,  <32.733452, 37.712292, 58.921127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499138, 38.013016, 58.800037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340645, 0.110536, 0.933672,
		0.735405, 0.650050, 0.191350,
		-0.585782, 0.751809, -0.302725,
		32.323402, 38.238560, 58.709221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672657, 38.034145, 59.504707>,  <32.733452, 37.712292, 58.921127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672657, 38.034145, 59.504707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383221, 38.199390, 59.283527>,  <32.209557, 38.298538, 59.150822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383221, 38.199390, 59.283527>,  <32.672657, 38.034145, 59.504707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383221, 38.199390, 59.283527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427725, 0.360371, 0.828965,
		0.541720, 0.836344, -0.084065,
		-0.723595, 0.413110, -0.552946,
		32.166142, 38.323322, 59.117645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550121, 38.857491, 59.561501>,  <32.672657, 38.034145, 59.504707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550121, 38.857491, 59.561501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202789, 38.676468, 59.480309>,  <31.994390, 38.567856, 59.431595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202789, 38.676468, 59.480309>,  <32.550121, 38.857491, 59.561501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202789, 38.676468, 59.480309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416569, 0.443295, 0.793700,
		-0.269213, 0.773747, -0.573445,
		-0.868329, -0.452554, -0.202978,
		31.942291, 38.540703, 59.419415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989847, 39.497536, 59.630684>,  <32.550121, 38.857491, 59.561501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989847, 39.497536, 59.630684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792143, 39.150097, 59.644764>,  <31.673521, 38.941631, 59.653214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792143, 39.150097, 59.644764>,  <31.989847, 39.497536, 59.630684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792143, 39.150097, 59.644764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502911, 0.318734, 0.803424,
		-0.709076, 0.379395, -0.594366,
		-0.494260, -0.868601, 0.035205,
		31.643866, 38.889515, 59.655327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381578, 39.678135, 59.798103>,  <31.989847, 39.497536, 59.630684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381578, 39.678135, 59.798103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357924, 39.285576, 59.871174>,  <31.343731, 39.050041, 59.915016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357924, 39.285576, 59.871174>,  <31.381578, 39.678135, 59.798103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357924, 39.285576, 59.871174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494750, 0.187751, 0.848512,
		-0.867021, -0.040198, -0.496648,
		-0.059138, -0.981394, 0.182672,
		31.340181, 38.991158, 59.925976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687731, 39.629761, 60.002369>,  <31.381578, 39.678135, 59.798103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687731, 39.629761, 60.002369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844053, 39.286728, 60.136127>,  <30.937847, 39.080910, 60.216385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844053, 39.286728, 60.136127>,  <30.687731, 39.629761, 60.002369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844053, 39.286728, 60.136127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639391, 0.008421, 0.768836,
		-0.662157, -0.514276, -0.545040,
		0.390805, -0.857583, 0.334399,
		30.961294, 39.029453, 60.236446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142015, 39.169418, 60.211372>,  <30.687731, 39.629761, 60.002369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142015, 39.169418, 60.211372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474850, 39.041431, 60.392593>,  <30.674549, 38.964638, 60.501328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474850, 39.041431, 60.392593>,  <30.142015, 39.169418, 60.211372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474850, 39.041431, 60.392593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523510, -0.183229, 0.832084,
		-0.183229, -0.929541, -0.319970,
		-0.832084, 0.319970, -0.453051,
		30.724476, 38.945442, 60.528507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926643, 38.639103, 60.697029>,  <30.142015, 39.169418, 60.211372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926643, 38.639103, 60.697029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304581, 38.718098, 60.801544>,  <30.531343, 38.765495, 60.864254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304581, 38.718098, 60.801544>,  <29.926643, 38.639103, 60.697029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304581, 38.718098, 60.801544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179617, -0.354673, 0.917575,
		0.273882, -0.913896, -0.299638,
		0.944842, 0.197487, 0.261289,
		30.588034, 38.777344, 60.879932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186491, 37.953499, 61.006271>,  <29.926643, 38.639103, 60.697029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186491, 37.953499, 61.006271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359703, 38.286934, 61.143456>,  <30.463631, 38.486996, 61.225765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359703, 38.286934, 61.143456>,  <30.186491, 37.953499, 61.006271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359703, 38.286934, 61.143456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371830, -0.181405, 0.910404,
		0.821113, -0.521755, 0.231398,
		0.433031, 0.833585, 0.342958,
		30.489613, 38.537010, 61.246342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080326, 37.195320, 60.863728>,  <30.186491, 37.953499, 61.006271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080326, 37.195320, 60.863728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840658, 36.906815, 61.002735>,  <29.696857, 36.733711, 61.086140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840658, 36.906815, 61.002735>,  <30.080326, 37.195320, 60.863728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840658, 36.906815, 61.002735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556158, -0.687202, -0.467377,
		0.575919, -0.086764, 0.812890,
		-0.599171, -0.721267, 0.347518,
		29.660908, 36.690434, 61.106991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614101, 36.658432, 60.937000>,  <30.080326, 37.195320, 60.863728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614101, 36.658432, 60.937000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261284, 36.471249, 60.915035>,  <30.049593, 36.358940, 60.901855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261284, 36.471249, 60.915035>,  <30.614101, 36.658432, 60.937000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261284, 36.471249, 60.915035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441294, -0.779653, -0.444298,
		0.165096, -0.416124, 0.894195,
		-0.882045, -0.467955, -0.054916,
		29.996670, 36.330864, 60.898560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744564, 36.012913, 61.229893>,  <30.614101, 36.658432, 60.937000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744564, 36.012913, 61.229893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405907, 35.937447, 61.030853>,  <30.202713, 35.892166, 60.911430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405907, 35.937447, 61.030853>,  <30.744564, 36.012913, 61.229893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405907, 35.937447, 61.030853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433102, -0.787610, -0.438284,
		-0.309221, -0.586579, 0.748537,
		-0.846643, -0.188667, -0.497594,
		30.151915, 35.880848, 60.881577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488058, 35.285858, 61.388885>,  <30.744564, 36.012913, 61.229893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488058, 35.285858, 61.388885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392780, 35.408302, 61.020199>,  <30.335613, 35.481770, 60.798988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392780, 35.408302, 61.020199>,  <30.488058, 35.285858, 61.388885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392780, 35.408302, 61.020199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347933, -0.859147, -0.375245,
		-0.906757, -0.410076, 0.098136,
		-0.238192, 0.306111, -0.921716,
		30.321323, 35.500137, 60.743683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417305, 34.704914, 60.872414>,  <30.488058, 35.285858, 61.388885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417305, 34.704914, 60.872414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404930, 34.994324, 60.596569>,  <30.397505, 35.167969, 60.431061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404930, 34.994324, 60.596569>,  <30.417305, 34.704914, 60.872414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404930, 34.994324, 60.596569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336489, -0.642128, -0.688800,
		-0.941179, -0.253357, -0.223590,
		-0.030939, 0.723520, -0.689610,
		30.395649, 35.211380, 60.389687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355194, 34.321877, 60.293858>,  <30.417305, 34.704914, 60.872414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355194, 34.321877, 60.293858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481598, 34.677864, 60.162350>,  <30.557440, 34.891457, 60.083447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481598, 34.677864, 60.162350>,  <30.355194, 34.321877, 60.293858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481598, 34.677864, 60.162350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561167, -0.454745, -0.691591,
		-0.765001, 0.034056, -0.643127,
		0.316012, 0.889970, -0.328769,
		30.576401, 34.944855, 60.063721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357658, 34.373543, 59.539658>,  <30.355194, 34.321877, 60.293858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357658, 34.373543, 59.539658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632727, 34.644989, 59.642879>,  <30.797768, 34.807858, 59.704811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632727, 34.644989, 59.642879>,  <30.357658, 34.373543, 59.539658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632727, 34.644989, 59.642879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584922, -0.307285, -0.750628,
		-0.430091, 0.667126, -0.608248,
		0.687669, 0.678616, 0.258056,
		30.839027, 34.848572, 59.720295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955669, 34.378410, 58.852837>,  <30.357658, 34.373543, 59.539658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955669, 34.378410, 58.852837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829731, 34.000813, 58.813347>,  <29.754168, 33.774254, 58.789654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829731, 34.000813, 58.813347>,  <29.955669, 34.378410, 58.852837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829731, 34.000813, 58.813347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617479, 0.124723, 0.776636,
		-0.720827, 0.305479, -0.622166,
		-0.314845, -0.943995, -0.098723,
		29.735277, 33.717613, 58.783730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173851, 34.367386, 58.688686>,  <29.955669, 34.378410, 58.852837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173851, 34.367386, 58.688686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294838, 34.020359, 58.846592>,  <29.367430, 33.812141, 58.941334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294838, 34.020359, 58.846592>,  <29.173851, 34.367386, 58.688686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294838, 34.020359, 58.846592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731222, 0.054463, 0.679962,
		-0.611414, -0.494324, -0.617913,
		0.302468, -0.867570, 0.394760,
		29.385578, 33.760090, 58.965019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569414, 33.990753, 58.805973>,  <29.173851, 34.367386, 58.688686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569414, 33.990753, 58.805973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845207, 33.818726, 59.039093>,  <29.010683, 33.715508, 59.178967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845207, 33.818726, 59.039093>,  <28.569414, 33.990753, 58.805973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845207, 33.818726, 59.039093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640508, 0.013654, 0.767830,
		-0.338179, -0.902692, -0.266049,
		0.689482, -0.430071, 0.582799,
		29.052052, 33.689705, 59.213932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108051, 33.571087, 59.286373>,  <28.569414, 33.990753, 58.805973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108051, 33.571087, 59.286373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470188, 33.603680, 59.453091>,  <28.687469, 33.623238, 59.553120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470188, 33.603680, 59.453091>,  <28.108051, 33.571087, 59.286373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470188, 33.603680, 59.453091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419505, 0.018797, 0.907558,
		0.066121, -0.996497, 0.051202,
		0.905342, 0.081488, 0.416793,
		28.741791, 33.628124, 59.578129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174685, 33.010246, 59.773117>,  <28.108051, 33.571087, 59.286373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174685, 33.010246, 59.773117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444847, 33.286377, 59.876873>,  <28.606945, 33.452053, 59.939129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444847, 33.286377, 59.876873>,  <28.174685, 33.010246, 59.773117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444847, 33.286377, 59.876873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339258, -0.021452, 0.940449,
		0.654777, -0.723184, 0.219709,
		0.675404, 0.690322, 0.259393,
		28.647469, 33.493473, 59.954689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361919, 32.822365, 60.493221>,  <28.174685, 33.010246, 59.773117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361919, 32.822365, 60.493221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471495, 33.204674, 60.450405>,  <28.537241, 33.434059, 60.424717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471495, 33.204674, 60.450405>,  <28.361919, 32.822365, 60.493221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471495, 33.204674, 60.450405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374962, 0.208626, 0.903260,
		0.885641, -0.207303, 0.415530,
		0.273939, 0.955772, -0.107037,
		28.553677, 33.491405, 60.418293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631340, 32.961563, 61.158653>,  <28.361919, 32.822365, 60.493221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631340, 32.961563, 61.158653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574308, 33.317852, 60.986008>,  <28.540089, 33.531624, 60.882420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574308, 33.317852, 60.986008>,  <28.631340, 32.961563, 61.158653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574308, 33.317852, 60.986008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421875, 0.339788, 0.840575,
		0.895373, 0.301938, 0.327324,
		-0.142581, 0.890718, -0.431617,
		28.531534, 33.585068, 60.856522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786243, 33.409084, 61.697243>,  <28.631340, 32.961563, 61.158653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786243, 33.409084, 61.697243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597181, 33.633862, 61.425709>,  <28.483744, 33.768726, 61.262787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597181, 33.633862, 61.425709>,  <28.786243, 33.409084, 61.697243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597181, 33.633862, 61.425709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384185, 0.561859, 0.732610,
		0.793094, 0.607070, -0.049676,
		-0.472656, 0.561944, -0.678834,
		28.455385, 33.802444, 61.222057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998026, 34.163685, 61.749519>,  <28.786243, 33.409084, 61.697243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998026, 34.163685, 61.749519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629782, 34.141529, 61.594906>,  <28.408834, 34.128235, 61.502136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629782, 34.141529, 61.594906>,  <28.998026, 34.163685, 61.749519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629782, 34.141529, 61.594906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374757, 0.403437, 0.834743,
		0.109705, 0.913329, -0.392166,
		-0.920610, -0.055391, -0.386535,
		28.353600, 34.124912, 61.478947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.316887, 33.808990, 47.106785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322742, 34.205971, 47.058075>,  <37.326256, 34.444160, 47.028851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322742, 34.205971, 47.058075>,  <37.316887, 33.808990, 47.106785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322742, 34.205971, 47.058075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758486, 0.090379, 0.645391,
		0.651524, 0.082916, 0.754083,
		0.014640, 0.992450, -0.121775,
		37.327133, 34.503704, 47.021542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182304, 34.161018, 47.792656>,  <37.316887, 33.808990, 47.106785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182304, 34.161018, 47.792656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084633, 34.423733, 47.507275>,  <37.026031, 34.581360, 47.336048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084633, 34.423733, 47.507275>,  <37.182304, 34.161018, 47.792656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084633, 34.423733, 47.507275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835531, 0.230938, 0.498554,
		0.492206, 0.717844, 0.492375,
		-0.244176, 0.656786, -0.713449,
		37.011379, 34.620770, 47.293240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833122, 34.694477, 48.226162>,  <37.182304, 34.161018, 47.792656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833122, 34.694477, 48.226162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733711, 34.769833, 47.846111>,  <36.674065, 34.815044, 47.618080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733711, 34.769833, 47.846111>,  <36.833122, 34.694477, 48.226162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733711, 34.769833, 47.846111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825734, 0.471574, 0.309485,
		0.506359, 0.861469, 0.038359,
		-0.248523, 0.188385, -0.950130,
		36.659153, 34.826347, 47.561073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643661, 35.301701, 48.292057>,  <36.833122, 34.694477, 48.226162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643661, 35.301701, 48.292057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469288, 35.160065, 47.961098>,  <36.364662, 35.075085, 47.762524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469288, 35.160065, 47.961098>,  <36.643661, 35.301701, 48.292057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469288, 35.160065, 47.961098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896219, 0.254733, 0.363184,
		0.082166, 0.899851, -0.428388,
		-0.435936, -0.354088, -0.827394,
		36.338509, 35.053837, 47.712879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172626, 35.787914, 48.233368>,  <36.643661, 35.301701, 48.292057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172626, 35.787914, 48.233368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070297, 35.501308, 47.973782>,  <36.008900, 35.329346, 47.818031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070297, 35.501308, 47.973782>,  <36.172626, 35.787914, 48.233368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070297, 35.501308, 47.973782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928674, -0.004329, 0.370872,
		-0.268546, 0.697554, -0.664305,
		-0.255827, -0.716519, -0.648963,
		35.993549, 35.286354, 47.779091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759583, 36.056305, 47.705643>,  <36.172626, 35.787914, 48.233368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759583, 36.056305, 47.705643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696949, 35.665916, 47.766254>,  <35.659367, 35.431683, 47.802620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696949, 35.665916, 47.766254>,  <35.759583, 36.056305, 47.705643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696949, 35.665916, 47.766254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917251, 0.200593, 0.344111,
		-0.366239, -0.085108, -0.926621,
		-0.156587, -0.975971, 0.151531,
		35.649971, 35.373127, 47.811714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196362, 35.852482, 47.255085>,  <35.759583, 36.056305, 47.705643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196362, 35.852482, 47.255085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219692, 35.587288, 47.553627>,  <35.233692, 35.428173, 47.732754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219692, 35.587288, 47.553627>,  <35.196362, 35.852482, 47.255085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219692, 35.587288, 47.553627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983109, 0.091774, 0.158351,
		-0.173480, -0.742985, -0.646435,
		0.058327, -0.662986, 0.746356,
		35.237190, 35.388393, 47.777534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591755, 35.293743, 47.148571>,  <35.196362, 35.852482, 47.255085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591755, 35.293743, 47.148571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706676, 35.283657, 47.531574>,  <34.775627, 35.277603, 47.761375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706676, 35.283657, 47.531574>,  <34.591755, 35.293743, 47.148571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706676, 35.283657, 47.531574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942822, 0.168881, 0.287343,
		-0.168952, -0.985314, 0.024740,
		0.287301, -0.025222, 0.957508,
		34.792866, 35.276093, 47.818825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062828, 34.933826, 47.490471>,  <34.591755, 35.293743, 47.148571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062828, 34.933826, 47.490471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220543, 35.082615, 47.826607>,  <34.315174, 35.171886, 48.028290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220543, 35.082615, 47.826607>,  <34.062828, 34.933826, 47.490471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220543, 35.082615, 47.826607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906647, 0.008113, 0.421812,
		0.150084, -0.928208, 0.340447,
		0.394292, 0.371972, 0.840340,
		34.338829, 35.194206, 48.078709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790390, 34.528893, 48.112072>,  <34.062828, 34.933826, 47.490471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790390, 34.528893, 48.112072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.912418, 34.881985, 48.255028>,  <33.985634, 35.093838, 48.340801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.912418, 34.881985, 48.255028>,  <33.790390, 34.528893, 48.112072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912418, 34.881985, 48.255028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838837, 0.071399, 0.539680,
		0.450872, -0.464432, 0.762245,
		0.305069, 0.882726, 0.357391,
		34.003941, 35.146801, 48.362244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552853, 34.504562, 48.796001>,  <33.790390, 34.528893, 48.112072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552853, 34.504562, 48.796001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653252, 34.883846, 48.718132>,  <33.713493, 35.111416, 48.671410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653252, 34.883846, 48.718132>,  <33.552853, 34.504562, 48.796001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653252, 34.883846, 48.718132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853724, 0.311640, 0.417176,
		0.456239, 0.061490, 0.887730,
		0.251000, 0.948208, -0.194678,
		33.728550, 35.168308, 48.659729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409451, 34.749901, 49.446640>,  <33.552853, 34.504562, 48.796001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409451, 34.749901, 49.446640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.394703, 35.047501, 49.179775>,  <33.385853, 35.226063, 49.019657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.394703, 35.047501, 49.179775>,  <33.409451, 34.749901, 49.446640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394703, 35.047501, 49.179775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854851, 0.322283, 0.406648,
		0.517561, 0.585314, 0.624130,
		-0.036870, 0.744003, -0.667158,
		33.383640, 35.270702, 48.979630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153992, 35.399815, 49.743088>,  <33.409451, 34.749901, 49.446640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153992, 35.399815, 49.743088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053520, 35.386391, 49.356144>,  <32.993237, 35.378338, 49.123978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053520, 35.386391, 49.356144>,  <33.153992, 35.399815, 49.743088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053520, 35.386391, 49.356144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962499, 0.114489, 0.245945,
		0.102499, 0.992858, -0.061054,
		-0.251178, -0.033556, -0.967359,
		32.978168, 35.376324, 49.065937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906475, 36.163067, 49.690334>,  <33.153992, 35.399815, 49.743088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906475, 36.163067, 49.690334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.741333, 35.890884, 49.448166>,  <32.642250, 35.727577, 49.302864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.741333, 35.890884, 49.448166>,  <32.906475, 36.163067, 49.690334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741333, 35.890884, 49.448166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910582, 0.322838, 0.258099,
		0.019830, 0.657846, -0.752892,
		-0.412851, -0.680452, -0.605425,
		32.617477, 35.686749, 49.266537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235523, 36.382172, 49.397560>,  <32.906475, 36.163067, 49.690334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235523, 36.382172, 49.397560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.183296, 35.986008, 49.379509>,  <32.151962, 35.748310, 49.368679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.183296, 35.986008, 49.379509>,  <32.235523, 36.382172, 49.397560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183296, 35.986008, 49.379509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985640, 0.124750, 0.113800,
		-0.107080, 0.059338, -0.992478,
		-0.130564, -0.990412, -0.045128,
		32.144127, 35.688885, 49.365971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680351, 36.245125, 48.976051>,  <32.235523, 36.382172, 49.397560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680351, 36.245125, 48.976051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.719057, 35.909180, 49.189693>,  <31.742281, 35.707611, 49.317879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.719057, 35.909180, 49.189693>,  <31.680351, 36.245125, 48.976051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719057, 35.909180, 49.189693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990751, -0.029991, 0.132337,
		-0.095127, -0.541967, -0.834998,
		0.096765, -0.839864, 0.534101,
		31.748087, 35.657219, 49.349922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231823, 35.679848, 48.595791>,  <31.680351, 36.245125, 48.976051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231823, 35.679848, 48.595791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.279562, 35.559589, 48.974285>,  <31.308207, 35.487434, 49.201382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.279562, 35.559589, 48.974285>,  <31.231823, 35.679848, 48.595791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279562, 35.559589, 48.974285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980531, -0.185370, 0.064778,
		0.155929, -0.935548, -0.316918,
		0.119350, -0.300647, 0.946238,
		31.315367, 35.469395, 49.258156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667343, 35.321606, 48.725086>,  <31.231823, 35.679848, 48.595791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667343, 35.321606, 48.725086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.818958, 35.327049, 49.095200>,  <30.909927, 35.330315, 49.317268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.818958, 35.327049, 49.095200>,  <30.667343, 35.321606, 48.725086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818958, 35.327049, 49.095200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863410, -0.354554, 0.358907,
		0.332948, -0.934936, -0.122635,
		0.379036, 0.013613, 0.925282,
		30.932669, 35.331135, 49.372784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549995, 34.681351, 49.094418>,  <30.667343, 35.321606, 48.725086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549995, 34.681351, 49.094418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.564213, 34.965961, 49.375118>,  <30.572744, 35.136730, 49.543541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.564213, 34.965961, 49.375118>,  <30.549995, 34.681351, 49.094418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564213, 34.965961, 49.375118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938980, -0.216618, 0.267196,
		0.342131, -0.668432, 0.660413,
		0.035545, 0.711530, 0.701756,
		30.574877, 35.179420, 49.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167454, 34.422897, 49.692604>,  <30.549995, 34.681351, 49.094418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167454, 34.422897, 49.692604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.156548, 34.820850, 49.731522>,  <30.150003, 35.059624, 49.754871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.156548, 34.820850, 49.731522>,  <30.167454, 34.422897, 49.692604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156548, 34.820850, 49.731522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931913, -0.060514, 0.357599,
		0.361657, -0.080923, 0.928793,
		-0.027267, 0.994882, 0.097298,
		30.148367, 35.119316, 49.760712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873726, 34.492260, 50.427368>,  <30.167454, 34.422897, 49.692604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873726, 34.492260, 50.427368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.830450, 34.853985, 50.262196>,  <29.804485, 35.071018, 50.163090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.830450, 34.853985, 50.262196>,  <29.873726, 34.492260, 50.427368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830450, 34.853985, 50.262196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941127, 0.040651, 0.335600,
		0.320273, 0.424933, 0.846674,
		-0.108189, 0.904312, -0.412935,
		29.797993, 35.125278, 50.138313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772345, 34.911011, 51.019581>,  <29.873726, 34.492260, 50.427368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772345, 34.911011, 51.019581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.625467, 35.084759, 50.690586>,  <29.537340, 35.189007, 50.493187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.625467, 35.084759, 50.690586>,  <29.772345, 34.911011, 51.019581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625467, 35.084759, 50.690586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882038, 0.118087, 0.456141,
		0.295260, 0.892959, 0.339772,
		-0.367193, 0.434372, -0.822490,
		29.515310, 35.215069, 50.443840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423183, 35.616932, 51.256607>,  <29.772345, 34.911011, 51.019581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423183, 35.616932, 51.256607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.264534, 35.555267, 50.894630>,  <29.169344, 35.518269, 50.677444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.264534, 35.555267, 50.894630>,  <29.423183, 35.616932, 51.256607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264534, 35.555267, 50.894630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915928, 0.000562, 0.401343,
		-0.061363, 0.988045, -0.141424,
		-0.396624, -0.154162, -0.904944,
		29.145546, 35.509018, 50.623146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779936, 35.992607, 51.295502>,  <29.423183, 35.616932, 51.256607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779936, 35.992607, 51.295502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.754566, 35.753181, 50.976078>,  <28.739346, 35.609528, 50.784424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.754566, 35.753181, 50.976078>,  <28.779936, 35.992607, 51.295502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754566, 35.753181, 50.976078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980755, -0.110671, 0.160846,
		-0.184654, 0.793393, -0.580026,
		-0.063422, -0.598565, -0.798560,
		28.735540, 35.573612, 50.736511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206501, 36.346371, 50.826500>,  <28.779936, 35.992607, 51.295502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206501, 36.346371, 50.826500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.245411, 35.968243, 50.701981>,  <28.268757, 35.741367, 50.627270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.245411, 35.968243, 50.701981>,  <28.206501, 36.346371, 50.826500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245411, 35.968243, 50.701981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958445, -0.173259, 0.226639,
		-0.268182, 0.276317, -0.922891,
		0.097275, -0.945320, -0.311299,
		28.274593, 35.684647, 50.608589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730354, 36.273663, 50.189163>,  <28.206501, 36.346371, 50.826500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730354, 36.273663, 50.189163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.782717, 35.926201, 50.380287>,  <27.814135, 35.717724, 50.494961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.782717, 35.926201, 50.380287>,  <27.730354, 36.273663, 50.189163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782717, 35.926201, 50.380287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986042, -0.064070, 0.153673,
		-0.102875, -0.491258, -0.864918,
		0.130908, -0.868655, 0.477810,
		27.821989, 35.665604, 50.523628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064631, 36.000587, 50.165440>,  <27.730354, 36.273663, 50.189163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064631, 36.000587, 50.165440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.242813, 35.746700, 50.418011>,  <27.349722, 35.594368, 50.569553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.242813, 35.746700, 50.418011>,  <27.064631, 36.000587, 50.165440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242813, 35.746700, 50.418011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894757, -0.290980, 0.338734,
		-0.031266, -0.715868, -0.697535,
		0.445457, -0.634716, 0.631430,
		27.376450, 35.556286, 50.607441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817284, 35.302795, 50.001301>,  <27.064631, 36.000587, 50.165440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817284, 35.302795, 50.001301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.932510, 35.346458, 50.381847>,  <27.001646, 35.372658, 50.610176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.932510, 35.346458, 50.381847>,  <26.817284, 35.302795, 50.001301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932510, 35.346458, 50.381847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956056, -0.023777, 0.292217,
		0.054519, -0.993740, 0.097515,
		0.288069, 0.109161, 0.951368,
		27.018930, 35.379208, 50.667259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283939, 34.958542, 50.359051>,  <26.817284, 35.302795, 50.001301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283939, 34.958542, 50.359051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.472347, 35.144981, 50.658623>,  <26.585392, 35.256844, 50.838367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.472347, 35.144981, 50.658623>,  <26.283939, 34.958542, 50.359051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472347, 35.144981, 50.658623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868243, 0.094942, 0.486971,
		0.155872, -0.879624, 0.449407,
		0.471019, 0.466099, 0.748928,
		26.613653, 35.284809, 50.883301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132168, 34.518227, 51.007767>,  <26.283939, 34.958542, 50.359051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132168, 34.518227, 51.007767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.228695, 34.896137, 51.096466>,  <26.286612, 35.122883, 51.149685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.228695, 34.896137, 51.096466>,  <26.132168, 34.518227, 51.007767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228695, 34.896137, 51.096466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928754, 0.158583, 0.335062,
		0.281393, -0.286802, 0.915731,
		0.241316, 0.944773, 0.221745,
		26.301090, 35.179569, 51.162991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140400, 34.560490, 51.671108>,  <26.132168, 34.518227, 51.007767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140400, 34.560490, 51.671108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.080788, 34.939388, 51.557606>,  <26.045021, 35.166725, 51.489506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.080788, 34.939388, 51.557606>,  <26.140400, 34.560490, 51.671108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080788, 34.939388, 51.557606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908993, -0.018272, 0.416410,
		0.389257, 0.319991, 0.863762,
		-0.149030, 0.947244, -0.283757,
		26.036079, 35.223560, 51.472477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057261, 34.877216, 52.294621>,  <26.140400, 34.560490, 51.671108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057261, 34.877216, 52.294621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.890083, 35.116356, 52.021008>,  <25.789778, 35.259838, 51.856838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.890083, 35.116356, 52.021008>,  <26.057261, 34.877216, 52.294621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890083, 35.116356, 52.021008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759639, 0.182987, 0.624070,
		0.498269, 0.780444, 0.377671,
		-0.417943, 0.597849, -0.684033,
		25.764700, 35.295712, 51.815796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721989, 35.361633, 52.649044>,  <26.057261, 34.877216, 52.294621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721989, 35.361633, 52.649044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.539312, 35.412010, 52.296780>,  <25.429707, 35.442234, 52.085419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.539312, 35.412010, 52.296780>,  <25.721989, 35.361633, 52.649044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539312, 35.412010, 52.296780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825599, 0.308753, 0.472290,
		0.331388, 0.942768, -0.037030,
		-0.456692, 0.125940, -0.880665,
		25.402304, 35.449791, 52.032581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270323, 35.945755, 52.762047>,  <25.721989, 35.361633, 52.649044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270323, 35.945755, 52.762047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.134262, 35.791939, 52.418785>,  <25.052626, 35.699650, 52.212830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.134262, 35.791939, 52.418785>,  <25.270323, 35.945755, 52.762047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134262, 35.791939, 52.418785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929687, 0.274686, 0.245417,
		0.141351, 0.881293, -0.450936,
		-0.340150, -0.384539, -0.858154,
		25.032217, 35.676579, 52.161339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730648, 36.413551, 52.478939>,  <25.270323, 35.945755, 52.762047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730648, 36.413551, 52.478939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.677305, 36.041092, 52.343189>,  <24.645300, 35.817616, 52.261742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.677305, 36.041092, 52.343189>,  <24.730648, 36.413551, 52.478939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677305, 36.041092, 52.343189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920297, -0.010729, 0.391073,
		-0.367790, 0.364474, -0.855506,
		-0.133357, -0.931152, -0.339370,
		24.637299, 35.761745, 52.241379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.895889, 31.254145, 48.371017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545715, 31.401989, 48.246441>,  <35.335609, 31.490696, 48.171696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545715, 31.401989, 48.246441>,  <35.895889, 31.254145, 48.371017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545715, 31.401989, 48.246441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420878, -0.266147, 0.867195,
		0.237635, 0.890255, 0.388556,
		-0.875438, 0.369611, -0.311443,
		35.283085, 31.512873, 48.153008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600452, 31.738810, 48.855804>,  <35.895889, 31.254145, 48.371017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600452, 31.738810, 48.855804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325787, 31.553280, 48.631889>,  <35.160988, 31.441963, 48.497540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325787, 31.553280, 48.631889>,  <35.600452, 31.738810, 48.855804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325787, 31.553280, 48.631889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438575, -0.349809, 0.827820,
		-0.579780, 0.813943, 0.036780,
		-0.686664, -0.463823, -0.559787,
		35.119789, 31.414133, 48.463955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950115, 31.986853, 49.030296>,  <35.600452, 31.738810, 48.855804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950115, 31.986853, 49.030296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888504, 31.627531, 48.865696>,  <34.851540, 31.411938, 48.766937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888504, 31.627531, 48.865696>,  <34.950115, 31.986853, 49.030296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888504, 31.627531, 48.865696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445994, -0.308420, 0.840218,
		-0.881683, 0.312940, -0.353133,
		-0.154024, -0.898301, -0.411498,
		34.842297, 31.358040, 48.742245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275917, 31.879946, 49.173119>,  <34.950115, 31.986853, 49.030296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275917, 31.879946, 49.173119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440678, 31.524780, 49.091194>,  <34.539532, 31.311680, 49.042038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440678, 31.524780, 49.091194>,  <34.275917, 31.879946, 49.173119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440678, 31.524780, 49.091194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529885, -0.416247, 0.738891,
		-0.741325, -0.195821, -0.641944,
		0.411897, -0.887915, -0.204811,
		34.564247, 31.258406, 49.029751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706360, 31.311262, 49.266453>,  <34.275917, 31.879946, 49.173119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706360, 31.311262, 49.266453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.045559, 31.099583, 49.278084>,  <34.249081, 30.972574, 49.285061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.045559, 31.099583, 49.278084>,  <33.706360, 31.311262, 49.266453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045559, 31.099583, 49.278084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295559, -0.426649, 0.854760,
		-0.439950, -0.733419, -0.518209,
		0.847991, -0.529213, 0.029064,
		34.299957, 30.940823, 49.286804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469589, 30.620886, 49.419456>,  <33.706360, 31.311262, 49.266453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469589, 30.620886, 49.419456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.854477, 30.650194, 49.524349>,  <34.085411, 30.667778, 49.587284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.854477, 30.650194, 49.524349>,  <33.469589, 30.620886, 49.419456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854477, 30.650194, 49.524349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203035, -0.448635, 0.870347,
		0.181417, -0.890706, -0.416809,
		0.962218, 0.073269, 0.262235,
		34.143143, 30.672174, 49.603020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677177, 29.950417, 49.712612>,  <33.469589, 30.620886, 49.419456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677177, 29.950417, 49.712612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932751, 30.227837, 49.845726>,  <34.086094, 30.394289, 49.925594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932751, 30.227837, 49.845726>,  <33.677177, 29.950417, 49.712612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932751, 30.227837, 49.845726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294015, -0.179590, 0.938777,
		0.710855, -0.697664, 0.089167,
		0.638938, 0.693551, 0.332786,
		34.124432, 30.435902, 49.945560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922932, 29.710594, 50.422405>,  <33.677177, 29.950417, 49.712612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922932, 29.710594, 50.422405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024509, 30.097393, 50.414093>,  <34.085457, 30.329472, 50.409103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024509, 30.097393, 50.414093>,  <33.922932, 29.710594, 50.422405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024509, 30.097393, 50.414093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197974, 0.073000, 0.977485,
		0.946741, -0.244112, 0.209978,
		0.253945, 0.966995, -0.020784,
		34.100693, 30.387491, 50.407856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232296, 29.777805, 51.003555>,  <33.922932, 29.710594, 50.422405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232296, 29.777805, 51.003555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144665, 30.163769, 50.945652>,  <34.092087, 30.395348, 50.910908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144665, 30.163769, 50.945652>,  <34.232296, 29.777805, 51.003555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144665, 30.163769, 50.945652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050722, 0.136901, 0.989285,
		0.974389, 0.224071, 0.018951,
		-0.219076, 0.964909, -0.144760,
		34.078941, 30.453241, 50.902225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480412, 30.024769, 51.608780>,  <34.232296, 29.777805, 51.003555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480412, 30.024769, 51.608780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256794, 30.320450, 51.458549>,  <34.122623, 30.497858, 51.368412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256794, 30.320450, 51.458549>,  <34.480412, 30.024769, 51.608780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256794, 30.320450, 51.458549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225824, 0.300097, 0.926793,
		0.797794, 0.602929, -0.000837,
		-0.559042, 0.739201, -0.375571,
		34.089081, 30.542210, 51.345879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707577, 30.636726, 51.924812>,  <34.480412, 30.024769, 51.608780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707577, 30.636726, 51.924812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332500, 30.691170, 51.796928>,  <34.107456, 30.723837, 51.720196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332500, 30.691170, 51.796928>,  <34.707577, 30.636726, 51.924812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332500, 30.691170, 51.796928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297261, 0.162250, 0.940910,
		0.179941, 0.977317, -0.111680,
		-0.937687, 0.136111, -0.319714,
		34.051193, 30.732002, 51.701015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498993, 31.290314, 52.234333>,  <34.707577, 30.636726, 51.924812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498993, 31.290314, 52.234333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160187, 31.100990, 52.137550>,  <33.956905, 30.987396, 52.079479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160187, 31.100990, 52.137550>,  <34.498993, 31.290314, 52.234333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160187, 31.100990, 52.137550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389834, 0.243638, 0.888071,
		-0.361382, 0.846533, -0.390877,
		-0.847014, -0.473310, -0.241961,
		33.906082, 30.958998, 52.064960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680470, 32.109837, 52.121189>,  <34.498993, 31.290314, 52.234333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680470, 32.109837, 52.121189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909225, 32.367157, 52.324799>,  <35.046478, 32.521549, 52.446964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909225, 32.367157, 52.324799>,  <34.680470, 32.109837, 52.121189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909225, 32.367157, 52.324799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737676, -0.131853, -0.662154,
		-0.358849, 0.754174, -0.549954,
		0.571892, 0.643301, 0.509021,
		35.080791, 32.560146, 52.477505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953659, 32.601624, 51.736370>,  <34.680470, 32.109837, 52.121189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953659, 32.601624, 51.736370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242416, 32.579147, 52.012260>,  <35.415668, 32.565662, 52.177795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242416, 32.579147, 52.012260>,  <34.953659, 32.601624, 51.736370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242416, 32.579147, 52.012260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688291, -0.044880, -0.724045,
		0.071638, 0.997411, 0.006276,
		0.721889, -0.056189, 0.689724,
		35.458984, 32.562290, 52.219177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423038, 33.141171, 51.586075>,  <34.953659, 32.601624, 51.736370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423038, 33.141171, 51.586075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644203, 32.874481, 51.785980>,  <35.776901, 32.714466, 51.905926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644203, 32.874481, 51.785980>,  <35.423038, 33.141171, 51.586075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644203, 32.874481, 51.785980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738655, 0.114642, -0.664264,
		0.385585, 0.736436, 0.555865,
		0.552913, -0.666723, 0.499768,
		35.810078, 32.674465, 51.935909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135746, 33.520535, 51.473690>,  <35.423038, 33.141171, 51.586075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135746, 33.520535, 51.473690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179668, 33.147152, 51.610283>,  <36.206020, 32.923122, 51.692238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179668, 33.147152, 51.610283>,  <36.135746, 33.520535, 51.473690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179668, 33.147152, 51.610283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703939, -0.169517, -0.689735,
		0.701721, 0.316119, 0.638480,
		0.109805, -0.933452, 0.341482,
		36.212608, 32.867115, 51.712727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811024, 33.490536, 51.665394>,  <36.135746, 33.520535, 51.473690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811024, 33.490536, 51.665394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688278, 33.118267, 51.585709>,  <36.614632, 32.894905, 51.537895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688278, 33.118267, 51.585709>,  <36.811024, 33.490536, 51.665394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688278, 33.118267, 51.585709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747651, -0.106195, -0.655546,
		0.588941, -0.350109, 0.728404,
		-0.306865, -0.930670, -0.199217,
		36.596218, 32.839066, 51.525944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432919, 33.075535, 51.674301>,  <36.811024, 33.490536, 51.665394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432919, 33.075535, 51.674301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189785, 32.825333, 51.478638>,  <37.043903, 32.675213, 51.361240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189785, 32.825333, 51.478638>,  <37.432919, 33.075535, 51.674301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189785, 32.825333, 51.478638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718958, -0.172002, -0.673435,
		0.337100, -0.761025, 0.554260,
		-0.607835, -0.625505, -0.489163,
		37.007435, 32.637680, 51.331890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889038, 32.473167, 51.546749>,  <37.432919, 33.075535, 51.674301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889038, 32.473167, 51.546749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.586788, 32.469917, 51.284771>,  <37.405437, 32.467968, 51.127583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.586788, 32.469917, 51.284771>,  <37.889038, 32.473167, 51.546749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586788, 32.469917, 51.284771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628246, -0.291843, -0.721203,
		-0.185284, -0.956432, 0.225628,
		-0.755630, -0.008122, -0.654949,
		37.360100, 32.467480, 51.088287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040222, 31.879555, 51.153828>,  <37.889038, 32.473167, 51.546749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040222, 31.879555, 51.153828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779839, 32.095165, 50.940022>,  <37.623608, 32.224533, 50.811737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779839, 32.095165, 50.940022>,  <38.040222, 31.879555, 51.153828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779839, 32.095165, 50.940022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581214, -0.099038, -0.807701,
		-0.488311, -0.836445, -0.248821,
		-0.650955, 0.539028, -0.534515,
		37.584553, 32.256874, 50.779667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894947, 31.553301, 50.530533>,  <38.040222, 31.879555, 51.153828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894947, 31.553301, 50.530533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.855942, 31.941135, 50.440742>,  <37.832539, 32.173836, 50.386868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.855942, 31.941135, 50.440742>,  <37.894947, 31.553301, 50.530533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855942, 31.941135, 50.440742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416344, -0.165123, -0.894087,
		-0.903962, -0.180648, -0.387580,
		-0.097517, 0.969588, -0.224477,
		37.826687, 32.232010, 50.373398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647358, 31.612591, 49.816860>,  <37.894947, 31.553301, 50.530533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647358, 31.612591, 49.816860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775234, 31.987803, 49.870369>,  <37.851959, 32.212929, 49.902473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775234, 31.987803, 49.870369>,  <37.647358, 31.612591, 49.816860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775234, 31.987803, 49.870369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251797, 0.051997, -0.966382,
		-0.913452, 0.342628, -0.219570,
		0.319693, 0.938031, 0.133770,
		37.871143, 32.269211, 49.910500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576694, 31.847712, 49.196388>,  <37.647358, 31.612591, 49.816860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576694, 31.847712, 49.196388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773556, 32.136990, 49.390202>,  <37.891674, 32.310555, 49.506489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773556, 32.136990, 49.390202>,  <37.576694, 31.847712, 49.196388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773556, 32.136990, 49.390202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466227, 0.251072, -0.848290,
		-0.735131, 0.643393, -0.213607,
		0.492153, 0.723193, 0.484538,
		37.921200, 32.353947, 49.535564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609577, 32.455006, 48.704922>,  <37.576694, 31.847712, 49.196388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609577, 32.455006, 48.704922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906216, 32.564663, 48.949833>,  <38.084198, 32.630455, 49.096779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906216, 32.564663, 48.949833>,  <37.609577, 32.455006, 48.704922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906216, 32.564663, 48.949833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457537, 0.460793, -0.760480,
		-0.490614, 0.844107, 0.216291,
		0.741592, 0.274141, 0.612281,
		38.128693, 32.646904, 49.133518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677929, 33.181896, 48.586861>,  <37.609577, 32.455006, 48.704922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677929, 33.181896, 48.586861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021271, 33.038982, 48.734146>,  <38.227276, 32.953236, 48.822517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021271, 33.038982, 48.734146>,  <37.677929, 33.181896, 48.586861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021271, 33.038982, 48.734146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511927, 0.548674, -0.660975,
		0.034122, 0.755848, 0.653857,
		0.858351, -0.357281, 0.368217,
		38.278774, 32.931797, 48.844612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081623, 33.772953, 48.720554>,  <37.677929, 33.181896, 48.586861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081623, 33.772953, 48.720554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327045, 33.464684, 48.651726>,  <38.474297, 33.279720, 48.610428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327045, 33.464684, 48.651726>,  <38.081623, 33.772953, 48.720554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327045, 33.464684, 48.651726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574324, 0.585073, -0.572575,
		0.541946, 0.252480, 0.801591,
		0.613553, -0.770678, -0.172073,
		38.511112, 33.233479, 48.600105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739597, 34.413898, 48.610733>,  <38.081623, 33.772953, 48.720554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739597, 34.413898, 48.610733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110996, 34.562252, 48.603279>,  <38.333836, 34.651264, 48.598808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110996, 34.562252, 48.603279>,  <37.739597, 34.413898, 48.610733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110996, 34.562252, 48.603279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207862, 0.560655, 0.801535,
		0.307722, -0.740346, 0.597657,
		0.928493, 0.370881, -0.018636,
		38.389545, 34.673515, 48.597687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102699, 34.593575, 49.261246>,  <37.739597, 34.413898, 48.610733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102699, 34.593575, 49.261246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230606, 34.845833, 48.978394>,  <38.307350, 34.997189, 48.808681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230606, 34.845833, 48.978394>,  <38.102699, 34.593575, 49.261246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230606, 34.845833, 48.978394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343306, 0.772722, 0.533893,
		0.883112, 0.072040, 0.463598,
		0.319770, 0.630644, -0.707132,
		38.326538, 35.035027, 48.766254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613075, 35.081738, 49.438404>,  <38.102699, 34.593575, 49.261246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613075, 35.081738, 49.438404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367867, 35.237869, 49.163639>,  <38.220741, 35.331547, 48.998779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367867, 35.237869, 49.163639>,  <38.613075, 35.081738, 49.438404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367867, 35.237869, 49.163639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153643, 0.793939, 0.588264,
		0.774980, 0.466160, -0.426733,
		-0.613026, 0.390328, -0.686909,
		38.183960, 35.354969, 48.957565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116783, 35.579670, 49.263855>,  <38.613075, 35.081738, 49.438404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116783, 35.579670, 49.263855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845478, 35.808598, 49.079502>,  <38.682693, 35.945953, 48.968891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845478, 35.808598, 49.079502>,  <39.116783, 35.579670, 49.263855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845478, 35.808598, 49.079502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226645, 0.433689, 0.872093,
		0.698992, 0.695966, -0.164443,
		-0.678264, 0.572316, -0.460883,
		38.641998, 35.980293, 48.941238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197979, 36.173691, 49.500584>,  <39.116783, 35.579670, 49.263855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197979, 36.173691, 49.500584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816200, 36.181988, 49.381516>,  <38.587135, 36.186966, 49.310074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816200, 36.181988, 49.381516>,  <39.197979, 36.173691, 49.500584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816200, 36.181988, 49.381516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256873, 0.450508, 0.855020,
		0.151834, 0.892532, -0.424657,
		-0.954444, 0.020738, -0.297670,
		38.529865, 36.188210, 49.292213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971180, 36.888027, 49.704659>,  <39.197979, 36.173691, 49.500584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971180, 36.888027, 49.704659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647469, 36.660023, 49.647869>,  <38.453243, 36.523220, 49.613796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647469, 36.660023, 49.647869>,  <38.971180, 36.888027, 49.704659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647469, 36.660023, 49.647869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418188, 0.389307, 0.820706,
		-0.412540, 0.723552, -0.553429,
		-0.809277, -0.570011, -0.141976,
		38.404686, 36.489017, 49.605278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386486, 37.362118, 49.745617>,  <38.971180, 36.888027, 49.704659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386486, 37.362118, 49.745617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266075, 36.987762, 49.818829>,  <38.193829, 36.763149, 49.862755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266075, 36.987762, 49.818829>,  <38.386486, 37.362118, 49.745617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266075, 36.987762, 49.818829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426984, 0.303896, 0.851664,
		-0.852682, 0.178226, -0.491089,
		-0.301029, -0.935886, 0.183027,
		38.175766, 36.706997, 49.873737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688797, 37.460381, 49.894051>,  <38.386486, 37.362118, 49.745617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688797, 37.460381, 49.894051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740856, 37.092770, 50.042885>,  <37.772091, 36.872204, 50.132187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740856, 37.092770, 50.042885>,  <37.688797, 37.460381, 49.894051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740856, 37.092770, 50.042885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571059, 0.237302, 0.785862,
		-0.810526, -0.314762, -0.493935,
		0.130147, -0.919028, 0.372088,
		37.779900, 36.817062, 50.154510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047939, 37.141163, 50.199669>,  <37.688797, 37.460381, 49.894051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047939, 37.141163, 50.199669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.341110, 36.957962, 50.400887>,  <37.517014, 36.848042, 50.521618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.341110, 36.957962, 50.400887>,  <37.047939, 37.141163, 50.199669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341110, 36.957962, 50.400887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497394, 0.143716, 0.855538,
		-0.464138, -0.877255, -0.122477,
		0.732923, -0.458007, 0.503045,
		37.560986, 36.820560, 50.551800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703964, 36.766960, 50.712837>,  <37.047939, 37.141163, 50.199669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703964, 36.766960, 50.712837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083603, 36.798977, 50.834694>,  <37.311386, 36.818188, 50.907806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083603, 36.798977, 50.834694>,  <36.703964, 36.766960, 50.712837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083603, 36.798977, 50.834694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314956, 0.253049, 0.914751,
		-0.003868, -0.964137, 0.265378,
		0.949099, 0.080044, 0.304640,
		37.368332, 36.822990, 50.926086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775009, 36.358585, 51.344227>,  <36.703964, 36.766960, 50.712837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775009, 36.358585, 51.344227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103176, 36.584232, 51.381512>,  <37.300076, 36.719620, 51.403885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103176, 36.584232, 51.381512>,  <36.775009, 36.358585, 51.344227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103176, 36.584232, 51.381512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195200, 0.123107, 0.973006,
		0.537417, -0.816464, 0.211115,
		0.820414, 0.564120, 0.093214,
		37.349300, 36.753468, 51.409477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047413, 36.023376, 51.914215>,  <36.775009, 36.358585, 51.344227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047413, 36.023376, 51.914215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211636, 36.386223, 51.877171>,  <37.310169, 36.603931, 51.854942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211636, 36.386223, 51.877171>,  <37.047413, 36.023376, 51.914215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211636, 36.386223, 51.877171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195957, 0.186968, 0.962623,
		0.890530, -0.377064, 0.254517,
		0.410557, 0.907120, -0.092613,
		37.334805, 36.658360, 51.849388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508259, 36.129375, 52.487648>,  <37.047413, 36.023376, 51.914215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508259, 36.129375, 52.487648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470299, 36.512733, 52.379967>,  <37.447521, 36.742748, 52.315357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470299, 36.512733, 52.379967>,  <37.508259, 36.129375, 52.487648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470299, 36.512733, 52.379967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259688, 0.237226, 0.936101,
		0.961018, 0.158744, 0.226372,
		-0.094899, 0.958397, -0.269203,
		37.441830, 36.800251, 52.299206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714401, 36.528492, 53.028728>,  <37.508259, 36.129375, 52.487648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714401, 36.528492, 53.028728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496971, 36.789856, 52.817986>,  <37.366512, 36.946674, 52.691540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496971, 36.789856, 52.817986>,  <37.714401, 36.528492, 53.028728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496971, 36.789856, 52.817986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244734, 0.477041, 0.844119,
		0.802888, 0.587785, -0.099397,
		-0.543577, 0.653407, -0.526862,
		37.333897, 36.985878, 52.659927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844669, 37.163723, 53.328407>,  <37.714401, 36.528492, 53.028728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844669, 37.163723, 53.328407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488426, 37.196789, 53.149529>,  <37.274681, 37.216629, 53.042202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488426, 37.196789, 53.149529>,  <37.844669, 37.163723, 53.328407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488426, 37.196789, 53.149529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380721, 0.402308, 0.832586,
		0.248733, 0.911765, -0.326828,
		-0.890608, 0.082661, -0.447196,
		37.221245, 37.221588, 53.015369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518169, 37.749397, 53.616333>,  <37.844669, 37.163723, 53.328407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518169, 37.749397, 53.616333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193886, 37.589458, 53.445282>,  <36.999313, 37.493496, 53.342651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193886, 37.589458, 53.445282>,  <37.518169, 37.749397, 53.616333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193886, 37.589458, 53.445282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575433, 0.409714, 0.707822,
		-0.107813, 0.819913, -0.562245,
		-0.810712, -0.399846, -0.427632,
		36.950672, 37.469505, 53.316994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921185, 38.290512, 53.557461>,  <37.518169, 37.749397, 53.616333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921185, 38.290512, 53.557461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734474, 37.938190, 53.525684>,  <36.622448, 37.726799, 53.506618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734474, 37.938190, 53.525684>,  <36.921185, 38.290512, 53.557461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734474, 37.938190, 53.525684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736546, 0.337455, 0.586194,
		-0.489513, 0.332132, -0.806266,
		-0.466772, -0.880802, -0.079442,
		36.594444, 37.673950, 53.501850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236229, 38.379887, 53.309258>,  <36.921185, 38.290512, 53.557461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236229, 38.379887, 53.309258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251080, 38.037842, 53.516102>,  <36.259991, 37.832615, 53.640209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251080, 38.037842, 53.516102>,  <36.236229, 38.379887, 53.309258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251080, 38.037842, 53.516102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754843, 0.315107, 0.575257,
		-0.654855, -0.411697, -0.633775,
		0.037124, -0.855111, 0.517115,
		36.262218, 37.781307, 53.671238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537762, 38.208195, 53.411575>,  <36.236229, 38.379887, 53.309258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537762, 38.208195, 53.411575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733864, 37.973904, 53.669746>,  <35.851524, 37.833328, 53.824650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733864, 37.973904, 53.669746>,  <35.537762, 38.208195, 53.411575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733864, 37.973904, 53.669746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740004, 0.111514, 0.663294,
		-0.460486, -0.802796, -0.378774,
		0.490251, -0.585732, 0.645423,
		35.880939, 37.798183, 53.863373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055859, 37.771713, 53.688107>,  <35.537762, 38.208195, 53.411575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055859, 37.771713, 53.688107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358837, 37.733604, 53.946468>,  <35.540623, 37.710739, 54.101486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358837, 37.733604, 53.946468>,  <35.055859, 37.771713, 53.688107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358837, 37.733604, 53.946468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652658, -0.083741, 0.753011,
		-0.017651, -0.991923, -0.125608,
		0.757447, -0.095270, 0.645908,
		35.586071, 37.705021, 54.140240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975998, 37.129223, 54.078430>,  <35.055859, 37.771713, 53.688107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975998, 37.129223, 54.078430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185917, 37.392941, 54.293808>,  <35.311867, 37.551170, 54.423035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185917, 37.392941, 54.293808>,  <34.975998, 37.129223, 54.078430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185917, 37.392941, 54.293808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703294, -0.020532, 0.710603,
		0.479551, -0.751605, 0.452902,
		0.524794, 0.659294, 0.538445,
		35.343353, 37.590729, 54.455341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893246, 36.855145, 54.827976>,  <34.975998, 37.129223, 54.078430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893246, 36.855145, 54.827976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034817, 37.219738, 54.911808>,  <35.119759, 37.438496, 54.962109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034817, 37.219738, 54.911808>,  <34.893246, 36.855145, 54.827976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034817, 37.219738, 54.911808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630165, 0.066821, 0.773581,
		0.691106, -0.405861, 0.598038,
		0.353928, 0.911488, 0.209579,
		35.140995, 37.493183, 54.974682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098839, 36.867123, 55.568516>,  <34.893246, 36.855145, 54.827976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098839, 36.867123, 55.568516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017307, 37.237843, 55.442348>,  <34.968388, 37.460274, 55.366650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017307, 37.237843, 55.442348>,  <35.098839, 36.867123, 55.568516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017307, 37.237843, 55.442348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680871, 0.097306, 0.725910,
		0.703468, 0.362722, 0.611200,
		-0.203830, 0.926803, -0.315419,
		34.956158, 37.515884, 55.347721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033421, 37.274242, 56.116211>,  <35.098839, 36.867123, 55.568516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033421, 37.274242, 56.116211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836868, 37.520901, 55.870186>,  <34.718937, 37.668896, 55.722572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836868, 37.520901, 55.870186>,  <35.033421, 37.274242, 56.116211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836868, 37.520901, 55.870186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649772, 0.210694, 0.730345,
		0.579953, 0.758523, 0.297148,
		-0.491377, 0.616644, -0.615060,
		34.689457, 37.705894, 55.685669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087952, 38.003441, 56.388237>,  <35.033421, 37.274242, 56.116211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087952, 38.003441, 56.388237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768280, 38.020084, 56.148376>,  <34.576477, 38.030071, 56.004459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768280, 38.020084, 56.148376>,  <35.087952, 38.003441, 56.388237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768280, 38.020084, 56.148376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560504, 0.308778, 0.768434,
		0.217133, 0.950224, -0.223446,
		-0.799179, 0.041610, -0.599651,
		34.528526, 38.032566, 55.968483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728912, 38.579407, 56.580311>,  <35.087952, 38.003441, 56.388237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728912, 38.579407, 56.580311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443951, 38.408081, 56.357948>,  <34.272976, 38.305286, 56.224533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443951, 38.408081, 56.357948>,  <34.728912, 38.579407, 56.580311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443951, 38.408081, 56.357948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689579, 0.280227, 0.667798,
		-0.130251, 0.859079, -0.494993,
		-0.712401, -0.428318, -0.555903,
		34.230232, 38.279587, 56.191177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239258, 39.117428, 56.699291>,  <34.728912, 38.579407, 56.580311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239258, 39.117428, 56.699291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064983, 38.784863, 56.561344>,  <33.960419, 38.585323, 56.478577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064983, 38.784863, 56.561344>,  <34.239258, 39.117428, 56.699291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064983, 38.784863, 56.561344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779243, 0.156638, 0.606832,
		-0.450507, 0.533124, -0.716116,
		-0.435688, -0.831410, -0.344867,
		33.934277, 38.535439, 56.457886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454777, 39.354252, 56.548332>,  <34.239258, 39.117428, 56.699291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454777, 39.354252, 56.548332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497955, 38.960724, 56.605515>,  <33.523865, 38.724606, 56.639824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497955, 38.960724, 56.605515>,  <33.454777, 39.354252, 56.548332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497955, 38.960724, 56.605515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747458, 0.014491, 0.664151,
		-0.655480, -0.178547, -0.733803,
		0.107949, -0.983825, 0.142955,
		33.530338, 38.665577, 56.648399>
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
