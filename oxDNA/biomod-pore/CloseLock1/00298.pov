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
	<24.347080, 35.036785, 35.647606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359251, 35.110825, 35.254707>,  <24.366554, 35.155247, 35.018967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359251, 35.110825, 35.254707>,  <24.347080, 35.036785, 35.647606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.359251, 35.110825, 35.254707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787482, 0.600780, 0.137605,
		0.615586, -0.777691, -0.127478,
		0.030428, 0.185094, -0.982250,
		24.368380, 35.166351, 34.960033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.028669, 35.006962, 35.423096>,  <24.347080, 35.036785, 35.647606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.028669, 35.006962, 35.423096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841280, 35.255898, 35.172268>,  <24.728846, 35.405258, 35.021770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841280, 35.255898, 35.172268>,  <25.028669, 35.006962, 35.423096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841280, 35.255898, 35.172268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714221, 0.684562, 0.145819,
		0.520020, -0.379556, -0.765190,
		-0.468474, 0.622344, -0.627073,
		24.700737, 35.442600, 34.984146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539495, 35.364212, 34.946949>,  <25.028669, 35.006962, 35.423096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539495, 35.364212, 34.946949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220915, 35.603436, 34.982708>,  <25.029766, 35.746971, 35.004166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220915, 35.603436, 34.982708>,  <25.539495, 35.364212, 34.946949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220915, 35.603436, 34.982708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595801, 0.750832, 0.285083,
		0.103372, 0.280319, -0.954325,
		-0.796451, 0.598057, 0.089400,
		24.981979, 35.782852, 35.009529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633471, 35.936008, 34.622768>,  <25.539495, 35.364212, 34.946949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633471, 35.936008, 34.622768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374056, 35.998493, 34.920761>,  <25.218407, 36.035984, 35.099556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374056, 35.998493, 34.920761>,  <25.633471, 35.936008, 34.622768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374056, 35.998493, 34.920761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630572, 0.658456, 0.410872,
		-0.426353, 0.736230, -0.525537,
		-0.648538, 0.156212, 0.744980,
		25.179495, 36.045357, 35.144257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169838, 36.074211, 35.058552>,  <25.633471, 35.936008, 34.622768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169838, 36.074211, 35.058552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276882, 35.746861, 34.855122>,  <26.341108, 35.550449, 34.733063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276882, 35.746861, 34.855122>,  <26.169838, 36.074211, 35.058552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276882, 35.746861, 34.855122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854268, -0.445656, 0.267612,
		-0.445656, 0.362844, -0.818374,
		-0.267612, 0.818374, 0.508575,
		26.357166, 35.501347, 34.702549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842468, 35.887188, 34.889988>,  <26.169838, 36.074211, 35.058552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842468, 35.887188, 34.889988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213575, 35.894588, 35.039066>,  <27.436239, 35.899029, 35.128513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213575, 35.894588, 35.039066>,  <26.842468, 35.887188, 34.889988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213575, 35.894588, 35.039066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122561, -0.958472, -0.257508,
		0.352456, 0.284585, -0.891508,
		0.927768, 0.018504, 0.372698,
		27.491905, 35.900139, 35.150875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226000, 35.593056, 34.457287>,  <26.842468, 35.887188, 34.889988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226000, 35.593056, 34.457287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461889, 35.534100, 34.774902>,  <27.603422, 35.498726, 34.965473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461889, 35.534100, 34.774902>,  <27.226000, 35.593056, 34.457287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461889, 35.534100, 34.774902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065202, -0.971306, -0.228723,
		0.804969, 0.186657, -0.563191,
		0.589724, -0.147394, 0.794041,
		27.638807, 35.489880, 35.013115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822824, 35.325619, 34.191257>,  <27.226000, 35.593056, 34.457287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822824, 35.325619, 34.191257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853420, 35.195660, 34.568317>,  <27.871777, 35.117683, 34.794552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853420, 35.195660, 34.568317>,  <27.822824, 35.325619, 34.191257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853420, 35.195660, 34.568317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189542, -0.923443, -0.333657,
		0.978889, 0.204193, -0.009051,
		0.076488, -0.324897, 0.942651,
		27.876368, 35.098190, 34.851112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379879, 34.754436, 34.242481>,  <27.822824, 35.325619, 34.191257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379879, 34.754436, 34.242481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180832, 34.695995, 34.584484>,  <28.061403, 34.660931, 34.789684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180832, 34.695995, 34.584484>,  <28.379879, 34.754436, 34.242481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180832, 34.695995, 34.584484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243868, -0.969518, -0.023738,
		0.832410, 0.196696, 0.518078,
		-0.497617, -0.146102, 0.855004,
		28.031548, 34.652164, 34.840984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860441, 34.321194, 34.640697>,  <28.379879, 34.754436, 34.242481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860441, 34.321194, 34.640697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499460, 34.282860, 34.808697>,  <28.282871, 34.259857, 34.909496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499460, 34.282860, 34.808697>,  <28.860441, 34.321194, 34.640697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499460, 34.282860, 34.808697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105329, -0.994437, -0.000597,
		0.417719, 0.043699, 0.907525,
		-0.902451, -0.095838, 0.419998,
		28.228725, 34.254108, 34.934696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934896, 33.855602, 35.300934>,  <28.860441, 34.321194, 34.640697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934896, 33.855602, 35.300934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568676, 33.839413, 35.140869>,  <28.348944, 33.829697, 35.044830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568676, 33.839413, 35.140869>,  <28.934896, 33.855602, 35.300934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568676, 33.839413, 35.140869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043405, -0.999056, 0.001745,
		-0.399857, -0.015771, 0.916442,
		-0.915549, -0.040476, -0.400164,
		28.294012, 33.827271, 35.020821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581408, 33.210243, 35.603008>,  <28.934896, 33.855602, 35.300934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581408, 33.210243, 35.603008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355577, 33.316555, 35.290440>,  <28.220079, 33.380341, 35.102898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355577, 33.316555, 35.290440>,  <28.581408, 33.210243, 35.603008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355577, 33.316555, 35.290440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207143, -0.962064, -0.177555,
		-0.798967, 0.061623, 0.598209,
		-0.564573, 0.265775, -0.781422,
		28.186205, 33.396286, 35.056011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075443, 32.667412, 35.575645>,  <28.581408, 33.210243, 35.603008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075443, 32.667412, 35.575645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066505, 32.837463, 35.213703>,  <28.061144, 32.939495, 34.996536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066505, 32.837463, 35.213703>,  <28.075443, 32.667412, 35.575645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066505, 32.837463, 35.213703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314844, -0.862023, -0.397228,
		-0.948880, 0.276014, 0.153109,
		-0.022343, 0.425128, -0.904858,
		28.059803, 32.965000, 34.942245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405962, 32.490913, 35.277489>,  <28.075443, 32.667412, 35.575645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405962, 32.490913, 35.277489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660866, 32.600140, 34.989227>,  <27.813808, 32.665676, 34.816273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660866, 32.600140, 34.989227>,  <27.405962, 32.490913, 35.277489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660866, 32.600140, 34.989227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144421, -0.876236, -0.459732,
		-0.756997, 0.397045, -0.518951,
		0.637258, 0.273068, -0.720650,
		27.852043, 32.682060, 34.773033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192640, 32.248222, 34.681519>,  <27.405962, 32.490913, 35.277489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192640, 32.248222, 34.681519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552805, 32.332588, 34.529324>,  <27.768904, 32.383205, 34.438007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552805, 32.332588, 34.529324>,  <27.192640, 32.248222, 34.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552805, 32.332588, 34.529324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048095, -0.820996, -0.568905,
		-0.432368, 0.530549, -0.729092,
		0.900413, 0.210911, -0.380490,
		27.822929, 32.395863, 34.415176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259352, 31.946501, 34.049942>,  <27.192640, 32.248222, 34.681519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259352, 31.946501, 34.049942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652107, 31.996931, 34.106506>,  <27.887760, 32.027187, 34.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652107, 31.996931, 34.106506>,  <27.259352, 31.946501, 34.049942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652107, 31.996931, 34.106506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188978, -0.704569, -0.684010,
		0.013400, 0.698347, -0.715634,
		0.981890, 0.126074, 0.141413,
		27.946674, 32.034752, 34.148930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552622, 32.018261, 33.401268>,  <27.259352, 31.946501, 34.049942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552622, 32.018261, 33.401268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859413, 31.906298, 33.632233>,  <28.043488, 31.839121, 33.770809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859413, 31.906298, 33.632233>,  <27.552622, 32.018261, 33.401268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859413, 31.906298, 33.632233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247326, -0.701365, -0.668519,
		0.592096, 0.655546, -0.468702,
		0.766976, -0.279905, 0.577409,
		28.089506, 31.822327, 33.805454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099369, 31.966808, 32.926239>,  <27.552622, 32.018261, 33.401268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099369, 31.966808, 32.926239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230909, 31.787495, 33.258720>,  <28.309834, 31.679907, 33.458210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230909, 31.787495, 33.258720>,  <28.099369, 31.966808, 32.926239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230909, 31.787495, 33.258720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365808, -0.750979, -0.549742,
		0.870657, 0.484843, -0.082973,
		0.328849, -0.448284, 0.831204,
		28.329565, 31.653009, 33.508083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892031, 31.880352, 32.856770>,  <28.099369, 31.966808, 32.926239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892031, 31.880352, 32.856770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776896, 31.600414, 33.118263>,  <28.707813, 31.432451, 33.275158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776896, 31.600414, 33.118263>,  <28.892031, 31.880352, 32.856770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776896, 31.600414, 33.118263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480560, -0.696010, -0.533509,
		0.828378, 0.160594, 0.536656,
		-0.287840, -0.699842, 0.653735,
		28.690544, 31.390461, 33.314384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395098, 31.432936, 32.904434>,  <28.892031, 31.880352, 32.856770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395098, 31.432936, 32.904434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098207, 31.209644, 33.052746>,  <28.920073, 31.075668, 33.141735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098207, 31.209644, 33.052746>,  <29.395098, 31.432936, 32.904434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098207, 31.209644, 33.052746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384500, -0.807889, -0.446626,
		0.548871, -0.188931, 0.814276,
		-0.742226, -0.558230, 0.370783,
		28.875540, 31.042175, 33.163982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669346, 30.808458, 33.186733>,  <29.395098, 31.432936, 32.904434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669346, 30.808458, 33.186733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284834, 30.726988, 33.112480>,  <29.054127, 30.678106, 33.067928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284834, 30.726988, 33.112480>,  <29.669346, 30.808458, 33.186733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284834, 30.726988, 33.112480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263926, -0.874223, -0.407525,
		-0.079283, -0.440739, 0.894127,
		-0.961279, -0.203674, -0.185634,
		28.996450, 30.665886, 33.056789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689423, 30.047832, 33.276325>,  <29.669346, 30.808458, 33.186733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689423, 30.047832, 33.276325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353113, 30.132093, 33.076836>,  <29.151327, 30.182650, 32.957142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353113, 30.132093, 33.076836>,  <29.689423, 30.047832, 33.276325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353113, 30.132093, 33.076836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041696, -0.893266, -0.447590,
		-0.539782, -0.397116, 0.742249,
		-0.840771, 0.210653, -0.498727,
		29.100882, 30.195290, 32.927219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448914, 29.381918, 33.226604>,  <29.689423, 30.047832, 33.276325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448914, 29.381918, 33.226604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240559, 29.600676, 32.964436>,  <29.115545, 29.731930, 32.807133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240559, 29.600676, 32.964436>,  <29.448914, 29.381918, 33.226604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240559, 29.600676, 32.964436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052745, -0.786968, -0.614736,
		-0.851996, -0.285636, 0.438765,
		-0.520885, 0.546895, -0.655428,
		29.084293, 29.764744, 32.767807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880682, 29.031372, 33.000515>,  <29.448914, 29.381918, 33.226604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880682, 29.031372, 33.000515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935677, 29.296175, 32.705803>,  <28.968674, 29.455057, 32.528976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935677, 29.296175, 32.705803>,  <28.880682, 29.031372, 33.000515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935677, 29.296175, 32.705803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006985, -0.744475, -0.667614,
		-0.990479, 0.086641, -0.106979,
		0.137486, 0.662005, -0.736781,
		28.976923, 29.494776, 32.484768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291193, 28.883327, 32.546276>,  <28.880682, 29.031372, 33.000515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291193, 28.883327, 32.546276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612425, 29.046892, 32.372910>,  <28.805164, 29.145031, 32.268890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612425, 29.046892, 32.372910>,  <28.291193, 28.883327, 32.546276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612425, 29.046892, 32.372910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141807, -0.837628, -0.527514,
		-0.578750, 0.362174, -0.730669,
		0.803081, 0.408913, -0.433418,
		28.853350, 29.169565, 32.242886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284752, 28.834469, 31.765919>,  <28.291193, 28.883327, 32.546276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284752, 28.834469, 31.765919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673553, 28.835098, 31.859901>,  <28.906836, 28.835476, 31.916290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673553, 28.835098, 31.859901>,  <28.284752, 28.834469, 31.765919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673553, 28.835098, 31.859901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135166, -0.821687, -0.553680,
		0.192190, 0.569937, -0.798896,
		0.972005, 0.001572, 0.234956,
		28.965155, 28.835569, 31.930387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508026, 28.473566, 31.244286>,  <28.284752, 28.834469, 31.765919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508026, 28.473566, 31.244286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815998, 28.488422, 31.499105>,  <29.000780, 28.497335, 31.651997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815998, 28.488422, 31.499105>,  <28.508026, 28.473566, 31.244286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815998, 28.488422, 31.499105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228146, -0.948343, -0.220444,
		0.595954, 0.315066, -0.738629,
		0.769928, 0.037141, 0.637049,
		29.046976, 28.499565, 31.690220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389353, 28.180489, 30.571726>,  <28.508026, 28.473566, 31.244286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389353, 28.180489, 30.571726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765545, 28.211395, 30.704105>,  <28.991261, 28.229939, 30.783533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765545, 28.211395, 30.704105>,  <28.389353, 28.180489, 30.571726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765545, 28.211395, 30.704105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095896, -0.873905, 0.476544,
		0.326038, -0.479917, -0.814481,
		0.940481, 0.077266, 0.330948,
		29.047689, 28.234575, 30.803391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274237, 28.479717, 30.004375>,  <28.389353, 28.180489, 30.571726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274237, 28.479717, 30.004375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596498, 28.297676, 29.852690>,  <28.789856, 28.188452, 29.761679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596498, 28.297676, 29.852690>,  <28.274237, 28.479717, 30.004375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596498, 28.297676, 29.852690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463893, 0.882803, -0.073907,
		0.368405, -0.116371, 0.922353,
		0.805655, -0.455101, -0.379213,
		28.838196, 28.161146, 29.738926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894972, 28.652264, 30.376722>,  <28.274237, 28.479717, 30.004375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894972, 28.652264, 30.376722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971174, 28.561897, 29.994587>,  <29.016895, 28.507677, 29.765306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971174, 28.561897, 29.994587>,  <28.894972, 28.652264, 30.376722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971174, 28.561897, 29.994587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586822, 0.806358, -0.073665,
		0.786987, -0.546580, 0.286186,
		0.190505, -0.225914, -0.955338,
		29.028326, 28.494123, 29.707985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638540, 28.541058, 30.306093>,  <28.894972, 28.652264, 30.376722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638540, 28.541058, 30.306093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482712, 28.658613, 29.956953>,  <29.389215, 28.729147, 29.747469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482712, 28.658613, 29.956953>,  <29.638540, 28.541058, 30.306093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482712, 28.658613, 29.956953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536362, 0.842820, 0.044387,
		0.748699, -0.450871, -0.485969,
		-0.389572, 0.293887, -0.872848,
		29.365841, 28.746778, 29.695099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244690, 28.771721, 29.879671>,  <29.638540, 28.541058, 30.306093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244690, 28.771721, 29.879671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906654, 28.948126, 29.758789>,  <29.703833, 29.053968, 29.686260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906654, 28.948126, 29.758789>,  <30.244690, 28.771721, 29.879671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906654, 28.948126, 29.758789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479090, 0.875574, -0.061989,
		0.237266, -0.197171, -0.951224,
		-0.845090, 0.441014, -0.302207,
		29.653128, 29.080429, 29.668127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283968, 28.852715, 29.220573>,  <30.244690, 28.771721, 29.879671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283968, 28.852715, 29.220573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072790, 29.131521, 29.414665>,  <29.946083, 29.298805, 29.531120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072790, 29.131521, 29.414665>,  <30.283968, 28.852715, 29.220573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072790, 29.131521, 29.414665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654750, 0.697929, -0.290166,
		-0.540905, 0.164512, -0.824838,
		-0.527943, 0.697015, 0.485228,
		29.914408, 29.340626, 29.560234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473751, 29.460606, 28.878723>,  <30.283968, 28.852715, 29.220573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473751, 29.460606, 28.878723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280878, 29.598400, 29.200924>,  <30.165155, 29.681076, 29.394243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280878, 29.598400, 29.200924>,  <30.473751, 29.460606, 28.878723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280878, 29.598400, 29.200924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547363, 0.836357, -0.030024,
		-0.684029, 0.426424, -0.591834,
		-0.482181, 0.344485, 0.805501,
		30.136223, 29.701746, 29.442574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116323, 30.120173, 28.726398>,  <30.473751, 29.460606, 28.878723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116323, 30.120173, 28.726398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225639, 30.095490, 29.110378>,  <30.291229, 30.080681, 29.340767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225639, 30.095490, 29.110378>,  <30.116323, 30.120173, 28.726398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225639, 30.095490, 29.110378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603190, 0.788359, -0.121047,
		-0.749316, 0.612114, 0.252670,
		0.273289, -0.061705, 0.959951,
		30.307627, 30.076979, 29.398363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617126, 29.924482, 28.275881>,  <30.116323, 30.120173, 28.726398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617126, 29.924482, 28.275881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358179, 30.205416, 28.157461>,  <29.202810, 30.373976, 28.086411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358179, 30.205416, 28.157461>,  <29.617126, 29.924482, 28.275881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358179, 30.205416, 28.157461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255224, 0.565755, 0.784080,
		0.718175, 0.432030, -0.545504,
		-0.647368, 0.702333, -0.296047,
		29.163969, 30.416115, 28.068647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958069, 30.566759, 28.183023>,  <29.617126, 29.924482, 28.275881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958069, 30.566759, 28.183023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572012, 30.658167, 28.234060>,  <29.340378, 30.713011, 28.264683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572012, 30.658167, 28.234060>,  <29.958069, 30.566759, 28.183023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572012, 30.658167, 28.234060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235544, 0.545841, 0.804100,
		0.114108, 0.806124, -0.580640,
		-0.965142, 0.228520, 0.127593,
		29.282469, 30.726723, 28.272339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053617, 31.257029, 28.552370>,  <29.958069, 30.566759, 28.183023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053617, 31.257029, 28.552370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663670, 31.182528, 28.601263>,  <29.429701, 31.137827, 28.630598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663670, 31.182528, 28.601263>,  <30.053617, 31.257029, 28.552370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663670, 31.182528, 28.601263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032434, 0.424164, 0.905005,
		-0.220404, 0.886226, -0.407463,
		-0.974869, -0.186251, 0.122231,
		29.371208, 31.126652, 28.637932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620823, 31.919834, 28.594193>,  <30.053617, 31.257029, 28.552370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620823, 31.919834, 28.594193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407211, 31.646902, 28.793888>,  <29.279045, 31.483143, 28.913706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407211, 31.646902, 28.793888>,  <29.620823, 31.919834, 28.594193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407211, 31.646902, 28.793888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038062, 0.570488, 0.820423,
		-0.844609, 0.457132, -0.278687,
		-0.534030, -0.682329, 0.499239,
		29.247002, 31.442204, 28.943661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059147, 32.273426, 28.837780>,  <29.620823, 31.919834, 28.594193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059147, 32.273426, 28.837780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134970, 31.948467, 29.058352>,  <29.180464, 31.753490, 29.190695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134970, 31.948467, 29.058352>,  <29.059147, 32.273426, 28.837780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134970, 31.948467, 29.058352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123331, 0.537461, 0.834222,
		-0.974093, -0.226141, 0.001686,
		0.189558, -0.812402, 0.551427,
		29.191837, 31.704746, 29.223780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681318, 32.421947, 29.451698>,  <29.059147, 32.273426, 28.837780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681318, 32.421947, 29.451698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902086, 32.113529, 29.578739>,  <29.034548, 31.928478, 29.654963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902086, 32.113529, 29.578739>,  <28.681318, 32.421947, 29.451698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902086, 32.113529, 29.578739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132082, 0.295224, 0.946254,
		-0.823370, -0.564207, 0.061099,
		0.551921, -0.771047, 0.317600,
		29.067663, 31.882215, 29.674019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408972, 32.321186, 30.061338>,  <28.681318, 32.421947, 29.451698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408972, 32.321186, 30.061338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767456, 32.147514, 30.097769>,  <28.982546, 32.043312, 30.119627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767456, 32.147514, 30.097769>,  <28.408972, 32.321186, 30.061338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767456, 32.147514, 30.097769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108840, 0.414211, 0.903650,
		-0.430073, -0.799947, 0.418476,
		0.896210, -0.434182, 0.091075,
		29.036320, 32.017262, 30.125092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408415, 32.061142, 30.742767>,  <28.408972, 32.321186, 30.061338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408415, 32.061142, 30.742767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788435, 32.015156, 30.626705>,  <29.016447, 31.987562, 30.557068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788435, 32.015156, 30.626705>,  <28.408415, 32.061142, 30.742767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788435, 32.015156, 30.626705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311577, 0.295528, 0.903096,
		-0.018081, -0.948391, 0.316588,
		0.950049, -0.114970, -0.290154,
		29.073450, 31.980665, 30.539660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640022, 31.689562, 31.230940>,  <28.408415, 32.061142, 30.742767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640022, 31.689562, 31.230940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928442, 31.916222, 31.071444>,  <29.101494, 32.052219, 30.975746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928442, 31.916222, 31.071444>,  <28.640022, 31.689562, 31.230940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928442, 31.916222, 31.071444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201790, 0.378802, 0.903211,
		0.662849, -0.731722, 0.158790,
		0.721049, 0.566651, -0.398742,
		29.144756, 32.086216, 30.951820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290287, 31.584980, 31.753798>,  <28.640022, 31.689562, 31.230940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290287, 31.584980, 31.753798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320227, 31.911854, 31.525200>,  <29.338190, 32.107979, 31.388041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320227, 31.911854, 31.525200>,  <29.290287, 31.584980, 31.753798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320227, 31.911854, 31.525200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203396, 0.548545, 0.811005,
		0.976232, -0.176941, -0.125155,
		0.074847, 0.817184, -0.571496,
		29.342680, 32.157009, 31.353750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059889, 31.935011, 31.933308>,  <29.290287, 31.584980, 31.753798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059889, 31.935011, 31.933308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806282, 32.201057, 31.775501>,  <29.654118, 32.360683, 31.680817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806282, 32.201057, 31.775501>,  <30.059889, 31.935011, 31.933308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806282, 32.201057, 31.775501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145724, 0.603779, 0.783719,
		0.759463, 0.439402, -0.479731,
		-0.634019, 0.665114, -0.394516,
		29.616076, 32.400593, 31.657146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399071, 32.614922, 32.011261>,  <30.059889, 31.935011, 31.933308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399071, 32.614922, 32.011261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027985, 32.731586, 31.918076>,  <29.805332, 32.801586, 31.862164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027985, 32.731586, 31.918076>,  <30.399071, 32.614922, 32.011261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027985, 32.731586, 31.918076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051313, 0.717818, 0.694338,
		0.369740, 0.632195, -0.680898,
		-0.927717, 0.291663, -0.232966,
		29.749670, 32.819084, 31.848186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471800, 33.348404, 31.818544>,  <30.399071, 32.614922, 32.011261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471800, 33.348404, 31.818544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092964, 33.270622, 31.920691>,  <29.865664, 33.223953, 31.981977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092964, 33.270622, 31.920691>,  <30.471800, 33.348404, 31.818544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092964, 33.270622, 31.920691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036462, 0.855628, 0.516305,
		-0.318895, 0.479675, -0.817446,
		-0.947088, -0.194453, 0.255366,
		29.808838, 33.212288, 31.997301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151329, 34.000912, 31.594612>,  <30.471800, 33.348404, 31.818544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151329, 34.000912, 31.594612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932526, 33.804131, 31.865540>,  <29.801243, 33.686062, 32.028095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932526, 33.804131, 31.865540>,  <30.151329, 34.000912, 31.594612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932526, 33.804131, 31.865540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004159, 0.807491, 0.589866,
		-0.837116, 0.325480, -0.439659,
		-0.547010, -0.491957, 0.677317,
		29.768423, 33.656544, 32.068733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737659, 34.523846, 32.022770>,  <30.151329, 34.000912, 31.594612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737659, 34.523846, 32.022770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696280, 34.204678, 32.260296>,  <29.671452, 34.013176, 32.402813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696280, 34.204678, 32.260296>,  <29.737659, 34.523846, 32.022770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696280, 34.204678, 32.260296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145287, 0.602740, 0.784599,
		-0.983966, -0.005108, -0.178281,
		-0.103449, -0.797921, 0.593818,
		29.665245, 33.965302, 32.438442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110428, 34.584126, 32.453190>,  <29.737659, 34.523846, 32.022770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110428, 34.584126, 32.453190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334906, 34.313477, 32.643867>,  <29.469593, 34.151085, 32.758274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334906, 34.313477, 32.643867>,  <29.110428, 34.584126, 32.453190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334906, 34.313477, 32.643867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198755, 0.448920, 0.871187,
		-0.803466, -0.583651, 0.117449,
		0.561194, -0.676626, 0.476696,
		29.503263, 34.110489, 32.786877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719170, 34.292187, 32.956917>,  <29.110428, 34.584126, 32.453190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719170, 34.292187, 32.956917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091223, 34.224094, 33.087067>,  <29.314455, 34.183239, 33.165157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091223, 34.224094, 33.087067>,  <28.719170, 34.292187, 32.956917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091223, 34.224094, 33.087067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221647, 0.446210, 0.867046,
		-0.292782, -0.878589, 0.377305,
		0.930135, -0.170227, 0.325379,
		29.370264, 34.173027, 33.184681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685736, 34.120930, 33.679134>,  <28.719170, 34.292187, 32.956917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685736, 34.120930, 33.679134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070839, 34.220711, 33.637421>,  <29.301901, 34.280579, 33.612392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070839, 34.220711, 33.637421>,  <28.685736, 34.120930, 33.679134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070839, 34.220711, 33.637421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034817, 0.268120, 0.962756,
		0.268120, -0.930530, 0.249449,
		-0.962756, -0.249449, 0.104287,
		29.359665, 34.295544, 33.606136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100773, 33.751785, 34.118359>,  <28.685736, 34.120930, 33.679134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100773, 33.751785, 34.118359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261806, 34.112438, 34.055141>,  <29.358427, 34.328831, 34.017212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261806, 34.112438, 34.055141>,  <29.100773, 33.751785, 34.118359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261806, 34.112438, 34.055141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176543, 0.092935, 0.979896,
		0.898198, -0.422391, -0.121763,
		0.402583, 0.901637, -0.158044,
		29.382582, 34.382931, 34.007729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515579, 33.810043, 34.671482>,  <29.100773, 33.751785, 34.118359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515579, 33.810043, 34.671482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514633, 34.180565, 34.520775>,  <29.514065, 34.402878, 34.430351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514633, 34.180565, 34.520775>,  <29.515579, 33.810043, 34.671482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514633, 34.180565, 34.520775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070324, 0.375987, 0.923953,
		0.997521, -0.024310, -0.066031,
		-0.002366, 0.926306, -0.376764,
		29.513924, 34.458458, 34.407745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061447, 34.079903, 34.901306>,  <29.515579, 33.810043, 34.671482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061447, 34.079903, 34.901306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829651, 34.387722, 34.793987>,  <29.690573, 34.572414, 34.729595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829651, 34.387722, 34.793987>,  <30.061447, 34.079903, 34.901306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829651, 34.387722, 34.793987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232043, 0.471376, 0.850859,
		0.781248, 0.430807, -0.451726,
		-0.579489, 0.769552, -0.268296,
		29.655804, 34.618587, 34.713497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515987, 34.744656, 34.918278>,  <30.061447, 34.079903, 34.901306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515987, 34.744656, 34.918278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126040, 34.812313, 34.976276>,  <29.892071, 34.852905, 35.011078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126040, 34.812313, 34.976276>,  <30.515987, 34.744656, 34.918278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126040, 34.812313, 34.976276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212288, 0.507819, 0.834897,
		0.067582, 0.844696, -0.530963,
		-0.974867, 0.169141, 0.144999,
		29.833580, 34.863056, 35.019775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490376, 35.214436, 35.373882>,  <30.515987, 34.744656, 34.918278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490376, 35.214436, 35.373882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101086, 35.124157, 35.391296>,  <29.867512, 35.069988, 35.401745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101086, 35.124157, 35.391296>,  <30.490376, 35.214436, 35.373882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101086, 35.124157, 35.391296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065345, 0.453228, 0.888996,
		-0.220375, 0.862348, -0.455841,
		-0.973224, -0.225700, 0.043530,
		29.809118, 35.056446, 35.404354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932108, 35.861351, 35.357784>,  <30.490376, 35.214436, 35.373882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932108, 35.861351, 35.357784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861526, 35.528820, 35.568596>,  <29.819178, 35.329304, 35.695084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861526, 35.528820, 35.568596>,  <29.932108, 35.861351, 35.357784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861526, 35.528820, 35.568596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135240, 0.550831, 0.823587,
		-0.974974, 0.074051, -0.209625,
		-0.176455, -0.831325, 0.527031,
		29.808590, 35.279423, 35.726704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702286, 36.408443, 34.845161>,  <29.932108, 35.861351, 35.357784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702286, 36.408443, 34.845161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759626, 36.786003, 34.726170>,  <29.794031, 37.012539, 34.654774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759626, 36.786003, 34.726170>,  <29.702286, 36.408443, 34.845161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759626, 36.786003, 34.726170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477708, 0.197255, 0.856088,
		0.866744, -0.264832, -0.422633,
		0.143353, 0.943904, -0.297482,
		29.802631, 37.069176, 34.636925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373453, 36.447857, 34.987965>,  <29.702286, 36.408443, 34.845161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373453, 36.447857, 34.987965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205023, 36.810352, 35.003063>,  <30.103964, 37.027851, 35.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205023, 36.810352, 35.003063>,  <30.373453, 36.447857, 34.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205023, 36.810352, 35.003063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313301, 0.106261, 0.943690,
		0.851198, 0.409192, -0.328670,
		-0.421075, 0.906240, 0.037751,
		30.078701, 37.082226, 35.014389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896681, 36.889290, 35.072803>,  <30.373453, 36.447857, 34.987965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896681, 36.889290, 35.072803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538733, 36.993591, 35.217697>,  <30.323963, 37.056171, 35.304634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538733, 36.993591, 35.217697>,  <30.896681, 36.889290, 35.072803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538733, 36.993591, 35.217697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327307, -0.168384, 0.929794,
		0.303446, 0.950606, 0.065334,
		-0.894869, 0.260758, 0.362236,
		30.270271, 37.071819, 35.326366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013676, 37.430298, 35.614513>,  <30.896681, 36.889290, 35.072803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013676, 37.430298, 35.614513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680920, 37.215984, 35.672333>,  <30.481266, 37.087395, 35.707024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680920, 37.215984, 35.672333>,  <31.013676, 37.430298, 35.614513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680920, 37.215984, 35.672333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420333, -0.438285, 0.794498,
		-0.362330, 0.721691, 0.589813,
		-0.831888, -0.535788, 0.144547,
		30.431353, 37.055248, 35.715698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524532, 37.697060, 36.215328>,  <31.013676, 37.430298, 35.614513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524532, 37.697060, 36.215328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548796, 37.310867, 36.113998>,  <30.563354, 37.079151, 36.053200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548796, 37.310867, 36.113998>,  <30.524532, 37.697060, 36.215328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548796, 37.310867, 36.113998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405809, -0.208020, 0.889970,
		-0.911943, -0.156789, 0.379180,
		0.060661, -0.965477, -0.253328,
		30.566994, 37.021225, 36.037998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214687, 37.256523, 36.728291>,  <30.524532, 37.697060, 36.215328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214687, 37.256523, 36.728291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527330, 37.076126, 36.555923>,  <30.714916, 36.967888, 36.452503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527330, 37.076126, 36.555923>,  <30.214687, 37.256523, 36.728291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527330, 37.076126, 36.555923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340973, -0.269575, 0.900592,
		-0.522331, -0.850841, -0.056923,
		0.781606, -0.450998, -0.430921,
		30.761812, 36.940826, 36.426647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267246, 36.561890, 36.944744>,  <30.214687, 37.256523, 36.728291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267246, 36.561890, 36.944744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643427, 36.655098, 36.845745>,  <30.869135, 36.711021, 36.786346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643427, 36.655098, 36.845745>,  <30.267246, 36.561890, 36.944744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643427, 36.655098, 36.845745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317858, -0.344713, 0.883255,
		0.120501, -0.909326, -0.398252,
		0.940450, 0.233021, -0.247498,
		30.925562, 36.725002, 36.771496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676954, 36.039791, 37.262520>,  <30.267246, 36.561890, 36.944744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676954, 36.039791, 37.262520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936350, 36.333126, 37.180855>,  <31.091988, 36.509125, 37.131855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936350, 36.333126, 37.180855>,  <30.676954, 36.039791, 37.262520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936350, 36.333126, 37.180855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521341, -0.232432, 0.821084,
		0.554677, -0.638901, -0.533047,
		0.648488, 0.733336, -0.204160,
		31.130896, 36.553127, 37.119606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361877, 35.838871, 37.463684>,  <30.676954, 36.039791, 37.262520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361877, 35.838871, 37.463684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426863, 36.232540, 37.435371>,  <31.465855, 36.468742, 37.418385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426863, 36.232540, 37.435371>,  <31.361877, 35.838871, 37.463684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426863, 36.232540, 37.435371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617031, -0.045356, 0.785630,
		0.769985, -0.171311, -0.614634,
		0.162464, 0.984172, -0.070781,
		31.475601, 36.527790, 37.414139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026997, 35.907249, 37.575493>,  <31.361877, 35.838871, 37.463684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026997, 35.907249, 37.575493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900749, 36.276127, 37.664883>,  <31.825001, 36.497456, 37.718517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900749, 36.276127, 37.664883>,  <32.026997, 35.907249, 37.575493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900749, 36.276127, 37.664883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575473, -0.001231, 0.817819,
		0.754465, 0.386721, -0.530311,
		-0.315616, 0.922196, 0.223476,
		31.806065, 36.552784, 37.731926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628845, 36.380901, 37.642914>,  <32.026997, 35.907249, 37.575493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628845, 36.380901, 37.642914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325733, 36.534901, 37.853642>,  <32.143864, 36.627300, 37.980080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325733, 36.534901, 37.853642>,  <32.628845, 36.380901, 37.642914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325733, 36.534901, 37.853642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534124, -0.097773, 0.839733,
		0.374804, 0.917724, -0.131546,
		-0.757782, 0.384997, 0.526824,
		32.098400, 36.650398, 38.011688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973362, 36.753647, 38.129166>,  <32.628845, 36.380901, 37.642914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973362, 36.753647, 38.129166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611580, 36.730858, 38.298264>,  <32.394512, 36.717182, 38.399723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611580, 36.730858, 38.298264>,  <32.973362, 36.753647, 38.129166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611580, 36.730858, 38.298264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420624, 0.045714, 0.906083,
		-0.070951, 0.997328, -0.017380,
		-0.904457, -0.056977, 0.422743,
		32.340244, 36.713764, 38.425087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964367, 37.295784, 38.673985>,  <32.973362, 36.753647, 38.129166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964367, 37.295784, 38.673985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671261, 37.036972, 38.758270>,  <32.495396, 36.881683, 38.808842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671261, 37.036972, 38.758270>,  <32.964367, 37.295784, 38.673985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671261, 37.036972, 38.758270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204864, 0.085522, 0.975047,
		-0.648909, 0.757650, 0.069886,
		-0.732767, -0.647034, 0.210712,
		32.451431, 36.842861, 38.821484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659920, 37.609943, 39.145031>,  <32.964367, 37.295784, 38.673985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659920, 37.609943, 39.145031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515476, 37.240154, 39.193947>,  <32.428810, 37.018280, 39.223297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515476, 37.240154, 39.193947>,  <32.659920, 37.609943, 39.145031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515476, 37.240154, 39.193947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039500, 0.115854, 0.992481,
		-0.931685, 0.363228, -0.005319,
		-0.361113, -0.924469, 0.122287,
		32.407143, 36.962814, 39.230633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237263, 37.678993, 39.577625>,  <32.659920, 37.609943, 39.145031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237263, 37.678993, 39.577625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293022, 37.285759, 39.625149>,  <32.326477, 37.049820, 39.653664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293022, 37.285759, 39.625149>,  <32.237263, 37.678993, 39.577625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293022, 37.285759, 39.625149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252097, 0.080794, 0.964323,
		-0.957609, -0.164375, -0.236570,
		0.139397, -0.983083, 0.118808,
		32.334843, 36.990833, 39.660789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764553, 37.403221, 40.113514>,  <32.237263, 37.678993, 39.577625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764553, 37.403221, 40.113514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047173, 37.120205, 40.108326>,  <32.216743, 36.950394, 40.105213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047173, 37.120205, 40.108326>,  <31.764553, 37.403221, 40.113514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047173, 37.120205, 40.108326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281274, -0.297601, 0.912315,
		-0.649363, -0.640948, -0.409284,
		0.706550, -0.707544, -0.012969,
		32.259136, 36.907944, 40.104435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525866, 36.881706, 40.449459>,  <31.764553, 37.403221, 40.113514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525866, 36.881706, 40.449459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914377, 36.787052, 40.459404>,  <32.147484, 36.730259, 40.465370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914377, 36.787052, 40.459404>,  <31.525866, 36.881706, 40.449459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914377, 36.787052, 40.459404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135320, -0.463402, 0.875755,
		-0.195716, -0.853967, -0.482115,
		0.971279, -0.236639, 0.024864,
		32.205761, 36.716061, 40.466862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524084, 36.249947, 40.607258>,  <31.525866, 36.881706, 40.449459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524084, 36.249947, 40.607258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888357, 36.362370, 40.728367>,  <32.106922, 36.429821, 40.801033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888357, 36.362370, 40.728367>,  <31.524084, 36.249947, 40.607258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888357, 36.362370, 40.728367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142063, -0.475143, 0.868365,
		0.387915, -0.833816, -0.392776,
		0.910681, 0.281053, 0.302770,
		32.161560, 36.446686, 40.819199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911055, 35.640278, 40.763554>,  <31.524084, 36.249947, 40.607258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911055, 35.640278, 40.763554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082993, 35.933693, 40.974133>,  <32.186157, 36.109741, 41.100479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082993, 35.933693, 40.974133>,  <31.911055, 35.640278, 40.763554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082993, 35.933693, 40.974133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238067, -0.470356, 0.849759,
		0.870952, -0.490596, -0.027549,
		0.429845, 0.733540, 0.526452,
		32.211945, 36.153755, 41.132069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849852, 35.404381, 41.398842>,  <31.911055, 35.640278, 40.763554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849852, 35.404381, 41.398842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973171, 35.775707, 41.481964>,  <32.047161, 35.998505, 41.531837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973171, 35.775707, 41.481964>,  <31.849852, 35.404381, 41.398842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973171, 35.775707, 41.481964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199075, -0.150650, 0.968335,
		0.930227, -0.339903, 0.138360,
		0.308297, 0.928316, 0.207805,
		32.065659, 36.054203, 41.544304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097321, 35.290920, 42.053417>,  <31.849852, 35.404381, 41.398842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097321, 35.290920, 42.053417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049896, 35.684444, 41.999649>,  <32.021442, 35.920559, 41.967388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049896, 35.684444, 41.999649>,  <32.097321, 35.290920, 42.053417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049896, 35.684444, 41.999649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254218, 0.100790, 0.961881,
		0.959852, 0.148212, 0.238152,
		-0.118559, 0.983806, -0.134422,
		32.014328, 35.979588, 41.959324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326393, 35.548290, 42.649914>,  <32.097321, 35.290920, 42.053417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326393, 35.548290, 42.649914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084740, 35.825737, 42.492985>,  <31.939747, 35.992207, 42.398827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084740, 35.825737, 42.492985>,  <32.326393, 35.548290, 42.649914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084740, 35.825737, 42.492985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442792, 0.117133, 0.888940,
		0.662537, 0.710758, 0.236364,
		-0.604136, 0.693616, -0.392323,
		31.903500, 36.033821, 42.375286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472664, 36.130852, 43.145035>,  <32.326393, 35.548290, 42.649914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472664, 36.130852, 43.145035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113358, 36.157696, 42.971313>,  <31.897774, 36.173801, 42.867081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113358, 36.157696, 42.971313>,  <32.472664, 36.130852, 43.145035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113358, 36.157696, 42.971313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424311, 0.124761, 0.896881,
		0.114375, 0.989915, -0.083592,
		-0.898264, 0.067111, -0.434301,
		31.843878, 36.177830, 42.841022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110184, 36.678322, 43.562786>,  <32.472664, 36.130852, 43.145035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110184, 36.678322, 43.562786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815723, 36.501102, 43.358124>,  <31.639048, 36.394772, 43.235329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815723, 36.501102, 43.358124>,  <32.110184, 36.678322, 43.562786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815723, 36.501102, 43.358124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495366, -0.162426, 0.853364,
		-0.461187, 0.881661, -0.099900,
		-0.736152, -0.443047, -0.511654,
		31.594877, 36.368187, 43.204628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423353, 37.013168, 43.772587>,  <32.110184, 36.678322, 43.562786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423353, 37.013168, 43.772587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352968, 36.643860, 43.635990>,  <31.310738, 36.422276, 43.554031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352968, 36.643860, 43.635990>,  <31.423353, 37.013168, 43.772587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352968, 36.643860, 43.635990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493177, -0.217545, 0.842289,
		-0.851948, 0.316623, -0.417055,
		-0.175960, -0.923268, -0.341488,
		31.300180, 36.366879, 43.533543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795147, 36.778439, 44.125771>,  <31.423353, 37.013168, 43.772587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795147, 36.778439, 44.125771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955503, 36.447075, 43.969299>,  <31.051718, 36.248257, 43.875416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955503, 36.447075, 43.969299>,  <30.795147, 36.778439, 44.125771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955503, 36.447075, 43.969299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480002, -0.553626, 0.680512,
		-0.780310, -0.085046, -0.619583,
		0.400892, -0.828412, -0.391178,
		31.075771, 36.198551, 43.851948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209347, 36.221191, 43.973148>,  <30.795147, 36.778439, 44.125771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209347, 36.221191, 43.973148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556227, 36.029736, 44.028091>,  <30.764355, 35.914860, 44.061058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556227, 36.029736, 44.028091>,  <30.209347, 36.221191, 43.973148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556227, 36.029736, 44.028091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395329, -0.494025, 0.774374,
		-0.302789, -0.725838, -0.617639,
		0.867199, -0.478643, 0.137359,
		30.816387, 35.886143, 44.069298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945961, 35.533146, 44.213013>,  <30.209347, 36.221191, 43.973148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945961, 35.533146, 44.213013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340422, 35.542103, 44.278744>,  <30.577099, 35.547478, 44.318184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340422, 35.542103, 44.278744>,  <29.945961, 35.533146, 44.213013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340422, 35.542103, 44.278744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108389, -0.662928, 0.740795,
		0.125525, -0.748348, -0.651321,
		0.986152, 0.022393, 0.164327,
		30.636267, 35.548820, 44.328041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107023, 34.819180, 44.379601>,  <29.945961, 35.533146, 44.213013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107023, 34.819180, 44.379601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408484, 35.027573, 44.539894>,  <30.589359, 35.152607, 44.636070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408484, 35.027573, 44.539894>,  <30.107023, 34.819180, 44.379601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408484, 35.027573, 44.539894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016849, -0.624809, 0.780596,
		0.657059, -0.581545, -0.479666,
		0.753651, 0.520979, 0.400738,
		30.634579, 35.183865, 44.660114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676052, 34.367222, 44.476284>,  <30.107023, 34.819180, 44.379601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676052, 34.367222, 44.476284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750584, 34.687759, 44.703659>,  <30.795303, 34.880081, 44.840084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750584, 34.687759, 44.703659>,  <30.676052, 34.367222, 44.476284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750584, 34.687759, 44.703659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066383, -0.587517, 0.806484,
		0.980242, -0.112536, -0.162667,
		0.186328, 0.801348, 0.568439,
		30.806482, 34.928165, 44.874191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285162, 34.288826, 44.804142>,  <30.676052, 34.367222, 44.476284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285162, 34.288826, 44.804142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096920, 34.554565, 45.036407>,  <30.983974, 34.714008, 45.175766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096920, 34.554565, 45.036407>,  <31.285162, 34.288826, 44.804142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096920, 34.554565, 45.036407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131236, -0.598070, 0.790626,
		0.872529, 0.448278, 0.194269,
		-0.470607, 0.664349, 0.580664,
		30.955738, 34.753868, 45.210606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812555, 34.455914, 45.294655>,  <31.285162, 34.288826, 44.804142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812555, 34.455914, 45.294655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453972, 34.526917, 45.457066>,  <31.238821, 34.569519, 45.554512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453972, 34.526917, 45.457066>,  <31.812555, 34.455914, 45.294655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453972, 34.526917, 45.457066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238626, -0.578692, 0.779854,
		0.373391, 0.795994, 0.476416,
		-0.896458, 0.177505, 0.406023,
		31.185034, 34.580170, 45.578873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956841, 34.528229, 45.951756>,  <31.812555, 34.455914, 45.294655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956841, 34.528229, 45.951756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560629, 34.505699, 46.001846>,  <31.322903, 34.492184, 46.031902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560629, 34.505699, 46.001846>,  <31.956841, 34.528229, 45.951756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560629, 34.505699, 46.001846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136573, -0.498411, 0.856115,
		0.014198, 0.865109, 0.501382,
		-0.990528, -0.056320, 0.125227,
		31.263470, 34.488804, 46.039413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863928, 34.714367, 46.654762>,  <31.956841, 34.528229, 45.951756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863928, 34.714367, 46.654762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571323, 34.477615, 46.519367>,  <31.395761, 34.335564, 46.438129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571323, 34.477615, 46.519367>,  <31.863928, 34.714367, 46.654762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571323, 34.477615, 46.519367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139331, -0.615729, 0.775542,
		-0.667441, 0.520156, 0.532879,
		-0.731512, -0.591875, -0.338489,
		31.351870, 34.300053, 46.417820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278929, 34.693954, 47.142281>,  <31.863928, 34.714367, 46.654762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278929, 34.693954, 47.142281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245417, 34.350883, 46.939358>,  <31.225309, 34.145039, 46.817604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245417, 34.350883, 46.939358>,  <31.278929, 34.693954, 47.142281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245417, 34.350883, 46.939358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030590, -0.506647, 0.861611,
		-0.996015, 0.087705, 0.016211,
		-0.083780, -0.857681, -0.507310,
		31.220284, 34.093578, 46.787167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845453, 34.295830, 47.557007>,  <31.278929, 34.693954, 47.142281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845453, 34.295830, 47.557007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023552, 34.015694, 47.333836>,  <31.130411, 33.847614, 47.199932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023552, 34.015694, 47.333836>,  <30.845453, 34.295830, 47.557007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023552, 34.015694, 47.333836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014633, -0.617322, 0.786574,
		-0.895288, -0.358385, -0.264613,
		0.445248, -0.700338, -0.557925,
		31.157127, 33.805592, 47.166458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470434, 33.768188, 47.826885>,  <30.845453, 34.295830, 47.557007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470434, 33.768188, 47.826885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783211, 33.622478, 47.624550>,  <30.970877, 33.535053, 47.503147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783211, 33.622478, 47.624550>,  <30.470434, 33.768188, 47.826885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783211, 33.622478, 47.624550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065520, -0.758958, 0.647834,
		-0.619898, -0.539712, -0.569594,
		0.781942, -0.364271, -0.505839,
		31.017794, 33.513199, 47.472797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389917, 33.030502, 47.763344>,  <30.470434, 33.768188, 47.826885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389917, 33.030502, 47.763344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777832, 33.059124, 47.670055>,  <31.010582, 33.076298, 47.614082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777832, 33.059124, 47.670055>,  <30.389917, 33.030502, 47.763344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777832, 33.059124, 47.670055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211080, -0.725394, 0.655171,
		-0.122292, -0.684605, -0.718583,
		0.969788, 0.071556, -0.233217,
		31.068769, 33.080589, 47.600090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652782, 32.317860, 47.559330>,  <30.389917, 33.030502, 47.763344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652782, 32.317860, 47.559330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941326, 32.556587, 47.699871>,  <31.114452, 32.699825, 47.784195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941326, 32.556587, 47.699871>,  <30.652782, 32.317860, 47.559330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941326, 32.556587, 47.699871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028236, -0.532239, 0.846123,
		0.691987, -0.600437, -0.400786,
		0.721358, 0.596823, 0.351348,
		31.157734, 32.735634, 47.805275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206894, 31.920229, 47.826668>,  <30.652782, 32.317860, 47.559330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206894, 31.920229, 47.826668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245411, 32.267960, 48.020576>,  <31.268522, 32.476597, 48.136921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245411, 32.267960, 48.020576>,  <31.206894, 31.920229, 47.826668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245411, 32.267960, 48.020576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070322, -0.479873, 0.874515,
		0.992866, -0.118301, 0.014923,
		0.096294, 0.869326, 0.484768,
		31.274300, 32.528759, 48.166008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581697, 31.643892, 48.361053>,  <31.206894, 31.920229, 47.826668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581697, 31.643892, 48.361053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456984, 32.001148, 48.490726>,  <31.382156, 32.215504, 48.568531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456984, 32.001148, 48.490726>,  <31.581697, 31.643892, 48.361053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456984, 32.001148, 48.490726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001684, -0.340665, 0.940183,
		0.950152, 0.293680, 0.104710,
		-0.311784, 0.893140, 0.324178,
		31.363449, 32.269089, 48.587978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952129, 31.676447, 48.938862>,  <31.581697, 31.643892, 48.361053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952129, 31.676447, 48.938862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647203, 31.930290, 48.989697>,  <31.464249, 32.082596, 49.020195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647203, 31.930290, 48.989697>,  <31.952129, 31.676447, 48.938862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647203, 31.930290, 48.989697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141916, -0.355481, 0.923847,
		0.631458, 0.686225, 0.361050,
		-0.762313, 0.634609, 0.127085,
		31.418510, 32.120674, 49.027821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008930, 31.873812, 49.543472>,  <31.952129, 31.676447, 48.938862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008930, 31.873812, 49.543472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629017, 31.981323, 49.479385>,  <31.401070, 32.045830, 49.440933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629017, 31.981323, 49.479385>,  <32.008930, 31.873812, 49.543472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629017, 31.981323, 49.479385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275525, -0.475660, 0.835365,
		0.148317, 0.837560, 0.525829,
		-0.949783, 0.268778, -0.160220,
		31.344082, 32.061958, 49.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703409, 32.079071, 50.292999>,  <32.008930, 31.873812, 49.543472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703409, 32.079071, 50.292999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413252, 31.988352, 50.033039>,  <31.239159, 31.933920, 49.877064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413252, 31.988352, 50.033039>,  <31.703409, 32.079071, 50.292999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413252, 31.988352, 50.033039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473525, -0.520832, 0.710287,
		-0.499580, 0.822981, 0.270413,
		-0.725392, -0.226798, -0.649899,
		31.195635, 31.920313, 49.838070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059855, 32.383869, 50.552628>,  <31.703409, 32.079071, 50.292999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059855, 32.383869, 50.552628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950182, 32.088570, 50.306110>,  <30.884378, 31.911390, 50.158199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950182, 32.088570, 50.306110>,  <31.059855, 32.383869, 50.552628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950182, 32.088570, 50.306110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621465, -0.353043, 0.699387,
		-0.733897, 0.574764, -0.361995,
		-0.274183, -0.738246, -0.616293,
		30.867928, 31.867096, 50.121223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447748, 32.403942, 50.666882>,  <31.059855, 32.383869, 50.552628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447748, 32.403942, 50.666882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477922, 32.048447, 50.486019>,  <30.496027, 31.835148, 50.377502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477922, 32.048447, 50.486019>,  <30.447748, 32.403942, 50.666882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477922, 32.048447, 50.486019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843964, -0.298405, 0.445734,
		-0.531069, 0.347981, -0.772577,
		0.075434, -0.888743, -0.452157,
		30.500553, 31.781824, 50.350372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745079, 32.239407, 50.443825>,  <30.447748, 32.403942, 50.666882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745079, 32.239407, 50.443825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962763, 31.906431, 50.485546>,  <30.093372, 31.706646, 50.510578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962763, 31.906431, 50.485546>,  <29.745079, 32.239407, 50.443825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962763, 31.906431, 50.485546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766049, -0.442372, 0.466343,
		-0.342062, -0.333689, -0.878433,
		0.544208, -0.832441, 0.104303,
		30.126024, 31.656698, 50.516838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011251, 32.053719, 50.549404>,  <29.745079, 32.239407, 50.443825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011251, 32.053719, 50.549404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657146, 32.119930, 50.375549>,  <28.444683, 32.159657, 50.271236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657146, 32.119930, 50.375549>,  <29.011251, 32.053719, 50.549404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657146, 32.119930, 50.375549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298708, -0.513951, -0.804132,
		-0.356493, -0.841697, 0.405535,
		-0.885261, 0.165531, -0.434641,
		28.391569, 32.169590, 50.245155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495535, 31.672607, 50.912731>,  <29.011251, 32.053719, 50.549404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495535, 31.672607, 50.912731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885471, 31.724106, 50.985512>,  <29.119434, 31.755005, 51.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885471, 31.724106, 50.985512>,  <28.495535, 31.672607, 50.912731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885471, 31.724106, 50.985512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078212, -0.961987, 0.261656,
		0.208725, -0.240842, -0.947855,
		0.974842, 0.128748, 0.181954,
		29.177923, 31.762730, 51.040096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812033, 31.092052, 50.665913>,  <28.495535, 31.672607, 50.912731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812033, 31.092052, 50.665913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055393, 31.205582, 50.962368>,  <29.201410, 31.273699, 51.140244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055393, 31.205582, 50.962368>,  <28.812033, 31.092052, 50.665913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055393, 31.205582, 50.962368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019390, -0.938902, 0.343637,
		0.793392, -0.194698, -0.576733,
		0.608401, 0.283822, 0.741143,
		29.237913, 31.290728, 51.184711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146227, 30.535534, 51.144779>,  <28.812033, 31.092052, 50.665913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146227, 30.535534, 51.144779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308977, 30.189505, 51.262154>,  <29.406628, 29.981888, 51.332577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308977, 30.189505, 51.262154>,  <29.146227, 30.535534, 51.144779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308977, 30.189505, 51.262154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246692, -0.205233, -0.947113,
		0.879543, 0.457743, 0.129903,
		0.406874, -0.865073, 0.293433,
		29.431040, 29.929983, 51.350182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839689, 30.491280, 50.900356>,  <29.146227, 30.535534, 51.144779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839689, 30.491280, 50.900356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695692, 30.120821, 50.945366>,  <29.609293, 29.898546, 50.972370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695692, 30.120821, 50.945366>,  <29.839689, 30.491280, 50.900356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695692, 30.120821, 50.945366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332397, -0.240017, -0.912088,
		0.871732, -0.290945, 0.394252,
		-0.359994, -0.926144, 0.112521,
		29.587694, 29.842978, 50.979122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399361, 30.156664, 50.561565>,  <29.839689, 30.491280, 50.900356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399361, 30.156664, 50.561565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073597, 29.925327, 50.580574>,  <29.878139, 29.786526, 50.591980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073597, 29.925327, 50.580574>,  <30.399361, 30.156664, 50.561565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073597, 29.925327, 50.580574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208555, -0.368134, -0.906081,
		0.541519, -0.728009, 0.420428,
		-0.814409, -0.578343, 0.047522,
		29.829275, 29.751825, 50.594830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531891, 29.512203, 50.256954>,  <30.399361, 30.156664, 50.561565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531891, 29.512203, 50.256954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143950, 29.592798, 50.202122>,  <29.911184, 29.641155, 50.169224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143950, 29.592798, 50.202122>,  <30.531891, 29.512203, 50.256954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143950, 29.592798, 50.202122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066381, -0.322802, -0.944136,
		-0.234479, -0.924771, 0.299696,
		-0.969852, 0.201486, -0.137078,
		29.852993, 29.653244, 50.160999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136147, 28.923191, 49.987579>,  <30.531891, 29.512203, 50.256954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136147, 28.923191, 49.987579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997225, 29.270960, 49.847019>,  <29.913872, 29.479622, 49.762684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997225, 29.270960, 49.847019>,  <30.136147, 28.923191, 49.987579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997225, 29.270960, 49.847019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225476, -0.286315, -0.931227,
		-0.910243, -0.402650, -0.096596,
		-0.347302, 0.869423, -0.351404,
		29.893034, 29.531786, 49.741596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735849, 28.732775, 49.366955>,  <30.136147, 28.923191, 49.987579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735849, 28.732775, 49.366955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810436, 29.125116, 49.344471>,  <29.855188, 29.360521, 49.330982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810436, 29.125116, 49.344471>,  <29.735849, 28.732775, 49.366955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810436, 29.125116, 49.344471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186994, -0.091601, -0.978081,
		-0.964502, 0.171869, -0.200494,
		0.186467, 0.980852, -0.056210,
		29.866377, 29.419373, 49.327606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493336, 29.061268, 48.699276>,  <29.735849, 28.732775, 49.366955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493336, 29.061268, 48.699276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798780, 29.275223, 48.843933>,  <29.982048, 29.403597, 48.930729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798780, 29.275223, 48.843933>,  <29.493336, 29.061268, 48.699276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798780, 29.275223, 48.843933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406202, 0.037408, -0.913017,
		-0.501891, 0.844094, -0.188707,
		0.763613, 0.534889, 0.361647,
		30.027864, 29.435690, 48.952427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697645, 29.402880, 48.101967>,  <29.493336, 29.061268, 48.699276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697645, 29.402880, 48.101967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996134, 29.512470, 48.344650>,  <30.175228, 29.578224, 48.490261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996134, 29.512470, 48.344650>,  <29.697645, 29.402880, 48.101967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996134, 29.512470, 48.344650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615329, 0.063880, -0.785678,
		-0.254013, 0.959613, -0.120916,
		0.746222, 0.273975, 0.606704,
		30.220001, 29.594664, 48.526661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947870, 29.997643, 47.866222>,  <29.697645, 29.402880, 48.101967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947870, 29.997643, 47.866222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236694, 29.813725, 48.072994>,  <30.409988, 29.703373, 48.197056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236694, 29.813725, 48.072994>,  <29.947870, 29.997643, 47.866222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236694, 29.813725, 48.072994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632391, 0.135650, -0.762680,
		0.280555, 0.877603, 0.388718,
		0.722060, -0.459796, 0.516931,
		30.453312, 29.675785, 48.228073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471962, 30.416498, 47.773998>,  <29.947870, 29.997643, 47.866222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471962, 30.416498, 47.773998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607660, 30.048712, 47.853493>,  <30.689079, 29.828041, 47.901192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607660, 30.048712, 47.853493>,  <30.471962, 30.416498, 47.773998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607660, 30.048712, 47.853493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444896, -0.029326, -0.895102,
		0.828843, 0.392078, 0.399118,
		0.339245, -0.919465, 0.198741,
		30.709435, 29.772873, 47.913116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073881, 30.465631, 47.475643>,  <30.471962, 30.416498, 47.773998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073881, 30.465631, 47.475643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034815, 30.072298, 47.536983>,  <31.011375, 29.836298, 47.573788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034815, 30.072298, 47.536983>,  <31.073881, 30.465631, 47.475643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034815, 30.072298, 47.536983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423045, -0.180497, -0.887949,
		0.900830, -0.021846, 0.433623,
		-0.097666, -0.983333, 0.153355,
		31.005516, 29.777298, 47.582989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731319, 30.205082, 47.361378>,  <31.073881, 30.465631, 47.475643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731319, 30.205082, 47.361378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501560, 29.877651, 47.360764>,  <31.363705, 29.681192, 47.360394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501560, 29.877651, 47.360764>,  <31.731319, 30.205082, 47.361378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501560, 29.877651, 47.360764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453040, -0.316337, -0.833478,
		0.681779, -0.479443, 0.552550,
		-0.574398, -0.818575, -0.001535,
		31.329241, 29.632078, 47.360302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147137, 29.719206, 47.194294>,  <31.731319, 30.205082, 47.361378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147137, 29.719206, 47.194294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787655, 29.574863, 47.094597>,  <31.571966, 29.488258, 47.034779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787655, 29.574863, 47.094597>,  <32.147137, 29.719206, 47.194294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787655, 29.574863, 47.094597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387198, -0.385972, -0.837319,
		0.205952, -0.849004, 0.486596,
		-0.898700, -0.360856, -0.249241,
		31.518045, 29.466606, 47.019825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413063, 29.135859, 47.071194>,  <32.147137, 29.719206, 47.194294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413063, 29.135859, 47.071194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064178, 29.159079, 46.876926>,  <31.854847, 29.173010, 46.760365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064178, 29.159079, 46.876926>,  <32.413063, 29.135859, 47.071194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064178, 29.159079, 46.876926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468124, -0.188765, -0.863266,
		-0.141785, -0.980305, 0.137471,
		-0.872214, 0.058045, -0.485668,
		31.802515, 29.176493, 46.731224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411041, 28.610676, 46.530712>,  <32.413063, 29.135859, 47.071194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411041, 28.610676, 46.530712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149426, 28.884081, 46.401073>,  <31.992456, 29.048124, 46.323288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149426, 28.884081, 46.401073>,  <32.411041, 28.610676, 46.530712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149426, 28.884081, 46.401073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426009, -0.021229, -0.904470,
		-0.625098, -0.729628, -0.277299,
		-0.654040, 0.683514, -0.324098,
		31.953213, 29.089134, 46.303844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280720, 28.321123, 45.896297>,  <32.411041, 28.610676, 46.530712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280720, 28.321123, 45.896297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150848, 28.699444, 45.899014>,  <32.072926, 28.926435, 45.900642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150848, 28.699444, 45.899014>,  <32.280720, 28.321123, 45.896297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150848, 28.699444, 45.899014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324377, 0.118094, -0.938527,
		-0.888463, -0.302512, -0.345138,
		-0.324675, 0.945801, 0.006794,
		32.053448, 28.983185, 45.901051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922302, 28.417105, 45.251720>,  <32.280720, 28.321123, 45.896297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922302, 28.417105, 45.251720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030361, 28.779675, 45.381592>,  <32.095196, 28.997215, 45.459515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030361, 28.779675, 45.381592>,  <31.922302, 28.417105, 45.251720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030361, 28.779675, 45.381592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173012, 0.286028, -0.942473,
		-0.947147, 0.310780, -0.079553,
		0.270147, 0.906424, 0.324680,
		32.111404, 29.051601, 45.478996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594877, 28.929985, 44.735790>,  <31.922302, 28.417105, 45.251720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594877, 28.929985, 44.735790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883989, 29.134302, 44.921986>,  <32.057457, 29.256893, 45.033703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883989, 29.134302, 44.921986>,  <31.594877, 28.929985, 44.735790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883989, 29.134302, 44.921986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286110, 0.391963, -0.874360,
		-0.629072, 0.765151, 0.137160,
		0.722779, 0.510792, 0.465490,
		32.100822, 29.287540, 45.061634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576891, 29.641117, 44.552338>,  <31.594877, 28.929985, 44.735790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576891, 29.641117, 44.552338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957539, 29.578327, 44.658005>,  <32.185928, 29.540653, 44.721405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957539, 29.578327, 44.658005>,  <31.576891, 29.641117, 44.552338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957539, 29.578327, 44.658005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301618, 0.312817, -0.900651,
		0.058743, 0.936752, 0.345029,
		0.951618, -0.156974, 0.264165,
		32.243023, 29.531235, 44.737255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845661, 30.287062, 44.297901>,  <31.576891, 29.641117, 44.552338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845661, 30.287062, 44.297901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165222, 30.052319, 44.350601>,  <32.356956, 29.911472, 44.382221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165222, 30.052319, 44.350601>,  <31.845661, 30.287062, 44.297901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165222, 30.052319, 44.350601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415784, 0.380580, -0.826004,
		0.434605, 0.714673, 0.548051,
		0.798900, -0.586856, 0.131748,
		32.404892, 29.876261, 44.390125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192398, 30.911446, 44.687191>,  <31.845661, 30.287062, 44.297901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192398, 30.911446, 44.687191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418251, 30.622475, 44.527546>,  <32.553761, 30.449093, 44.431759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418251, 30.622475, 44.527546>,  <32.192398, 30.911446, 44.687191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418251, 30.622475, 44.527546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021320, 0.496176, -0.867960,
		0.825069, 0.481567, 0.295558,
		0.564630, -0.722428, -0.399113,
		32.587639, 30.405746, 44.407810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593674, 31.255749, 44.293705>,  <32.192398, 30.911446, 44.687191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593674, 31.255749, 44.293705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641106, 30.883425, 44.155415>,  <32.669563, 30.660030, 44.072441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641106, 30.883425, 44.155415>,  <32.593674, 31.255749, 44.293705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641106, 30.883425, 44.155415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217918, 0.364092, -0.905510,
		0.968737, 0.032036, 0.246015,
		0.118581, -0.930812, -0.345728,
		32.676682, 30.604181, 44.051697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321159, 31.209570, 44.072121>,  <32.593674, 31.255749, 44.293705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321159, 31.209570, 44.072121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088009, 30.948664, 43.878292>,  <32.948120, 30.792120, 43.761997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088009, 30.948664, 43.878292>,  <33.321159, 31.209570, 44.072121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088009, 30.948664, 43.878292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361860, 0.325582, -0.873529,
		0.727539, -0.684505, 0.046254,
		-0.582876, -0.652264, -0.484569,
		32.913147, 30.752985, 43.732922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727154, 30.923588, 43.551285>,  <33.321159, 31.209570, 44.072121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727154, 30.923588, 43.551285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366131, 30.819027, 43.414429>,  <33.149517, 30.756290, 43.332314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366131, 30.819027, 43.414429>,  <33.727154, 30.923588, 43.551285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366131, 30.819027, 43.414429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291895, 0.212679, -0.932505,
		0.316527, -0.941507, -0.115652,
		-0.902557, -0.261404, -0.342140,
		33.095364, 30.740606, 43.311787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906212, 30.565445, 42.878487>,  <33.727154, 30.923588, 43.551285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906212, 30.565445, 42.878487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519661, 30.657949, 42.833527>,  <33.287731, 30.713451, 42.806549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519661, 30.657949, 42.833527>,  <33.906212, 30.565445, 42.878487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519661, 30.657949, 42.833527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177361, 0.283010, -0.942576,
		-0.186168, -0.930819, -0.314511,
		-0.966377, 0.231260, -0.112404,
		33.229748, 30.727327, 42.799805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771660, 30.340755, 42.148754>,  <33.906212, 30.565445, 42.878487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771660, 30.340755, 42.148754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495884, 30.598997, 42.280125>,  <33.330418, 30.753942, 42.358948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495884, 30.598997, 42.280125>,  <33.771660, 30.340755, 42.148754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495884, 30.598997, 42.280125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091718, 0.527577, -0.844542,
		-0.718509, -0.552141, -0.422948,
		-0.689444, 0.645602, 0.328427,
		33.289051, 30.792677, 42.378654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195358, 30.349720, 41.678143>,  <33.771660, 30.340755, 42.148754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195358, 30.349720, 41.678143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181385, 30.705343, 41.860725>,  <33.173000, 30.918718, 41.970276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181385, 30.705343, 41.860725>,  <33.195358, 30.349720, 41.678143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181385, 30.705343, 41.860725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018648, 0.456075, -0.889746,
		-0.999216, -0.039597, 0.000645,
		-0.034937, 0.889060, 0.456455,
		33.170902, 30.972061, 41.997662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662727, 30.792730, 41.512619>,  <33.195358, 30.349720, 41.678143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662727, 30.792730, 41.512619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871933, 31.096935, 41.666538>,  <32.997456, 31.279459, 41.758892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871933, 31.096935, 41.666538>,  <32.662727, 30.792730, 41.512619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871933, 31.096935, 41.666538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048573, 0.477337, -0.877377,
		-0.850936, 0.440194, 0.286596,
		0.523019, 0.760513, 0.384802,
		33.028839, 31.325089, 41.781979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351276, 31.447962, 41.278973>,  <32.662727, 30.792730, 41.512619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351276, 31.447962, 41.278973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724045, 31.554996, 41.376888>,  <32.947704, 31.619217, 41.435638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724045, 31.554996, 41.376888>,  <32.351276, 31.447962, 41.278973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724045, 31.554996, 41.376888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022084, 0.631851, -0.774775,
		-0.361989, 0.727435, 0.582926,
		0.931921, 0.267587, 0.244787,
		33.003620, 31.635273, 41.450325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388214, 32.073132, 40.941414>,  <32.351276, 31.447962, 41.278973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388214, 32.073132, 40.941414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767136, 32.002838, 41.048550>,  <32.994488, 31.960661, 41.112831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767136, 32.002838, 41.048550>,  <32.388214, 32.073132, 40.941414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767136, 32.002838, 41.048550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320248, 0.540043, -0.778328,
		-0.007862, 0.823086, 0.567863,
		0.947301, -0.175738, 0.267837,
		33.051327, 31.950117, 41.128902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710968, 32.694633, 41.101414>,  <32.388214, 32.073132, 40.941414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710968, 32.694633, 41.101414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978115, 32.422287, 40.981159>,  <33.138401, 32.258881, 40.909008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978115, 32.422287, 40.981159>,  <32.710968, 32.694633, 41.101414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978115, 32.422287, 40.981159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229039, 0.572334, -0.787385,
		0.708165, 0.457010, 0.538187,
		0.667865, -0.680864, -0.300634,
		33.178474, 32.218029, 40.890968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339249, 33.121216, 40.967560>,  <32.710968, 32.694633, 41.101414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339249, 33.121216, 40.967560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390415, 32.774612, 40.774563>,  <33.421116, 32.566650, 40.658764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390415, 32.774612, 40.774563>,  <33.339249, 33.121216, 40.967560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390415, 32.774612, 40.774563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266494, 0.498632, -0.824832,
		0.955311, -0.023072, 0.294702,
		0.127917, -0.866507, -0.482497,
		33.428791, 32.514660, 40.629814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820213, 33.241776, 40.415089>,  <33.339249, 33.121216, 40.967560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820213, 33.241776, 40.415089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660217, 32.896130, 40.292896>,  <33.564220, 32.688744, 40.219582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660217, 32.896130, 40.292896>,  <33.820213, 33.241776, 40.415089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660217, 32.896130, 40.292896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005784, 0.330916, -0.943643,
		0.916503, -0.379212, -0.127364,
		-0.399987, -0.864114, -0.305478,
		33.540222, 32.636894, 40.201252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271091, 33.043995, 39.838676>,  <33.820213, 33.241776, 40.415089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271091, 33.043995, 39.838676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923000, 32.858990, 39.770805>,  <33.714146, 32.747986, 39.730083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923000, 32.858990, 39.770805>,  <34.271091, 33.043995, 39.838676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923000, 32.858990, 39.770805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021732, 0.308044, -0.951124,
		0.492176, -0.831379, -0.258016,
		-0.870225, -0.462513, -0.169679,
		33.661934, 32.720238, 39.719902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306164, 32.777897, 39.181206>,  <34.271091, 33.043995, 39.838676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306164, 32.777897, 39.181206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913654, 32.784115, 39.257996>,  <33.678146, 32.787846, 39.304070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913654, 32.784115, 39.257996>,  <34.306164, 32.777897, 39.181206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913654, 32.784115, 39.257996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174727, 0.347535, -0.921243,
		-0.081040, -0.937538, -0.338312,
		-0.981276, 0.015545, 0.191977,
		33.619270, 32.788776, 39.315590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983387, 32.356361, 38.734093>,  <34.306164, 32.777897, 39.181206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983387, 32.356361, 38.734093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689159, 32.603508, 38.845222>,  <33.512623, 32.751797, 38.911900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689159, 32.603508, 38.845222>,  <33.983387, 32.356361, 38.734093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689159, 32.603508, 38.845222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063456, 0.345466, -0.936284,
		-0.674475, -0.706328, -0.214905,
		-0.735566, 0.617863, 0.277829,
		33.468491, 32.788868, 38.928570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454849, 32.290627, 38.266590>,  <33.983387, 32.356361, 38.734093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454849, 32.290627, 38.266590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390793, 32.658131, 38.410938>,  <33.352360, 32.878635, 38.497547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390793, 32.658131, 38.410938>,  <33.454849, 32.290627, 38.266590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390793, 32.658131, 38.410938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279980, 0.308296, -0.909156,
		-0.946555, -0.246628, 0.207866,
		-0.160140, 0.918765, 0.360870,
		33.342751, 32.933762, 38.519199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929699, 32.479031, 37.757175>,  <33.454849, 32.290627, 38.266590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929699, 32.479031, 37.757175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022781, 32.818829, 37.946575>,  <33.078632, 33.022709, 38.060215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022781, 32.818829, 37.946575>,  <32.929699, 32.479031, 37.757175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022781, 32.818829, 37.946575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200457, 0.518308, -0.831369,
		-0.951664, 0.098548, 0.290901,
		0.232706, 0.849497, 0.473501,
		33.092594, 33.073677, 38.088627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304337, 33.026562, 37.634064>,  <32.929699, 32.479031, 37.757175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304337, 33.026562, 37.634064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664200, 33.183952, 37.709732>,  <32.880119, 33.278385, 37.755135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664200, 33.183952, 37.709732>,  <32.304337, 33.026562, 37.634064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664200, 33.183952, 37.709732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034035, 0.495193, -0.868116,
		-0.435258, 0.774573, 0.458898,
		0.899662, 0.393473, 0.189174,
		32.934097, 33.301994, 37.766483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230564, 33.664993, 37.448051>,  <32.304337, 33.026562, 37.634064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230564, 33.664993, 37.448051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629608, 33.639767, 37.459339>,  <32.869034, 33.624630, 37.466114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629608, 33.639767, 37.459339>,  <32.230564, 33.664993, 37.448051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629608, 33.639767, 37.459339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054945, 0.476454, -0.877481,
		0.041897, 0.876934, 0.478781,
		0.997610, -0.063070, 0.028221,
		32.928890, 33.620846, 37.467804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432693, 34.386383, 37.250839>,  <32.230564, 33.664993, 37.448051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432693, 34.386383, 37.250839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739941, 34.141209, 37.176750>,  <32.924290, 33.994102, 37.132298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739941, 34.141209, 37.176750>,  <32.432693, 34.386383, 37.250839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739941, 34.141209, 37.176750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187183, 0.491578, -0.850479,
		0.612342, 0.618594, 0.492320,
		0.768115, -0.612938, -0.185223,
		32.970375, 33.957329, 37.121181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971569, 34.830246, 36.995026>,  <32.432693, 34.386383, 37.250839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971569, 34.830246, 36.995026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091496, 34.465031, 36.884411>,  <33.163452, 34.245903, 36.818043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091496, 34.465031, 36.884411>,  <32.971569, 34.830246, 36.995026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091496, 34.465031, 36.884411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347089, 0.374407, -0.859854,
		0.888616, 0.161816, 0.429158,
		0.299818, -0.913036, -0.276540,
		33.181442, 34.191120, 36.801449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654175, 34.929527, 36.642544>,  <32.971569, 34.830246, 36.995026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654175, 34.929527, 36.642544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543224, 34.575867, 36.492165>,  <33.476654, 34.363670, 36.401936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543224, 34.575867, 36.492165>,  <33.654175, 34.929527, 36.642544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543224, 34.575867, 36.492165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511356, 0.195414, -0.836856,
		0.813373, -0.424370, 0.397912,
		-0.277379, -0.884151, -0.375949,
		33.460011, 34.310623, 36.379379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149345, 34.870304, 36.128292>,  <33.654175, 34.929527, 36.642544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149345, 34.870304, 36.128292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888050, 34.583996, 36.029537>,  <33.731274, 34.412209, 35.970284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888050, 34.583996, 36.029537>,  <34.149345, 34.870304, 36.128292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888050, 34.583996, 36.029537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220828, 0.131784, -0.966369,
		0.724237, -0.685784, 0.071977,
		-0.653235, -0.715775, -0.246883,
		33.692081, 34.369263, 35.955471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516159, 34.468513, 35.627399>,  <34.149345, 34.870304, 36.128292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516159, 34.468513, 35.627399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117756, 34.436127, 35.612335>,  <33.878716, 34.416695, 35.603294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117756, 34.436127, 35.612335>,  <34.516159, 34.468513, 35.627399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117756, 34.436127, 35.612335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023442, 0.169929, -0.985177,
		0.086162, -0.982125, -0.167352,
		-0.996005, -0.080962, -0.037665,
		33.818954, 34.411839, 35.601036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960999, 33.954216, 35.684959>,  <34.516159, 34.468513, 35.627399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960999, 33.954216, 35.684959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227455, 33.751472, 35.466106>,  <35.387329, 33.629826, 35.334793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227455, 33.751472, 35.466106>,  <34.960999, 33.954216, 35.684959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227455, 33.751472, 35.466106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125140, -0.647235, 0.751949,
		-0.735254, -0.569371, -0.367720,
		0.666139, -0.506857, -0.547133,
		35.427296, 33.599415, 35.301968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797127, 33.184757, 35.579250>,  <34.960999, 33.954216, 35.684959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797127, 33.184757, 35.579250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188660, 33.265495, 35.565666>,  <35.423580, 33.313938, 35.557514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188660, 33.265495, 35.565666>,  <34.797127, 33.184757, 35.579250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188660, 33.265495, 35.565666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168076, -0.697912, 0.696182,
		0.116819, -0.687151, -0.717061,
		0.978828, 0.201848, -0.033965,
		35.482307, 33.326050, 35.555477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235016, 32.575562, 35.372440>,  <34.797127, 33.184757, 35.579250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235016, 32.575562, 35.372440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463100, 32.816807, 35.595551>,  <35.599953, 32.961555, 35.729416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463100, 32.816807, 35.595551>,  <35.235016, 32.575562, 35.372440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463100, 32.816807, 35.595551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126931, -0.735500, 0.665529,
		0.811631, -0.308695, -0.495946,
		0.570213, 0.603115, 0.557772,
		35.634163, 32.997742, 35.762882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763264, 32.192677, 35.532715>,  <35.235016, 32.575562, 35.372440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763264, 32.192677, 35.532715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769516, 32.480732, 35.810177>,  <35.773266, 32.653564, 35.976654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769516, 32.480732, 35.810177>,  <35.763264, 32.192677, 35.532715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769516, 32.480732, 35.810177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095610, -0.691637, 0.715889,
		0.995296, 0.055131, -0.079663,
		0.015630, 0.720138, 0.693654,
		35.774204, 32.696774, 36.018272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135803, 31.867018, 36.027466>,  <35.763264, 32.192677, 35.532715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135803, 31.867018, 36.027466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979397, 32.171097, 36.235004>,  <35.885551, 32.353546, 36.359528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979397, 32.171097, 36.235004>,  <36.135803, 31.867018, 36.027466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979397, 32.171097, 36.235004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234578, -0.462799, 0.854863,
		0.889988, 0.455977, 0.002637,
		-0.391018, 0.760198, 0.518848,
		35.862091, 32.399155, 36.390659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672482, 32.154083, 36.640293>,  <36.135803, 31.867018, 36.027466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672482, 32.154083, 36.640293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279106, 32.190361, 36.703053>,  <36.043079, 32.212128, 36.740707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279106, 32.190361, 36.703053>,  <36.672482, 32.154083, 36.640293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279106, 32.190361, 36.703053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090284, -0.505485, 0.858099,
		0.157131, 0.858056, 0.488927,
		-0.983442, 0.090692, 0.156896,
		35.984074, 32.217567, 36.750122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686089, 32.094933, 37.294205>,  <36.672482, 32.154083, 36.640293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686089, 32.094933, 37.294205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292973, 32.086685, 37.220772>,  <36.057102, 32.081738, 37.176712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292973, 32.086685, 37.220772>,  <36.686089, 32.094933, 37.294205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292973, 32.086685, 37.220772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164486, -0.354678, 0.920406,
		-0.084087, 0.934761, 0.345182,
		-0.982789, -0.020617, -0.183579,
		35.998135, 32.080502, 37.165699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372829, 32.376526, 37.939194>,  <36.686089, 32.094933, 37.294205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372829, 32.376526, 37.939194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094715, 32.146023, 37.767372>,  <35.927849, 32.007721, 37.664280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094715, 32.146023, 37.767372>,  <36.372829, 32.376526, 37.939194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094715, 32.146023, 37.767372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144679, -0.473200, 0.868993,
		-0.704024, 0.666343, 0.245636,
		-0.695283, -0.576254, -0.429550,
		35.886131, 31.973146, 37.638508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824017, 32.294064, 38.478722>,  <36.372829, 32.376526, 37.939194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824017, 32.294064, 38.478722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771358, 31.996454, 38.216702>,  <35.739761, 31.817888, 38.059490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771358, 31.996454, 38.216702>,  <35.824017, 32.294064, 38.478722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771358, 31.996454, 38.216702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220632, -0.622236, 0.751096,
		-0.966432, 0.243406, -0.082239,
		-0.131649, -0.744027, -0.655051,
		35.731865, 31.773247, 38.020187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264465, 32.129848, 38.702080>,  <35.824017, 32.294064, 38.478722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264465, 32.129848, 38.702080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410370, 31.823786, 38.489857>,  <35.497913, 31.640148, 38.362522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410370, 31.823786, 38.489857>,  <35.264465, 32.129848, 38.702080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410370, 31.823786, 38.489857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194539, -0.619864, 0.760213,
		-0.910553, -0.174080, -0.374952,
		0.364758, -0.765157, -0.530554,
		35.519798, 31.594238, 38.330692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874363, 31.686796, 38.864193>,  <35.264465, 32.129848, 38.702080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874363, 31.686796, 38.864193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173729, 31.466908, 38.715771>,  <35.353348, 31.334974, 38.626717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173729, 31.466908, 38.715771>,  <34.874363, 31.686796, 38.864193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173729, 31.466908, 38.715771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074812, -0.625865, 0.776335,
		-0.658998, -0.553261, -0.509533,
		0.748415, -0.549722, -0.371053,
		35.398254, 31.301992, 38.604454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647030, 31.031210, 38.825542>,  <34.874363, 31.686796, 38.864193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647030, 31.031210, 38.825542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041405, 30.977974, 38.865963>,  <35.278030, 30.946033, 38.890217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041405, 30.977974, 38.865963>,  <34.647030, 31.031210, 38.825542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041405, 30.977974, 38.865963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164216, -0.659744, 0.733329,
		-0.030930, -0.739612, -0.672323,
		0.985939, -0.133088, 0.101050,
		35.337185, 30.938047, 38.896278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787659, 30.274897, 38.763538>,  <34.647030, 31.031210, 38.825542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787659, 30.274897, 38.763538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101486, 30.443933, 38.945030>,  <35.289783, 30.545355, 39.053925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101486, 30.443933, 38.945030>,  <34.787659, 30.274897, 38.763538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101486, 30.443933, 38.945030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097299, -0.638790, 0.763204,
		0.612360, -0.642933, -0.460057,
		0.784568, 0.422592, 0.453727,
		35.336857, 30.570711, 39.081150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045712, 29.708244, 39.073097>,  <34.787659, 30.274897, 38.763538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045712, 29.708244, 39.073097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266441, 29.991520, 39.249256>,  <35.398880, 30.161486, 39.354954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266441, 29.991520, 39.249256>,  <35.045712, 29.708244, 39.073097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266441, 29.991520, 39.249256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010493, -0.533938, 0.845458,
		0.833892, -0.461927, -0.302073,
		0.551828, 0.708191, 0.440400,
		35.431992, 30.203978, 39.381374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506401, 29.337141, 39.546810>,  <35.045712, 29.708244, 39.073097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506401, 29.337141, 39.546810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523460, 29.715258, 39.676182>,  <35.533695, 29.942127, 39.753803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523460, 29.715258, 39.676182>,  <35.506401, 29.337141, 39.546810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523460, 29.715258, 39.676182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281513, -0.321977, 0.903925,
		0.958609, 0.052495, -0.279844,
		0.042652, 0.945291, 0.323429,
		35.536255, 29.998844, 39.773209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100475, 29.411869, 40.010777>,  <35.506401, 29.337141, 39.546810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100475, 29.411869, 40.010777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869289, 29.724573, 40.104416>,  <35.730576, 29.912195, 40.160599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869289, 29.724573, 40.104416>,  <36.100475, 29.411869, 40.010777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869289, 29.724573, 40.104416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110919, -0.208952, 0.971615,
		0.808486, 0.587530, 0.034056,
		-0.577969, 0.781760, 0.234103,
		35.695900, 29.959101, 40.174648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486336, 29.702156, 40.554867>,  <36.100475, 29.411869, 40.010777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486336, 29.702156, 40.554867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099239, 29.801575, 40.571407>,  <35.866982, 29.861225, 40.581329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099239, 29.801575, 40.571407>,  <36.486336, 29.702156, 40.554867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099239, 29.801575, 40.571407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081032, -0.462392, 0.882965,
		0.238576, 0.851128, 0.467614,
		-0.967737, 0.248546, 0.041347,
		35.808918, 29.876139, 40.583813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242195, 29.965948, 41.196419>,  <36.486336, 29.702156, 40.554867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242195, 29.965948, 41.196419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908932, 29.810577, 41.038952>,  <35.708973, 29.717356, 40.944473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908932, 29.810577, 41.038952>,  <36.242195, 29.965948, 41.196419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908932, 29.810577, 41.038952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180367, -0.482056, 0.857374,
		-0.522795, 0.785332, 0.331570,
		-0.833158, -0.388427, -0.393665,
		35.658985, 29.694050, 40.920853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932381, 29.845446, 41.765266>,  <36.242195, 29.965948, 41.196419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932381, 29.845446, 41.765266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703548, 29.634644, 41.513874>,  <35.566250, 29.508162, 41.363037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703548, 29.634644, 41.513874>,  <35.932381, 29.845446, 41.765266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703548, 29.634644, 41.513874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456668, -0.431841, 0.777797,
		-0.681307, 0.731969, 0.006381,
		-0.572079, -0.527005, -0.628484,
		35.531925, 29.476542, 41.325329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300892, 29.982197, 42.012123>,  <35.932381, 29.845446, 41.765266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300892, 29.982197, 42.012123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305420, 29.641279, 41.802948>,  <35.308136, 29.436728, 41.677444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305420, 29.641279, 41.802948>,  <35.300892, 29.982197, 42.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305420, 29.641279, 41.802948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340154, -0.495063, 0.799505,
		-0.940302, 0.168829, -0.295515,
		0.011319, -0.852296, -0.522937,
		35.308815, 29.385590, 41.646069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723679, 29.684690, 42.103039>,  <35.300892, 29.982197, 42.012123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723679, 29.684690, 42.103039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966679, 29.380978, 42.009708>,  <35.112476, 29.198750, 41.953709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966679, 29.380978, 42.009708>,  <34.723679, 29.684690, 42.103039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966679, 29.380978, 42.009708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311360, -0.497858, 0.809440,
		-0.730755, -0.419083, -0.538856,
		0.607496, -0.759281, -0.233327,
		35.148926, 29.153193, 41.939709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247517, 29.202934, 42.136326>,  <34.723679, 29.684690, 42.103039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247517, 29.202934, 42.136326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619022, 29.057913, 42.167198>,  <34.841927, 28.970900, 42.185722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619022, 29.057913, 42.167198>,  <34.247517, 29.202934, 42.136326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619022, 29.057913, 42.167198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231093, -0.403531, 0.885302,
		-0.289821, -0.840071, -0.458567,
		0.928763, -0.362550, 0.077183,
		34.897652, 28.949148, 42.190353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137440, 28.547447, 42.317722>,  <34.247517, 29.202934, 42.136326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137440, 28.547447, 42.317722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500420, 28.663969, 42.438831>,  <34.718208, 28.733883, 42.511497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500420, 28.663969, 42.438831>,  <34.137440, 28.547447, 42.317722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500420, 28.663969, 42.438831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228151, -0.263467, 0.937300,
		0.352811, -0.919634, -0.172622,
		0.907454, 0.291306, 0.302770,
		34.772655, 28.751360, 42.529663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214687, 28.138762, 42.927849>,  <34.137440, 28.547447, 42.317722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214687, 28.138762, 42.927849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508125, 28.410513, 42.934608>,  <34.684189, 28.573565, 42.938663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508125, 28.410513, 42.934608>,  <34.214687, 28.138762, 42.927849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508125, 28.410513, 42.934608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044316, 0.023007, 0.998753,
		0.678144, -0.733426, 0.046985,
		0.733592, 0.679380, 0.016901,
		34.728203, 28.614326, 42.939678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648632, 27.838961, 43.508377>,  <34.214687, 28.138762, 42.927849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648632, 27.838961, 43.508377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776146, 28.210690, 43.433823>,  <34.852654, 28.433727, 43.389091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776146, 28.210690, 43.433823>,  <34.648632, 27.838961, 43.508377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776146, 28.210690, 43.433823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082936, 0.223238, 0.971229,
		0.944192, -0.294154, 0.148239,
		0.318784, 0.929321, -0.186384,
		34.871780, 28.489487, 43.377907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371780, 27.903078, 43.853065>,  <34.648632, 27.838961, 43.508377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371780, 27.903078, 43.853065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197239, 28.260828, 43.813698>,  <35.092514, 28.475479, 43.790077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197239, 28.260828, 43.813698>,  <35.371780, 27.903078, 43.853065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197239, 28.260828, 43.813698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237565, 0.220019, 0.946126,
		0.867847, 0.389464, -0.308479,
		-0.436353, 0.894377, -0.098420,
		35.066334, 28.529140, 43.784172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889107, 28.468250, 44.066223>,  <35.371780, 27.903078, 43.853065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889107, 28.468250, 44.066223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527340, 28.636040, 44.097378>,  <35.310280, 28.736713, 44.116070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527340, 28.636040, 44.097378>,  <35.889107, 28.468250, 44.066223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527340, 28.636040, 44.097378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134850, 0.107871, 0.984977,
		0.404770, 0.901336, -0.154127,
		-0.904420, 0.419474, 0.077882,
		35.256012, 28.761881, 44.120743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023174, 29.069405, 44.447689>,  <35.889107, 28.468250, 44.066223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023174, 29.069405, 44.447689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623940, 29.051912, 44.465176>,  <35.384399, 29.041416, 44.475666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623940, 29.051912, 44.465176>,  <36.023174, 29.069405, 44.447689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623940, 29.051912, 44.465176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029464, 0.285240, 0.958003,
		-0.054366, 0.957458, -0.283405,
		-0.998086, -0.043733, 0.043718,
		35.324512, 29.038792, 44.478291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797607, 29.694498, 44.824219>,  <36.023174, 29.069405, 44.447689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797607, 29.694498, 44.824219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474674, 29.463718, 44.873772>,  <35.280914, 29.325251, 44.903503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474674, 29.463718, 44.873772>,  <35.797607, 29.694498, 44.824219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474674, 29.463718, 44.873772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041540, 0.153850, 0.987221,
		-0.588636, 0.802159, -0.100242,
		-0.807330, -0.576950, 0.123883,
		35.232475, 29.290634, 44.910938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221008, 30.114836, 45.173977>,  <35.797607, 29.694498, 44.824219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221008, 30.114836, 45.173977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163780, 29.725056, 45.243229>,  <35.129444, 29.491188, 45.284782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163780, 29.725056, 45.243229>,  <35.221008, 30.114836, 45.173977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163780, 29.725056, 45.243229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169590, 0.196481, 0.965730,
		-0.975075, 0.108802, -0.193367,
		-0.143067, -0.974452, 0.173132,
		35.120861, 29.432720, 45.295170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564087, 30.101034, 45.547104>,  <35.221008, 30.114836, 45.173977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564087, 30.101034, 45.547104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715477, 29.739914, 45.628792>,  <34.806309, 29.523241, 45.677807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715477, 29.739914, 45.628792>,  <34.564087, 30.101034, 45.547104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715477, 29.739914, 45.628792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391912, 0.043584, 0.918970,
		-0.838549, -0.427841, -0.337324,
		0.378471, -0.902803, 0.204223,
		34.829018, 29.469072, 45.690060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960583, 29.637394, 45.809345>,  <34.564087, 30.101034, 45.547104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960583, 29.637394, 45.809345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308010, 29.497210, 45.949493>,  <34.516468, 29.413099, 46.033581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308010, 29.497210, 45.949493>,  <33.960583, 29.637394, 45.809345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308010, 29.497210, 45.949493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361397, 0.035803, 0.931724,
		-0.339079, -0.935892, -0.095559,
		0.868572, -0.350463, 0.350369,
		34.568581, 29.392071, 46.054604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742580, 29.100803, 46.362831>,  <33.960583, 29.637394, 45.809345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742580, 29.100803, 46.362831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134075, 29.145855, 46.431408>,  <34.368973, 29.172886, 46.472553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134075, 29.145855, 46.431408>,  <33.742580, 29.100803, 46.362831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134075, 29.145855, 46.431408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157350, -0.123978, 0.979730,
		0.131602, -0.985872, -0.103619,
		0.978735, 0.112630, 0.171443,
		34.427696, 29.179644, 46.482841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945011, 28.505844, 46.785290>,  <33.742580, 29.100803, 46.362831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945011, 28.505844, 46.785290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220940, 28.787872, 46.851044>,  <34.386497, 28.957090, 46.890495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220940, 28.787872, 46.851044>,  <33.945011, 28.505844, 46.785290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220940, 28.787872, 46.851044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131249, -0.101503, 0.986139,
		0.711984, -0.701834, 0.022521,
		0.689820, 0.705072, 0.164384,
		34.427887, 28.999393, 46.900360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313931, 28.285213, 47.321850>,  <33.945011, 28.505844, 46.785290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313931, 28.285213, 47.321850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402374, 28.675280, 47.326973>,  <34.455441, 28.909319, 47.330048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402374, 28.675280, 47.326973>,  <34.313931, 28.285213, 47.321850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402374, 28.675280, 47.326973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209633, 0.034699, 0.977164,
		0.952453, -0.218741, 0.212099,
		0.221106, 0.975166, 0.012806,
		34.468704, 28.967829, 47.330814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900536, 28.423986, 47.821884>,  <34.313931, 28.285213, 47.321850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900536, 28.423986, 47.821884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682499, 28.753494, 47.759552>,  <34.551678, 28.951199, 47.722153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682499, 28.753494, 47.759552>,  <34.900536, 28.423986, 47.821884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682499, 28.753494, 47.759552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153799, 0.084469, 0.984485,
		0.824151, 0.560598, 0.080652,
		-0.545088, 0.823768, -0.155834,
		34.518974, 29.000626, 47.712803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182083, 28.837137, 48.327866>,  <34.900536, 28.423986, 47.821884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182083, 28.837137, 48.327866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817776, 28.970034, 48.229786>,  <34.599194, 29.049772, 48.170940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817776, 28.970034, 48.229786>,  <35.182083, 28.837137, 48.327866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817776, 28.970034, 48.229786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215962, 0.122850, 0.968643,
		0.351945, 0.935159, -0.040136,
		-0.910766, 0.332241, -0.245195,
		34.544544, 29.069706, 48.156227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040176, 29.306675, 48.842781>,  <35.182083, 28.837137, 48.327866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040176, 29.306675, 48.842781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681408, 29.225889, 48.685429>,  <34.466148, 29.177418, 48.591019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681408, 29.225889, 48.685429>,  <35.040176, 29.306675, 48.842781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681408, 29.225889, 48.685429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423162, 0.133831, 0.896116,
		-0.128339, 0.970206, -0.205500,
		-0.896919, -0.201966, -0.393378,
		34.412331, 29.165298, 48.567413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037460, 29.355963, 49.515663>,  <35.040176, 29.306675, 48.842781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037460, 29.355963, 49.515663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648754, 29.286467, 49.451797>,  <34.415531, 29.244768, 49.413479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648754, 29.286467, 49.451797>,  <35.037460, 29.355963, 49.515663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648754, 29.286467, 49.451797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029404, 0.760533, -0.648633,
		0.234123, -0.625623, -0.744166,
		-0.971762, -0.173741, -0.159662,
		34.357227, 29.234344, 49.403900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951324, 30.042236, 49.788048>,  <35.037460, 29.355963, 49.515663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951324, 30.042236, 49.788048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274815, 30.261395, 49.873623>,  <35.468910, 30.392889, 49.924969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274815, 30.261395, 49.873623>,  <34.951324, 30.042236, 49.788048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274815, 30.261395, 49.873623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080226, 0.463075, -0.882681,
		-0.582684, 0.696687, 0.418457,
		0.808729, 0.547895, 0.213934,
		35.517433, 30.425762, 49.937801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813580, 30.683929, 49.578728>,  <34.951324, 30.042236, 49.788048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813580, 30.683929, 49.578728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211426, 30.716085, 49.604858>,  <35.450134, 30.735380, 49.620537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211426, 30.716085, 49.604858>,  <34.813580, 30.683929, 49.578728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211426, 30.716085, 49.604858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003071, 0.607509, -0.794307,
		-0.103545, 0.790234, 0.603994,
		0.994620, 0.080391, 0.065331,
		35.509811, 30.740202, 49.624458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917831, 31.365120, 49.529869>,  <34.813580, 30.683929, 49.578728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917831, 31.365120, 49.529869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261143, 31.178148, 49.445133>,  <35.467129, 31.065966, 49.394291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261143, 31.178148, 49.445133>,  <34.917831, 31.365120, 49.529869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261143, 31.178148, 49.445133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133927, 0.602485, -0.786813,
		0.495409, 0.646931, 0.579699,
		0.858274, -0.467431, -0.211835,
		35.518623, 31.037918, 49.381584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429630, 31.781902, 49.474644>,  <34.917831, 31.365120, 49.529869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429630, 31.781902, 49.474644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555485, 31.463724, 49.267464>,  <35.630997, 31.272818, 49.143154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555485, 31.463724, 49.267464>,  <35.429630, 31.781902, 49.474644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555485, 31.463724, 49.267464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383112, 0.605660, -0.697425,
		0.868466, 0.020999, 0.495304,
		0.314632, -0.795446, -0.517950,
		35.649876, 31.225090, 49.112080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053471, 32.083424, 49.118607>,  <35.429630, 31.781902, 49.474644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053471, 32.083424, 49.118607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960232, 31.747133, 48.923119>,  <35.904289, 31.545359, 48.805824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960232, 31.747133, 48.923119>,  <36.053471, 32.083424, 49.118607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960232, 31.747133, 48.923119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067760, 0.487299, -0.870602,
		0.970090, -0.236048, -0.056620,
		-0.233095, -0.840726, -0.488719,
		35.890305, 31.494915, 48.776505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522057, 32.062157, 48.568287>,  <36.053471, 32.083424, 49.118607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522057, 32.062157, 48.568287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214199, 31.830931, 48.459854>,  <36.029484, 31.692194, 48.394794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214199, 31.830931, 48.459854>,  <36.522057, 32.062157, 48.568287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214199, 31.830931, 48.459854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095461, 0.315621, -0.944071,
		0.631297, -0.752477, -0.187733,
		-0.769644, -0.578068, -0.271083,
		35.983307, 31.657511, 48.378529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870300, 31.611338, 48.073421>,  <36.522057, 32.062157, 48.568287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870300, 31.611338, 48.073421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472973, 31.641369, 48.038353>,  <36.234577, 31.659388, 48.017311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472973, 31.641369, 48.038353>,  <36.870300, 31.611338, 48.073421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472973, 31.641369, 48.038353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103063, 0.234865, -0.966549,
		-0.051975, -0.969124, -0.241033,
		-0.993316, 0.075078, -0.087674,
		36.174976, 31.663893, 48.012051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759106, 31.366364, 47.454437>,  <36.870300, 31.611338, 48.073421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759106, 31.366364, 47.454437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435760, 31.585592, 47.540386>,  <36.241753, 31.717131, 47.591957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435760, 31.585592, 47.540386>,  <36.759106, 31.366364, 47.454437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435760, 31.585592, 47.540386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072434, 0.269634, -0.960235,
		-0.584217, -0.791779, -0.178262,
		-0.808359, 0.548073, 0.214877,
		36.193253, 31.750013, 47.604851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233585, 31.154715, 47.011391>,  <36.759106, 31.366364, 47.454437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233585, 31.154715, 47.011391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144199, 31.526169, 47.129848>,  <36.090569, 31.749043, 47.200924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144199, 31.526169, 47.129848>,  <36.233585, 31.154715, 47.011391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144199, 31.526169, 47.129848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060085, 0.316370, -0.946731,
		-0.972859, -0.193764, -0.126494,
		-0.223461, 0.928636, 0.296141,
		36.077160, 31.804760, 47.218689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608208, 31.392199, 46.604248>,  <36.233585, 31.154715, 47.011391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608208, 31.392199, 46.604248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793129, 31.722185, 46.734295>,  <35.904083, 31.920177, 46.812325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793129, 31.722185, 46.734295>,  <35.608208, 31.392199, 46.604248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793129, 31.722185, 46.734295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033386, 0.350197, -0.936081,
		-0.886092, 0.443610, 0.134356,
		0.462306, 0.824968, 0.325117,
		35.931820, 31.969675, 46.831829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386864, 31.785580, 46.185352>,  <35.608208, 31.392199, 46.604248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386864, 31.785580, 46.185352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676037, 32.008423, 46.348812>,  <35.849541, 32.142128, 46.446888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676037, 32.008423, 46.348812>,  <35.386864, 31.785580, 46.185352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676037, 32.008423, 46.348812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118470, 0.482749, -0.867708,
		-0.680683, 0.675710, 0.282996,
		0.722935, 0.557108, 0.408651,
		35.892918, 32.175556, 46.471409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257919, 32.406384, 45.785397>,  <35.386864, 31.785580, 46.185352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257919, 32.406384, 45.785397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630600, 32.424244, 45.929588>,  <35.854206, 32.434959, 46.016102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630600, 32.424244, 45.929588>,  <35.257919, 32.406384, 45.785397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630600, 32.424244, 45.929588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337549, 0.260136, -0.904649,
		-0.134166, 0.964539, 0.227296,
		0.931697, 0.044650, 0.360481,
		35.910110, 32.437637, 46.037731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489197, 33.038799, 45.558319>,  <35.257919, 32.406384, 45.785397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489197, 33.038799, 45.558319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835804, 32.846901, 45.613441>,  <36.043770, 32.731762, 45.646515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835804, 32.846901, 45.613441>,  <35.489197, 33.038799, 45.558319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835804, 32.846901, 45.613441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340087, 0.365362, -0.866517,
		0.365362, 0.797717, 0.479748,
		0.866517, -0.479748, 0.137803,
		36.095760, 32.702976, 45.654781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026802, 33.493771, 45.327354>,  <35.489197, 33.038799, 45.558319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026802, 33.493771, 45.327354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188877, 33.128330, 45.340908>,  <36.286121, 32.909065, 45.349041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188877, 33.128330, 45.340908>,  <36.026802, 33.493771, 45.327354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188877, 33.128330, 45.340908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523042, 0.201254, -0.828205,
		0.749833, 0.353302, 0.559400,
		0.405188, -0.913605, 0.033885,
		36.310432, 32.854248, 45.351074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685684, 33.645779, 45.057423>,  <36.026802, 33.493771, 45.327354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685684, 33.645779, 45.057423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595692, 33.256523, 45.037884>,  <36.541695, 33.022968, 45.026161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595692, 33.256523, 45.037884>,  <36.685684, 33.645779, 45.057423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595692, 33.256523, 45.037884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388007, -0.043492, -0.920630,
		0.893776, -0.226077, 0.387369,
		-0.224981, -0.973138, -0.048848,
		36.528198, 32.964581, 45.023228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329353, 33.298801, 44.745621>,  <36.685684, 33.645779, 45.057423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329353, 33.298801, 44.745621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012363, 33.064644, 44.677162>,  <36.822170, 32.924149, 44.636086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012363, 33.064644, 44.677162>,  <37.329353, 33.298801, 44.745621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012363, 33.064644, 44.677162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323678, -0.165839, -0.931520,
		0.516926, -0.793605, 0.320903,
		-0.792477, -0.585396, -0.171146,
		36.774620, 32.889027, 44.625820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573238, 32.801430, 44.182674>,  <37.329353, 33.298801, 44.745621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573238, 32.801430, 44.182674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175999, 32.754585, 44.185246>,  <36.937656, 32.726479, 44.186787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175999, 32.754585, 44.185246>,  <37.573238, 32.801430, 44.182674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175999, 32.754585, 44.185246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033739, -0.337706, -0.940647,
		0.112329, -0.933938, 0.339326,
		-0.993098, -0.117111, 0.006424,
		36.878071, 32.719452, 44.187172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346100, 32.136841, 44.000252>,  <37.573238, 32.801430, 44.182674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346100, 32.136841, 44.000252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013145, 32.343243, 43.919388>,  <36.813374, 32.467083, 43.870869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013145, 32.343243, 43.919388>,  <37.346100, 32.136841, 44.000252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013145, 32.343243, 43.919388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024113, -0.330722, -0.943420,
		-0.553667, -0.790168, 0.262847,
		-0.832389, 0.516002, -0.202163,
		36.763428, 32.498043, 43.858738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942757, 31.585119, 43.673683>,  <37.346100, 32.136841, 44.000252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942757, 31.585119, 43.673683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820156, 31.954000, 43.579369>,  <36.746593, 32.175331, 43.522781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820156, 31.954000, 43.579369>,  <36.942757, 31.585119, 43.673683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820156, 31.954000, 43.579369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044449, -0.233569, -0.971324,
		-0.950831, -0.308194, 0.030599,
		-0.306503, 0.922205, -0.235783,
		36.728207, 32.230663, 43.508633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488312, 31.419704, 43.220673>,  <36.942757, 31.585119, 43.673683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488312, 31.419704, 43.220673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520935, 31.812237, 43.150997>,  <36.540508, 32.047756, 43.109192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520935, 31.812237, 43.150997>,  <36.488312, 31.419704, 43.220673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520935, 31.812237, 43.150997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140567, -0.161700, -0.976777,
		-0.986706, 0.104149, 0.124755,
		0.081557, 0.981329, -0.174190,
		36.545403, 32.106636, 43.098740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923862, 31.619131, 42.826023>,  <36.488312, 31.419704, 43.220673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923862, 31.619131, 42.826023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225418, 31.875156, 42.766735>,  <36.406353, 32.028770, 42.731163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225418, 31.875156, 42.766735>,  <35.923862, 31.619131, 42.826023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225418, 31.875156, 42.766735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204117, 0.013743, -0.978850,
		-0.624491, 0.768198, 0.141008,
		0.753888, 0.640065, -0.148220,
		36.451584, 32.067177, 42.722271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684826, 32.080853, 42.273430>,  <35.923862, 31.619131, 42.826023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684826, 32.080853, 42.273430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080208, 32.137444, 42.295147>,  <36.317436, 32.171398, 42.308178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080208, 32.137444, 42.295147>,  <35.684826, 32.080853, 42.273430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080208, 32.137444, 42.295147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032737, 0.150449, -0.988076,
		-0.147960, 0.978442, 0.144080,
		0.988451, 0.141479, 0.054291,
		36.376743, 32.179886, 42.311436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831234, 32.650455, 41.769569>,  <35.684826, 32.080853, 42.273430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831234, 32.650455, 41.769569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175190, 32.457680, 41.836887>,  <36.381565, 32.342014, 41.877277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175190, 32.457680, 41.836887>,  <35.831234, 32.650455, 41.769569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175190, 32.457680, 41.836887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252126, 0.114296, -0.960921,
		0.443870, 0.868718, 0.219792,
		0.859891, -0.481939, 0.168294,
		36.433159, 32.313099, 41.887375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233280, 32.865311, 41.180195>,  <35.831234, 32.650455, 41.769569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233280, 32.865311, 41.180195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457985, 32.565884, 41.321087>,  <36.592808, 32.386227, 41.405624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457985, 32.565884, 41.321087>,  <36.233280, 32.865311, 41.180195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457985, 32.565884, 41.321087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443178, -0.087226, -0.892180,
		0.698580, 0.657298, 0.282747,
		0.561765, -0.748566, 0.352234,
		36.626514, 32.341312, 41.426758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024693, 33.068226, 41.106346>,  <36.233280, 32.865311, 41.180195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024693, 33.068226, 41.106346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984867, 32.670467, 41.120567>,  <36.960972, 32.431812, 41.129101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984867, 32.670467, 41.120567>,  <37.024693, 33.068226, 41.106346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984867, 32.670467, 41.120567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432465, -0.075424, -0.898490,
		0.896136, -0.074085, 0.437551,
		-0.099566, -0.994396, 0.035552,
		36.954998, 32.372150, 41.131233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660931, 32.783558, 41.079178>,  <37.024693, 33.068226, 41.106346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660931, 32.783558, 41.079178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412037, 32.500286, 40.945724>,  <37.262703, 32.330322, 40.865650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412037, 32.500286, 40.945724>,  <37.660931, 32.783558, 41.079178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412037, 32.500286, 40.945724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496250, -0.027210, -0.867753,
		0.605445, -0.705510, 0.368364,
		-0.622232, -0.708177, -0.333636,
		37.225368, 32.287834, 40.845634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027569, 32.159428, 40.943237>,  <37.660931, 32.783558, 41.079178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027569, 32.159428, 40.943237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720806, 32.097603, 40.694088>,  <37.536747, 32.060509, 40.544598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720806, 32.097603, 40.694088>,  <38.027569, 32.159428, 40.943237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720806, 32.097603, 40.694088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640174, -0.116039, -0.759416,
		0.045099, -0.981145, 0.187937,
		-0.766905, -0.154561, -0.622870,
		37.490734, 32.051235, 40.507229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325344, 31.841063, 40.401901>,  <38.027569, 32.159428, 40.943237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325344, 31.841063, 40.401901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970795, 31.946909, 40.249947>,  <37.758064, 32.010418, 40.158772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970795, 31.946909, 40.249947>,  <38.325344, 31.841063, 40.401901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970795, 31.946909, 40.249947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450414, 0.303106, -0.839794,
		-0.107075, -0.915481, -0.387852,
		-0.886376, 0.264615, -0.379890,
		37.704884, 32.026295, 40.135979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196476, 31.576641, 39.807026>,  <38.325344, 31.841063, 40.401901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196476, 31.576641, 39.807026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959148, 31.897587, 39.781155>,  <37.816750, 32.090153, 39.765633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959148, 31.897587, 39.781155>,  <38.196476, 31.576641, 39.807026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959148, 31.897587, 39.781155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356698, 0.190032, -0.914688,
		-0.721620, -0.565776, -0.398952,
		-0.593322, 0.802362, -0.064680,
		37.781151, 32.138294, 39.761749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963875, 31.552376, 39.090046>,  <38.196476, 31.576641, 39.807026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963875, 31.552376, 39.090046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908054, 31.918404, 39.241398>,  <37.874561, 32.138020, 39.332211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908054, 31.918404, 39.241398>,  <37.963875, 31.552376, 39.090046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908054, 31.918404, 39.241398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466464, 0.397820, -0.790032,
		-0.873462, 0.066251, -0.482363,
		-0.139553, 0.915069, 0.378385,
		37.866188, 32.192924, 39.354912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875107, 31.896358, 38.511436>,  <37.963875, 31.552376, 39.090046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875107, 31.896358, 38.511436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947098, 32.173370, 38.790867>,  <37.990292, 32.339577, 38.958527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947098, 32.173370, 38.790867>,  <37.875107, 31.896358, 38.511436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947098, 32.173370, 38.790867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441312, 0.577846, -0.686540,
		-0.879121, 0.431850, -0.201625,
		0.179974, 0.692531, 0.698577,
		38.001091, 32.381130, 39.000439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802048, 32.486954, 38.210751>,  <37.875107, 31.896358, 38.511436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802048, 32.486954, 38.210751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004398, 32.616879, 38.530396>,  <38.125809, 32.694832, 38.722183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004398, 32.616879, 38.530396>,  <37.802048, 32.486954, 38.210751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004398, 32.616879, 38.530396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418343, 0.717777, -0.556584,
		-0.754370, 0.615868, 0.227226,
		0.505880, 0.324812, 0.799114,
		38.156162, 32.714321, 38.770130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694725, 33.264660, 38.327206>,  <37.802048, 32.486954, 38.210751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694725, 33.264660, 38.327206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042648, 33.154499, 38.490955>,  <38.251404, 33.088402, 38.589203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042648, 33.154499, 38.490955>,  <37.694725, 33.264660, 38.327206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042648, 33.154499, 38.490955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441015, 0.805995, -0.394813,
		-0.221217, 0.523950, 0.822520,
		0.869809, -0.275404, 0.409370,
		38.303593, 33.071877, 38.613766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982750, 33.886429, 38.528286>,  <37.694725, 33.264660, 38.327206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982750, 33.886429, 38.528286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300022, 33.642998, 38.537220>,  <38.490387, 33.496941, 38.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300022, 33.642998, 38.537220>,  <37.982750, 33.886429, 38.528286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300022, 33.642998, 38.537220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539260, 0.684858, -0.490070,
		0.282946, 0.400760, 0.871397,
		0.793183, -0.608573, 0.022336,
		38.537975, 33.460426, 38.543922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516548, 34.314354, 38.713612>,  <37.982750, 33.886429, 38.528286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516548, 34.314354, 38.713612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695305, 33.992592, 38.557041>,  <38.802559, 33.799534, 38.463100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695305, 33.992592, 38.557041>,  <38.516548, 34.314354, 38.713612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695305, 33.992592, 38.557041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651730, 0.592482, -0.473511,
		0.612808, -0.043494, 0.789034,
		0.446894, -0.804409, -0.391424,
		38.829372, 33.751270, 38.439613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206848, 34.504929, 38.680729>,  <38.516548, 34.314354, 38.713612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206848, 34.504929, 38.680729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192524, 34.196239, 38.426746>,  <39.183929, 34.011028, 38.274357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192524, 34.196239, 38.426746>,  <39.206848, 34.504929, 38.680729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192524, 34.196239, 38.426746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578782, 0.501941, -0.642702,
		0.814696, -0.390517, 0.428681,
		-0.035813, -0.771720, -0.634954,
		39.181782, 33.964722, 38.236259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937527, 34.470436, 38.415989>,  <39.206848, 34.504929, 38.680729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937527, 34.470436, 38.415989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723709, 34.255497, 38.155064>,  <39.595417, 34.126534, 37.998508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723709, 34.255497, 38.155064>,  <39.937527, 34.470436, 38.415989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723709, 34.255497, 38.155064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565501, 0.346184, -0.748576,
		0.628070, -0.769031, 0.118823,
		-0.534544, -0.537352, -0.652316,
		39.563347, 34.094292, 37.959370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392578, 34.153969, 38.082439>,  <39.937527, 34.470436, 38.415989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392578, 34.153969, 38.082439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058479, 34.192188, 37.865833>,  <39.858021, 34.215118, 37.735870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058479, 34.192188, 37.865833>,  <40.392578, 34.153969, 38.082439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058479, 34.192188, 37.865833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535980, 0.361497, -0.762919,
		0.122865, -0.927465, -0.353147,
		-0.835242, 0.095544, -0.541518,
		39.807907, 34.220852, 37.703377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573074, 33.910740, 37.431450>,  <40.392578, 34.153969, 38.082439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573074, 33.910740, 37.431450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248928, 34.125011, 37.336494>,  <40.054440, 34.253574, 37.279522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248928, 34.125011, 37.336494>,  <40.573074, 33.910740, 37.431450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248928, 34.125011, 37.336494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492423, 0.403084, -0.771390,
		-0.317527, -0.742007, -0.590426,
		-0.810368, 0.535677, -0.237391,
		40.005817, 34.285713, 37.265278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602589, 33.938736, 36.756664>,  <40.573074, 33.910740, 37.431450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602589, 33.938736, 36.756664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323830, 34.218552, 36.819885>,  <40.156574, 34.386440, 36.857819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323830, 34.218552, 36.819885>,  <40.602589, 33.938736, 36.756664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323830, 34.218552, 36.819885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373061, 0.541822, -0.753163,
		-0.612500, -0.465916, -0.638566,
		-0.696900, 0.699536, 0.158051,
		40.114761, 34.428413, 36.867302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947250, 33.536118, 36.154259>,  <40.602589, 33.938736, 36.756664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947250, 33.536118, 36.154259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265892, 33.425774, 35.939102>,  <41.457077, 33.359566, 35.810009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265892, 33.425774, 35.939102>,  <40.947250, 33.536118, 36.154259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265892, 33.425774, 35.939102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334463, 0.942332, 0.012053,
		0.503549, -0.189506, 0.842927,
		0.796601, -0.275858, -0.537893,
		41.504871, 33.343018, 35.777733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395660, 33.953033, 36.515728>,  <40.947250, 33.536118, 36.154259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395660, 33.953033, 36.515728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534630, 33.852501, 36.154366>,  <41.618011, 33.792183, 35.937550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534630, 33.852501, 36.154366>,  <41.395660, 33.953033, 36.515728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534630, 33.852501, 36.154366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320964, 0.937091, -0.137267,
		0.881069, -0.242271, 0.406230,
		0.347419, -0.251327, -0.903402,
		41.638855, 33.777103, 35.883347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985516, 34.227882, 36.272869>,  <41.395660, 33.953033, 36.515728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985516, 34.227882, 36.272869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805340, 34.176765, 35.919422>,  <41.697235, 34.146095, 35.707355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805340, 34.176765, 35.919422>,  <41.985516, 34.227882, 36.272869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805340, 34.176765, 35.919422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070381, 0.981540, -0.177837,
		0.890031, -0.142294, -0.433126,
		-0.450435, -0.127796, -0.883616,
		41.670208, 34.138428, 35.654339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427361, 34.496635, 35.628361>,  <41.985516, 34.227882, 36.272869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427361, 34.496635, 35.628361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030449, 34.530289, 35.591923>,  <41.792301, 34.550480, 35.570061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030449, 34.530289, 35.591923>,  <42.427361, 34.496635, 35.628361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030449, 34.530289, 35.591923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094547, 0.988647, -0.116778,
		0.080232, -0.124490, -0.988972,
		-0.992282, 0.084135, -0.091092,
		41.732765, 34.555531, 35.564594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136826, 34.876671, 34.940033>,  <42.427361, 34.496635, 35.628361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136826, 34.876671, 34.940033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907043, 34.931232, 35.262871>,  <41.769173, 34.963970, 35.456573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907043, 34.931232, 35.262871>,  <42.136826, 34.876671, 34.940033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907043, 34.931232, 35.262871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231888, 0.972742, 0.000643,
		-0.785003, 0.187525, -0.590427,
		-0.574454, 0.136408, 0.807091,
		41.734707, 34.972157, 35.504997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515739, 35.227695, 34.867634>,  <42.136826, 34.876671, 34.940033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515739, 35.227695, 34.867634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722893, 35.258324, 35.208443>,  <41.847183, 35.276703, 35.412926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722893, 35.258324, 35.208443>,  <41.515739, 35.227695, 34.867634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722893, 35.258324, 35.208443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173146, 0.965988, -0.192061,
		-0.837747, 0.246988, 0.487009,
		0.517882, 0.076575, 0.852018,
		41.878258, 35.281296, 35.464046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300842, 35.834629, 35.297474>,  <41.515739, 35.227695, 34.867634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300842, 35.834629, 35.297474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694942, 35.766369, 35.302471>,  <41.931404, 35.725414, 35.305470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694942, 35.766369, 35.302471>,  <41.300842, 35.834629, 35.297474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694942, 35.766369, 35.302471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168053, 0.951347, -0.258257,
		0.032187, 0.256548, 0.965996,
		0.985252, -0.170651, 0.012493,
		41.990517, 35.715172, 35.306217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687538, 36.406670, 35.676807>,  <41.300842, 35.834629, 35.297474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687538, 36.406670, 35.676807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958569, 36.238796, 35.435226>,  <42.121189, 36.138073, 35.290279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958569, 36.238796, 35.435226>,  <41.687538, 36.406670, 35.676807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958569, 36.238796, 35.435226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278651, 0.906470, -0.317279,
		0.680617, 0.046690, 0.731150,
		0.677580, -0.419681, -0.603948,
		42.161842, 36.112892, 35.254044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376354, 36.657467, 35.930649>,  <41.687538, 36.406670, 35.676807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376354, 36.657467, 35.930649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357784, 36.568359, 35.541142>,  <42.346642, 36.514893, 35.307438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357784, 36.568359, 35.541142>,  <42.376354, 36.657467, 35.930649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357784, 36.568359, 35.541142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286324, 0.930945, -0.226627,
		0.957007, -0.289333, 0.020570,
		-0.046421, -0.222773, -0.973764,
		42.343857, 36.501526, 35.249012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786358, 37.198887, 35.642975>,  <42.376354, 36.657467, 35.930649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786358, 37.198887, 35.642975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671101, 37.001953, 35.314442>,  <42.601948, 36.883793, 35.117321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671101, 37.001953, 35.314442>,  <42.786358, 37.198887, 35.642975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671101, 37.001953, 35.314442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501445, 0.653130, -0.567427,
		0.815798, -0.575351, 0.058683,
		-0.288142, -0.492333, -0.821330,
		42.584660, 36.854252, 35.068043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444199, 37.104980, 35.219727>,  <42.786358, 37.198887, 35.642975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444199, 37.104980, 35.219727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115368, 37.098133, 34.992077>,  <42.918072, 37.094025, 34.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115368, 37.098133, 34.992077>,  <43.444199, 37.104980, 35.219727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115368, 37.098133, 34.992077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363706, 0.753261, -0.548011,
		0.438079, -0.657499, -0.613010,
		-0.822073, -0.017117, -0.569124,
		42.868748, 37.092999, 34.821339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628407, 37.269657, 34.454567>,  <43.444199, 37.104980, 35.219727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628407, 37.269657, 34.454567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238609, 37.358341, 34.468445>,  <43.004730, 37.411552, 34.476772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238609, 37.358341, 34.468445>,  <43.628407, 37.269657, 34.454567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238609, 37.358341, 34.468445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155877, 0.780001, -0.606053,
		-0.161430, -0.585188, -0.794667,
		-0.974496, 0.221706, 0.034698,
		42.946259, 37.424854, 34.478855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369038, 37.343407, 33.686047>,  <43.628407, 37.269657, 34.454567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369038, 37.343407, 33.686047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129490, 37.542530, 33.936977>,  <42.985760, 37.662003, 34.087536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129490, 37.542530, 33.936977>,  <43.369038, 37.343407, 33.686047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129490, 37.542530, 33.936977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152858, 0.839983, -0.520637,
		-0.786122, -0.215903, -0.579136,
		-0.598872, 0.497810, 0.627326,
		42.949829, 37.691872, 34.125175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146996, 37.881573, 33.223656>,  <43.369038, 37.343407, 33.686047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146996, 37.881573, 33.223656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064159, 38.029156, 33.586090>,  <43.014458, 38.117706, 33.803551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064159, 38.029156, 33.586090>,  <43.146996, 37.881573, 33.223656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064159, 38.029156, 33.586090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261325, 0.913369, -0.312197,
		-0.942774, 0.172129, -0.285566,
		-0.207089, 0.368957, 0.906082,
		43.002033, 38.139843, 33.857914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583263, 38.478642, 33.078941>,  <43.146996, 37.881573, 33.223656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583263, 38.478642, 33.078941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770954, 38.532486, 33.428043>,  <42.883568, 38.564793, 33.637505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770954, 38.532486, 33.428043>,  <42.583263, 38.478642, 33.078941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770954, 38.532486, 33.428043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089424, 0.975990, -0.198610,
		-0.878540, 0.171239, 0.445920,
		0.469224, 0.134611, 0.872760,
		42.911720, 38.572868, 33.689873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304409, 38.963299, 33.379704>,  <42.583263, 38.478642, 33.078941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304409, 38.963299, 33.379704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648697, 38.943272, 33.582352>,  <42.855270, 38.931255, 33.703941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648697, 38.943272, 33.582352>,  <42.304409, 38.963299, 33.379704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648697, 38.943272, 33.582352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169994, 0.966296, -0.193323,
		-0.479864, 0.252518, 0.840218,
		0.860717, -0.050064, 0.506617,
		42.906914, 38.928253, 33.734337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386700, 39.607597, 33.787762>,  <42.304409, 38.963299, 33.379704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386700, 39.607597, 33.787762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760098, 39.467640, 33.756390>,  <42.984138, 39.383663, 33.737568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760098, 39.467640, 33.756390>,  <42.386700, 39.607597, 33.787762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760098, 39.467640, 33.756390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295415, 0.874415, -0.384875,
		0.203247, 0.336110, 0.919630,
		0.933499, -0.349898, -0.078430,
		43.040146, 39.362671, 33.732861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787472, 40.267704, 34.019520>,  <42.386700, 39.607597, 33.787762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787472, 40.267704, 34.019520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029953, 40.010235, 33.832672>,  <43.175442, 39.855751, 33.720562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029953, 40.010235, 33.832672>,  <42.787472, 40.267704, 34.019520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029953, 40.010235, 33.832672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417811, 0.757509, -0.501611,
		0.676721, 0.108911, 0.728139,
		0.606203, -0.643676, -0.467118,
		43.211815, 39.817131, 33.692535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435997, 40.467159, 34.199966>,  <42.787472, 40.267704, 34.019520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435997, 40.467159, 34.199966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429798, 40.286510, 33.843136>,  <43.426079, 40.178120, 33.629040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429798, 40.286510, 33.843136>,  <43.435997, 40.467159, 34.199966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429798, 40.286510, 33.843136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394921, 0.816877, -0.420417,
		0.918585, -0.358815, 0.165694,
		-0.015500, -0.451624, -0.892074,
		43.425148, 40.151024, 33.575512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075428, 40.635265, 33.872620>,  <43.435997, 40.467159, 34.199966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075428, 40.635265, 33.872620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872932, 40.483501, 33.562840>,  <43.751434, 40.392445, 33.376972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872932, 40.483501, 33.562840>,  <44.075428, 40.635265, 33.872620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872932, 40.483501, 33.562840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240514, 0.800277, -0.549281,
		0.828174, -0.464334, -0.313881,
		-0.506242, -0.379407, -0.774448,
		43.721062, 40.369678, 33.330505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470619, 40.806732, 33.345886>,  <44.075428, 40.635265, 33.872620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470619, 40.806732, 33.345886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130798, 40.711430, 33.157631>,  <43.926907, 40.654247, 33.044678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130798, 40.711430, 33.157631>,  <44.470619, 40.806732, 33.345886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130798, 40.711430, 33.157631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124597, 0.776305, -0.617920,
		0.512581, -0.583594, -0.629824,
		-0.849551, -0.238260, -0.470634,
		43.875935, 40.639950, 33.016441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614300, 40.729816, 32.626286>,  <44.470619, 40.806732, 33.345886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614300, 40.729816, 32.626286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235455, 40.846947, 32.678799>,  <44.008148, 40.917225, 32.710308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235455, 40.846947, 32.678799>,  <44.614300, 40.729816, 32.626286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235455, 40.846947, 32.678799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140250, 0.745667, -0.651392,
		-0.288638, -0.598527, -0.747297,
		-0.947111, 0.292825, 0.131284,
		43.951321, 40.934795, 32.718185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355381, 40.960072, 31.964680>,  <44.614300, 40.729816, 32.626286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355381, 40.960072, 31.964680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070465, 41.091167, 32.212948>,  <43.899517, 41.169827, 32.361908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070465, 41.091167, 32.212948>,  <44.355381, 40.960072, 31.964680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070465, 41.091167, 32.212948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128858, 0.808197, -0.574641,
		-0.689956, -0.489289, -0.533439,
		-0.712289, 0.327739, 0.620669,
		43.856777, 41.189487, 32.399147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845825, 41.235664, 31.509892>,  <44.355381, 40.960072, 31.964680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845825, 41.235664, 31.509892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783321, 41.410873, 31.864002>,  <43.745819, 41.515999, 32.076469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783321, 41.410873, 31.864002>,  <43.845825, 41.235664, 31.509892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783321, 41.410873, 31.864002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198422, 0.864094, -0.462569,
		-0.967580, -0.247940, -0.048109,
		-0.156260, 0.438026, 0.885277,
		43.736443, 41.542282, 32.129585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299213, 41.727848, 31.309086>,  <43.845825, 41.235664, 31.509892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299213, 41.727848, 31.309086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441139, 41.850807, 31.662268>,  <43.526295, 41.924583, 31.874178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441139, 41.850807, 31.662268>,  <43.299213, 41.727848, 31.309086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441139, 41.850807, 31.662268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041480, 0.938298, -0.343331,
		-0.934015, 0.158445, 0.320174,
		0.354818, 0.307395, 0.882957,
		43.547585, 41.943027, 31.927155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954327, 42.346771, 31.455700>,  <43.299213, 41.727848, 31.309086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954327, 42.346771, 31.455700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279972, 42.366764, 31.687120>,  <43.475361, 42.378757, 31.825974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279972, 42.366764, 31.687120>,  <42.954327, 42.346771, 31.455700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279972, 42.366764, 31.687120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129864, 0.955388, -0.265273,
		-0.566000, 0.291095, 0.771302,
		0.814113, 0.049980, 0.578552,
		43.524204, 42.381760, 31.860685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886959, 42.966263, 31.886833>,  <42.954327, 42.346771, 31.455700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886959, 42.966263, 31.886833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277802, 42.882210, 31.873501>,  <43.512306, 42.831776, 31.865501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277802, 42.882210, 31.873501>,  <42.886959, 42.966263, 31.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277802, 42.882210, 31.873501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208870, 0.977214, -0.037759,
		0.040504, 0.029933, 0.998731,
		0.977104, -0.210134, -0.033329,
		43.570934, 42.819168, 31.863503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241222, 43.361897, 32.352928>,  <42.886959, 42.966263, 31.886833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241222, 43.361897, 32.352928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507488, 43.280231, 32.065819>,  <43.667248, 43.231232, 31.893553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507488, 43.280231, 32.065819>,  <43.241222, 43.361897, 32.352928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507488, 43.280231, 32.065819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083704, 0.976205, -0.200045,
		0.741540, 0.073083, 0.666916,
		0.665667, -0.204165, -0.717777,
		43.707188, 43.218983, 31.850485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856297, 43.889599, 32.394470>,  <43.241222, 43.361897, 32.352928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856297, 43.889599, 32.394470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798172, 43.726883, 32.033714>,  <43.763298, 43.629253, 31.817261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798172, 43.726883, 32.033714>,  <43.856297, 43.889599, 32.394470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798172, 43.726883, 32.033714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045692, 0.907833, -0.416835,
		0.988330, -0.101782, -0.113336,
		-0.145316, -0.406792, -0.901889,
		43.754578, 43.604847, 31.763147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376770, 44.297161, 32.425858>,  <43.856297, 43.889599, 32.394470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376770, 44.297161, 32.425858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700325, 44.467278, 32.588257>,  <44.894459, 44.569347, 32.685696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700325, 44.467278, 32.588257>,  <44.376770, 44.297161, 32.425858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700325, 44.467278, 32.588257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587127, -0.621196, -0.519035,
		0.031468, 0.658214, -0.752173,
		0.808883, 0.425288, 0.406003,
		44.942989, 44.594864, 32.710056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962288, 44.634148, 31.976866>,  <44.376770, 44.297161, 32.425858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962288, 44.634148, 31.976866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126511, 44.479454, 32.307171>,  <45.225044, 44.386639, 32.505352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126511, 44.479454, 32.307171>,  <44.962288, 44.634148, 31.976866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126511, 44.479454, 32.307171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628810, -0.535741, -0.563542,
		0.660333, 0.750614, 0.023228,
		0.410558, -0.386731, 0.825761,
		45.249680, 44.363434, 32.554897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650173, 44.815304, 32.132317>,  <44.962288, 44.634148, 31.976866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650173, 44.815304, 32.132317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583382, 44.438705, 32.249416>,  <45.543308, 44.212746, 32.319675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583382, 44.438705, 32.249416>,  <45.650173, 44.815304, 32.132317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583382, 44.438705, 32.249416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600451, -0.332609, -0.727207,
		0.782034, 0.054357, 0.620860,
		-0.166975, -0.941497, 0.292751,
		45.533291, 44.156258, 32.337242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280857, 44.535671, 31.848999>,  <45.650173, 44.815304, 32.132317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280857, 44.535671, 31.848999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045860, 44.231304, 31.959171>,  <45.904861, 44.048683, 32.025276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045860, 44.231304, 31.959171>,  <46.280857, 44.535671, 31.848999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045860, 44.231304, 31.959171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372226, -0.556318, -0.742939,
		0.718540, -0.333948, 0.610065,
		-0.587493, -0.760914, 0.275432,
		45.869614, 44.003029, 32.041801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777950, 43.988792, 31.825802>,  <46.280857, 44.535671, 31.848999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777950, 43.988792, 31.825802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411438, 43.829678, 31.844551>,  <46.191532, 43.734207, 31.855801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411438, 43.829678, 31.844551>,  <46.777950, 43.988792, 31.825802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411438, 43.829678, 31.844551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310892, -0.780101, -0.542945,
		0.252541, -0.482917, 0.838459,
		-0.916280, -0.397787, 0.046873,
		46.136555, 43.710342, 31.858612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.395729, 44.123146, 31.893370>,  <46.777950, 43.988792, 31.825802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.395729, 44.123146, 31.893370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677464, 44.011860, 32.154602>,  <47.846504, 43.945087, 32.311340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677464, 44.011860, 32.154602>,  <47.395729, 44.123146, 31.893370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.677464, 44.011860, 32.154602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344304, -0.938427, -0.028442,
		0.620780, -0.204825, -0.756755,
		0.704334, -0.278211, 0.653079,
		47.888763, 43.928398, 32.350525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748299, 43.559811, 31.634262>,  <47.395729, 44.123146, 31.893370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748299, 43.559811, 31.634262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769760, 43.541973, 32.033287>,  <47.782639, 43.531269, 32.272701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769760, 43.541973, 32.033287>,  <47.748299, 43.559811, 31.634262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.769760, 43.541973, 32.033287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278946, -0.959901, -0.027909,
		0.958807, -0.276769, -0.063943,
		0.053654, -0.044596, 0.997563,
		47.785858, 43.528595, 32.332558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.079041, 43.005947, 31.806833>,  <47.748299, 43.559811, 31.634262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.079041, 43.005947, 31.806833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842716, 43.069633, 32.123211>,  <47.700924, 43.107845, 32.313038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842716, 43.069633, 32.123211>,  <48.079041, 43.005947, 31.806833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.842716, 43.069633, 32.123211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185980, -0.980810, 0.058513,
		0.785084, -0.112530, 0.609081,
		-0.590808, 0.159214, 0.790946,
		47.665474, 43.117397, 32.360497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.244015, 42.544209, 32.248993>,  <48.079041, 43.005947, 31.806833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.244015, 42.544209, 32.248993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870049, 42.663628, 32.325722>,  <47.645668, 42.735279, 32.371758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870049, 42.663628, 32.325722>,  <48.244015, 42.544209, 32.248993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.870049, 42.663628, 32.325722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297473, -0.954086, 0.035072,
		0.193486, -0.024273, 0.980803,
		-0.934919, 0.298548, 0.191823,
		47.589573, 42.753193, 32.383270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.049210, 42.200146, 32.912991>,  <48.244015, 42.544209, 32.248993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.049210, 42.200146, 32.912991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750263, 42.266808, 32.655724>,  <47.570896, 42.306805, 32.501362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750263, 42.266808, 32.655724>,  <48.049210, 42.200146, 32.912991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.750263, 42.266808, 32.655724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273710, -0.959299, 0.069488,
		-0.605410, 0.227975, 0.762565,
		-0.747370, 0.166653, -0.643168,
		47.526051, 42.316803, 32.462772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414768, 42.023609, 33.374123>,  <48.049210, 42.200146, 32.912991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414768, 42.023609, 33.374123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298382, 41.993061, 32.992649>,  <47.228550, 41.974731, 32.763767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298382, 41.993061, 32.992649>,  <47.414768, 42.023609, 33.374123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.298382, 41.993061, 32.992649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268619, -0.950192, 0.158044,
		-0.918249, 0.302163, 0.255964,
		-0.290970, -0.076367, -0.953680,
		47.211090, 41.970150, 32.706547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763992, 41.759575, 33.408836>,  <47.414768, 42.023609, 33.374123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763992, 41.759575, 33.408836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877846, 41.689903, 33.031765>,  <46.946159, 41.648098, 32.805523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877846, 41.689903, 33.031765>,  <46.763992, 41.759575, 33.408836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877846, 41.689903, 33.031765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437506, -0.898575, 0.033933,
		-0.852979, 0.402769, -0.331970,
		0.284633, -0.174183, -0.942679,
		46.963234, 41.637650, 32.748962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205002, 41.471264, 33.012482>,  <46.763992, 41.759575, 33.408836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205002, 41.471264, 33.012482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532715, 41.342876, 32.822426>,  <46.729343, 41.265842, 32.708393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532715, 41.342876, 32.822426>,  <46.205002, 41.471264, 33.012482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532715, 41.342876, 32.822426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431237, -0.891048, -0.141659,
		-0.377903, 0.320956, -0.868433,
		0.819282, -0.320968, -0.475138,
		46.778500, 41.246586, 32.679886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947006, 40.870178, 32.701546>,  <46.205002, 41.471264, 33.012482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947006, 40.870178, 32.701546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345711, 40.846668, 32.679615>,  <46.584934, 40.832561, 32.666458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345711, 40.846668, 32.679615>,  <45.947006, 40.870178, 32.701546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345711, 40.846668, 32.679615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053353, -0.993984, 0.095649,
		-0.060120, -0.092414, -0.993904,
		0.996764, -0.058778, -0.054828,
		46.644741, 40.829037, 32.663166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021732, 40.391998, 32.237762>,  <45.947006, 40.870178, 32.701546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021732, 40.391998, 32.237762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366718, 40.387062, 32.440151>,  <46.573708, 40.384102, 32.561584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366718, 40.387062, 32.440151>,  <46.021732, 40.391998, 32.237762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366718, 40.387062, 32.440151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092567, -0.986686, 0.133723,
		0.497587, -0.162167, -0.852121,
		0.862461, -0.012340, 0.505973,
		46.625458, 40.383362, 32.591942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251881, 39.785221, 32.010780>,  <46.021732, 40.391998, 32.237762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251881, 39.785221, 32.010780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463589, 39.890804, 32.333321>,  <46.590614, 39.954155, 32.526844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463589, 39.890804, 32.333321>,  <46.251881, 39.785221, 32.010780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463589, 39.890804, 32.333321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209879, -0.880109, 0.425863,
		0.822084, -0.394633, -0.410417,
		0.529272, 0.263957, 0.806349,
		46.622372, 39.969990, 32.575226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730740, 39.300297, 32.131660>,  <46.251881, 39.785221, 32.010780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730740, 39.300297, 32.131660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711010, 39.471725, 32.492523>,  <46.699173, 39.574585, 32.709042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711010, 39.471725, 32.492523>,  <46.730740, 39.300297, 32.131660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711010, 39.471725, 32.492523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068400, -0.902587, 0.425039,
		0.996438, -0.040744, 0.073832,
		-0.049322, 0.428575, 0.902159,
		46.696213, 39.600300, 32.763172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.011383, 38.814896, 32.533005>,  <46.730740, 39.300297, 32.131660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.011383, 38.814896, 32.533005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778942, 39.013317, 32.791077>,  <46.639477, 39.132370, 32.945919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778942, 39.013317, 32.791077>,  <47.011383, 38.814896, 32.533005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778942, 39.013317, 32.791077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237406, -0.861605, 0.448637,
		0.778436, 0.107534, 0.618444,
		-0.581098, 0.496058, 0.645175,
		46.604614, 39.162136, 32.984631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203823, 38.527546, 33.121227>,  <47.011383, 38.814896, 32.533005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203823, 38.527546, 33.121227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844509, 38.690079, 33.188141>,  <46.628922, 38.787598, 33.228291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844509, 38.690079, 33.188141>,  <47.203823, 38.527546, 33.121227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844509, 38.690079, 33.188141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315148, -0.861023, 0.399152,
		0.306225, 0.305831, 0.901496,
		-0.898281, 0.406334, 0.167285,
		46.575024, 38.811977, 33.238327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128338, 38.319981, 33.741997>,  <47.203823, 38.527546, 33.121227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128338, 38.319981, 33.741997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772118, 38.427025, 33.594864>,  <46.558384, 38.491249, 33.506584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772118, 38.427025, 33.594864>,  <47.128338, 38.319981, 33.741997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772118, 38.427025, 33.594864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442597, -0.696418, 0.564899,
		-0.104996, 0.665875, 0.738639,
		-0.890553, 0.267607, -0.367835,
		46.504951, 38.507305, 33.484512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721947, 38.096798, 34.303806>,  <47.128338, 38.319981, 33.741997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721947, 38.096798, 34.303806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482864, 38.132778, 33.985146>,  <46.339413, 38.154366, 33.793949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482864, 38.132778, 33.985146>,  <46.721947, 38.096798, 34.303806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482864, 38.132778, 33.985146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593356, -0.717871, 0.364128,
		-0.539140, 0.690340, 0.482451,
		-0.597710, 0.089949, -0.796651,
		46.303551, 38.159763, 33.746151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966003, 38.101036, 34.542683>,  <46.721947, 38.096798, 34.303806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966003, 38.101036, 34.542683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937103, 37.984940, 34.160995>,  <45.919765, 37.915283, 33.931984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937103, 37.984940, 34.160995>,  <45.966003, 38.101036, 34.542683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937103, 37.984940, 34.160995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557332, -0.781670, 0.279954,
		-0.827141, 0.552044, -0.105289,
		-0.072246, -0.290242, -0.954222,
		45.915428, 37.897865, 33.874729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213825, 37.940987, 34.396763>,  <45.966003, 38.101036, 34.542683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213825, 37.940987, 34.396763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447422, 37.745998, 34.137123>,  <45.587578, 37.629005, 33.981339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447422, 37.745998, 34.137123>,  <45.213825, 37.940987, 34.396763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447422, 37.745998, 34.137123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485360, -0.850627, 0.202136,
		-0.650678, 0.197003, -0.733353,
		0.583989, -0.487466, -0.649102,
		45.622620, 37.599758, 33.942394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782600, 37.578014, 34.048393>,  <45.213825, 37.940987, 34.396763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782600, 37.578014, 34.048393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128231, 37.393421, 33.967995>,  <45.335609, 37.282665, 33.919754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128231, 37.393421, 33.967995>,  <44.782600, 37.578014, 34.048393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128231, 37.393421, 33.967995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466613, -0.884136, 0.024001,
		-0.188784, 0.073049, -0.979298,
		0.864079, -0.461484, -0.200997,
		45.387455, 37.254974, 33.907696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592018, 37.119629, 33.526089>,  <44.782600, 37.578014, 34.048393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592018, 37.119629, 33.526089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919434, 36.982082, 33.710155>,  <45.115883, 36.899555, 33.820595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919434, 36.982082, 33.710155>,  <44.592018, 37.119629, 33.526089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919434, 36.982082, 33.710155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316841, -0.938434, -0.137675,
		0.479180, -0.033109, -0.877092,
		0.818534, -0.343870, 0.460169,
		45.164993, 36.878922, 33.848206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749565, 36.565262, 33.145958>,  <44.592018, 37.119629, 33.526089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749565, 36.565262, 33.145958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938221, 36.495270, 33.491661>,  <45.051414, 36.453274, 33.699081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938221, 36.495270, 33.491661>,  <44.749565, 36.565262, 33.145958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938221, 36.495270, 33.491661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248634, -0.966734, -0.060044,
		0.846013, -0.186565, -0.499456,
		0.471639, -0.174980, 0.864256,
		45.079712, 36.442776, 33.750938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884079, 35.892231, 33.049290>,  <44.749565, 36.565262, 33.145958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884079, 35.892231, 33.049290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994888, 35.941685, 33.430439>,  <45.061375, 35.971359, 33.659130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994888, 35.941685, 33.430439>,  <44.884079, 35.892231, 33.049290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994888, 35.941685, 33.430439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221062, -0.956884, 0.188426,
		0.935087, -0.262844, -0.237750,
		0.277026, 0.123637, 0.952875,
		45.077995, 35.978775, 33.716301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312565, 35.286453, 33.221375>,  <44.884079, 35.892231, 33.049290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312565, 35.286453, 33.221375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127232, 35.436802, 33.542385>,  <45.016029, 35.527012, 33.734989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127232, 35.436802, 33.542385>,  <45.312565, 35.286453, 33.221375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127232, 35.436802, 33.542385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346139, -0.910417, 0.226560,
		0.815787, -0.172811, 0.551932,
		-0.463336, 0.375870, 0.802522,
		44.988232, 35.549564, 33.783142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313679, 34.710396, 33.753941>,  <45.312565, 35.286453, 33.221375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313679, 34.710396, 33.753941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082325, 34.944294, 33.981468>,  <44.943512, 35.084633, 34.117985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082325, 34.944294, 33.981468>,  <45.313679, 34.710396, 33.753941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082325, 34.944294, 33.981468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216577, -0.782321, 0.584010,
		0.786492, 0.214588, 0.579121,
		-0.578380, 0.584744, 0.568815,
		44.908810, 35.119717, 34.152111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535553, 34.588093, 34.491665>,  <45.313679, 34.710396, 33.753941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535553, 34.588093, 34.491665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159908, 34.725529, 34.489952>,  <44.934521, 34.807991, 34.488926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159908, 34.725529, 34.489952>,  <45.535553, 34.588093, 34.491665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159908, 34.725529, 34.489952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257098, -0.694336, 0.672160,
		0.227975, 0.632332, 0.740394,
		-0.939110, 0.343589, -0.004280,
		44.878174, 34.828606, 34.488667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144482, 34.631237, 35.120110>,  <45.535553, 34.588093, 34.491665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144482, 34.631237, 35.120110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144562, 34.352226, 35.406734>,  <46.144611, 34.184822, 35.578709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144562, 34.352226, 35.406734>,  <46.144482, 34.631237, 35.120110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144562, 34.352226, 35.406734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999533, 0.021766, 0.021470,
		-0.030572, -0.716231, -0.697193,
		0.000203, -0.697524, 0.716561,
		46.144623, 34.142967, 35.621704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552799, 35.407475, 35.196049>,  <46.144482, 34.631237, 35.120110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552799, 35.407475, 35.196049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.644211, 35.024021, 35.128181>,  <46.699059, 34.793949, 35.087463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.644211, 35.024021, 35.128181>,  <46.552799, 35.407475, 35.196049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.644211, 35.024021, 35.128181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819989, 0.283485, -0.497246,
		0.524776, -0.025486, 0.850858,
		0.228532, -0.958638, -0.169665,
		46.712772, 34.736431, 35.077282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.129078, 35.193527, 35.636608>,  <46.552799, 35.407475, 35.196049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.129078, 35.193527, 35.636608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089123, 35.019485, 35.278679>,  <47.065151, 34.915062, 35.063923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089123, 35.019485, 35.278679>,  <47.129078, 35.193527, 35.636608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089123, 35.019485, 35.278679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881838, 0.377825, -0.282152,
		0.460852, -0.817271, 0.345954,
		-0.099884, -0.435106, -0.894822,
		47.059158, 34.888954, 35.010231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.794090, 34.754498, 35.424923>,  <47.129078, 35.193527, 35.636608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.794090, 34.754498, 35.424923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586590, 34.939568, 35.137360>,  <47.462090, 35.050610, 34.964821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586590, 34.939568, 35.137360>,  <47.794090, 34.754498, 35.424923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.586590, 34.939568, 35.137360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854898, 0.287665, -0.431739,
		0.007051, -0.838559, -0.544766,
		-0.518749, 0.462675, -0.718910,
		47.430965, 35.078369, 34.921688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.974628, 36.220081, 45.551682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586613, 36.310192, 45.588062>,  <34.353802, 36.364258, 45.609890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586613, 36.310192, 45.588062>,  <34.974628, 36.220081, 45.551682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586613, 36.310192, 45.588062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056849, 0.153507, -0.986511,
		-0.236197, -0.962126, -0.136101,
		-0.970041, 0.225274, 0.090954,
		34.295601, 36.377773, 45.615349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612740, 35.836235, 45.028835>,  <34.974628, 36.220081, 45.551682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612740, 35.836235, 45.028835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.372314, 36.142200, 45.121475>,  <34.228058, 36.325779, 45.177059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.372314, 36.142200, 45.121475>,  <34.612740, 35.836235, 45.028835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372314, 36.142200, 45.121475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121762, 0.198759, -0.972455,
		-0.789873, -0.612705, -0.026329,
		-0.601061, 0.764910, 0.231599,
		34.191998, 36.371674, 45.190956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034618, 35.669811, 44.706852>,  <34.612740, 35.836235, 45.028835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034618, 35.669811, 44.706852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040150, 36.063419, 44.777866>,  <34.043468, 36.299583, 44.820473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040150, 36.063419, 44.777866>,  <34.034618, 35.669811, 44.706852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040150, 36.063419, 44.777866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108775, 0.177977, -0.978004,
		-0.993970, -0.005789, 0.109498,
		0.013827, 0.984018, 0.177533,
		34.044296, 36.358624, 44.831127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480854, 35.945835, 44.300220>,  <34.034618, 35.669811, 44.706852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480854, 35.945835, 44.300220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690346, 36.280842, 44.362541>,  <33.816040, 36.481846, 44.399933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690346, 36.280842, 44.362541>,  <33.480854, 35.945835, 44.300220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690346, 36.280842, 44.362541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043385, 0.208877, -0.976979,
		-0.850777, 0.504918, 0.145731,
		0.523734, 0.837514, 0.155802,
		33.847466, 36.532097, 44.409283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064838, 36.530224, 44.090263>,  <33.480854, 35.945835, 44.300220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064838, 36.530224, 44.090263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.456181, 36.611523, 44.074688>,  <33.690987, 36.660301, 44.065342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.456181, 36.611523, 44.074688>,  <33.064838, 36.530224, 44.090263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456181, 36.611523, 44.074688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099692, 0.297977, -0.949353,
		-0.181349, 0.932684, 0.311789,
		0.978353, 0.203247, -0.038943,
		33.749687, 36.672497, 44.063004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170685, 37.131828, 43.601162>,  <33.064838, 36.530224, 44.090263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170685, 37.131828, 43.601162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532249, 36.968391, 43.651764>,  <33.749187, 36.870331, 43.682125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532249, 36.968391, 43.651764>,  <33.170685, 37.131828, 43.601162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532249, 36.968391, 43.651764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255331, 0.278165, -0.925975,
		0.343154, 0.869298, 0.355762,
		0.903909, -0.408589, 0.126505,
		33.803421, 36.845814, 43.689716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635796, 37.621971, 43.320602>,  <33.170685, 37.131828, 43.601162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635796, 37.621971, 43.320602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.826172, 37.270435, 43.333969>,  <33.940399, 37.059513, 43.341988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.826172, 37.270435, 43.333969>,  <33.635796, 37.621971, 43.320602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826172, 37.270435, 43.333969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261616, 0.105199, -0.959422,
		0.839665, 0.465370, 0.279988,
		0.475940, -0.878843, 0.033417,
		33.968952, 37.006783, 43.343994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349392, 37.736172, 43.026192>,  <33.635796, 37.621971, 43.320602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349392, 37.736172, 43.026192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.265903, 37.347328, 42.983406>,  <34.215809, 37.114021, 42.957733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.265903, 37.347328, 42.983406>,  <34.349392, 37.736172, 43.026192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265903, 37.347328, 42.983406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350824, 0.027671, -0.936033,
		0.912884, -0.232897, 0.335263,
		-0.208723, -0.972108, -0.106966,
		34.203285, 37.055695, 42.951317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944183, 37.512138, 42.775009>,  <34.349392, 37.736172, 43.026192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944183, 37.512138, 42.775009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667385, 37.241898, 42.673264>,  <34.501308, 37.079754, 42.612217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667385, 37.241898, 42.673264>,  <34.944183, 37.512138, 42.775009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667385, 37.241898, 42.673264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271381, 0.083055, -0.958882,
		0.668952, -0.732570, 0.125873,
		-0.691993, -0.675606, -0.254366,
		34.459785, 37.039215, 42.596954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293335, 36.985538, 42.541988>,  <34.944183, 37.512138, 42.775009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293335, 36.985538, 42.541988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924961, 37.008507, 42.387806>,  <34.703938, 37.022289, 42.295296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924961, 37.008507, 42.387806>,  <35.293335, 36.985538, 42.541988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924961, 37.008507, 42.387806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386384, 0.005605, -0.922321,
		-0.050803, -0.998334, -0.027350,
		-0.920938, 0.057425, -0.385456,
		34.648682, 37.025734, 42.272171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275307, 36.411983, 42.092957>,  <35.293335, 36.985538, 42.541988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275307, 36.411983, 42.092957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994518, 36.663784, 41.959705>,  <34.826046, 36.814865, 41.879753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994518, 36.663784, 41.959705>,  <35.275307, 36.411983, 42.092957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994518, 36.663784, 41.959705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352280, -0.099626, -0.930577,
		-0.618985, -0.770588, -0.151826,
		-0.701966, 0.629498, -0.333130,
		34.783928, 36.852634, 41.859768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130260, 36.039677, 41.593597>,  <35.275307, 36.411983, 42.092957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130260, 36.039677, 41.593597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957180, 36.389240, 41.505005>,  <34.853333, 36.598980, 41.451851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957180, 36.389240, 41.505005>,  <35.130260, 36.039677, 41.593597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957180, 36.389240, 41.505005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247288, -0.121197, -0.961332,
		-0.866960, -0.470739, -0.163665,
		-0.432701, 0.873909, -0.221481,
		34.827370, 36.651413, 41.438560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845657, 35.938591, 40.975834>,  <35.130260, 36.039677, 41.593597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845657, 35.938591, 40.975834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874741, 36.337067, 40.995075>,  <34.892193, 36.576153, 41.006622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874741, 36.337067, 40.995075>,  <34.845657, 35.938591, 40.975834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874741, 36.337067, 40.995075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460844, 0.009217, -0.887433,
		-0.884497, 0.086695, -0.458420,
		0.072711, 0.996192, 0.048105,
		34.896553, 36.635925, 41.009506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507084, 36.165668, 40.381741>,  <34.845657, 35.938591, 40.975834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507084, 36.165668, 40.381741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.769253, 36.441921, 40.504021>,  <34.926556, 36.607674, 40.577389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.769253, 36.441921, 40.504021>,  <34.507084, 36.165668, 40.381741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769253, 36.441921, 40.504021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391125, 0.035881, -0.919638,
		-0.646099, 0.722317, -0.246606,
		0.655421, 0.690631, 0.305699,
		34.965878, 36.649109, 40.595730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406620, 36.726536, 39.935040>,  <34.507084, 36.165668, 40.381741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406620, 36.726536, 39.935040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768200, 36.788265, 40.094566>,  <34.985149, 36.825302, 40.190285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768200, 36.788265, 40.094566>,  <34.406620, 36.726536, 39.935040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768200, 36.788265, 40.094566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364065, 0.211537, -0.907033,
		-0.224345, 0.965109, 0.135033,
		0.903950, 0.154328, 0.398820,
		35.039387, 36.834564, 40.214211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631210, 37.332584, 39.662445>,  <34.406620, 36.726536, 39.935040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631210, 37.332584, 39.662445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.967598, 37.228397, 39.852146>,  <35.169430, 37.165886, 39.965969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.967598, 37.228397, 39.852146>,  <34.631210, 37.332584, 39.662445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967598, 37.228397, 39.852146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541076, 0.406618, -0.736137,
		-0.001100, 0.875681, 0.482889,
		0.840973, -0.260470, 0.474257,
		35.219891, 37.150257, 39.994423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111435, 37.948372, 39.601002>,  <34.631210, 37.332584, 39.662445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111435, 37.948372, 39.601002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346195, 37.634331, 39.680164>,  <35.487053, 37.445908, 39.727661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346195, 37.634331, 39.680164>,  <35.111435, 37.948372, 39.601002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346195, 37.634331, 39.680164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629544, 0.288792, -0.721300,
		0.509138, 0.547922, 0.663747,
		0.586901, -0.785099, 0.197906,
		35.522266, 37.398800, 39.739536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858269, 38.171326, 39.537918>,  <35.111435, 37.948372, 39.601002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858269, 38.171326, 39.537918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874958, 37.773933, 39.495480>,  <35.884972, 37.535500, 39.470016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874958, 37.773933, 39.495480>,  <35.858269, 38.171326, 39.537918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874958, 37.773933, 39.495480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589402, 0.110221, -0.800285,
		0.806762, -0.029143, 0.590158,
		0.041725, -0.993480, -0.106099,
		35.887474, 37.475891, 39.463650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490971, 38.130692, 39.437840>,  <35.858269, 38.171326, 39.537918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490971, 38.130692, 39.437840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374180, 37.763416, 39.330746>,  <36.304104, 37.543053, 39.266491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374180, 37.763416, 39.330746>,  <36.490971, 38.130692, 39.437840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374180, 37.763416, 39.330746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603572, 0.040259, -0.796291,
		0.741923, -0.394097, 0.542437,
		-0.291978, -0.918187, -0.267735,
		36.286587, 37.487961, 39.250423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054333, 37.676746, 39.252853>,  <36.490971, 38.130692, 39.437840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054333, 37.676746, 39.252853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753616, 37.511284, 39.047447>,  <36.573185, 37.412006, 38.924206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753616, 37.511284, 39.047447>,  <37.054333, 37.676746, 39.252853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753616, 37.511284, 39.047447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551290, 0.032976, -0.833662,
		0.361784, -0.909835, 0.203254,
		-0.751792, -0.413658, -0.513513,
		36.528080, 37.387188, 38.893394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459312, 37.186901, 38.749939>,  <37.054333, 37.676746, 39.252853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459312, 37.186901, 38.749939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088844, 37.226223, 38.604309>,  <36.866566, 37.249817, 38.516930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088844, 37.226223, 38.604309>,  <37.459312, 37.186901, 38.749939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088844, 37.226223, 38.604309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377023, 0.262740, -0.888156,
		0.008346, -0.959846, -0.280405,
		-0.926166, 0.098307, -0.364077,
		36.810993, 37.255714, 38.495087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570633, 36.956985, 38.131252>,  <37.459312, 37.186901, 38.749939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570633, 36.956985, 38.131252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231827, 37.169144, 38.117096>,  <37.028545, 37.296436, 38.108601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231827, 37.169144, 38.117096>,  <37.570633, 36.956985, 38.131252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231827, 37.169144, 38.117096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335192, 0.481243, -0.809970,
		-0.412570, -0.697918, -0.585402,
		-0.847014, 0.530392, -0.035390,
		36.977722, 37.328262, 38.106480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062138, 36.472569, 37.865597>,  <37.570633, 36.956985, 38.131252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062138, 36.472569, 37.865597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460163, 36.434170, 37.875717>,  <38.698978, 36.411129, 37.881790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460163, 36.434170, 37.875717>,  <38.062138, 36.472569, 37.865597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460163, 36.434170, 37.875717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041553, -0.171268, 0.984348,
		-0.090166, -0.980536, -0.174411,
		0.995060, -0.096002, 0.025302,
		38.758682, 36.405369, 37.883308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208900, 35.913300, 38.247337>,  <38.062138, 36.472569, 37.865597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208900, 35.913300, 38.247337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526569, 36.155842, 38.263470>,  <38.717171, 36.301369, 38.273148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526569, 36.155842, 38.263470>,  <38.208900, 35.913300, 38.247337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526569, 36.155842, 38.263470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104133, -0.201165, 0.974007,
		0.598709, -0.769327, -0.222901,
		0.794169, 0.606358, 0.040327,
		38.764820, 36.337749, 38.275566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689629, 35.568600, 38.612732>,  <38.208900, 35.913300, 38.247337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689629, 35.568600, 38.612732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777107, 35.956348, 38.657425>,  <38.829594, 36.188999, 38.684238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777107, 35.956348, 38.657425>,  <38.689629, 35.568600, 38.612732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777107, 35.956348, 38.657425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068057, -0.129376, 0.989257,
		0.973417, -0.208742, -0.094267,
		0.218696, 0.969375, 0.111730,
		38.842716, 36.247162, 38.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329800, 35.653141, 38.925922>,  <38.689629, 35.568600, 38.612732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329800, 35.653141, 38.925922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.169231, 36.010452, 39.006836>,  <39.072891, 36.224838, 39.055386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.169231, 36.010452, 39.006836>,  <39.329800, 35.653141, 38.925922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169231, 36.010452, 39.006836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255914, -0.102671, 0.961232,
		0.879415, 0.437624, -0.187388,
		-0.401419, 0.893277, 0.202284,
		39.048805, 36.278435, 39.067520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733303, 35.841248, 39.383186>,  <39.329800, 35.653141, 38.925922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733303, 35.841248, 39.383186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419792, 36.082760, 39.441341>,  <39.231686, 36.227665, 39.476234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419792, 36.082760, 39.441341>,  <39.733303, 35.841248, 39.383186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419792, 36.082760, 39.441341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216860, 0.046709, 0.975084,
		0.581944, 0.795782, -0.167545,
		-0.783781, 0.603779, 0.145392,
		39.184658, 36.263893, 39.484959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952854, 36.324917, 39.906799>,  <39.733303, 35.841248, 39.383186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952854, 36.324917, 39.906799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.553551, 36.346416, 39.916584>,  <39.313969, 36.359318, 39.922455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.553551, 36.346416, 39.916584>,  <39.952854, 36.324917, 39.906799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553551, 36.346416, 39.916584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036873, 0.243770, 0.969132,
		0.046128, 0.968342, -0.245327,
		-0.998255, 0.053750, 0.024461,
		39.254074, 36.362541, 39.923923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800659, 36.787495, 40.310951>,  <39.952854, 36.324917, 39.906799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800659, 36.787495, 40.310951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.442379, 36.610794, 40.331268>,  <39.227413, 36.504772, 40.343460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.442379, 36.610794, 40.331268>,  <39.800659, 36.787495, 40.310951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442379, 36.610794, 40.331268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040011, 0.193840, 0.980217,
		-0.442861, 0.875945, -0.191297,
		-0.895697, -0.441754, 0.050797,
		39.173672, 36.478268, 40.346508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574661, 37.090176, 40.933277>,  <39.800659, 36.787495, 40.310951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574661, 37.090176, 40.933277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317337, 36.791359, 40.866253>,  <39.162945, 36.612068, 40.826038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317337, 36.791359, 40.866253>,  <39.574661, 37.090176, 40.933277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317337, 36.791359, 40.866253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194704, -0.052035, 0.979481,
		-0.740436, 0.662733, -0.111978,
		-0.643308, -0.747046, -0.167565,
		39.124344, 36.567245, 40.815983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859589, 37.281601, 41.202675>,  <39.574661, 37.090176, 40.933277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859589, 37.281601, 41.202675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913036, 36.885208, 41.198746>,  <38.945103, 36.647373, 41.196388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913036, 36.885208, 41.198746>,  <38.859589, 37.281601, 41.202675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913036, 36.885208, 41.198746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415203, -0.064974, 0.907406,
		-0.899863, -0.117167, -0.420141,
		0.133617, -0.990985, -0.009819,
		38.953121, 36.587914, 41.195801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310432, 37.096817, 41.670120>,  <38.859589, 37.281601, 41.202675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310432, 37.096817, 41.670120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524292, 36.759750, 41.644630>,  <38.652607, 36.557510, 41.629337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524292, 36.759750, 41.644630>,  <38.310432, 37.096817, 41.670120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524292, 36.759750, 41.644630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325675, -0.275033, 0.904595,
		-0.779802, -0.462885, -0.421482,
		0.534645, -0.842671, -0.063721,
		38.684685, 36.506950, 41.625515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905304, 36.545757, 41.909485>,  <38.310432, 37.096817, 41.670120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905304, 36.545757, 41.909485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263336, 36.372074, 41.950081>,  <38.478157, 36.267864, 41.974438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263336, 36.372074, 41.950081>,  <37.905304, 36.545757, 41.909485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263336, 36.372074, 41.950081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261756, -0.327381, 0.907912,
		-0.361001, -0.839215, -0.406689,
		0.895077, -0.434211, 0.101485,
		38.531860, 36.241814, 41.980526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782177, 35.918179, 42.204620>,  <37.905304, 36.545757, 41.909485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782177, 35.918179, 42.204620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161293, 36.017773, 42.284313>,  <38.388763, 36.077530, 42.332130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161293, 36.017773, 42.284313>,  <37.782177, 35.918179, 42.204620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161293, 36.017773, 42.284313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141141, -0.232695, 0.962254,
		0.285947, -0.940138, -0.185405,
		0.947794, 0.248985, 0.199231,
		38.445633, 36.092468, 42.344082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111706, 35.366989, 42.483200>,  <37.782177, 35.918179, 42.204620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111706, 35.366989, 42.483200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330002, 35.681522, 42.599026>,  <38.460979, 35.870243, 42.668522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330002, 35.681522, 42.599026>,  <38.111706, 35.366989, 42.483200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330002, 35.681522, 42.599026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259001, -0.170348, 0.950737,
		0.796924, -0.593851, 0.110695,
		0.545739, 0.786335, 0.289563,
		38.493725, 35.917423, 42.685894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490578, 35.186855, 43.094234>,  <38.111706, 35.366989, 42.483200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490578, 35.186855, 43.094234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478832, 35.584927, 43.131653>,  <38.471786, 35.823769, 43.154106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478832, 35.584927, 43.131653>,  <38.490578, 35.186855, 43.094234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478832, 35.584927, 43.131653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422098, -0.097180, 0.901326,
		0.906074, -0.013020, 0.422918,
		-0.029364, 0.995181, 0.093548,
		38.470024, 35.883480, 43.159718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685452, 35.225773, 43.813629>,  <38.490578, 35.186855, 43.094234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685452, 35.225773, 43.813629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539757, 35.580940, 43.701248>,  <38.452339, 35.794041, 43.633820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539757, 35.580940, 43.701248>,  <38.685452, 35.225773, 43.813629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539757, 35.580940, 43.701248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493482, 0.071830, 0.866785,
		0.789815, 0.454357, 0.412009,
		-0.364235, 0.887919, -0.280950,
		38.430485, 35.847317, 43.616962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940193, 35.730827, 44.267021>,  <38.685452, 35.225773, 43.813629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940193, 35.730827, 44.267021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592823, 35.862244, 44.118484>,  <38.384399, 35.941093, 44.029362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592823, 35.862244, 44.118484>,  <38.940193, 35.730827, 44.267021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592823, 35.862244, 44.118484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363108, 0.088575, 0.927527,
		0.337622, 0.940327, 0.042375,
		-0.868426, 0.328540, -0.371346,
		38.332294, 35.960804, 44.007080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727791, 36.274902, 44.732056>,  <38.940193, 35.730827, 44.267021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727791, 36.274902, 44.732056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386906, 36.180531, 44.545265>,  <38.182373, 36.123905, 44.433193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386906, 36.180531, 44.545265>,  <38.727791, 36.274902, 44.732056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386906, 36.180531, 44.545265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458516, -0.093061, 0.883800,
		-0.251973, 0.967304, -0.028871,
		-0.852216, -0.235932, -0.466973,
		38.131241, 36.109753, 44.405174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201385, 36.627609, 45.146385>,  <38.727791, 36.274902, 44.732056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201385, 36.627609, 45.146385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011536, 36.327770, 44.961849>,  <37.897625, 36.147869, 44.851128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011536, 36.327770, 44.961849>,  <38.201385, 36.627609, 45.146385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011536, 36.327770, 44.961849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592619, -0.115392, 0.797175,
		-0.650793, 0.651761, -0.389456,
		-0.474628, -0.749595, -0.461342,
		37.869148, 36.102890, 44.823448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.491261, 36.745338, 45.282726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512558, 36.361568, 45.171970>,  <37.525337, 36.131306, 45.105518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512558, 36.361568, 45.171970>,  <37.491261, 36.745338, 45.282726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512558, 36.361568, 45.171970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420409, -0.273045, 0.865276,
		-0.905771, 0.070337, -0.417889,
		0.053241, -0.959427, -0.276886,
		37.528530, 36.073742, 45.088905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770790, 36.525429, 45.248173>,  <37.491261, 36.745338, 45.282726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770790, 36.525429, 45.248173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974049, 36.182503, 45.281147>,  <37.096004, 35.976746, 45.300930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974049, 36.182503, 45.281147>,  <36.770790, 36.525429, 45.248173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974049, 36.182503, 45.281147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660114, -0.326201, 0.676640,
		-0.553203, -0.398251, -0.731685,
		0.508149, -0.857315, 0.082436,
		37.126495, 35.925308, 45.305878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269245, 35.956593, 45.369884>,  <36.770790, 36.525429, 45.248173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269245, 35.956593, 45.369884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602474, 35.788097, 45.513298>,  <36.802414, 35.687000, 45.599346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602474, 35.788097, 45.513298>,  <36.269245, 35.956593, 45.369884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602474, 35.788097, 45.513298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527850, -0.411565, 0.742960,
		-0.165401, -0.808193, -0.565214,
		0.833077, -0.421234, 0.358531,
		36.852398, 35.661728, 45.620857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990814, 35.260471, 45.515484>,  <36.269245, 35.956593, 45.369884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990814, 35.260471, 45.515484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.325638, 35.337200, 45.720440>,  <36.526531, 35.383236, 45.843414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.325638, 35.337200, 45.720440>,  <35.990814, 35.260471, 45.515484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325638, 35.337200, 45.720440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427297, -0.355696, 0.831203,
		0.341698, -0.914705, -0.215772,
		0.837054, 0.191822, 0.512391,
		36.576756, 35.394745, 45.874157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044529, 34.633518, 45.989197>,  <35.990814, 35.260471, 45.515484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044529, 34.633518, 45.989197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283108, 34.921703, 46.130718>,  <36.426254, 35.094616, 46.215633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283108, 34.921703, 46.130718>,  <36.044529, 34.633518, 45.989197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283108, 34.921703, 46.130718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248932, -0.253024, 0.934886,
		0.763076, -0.645683, 0.028432,
		0.596446, 0.720467, 0.353808,
		36.462040, 35.137844, 46.236862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411427, 34.344955, 46.478809>,  <36.044529, 34.633518, 45.989197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411427, 34.344955, 46.478809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.398079, 34.730453, 46.584698>,  <36.390072, 34.961754, 46.648232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.398079, 34.730453, 46.584698>,  <36.411427, 34.344955, 46.478809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398079, 34.730453, 46.584698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375172, -0.257575, 0.890450,
		0.926355, -0.069603, 0.370166,
		-0.033367, 0.963748, 0.264719,
		36.388069, 35.019577, 46.664112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660858, 34.386524, 47.148186>,  <36.411427, 34.344955, 46.478809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660858, 34.386524, 47.148186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467224, 34.735268, 47.118446>,  <36.351044, 34.944511, 47.100601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467224, 34.735268, 47.118446>,  <36.660858, 34.386524, 47.148186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467224, 34.735268, 47.118446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339390, -0.108766, 0.934336,
		0.806518, 0.477535, 0.348551,
		-0.484089, 0.871854, -0.074349,
		36.321999, 34.996822, 47.096142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855888, 34.655556, 47.687000>,  <36.660858, 34.386524, 47.148186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855888, 34.655556, 47.687000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522446, 34.863728, 47.612961>,  <36.322380, 34.988628, 47.568539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522446, 34.863728, 47.612961>,  <36.855888, 34.655556, 47.687000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522446, 34.863728, 47.612961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211738, 0.008436, 0.977290,
		0.510169, 0.853865, 0.103162,
		-0.833603, 0.520426, -0.185100,
		36.272366, 35.019855, 47.557430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841694, 35.158619, 48.087009>,  <36.855888, 34.655556, 47.687000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841694, 35.158619, 48.087009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451908, 35.124687, 48.003849>,  <36.218037, 35.104328, 47.953953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451908, 35.124687, 48.003849>,  <36.841694, 35.158619, 48.087009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451908, 35.124687, 48.003849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191257, -0.171555, 0.966431,
		-0.117646, 0.981516, 0.150950,
		-0.974464, -0.084826, -0.207904,
		36.159569, 35.099239, 47.941479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511154, 35.544613, 48.620342>,  <36.841694, 35.158619, 48.087009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511154, 35.544613, 48.620342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.234497, 35.288265, 48.487122>,  <36.068504, 35.134457, 48.407188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.234497, 35.288265, 48.487122>,  <36.511154, 35.544613, 48.620342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234497, 35.288265, 48.487122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214682, -0.257873, 0.942026,
		-0.689599, 0.723043, 0.040773,
		-0.691639, -0.640867, -0.333053,
		36.027004, 35.096004, 48.387207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941402, 35.562771, 49.115028>,  <36.511154, 35.544613, 48.620342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941402, 35.562771, 49.115028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899788, 35.206924, 48.937149>,  <35.874821, 34.993416, 48.830421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899788, 35.206924, 48.937149>,  <35.941402, 35.562771, 49.115028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899788, 35.206924, 48.937149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283982, -0.401942, 0.870515,
		-0.953169, 0.216853, -0.210819,
		-0.104037, -0.889617, -0.444701,
		35.868576, 34.940041, 48.803738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507305, 35.245770, 49.533424>,  <35.941402, 35.562771, 49.115028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507305, 35.245770, 49.533424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.636349, 34.940594, 49.309338>,  <35.713776, 34.757488, 49.174885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.636349, 34.940594, 49.309338>,  <35.507305, 35.245770, 49.533424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636349, 34.940594, 49.309338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059400, -0.607014, 0.792468,
		-0.944667, -0.222380, -0.241147,
		0.322608, -0.762943, -0.560217,
		35.733131, 34.711712, 49.141273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021717, 34.694687, 49.512512>,  <35.507305, 35.245770, 49.533424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021717, 34.694687, 49.512512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377445, 34.530445, 49.432003>,  <35.590881, 34.431900, 49.383698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377445, 34.530445, 49.432003>,  <35.021717, 34.694687, 49.512512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377445, 34.530445, 49.432003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053144, -0.529970, 0.846350,
		-0.454177, -0.741984, -0.493136,
		0.889325, -0.410600, -0.201268,
		35.644241, 34.407265, 49.371624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855495, 33.999580, 49.545101>,  <35.021717, 34.694687, 49.512512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855495, 33.999580, 49.545101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253239, 34.026367, 49.578022>,  <35.491882, 34.042439, 49.597775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253239, 34.026367, 49.578022>,  <34.855495, 33.999580, 49.545101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253239, 34.026367, 49.578022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014293, -0.684032, 0.729312,
		0.105136, -0.726372, -0.679213,
		0.994355, 0.066969, 0.082298,
		35.551544, 34.046459, 49.602711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032711, 33.392597, 49.750744>,  <34.855495, 33.999580, 49.545101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032711, 33.392597, 49.750744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399097, 33.538094, 49.818512>,  <35.618927, 33.625393, 49.859173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399097, 33.538094, 49.818512>,  <35.032711, 33.392597, 49.750744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399097, 33.538094, 49.818512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161199, -0.720207, 0.674772,
		0.367462, -0.590755, -0.718317,
		0.915962, 0.363745, 0.169420,
		35.673885, 33.647217, 49.869339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383694, 32.787647, 49.909275>,  <35.032711, 33.392597, 49.750744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383694, 32.787647, 49.909275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612434, 33.085384, 50.047226>,  <35.749680, 33.264027, 50.129997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612434, 33.085384, 50.047226>,  <35.383694, 32.787647, 49.909275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612434, 33.085384, 50.047226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115712, -0.489386, 0.864357,
		0.812157, -0.454375, -0.365985,
		0.571850, 0.744342, 0.344882,
		35.783989, 33.308685, 50.150692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122227, 32.525032, 50.182747>,  <35.383694, 32.787647, 49.909275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122227, 32.525032, 50.182747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001678, 32.854717, 50.374516>,  <35.929348, 33.052528, 50.489578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001678, 32.854717, 50.374516>,  <36.122227, 32.525032, 50.182747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001678, 32.854717, 50.374516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001814, -0.503295, 0.864113,
		0.953505, 0.259550, 0.153174,
		-0.301372, 0.824214, 0.479424,
		35.911266, 33.101982, 50.518341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549744, 32.616512, 50.776695>,  <36.122227, 32.525032, 50.182747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549744, 32.616512, 50.776695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189114, 32.784515, 50.818188>,  <35.972736, 32.885319, 50.843082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189114, 32.784515, 50.818188>,  <36.549744, 32.616512, 50.776695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189114, 32.784515, 50.818188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023885, -0.287719, 0.957417,
		0.431968, 0.860703, 0.269431,
		-0.901572, 0.420009, 0.103727,
		35.918640, 32.910519, 50.849304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424152, 32.511368, 51.443279>,  <36.549744, 32.616512, 50.776695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424152, 32.511368, 51.443279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069756, 32.673279, 51.352791>,  <35.857117, 32.770424, 51.298500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069756, 32.673279, 51.352791>,  <36.424152, 32.511368, 51.443279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069756, 32.673279, 51.352791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370293, -0.323963, 0.870592,
		0.279108, 0.855105, 0.436914,
		-0.885992, 0.404776, -0.226218,
		35.803959, 32.794712, 51.284924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160282, 33.047070, 52.009727>,  <36.424152, 32.511368, 51.443279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160282, 33.047070, 52.009727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851540, 32.887226, 51.811916>,  <35.666294, 32.791321, 51.693230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851540, 32.887226, 51.811916>,  <36.160282, 33.047070, 52.009727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851540, 32.887226, 51.811916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365076, -0.358241, 0.859292,
		-0.520536, 0.843789, 0.130625,
		-0.771856, -0.399604, -0.494524,
		35.619984, 32.767345, 51.663559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544571, 33.133652, 52.455238>,  <36.160282, 33.047070, 52.009727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544571, 33.133652, 52.455238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418995, 32.851116, 52.201458>,  <35.343651, 32.681595, 52.049191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418995, 32.851116, 52.201458>,  <35.544571, 33.133652, 52.455238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418995, 32.851116, 52.201458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449204, -0.478214, 0.754670,
		-0.836456, 0.521918, -0.167160,
		-0.313937, -0.706338, -0.634453,
		35.324814, 32.639214, 52.011124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185024, 32.768246, 52.839550>,  <35.544571, 33.133652, 52.455238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185024, 32.768246, 52.839550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144306, 32.518696, 52.529602>,  <35.119877, 32.368965, 52.343636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144306, 32.518696, 52.529602>,  <35.185024, 32.768246, 52.839550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144306, 32.518696, 52.529602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393082, -0.690304, 0.607427,
		-0.913851, 0.366419, -0.174963,
		-0.101795, -0.623873, -0.774868,
		35.113770, 32.331535, 52.297142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428173, 32.529354, 52.729404>,  <35.185024, 32.768246, 52.839550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428173, 32.529354, 52.729404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704269, 32.266243, 52.608814>,  <34.869926, 32.108376, 52.536461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704269, 32.266243, 52.608814>,  <34.428173, 32.529354, 52.729404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704269, 32.266243, 52.608814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344985, -0.665410, 0.661978,
		-0.636042, -0.352922, -0.686219,
		0.690244, -0.657781, -0.301476,
		34.911343, 32.068909, 52.518372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845379, 32.672504, 52.396805>,  <34.428173, 32.529354, 52.729404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845379, 32.672504, 52.396805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522713, 32.446499, 52.466145>,  <33.329113, 32.310894, 52.507748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522713, 32.446499, 52.466145>,  <33.845379, 32.672504, 52.396805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522713, 32.446499, 52.466145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480325, 0.455868, -0.749314,
		0.344348, -0.687710, -0.639124,
		-0.806667, -0.565013, 0.173347,
		33.280712, 32.276997, 52.518147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638618, 32.189857, 51.944481>,  <33.845379, 32.672504, 52.396805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638618, 32.189857, 51.944481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287018, 32.288242, 52.107872>,  <33.076057, 32.347275, 52.205906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287018, 32.288242, 52.107872>,  <33.638618, 32.189857, 51.944481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287018, 32.288242, 52.107872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223051, 0.545058, -0.808183,
		-0.421428, -0.801508, -0.424246,
		-0.879004, 0.245962, 0.408479,
		33.023315, 32.362030, 52.230415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215721, 32.015358, 51.465141>,  <33.638618, 32.189857, 51.944481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215721, 32.015358, 51.465141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991985, 32.252781, 51.696602>,  <32.857746, 32.395233, 51.835480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991985, 32.252781, 51.696602>,  <33.215721, 32.015358, 51.465141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991985, 32.252781, 51.696602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307768, 0.499465, -0.809823,
		-0.769690, -0.631053, -0.096691,
		-0.559335, 0.593555, 0.578651,
		32.824184, 32.430847, 51.870197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739605, 32.265301, 50.994560>,  <33.215721, 32.015358, 51.465141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739605, 32.265301, 50.994560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705154, 32.539318, 51.283916>,  <32.684483, 32.703728, 51.457531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705154, 32.539318, 51.283916>,  <32.739605, 32.265301, 50.994560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705154, 32.539318, 51.283916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194748, 0.700509, -0.686557,
		-0.977065, -0.200009, 0.073079,
		-0.086125, 0.685042, 0.723394,
		32.679317, 32.744831, 51.500935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056232, 32.629669, 50.879513>,  <32.739605, 32.265301, 50.994560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056232, 32.629669, 50.879513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.265476, 32.887878, 51.102097>,  <32.391022, 33.042805, 51.235649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.265476, 32.887878, 51.102097>,  <32.056232, 32.629669, 50.879513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265476, 32.887878, 51.102097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148131, 0.711852, -0.686530,
		-0.839291, 0.276704, 0.468001,
		0.523113, 0.645524, 0.556463,
		32.422409, 33.081535, 51.269035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712856, 33.361603, 50.888996>,  <32.056232, 32.629669, 50.879513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712856, 33.361603, 50.888996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091007, 33.436249, 50.995903>,  <32.317898, 33.481037, 51.060047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091007, 33.436249, 50.995903>,  <31.712856, 33.361603, 50.888996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091007, 33.436249, 50.995903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046086, 0.735151, -0.676336,
		-0.322697, 0.651711, 0.686396,
		0.945380, 0.186619, 0.267266,
		32.374622, 33.492233, 51.076084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739685, 34.010841, 50.717983>,  <31.712856, 33.361603, 50.888996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739685, 34.010841, 50.717983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124763, 33.910645, 50.758915>,  <32.355812, 33.850525, 50.783474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124763, 33.910645, 50.758915>,  <31.739685, 34.010841, 50.717983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124763, 33.910645, 50.758915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236674, 0.596180, -0.767174,
		0.131162, 0.762774, 0.633224,
		0.962695, -0.250491, 0.102332,
		32.413570, 33.835499, 50.789616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060932, 34.622448, 50.619987>,  <31.739685, 34.010841, 50.717983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060932, 34.622448, 50.619987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339630, 34.340916, 50.564598>,  <32.506847, 34.171997, 50.531364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339630, 34.340916, 50.564598>,  <32.060932, 34.622448, 50.619987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339630, 34.340916, 50.564598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388307, 0.532387, -0.752184,
		0.603129, 0.470310, 0.644239,
		0.696744, -0.703827, -0.138474,
		32.548653, 34.129768, 50.523056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574890, 34.971634, 50.430161>,  <32.060932, 34.622448, 50.619987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574890, 34.971634, 50.430161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680622, 34.608795, 50.299129>,  <32.744061, 34.391094, 50.220512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680622, 34.608795, 50.299129>,  <32.574890, 34.971634, 50.430161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680622, 34.608795, 50.299129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364213, 0.408397, -0.836995,
		0.893016, 0.101935, 0.438327,
		0.264331, -0.907095, -0.327579,
		32.759922, 34.336666, 50.200855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222511, 34.967403, 50.123207>,  <32.574890, 34.971634, 50.430161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222511, 34.967403, 50.123207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097942, 34.637691, 49.934071>,  <33.023201, 34.439865, 49.820587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097942, 34.637691, 49.934071>,  <33.222511, 34.967403, 50.123207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097942, 34.637691, 49.934071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324499, 0.375435, -0.868187,
		0.893151, -0.423809, 0.150559,
		-0.311420, -0.824278, -0.472846,
		33.004517, 34.390408, 49.792217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802727, 34.678627, 49.843956>,  <33.222511, 34.967403, 50.123207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802727, 34.678627, 49.843956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489933, 34.532059, 49.642265>,  <33.302258, 34.444118, 49.521252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489933, 34.532059, 49.642265>,  <33.802727, 34.678627, 49.843956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489933, 34.532059, 49.642265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419726, 0.288492, -0.860583,
		0.460802, -0.884594, -0.071798,
		-0.781979, -0.366423, -0.504225,
		33.255341, 34.422131, 49.490997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111996, 34.470119, 49.124218>,  <33.802727, 34.678627, 49.843956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111996, 34.470119, 49.124218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715004, 34.511414, 49.097908>,  <33.476810, 34.536190, 49.082123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715004, 34.511414, 49.097908>,  <34.111996, 34.470119, 49.124218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715004, 34.511414, 49.097908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098828, 0.358771, -0.928179,
		-0.072222, -0.927699, -0.366275,
		-0.992480, 0.103234, -0.065772,
		33.417259, 34.542385, 49.078178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945831, 34.168980, 48.523129>,  <34.111996, 34.470119, 49.124218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945831, 34.168980, 48.523129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.643661, 34.418800, 48.602386>,  <33.462360, 34.568695, 48.649940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.643661, 34.418800, 48.602386>,  <33.945831, 34.168980, 48.523129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643661, 34.418800, 48.602386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059641, 0.366686, -0.928431,
		-0.652514, -0.689544, -0.314254,
		-0.755426, 0.624556, 0.198142,
		33.417034, 34.606167, 48.661831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562920, 34.226334, 47.820393>,  <33.945831, 34.168980, 48.523129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562920, 34.226334, 47.820393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.412247, 34.514725, 48.053047>,  <33.321842, 34.687759, 48.192638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.412247, 34.514725, 48.053047>,  <33.562920, 34.226334, 47.820393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412247, 34.514725, 48.053047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069405, 0.604155, -0.793839,
		-0.923741, -0.339390, -0.177532,
		-0.376678, 0.720979, 0.581638,
		33.299244, 34.731018, 48.227539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801453, 34.492569, 47.726162>,  <33.562920, 34.226334, 47.820393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801453, 34.492569, 47.726162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.056873, 34.775604, 47.847198>,  <33.210125, 34.945427, 47.919823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.056873, 34.775604, 47.847198>,  <32.801453, 34.492569, 47.726162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056873, 34.775604, 47.847198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186016, 0.523451, -0.831503,
		-0.746759, 0.474671, 0.465874,
		0.638552, 0.707592, 0.302595,
		33.248440, 34.987881, 47.937977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899242, 34.972389, 47.190464>,  <32.801453, 34.492569, 47.726162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899242, 34.972389, 47.190464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147739, 35.193451, 47.412682>,  <33.296837, 35.326088, 47.546013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147739, 35.193451, 47.412682>,  <32.899242, 34.972389, 47.190464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147739, 35.193451, 47.412682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033700, 0.689450, -0.723549,
		-0.782896, 0.468219, 0.409689,
		0.621239, 0.552657, 0.555547,
		33.334110, 35.359249, 47.579346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706127, 35.550922, 47.051537>,  <32.899242, 34.972389, 47.190464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706127, 35.550922, 47.051537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060783, 35.633427, 47.217098>,  <33.273579, 35.682930, 47.316437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060783, 35.633427, 47.217098>,  <32.706127, 35.550922, 47.051537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060783, 35.633427, 47.217098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136802, 0.737982, -0.660808,
		-0.441754, 0.642525, 0.626111,
		0.886645, 0.206261, 0.413905,
		33.326778, 35.695305, 47.341270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843739, 36.378914, 47.118206>,  <32.706127, 35.550922, 47.051537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843739, 36.378914, 47.118206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202316, 36.202518, 47.135689>,  <33.417465, 36.096684, 47.146179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202316, 36.202518, 47.135689>,  <32.843739, 36.378914, 47.118206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202316, 36.202518, 47.135689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318845, 0.573362, -0.754714,
		0.307761, 0.690497, 0.654596,
		0.896449, -0.440987, 0.043703,
		33.471252, 36.070221, 47.148800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281425, 36.945141, 47.120872>,  <32.843739, 36.378914, 47.118206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281425, 36.945141, 47.120872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495247, 36.625843, 47.009834>,  <33.623539, 36.434265, 46.943211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495247, 36.625843, 47.009834>,  <33.281425, 36.945141, 47.120872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495247, 36.625843, 47.009834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339253, 0.503517, -0.794593,
		0.774053, 0.330577, 0.539963,
		0.534555, -0.798241, -0.277599,
		33.655613, 36.386372, 46.926556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930450, 37.174438, 46.912464>,  <33.281425, 36.945141, 47.120872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930450, 37.174438, 46.912464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864841, 36.832447, 46.715645>,  <33.825478, 36.627254, 46.597553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864841, 36.832447, 46.715645>,  <33.930450, 37.174438, 46.912464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864841, 36.832447, 46.715645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229671, 0.452002, -0.861943,
		0.959348, -0.254386, 0.122226,
		-0.164020, -0.854975, -0.492052,
		33.815636, 36.575954, 46.568027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566624, 37.049843, 46.542229>,  <33.930450, 37.174438, 46.912464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566624, 37.049843, 46.542229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.301563, 36.811352, 46.360939>,  <34.142529, 36.668259, 46.252167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.301563, 36.811352, 46.360939>,  <34.566624, 37.049843, 46.542229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301563, 36.811352, 46.360939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289471, 0.354230, -0.889229,
		0.690726, -0.720442, -0.062140,
		-0.662649, -0.596226, -0.453223,
		34.102768, 36.632484, 46.224972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.529877, 42.686489, 30.985447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303493, 42.866066, 31.262039>,  <44.167664, 42.973812, 31.427994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303493, 42.866066, 31.262039>,  <44.529877, 42.686489, 30.985447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303493, 42.866066, 31.262039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215605, -0.890141, 0.401451,
		0.795743, 0.078118, 0.600576,
		-0.565958, 0.448939, 0.691481,
		44.133705, 43.000748, 31.469484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808918, 42.522728, 31.749853>,  <44.529877, 42.686489, 30.985447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808918, 42.522728, 31.749853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423481, 42.621357, 31.791222>,  <44.192219, 42.680534, 31.816042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423481, 42.621357, 31.791222>,  <44.808918, 42.522728, 31.749853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423481, 42.621357, 31.791222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179741, -0.883684, 0.432199,
		0.197962, 0.397873, 0.895828,
		-0.963589, 0.246576, 0.103422,
		44.134403, 42.695328, 31.822248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683922, 42.399368, 32.479591>,  <44.808918, 42.522728, 31.749853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683922, 42.399368, 32.479591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336494, 42.389202, 32.281624>,  <44.128036, 42.383102, 32.162842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336494, 42.389202, 32.281624>,  <44.683922, 42.399368, 32.479591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336494, 42.389202, 32.281624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328441, -0.718324, 0.613300,
		-0.371102, 0.695244, 0.615564,
		-0.868568, -0.025420, -0.494918,
		44.075924, 42.381577, 32.133148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046253, 42.409878, 33.058483>,  <44.683922, 42.399368, 32.479591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046253, 42.409878, 33.058483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920094, 42.252251, 32.713177>,  <43.844398, 42.157673, 32.505993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920094, 42.252251, 32.713177>,  <44.046253, 42.409878, 33.058483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920094, 42.252251, 32.713177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248493, -0.843663, 0.475904,
		-0.915846, 0.364616, 0.168168,
		-0.315399, -0.394067, -0.863270,
		43.825474, 42.134029, 32.454197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436035, 42.097679, 33.226025>,  <44.046253, 42.409878, 33.058483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436035, 42.097679, 33.226025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.551346, 41.916134, 32.888763>,  <43.620533, 41.807205, 32.686409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.551346, 41.916134, 32.888763>,  <43.436035, 42.097679, 33.226025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551346, 41.916134, 32.888763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110486, -0.890417, 0.441532,
		-0.951151, -0.034128, -0.306833,
		0.288279, -0.453865, -0.843150,
		43.637829, 41.779976, 32.635818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941441, 41.461349, 33.235256>,  <43.436035, 42.097679, 33.226025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941441, 41.461349, 33.235256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222565, 41.387539, 32.960445>,  <43.391239, 41.343254, 32.795559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222565, 41.387539, 32.960445>,  <42.941441, 41.461349, 33.235256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222565, 41.387539, 32.960445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104325, -0.982065, 0.157046,
		-0.703685, -0.038700, -0.709457,
		0.702811, -0.184525, -0.687027,
		43.433407, 41.332180, 32.754337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690750, 41.008488, 32.815044>,  <42.941441, 41.461349, 33.235256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690750, 41.008488, 32.815044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077255, 40.941219, 32.737022>,  <43.309158, 40.900860, 32.690208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077255, 40.941219, 32.737022>,  <42.690750, 41.008488, 32.815044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077255, 40.941219, 32.737022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099658, -0.942526, 0.318926,
		-0.237482, -0.288728, -0.927490,
		0.966266, -0.168171, -0.195059,
		43.367134, 40.890766, 32.678505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682377, 40.412350, 32.654690>,  <42.690750, 41.008488, 32.815044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682377, 40.412350, 32.654690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074154, 40.454971, 32.723213>,  <43.309219, 40.480545, 32.764328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074154, 40.454971, 32.723213>,  <42.682377, 40.412350, 32.654690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074154, 40.454971, 32.723213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024940, -0.906580, 0.421297,
		0.200194, -0.408363, -0.890597,
		0.979439, 0.106553, 0.171307,
		43.367985, 40.486938, 32.774605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073601, 39.817265, 32.339436>,  <42.682377, 40.412350, 32.654690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073601, 39.817265, 32.339436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.264984, 39.989586, 32.645504>,  <43.379814, 40.092979, 32.829147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.264984, 39.989586, 32.645504>,  <43.073601, 39.817265, 32.339436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264984, 39.989586, 32.645504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032221, -0.879412, 0.474971,
		0.877521, -0.202598, -0.434639,
		0.478455, 0.430801, 0.765174,
		43.408520, 40.118828, 32.875057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628422, 39.415600, 32.441448>,  <43.073601, 39.817265, 32.339436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628422, 39.415600, 32.441448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576290, 39.612804, 32.785530>,  <43.545013, 39.731125, 32.991982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576290, 39.612804, 32.785530>,  <43.628422, 39.415600, 32.441448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576290, 39.612804, 32.785530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112482, -0.869359, 0.481210,
		0.985070, -0.034043, 0.168754,
		-0.130326, 0.493008, 0.860208,
		43.537193, 39.760708, 33.043594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997131, 39.025505, 33.009285>,  <43.628422, 39.415600, 32.441448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997131, 39.025505, 33.009285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755878, 39.265335, 33.219711>,  <43.611126, 39.409233, 33.345966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755878, 39.265335, 33.219711>,  <43.997131, 39.025505, 33.009285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755878, 39.265335, 33.219711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021993, -0.671769, 0.740434,
		0.797339, 0.435008, 0.418351,
		-0.603130, 0.599578, 0.526061,
		43.574940, 39.445210, 33.377529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256226, 39.024933, 33.743736>,  <43.997131, 39.025505, 33.009285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256226, 39.024933, 33.743736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870186, 39.129353, 33.752090>,  <43.638561, 39.192005, 33.757103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870186, 39.129353, 33.752090>,  <44.256226, 39.024933, 33.743736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870186, 39.129353, 33.752090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200174, -0.786752, 0.583910,
		0.168860, 0.559351, 0.811550,
		-0.965099, 0.261050, 0.020883,
		43.580658, 39.207668, 33.758354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001720, 38.852161, 34.440090>,  <44.256226, 39.024933, 33.743736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001720, 38.852161, 34.440090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674839, 38.888966, 34.212509>,  <43.478710, 38.911049, 34.075962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674839, 38.888966, 34.212509>,  <44.001720, 38.852161, 34.440090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674839, 38.888966, 34.212509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388582, -0.817017, 0.426012,
		-0.425646, 0.569225, 0.703426,
		-0.817208, 0.092008, -0.568951,
		43.429676, 38.916569, 34.041824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462185, 38.607510, 34.931168>,  <44.001720, 38.852161, 34.440090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462185, 38.607510, 34.931168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.302589, 38.613796, 34.564438>,  <43.206833, 38.617569, 34.344402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.302589, 38.613796, 34.564438>,  <43.462185, 38.607510, 34.931168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302589, 38.613796, 34.564438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568987, -0.788320, 0.234105,
		-0.719069, 0.615065, 0.323474,
		-0.398991, 0.015715, -0.916820,
		43.182892, 38.618511, 34.289391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749763, 38.555302, 35.031620>,  <43.462185, 38.607510, 34.931168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749763, 38.555302, 35.031620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840649, 38.427284, 34.663719>,  <42.895180, 38.350471, 34.442978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840649, 38.427284, 34.663719>,  <42.749763, 38.555302, 35.031620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840649, 38.427284, 34.663719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580933, -0.802552, 0.135750,
		-0.781595, 0.503470, -0.368276,
		0.227214, -0.320045, -0.919753,
		42.908813, 38.331272, 34.387794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077198, 38.351715, 34.830967>,  <42.749763, 38.555302, 35.031620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077198, 38.351715, 34.830967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.356968, 38.161793, 34.617290>,  <42.524830, 38.047840, 34.489086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.356968, 38.161793, 34.617290>,  <42.077198, 38.351715, 34.830967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356968, 38.161793, 34.617290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393357, -0.879778, 0.266948,
		-0.596716, 0.023415, -0.802111,
		0.699429, -0.474808, -0.534188,
		42.566795, 38.019352, 34.457035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688480, 37.704098, 34.628757>,  <42.077198, 38.351715, 34.830967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688480, 37.704098, 34.628757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072979, 37.624245, 34.552700>,  <42.303677, 37.576332, 34.507065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072979, 37.624245, 34.552700>,  <41.688480, 37.704098, 34.628757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072979, 37.624245, 34.552700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141318, -0.948972, 0.281924,
		-0.236721, -0.244127, -0.940407,
		0.961245, -0.199634, -0.190142,
		42.361351, 37.564354, 34.495659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757408, 37.199818, 34.168064>,  <41.688480, 37.704098, 34.628757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757408, 37.199818, 34.168064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084286, 37.174946, 34.397266>,  <42.280411, 37.160023, 34.534786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084286, 37.174946, 34.397266>,  <41.757408, 37.199818, 34.168064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084286, 37.174946, 34.397266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232806, -0.945065, 0.229464,
		0.527256, -0.320914, -0.786775,
		0.817192, -0.062179, 0.573002,
		42.329445, 37.156292, 34.569168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178246, 36.629150, 33.870098>,  <41.757408, 37.199818, 34.168064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178246, 36.629150, 33.870098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286785, 36.668941, 34.253029>,  <42.351910, 36.692814, 34.482788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286785, 36.668941, 34.253029>,  <42.178246, 36.629150, 33.870098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286785, 36.668941, 34.253029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255117, -0.951634, 0.171196,
		0.928053, -0.290684, -0.232851,
		0.271353, 0.099475, 0.957326,
		42.368191, 36.698784, 34.540226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614365, 36.104679, 34.021130>,  <42.178246, 36.629150, 33.870098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614365, 36.104679, 34.021130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493912, 36.214249, 34.386486>,  <42.421638, 36.279991, 34.605701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493912, 36.214249, 34.386486>,  <42.614365, 36.104679, 34.021130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493912, 36.214249, 34.386486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226858, -0.950932, 0.210388,
		0.926205, -0.143856, 0.348498,
		-0.301132, 0.273922, 0.913393,
		42.403572, 36.296425, 34.660503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847160, 35.524998, 34.391270>,  <42.614365, 36.104679, 34.021130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847160, 35.524998, 34.391270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.607777, 35.714046, 34.650028>,  <42.464146, 35.827477, 34.805283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.607777, 35.714046, 34.650028>,  <42.847160, 35.524998, 34.391270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607777, 35.714046, 34.650028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265716, -0.878845, 0.396265,
		0.755805, 0.065259, 0.651537,
		-0.598460, 0.472623, 0.646895,
		42.428238, 35.855835, 34.844097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615654, 35.293556, 34.495632>,  <42.847160, 35.524998, 34.391270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615654, 35.293556, 34.495632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993641, 35.162689, 34.494919>,  <44.220432, 35.084167, 34.494492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993641, 35.162689, 34.494919>,  <43.615654, 35.293556, 34.495632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993641, 35.162689, 34.494919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306676, 0.887647, -0.343559,
		0.113986, 0.324104, 0.939129,
		0.944964, -0.327169, -0.001784,
		44.277130, 35.064537, 34.494385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014553, 35.821346, 34.675014>,  <43.615654, 35.293556, 34.495632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014553, 35.821346, 34.675014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305824, 35.605209, 34.506355>,  <44.480587, 35.475525, 34.405159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305824, 35.605209, 34.506355>,  <44.014553, 35.821346, 34.675014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305824, 35.605209, 34.506355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394888, 0.833578, -0.386278,
		0.560197, 0.114777, 0.820369,
		0.728178, -0.540346, -0.421644,
		44.524277, 35.443104, 34.379864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554688, 36.054420, 34.896858>,  <44.014553, 35.821346, 34.675014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554688, 36.054420, 34.896858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.681908, 35.903786, 34.548828>,  <44.758240, 35.813404, 34.340012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.681908, 35.903786, 34.548828>,  <44.554688, 36.054420, 34.896858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681908, 35.903786, 34.548828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544884, 0.823625, -0.157299,
		0.775850, -0.424058, 0.467153,
		0.318055, -0.376585, -0.870072,
		44.777325, 35.790810, 34.287807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255722, 36.078167, 34.993332>,  <44.554688, 36.054420, 34.896858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255722, 36.078167, 34.993332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217964, 36.054157, 34.595844>,  <45.195309, 36.039749, 34.357349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217964, 36.054157, 34.595844>,  <45.255722, 36.078167, 34.993332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217964, 36.054157, 34.595844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523626, 0.845959, -0.100843,
		0.846703, -0.529858, -0.048416,
		-0.094390, -0.060032, -0.993724,
		45.189644, 36.036148, 34.297726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837158, 36.119453, 34.681442>,  <45.255722, 36.078167, 34.993332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837158, 36.119453, 34.681442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598186, 36.232986, 34.381439>,  <45.454803, 36.301105, 34.201435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598186, 36.232986, 34.381439>,  <45.837158, 36.119453, 34.681442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598186, 36.232986, 34.381439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627246, 0.748119, -0.216519,
		0.499641, -0.599795, -0.624984,
		-0.597430, 0.283837, -0.750010,
		45.418957, 36.318138, 34.156437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267960, 36.425224, 34.314114>,  <45.837158, 36.119453, 34.681442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267960, 36.425224, 34.314114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.923340, 36.546032, 34.150890>,  <45.716568, 36.618519, 34.052956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.923340, 36.546032, 34.150890>,  <46.267960, 36.425224, 34.314114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923340, 36.546032, 34.150890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379104, 0.917350, -0.121450,
		0.337651, -0.259332, -0.904842,
		-0.861552, 0.302021, -0.408058,
		45.664875, 36.636639, 34.028473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468742, 36.639454, 33.545918>,  <46.267960, 36.425224, 34.314114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468742, 36.639454, 33.545918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.137974, 36.831703, 33.662682>,  <45.939514, 36.947052, 33.732738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.137974, 36.831703, 33.662682>,  <46.468742, 36.639454, 33.545918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.137974, 36.831703, 33.662682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334811, 0.837886, -0.431101,
		-0.451783, -0.258751, -0.853780,
		-0.826918, 0.480619, 0.291911,
		45.889900, 36.975887, 33.750256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187412, 37.004856, 32.889874>,  <46.468742, 36.639454, 33.545918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187412, 37.004856, 32.889874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025497, 37.176384, 33.212925>,  <45.928349, 37.279301, 33.406757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025497, 37.176384, 33.212925>,  <46.187412, 37.004856, 32.889874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025497, 37.176384, 33.212925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218270, 0.903003, -0.370058,
		-0.887980, 0.026488, -0.459120,
		-0.404785, 0.428817, 0.807630,
		45.904060, 37.305031, 33.455215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797798, 37.561199, 32.671604>,  <46.187412, 37.004856, 32.889874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797798, 37.561199, 32.671604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875530, 37.656864, 33.052139>,  <45.922169, 37.714264, 33.280460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875530, 37.656864, 33.052139>,  <45.797798, 37.561199, 32.671604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875530, 37.656864, 33.052139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195715, 0.940871, -0.276509,
		-0.961214, 0.239924, 0.136030,
		0.194328, 0.239161, 0.951335,
		45.933830, 37.728611, 33.337540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596127, 38.251183, 32.690907>,  <45.797798, 37.561199, 32.671604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596127, 38.251183, 32.690907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.802502, 38.230125, 33.032909>,  <45.926327, 38.217491, 33.238110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.802502, 38.230125, 33.032909>,  <45.596127, 38.251183, 32.690907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.802502, 38.230125, 33.032909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162212, 0.986055, -0.037172,
		-0.841129, 0.157871, 0.517281,
		0.515936, -0.052643, 0.855008,
		45.957283, 38.214333, 33.289413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251595, 38.728432, 33.126244>,  <45.596127, 38.251183, 32.690907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251595, 38.728432, 33.126244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.636898, 38.668514, 33.215416>,  <45.868080, 38.632565, 33.268917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.636898, 38.668514, 33.215416>,  <45.251595, 38.728432, 33.126244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636898, 38.668514, 33.215416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148501, 0.988653, 0.022640,
		-0.223789, 0.011297, 0.974572,
		0.963258, -0.149791, 0.222927,
		45.925877, 38.623577, 33.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438087, 39.388271, 33.372330>,  <45.251595, 38.728432, 33.126244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438087, 39.388271, 33.372330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.799664, 39.217228, 33.375160>,  <46.016609, 39.114601, 33.376858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.799664, 39.217228, 33.375160>,  <45.438087, 39.388271, 33.372330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799664, 39.217228, 33.375160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426513, 0.900159, -0.088323,
		0.031394, 0.082859, 0.996067,
		0.903937, -0.427608, 0.007080,
		46.070843, 39.088947, 33.377285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841045, 39.747082, 33.848373>,  <45.438087, 39.388271, 33.372330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841045, 39.747082, 33.848373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106010, 39.582039, 33.598267>,  <46.264992, 39.483013, 33.448204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106010, 39.582039, 33.598267>,  <45.841045, 39.747082, 33.848373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106010, 39.582039, 33.598267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420958, 0.895429, -0.144918,
		0.619675, -0.167214, 0.766839,
		0.662417, -0.412610, -0.625265,
		46.304737, 39.458256, 33.410686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.587715, 40.082516, 33.948963>,  <45.841045, 39.747082, 33.848373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.587715, 40.082516, 33.948963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609913, 39.926231, 33.581429>,  <46.623230, 39.832462, 33.360909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609913, 39.926231, 33.581429>,  <46.587715, 40.082516, 33.948963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609913, 39.926231, 33.581429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481993, 0.816413, -0.318045,
		0.874416, -0.425225, 0.233626,
		0.055494, -0.390710, -0.918840,
		46.626560, 39.809017, 33.305775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.314293, 40.181778, 33.651432>,  <46.587715, 40.082516, 33.948963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.314293, 40.181778, 33.651432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.099388, 40.117561, 33.320232>,  <46.970448, 40.079033, 33.121513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.099388, 40.117561, 33.320232>,  <47.314293, 40.181778, 33.651432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.099388, 40.117561, 33.320232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379212, 0.830912, -0.407166,
		0.753358, -0.532740, -0.385538,
		-0.537261, -0.160541, -0.827995,
		46.938210, 40.069397, 33.071835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.788113, 40.212753, 33.148190>,  <47.314293, 40.181778, 33.651432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.788113, 40.212753, 33.148190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.431343, 40.270493, 32.976784>,  <47.217281, 40.305138, 32.873940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.431343, 40.270493, 32.976784>,  <47.788113, 40.212753, 33.148190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431343, 40.270493, 32.976784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349273, 0.821810, -0.450153,
		0.287182, -0.551174, -0.783412,
		-0.891928, 0.144349, -0.428518,
		47.163765, 40.313797, 32.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.936005, 40.467876, 32.548660>,  <47.788113, 40.212753, 33.148190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.936005, 40.467876, 32.548660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.554916, 40.584335, 32.583420>,  <47.326263, 40.654213, 32.604275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.554916, 40.584335, 32.583420>,  <47.936005, 40.467876, 32.548660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.554916, 40.584335, 32.583420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218265, 0.854767, -0.470886,
		-0.211381, -0.429656, -0.877903,
		-0.952721, 0.291152, 0.086903,
		47.269100, 40.671680, 32.609489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721058, 40.814007, 31.914982>,  <47.936005, 40.467876, 32.548660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721058, 40.814007, 31.914982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.453125, 40.979446, 32.161644>,  <47.292366, 41.078709, 32.309643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.453125, 40.979446, 32.161644>,  <47.721058, 40.814007, 31.914982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.453125, 40.979446, 32.161644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157719, 0.890797, -0.426153,
		-0.725571, -0.188191, -0.661914,
		-0.669829, 0.413601, 0.616655,
		47.252174, 41.103527, 32.346642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.407196, 41.378597, 31.568676>,  <47.721058, 40.814007, 31.914982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.407196, 41.378597, 31.568676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.279228, 41.446018, 31.941608>,  <47.202446, 41.486469, 32.165367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.279228, 41.446018, 31.941608>,  <47.407196, 41.378597, 31.568676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.279228, 41.446018, 31.941608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052770, 0.985691, -0.160090,
		-0.945973, -0.002017, -0.324239,
		-0.319923, 0.168551, 0.932330,
		47.183250, 41.496582, 32.221306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935020, 41.801601, 31.450235>,  <47.407196, 41.378597, 31.568676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935020, 41.801601, 31.450235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.044094, 41.867390, 31.829412>,  <47.109539, 41.906864, 32.056919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.044094, 41.867390, 31.829412>,  <46.935020, 41.801601, 31.450235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.044094, 41.867390, 31.829412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064664, 0.979919, -0.188622,
		-0.959928, 0.112731, 0.256572,
		0.272684, 0.164472, 0.947941,
		47.125900, 41.916733, 32.113796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540188, 42.324757, 31.647655>,  <46.935020, 41.801601, 31.450235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540188, 42.324757, 31.647655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.861439, 42.338226, 31.885595>,  <47.054192, 42.346310, 32.028358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.861439, 42.338226, 31.885595>,  <46.540188, 42.324757, 31.647655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861439, 42.338226, 31.885595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022405, 0.999402, -0.026324,
		-0.595382, 0.007814, 0.803405,
		0.803131, 0.033673, 0.594851,
		47.102379, 42.348328, 32.064049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.664494, 36.424885, 42.552711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299599, 36.275684, 42.484951>,  <39.080662, 36.186165, 42.444294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299599, 36.275684, 42.484951>,  <39.664494, 36.424885, 42.552711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299599, 36.275684, 42.484951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166401, 0.040495, -0.985226,
		0.374352, -0.926946, 0.025127,
		-0.912235, -0.373003, -0.169404,
		39.025928, 36.163784, 42.434132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761372, 35.883362, 42.034370>,  <39.664494, 36.424885, 42.552711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761372, 35.883362, 42.034370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375275, 35.986786, 42.019108>,  <39.143616, 36.048840, 42.009949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375275, 35.986786, 42.019108>,  <39.761372, 35.883362, 42.034370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375275, 35.986786, 42.019108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044085, 0.017150, -0.998881,
		-0.257622, -0.965841, -0.027953,
		-0.965240, 0.258565, -0.038161,
		39.085701, 36.064354, 42.007660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478512, 35.417084, 41.510685>,  <39.761372, 35.883362, 42.034370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478512, 35.417084, 41.510685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250023, 35.742664, 41.552998>,  <39.112930, 35.938011, 41.578384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250023, 35.742664, 41.552998>,  <39.478512, 35.417084, 41.510685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250023, 35.742664, 41.552998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059493, 0.087484, -0.994388,
		-0.818636, -0.574311, -0.001549,
		-0.571223, 0.813949, 0.105785,
		39.078655, 35.986851, 41.584732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886028, 35.286919, 41.154263>,  <39.478512, 35.417084, 41.510685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886028, 35.286919, 41.154263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933140, 35.683449, 41.177605>,  <38.961407, 35.921368, 41.191612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933140, 35.683449, 41.177605>,  <38.886028, 35.286919, 41.154263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933140, 35.683449, 41.177605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090281, 0.047836, -0.994767,
		-0.988928, 0.122429, -0.083864,
		0.117777, 0.991324, 0.058359,
		38.968472, 35.980846, 41.195114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394161, 35.506901, 40.549263>,  <38.886028, 35.286919, 41.154263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394161, 35.506901, 40.549263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634064, 35.815586, 40.633884>,  <38.778008, 36.000797, 40.684658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634064, 35.815586, 40.633884>,  <38.394161, 35.506901, 40.549263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634064, 35.815586, 40.633884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033815, 0.288587, -0.956856,
		-0.799465, 0.566731, 0.199178,
		0.599760, 0.771709, 0.211551,
		38.813992, 36.047100, 40.697350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974537, 35.999439, 40.372211>,  <38.394161, 35.506901, 40.549263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974537, 35.999439, 40.372211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355072, 36.122353, 40.362919>,  <38.583393, 36.196098, 40.357346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355072, 36.122353, 40.362919>,  <37.974537, 35.999439, 40.372211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355072, 36.122353, 40.362919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077367, 0.165198, -0.983221,
		-0.298286, 0.937171, 0.180932,
		0.951336, 0.307280, -0.023230,
		38.640472, 36.214535, 40.355949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991905, 36.569767, 39.923698>,  <37.974537, 35.999439, 40.372211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991905, 36.569767, 39.923698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381554, 36.481804, 39.902794>,  <38.615341, 36.429028, 39.890251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381554, 36.481804, 39.902794>,  <37.991905, 36.569767, 39.923698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381554, 36.481804, 39.902794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023107, 0.133098, -0.990834,
		0.224845, 0.966399, 0.124572,
		0.974121, -0.219905, -0.052257,
		38.673790, 36.415833, 39.887115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172230, 37.107624, 39.584705>,  <37.991905, 36.569767, 39.923698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172230, 37.107624, 39.584705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480808, 36.855576, 39.549339>,  <38.665955, 36.704346, 39.528122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480808, 36.855576, 39.549339>,  <38.172230, 37.107624, 39.584705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480808, 36.855576, 39.549339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048189, 0.196410, -0.979337,
		0.634463, 0.751249, 0.181885,
		0.771450, -0.630118, -0.088412,
		38.712242, 36.666538, 39.522816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618614, 37.469261, 39.105019>,  <38.172230, 37.107624, 39.584705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618614, 37.469261, 39.105019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755470, 37.093441, 39.099514>,  <38.837585, 36.867950, 39.096210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755470, 37.093441, 39.099514>,  <38.618614, 37.469261, 39.105019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755470, 37.093441, 39.099514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312748, 0.127675, -0.941216,
		0.886075, 0.317725, 0.337525,
		0.342141, -0.939548, -0.013762,
		38.858112, 36.811577, 39.095387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318718, 37.460739, 38.735954>,  <38.618614, 37.469261, 39.105019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318718, 37.460739, 38.735954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183247, 37.084393, 38.732510>,  <39.101963, 36.858585, 38.730442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183247, 37.084393, 38.732510>,  <39.318718, 37.460739, 38.735954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183247, 37.084393, 38.732510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250803, -0.081454, -0.964605,
		0.906861, -0.328848, 0.263558,
		-0.338676, -0.940864, -0.008608,
		39.081642, 36.802132, 38.729927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847752, 37.038124, 38.481792>,  <39.318718, 37.460739, 38.735954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847752, 37.038124, 38.481792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504143, 36.849838, 38.401279>,  <39.297977, 36.736866, 38.352970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504143, 36.849838, 38.401279>,  <39.847752, 37.038124, 38.481792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504143, 36.849838, 38.401279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276802, -0.096300, -0.956090,
		0.430660, -0.877015, 0.213017,
		-0.859019, -0.470713, -0.201287,
		39.246437, 36.708626, 38.340893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005932, 36.562420, 38.034199>,  <39.847752, 37.038124, 38.481792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005932, 36.562420, 38.034199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611801, 36.560982, 37.965935>,  <39.375324, 36.560120, 37.924976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611801, 36.560982, 37.965935>,  <40.005932, 36.562420, 38.034199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611801, 36.560982, 37.965935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170675, -0.037827, -0.984601,
		-0.002906, -0.999278, 0.037887,
		-0.985323, -0.003605, -0.170662,
		39.316204, 36.559902, 37.914738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906586, 36.036663, 37.597275>,  <40.005932, 36.562420, 38.034199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906586, 36.036663, 37.597275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587139, 36.272587, 37.549374>,  <39.395473, 36.414143, 37.520634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587139, 36.272587, 37.549374>,  <39.906586, 36.036663, 37.597275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587139, 36.272587, 37.549374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074626, -0.100398, -0.992145,
		-0.597199, -0.801278, 0.036164,
		-0.798614, 0.589809, -0.119754,
		39.347553, 36.449528, 37.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012199, 35.410313, 37.142521>,  <39.906586, 36.036663, 37.597275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012199, 35.410313, 37.142521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947845, 35.177757, 36.823498>,  <39.909233, 35.038223, 36.632084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947845, 35.177757, 36.823498>,  <40.012199, 35.410313, 37.142521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947845, 35.177757, 36.823498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535913, -0.627123, 0.565256,
		-0.828803, 0.518362, -0.210682,
		-0.160884, -0.581393, -0.797558,
		39.899582, 35.003338, 36.584229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264874, 35.364674, 37.128769>,  <40.012199, 35.410313, 37.142521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264874, 35.364674, 37.128769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510387, 35.072418, 37.009148>,  <39.657696, 34.897064, 36.937374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510387, 35.072418, 37.009148>,  <39.264874, 35.364674, 37.128769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510387, 35.072418, 37.009148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513546, -0.657214, 0.551671,
		-0.599612, -0.185033, -0.778607,
		0.613788, -0.730639, -0.299050,
		39.694523, 34.853226, 36.919434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861279, 34.901489, 37.066334>,  <39.264874, 35.364674, 37.128769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861279, 34.901489, 37.066334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204224, 34.700371, 37.110386>,  <39.409992, 34.579700, 37.136818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204224, 34.700371, 37.110386>,  <38.861279, 34.901489, 37.066334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204224, 34.700371, 37.110386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409696, -0.537107, 0.737336,
		-0.311574, -0.677286, -0.666488,
		0.857362, -0.502792, 0.110133,
		39.461433, 34.549534, 37.143425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668880, 34.336143, 37.007816>,  <38.861279, 34.901489, 37.066334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668880, 34.336143, 37.007816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014656, 34.290600, 37.203686>,  <39.222122, 34.263275, 37.321205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014656, 34.290600, 37.203686>,  <38.668880, 34.336143, 37.007816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014656, 34.290600, 37.203686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454384, -0.593722, 0.664101,
		0.215116, -0.796575, -0.564972,
		0.864442, -0.113856, 0.489670,
		39.273987, 34.256443, 37.350586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722942, 33.632973, 37.109138>,  <38.668880, 34.336143, 37.007816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722942, 33.632973, 37.109138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004581, 33.761070, 37.362656>,  <39.173565, 33.837929, 37.514767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004581, 33.761070, 37.362656>,  <38.722942, 33.632973, 37.109138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004581, 33.761070, 37.362656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279138, -0.695868, 0.661703,
		0.652942, -0.642817, -0.400566,
		0.704095, 0.320240, 0.633796,
		39.215809, 33.857143, 37.552795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064217, 32.997169, 37.352600>,  <38.722942, 33.632973, 37.109138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064217, 32.997169, 37.352600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107979, 33.294903, 37.616116>,  <39.134235, 33.473541, 37.774223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107979, 33.294903, 37.616116>,  <39.064217, 32.997169, 37.352600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107979, 33.294903, 37.616116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459566, -0.549797, 0.697511,
		0.881380, -0.379064, 0.281922,
		0.109401, 0.744334, 0.658785,
		39.140800, 33.518204, 37.813751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428204, 32.725899, 37.892067>,  <39.064217, 32.997169, 37.352600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428204, 32.725899, 37.892067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223160, 33.036266, 38.039139>,  <39.100136, 33.222485, 38.127384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223160, 33.036266, 38.039139>,  <39.428204, 32.725899, 37.892067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223160, 33.036266, 38.039139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419783, -0.600030, 0.680989,
		0.749011, 0.194731, 0.633295,
		-0.512606, 0.775915, 0.367684,
		39.069378, 33.269039, 38.149445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503544, 32.595211, 38.567272>,  <39.428204, 32.725899, 37.892067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503544, 32.595211, 38.567272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198090, 32.853363, 38.559959>,  <39.014816, 33.008255, 38.555573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198090, 32.853363, 38.559959>,  <39.503544, 32.595211, 38.567272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198090, 32.853363, 38.559959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471259, -0.537806, 0.699056,
		0.441327, 0.542443, 0.714833,
		-0.763640, 0.645384, -0.018283,
		38.968998, 33.046978, 38.554474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336266, 32.824287, 39.321766>,  <39.503544, 32.595211, 38.567272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336266, 32.824287, 39.321766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016529, 32.896896, 39.092644>,  <38.824688, 32.940460, 38.955170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016529, 32.896896, 39.092644>,  <39.336266, 32.824287, 39.321766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016529, 32.896896, 39.092644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590133, -0.416644, 0.691485,
		-0.113135, 0.890762, 0.440163,
		-0.799339, 0.181523, -0.572805,
		38.776726, 32.951355, 38.920803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829857, 33.075027, 39.793507>,  <39.336266, 32.824287, 39.321766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829857, 33.075027, 39.793507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639378, 32.948608, 39.465275>,  <38.525089, 32.872757, 39.268337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639378, 32.948608, 39.465275>,  <38.829857, 33.075027, 39.793507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639378, 32.948608, 39.465275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738315, -0.363170, 0.568330,
		-0.477630, 0.876482, -0.060403,
		-0.476194, -0.316048, -0.820581,
		38.496521, 32.853794, 39.219101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261047, 33.346802, 39.834999>,  <38.829857, 33.075027, 39.793507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261047, 33.346802, 39.834999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197239, 33.044857, 39.580521>,  <38.158955, 32.863689, 39.427834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197239, 33.044857, 39.580521>,  <38.261047, 33.346802, 39.834999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197239, 33.044857, 39.580521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739896, -0.335207, 0.583258,
		-0.653533, 0.563761, -0.505042,
		-0.159524, -0.754858, -0.636194,
		38.149384, 32.818401, 39.389664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568562, 33.371365, 39.779526>,  <38.261047, 33.346802, 39.834999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568562, 33.371365, 39.779526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676437, 33.006828, 39.655128>,  <37.741165, 32.788105, 39.580490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676437, 33.006828, 39.655128>,  <37.568562, 33.371365, 39.779526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676437, 33.006828, 39.655128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750092, -0.401343, 0.525630,
		-0.603845, 0.091516, -0.791831,
		0.269692, -0.911344, -0.310995,
		37.757343, 32.733425, 39.561829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937408, 33.101017, 39.830875>,  <37.568562, 33.371365, 39.779526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937408, 33.101017, 39.830875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189159, 32.793362, 39.786491>,  <37.340210, 32.608768, 39.759861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189159, 32.793362, 39.786491>,  <36.937408, 33.101017, 39.830875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189159, 32.793362, 39.786491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607369, -0.575948, 0.547163,
		-0.484750, -0.276979, -0.829639,
		0.629381, -0.769133, -0.110963,
		37.377975, 32.562622, 39.753201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639137, 32.502789, 39.677029>,  <36.937408, 33.101017, 39.830875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639137, 32.502789, 39.677029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966919, 32.340492, 39.838951>,  <37.163589, 32.243114, 39.936104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966919, 32.340492, 39.838951>,  <36.639137, 32.502789, 39.677029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966919, 32.340492, 39.838951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573138, -0.577834, 0.581051,
		-0.001843, -0.708156, -0.706053,
		0.819457, -0.405737, 0.404806,
		37.212757, 32.218773, 39.960392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474731, 31.866995, 39.761951>,  <36.639137, 32.502789, 39.677029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474731, 31.866995, 39.761951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785385, 31.924063, 40.007385>,  <36.971775, 31.958303, 40.154648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785385, 31.924063, 40.007385>,  <36.474731, 31.866995, 39.761951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785385, 31.924063, 40.007385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526053, -0.388982, 0.756281,
		0.346573, -0.910131, -0.227043,
		0.776630, 0.142670, 0.613588,
		37.018375, 31.966864, 40.191463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462097, 31.139763, 39.485424>,  <36.474731, 31.866995, 39.761951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462097, 31.139763, 39.485424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130157, 30.950653, 39.366879>,  <35.930992, 30.837187, 39.295753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130157, 30.950653, 39.366879>,  <36.462097, 31.139763, 39.485424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130157, 30.950653, 39.366879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109068, 0.383445, -0.917101,
		0.547219, -0.793382, -0.266639,
		-0.829853, -0.472773, -0.296361,
		35.881203, 30.808821, 39.277969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635815, 30.892439, 38.897972>,  <36.462097, 31.139763, 39.485424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635815, 30.892439, 38.897972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236401, 30.873917, 38.886776>,  <35.996754, 30.862803, 38.880058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236401, 30.873917, 38.886776>,  <36.635815, 30.892439, 38.897972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236401, 30.873917, 38.886776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000137, 0.515108, -0.857125,
		0.054105, -0.855874, -0.514347,
		-0.998535, -0.046305, -0.027987,
		35.936840, 30.860025, 38.878380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445473, 30.647659, 38.231190>,  <36.635815, 30.892439, 38.897972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445473, 30.647659, 38.231190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116760, 30.849913, 38.336277>,  <35.919533, 30.971264, 38.399330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116760, 30.849913, 38.336277>,  <36.445473, 30.647659, 38.231190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116760, 30.849913, 38.336277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066320, 0.373049, -0.925438,
		-0.565937, -0.777927, -0.273030,
		-0.821776, 0.505633, 0.262715,
		35.870228, 31.001602, 38.415092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928123, 30.562435, 37.672874>,  <36.445473, 30.647659, 38.231190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928123, 30.562435, 37.672874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849354, 30.894821, 37.880997>,  <35.802094, 31.094252, 38.005871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849354, 30.894821, 37.880997>,  <35.928123, 30.562435, 37.672874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849354, 30.894821, 37.880997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058363, 0.519823, -0.852278,
		-0.978680, -0.198201, -0.053869,
		-0.196925, 0.830964, 0.520307,
		35.790276, 31.144110, 38.037090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456104, 30.803921, 37.199036>,  <35.928123, 30.562435, 37.672874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456104, 30.803921, 37.199036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545074, 31.101254, 37.451382>,  <35.598457, 31.279654, 37.602787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545074, 31.101254, 37.451382>,  <35.456104, 30.803921, 37.199036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545074, 31.101254, 37.451382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071592, 0.632871, -0.770940,
		-0.972318, 0.216640, 0.087549,
		0.222424, 0.743331, 0.630861,
		35.611801, 31.324253, 37.640640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051952, 31.287853, 36.939251>,  <35.456104, 30.803921, 37.199036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051952, 31.287853, 36.939251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317371, 31.490580, 37.159374>,  <35.476624, 31.612215, 37.291447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317371, 31.490580, 37.159374>,  <35.051952, 31.287853, 36.939251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317371, 31.490580, 37.159374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009958, 0.729529, -0.683878,
		-0.748066, 0.459267, 0.479032,
		0.663550, 0.506815, 0.550309,
		35.516438, 31.642624, 37.324467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734299, 31.949142, 37.006931>,  <35.051952, 31.287853, 36.939251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734299, 31.949142, 37.006931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130241, 31.972820, 37.058598>,  <35.367805, 31.987028, 37.089596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130241, 31.972820, 37.058598>,  <34.734299, 31.949142, 37.006931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130241, 31.972820, 37.058598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060280, 0.648228, -0.759057,
		-0.128660, 0.759142, 0.638083,
		0.989855, 0.059197, 0.129162,
		35.427197, 31.990580, 37.097347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802185, 32.646702, 37.102867>,  <34.734299, 31.949142, 37.006931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802185, 32.646702, 37.102867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177925, 32.531727, 37.028034>,  <35.403370, 32.462742, 36.983135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177925, 32.531727, 37.028034>,  <34.802185, 32.646702, 37.102867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177925, 32.531727, 37.028034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068989, 0.692712, -0.717907,
		0.335948, 0.661460, 0.670529,
		0.939350, -0.287439, -0.187082,
		35.459732, 32.445496, 36.971909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197018, 33.274666, 37.075218>,  <34.802185, 32.646702, 37.102867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197018, 33.274666, 37.075218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398426, 33.005795, 36.858097>,  <35.519272, 32.844471, 36.727825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398426, 33.005795, 36.858097>,  <35.197018, 33.274666, 37.075218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398426, 33.005795, 36.858097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012293, 0.622618, -0.782429,
		0.863893, 0.400645, 0.305241,
		0.503525, -0.672183, -0.542801,
		35.549484, 32.804138, 36.695255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686447, 33.693306, 36.834991>,  <35.197018, 33.274666, 37.075218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686447, 33.693306, 36.834991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767567, 33.391994, 36.584728>,  <35.816238, 33.211208, 36.434570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767567, 33.391994, 36.584728>,  <35.686447, 33.693306, 36.834991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767567, 33.391994, 36.584728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022953, 0.635100, -0.772090,
		0.978952, 0.170937, 0.111505,
		0.202795, -0.753279, -0.625656,
		35.828403, 33.166012, 36.397030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296371, 33.973732, 36.429100>,  <35.686447, 33.693306, 36.834991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296371, 33.973732, 36.429100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115398, 33.677479, 36.230396>,  <36.006817, 33.499725, 36.111176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115398, 33.677479, 36.230396>,  <36.296371, 33.973732, 36.429100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115398, 33.677479, 36.230396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023586, 0.546897, -0.836868,
		0.891489, -0.390338, -0.229962,
		-0.452427, -0.740635, -0.496759,
		35.979671, 33.455288, 36.081367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632263, 33.942726, 35.796196>,  <36.296371, 33.973732, 36.429100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632263, 33.942726, 35.796196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303593, 33.733742, 35.705093>,  <36.106388, 33.608349, 35.650433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303593, 33.733742, 35.705093>,  <36.632263, 33.942726, 35.796196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303593, 33.733742, 35.705093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011409, 0.384448, -0.923076,
		0.569836, -0.761071, -0.309932,
		-0.821679, -0.522466, -0.227755,
		36.057087, 33.577003, 35.636768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.996567, 28.258768, 42.354523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659744, 28.466143, 42.294979>,  <35.457649, 28.590569, 42.259254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659744, 28.466143, 42.294979>,  <35.996567, 28.258768, 42.354523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659744, 28.466143, 42.294979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248053, 0.127150, -0.960366,
		-0.478964, -0.845609, -0.235668,
		-0.842059, 0.518439, -0.148855,
		35.407127, 28.621674, 42.250324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855522, 28.148499, 41.675751>,  <35.996567, 28.258768, 42.354523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855522, 28.148499, 41.675751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581818, 28.434296, 41.734104>,  <35.417595, 28.605774, 41.769115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581818, 28.434296, 41.734104>,  <35.855522, 28.148499, 41.675751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581818, 28.434296, 41.734104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066942, 0.260745, -0.963084,
		-0.726154, -0.649239, -0.226249,
		-0.684265, 0.714493, 0.145880,
		35.376537, 28.648643, 41.777866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357773, 28.207985, 41.094967>,  <35.855522, 28.148499, 41.675751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357773, 28.207985, 41.094967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.334549, 28.577875, 41.245438>,  <35.320614, 28.799809, 41.335720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.334549, 28.577875, 41.245438>,  <35.357773, 28.207985, 41.094967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334549, 28.577875, 41.245438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033180, 0.374820, -0.926503,
		-0.997762, -0.066273, 0.008921,
		-0.058058, 0.924725, 0.376180,
		35.317131, 28.855293, 41.358292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809910, 28.649929, 40.646561>,  <35.357773, 28.207985, 41.094967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809910, 28.649929, 40.646561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036804, 28.909840, 40.848961>,  <35.172939, 29.065786, 40.970402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036804, 28.909840, 40.848961>,  <34.809910, 28.649929, 40.646561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036804, 28.909840, 40.848961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006690, 0.610754, -0.791792,
		-0.823530, 0.452516, 0.342093,
		0.567233, 0.649776, 0.506002,
		35.206974, 29.104773, 41.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578106, 29.355495, 40.389370>,  <34.809910, 28.649929, 40.646561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578106, 29.355495, 40.389370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.914986, 29.457466, 40.579403>,  <35.117115, 29.518648, 40.693424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.914986, 29.457466, 40.579403>,  <34.578106, 29.355495, 40.389370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914986, 29.457466, 40.579403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181068, 0.696248, -0.694589,
		-0.507845, 0.671008, 0.540224,
		0.842204, 0.254927, 0.475084,
		35.167648, 29.533943, 40.721928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487938, 30.067648, 40.569767>,  <34.578106, 29.355495, 40.389370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487938, 30.067648, 40.569767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.883072, 30.005800, 40.563145>,  <35.120152, 29.968691, 40.559170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.883072, 30.005800, 40.563145>,  <34.487938, 30.067648, 40.569767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883072, 30.005800, 40.563145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089699, 0.653552, -0.751548,
		0.127028, 0.740920, 0.659471,
		0.987835, -0.154621, -0.016560,
		35.179424, 29.959414, 40.558178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773460, 30.728910, 40.548187>,  <34.487938, 30.067648, 40.569767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773460, 30.728910, 40.548187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064095, 30.481647, 40.428223>,  <35.238476, 30.333290, 40.356243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064095, 30.481647, 40.428223>,  <34.773460, 30.728910, 40.548187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064095, 30.481647, 40.428223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224437, 0.626103, -0.746742,
		0.649382, 0.475263, 0.593657,
		0.726589, -0.618159, -0.299914,
		35.282070, 30.296200, 40.338249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339718, 31.141129, 40.312576>,  <34.773460, 30.728910, 40.548187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339718, 31.141129, 40.312576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391026, 30.779835, 40.148766>,  <35.421810, 30.563059, 40.050480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391026, 30.779835, 40.148766>,  <35.339718, 31.141129, 40.312576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391026, 30.779835, 40.148766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243090, 0.428974, -0.869993,
		0.961485, 0.012041, 0.274592,
		0.128269, -0.903237, -0.409525,
		35.429504, 30.508863, 40.025909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985355, 31.128609, 40.119942>,  <35.339718, 31.141129, 40.312576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985355, 31.128609, 40.119942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.821007, 30.860609, 39.872623>,  <35.722397, 30.699810, 39.724232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.821007, 30.860609, 39.872623>,  <35.985355, 31.128609, 40.119942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821007, 30.860609, 39.872623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383726, 0.488099, -0.783909,
		0.827006, -0.559342, 0.056550,
		-0.410871, -0.669997, -0.618295,
		35.697746, 30.659611, 39.687134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388016, 31.299013, 40.572643>,  <35.985355, 31.128609, 40.119942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388016, 31.299013, 40.572643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678993, 31.563120, 40.647346>,  <36.853580, 31.721584, 40.692169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678993, 31.563120, 40.647346>,  <36.388016, 31.299013, 40.572643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678993, 31.563120, 40.647346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336156, 0.105648, 0.935862,
		0.598187, -0.743564, 0.298805,
		0.727441, 0.660266, 0.186757,
		36.897224, 31.761200, 40.703373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789242, 31.065474, 41.109791>,  <36.388016, 31.299013, 40.572643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789242, 31.065474, 41.109791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852711, 31.460308, 41.118591>,  <36.890793, 31.697208, 41.123871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852711, 31.460308, 41.118591>,  <36.789242, 31.065474, 41.109791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852711, 31.460308, 41.118591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187113, 0.008180, 0.982304,
		0.969439, -0.159980, 0.185995,
		0.158670, 0.987086, 0.022004,
		36.900311, 31.756433, 41.125191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148109, 31.182888, 41.723560>,  <36.789242, 31.065474, 41.109791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148109, 31.182888, 41.723560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001553, 31.548775, 41.655380>,  <36.913620, 31.768307, 41.614471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001553, 31.548775, 41.655380>,  <37.148109, 31.182888, 41.723560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001553, 31.548775, 41.655380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077437, 0.152582, 0.985252,
		0.927234, 0.374184, 0.014928,
		-0.366388, 0.914716, -0.170455,
		36.891636, 31.823189, 41.604244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524395, 31.606247, 42.221073>,  <37.148109, 31.182888, 41.723560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524395, 31.606247, 42.221073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200775, 31.815563, 42.114037>,  <37.006603, 31.941153, 42.049816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200775, 31.815563, 42.114037>,  <37.524395, 31.606247, 42.221073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200775, 31.815563, 42.114037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106993, 0.316547, 0.942524,
		0.577920, 0.791179, -0.200114,
		-0.809050, 0.523292, -0.267589,
		36.958061, 31.972551, 42.033760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664471, 32.185345, 42.522728>,  <37.524395, 31.606247, 42.221073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664471, 32.185345, 42.522728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277687, 32.222511, 42.427769>,  <37.045616, 32.244812, 42.370792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277687, 32.222511, 42.427769>,  <37.664471, 32.185345, 42.522728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277687, 32.222511, 42.427769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180935, 0.405876, 0.895839,
		0.179594, 0.909193, -0.375653,
		-0.966958, 0.092918, -0.237398,
		36.987598, 32.250385, 42.356548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474205, 32.904324, 42.660267>,  <37.664471, 32.185345, 42.522728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474205, 32.904324, 42.660267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166878, 32.649044, 42.679817>,  <36.982483, 32.495876, 42.691547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166878, 32.649044, 42.679817>,  <37.474205, 32.904324, 42.660267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166878, 32.649044, 42.679817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237161, 0.354771, 0.904374,
		-0.594508, 0.683257, -0.423933,
		-0.768319, -0.638198, 0.048872,
		36.936382, 32.457584, 42.694477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967266, 33.311230, 42.907658>,  <37.474205, 32.904324, 42.660267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967266, 33.311230, 42.907658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.832336, 32.940037, 42.970993>,  <36.751381, 32.717323, 43.008995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.832336, 32.940037, 42.970993>,  <36.967266, 33.311230, 42.907658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832336, 32.940037, 42.970993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283867, 0.260635, 0.922762,
		-0.897572, 0.266319, -0.351340,
		-0.337321, -0.927978, 0.158340,
		36.731140, 32.661644, 43.018494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279114, 33.410976, 43.143341>,  <36.967266, 33.311230, 42.907658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279114, 33.410976, 43.143341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.415218, 33.050957, 43.252247>,  <36.496883, 32.834946, 43.317589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.415218, 33.050957, 43.252247>,  <36.279114, 33.410976, 43.143341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415218, 33.050957, 43.252247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358918, 0.143303, 0.922303,
		-0.869136, -0.411547, -0.274284,
		0.340265, -0.900052, 0.272261,
		36.517300, 32.780941, 43.333923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704769, 33.085796, 43.471752>,  <36.279114, 33.410976, 43.143341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704769, 33.085796, 43.471752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035748, 32.898674, 43.596008>,  <36.234333, 32.786400, 43.670563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035748, 32.898674, 43.596008>,  <35.704769, 33.085796, 43.471752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035748, 32.898674, 43.596008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303655, 0.092582, 0.948273,
		-0.472364, -0.878971, -0.065444,
		0.827445, -0.467803, 0.310636,
		36.283981, 32.758331, 43.689198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545975, 32.663780, 44.081184>,  <35.704769, 33.085796, 43.471752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545975, 32.663780, 44.081184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943146, 32.683865, 44.124203>,  <36.181450, 32.695915, 44.150013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943146, 32.683865, 44.124203>,  <35.545975, 32.663780, 44.081184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943146, 32.683865, 44.124203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104687, -0.056417, 0.992904,
		0.055929, -0.997144, -0.050761,
		0.992932, 0.050218, 0.107543,
		36.241024, 32.698929, 44.156467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728142, 32.106239, 44.634827>,  <35.545975, 32.663780, 44.081184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728142, 32.106239, 44.634827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070419, 32.311790, 44.610451>,  <36.275787, 32.435120, 44.595825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070419, 32.311790, 44.610451>,  <35.728142, 32.106239, 44.634827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070419, 32.311790, 44.610451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148308, -0.130705, 0.980266,
		0.495768, -0.847850, -0.188056,
		0.855698, 0.513874, -0.060944,
		36.327129, 32.465954, 44.592167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289608, 31.686974, 44.984489>,  <35.728142, 32.106239, 44.634827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289608, 31.686974, 44.984489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385517, 32.075180, 44.974602>,  <36.443062, 32.308105, 44.968670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385517, 32.075180, 44.974602>,  <36.289608, 31.686974, 44.984489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385517, 32.075180, 44.974602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274121, -0.043250, 0.960722,
		0.931326, -0.237129, -0.276408,
		0.239770, 0.970515, -0.024722,
		36.457447, 32.366333, 44.967186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913574, 31.671181, 45.317627>,  <36.289608, 31.686974, 44.984489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913574, 31.671181, 45.317627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726921, 32.023243, 45.352463>,  <36.614929, 32.234478, 45.373363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726921, 32.023243, 45.352463>,  <36.913574, 31.671181, 45.317627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726921, 32.023243, 45.352463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013891, -0.105745, 0.994296,
		0.884342, 0.462761, 0.061570,
		-0.466632, 0.880153, 0.087087,
		36.586933, 32.287289, 45.378590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126724, 31.937241, 45.920532>,  <36.913574, 31.671181, 45.317627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126724, 31.937241, 45.920532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822929, 32.186935, 45.847321>,  <36.640652, 32.336754, 45.803394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822929, 32.186935, 45.847321>,  <37.126724, 31.937241, 45.920532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822929, 32.186935, 45.847321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316599, -0.108917, 0.942286,
		0.568276, 0.773604, 0.280355,
		-0.759491, 0.624239, -0.183027,
		36.595081, 32.374207, 45.792412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.063494, 34.964725, 46.040035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.417727, 34.837212, 45.904907>,  <30.630266, 34.760704, 45.823830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.417727, 34.837212, 45.904907>,  <30.063494, 34.964725, 46.040035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417727, 34.837212, 45.904907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117778, 0.857644, -0.500575,
		0.449305, 0.403512, 0.797059,
		0.885581, -0.318787, -0.337819,
		30.683401, 34.741577, 45.803562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457281, 35.611736, 45.990204>,  <30.063494, 34.964725, 46.040035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457281, 35.611736, 45.990204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.622120, 35.336674, 45.751106>,  <30.721024, 35.171635, 45.607647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.622120, 35.336674, 45.751106>,  <30.457281, 35.611736, 45.990204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622120, 35.336674, 45.751106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189178, 0.706323, -0.682144,
		0.891284, 0.168030, 0.421164,
		0.412099, -0.687659, -0.597746,
		30.745749, 35.130375, 45.571781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120943, 35.877174, 45.669441>,  <30.457281, 35.611736, 45.990204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120943, 35.877174, 45.669441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998220, 35.587456, 45.422455>,  <30.924587, 35.413624, 45.274261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998220, 35.587456, 45.422455>,  <31.120943, 35.877174, 45.669441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998220, 35.587456, 45.422455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154153, 0.602372, -0.783189,
		0.939205, -0.335473, -0.073159,
		-0.306807, -0.724297, -0.617465,
		30.906178, 35.370167, 45.237217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605831, 35.898048, 45.140331>,  <31.120943, 35.877174, 45.669441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605831, 35.898048, 45.140331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.316290, 35.669666, 44.985386>,  <31.142565, 35.532639, 44.892418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.316290, 35.669666, 44.985386>,  <31.605831, 35.898048, 45.140331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316290, 35.669666, 44.985386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251037, 0.305011, -0.918667,
		0.642666, -0.762221, -0.077452,
		-0.723852, -0.570953, -0.387366,
		31.099134, 35.498379, 44.869175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899370, 35.390530, 44.698193>,  <31.605831, 35.898048, 45.140331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899370, 35.390530, 44.698193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518553, 35.454498, 44.593857>,  <31.290062, 35.492878, 44.531258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518553, 35.454498, 44.593857>,  <31.899370, 35.390530, 44.698193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518553, 35.454498, 44.593857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290767, 0.207642, -0.933991,
		-0.095202, -0.965045, -0.244184,
		-0.952046, 0.159918, -0.260835,
		31.232939, 35.502472, 44.515606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863344, 35.144894, 44.090279>,  <31.899370, 35.390530, 44.698193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863344, 35.144894, 44.090279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.533772, 35.370949, 44.107006>,  <31.336027, 35.506584, 44.117043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.533772, 35.370949, 44.107006>,  <31.863344, 35.144894, 44.090279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533772, 35.370949, 44.107006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170091, 0.317018, -0.933043,
		-0.540558, -0.761652, -0.357327,
		-0.823933, 0.565142, 0.041816,
		31.286592, 35.540493, 44.119553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585249, 35.059036, 43.386230>,  <31.863344, 35.144894, 44.090279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585249, 35.059036, 43.386230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422173, 35.393860, 43.532177>,  <31.324327, 35.594753, 43.619743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422173, 35.393860, 43.532177>,  <31.585249, 35.059036, 43.386230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422173, 35.393860, 43.532177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144651, 0.453739, -0.879316,
		-0.901590, -0.305711, -0.306066,
		-0.407691, 0.837055, 0.364865,
		31.299866, 35.644978, 43.641636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027359, 35.205841, 42.992348>,  <31.585249, 35.059036, 43.386230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027359, 35.205841, 42.992348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.097628, 35.561455, 43.161469>,  <31.139790, 35.774822, 43.262939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.097628, 35.561455, 43.161469>,  <31.027359, 35.205841, 42.992348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097628, 35.561455, 43.161469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214909, 0.384490, -0.897765,
		-0.960704, 0.248578, -0.123516,
		0.175674, 0.889031, 0.422803,
		31.150330, 35.828163, 43.288311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725031, 35.670261, 42.538929>,  <31.027359, 35.205841, 42.992348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725031, 35.670261, 42.538929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006371, 35.867805, 42.743439>,  <31.175175, 35.986332, 42.866146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006371, 35.867805, 42.743439>,  <30.725031, 35.670261, 42.538929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006371, 35.867805, 42.743439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400115, 0.319439, -0.858992,
		-0.587546, 0.808738, 0.027074,
		0.703347, 0.493864, 0.511273,
		31.217375, 36.015965, 42.896820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753080, 36.267181, 42.116333>,  <30.725031, 35.670261, 42.538929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753080, 36.267181, 42.116333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.074814, 36.267212, 42.354004>,  <31.267853, 36.267231, 42.496609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.074814, 36.267212, 42.354004>,  <30.753080, 36.267181, 42.116333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074814, 36.267212, 42.354004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582721, 0.195339, -0.788846,
		-0.116129, 0.980736, 0.157071,
		0.804332, 0.000079, 0.594180,
		31.316113, 36.267235, 42.532257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033356, 36.851452, 41.867153>,  <30.753080, 36.267181, 42.116333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033356, 36.851452, 41.867153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.325943, 36.642818, 42.042835>,  <31.501495, 36.517639, 42.148247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.325943, 36.642818, 42.042835>,  <31.033356, 36.851452, 41.867153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325943, 36.642818, 42.042835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582040, 0.142041, -0.800658,
		0.355226, 0.841292, 0.407482,
		0.731467, -0.521585, 0.439209,
		31.545383, 36.486343, 42.174599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683342, 37.256924, 41.805859>,  <31.033356, 36.851452, 41.867153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683342, 37.256924, 41.805859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790064, 36.874786, 41.856670>,  <31.854097, 36.645504, 41.887157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790064, 36.874786, 41.856670>,  <31.683342, 37.256924, 41.805859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790064, 36.874786, 41.856670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711531, 0.106362, -0.694559,
		0.650031, 0.275694, 0.708133,
		0.266804, -0.955343, 0.127026,
		31.870106, 36.588184, 41.894779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395985, 37.217209, 41.966328>,  <31.683342, 37.256924, 41.805859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395985, 37.217209, 41.966328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287827, 36.867916, 41.804161>,  <32.222931, 36.658340, 41.706863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287827, 36.867916, 41.804161>,  <32.395985, 37.217209, 41.966328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287827, 36.867916, 41.804161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738823, 0.081781, -0.668918,
		0.617273, -0.480402, 0.623048,
		-0.270396, -0.873227, -0.405413,
		32.206707, 36.605949, 41.682537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947308, 37.186855, 41.610592>,  <32.395985, 37.217209, 41.966328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947308, 37.186855, 41.610592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.713394, 36.887825, 41.484627>,  <32.573048, 36.708408, 41.409046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.713394, 36.887825, 41.484627>,  <32.947308, 37.186855, 41.610592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713394, 36.887825, 41.484627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266929, 0.189254, -0.944951,
		0.766017, -0.636647, 0.088876,
		-0.584779, -0.747572, -0.314911,
		32.537960, 36.663555, 41.390152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489189, 36.761696, 41.814228>,  <32.947308, 37.186855, 41.610592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489189, 36.761696, 41.814228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863136, 36.810394, 41.947617>,  <34.087505, 36.839611, 42.027649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.863136, 36.810394, 41.947617>,  <33.489189, 36.761696, 41.814228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863136, 36.810394, 41.947617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266600, -0.379496, 0.885950,
		0.234410, -0.917148, -0.322321,
		0.934867, 0.121745, 0.333469,
		34.143597, 36.846916, 42.047657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646706, 36.146862, 42.227402>,  <33.489189, 36.761696, 41.814228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646706, 36.146862, 42.227402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912384, 36.417992, 42.353504>,  <34.071793, 36.580669, 42.429165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912384, 36.417992, 42.353504>,  <33.646706, 36.146862, 42.227402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912384, 36.417992, 42.353504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213591, -0.232063, 0.948960,
		0.716392, -0.697635, -0.009359,
		0.664200, 0.677829, 0.315257,
		34.111645, 36.621342, 42.448082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103497, 35.813385, 42.772861>,  <33.646706, 36.146862, 42.227402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103497, 35.813385, 42.772861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148327, 36.204731, 42.842422>,  <34.175224, 36.439537, 42.884159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148327, 36.204731, 42.842422>,  <34.103497, 35.813385, 42.772861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148327, 36.204731, 42.842422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027553, -0.178001, 0.983644,
		0.993317, -0.105451, -0.046906,
		0.112076, 0.978364, 0.173906,
		34.181950, 36.498241, 42.894596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622959, 35.884289, 43.391048>,  <34.103497, 35.813385, 42.772861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622959, 35.884289, 43.391048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395741, 36.212948, 43.372253>,  <34.259407, 36.410145, 43.360977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395741, 36.212948, 43.372253>,  <34.622959, 35.884289, 43.391048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395741, 36.212948, 43.372253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002589, 0.058883, 0.998262,
		0.822989, 0.566941, -0.035576,
		-0.568051, 0.821651, -0.046992,
		34.225327, 36.459442, 43.358154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971260, 36.315910, 43.902969>,  <34.622959, 35.884289, 43.391048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971260, 36.315910, 43.902969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.617710, 36.484825, 43.822540>,  <34.405579, 36.586174, 43.774284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.617710, 36.484825, 43.822540>,  <34.971260, 36.315910, 43.902969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617710, 36.484825, 43.822540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058473, 0.326757, 0.943298,
		0.464045, 0.845519, -0.264121,
		-0.883879, 0.422289, -0.201070,
		34.352547, 36.611511, 43.762218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967506, 37.118153, 44.102692>,  <34.971260, 36.315910, 43.902969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967506, 37.118153, 44.102692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598209, 36.964462, 44.103199>,  <34.376633, 36.872250, 44.103504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598209, 36.964462, 44.103199>,  <34.967506, 37.118153, 44.102692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598209, 36.964462, 44.103199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175090, 0.423662, 0.888737,
		-0.342010, 0.820295, -0.458416,
		-0.923240, -0.384221, 0.001271,
		34.321236, 36.849197, 44.103580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563766, 37.568455, 44.626095>,  <34.967506, 37.118153, 44.102692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563766, 37.568455, 44.626095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337978, 37.245964, 44.555252>,  <34.202503, 37.052471, 44.512745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337978, 37.245964, 44.555252>,  <34.563766, 37.568455, 44.626095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337978, 37.245964, 44.555252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338780, 0.030615, 0.940368,
		-0.752728, 0.590813, -0.290415,
		-0.564472, -0.806228, -0.177111,
		34.168636, 37.004097, 44.502117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991848, 37.614769, 45.061428>,  <34.563766, 37.568455, 44.626095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991848, 37.614769, 45.061428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988857, 37.221024, 44.991039>,  <33.987064, 36.984776, 44.948807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988857, 37.221024, 44.991039>,  <33.991848, 37.614769, 45.061428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988857, 37.221024, 44.991039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240978, -0.169015, 0.955701,
		-0.970502, 0.049546, -0.235948,
		-0.007472, -0.984367, -0.175969,
		33.986614, 36.925713, 44.938248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419147, 37.345222, 45.576836>,  <33.991848, 37.614769, 45.061428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419147, 37.345222, 45.576836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643620, 37.036339, 45.457653>,  <33.778301, 36.851009, 45.386143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643620, 37.036339, 45.457653>,  <33.419147, 37.345222, 45.576836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643620, 37.036339, 45.457653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020537, -0.372864, 0.927659,
		-0.827440, -0.514463, -0.225102,
		0.561178, -0.772205, -0.297957,
		33.811974, 36.804676, 45.368267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064514, 36.623325, 45.730740>,  <33.419147, 37.345222, 45.576836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064514, 36.623325, 45.730740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461327, 36.576645, 45.711769>,  <33.699413, 36.548637, 45.700386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461327, 36.576645, 45.711769>,  <33.064514, 36.623325, 45.730740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461327, 36.576645, 45.711769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005465, -0.415981, 0.909357,
		-0.125852, -0.901854, -0.413305,
		0.992034, -0.116703, -0.047423,
		33.758938, 36.541634, 45.697540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212841, 35.868145, 45.678944>,  <33.064514, 36.623325, 45.730740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212841, 35.868145, 45.678944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484142, 36.118202, 45.833435>,  <33.646923, 36.268238, 45.926128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484142, 36.118202, 45.833435>,  <33.212841, 35.868145, 45.678944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484142, 36.118202, 45.833435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160316, -0.387054, 0.908013,
		0.717129, -0.677779, -0.162299,
		0.678251, 0.625144, 0.386226,
		33.687618, 36.305744, 45.949303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578362, 35.416882, 46.105270>,  <33.212841, 35.868145, 45.678944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578362, 35.416882, 46.105270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673061, 35.789070, 46.217102>,  <33.729881, 36.012383, 46.284203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673061, 35.789070, 46.217102>,  <33.578362, 35.416882, 46.105270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673061, 35.789070, 46.217102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001846, -0.288192, 0.957571,
		0.971570, -0.226185, -0.069946,
		0.236746, 0.930476, 0.279581,
		33.744083, 36.068214, 46.300976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142258, 35.272045, 46.463116>,  <33.578362, 35.416882, 46.105270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142258, 35.272045, 46.463116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.020569, 35.625210, 46.606174>,  <33.947556, 35.837109, 46.692009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.020569, 35.625210, 46.606174>,  <34.142258, 35.272045, 46.463116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020569, 35.625210, 46.606174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073731, -0.396141, 0.915224,
		0.949744, 0.252060, 0.185613,
		-0.304221, 0.882914, 0.357648,
		33.929302, 35.890083, 46.713470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565414, 35.499184, 47.041264>,  <34.142258, 35.272045, 46.463116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565414, 35.499184, 47.041264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208294, 35.675392, 47.078888>,  <33.994022, 35.781116, 47.101463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208294, 35.675392, 47.078888>,  <34.565414, 35.499184, 47.041264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208294, 35.675392, 47.078888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128840, -0.449824, 0.883775,
		0.431637, 0.776914, 0.458360,
		-0.892799, 0.440525, 0.094063,
		33.940453, 35.807549, 47.107105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168644, 35.686905, 47.357864>,  <34.565414, 35.499184, 47.041264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168644, 35.686905, 47.357864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505825, 35.478695, 47.412258>,  <35.708134, 35.353771, 47.444897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505825, 35.478695, 47.412258>,  <35.168644, 35.686905, 47.357864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505825, 35.478695, 47.412258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410291, 0.458488, -0.788321,
		0.347989, 0.720310, 0.600048,
		0.842950, -0.520521, 0.135988,
		35.758709, 35.322540, 47.453056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702312, 36.155617, 47.141254>,  <35.168644, 35.686905, 47.357864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702312, 36.155617, 47.141254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.881493, 35.799461, 47.108910>,  <35.989002, 35.585766, 47.089504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.881493, 35.799461, 47.108910>,  <35.702312, 36.155617, 47.141254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881493, 35.799461, 47.108910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452386, 0.303740, -0.838504,
		0.771158, 0.339031, 0.538863,
		0.447953, -0.890393, -0.080858,
		36.015877, 35.532345, 47.084652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436840, 36.235233, 47.008476>,  <35.702312, 36.155617, 47.141254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436840, 36.235233, 47.008476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401806, 35.855274, 46.888462>,  <36.380787, 35.627296, 46.816456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401806, 35.855274, 46.888462>,  <36.436840, 36.235233, 47.008476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401806, 35.855274, 46.888462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520328, 0.213212, -0.826922,
		0.849463, -0.228543, 0.475585,
		-0.087587, -0.949899, -0.300033,
		36.375530, 35.570305, 46.798450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060688, 36.134567, 46.773418>,  <36.436840, 36.235233, 47.008476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060688, 36.134567, 46.773418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847809, 35.842880, 46.601368>,  <36.720081, 35.667870, 46.498138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847809, 35.842880, 46.601368>,  <37.060688, 36.134567, 46.773418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847809, 35.842880, 46.601368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447280, 0.189188, -0.874156,
		0.718823, -0.657612, 0.225478,
		-0.532197, -0.729215, -0.430129,
		36.688148, 35.624115, 46.472328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652576, 35.683334, 46.542004>,  <37.060688, 36.134567, 46.773418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652576, 35.683334, 46.542004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.331665, 35.546951, 46.346004>,  <37.139118, 35.465122, 46.228405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.331665, 35.546951, 46.346004>,  <37.652576, 35.683334, 46.542004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331665, 35.546951, 46.346004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493970, 0.081708, -0.865631,
		0.335183, -0.936520, 0.102873,
		-0.802275, -0.340961, -0.490000,
		37.090984, 35.444664, 46.199005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904278, 35.162163, 46.053219>,  <37.652576, 35.683334, 46.542004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904278, 35.162163, 46.053219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555016, 35.290043, 45.906036>,  <37.345459, 35.366772, 45.817726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555016, 35.290043, 45.906036>,  <37.904278, 35.162163, 46.053219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555016, 35.290043, 45.906036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413109, 0.084685, -0.906736,
		-0.258724, -0.943727, -0.206015,
		-0.873157, 0.319701, -0.367952,
		37.293068, 35.385952, 45.795650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819271, 34.833862, 45.395737>,  <37.904278, 35.162163, 46.053219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819271, 34.833862, 45.395737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.585922, 35.156986, 45.361996>,  <37.445911, 35.350861, 45.341751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.585922, 35.156986, 45.361996>,  <37.819271, 34.833862, 45.395737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585922, 35.156986, 45.361996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357182, 0.161885, -0.919899,
		-0.729450, -0.566774, -0.382975,
		-0.583373, 0.807812, -0.084354,
		37.410912, 35.399330, 45.336689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487080, 34.795849, 44.683350>,  <37.819271, 34.833862, 45.395737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487080, 34.795849, 44.683350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482670, 35.180264, 44.793823>,  <37.480026, 35.410912, 44.860107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482670, 35.180264, 44.793823>,  <37.487080, 34.795849, 44.683350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482670, 35.180264, 44.793823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273625, 0.268562, -0.923582,
		-0.961773, 0.065393, -0.265925,
		-0.011021, 0.961040, 0.276189,
		37.479362, 35.468575, 44.876678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206478, 35.161098, 44.141205>,  <37.487080, 34.795849, 44.683350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206478, 35.161098, 44.141205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.414913, 35.440620, 44.337223>,  <37.539974, 35.608334, 44.454834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.414913, 35.440620, 44.337223>,  <37.206478, 35.161098, 44.141205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414913, 35.440620, 44.337223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277185, 0.404474, -0.871532,
		-0.807241, 0.589975, 0.017067,
		0.521086, 0.698806, 0.490041,
		37.571239, 35.650261, 44.484234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097729, 35.648907, 43.752605>,  <37.206478, 35.161098, 44.141205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097729, 35.648907, 43.752605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410645, 35.789062, 43.958614>,  <37.598396, 35.873154, 44.082218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410645, 35.789062, 43.958614>,  <37.097729, 35.648907, 43.752605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410645, 35.789062, 43.958614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358069, 0.423597, -0.832077,
		-0.509711, 0.835341, 0.205914,
		0.782292, 0.350387, 0.515022,
		37.645332, 35.894180, 44.113121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188778, 36.382885, 43.553635>,  <37.097729, 35.648907, 43.752605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188778, 36.382885, 43.553635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.547855, 36.281578, 43.697853>,  <37.763302, 36.220795, 43.784386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.547855, 36.281578, 43.697853>,  <37.188778, 36.382885, 43.553635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547855, 36.281578, 43.697853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425140, 0.282940, -0.859768,
		0.115736, 0.925095, 0.361668,
		0.897698, -0.253266, 0.360549,
		37.817165, 36.205597, 43.806019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674511, 36.869625, 43.390244>,  <37.188778, 36.382885, 43.553635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674511, 36.869625, 43.390244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912605, 36.551231, 43.434231>,  <38.055462, 36.360195, 43.460621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912605, 36.551231, 43.434231>,  <37.674511, 36.869625, 43.390244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912605, 36.551231, 43.434231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465472, 0.230009, -0.854653,
		0.655000, 0.559910, 0.507421,
		0.595240, -0.795988, 0.109967,
		38.091179, 36.312435, 43.467220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305756, 37.151741, 43.322552>,  <37.674511, 36.869625, 43.390244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305756, 37.151741, 43.322552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346203, 36.760475, 43.249928>,  <38.370472, 36.525715, 43.206352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346203, 36.760475, 43.249928>,  <38.305756, 37.151741, 43.322552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346203, 36.760475, 43.249928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479198, 0.207818, -0.852749,
		0.871863, -0.000776, 0.489750,
		0.101117, -0.978167, -0.181561,
		38.376537, 36.467026, 43.195457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964073, 37.116707, 43.020924>,  <38.305756, 37.151741, 43.322552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964073, 37.116707, 43.020924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793720, 36.769516, 42.918762>,  <38.691509, 36.561199, 42.857464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793720, 36.769516, 42.918762>,  <38.964073, 37.116707, 43.020924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793720, 36.769516, 42.918762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358529, 0.097279, -0.928436,
		0.830709, -0.486979, 0.269766,
		-0.425887, -0.867979, -0.255407,
		38.665955, 36.509121, 42.842140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.719475, 30.004843, 31.462458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.456467, 29.783915, 31.667437>,  <29.298662, 29.651358, 31.790424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.456467, 29.783915, 31.667437>,  <29.719475, 30.004843, 31.462458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456467, 29.783915, 31.667437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133990, 0.755029, 0.641855,
		-0.741425, 0.353371, -0.570454,
		-0.657522, -0.552323, 0.512450,
		29.259211, 29.618217, 31.821171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011330, 30.301384, 31.487122>,  <29.719475, 30.004843, 31.462458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011330, 30.301384, 31.487122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037937, 30.063194, 31.807369>,  <29.053902, 29.920280, 31.999517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037937, 30.063194, 31.807369>,  <29.011330, 30.301384, 31.487122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037937, 30.063194, 31.807369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212866, 0.775452, 0.594442,
		-0.974814, -0.209967, -0.075172,
		0.066521, -0.595473, 0.800617,
		29.057894, 29.884552, 32.047554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422888, 30.539240, 31.869102>,  <29.011330, 30.301384, 31.487122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422888, 30.539240, 31.869102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617760, 30.318293, 32.139671>,  <28.734684, 30.185724, 32.302013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617760, 30.318293, 32.139671>,  <28.422888, 30.539240, 31.869102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617760, 30.318293, 32.139671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253620, 0.651682, 0.714834,
		-0.835662, -0.519808, 0.177396,
		0.487181, -0.552368, 0.676420,
		28.763914, 30.152582, 32.342598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905134, 30.286491, 32.251610>,  <28.422888, 30.539240, 31.869102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905134, 30.286491, 32.251610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245304, 30.279625, 32.461937>,  <28.449406, 30.275505, 32.588131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245304, 30.279625, 32.461937>,  <27.905134, 30.286491, 32.251610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245304, 30.279625, 32.461937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382819, 0.665377, 0.640876,
		-0.360865, -0.746310, 0.559284,
		0.850427, -0.017166, 0.525813,
		28.500433, 30.274475, 32.619682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789036, 30.254711, 32.998470>,  <27.905134, 30.286491, 32.251610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789036, 30.254711, 32.998470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168344, 30.376444, 33.034618>,  <28.395929, 30.449484, 33.056309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168344, 30.376444, 33.034618>,  <27.789036, 30.254711, 32.998470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168344, 30.376444, 33.034618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270733, 0.626554, 0.730844,
		0.165796, -0.717504, 0.676535,
		0.948269, 0.304332, 0.090372,
		28.452826, 30.467743, 33.061729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793028, 30.357801, 33.669552>,  <27.789036, 30.254711, 32.998470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793028, 30.357801, 33.669552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106771, 30.553967, 33.517616>,  <28.295017, 30.671665, 33.426456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106771, 30.553967, 33.517616>,  <27.793028, 30.357801, 33.669552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106771, 30.553967, 33.517616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052314, 0.662451, 0.747276,
		0.618093, -0.566265, 0.545257,
		0.784362, 0.490411, -0.379833,
		28.342079, 30.701090, 33.403667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404627, 30.444532, 34.143581>,  <27.793028, 30.357801, 33.669552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404627, 30.444532, 34.143581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.437881, 30.751221, 33.888950>,  <28.457834, 30.935234, 33.736172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.437881, 30.751221, 33.888950>,  <28.404627, 30.444532, 34.143581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437881, 30.751221, 33.888950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087241, 0.641932, 0.761783,
		0.992712, -0.007796, 0.120256,
		0.083135, 0.766722, -0.636573,
		28.462822, 30.981237, 33.697979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684896, 30.906826, 34.539608>,  <28.404627, 30.444532, 34.143581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684896, 30.906826, 34.539608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605316, 31.141321, 34.225475>,  <28.557568, 31.282019, 34.036995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605316, 31.141321, 34.225475>,  <28.684896, 30.906826, 34.539608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605316, 31.141321, 34.225475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153969, 0.772701, 0.615814,
		0.967839, 0.243433, -0.063467,
		-0.198950, 0.586237, -0.785331,
		28.545631, 31.317192, 33.989876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005358, 31.517277, 34.689468>,  <28.684896, 30.906826, 34.539608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005358, 31.517277, 34.689468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730053, 31.614351, 34.416004>,  <28.564869, 31.672596, 34.251926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730053, 31.614351, 34.416004>,  <29.005358, 31.517277, 34.689468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730053, 31.614351, 34.416004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090777, 0.906167, 0.413062,
		0.719758, 0.346357, -0.601652,
		-0.688264, 0.242689, -0.683663,
		28.523573, 31.687159, 34.210907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176075, 32.068260, 34.277626>,  <29.005358, 31.517277, 34.689468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176075, 32.068260, 34.277626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776796, 32.072865, 34.254063>,  <28.537230, 32.075626, 34.239925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776796, 32.072865, 34.254063>,  <29.176075, 32.068260, 34.277626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776796, 32.072865, 34.254063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014974, 0.902673, 0.430067,
		0.058129, 0.430174, -0.900873,
		-0.998197, 0.011510, -0.058913,
		28.477337, 32.076317, 34.236389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010281, 32.728695, 34.132515>,  <29.176075, 32.068260, 34.277626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010281, 32.728695, 34.132515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642754, 32.610863, 34.237583>,  <28.422237, 32.540165, 34.300625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642754, 32.610863, 34.237583>,  <29.010281, 32.728695, 34.132515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642754, 32.610863, 34.237583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236583, 0.943783, 0.230873,
		-0.315917, 0.149987, -0.936857,
		-0.918818, -0.294581, 0.262672,
		28.367109, 32.522488, 34.316383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527021, 33.288475, 33.844704>,  <29.010281, 32.728695, 34.132515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527021, 33.288475, 33.844704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.325052, 33.075733, 34.116642>,  <28.203871, 32.948090, 34.279804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.325052, 33.075733, 34.116642>,  <28.527021, 33.288475, 33.844704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325052, 33.075733, 34.116642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332367, 0.846684, 0.415522,
		-0.796610, -0.016152, -0.604278,
		-0.504921, -0.531850, 0.679845,
		28.173576, 32.916180, 34.320595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826761, 33.517109, 33.755554>,  <28.527021, 33.288475, 33.844704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826761, 33.517109, 33.755554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918459, 33.368755, 34.115532>,  <27.973476, 33.279743, 34.331516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918459, 33.368755, 34.115532>,  <27.826761, 33.517109, 33.755554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918459, 33.368755, 34.115532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274951, 0.862237, 0.425381,
		-0.933729, -0.344956, 0.095687,
		0.229243, -0.370881, 0.899942,
		27.987232, 33.257492, 34.385513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294456, 33.756939, 34.163307>,  <27.826761, 33.517109, 33.755554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294456, 33.756939, 34.163307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564774, 33.643978, 34.435646>,  <27.726963, 33.576202, 34.599049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564774, 33.643978, 34.435646>,  <27.294456, 33.756939, 34.163307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564774, 33.643978, 34.435646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049338, 0.904293, 0.424051,
		-0.735440, -0.320162, 0.597180,
		0.675791, -0.282401, 0.680850,
		27.767511, 33.559258, 34.639900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986244, 33.773407, 34.843479>,  <27.294456, 33.756939, 34.163307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986244, 33.773407, 34.843479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383030, 33.796314, 34.888599>,  <27.621101, 33.810059, 34.915672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383030, 33.796314, 34.888599>,  <26.986244, 33.773407, 34.843479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383030, 33.796314, 34.888599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086451, 0.957840, 0.273985,
		-0.092351, -0.281535, 0.955096,
		0.991966, 0.057267, 0.112796,
		27.680620, 33.813496, 34.922440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096342, 34.092560, 35.468403>,  <26.986244, 33.773407, 34.843479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096342, 34.092560, 35.468403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.447292, 34.147747, 35.284588>,  <27.657862, 34.180859, 35.174297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.447292, 34.147747, 35.284588>,  <27.096342, 34.092560, 35.468403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447292, 34.147747, 35.284588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037201, 0.974445, 0.221525,
		0.478361, -0.177265, 0.860086,
		0.877375, 0.137965, -0.459542,
		27.710505, 34.189137, 35.146725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506124, 34.513847, 36.002285>,  <27.096342, 34.092560, 35.468403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506124, 34.513847, 36.002285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679291, 34.569683, 35.646061>,  <27.783192, 34.603184, 35.432327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679291, 34.569683, 35.646061>,  <27.506124, 34.513847, 36.002285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679291, 34.569683, 35.646061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033868, 0.984722, 0.170809,
		0.900797, -0.104108, 0.421576,
		0.432918, 0.139587, -0.890560,
		27.809166, 34.611561, 35.378891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933689, 35.009621, 36.135700>,  <27.506124, 34.513847, 36.002285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933689, 35.009621, 36.135700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.898138, 34.993202, 35.737621>,  <27.876808, 34.983349, 35.498775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.898138, 34.993202, 35.737621>,  <27.933689, 35.009621, 36.135700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898138, 34.993202, 35.737621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128626, 0.990311, -0.052335,
		0.987702, -0.132659, -0.082736,
		-0.088877, -0.041050, -0.995196,
		27.871475, 34.980888, 35.439064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516693, 35.297352, 35.899887>,  <27.933689, 35.009621, 36.135700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516693, 35.297352, 35.899887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.232561, 35.377655, 35.630035>,  <28.062082, 35.425838, 35.468124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.232561, 35.377655, 35.630035>,  <28.516693, 35.297352, 35.899887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232561, 35.377655, 35.630035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285314, 0.958313, -0.015229,
		0.643449, -0.203299, -0.737999,
		-0.710330, 0.200762, -0.674630,
		28.019463, 35.437885, 35.427647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770441, 35.811722, 35.549126>,  <28.516693, 35.297352, 35.899887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770441, 35.811722, 35.549126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.387886, 35.841423, 35.436123>,  <28.158354, 35.859245, 35.368320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.387886, 35.841423, 35.436123>,  <28.770441, 35.811722, 35.549126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387886, 35.841423, 35.436123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101072, 0.991532, -0.081543,
		0.274062, -0.106540, -0.955792,
		-0.956386, 0.074256, -0.282510,
		28.100969, 35.863701, 35.351372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639444, 35.371353, 35.035618>,  <28.770441, 35.811722, 35.549126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639444, 35.371353, 35.035618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.011740, 35.226067, 35.018654>,  <29.235117, 35.138897, 35.008476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.011740, 35.226067, 35.018654>,  <28.639444, 35.371353, 35.035618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011740, 35.226067, 35.018654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237764, -0.512951, -0.824833,
		0.277835, 0.777790, -0.563783,
		0.930740, -0.363215, -0.042414,
		29.290962, 35.117104, 35.005928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907492, 35.651779, 34.344402>,  <28.639444, 35.371353, 35.035618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907492, 35.651779, 34.344402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124781, 35.336411, 34.459854>,  <29.255154, 35.147190, 34.529125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124781, 35.336411, 34.459854>,  <28.907492, 35.651779, 34.344402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124781, 35.336411, 34.459854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044784, -0.316070, -0.947678,
		0.838393, 0.527727, -0.136388,
		0.543223, -0.788419, 0.288625,
		29.287748, 35.099884, 34.546440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563522, 35.627995, 33.943562>,  <28.907492, 35.651779, 34.344402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563522, 35.627995, 33.943562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.547619, 35.254425, 34.085663>,  <29.538076, 35.030285, 34.170925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.547619, 35.254425, 34.085663>,  <29.563522, 35.627995, 33.943562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547619, 35.254425, 34.085663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014575, -0.354954, -0.934770,
		0.999103, -0.042342, 0.000500,
		-0.039758, -0.933925, 0.355253,
		29.535692, 34.974247, 34.192238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061327, 35.289303, 33.445797>,  <29.563522, 35.627995, 33.943562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061327, 35.289303, 33.445797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.846605, 35.015442, 33.643013>,  <29.717772, 34.851124, 33.761345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.846605, 35.015442, 33.643013>,  <30.061327, 35.289303, 33.445797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846605, 35.015442, 33.643013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053610, -0.610875, -0.789910,
		0.842001, -0.397596, 0.364626,
		-0.536806, -0.684652, 0.493042,
		29.685564, 34.810047, 33.790924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585659, 34.664284, 33.481678>,  <30.061327, 35.289303, 33.445797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585659, 34.664284, 33.481678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205645, 34.549519, 33.530842>,  <29.977634, 34.480659, 33.560341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205645, 34.549519, 33.530842>,  <30.585659, 34.664284, 33.481678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205645, 34.549519, 33.530842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137915, -0.739113, -0.659312,
		0.280012, -0.609420, 0.741755,
		-0.950038, -0.286914, 0.122912,
		29.920633, 34.463444, 33.567715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569149, 33.911613, 33.607082>,  <30.585659, 34.664284, 33.481678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569149, 33.911613, 33.607082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200415, 33.990017, 33.473339>,  <29.979174, 34.037060, 33.393093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200415, 33.990017, 33.473339>,  <30.569149, 33.911613, 33.607082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200415, 33.990017, 33.473339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224863, -0.432180, -0.873302,
		-0.315679, -0.880228, 0.354325,
		-0.921837, 0.196009, -0.334361,
		29.923864, 34.048820, 33.373032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241360, 33.236591, 33.448277>,  <30.569149, 33.911613, 33.607082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241360, 33.236591, 33.448277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.047539, 33.526276, 33.252022>,  <29.931246, 33.700089, 33.134270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.047539, 33.526276, 33.252022>,  <30.241360, 33.236591, 33.448277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047539, 33.526276, 33.252022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025498, -0.548948, -0.835467,
		-0.874392, -0.417336, 0.247526,
		-0.484549, 0.724215, -0.490637,
		29.902174, 33.743542, 33.104832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595388, 32.936966, 33.239357>,  <30.241360, 33.236591, 33.448277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595388, 32.936966, 33.239357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.629757, 33.260231, 33.006294>,  <29.650379, 33.454189, 32.866459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.629757, 33.260231, 33.006294>,  <29.595388, 32.936966, 33.239357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629757, 33.260231, 33.006294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395685, -0.509034, -0.764406,
		-0.914358, 0.296227, 0.276041,
		0.085924, 0.808167, -0.582652,
		29.655535, 33.502682, 32.831497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944662, 32.954330, 32.887444>,  <29.595388, 32.936966, 33.239357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944662, 32.954330, 32.887444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217941, 33.145584, 32.666672>,  <29.381908, 33.260338, 32.534210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217941, 33.145584, 32.666672>,  <28.944662, 32.954330, 32.887444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217941, 33.145584, 32.666672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229173, -0.577245, -0.783753,
		-0.693338, 0.661946, -0.284797,
		0.683200, 0.478138, -0.551926,
		29.422901, 33.289024, 32.501095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531162, 33.189045, 32.312328>,  <28.944662, 32.954330, 32.887444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531162, 33.189045, 32.312328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917809, 33.182495, 32.210049>,  <29.149797, 33.178566, 32.148682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917809, 33.182495, 32.210049>,  <28.531162, 33.189045, 32.312328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917809, 33.182495, 32.210049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222615, -0.547759, -0.806475,
		-0.126859, 0.836476, -0.533118,
		0.966618, -0.016371, -0.255700,
		29.207794, 33.177586, 32.133339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510649, 33.216091, 31.658024>,  <28.531162, 33.189045, 32.312328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510649, 33.216091, 31.658024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887602, 33.099522, 31.723736>,  <29.113773, 33.029579, 31.763163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887602, 33.099522, 31.723736>,  <28.510649, 33.216091, 31.658024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887602, 33.099522, 31.723736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005179, -0.478297, -0.878183,
		0.334495, 0.828436, -0.449230,
		0.942383, -0.291421, 0.164278,
		29.170317, 33.012096, 31.773020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997087, 33.340240, 30.980520>,  <28.510649, 33.216091, 31.658024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997087, 33.340240, 30.980520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180256, 33.062004, 31.201958>,  <29.290157, 32.895061, 31.334820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180256, 33.062004, 31.201958>,  <28.997087, 33.340240, 30.980520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180256, 33.062004, 31.201958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033594, -0.608737, -0.792661,
		0.888358, 0.381574, -0.255386,
		0.457922, -0.695587, 0.553594,
		29.317633, 32.853329, 31.368036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554918, 33.255569, 30.595671>,  <28.997087, 33.340240, 30.980520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554918, 33.255569, 30.595671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.513453, 32.923328, 30.814522>,  <29.488573, 32.723984, 30.945831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.513453, 32.923328, 30.814522>,  <29.554918, 33.255569, 30.595671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513453, 32.923328, 30.814522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233938, -0.555019, -0.798265,
		0.966709, 0.045241, 0.251846,
		-0.103665, -0.830606, 0.547126,
		29.482353, 32.674145, 30.978659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121117, 32.788723, 30.408316>,  <29.554918, 33.255569, 30.595671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121117, 32.788723, 30.408316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819195, 32.575371, 30.561039>,  <29.638042, 32.447361, 30.652672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819195, 32.575371, 30.561039>,  <30.121117, 32.788723, 30.408316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819195, 32.575371, 30.561039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045348, -0.623105, -0.780823,
		0.654381, -0.572054, 0.494510,
		-0.754804, -0.533381, 0.381806,
		29.592754, 32.415356, 30.675581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338095, 32.125702, 30.331917>,  <30.121117, 32.788723, 30.408316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338095, 32.125702, 30.331917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.939447, 32.129833, 30.364532>,  <29.700260, 32.132313, 30.384102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.939447, 32.129833, 30.364532>,  <30.338095, 32.125702, 30.331917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939447, 32.129833, 30.364532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070024, -0.626117, -0.776579,
		0.043038, -0.779661, 0.624721,
		-0.996617, 0.010323, 0.081542,
		29.640463, 32.132931, 30.388994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236980, 31.540775, 30.151155>,  <30.338095, 32.125702, 30.331917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236980, 31.540775, 30.151155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.866777, 31.691551, 30.136454>,  <29.644655, 31.782017, 30.127632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.866777, 31.691551, 30.136454>,  <30.236980, 31.540775, 30.151155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866777, 31.691551, 30.136454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194215, -0.555685, -0.808390,
		-0.325135, -0.741035, 0.587498,
		-0.925509, 0.376937, -0.036752,
		29.589125, 31.804632, 30.125427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829498, 30.947866, 30.172123>,  <30.236980, 31.540775, 30.151155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829498, 30.947866, 30.172123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581192, 31.217434, 30.011881>,  <29.432209, 31.379175, 29.915735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581192, 31.217434, 30.011881>,  <29.829498, 30.947866, 30.172123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581192, 31.217434, 30.011881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175409, -0.617413, -0.766833,
		-0.764124, -0.405751, 0.501479,
		-0.620763, 0.673919, -0.400607,
		29.394962, 31.419609, 29.891699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308746, 30.546726, 29.917164>,  <29.829498, 30.947866, 30.172123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308746, 30.546726, 29.917164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256163, 30.890867, 29.720181>,  <29.224613, 31.097351, 29.601990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256163, 30.890867, 29.720181>,  <29.308746, 30.546726, 29.917164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256163, 30.890867, 29.720181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178576, -0.509195, -0.841921,
		-0.975105, -0.022736, 0.220576,
		-0.131459, 0.860351, -0.492458,
		29.216724, 31.148972, 29.572443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658482, 30.495186, 29.555174>,  <29.308746, 30.546726, 29.917164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658482, 30.495186, 29.555174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.836756, 30.789968, 29.351898>,  <28.943720, 30.966839, 29.229933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.836756, 30.789968, 29.351898>,  <28.658482, 30.495186, 29.555174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836756, 30.789968, 29.351898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242498, -0.447074, -0.860999,
		-0.861720, 0.506968, -0.020542,
		0.445683, 0.736959, -0.508191,
		28.970461, 31.011057, 29.199440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160933, 30.632011, 29.021334>,  <28.658482, 30.495186, 29.555174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160933, 30.632011, 29.021334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519995, 30.764990, 28.905615>,  <28.735432, 30.844776, 28.836184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519995, 30.764990, 28.905615>,  <28.160933, 30.632011, 29.021334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519995, 30.764990, 28.905615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177937, -0.327158, -0.928066,
		-0.403178, 0.884561, -0.234520,
		0.897656, 0.332446, -0.289299,
		28.789291, 30.864723, 28.818825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985916, 30.921766, 28.425079>,  <28.160933, 30.632011, 29.021334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985916, 30.921766, 28.425079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379347, 30.859171, 28.389116>,  <28.615406, 30.821613, 28.367538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379347, 30.859171, 28.389116>,  <27.985916, 30.921766, 28.425079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379347, 30.859171, 28.389116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148199, -0.415994, -0.897210,
		0.103002, 0.895801, -0.432355,
		0.983579, -0.156489, -0.089909,
		28.674421, 30.812223, 28.362144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149464, 31.272152, 27.782040>,  <27.985916, 30.921766, 28.425079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149464, 31.272152, 27.782040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449167, 31.013510, 27.839329>,  <28.628988, 30.858324, 27.873703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449167, 31.013510, 27.839329>,  <28.149464, 31.272152, 27.782040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449167, 31.013510, 27.839329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117315, -0.342423, -0.932193,
		0.651806, 0.681650, -0.332420,
		0.749257, -0.646607, 0.143225,
		28.673944, 30.819529, 27.882296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.117073, 32.546455, 46.495590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743919, 32.495464, 46.360844>,  <36.520027, 32.464870, 46.279995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743919, 32.495464, 46.360844>,  <37.117073, 32.546455, 46.495590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743919, 32.495464, 46.360844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325770, -0.100293, 0.940114,
		-0.153629, 0.986757, 0.052033,
		-0.932884, -0.127478, -0.336864,
		36.464054, 32.457222, 46.259785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791309, 32.948719, 46.897675>,  <37.117073, 32.546455, 46.495590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791309, 32.948719, 46.897675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513573, 32.691555, 46.768337>,  <36.346931, 32.537258, 46.690735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513573, 32.691555, 46.768337>,  <36.791309, 32.948719, 46.897675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513573, 32.691555, 46.768337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386466, -0.045906, 0.921161,
		-0.607068, 0.764564, -0.216589,
		-0.694343, -0.642911, -0.323345,
		36.305271, 32.498680, 46.671333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338047, 33.116917, 47.338680>,  <36.791309, 32.948719, 46.897675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338047, 33.116917, 47.338680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228535, 32.769253, 47.173946>,  <36.162827, 32.560654, 47.075108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228535, 32.769253, 47.173946>,  <36.338047, 33.116917, 47.338680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228535, 32.769253, 47.173946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306388, -0.327071, 0.893952,
		-0.911687, 0.370924, -0.176756,
		-0.273777, -0.869160, -0.411833,
		36.146400, 32.508503, 47.050396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703339, 32.924706, 47.729538>,  <36.338047, 33.116917, 47.338680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703339, 32.924706, 47.729538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838245, 32.584160, 47.568829>,  <35.919189, 32.379833, 47.472404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838245, 32.584160, 47.568829>,  <35.703339, 32.924706, 47.729538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838245, 32.584160, 47.568829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333953, -0.507225, 0.794480,
		-0.880184, -0.133782, -0.455389,
		0.337272, -0.851367, -0.401774,
		35.939426, 32.328751, 47.448296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147125, 32.461609, 47.763847>,  <35.703339, 32.924706, 47.729538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147125, 32.461609, 47.763847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451668, 32.208416, 47.707741>,  <35.634392, 32.056499, 47.674076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451668, 32.208416, 47.707741>,  <35.147125, 32.461609, 47.763847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451668, 32.208416, 47.707741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191865, -0.426633, 0.883840,
		-0.619297, -0.646002, -0.446265,
		0.761354, -0.632982, -0.140267,
		35.680073, 32.018520, 47.665661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854443, 31.688322, 47.682056>,  <35.147125, 32.461609, 47.763847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854443, 31.688322, 47.682056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230885, 31.703970, 47.816387>,  <35.456749, 31.713360, 47.896988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230885, 31.703970, 47.816387>,  <34.854443, 31.688322, 47.682056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230885, 31.703970, 47.816387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228921, -0.657240, 0.718074,
		0.248814, -0.752665, -0.609579,
		0.941109, 0.039121, 0.335832,
		35.513218, 31.715706, 47.917137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991974, 31.046892, 47.886944>,  <34.854443, 31.688322, 47.682056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991974, 31.046892, 47.886944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302849, 31.237349, 48.051514>,  <35.489376, 31.351622, 48.150253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302849, 31.237349, 48.051514>,  <34.991974, 31.046892, 47.886944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302849, 31.237349, 48.051514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092157, -0.732885, 0.674082,
		0.622482, -0.485974, -0.613470,
		0.777189, 0.476139, 0.411422,
		35.536007, 31.380190, 48.174942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475521, 30.451111, 48.153385>,  <34.991974, 31.046892, 47.886944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475521, 30.451111, 48.153385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624187, 30.767874, 48.347187>,  <35.713387, 30.957932, 48.463470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624187, 30.767874, 48.347187>,  <35.475521, 30.451111, 48.153385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624187, 30.767874, 48.347187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035546, -0.533651, 0.844958,
		0.927685, -0.296821, -0.226489,
		0.371667, 0.791906, 0.484509,
		35.735687, 31.005445, 48.492538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136173, 30.273436, 48.471340>,  <35.475521, 30.451111, 48.153385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136173, 30.273436, 48.471340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982643, 30.586157, 48.667896>,  <35.890526, 30.773790, 48.785828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982643, 30.586157, 48.667896>,  <36.136173, 30.273436, 48.471340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982643, 30.586157, 48.667896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156080, -0.469560, 0.868995,
		0.910120, 0.410237, 0.058204,
		-0.383824, 0.781805, 0.491386,
		35.867496, 30.820698, 48.815311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595470, 30.268452, 49.003311>,  <36.136173, 30.273436, 48.471340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595470, 30.268452, 49.003311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291336, 30.514200, 49.087627>,  <36.108856, 30.661650, 49.138218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291336, 30.514200, 49.087627>,  <36.595470, 30.268452, 49.003311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291336, 30.514200, 49.087627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083352, -0.229556, 0.969720,
		0.644158, 0.754884, 0.123331,
		-0.760338, 0.614373, 0.210791,
		36.063236, 30.698511, 49.150864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806171, 30.679079, 49.542824>,  <36.595470, 30.268452, 49.003311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806171, 30.679079, 49.542824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409721, 30.720987, 49.575554>,  <36.171852, 30.746132, 49.595192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409721, 30.720987, 49.575554>,  <36.806171, 30.679079, 49.542824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409721, 30.720987, 49.575554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044339, -0.319771, 0.946457,
		0.125328, 0.941684, 0.312287,
		-0.991124, 0.104771, 0.081830,
		36.112385, 30.752419, 49.600101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671734, 31.075575, 50.116333>,  <36.806171, 30.679079, 49.542824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671734, 31.075575, 50.116333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338150, 30.861464, 50.062687>,  <36.138000, 30.732996, 50.030499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338150, 30.861464, 50.062687>,  <36.671734, 31.075575, 50.116333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338150, 30.861464, 50.062687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028960, -0.200245, 0.979318,
		-0.551064, 0.820596, 0.151494,
		-0.833960, -0.535280, -0.134112,
		36.087963, 30.700880, 50.022453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160324, 31.266132, 50.708557>,  <36.671734, 31.075575, 50.116333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160324, 31.266132, 50.708557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101944, 30.895973, 50.568653>,  <36.066914, 30.673878, 50.484711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101944, 30.895973, 50.568653>,  <36.160324, 31.266132, 50.708557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101944, 30.895973, 50.568653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037480, -0.358468, 0.932790,
		-0.988581, 0.123036, 0.087004,
		-0.145955, -0.925399, -0.349763,
		36.058159, 30.618353, 50.463726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634583, 30.973898, 51.082298>,  <36.160324, 31.266132, 50.708557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634583, 30.973898, 51.082298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872166, 30.686300, 50.937931>,  <36.014713, 30.513742, 50.851311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872166, 30.686300, 50.937931>,  <35.634583, 30.973898, 51.082298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872166, 30.686300, 50.937931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154358, -0.338443, 0.928240,
		-0.789551, -0.607045, -0.090037,
		0.593956, -0.718994, -0.360920,
		36.050354, 30.470602, 50.829655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114758, 31.365582, 51.457706>,  <35.634583, 30.973898, 51.082298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114758, 31.365582, 51.457706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.125988, 31.675751, 51.710033>,  <35.132729, 31.861853, 51.861431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.125988, 31.675751, 51.710033>,  <35.114758, 31.365582, 51.457706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125988, 31.675751, 51.710033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463432, 0.549049, -0.695540,
		-0.885688, 0.311870, -0.343940,
		0.028079, 0.775424, 0.630816,
		35.134411, 31.908379, 51.899277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146626, 31.871374, 51.017117>,  <35.114758, 31.365582, 51.457706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146626, 31.871374, 51.017117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174568, 32.104095, 51.341248>,  <35.191334, 32.243729, 51.535725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174568, 32.104095, 51.341248>,  <35.146626, 31.871374, 51.017117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174568, 32.104095, 51.341248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235018, 0.779846, -0.580178,
		-0.969477, 0.230970, -0.082258,
		0.069855, 0.581802, 0.810325,
		35.195526, 32.278637, 51.584347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658783, 32.398777, 50.961487>,  <35.146626, 31.871374, 51.017117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658783, 32.398777, 50.961487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971092, 32.518570, 51.180832>,  <35.158478, 32.590446, 51.312439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971092, 32.518570, 51.180832>,  <34.658783, 32.398777, 50.961487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971092, 32.518570, 51.180832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122521, 0.787216, -0.604383,
		-0.612683, 0.539073, 0.577945,
		0.780774, 0.299485, 0.548362,
		35.205326, 32.608414, 51.345341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633175, 33.162498, 50.969910>,  <34.658783, 32.398777, 50.961487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633175, 33.162498, 50.969910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005779, 33.075111, 51.086227>,  <35.229340, 33.022678, 51.156017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005779, 33.075111, 51.086227>,  <34.633175, 33.162498, 50.969910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005779, 33.075111, 51.086227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362167, 0.630913, -0.686137,
		-0.033568, 0.744459, 0.666823,
		0.931508, -0.218469, 0.290797,
		35.285233, 33.009571, 51.173466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848244, 33.786114, 51.018967>,  <34.633175, 33.162498, 50.969910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848244, 33.786114, 51.018967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171482, 33.552925, 50.985188>,  <35.365425, 33.413013, 50.964920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171482, 33.552925, 50.985188>,  <34.848244, 33.786114, 51.018967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171482, 33.552925, 50.985188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414223, 0.664313, -0.622180,
		0.418812, 0.467799, 0.778306,
		0.808094, -0.582968, -0.084449,
		35.413910, 33.378033, 50.959854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526432, 34.164379, 51.131866>,  <34.848244, 33.786114, 51.018967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526432, 34.164379, 51.131866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613388, 33.834274, 50.923374>,  <35.665562, 33.636211, 50.798279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613388, 33.834274, 50.923374>,  <35.526432, 34.164379, 51.131866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613388, 33.834274, 50.923374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374997, 0.563633, -0.735999,
		0.901176, -0.035459, 0.432000,
		0.217392, -0.825264, -0.521230,
		35.678604, 33.586697, 50.767006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166008, 34.335983, 50.837433>,  <35.526432, 34.164379, 51.131866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166008, 34.335983, 50.837433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073017, 34.010590, 50.624191>,  <36.017223, 33.815353, 50.496246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073017, 34.010590, 50.624191>,  <36.166008, 34.335983, 50.837433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073017, 34.010590, 50.624191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329301, 0.449912, -0.830145,
		0.915159, -0.368541, 0.163287,
		-0.232477, -0.813485, -0.533101,
		36.003273, 33.766544, 50.464260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650776, 34.332375, 50.400761>,  <36.166008, 34.335983, 50.837433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650776, 34.332375, 50.400761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.362778, 34.113537, 50.229980>,  <36.189980, 33.982235, 50.127510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.362778, 34.113537, 50.229980>,  <36.650776, 34.332375, 50.400761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362778, 34.113537, 50.229980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158888, 0.468931, -0.868826,
		0.675543, -0.693390, -0.250702,
		-0.719998, -0.547096, -0.426954,
		36.146778, 33.949409, 50.101894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880051, 34.112106, 49.727314>,  <36.650776, 34.332375, 50.400761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880051, 34.112106, 49.727314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483109, 34.090179, 49.683086>,  <36.244942, 34.077023, 49.656551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483109, 34.090179, 49.683086>,  <36.880051, 34.112106, 49.727314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483109, 34.090179, 49.683086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082040, 0.376282, -0.922866,
		0.092197, -0.924882, -0.368908,
		-0.992356, -0.054820, -0.110570,
		36.185402, 34.073734, 49.649914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802219, 33.952038, 49.011906>,  <36.880051, 34.112106, 49.727314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802219, 33.952038, 49.011906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.436985, 34.064312, 49.130219>,  <36.217842, 34.131676, 49.201206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.436985, 34.064312, 49.130219>,  <36.802219, 33.952038, 49.011906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436985, 34.064312, 49.130219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179717, 0.374112, -0.909803,
		-0.366021, -0.883888, -0.291154,
		-0.913088, 0.280682, 0.295782,
		36.163059, 34.148518, 49.218952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289539, 33.735435, 48.464096>,  <36.802219, 33.952038, 49.011906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289539, 33.735435, 48.464096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105209, 34.027699, 48.665604>,  <35.994614, 34.203056, 48.786507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105209, 34.027699, 48.665604>,  <36.289539, 33.735435, 48.464096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105209, 34.027699, 48.665604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299779, 0.406117, -0.863251,
		-0.835330, -0.548824, 0.031888,
		-0.460822, 0.730658, 0.503767,
		35.966961, 34.246895, 48.816734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651794, 33.832180, 48.149521>,  <36.289539, 33.735435, 48.464096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651794, 33.832180, 48.149521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735344, 34.172268, 48.342808>,  <35.785473, 34.376320, 48.458782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735344, 34.172268, 48.342808>,  <35.651794, 33.832180, 48.149521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735344, 34.172268, 48.342808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267508, 0.524949, -0.808002,
		-0.940643, 0.039508, 0.337089,
		0.208877, 0.850216, 0.483222,
		35.798008, 34.427334, 48.487774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127975, 34.322590, 47.934696>,  <35.651794, 33.832180, 48.149521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127975, 34.322590, 47.934696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422626, 34.551250, 48.079247>,  <35.599419, 34.688446, 48.165977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422626, 34.551250, 48.079247>,  <35.127975, 34.322590, 47.934696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422626, 34.551250, 48.079247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086253, 0.609394, -0.788162,
		-0.670772, 0.549415, 0.498205,
		0.736632, 0.571648, 0.361376,
		35.643616, 34.722744, 48.187660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850956, 35.026909, 47.782539>,  <35.127975, 34.322590, 47.934696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850956, 35.026909, 47.782539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248962, 35.030720, 47.822243>,  <35.487766, 35.033005, 47.846066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248962, 35.030720, 47.822243>,  <34.850956, 35.026909, 47.782539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248962, 35.030720, 47.822243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077918, 0.546883, -0.833576,
		-0.062225, 0.837155, 0.543415,
		0.995016, 0.009528, 0.099259,
		35.547466, 35.033577, 47.852020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555336, 35.730125, 47.748138>,  <34.850956, 35.026909, 47.782539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555336, 35.730125, 47.748138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171959, 35.720291, 47.634453>,  <33.941933, 35.714390, 47.566242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171959, 35.720291, 47.634453>,  <34.555336, 35.730125, 47.748138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171959, 35.720291, 47.634453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233901, -0.502647, 0.832247,
		-0.163322, 0.864142, 0.476009,
		-0.958445, -0.024586, -0.284217,
		33.884426, 35.712917, 47.549187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230240, 35.889050, 48.378075>,  <34.555336, 35.730125, 47.748138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230240, 35.889050, 48.378075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954018, 35.734978, 48.133202>,  <33.788284, 35.642536, 47.986279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954018, 35.734978, 48.133202>,  <34.230240, 35.889050, 48.378075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954018, 35.734978, 48.133202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410187, -0.488569, 0.770095,
		-0.595718, 0.782904, 0.179390,
		-0.690555, -0.385176, -0.612187,
		33.746853, 35.619427, 47.949547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612572, 35.933376, 48.724140>,  <34.230240, 35.889050, 48.378075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612572, 35.933376, 48.724140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555874, 35.635464, 48.463306>,  <33.521854, 35.456718, 48.306805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555874, 35.635464, 48.463306>,  <33.612572, 35.933376, 48.724140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555874, 35.635464, 48.463306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463145, -0.532290, 0.708635,
		-0.874874, 0.402457, -0.269489,
		-0.141748, -0.744778, -0.652083,
		33.513348, 35.412029, 48.267681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006378, 35.708252, 48.972847>,  <33.612572, 35.933376, 48.724140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006378, 35.708252, 48.972847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102459, 35.409035, 48.725388>,  <33.160107, 35.229504, 48.576912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102459, 35.409035, 48.725388>,  <33.006378, 35.708252, 48.972847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102459, 35.409035, 48.725388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617501, -0.609485, 0.497212,
		-0.748997, 0.262588, -0.608319,
		0.240200, -0.748048, -0.618651,
		33.174519, 35.184620, 48.539791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387829, 35.360088, 48.871117>,  <33.006378, 35.708252, 48.972847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387829, 35.360088, 48.871117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696877, 35.113815, 48.809158>,  <32.882305, 34.966049, 48.771984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696877, 35.113815, 48.809158>,  <32.387829, 35.360088, 48.871117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696877, 35.113815, 48.809158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298045, -0.567171, 0.767780,
		-0.560533, -0.547059, -0.621714,
		0.772639, -0.615665, -0.154870,
		32.928661, 34.929111, 48.762691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139370, 34.662136, 48.738018>,  <32.387829, 35.360088, 48.871117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139370, 34.662136, 48.738018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521702, 34.644325, 48.854229>,  <32.751102, 34.633640, 48.923954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521702, 34.644325, 48.854229>,  <32.139370, 34.662136, 48.738018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521702, 34.644325, 48.854229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228806, -0.733160, 0.640410,
		0.184487, -0.678597, -0.710964,
		0.955831, -0.044525, 0.290525,
		32.808453, 34.630966, 48.941387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310902, 33.975437, 48.700882>,  <32.139370, 34.662136, 48.738018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310902, 33.975437, 48.700882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575268, 34.136688, 48.954082>,  <32.733887, 34.233437, 49.106003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575268, 34.136688, 48.954082>,  <32.310902, 33.975437, 48.700882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575268, 34.136688, 48.954082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329497, -0.601954, 0.727381,
		0.674260, -0.689306, -0.265011,
		0.660912, 0.403124, 0.632998,
		32.773540, 34.257626, 49.143982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202381, 33.438148, 48.214031>,  <32.310902, 33.975437, 48.700882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202381, 33.438148, 48.214031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.873243, 33.240788, 48.101257>,  <31.675762, 33.122372, 48.033592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.873243, 33.240788, 48.101257>,  <32.202381, 33.438148, 48.214031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873243, 33.240788, 48.101257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182848, 0.239860, -0.953433,
		0.538053, -0.836073, -0.107148,
		-0.822840, -0.493405, -0.281931,
		31.626390, 33.092766, 48.016678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348717, 33.230808, 47.530087>,  <32.202381, 33.438148, 48.214031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348717, 33.230808, 47.530087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952457, 33.181740, 47.553955>,  <31.714701, 33.152298, 47.568275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952457, 33.181740, 47.553955>,  <32.348717, 33.230808, 47.530087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952457, 33.181740, 47.553955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102432, 0.380097, -0.919257,
		0.090084, -0.916776, -0.389109,
		-0.990653, -0.122668, 0.059667,
		31.655262, 33.144939, 47.571854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072315, 32.895847, 46.999237>,  <32.348717, 33.230808, 47.530087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072315, 32.895847, 46.999237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.775827, 33.126842, 47.136112>,  <31.597935, 33.265442, 47.218239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.775827, 33.126842, 47.136112>,  <32.072315, 32.895847, 46.999237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775827, 33.126842, 47.136112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072164, 0.438262, -0.895945,
		-0.667369, -0.688789, -0.283176,
		-0.741223, 0.577491, 0.342188,
		31.553461, 33.300091, 47.238770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619207, 32.897812, 46.390797>,  <32.072315, 32.895847, 46.999237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619207, 32.897812, 46.390797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.482170, 33.170567, 46.649303>,  <31.399948, 33.334217, 46.804409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.482170, 33.170567, 46.649303>,  <31.619207, 32.897812, 46.390797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482170, 33.170567, 46.649303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356978, 0.541824, -0.760916,
		-0.869020, -0.491390, 0.057792,
		-0.342594, 0.681882, 0.646271,
		31.379393, 33.375130, 46.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915468, 32.971569, 46.226379>,  <31.619207, 32.897812, 46.390797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915468, 32.971569, 46.226379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.050953, 33.315681, 46.378796>,  <31.132244, 33.522148, 46.470245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.050953, 33.315681, 46.378796>,  <30.915468, 32.971569, 46.226379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050953, 33.315681, 46.378796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283807, 0.479532, -0.830363,
		-0.897066, 0.173112, 0.406576,
		0.338712, 0.860280, 0.381041,
		31.152567, 33.573765, 46.493107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342083, 33.545441, 46.065952>,  <30.915468, 32.971569, 46.226379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342083, 33.545441, 46.065952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.652822, 33.767044, 46.185665>,  <30.839268, 33.900005, 46.257492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.652822, 33.767044, 46.185665>,  <30.342083, 33.545441, 46.065952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652822, 33.767044, 46.185665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322183, 0.758084, -0.567015,
		-0.541018, 0.344062, 0.767412,
		0.776851, 0.554013, 0.299286,
		30.885878, 33.933247, 46.275452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983749, 34.197201, 46.068172>,  <30.342083, 33.545441, 46.065952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983749, 34.197201, 46.068172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374952, 34.277130, 46.044266>,  <30.609674, 34.325089, 46.029922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374952, 34.277130, 46.044266>,  <29.983749, 34.197201, 46.068172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374952, 34.277130, 46.044266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190991, 0.742865, -0.641618,
		-0.083811, 0.638923, 0.764691,
		0.978007, 0.199824, -0.059769,
		30.668354, 34.337078, 46.026337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.953022, 28.315243, 48.383263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.055672, 28.229521, 48.006283>,  <33.117264, 28.178087, 47.780094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.055672, 28.229521, 48.006283>,  <32.953022, 28.315243, 48.383263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055672, 28.229521, 48.006283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352235, -0.928784, 0.115284,
		-0.900040, 0.302379, -0.313838,
		0.256628, -0.214305, -0.942452,
		33.132660, 28.165230, 47.723549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164330, 29.049747, 48.252487>,  <32.953022, 28.315243, 48.383263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164330, 29.049747, 48.252487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.548752, 29.122906, 48.335354>,  <33.779408, 29.166800, 48.385075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.548752, 29.122906, 48.335354>,  <33.164330, 29.049747, 48.252487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548752, 29.122906, 48.335354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141518, 0.318174, -0.937410,
		-0.237361, 0.930223, 0.279901,
		0.961058, 0.182894, 0.207166,
		33.837070, 29.177774, 48.397503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453453, 29.691917, 47.867462>,  <33.164330, 29.049747, 48.252487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453453, 29.691917, 47.867462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.780037, 29.483084, 47.966114>,  <33.975986, 29.357784, 48.025307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.780037, 29.483084, 47.966114>,  <33.453453, 29.691917, 47.867462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780037, 29.483084, 47.966114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364009, 0.133834, -0.921730,
		0.448212, 0.842329, 0.299313,
		0.816458, -0.522083, 0.246630,
		34.024975, 29.326458, 48.040104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943489, 30.084993, 47.588974>,  <33.453453, 29.691917, 47.867462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943489, 30.084993, 47.588974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.167011, 29.756895, 47.637848>,  <34.301125, 29.560036, 47.667171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.167011, 29.756895, 47.637848>,  <33.943489, 30.084993, 47.588974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167011, 29.756895, 47.637848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376310, 0.119509, -0.918754,
		0.739003, 0.559385, 0.375450,
		0.558806, -0.820248, 0.122185,
		34.334652, 29.510820, 47.674503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636818, 30.225876, 47.287346>,  <33.943489, 30.084993, 47.588974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636818, 30.225876, 47.287346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.619560, 29.826492, 47.273380>,  <34.609207, 29.586863, 47.265003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.619560, 29.826492, 47.273380>,  <34.636818, 30.225876, 47.287346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619560, 29.826492, 47.273380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414815, 0.013887, -0.909799,
		0.908882, -0.053734, 0.413577,
		-0.043144, -0.998459, -0.034912,
		34.606617, 29.526955, 47.262905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192360, 30.024216, 46.930275>,  <34.636818, 30.225876, 47.287346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192360, 30.024216, 46.930275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965546, 29.695007, 46.943626>,  <34.829456, 29.497482, 46.951637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965546, 29.695007, 46.943626>,  <35.192360, 30.024216, 46.930275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965546, 29.695007, 46.943626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270912, -0.224611, -0.936032,
		0.777871, -0.521717, 0.350327,
		-0.567031, -0.823020, 0.033379,
		34.795437, 29.448101, 46.953640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667736, 29.510618, 46.676708>,  <35.192360, 30.024216, 46.930275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667736, 29.510618, 46.676708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.288330, 29.396940, 46.620789>,  <35.060684, 29.328733, 46.587234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.288330, 29.396940, 46.620789>,  <35.667736, 29.510618, 46.676708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288330, 29.396940, 46.620789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237427, -0.345887, -0.907739,
		0.209617, -0.894202, 0.395555,
		-0.948520, -0.284193, -0.139804,
		35.003773, 29.311682, 46.578846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684212, 28.795242, 46.402569>,  <35.667736, 29.510618, 46.676708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684212, 28.795242, 46.402569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340775, 28.976328, 46.306347>,  <35.134712, 29.084978, 46.248615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340775, 28.976328, 46.306347>,  <35.684212, 28.795242, 46.402569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340775, 28.976328, 46.306347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147501, -0.231244, -0.961650,
		-0.490978, -0.861149, 0.131769,
		-0.858594, 0.452713, -0.240556,
		35.083195, 29.112141, 46.234180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423454, 28.275904, 45.940845>,  <35.684212, 28.795242, 46.402569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423454, 28.275904, 45.940845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.240108, 28.623541, 45.866463>,  <35.130100, 28.832123, 45.821835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.240108, 28.623541, 45.866463>,  <35.423454, 28.275904, 45.940845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240108, 28.623541, 45.866463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087760, -0.163945, -0.982558,
		-0.884421, -0.466688, -0.001125,
		-0.458364, 0.869094, -0.185953,
		35.102600, 28.884270, 45.810677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938507, 28.153101, 45.479980>,  <35.423454, 28.275904, 45.940845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938507, 28.153101, 45.479980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.960579, 28.548958, 45.426964>,  <34.973824, 28.786472, 45.395153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.960579, 28.548958, 45.426964>,  <34.938507, 28.153101, 45.479980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960579, 28.548958, 45.426964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026773, -0.134159, -0.990598,
		-0.998117, 0.051113, -0.033898,
		0.055181, 0.989641, -0.132538,
		34.977135, 28.845850, 45.387203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291092, 28.432453, 45.138573>,  <34.938507, 28.153101, 45.479980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291092, 28.432453, 45.138573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566322, 28.712770, 45.063274>,  <34.731461, 28.880962, 45.018093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566322, 28.712770, 45.063274>,  <34.291092, 28.432453, 45.138573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566322, 28.712770, 45.063274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152913, -0.113565, -0.981693,
		-0.709344, 0.704264, 0.029019,
		0.688076, 0.700796, -0.188248,
		34.772743, 28.923010, 45.006802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039650, 28.854057, 44.641293>,  <34.291092, 28.432453, 45.138573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039650, 28.854057, 44.641293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.435303, 28.899139, 44.603535>,  <34.672695, 28.926189, 44.580879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.435303, 28.899139, 44.603535>,  <34.039650, 28.854057, 44.641293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435303, 28.899139, 44.603535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071987, -0.188506, -0.979430,
		-0.128180, 0.975583, -0.178344,
		0.989135, 0.112705, -0.094392,
		34.732044, 28.932951, 44.575218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490978, 29.257559, 44.601143>,  <34.039650, 28.854057, 44.641293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490978, 29.257559, 44.601143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.158970, 29.479057, 44.574497>,  <32.959766, 29.611956, 44.558510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.158970, 29.479057, 44.574497>,  <33.490978, 29.257559, 44.601143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158970, 29.479057, 44.574497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332327, -0.395103, 0.856418,
		0.447917, 0.732981, 0.511966,
		-0.830018, 0.553744, -0.066616,
		32.909966, 29.645180, 44.554512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419228, 29.669102, 45.172207>,  <33.490978, 29.257559, 44.601143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419228, 29.669102, 45.172207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041656, 29.658968, 45.040531>,  <32.815113, 29.652887, 44.961525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041656, 29.658968, 45.040531>,  <33.419228, 29.669102, 45.172207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041656, 29.658968, 45.040531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315700, -0.222565, 0.922387,
		-0.096631, 0.974589, 0.202088,
		-0.943926, -0.025332, -0.329185,
		32.758480, 29.651369, 44.941776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042046, 29.966125, 45.692360>,  <33.419228, 29.669102, 45.172207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042046, 29.966125, 45.692360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.735260, 29.803251, 45.493977>,  <32.551189, 29.705526, 45.374947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.735260, 29.803251, 45.493977>,  <33.042046, 29.966125, 45.692360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735260, 29.803251, 45.493977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474012, -0.161462, 0.865588,
		-0.432534, 0.898960, -0.069177,
		-0.766960, -0.407187, -0.495955,
		32.505173, 29.681095, 45.345188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445396, 30.340769, 45.644810>,  <33.042046, 29.966125, 45.692360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445396, 30.340769, 45.644810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.332184, 29.957626, 45.625191>,  <32.264256, 29.727741, 45.613419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.332184, 29.957626, 45.625191>,  <32.445396, 30.340769, 45.644810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332184, 29.957626, 45.625191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460250, 0.090775, 0.883136,
		-0.841466, 0.272528, -0.466545,
		-0.283030, -0.957856, -0.049047,
		32.247276, 29.670269, 45.610477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749352, 30.253511, 45.820148>,  <32.445396, 30.340769, 45.644810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749352, 30.253511, 45.820148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850445, 29.868767, 45.862000>,  <31.911100, 29.637920, 45.887112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850445, 29.868767, 45.862000>,  <31.749352, 30.253511, 45.820148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850445, 29.868767, 45.862000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614525, -0.076055, 0.785223,
		-0.747319, -0.262748, -0.610310,
		0.252733, -0.961863, 0.104628,
		31.926264, 29.580208, 45.893387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080959, 29.984844, 45.870220>,  <31.749352, 30.253511, 45.820148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080959, 29.984844, 45.870220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.342913, 29.713486, 46.003429>,  <31.500086, 29.550671, 46.083355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.342913, 29.713486, 46.003429>,  <31.080959, 29.984844, 45.870220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342913, 29.713486, 46.003429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629197, -0.245351, 0.737505,
		-0.418612, -0.692519, -0.587521,
		0.654885, -0.678395, 0.333024,
		31.539379, 29.509968, 46.103336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670305, 29.281582, 46.023186>,  <31.080959, 29.984844, 45.870220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670305, 29.281582, 46.023186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.001093, 29.258087, 46.246853>,  <31.199566, 29.243990, 46.381054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.001093, 29.258087, 46.246853>,  <30.670305, 29.281582, 46.023186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001093, 29.258087, 46.246853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560597, -0.010006, 0.828028,
		-0.043048, -0.998223, -0.041207,
		0.826969, -0.058745, 0.559170,
		31.249184, 29.240465, 46.414604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627401, 28.739321, 46.519085>,  <30.670305, 29.281582, 46.023186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627401, 28.739321, 46.519085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.898502, 28.985510, 46.680004>,  <31.061163, 29.133223, 46.776558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.898502, 28.985510, 46.680004>,  <30.627401, 28.739321, 46.519085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898502, 28.985510, 46.680004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501810, -0.012739, 0.864884,
		0.537436, -0.788056, 0.300216,
		0.677753, 0.615472, 0.402301,
		31.101828, 29.170151, 46.800694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671789, 28.529211, 47.192036>,  <30.627401, 28.739321, 46.519085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671789, 28.529211, 47.192036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.867010, 28.875154, 47.239071>,  <30.984142, 29.082720, 47.267292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.867010, 28.875154, 47.239071>,  <30.671789, 28.529211, 47.192036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867010, 28.875154, 47.239071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407340, 0.106550, 0.907040,
		0.771932, -0.490580, 0.404293,
		0.488053, 0.864857, 0.117583,
		31.013426, 29.134611, 47.274345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833586, 28.464163, 47.815014>,  <30.671789, 28.529211, 47.192036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833586, 28.464163, 47.815014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.906370, 28.850262, 47.739983>,  <30.950041, 29.081921, 47.694965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.906370, 28.850262, 47.739983>,  <30.833586, 28.464163, 47.815014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906370, 28.850262, 47.739983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126401, 0.212141, 0.969030,
		0.975148, -0.152613, 0.160610,
		0.181959, 0.965249, -0.187579,
		30.960958, 29.139837, 47.683708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254433, 28.718882, 48.392311>,  <30.833586, 28.464163, 47.815014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254433, 28.718882, 48.392311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083347, 29.050732, 48.248764>,  <30.980696, 29.249842, 48.162636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083347, 29.050732, 48.248764>,  <31.254433, 28.718882, 48.392311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083347, 29.050732, 48.248764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099813, 0.351237, 0.930951,
		0.898386, 0.434001, -0.067422,
		-0.427715, 0.829624, -0.358866,
		30.955032, 29.299620, 48.141106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494337, 29.253927, 48.837856>,  <31.254433, 28.718882, 48.392311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494337, 29.253927, 48.837856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.154289, 29.380264, 48.669312>,  <30.950260, 29.456066, 48.568184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.154289, 29.380264, 48.669312>,  <31.494337, 29.253927, 48.837856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154289, 29.380264, 48.669312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356910, 0.242747, 0.902047,
		0.387189, 0.917233, -0.093636,
		-0.850118, 0.315843, -0.421359,
		30.899254, 29.475018, 48.542904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306007, 29.664701, 49.310089>,  <31.494337, 29.253927, 48.837856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306007, 29.664701, 49.310089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.974699, 29.637232, 49.087650>,  <30.775913, 29.620750, 48.954185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.974699, 29.637232, 49.087650>,  <31.306007, 29.664701, 49.310089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974699, 29.637232, 49.087650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560322, 0.104603, 0.821643,
		0.001743, 0.992140, -0.125120,
		-0.828273, -0.068675, -0.556100,
		30.726217, 29.616629, 48.920822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063009, 30.141253, 49.655113>,  <31.306007, 29.664701, 49.310089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063009, 30.141253, 49.655113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.755507, 29.978865, 49.457443>,  <30.571005, 29.881432, 49.338840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.755507, 29.978865, 49.457443>,  <31.063009, 30.141253, 49.655113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755507, 29.978865, 49.457443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595628, 0.173094, 0.784389,
		-0.232898, 0.897345, -0.374873,
		-0.768756, -0.405968, -0.494171,
		30.524879, 29.857075, 49.309193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476234, 30.610300, 49.779144>,  <31.063009, 30.141253, 49.655113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476234, 30.610300, 49.779144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.502865, 30.976250, 49.938427>,  <30.518843, 31.195820, 50.033997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.502865, 30.976250, 49.938427>,  <30.476234, 30.610300, 49.779144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502865, 30.976250, 49.938427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541793, 0.301987, -0.784388,
		-0.837871, 0.267968, -0.475568,
		0.066575, 0.914875, 0.398210,
		30.522837, 31.250711, 50.057888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374607, 31.075441, 49.187355>,  <30.476234, 30.610300, 49.779144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374607, 31.075441, 49.187355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.522364, 31.299610, 49.483860>,  <30.611017, 31.434113, 49.661762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.522364, 31.299610, 49.483860>,  <30.374607, 31.075441, 49.187355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522364, 31.299610, 49.483860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385803, 0.633202, -0.670978,
		-0.845404, 0.533835, 0.017685,
		0.369390, 0.560424, 0.741267,
		30.633181, 31.467737, 49.706242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232859, 31.707346, 48.963245>,  <30.374607, 31.075441, 49.187355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232859, 31.707346, 48.963245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.493841, 31.784647, 49.256355>,  <30.650431, 31.831028, 49.432220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.493841, 31.784647, 49.256355>,  <30.232859, 31.707346, 48.963245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493841, 31.784647, 49.256355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390946, 0.742508, -0.543914,
		-0.649203, 0.641354, 0.408902,
		0.652454, 0.193252, 0.732773,
		30.689577, 31.842623, 49.476189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149101, 32.339706, 49.139912>,  <30.232859, 31.707346, 48.963245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149101, 32.339706, 49.139912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.528200, 32.269573, 49.246521>,  <30.755659, 32.227493, 49.310486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.528200, 32.269573, 49.246521>,  <30.149101, 32.339706, 49.139912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528200, 32.269573, 49.246521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305659, 0.738299, -0.601238,
		-0.091356, 0.651287, 0.753313,
		0.947748, -0.175331, 0.266520,
		30.812525, 32.216972, 49.326477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500664, 33.047169, 49.298843>,  <30.149101, 32.339706, 49.139912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500664, 33.047169, 49.298843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.776308, 32.772091, 49.207451>,  <30.941694, 32.607044, 49.152615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.776308, 32.772091, 49.207451>,  <30.500664, 33.047169, 49.298843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776308, 32.772091, 49.207451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459713, 0.658592, -0.595752,
		0.560169, 0.305505, 0.769985,
		0.689112, -0.687694, -0.228478,
		30.983042, 32.565784, 49.138908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086649, 33.414639, 49.180210>,  <30.500664, 33.047169, 49.298843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086649, 33.414639, 49.180210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.162636, 33.063778, 49.003796>,  <31.208227, 32.853260, 48.897945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.162636, 33.063778, 49.003796>,  <31.086649, 33.414639, 49.180210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162636, 33.063778, 49.003796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347565, 0.480207, -0.805357,
		0.918211, -0.000297, 0.396092,
		0.189967, -0.877155, -0.441035,
		31.219625, 32.800632, 48.871487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618784, 33.580753, 48.824139>,  <31.086649, 33.414639, 49.180210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618784, 33.580753, 48.824139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.534767, 33.241276, 48.629982>,  <31.484356, 33.037590, 48.513489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.534767, 33.241276, 48.629982>,  <31.618784, 33.580753, 48.824139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534767, 33.241276, 48.629982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149585, 0.462723, -0.873791,
		0.966181, -0.256141, 0.029760,
		-0.210043, -0.848692, -0.485389,
		31.471754, 32.986668, 48.484364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309994, 33.392693, 49.342220>,  <31.618784, 33.580753, 48.824139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309994, 33.392693, 49.342220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541065, 33.695969, 49.463165>,  <32.679710, 33.877934, 49.535732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541065, 33.695969, 49.463165>,  <32.309994, 33.392693, 49.342220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541065, 33.695969, 49.463165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035303, -0.393287, 0.918738,
		0.815498, -0.520064, -0.253961,
		0.577682, 0.758194, 0.302365,
		32.714371, 33.923428, 49.553875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888615, 33.140133, 49.762264>,  <32.309994, 33.392693, 49.342220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888615, 33.140133, 49.762264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.868053, 33.525436, 49.867702>,  <32.855717, 33.756618, 49.930965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.868053, 33.525436, 49.867702>,  <32.888615, 33.140133, 49.762264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868053, 33.525436, 49.867702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086839, -0.258632, 0.962065,
		0.994895, 0.072345, -0.070354,
		-0.051404, 0.963263, 0.263594,
		32.852631, 33.814415, 49.946781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394127, 33.233929, 50.234188>,  <32.888615, 33.140133, 49.762264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394127, 33.233929, 50.234188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.125965, 33.511665, 50.338833>,  <32.965069, 33.678307, 50.401619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.125965, 33.511665, 50.338833>,  <33.394127, 33.233929, 50.234188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125965, 33.511665, 50.338833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029886, -0.327031, 0.944541,
		0.741393, 0.641044, 0.198492,
		-0.670406, 0.694344, 0.261617,
		32.924843, 33.719967, 50.417316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709854, 33.603943, 50.766663>,  <33.394127, 33.233929, 50.234188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709854, 33.603943, 50.766663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314491, 33.656727, 50.796684>,  <33.077274, 33.688396, 50.814697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314491, 33.656727, 50.796684>,  <33.709854, 33.603943, 50.766663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314491, 33.656727, 50.796684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018440, -0.386381, 0.922155,
		0.150688, 0.912851, 0.379469,
		-0.988409, 0.131960, 0.075055,
		33.017967, 33.696316, 50.819202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563530, 33.816418, 51.392159>,  <33.709854, 33.603943, 50.766663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563530, 33.816418, 51.392159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.206226, 33.674011, 51.282364>,  <32.991844, 33.588570, 51.216488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.206226, 33.674011, 51.282364>,  <33.563530, 33.816418, 51.392159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206226, 33.674011, 51.282364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092371, -0.452209, 0.887116,
		-0.439951, 0.817778, 0.371055,
		-0.893259, -0.356013, -0.274489,
		32.938248, 33.567207, 51.200016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200920, 33.756981, 52.014683>,  <33.563530, 33.816418, 51.392159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200920, 33.756981, 52.014683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.942726, 33.560162, 51.781021>,  <32.787807, 33.442070, 51.640823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.942726, 33.560162, 51.781021>,  <33.200920, 33.756981, 52.014683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942726, 33.560162, 51.781021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221438, -0.611411, 0.759698,
		-0.730965, 0.619730, 0.285701,
		-0.645488, -0.492048, -0.584152,
		32.749081, 33.412548, 51.605774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624664, 33.650131, 52.409435>,  <33.200920, 33.756981, 52.014683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624664, 33.650131, 52.409435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606285, 33.362560, 52.132011>,  <32.595257, 33.190018, 51.965557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606285, 33.362560, 52.132011>,  <32.624664, 33.650131, 52.409435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606285, 33.362560, 52.132011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177614, -0.677351, 0.713897,
		-0.983027, 0.155988, -0.096569,
		-0.045948, -0.718932, -0.693560,
		32.592503, 33.146881, 51.923943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062763, 33.226036, 52.505615>,  <32.624664, 33.650131, 52.409435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062763, 33.226036, 52.505615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.315941, 32.986385, 52.309479>,  <32.467850, 32.842594, 52.191799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.315941, 32.986385, 52.309479>,  <32.062763, 33.226036, 52.505615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315941, 32.986385, 52.309479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100507, -0.691578, 0.715275,
		-0.767645, -0.403448, -0.497947,
		0.632945, -0.599124, -0.490337,
		32.505825, 32.806648, 52.162376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841202, 32.657818, 52.742851>,  <32.062763, 33.226036, 52.505615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841202, 32.657818, 52.742851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.208630, 32.590099, 52.599987>,  <32.429085, 32.549469, 52.514267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.208630, 32.590099, 52.599987>,  <31.841202, 32.657818, 52.742851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208630, 32.590099, 52.599987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146865, -0.692739, 0.706076,
		-0.366959, -0.701035, -0.611466,
		0.918571, -0.169298, -0.357164,
		32.484200, 32.539310, 52.492836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.335167, 37.214260, 37.313858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507828, 37.559433, 37.418949>,  <35.611423, 37.766537, 37.482006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507828, 37.559433, 37.418949>,  <35.335167, 37.214260, 37.313858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507828, 37.559433, 37.418949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863501, 0.479523, -0.156283,
		-0.260846, -0.159408, 0.952128,
		0.431655, 0.862929, 0.262731,
		35.637325, 37.818314, 37.497768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682796, 37.438755, 37.959080>,  <35.335167, 37.214260, 37.313858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682796, 37.438755, 37.959080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038528, 37.340145, 38.113132>,  <36.251968, 37.280979, 38.205563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038528, 37.340145, 38.113132>,  <35.682796, 37.438755, 37.959080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038528, 37.340145, 38.113132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440351, -0.234712, 0.866603,
		-0.123234, -0.940288, -0.317289,
		0.889328, -0.246514, 0.385132,
		36.305328, 37.266190, 38.228672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721966, 36.651291, 38.154030>,  <35.682796, 37.438755, 37.959080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721966, 36.651291, 38.154030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967724, 36.872177, 38.379448>,  <36.115177, 37.004707, 38.514698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967724, 36.872177, 38.379448>,  <35.721966, 36.651291, 38.154030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967724, 36.872177, 38.379448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369745, -0.429454, 0.823928,
		0.697000, -0.714583, -0.059675,
		0.614393, 0.552214, 0.563543,
		36.152042, 37.037842, 38.548512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954987, 36.308361, 38.702591>,  <35.721966, 36.651291, 38.154030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954987, 36.308361, 38.702591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034519, 36.668037, 38.858498>,  <36.082237, 36.883842, 38.952042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034519, 36.668037, 38.858498>,  <35.954987, 36.308361, 38.702591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034519, 36.668037, 38.858498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451958, -0.268766, 0.850588,
		0.869599, -0.345281, 0.352958,
		0.198828, 0.899192, 0.389771,
		36.094170, 36.937794, 38.975430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024570, 36.186192, 39.379139>,  <35.954987, 36.308361, 38.702591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024570, 36.186192, 39.379139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981464, 36.583134, 39.403191>,  <35.955601, 36.821301, 39.417622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981464, 36.583134, 39.403191>,  <36.024570, 36.186192, 39.379139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981464, 36.583134, 39.403191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463694, -0.103670, 0.879909,
		0.879417, 0.066943, 0.471322,
		-0.107766, 0.992357, 0.060128,
		35.949135, 36.880840, 39.421230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290745, 36.395859, 40.051525>,  <36.024570, 36.186192, 39.379139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290745, 36.395859, 40.051525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054947, 36.704163, 39.954842>,  <35.913467, 36.889145, 39.896832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054947, 36.704163, 39.954842>,  <36.290745, 36.395859, 40.051525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054947, 36.704163, 39.954842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452209, -0.066942, 0.889397,
		0.669332, 0.633597, 0.388007,
		-0.589493, 0.770761, -0.241712,
		35.878098, 36.935390, 39.882328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286224, 36.718147, 40.587780>,  <36.290745, 36.395859, 40.051525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286224, 36.718147, 40.587780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965961, 36.867912, 40.400692>,  <35.773804, 36.957771, 40.288441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965961, 36.867912, 40.400692>,  <36.286224, 36.718147, 40.587780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965961, 36.867912, 40.400692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520169, -0.047072, 0.852765,
		0.297266, 0.926068, 0.232444,
		-0.800660, 0.374408, -0.467720,
		35.725765, 36.980236, 40.260376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065964, 37.241688, 41.064812>,  <36.286224, 36.718147, 40.587780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065964, 37.241688, 41.064812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770634, 37.157818, 40.808403>,  <35.593433, 37.107494, 40.654560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770634, 37.157818, 40.808403>,  <36.065964, 37.241688, 41.064812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770634, 37.157818, 40.808403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664534, 0.063860, 0.744524,
		-0.115176, 0.975682, -0.186488,
		-0.738328, -0.209679, -0.641019,
		35.549133, 37.094913, 40.616096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590401, 37.703564, 40.926888>,  <36.065964, 37.241688, 41.064812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590401, 37.703564, 40.926888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382679, 37.376915, 40.826134>,  <35.258045, 37.180927, 40.765682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382679, 37.376915, 40.826134>,  <35.590401, 37.703564, 40.926888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382679, 37.376915, 40.826134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648113, 0.184229, 0.738924,
		-0.557016, 0.546982, -0.624935,
		-0.519309, -0.816621, -0.251888,
		35.226887, 37.131927, 40.750568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904057, 37.912373, 40.995167>,  <35.590401, 37.703564, 40.926888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904057, 37.912373, 40.995167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928844, 37.514183, 41.023979>,  <34.943718, 37.275269, 41.041267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928844, 37.514183, 41.023979>,  <34.904057, 37.912373, 40.995167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928844, 37.514183, 41.023979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614624, 0.018805, 0.788596,
		-0.786382, -0.093141, -0.610678,
		0.061966, -0.995475, 0.072035,
		34.947433, 37.215542, 41.045589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276760, 37.848545, 41.203178>,  <34.904057, 37.912373, 40.995167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276760, 37.848545, 41.203178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456318, 37.498436, 41.275158>,  <34.564053, 37.288368, 41.318344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456318, 37.498436, 41.275158>,  <34.276760, 37.848545, 41.203178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456318, 37.498436, 41.275158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545500, -0.108920, 0.831003,
		-0.707759, -0.471196, -0.526357,
		0.448896, -0.875278, 0.179948,
		34.590988, 37.235851, 41.329144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743675, 37.466984, 41.421761>,  <34.276760, 37.848545, 41.203178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743675, 37.466984, 41.421761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052917, 37.258736, 41.566685>,  <34.238461, 37.133785, 41.653637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052917, 37.258736, 41.566685>,  <33.743675, 37.466984, 41.421761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052917, 37.258736, 41.566685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500097, -0.148970, 0.853059,
		-0.390151, -0.840689, -0.375532,
		0.773101, -0.520624, 0.362305,
		34.284847, 37.102551, 41.675377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340477, 36.904549, 41.086361>,  <33.743675, 37.466984, 41.421761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340477, 36.904549, 41.086361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979595, 36.754944, 41.000443>,  <32.763065, 36.665180, 40.948891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979595, 36.754944, 41.000443>,  <33.340477, 36.904549, 41.086361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979595, 36.754944, 41.000443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246745, -0.039112, -0.968291,
		0.353753, -0.926598, 0.127573,
		-0.902206, -0.374014, -0.214798,
		32.708935, 36.642738, 40.936005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468708, 36.560001, 40.479706>,  <33.340477, 36.904549, 41.086361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468708, 36.560001, 40.479706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068947, 36.567562, 40.491219>,  <32.829090, 36.572098, 40.498127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068947, 36.567562, 40.491219>,  <33.468708, 36.560001, 40.479706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068947, 36.567562, 40.491219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029409, -0.033645, -0.999001,
		-0.017894, -0.999255, 0.034180,
		-0.999407, 0.018881, 0.028785,
		32.769123, 36.573231, 40.499855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210396, 36.042778, 39.914188>,  <33.468708, 36.560001, 40.479706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210396, 36.042778, 39.914188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916756, 36.304253, 39.987717>,  <32.740570, 36.461136, 40.031834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916756, 36.304253, 39.987717>,  <33.210396, 36.042778, 39.914188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916756, 36.304253, 39.987717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322239, -0.097076, -0.941668,
		-0.597710, -0.750514, 0.281907,
		-0.734101, 0.653686, 0.183821,
		32.696526, 36.500359, 40.042862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684280, 35.712830, 39.684994>,  <33.210396, 36.042778, 39.914188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684280, 35.712830, 39.684994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571732, 36.096439, 39.698235>,  <32.504200, 36.326607, 39.706181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571732, 36.096439, 39.698235>,  <32.684280, 35.712830, 39.684994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571732, 36.096439, 39.698235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350715, -0.070668, -0.933812,
		-0.893212, -0.274359, 0.356229,
		-0.281374, 0.959027, 0.033101,
		32.487320, 36.384148, 39.708164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054588, 35.702000, 39.314354>,  <32.684280, 35.712830, 39.684994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054588, 35.702000, 39.314354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126278, 36.095348, 39.326057>,  <32.169292, 36.331356, 39.333080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126278, 36.095348, 39.326057>,  <32.054588, 35.702000, 39.314354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126278, 36.095348, 39.326057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361263, 0.093445, -0.927770,
		-0.915078, 0.155710, 0.372004,
		0.179225, 0.983373, 0.029257,
		32.180046, 36.390362, 39.334835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471870, 35.994518, 39.201527>,  <32.054588, 35.702000, 39.314354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471870, 35.994518, 39.201527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761513, 36.250858, 39.099560>,  <31.935297, 36.404663, 39.038380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761513, 36.250858, 39.099560>,  <31.471870, 35.994518, 39.201527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761513, 36.250858, 39.099560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493108, 0.222634, -0.840998,
		-0.482200, 0.734674, 0.477218,
		0.724104, 0.640850, -0.254920,
		31.978745, 36.443111, 39.023083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183596, 36.618237, 39.094398>,  <31.471870, 35.994518, 39.201527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183596, 36.618237, 39.094398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524324, 36.626129, 38.885017>,  <31.728762, 36.630863, 38.759388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524324, 36.626129, 38.885017>,  <31.183596, 36.618237, 39.094398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524324, 36.626129, 38.885017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499022, 0.334438, -0.799455,
		0.159291, 0.942211, 0.294728,
		0.851824, 0.019730, -0.523457,
		31.779871, 36.632050, 38.727982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080568, 37.215923, 38.544876>,  <31.183596, 36.618237, 39.094398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080568, 37.215923, 38.544876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392864, 37.024498, 38.384167>,  <31.580242, 36.909641, 38.287743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392864, 37.024498, 38.384167>,  <31.080568, 37.215923, 38.544876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392864, 37.024498, 38.384167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357063, 0.185971, -0.915380,
		0.512785, 0.858133, -0.025682,
		0.780741, -0.478564, -0.401771,
		31.627087, 36.880928, 38.263634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214865, 37.677654, 38.010479>,  <31.080568, 37.215923, 38.544876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214865, 37.677654, 38.010479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400249, 37.334362, 37.922256>,  <31.511480, 37.128387, 37.869324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400249, 37.334362, 37.922256>,  <31.214865, 37.677654, 38.010479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400249, 37.334362, 37.922256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274521, 0.097588, -0.956616,
		0.842520, 0.503904, -0.190373,
		0.463464, -0.858230, -0.220552,
		31.539289, 37.076893, 37.856091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563566, 37.763783, 37.351116>,  <31.214865, 37.677654, 38.010479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563566, 37.763783, 37.351116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548166, 37.365128, 37.380047>,  <31.538927, 37.125935, 37.397404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548166, 37.365128, 37.380047>,  <31.563566, 37.763783, 37.351116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548166, 37.365128, 37.380047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226688, -0.061782, -0.972006,
		0.973206, -0.053816, -0.223547,
		-0.038499, -0.996638, 0.072326,
		31.536617, 37.066135, 37.401745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937000, 37.598148, 36.809013>,  <31.563566, 37.763783, 37.351116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937000, 37.598148, 36.809013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719305, 37.278316, 36.910587>,  <31.588688, 37.086418, 36.971531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719305, 37.278316, 36.910587>,  <31.937000, 37.598148, 36.809013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719305, 37.278316, 36.910587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376191, -0.037954, -0.925764,
		0.749858, -0.599362, -0.280138,
		-0.544236, -0.799578, 0.253934,
		31.556034, 37.038445, 36.986767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168541, 36.884659, 36.411438>,  <31.937000, 37.598148, 36.809013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168541, 36.884659, 36.411438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785078, 36.846081, 36.518520>,  <31.554998, 36.822933, 36.582767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785078, 36.846081, 36.518520>,  <32.168541, 36.884659, 36.411438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785078, 36.846081, 36.518520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254879, -0.127211, -0.958569,
		0.126508, -0.987175, 0.097370,
		-0.958662, -0.096449, 0.267703,
		31.497478, 36.817146, 36.598831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895809, 36.289066, 36.060600>,  <32.168541, 36.884659, 36.411438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895809, 36.289066, 36.060600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597382, 36.548080, 36.122665>,  <31.418325, 36.703491, 36.159904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597382, 36.548080, 36.122665>,  <31.895809, 36.289066, 36.060600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597382, 36.548080, 36.122665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384867, -0.229195, -0.894062,
		-0.543377, -0.726749, 0.420212,
		-0.746069, 0.647538, 0.155163,
		31.373560, 36.742340, 36.169216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473642, 36.108494, 35.527256>,  <31.895809, 36.289066, 36.060600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473642, 36.108494, 35.527256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283047, 36.424698, 35.681164>,  <31.168690, 36.614422, 35.773506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283047, 36.424698, 35.681164>,  <31.473642, 36.108494, 35.527256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283047, 36.424698, 35.681164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535211, 0.086391, -0.840289,
		-0.697501, -0.606321, 0.381927,
		-0.476490, 0.790513, 0.384768,
		31.140100, 36.661850, 35.796593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178568, 35.602882, 36.024891>,  <31.473642, 36.108494, 35.527256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178568, 35.602882, 36.024891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425217, 35.590042, 35.710247>,  <31.573206, 35.582340, 35.521461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425217, 35.590042, 35.710247>,  <31.178568, 35.602882, 36.024891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425217, 35.590042, 35.710247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702045, -0.429721, 0.567868,
		-0.356247, -0.902391, -0.242442,
		0.616621, -0.032096, -0.786606,
		31.610203, 35.580414, 35.474266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545767, 34.878059, 35.942371>,  <31.178568, 35.602882, 36.024891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545767, 34.878059, 35.942371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750528, 35.196793, 35.813988>,  <31.873384, 35.388031, 35.736958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750528, 35.196793, 35.813988>,  <31.545767, 34.878059, 35.942371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750528, 35.196793, 35.813988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823473, -0.348769, 0.447495,
		0.244638, -0.493375, -0.834705,
		0.511903, 0.796832, -0.320959,
		31.904099, 35.435841, 35.717701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127087, 34.679741, 35.616249>,  <31.545767, 34.878059, 35.942371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127087, 34.679741, 35.616249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188168, 35.041058, 35.776627>,  <32.224815, 35.257847, 35.872852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188168, 35.041058, 35.776627>,  <32.127087, 34.679741, 35.616249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188168, 35.041058, 35.776627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868279, -0.316385, 0.382089,
		0.471988, 0.289781, -0.832619,
		0.152706, 0.903287, 0.400940,
		32.233978, 35.312042, 35.896908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772011, 34.320934, 35.507401>,  <32.127087, 34.679741, 35.616249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772011, 34.320934, 35.507401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131073, 34.154751, 35.448605>,  <33.346512, 34.055042, 35.413326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131073, 34.154751, 35.448605>,  <32.772011, 34.320934, 35.507401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131073, 34.154751, 35.448605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031183, -0.392583, 0.919188,
		-0.439593, -0.820531, -0.365359,
		0.897656, -0.415461, -0.146990,
		33.400372, 34.030113, 35.404507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654015, 33.608299, 35.698486>,  <32.772011, 34.320934, 35.507401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654015, 33.608299, 35.698486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016930, 33.762444, 35.765820>,  <33.234676, 33.854931, 35.806217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016930, 33.762444, 35.765820>,  <32.654015, 33.608299, 35.698486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016930, 33.762444, 35.765820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110792, -0.167096, 0.979696,
		0.405662, -0.907511, -0.108909,
		0.907284, 0.385360, 0.168329,
		33.289116, 33.878052, 35.816319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132355, 33.104675, 36.079021>,  <32.654015, 33.608299, 35.698486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132355, 33.104675, 36.079021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274731, 33.473427, 36.140259>,  <33.360157, 33.694679, 36.177002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274731, 33.473427, 36.140259>,  <33.132355, 33.104675, 36.079021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274731, 33.473427, 36.140259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111192, -0.120882, 0.986420,
		0.927870, -0.368131, 0.059479,
		0.355941, 0.921882, 0.153096,
		33.381512, 33.749992, 36.186188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722370, 33.110733, 36.470451>,  <33.132355, 33.104675, 36.079021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722370, 33.110733, 36.470451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553329, 33.458939, 36.571339>,  <33.451904, 33.667862, 36.631870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553329, 33.458939, 36.571339>,  <33.722370, 33.110733, 36.470451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553329, 33.458939, 36.571339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113227, -0.326817, 0.938280,
		0.899215, 0.367961, 0.236679,
		-0.422601, 0.870514, 0.252216,
		33.426548, 33.720093, 36.647003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085526, 33.255661, 36.997169>,  <33.722370, 33.110733, 36.470451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085526, 33.255661, 36.997169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760578, 33.484470, 37.042519>,  <33.565609, 33.621754, 37.069729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760578, 33.484470, 37.042519>,  <34.085526, 33.255661, 36.997169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760578, 33.484470, 37.042519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069538, -0.288047, 0.955088,
		0.578986, 0.767999, 0.273777,
		-0.812367, 0.572020, 0.113371,
		33.516869, 33.656075, 37.076530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181496, 33.554493, 37.569786>,  <34.085526, 33.255661, 36.997169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181496, 33.554493, 37.569786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783890, 33.581547, 37.535488>,  <33.545326, 33.597778, 37.514908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783890, 33.581547, 37.535488>,  <34.181496, 33.554493, 37.569786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783890, 33.581547, 37.535488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098088, -0.207664, 0.973270,
		0.048017, 0.975859, 0.213056,
		-0.994019, 0.067631, -0.085749,
		33.485683, 33.601837, 37.509762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945400, 34.119808, 37.986790>,  <34.181496, 33.554493, 37.569786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945400, 34.119808, 37.986790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612106, 33.901489, 37.951412>,  <33.412128, 33.770500, 37.930187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612106, 33.901489, 37.951412>,  <33.945400, 34.119808, 37.986790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612106, 33.901489, 37.951412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024679, -0.196515, 0.980190,
		-0.552362, 0.814550, 0.177213,
		-0.833239, -0.545793, -0.088445,
		33.362133, 33.737751, 37.924877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513821, 34.192173, 38.700127>,  <33.945400, 34.119808, 37.986790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513821, 34.192173, 38.700127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353298, 33.876968, 38.513371>,  <33.256985, 33.687847, 38.401318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353298, 33.876968, 38.513371>,  <33.513821, 34.192173, 38.700127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353298, 33.876968, 38.513371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019552, -0.502256, 0.864498,
		-0.915733, 0.356061, 0.186153,
		-0.401311, -0.788010, -0.466894,
		33.232906, 33.640564, 38.373302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904427, 33.997398, 39.067921>,  <33.513821, 34.192173, 38.700127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904427, 33.997398, 39.067921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029785, 33.664165, 38.885601>,  <33.105000, 33.464226, 38.776211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029785, 33.664165, 38.885601>,  <32.904427, 33.997398, 39.067921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029785, 33.664165, 38.885601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030204, -0.488478, 0.872053,
		-0.949141, -0.259534, -0.178251,
		0.313399, -0.833085, -0.455795,
		33.123806, 33.414238, 38.748863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436924, 33.550438, 39.336422>,  <32.904427, 33.997398, 39.067921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436924, 33.550438, 39.336422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758789, 33.343712, 39.219521>,  <32.951908, 33.219677, 39.149380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758789, 33.343712, 39.219521>,  <32.436924, 33.550438, 39.336422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758789, 33.343712, 39.219521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027600, -0.524260, 0.851111,
		-0.593088, -0.676792, -0.436118,
		0.804664, -0.516820, -0.292253,
		33.000187, 33.188667, 39.131844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347561, 32.998730, 39.633297>,  <32.436924, 33.550438, 39.336422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347561, 32.998730, 39.633297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731922, 32.935642, 39.542263>,  <32.962540, 32.897789, 39.487644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731922, 32.935642, 39.542263>,  <32.347561, 32.998730, 39.633297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731922, 32.935642, 39.542263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108310, -0.542328, 0.833156,
		-0.254832, -0.825230, -0.504040,
		0.960900, -0.157722, -0.227583,
		33.020191, 32.888325, 39.473988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498409, 32.172955, 39.701267>,  <32.347561, 32.998730, 39.633297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498409, 32.172955, 39.701267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849979, 32.363686, 39.705734>,  <33.060921, 32.478127, 39.708412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849979, 32.363686, 39.705734>,  <32.498409, 32.172955, 39.701267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849979, 32.363686, 39.705734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308550, -0.586277, 0.749050,
		0.363717, -0.654912, -0.662420,
		0.878924, 0.476832, 0.011166,
		33.113655, 32.506737, 39.709084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850502, 31.621689, 39.929428>,  <32.498409, 32.172955, 39.701267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850502, 31.621689, 39.929428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091827, 31.936108, 39.983307>,  <33.236622, 32.124760, 40.015633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091827, 31.936108, 39.983307>,  <32.850502, 31.621689, 39.929428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091827, 31.936108, 39.983307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456632, -0.478950, 0.749729,
		0.653835, -0.390816, -0.647891,
		0.603314, 0.786047, 0.134696,
		33.272823, 32.171921, 40.023716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523193, 31.336405, 40.027077>,  <32.850502, 31.621689, 39.929428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523193, 31.336405, 40.027077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495762, 31.692732, 40.206738>,  <33.479301, 31.906528, 40.314533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495762, 31.692732, 40.206738>,  <33.523193, 31.336405, 40.027077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495762, 31.692732, 40.206738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238609, -0.422503, 0.874389,
		0.968691, 0.167140, -0.183582,
		-0.068581, 0.890817, 0.449156,
		33.475189, 31.959976, 40.341484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065403, 31.361544, 40.542698>,  <33.523193, 31.336405, 40.027077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065403, 31.361544, 40.542698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796185, 31.637550, 40.649197>,  <33.634655, 31.803154, 40.713097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796185, 31.637550, 40.649197>,  <34.065403, 31.361544, 40.542698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796185, 31.637550, 40.649197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068216, -0.300534, 0.951329,
		0.736447, 0.658451, 0.155204,
		-0.673048, 0.690015, 0.266244,
		33.594269, 31.844555, 40.729069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261032, 31.435577, 41.254665>,  <34.065403, 31.361544, 40.542698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261032, 31.435577, 41.254665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896671, 31.594603, 41.210468>,  <33.678055, 31.690018, 41.183949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896671, 31.594603, 41.210468>,  <34.261032, 31.435577, 41.254665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896671, 31.594603, 41.210468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220850, -0.243528, 0.944415,
		0.348553, 0.884669, 0.309631,
		-0.910898, 0.397561, -0.110497,
		33.623402, 31.713871, 41.177319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202633, 31.866264, 41.810192>,  <34.261032, 31.435577, 41.254665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202633, 31.866264, 41.810192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823200, 31.802069, 41.701061>,  <33.595539, 31.763552, 41.635582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823200, 31.802069, 41.701061>,  <34.202633, 31.866264, 41.810192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823200, 31.802069, 41.701061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199789, -0.364954, 0.909337,
		-0.245508, 0.917088, 0.314125,
		-0.948583, -0.160491, -0.272823,
		33.538624, 31.753922, 41.619213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762241, 32.194836, 42.304592>,  <34.202633, 31.866264, 41.810192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762241, 32.194836, 42.304592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564552, 31.899666, 42.120762>,  <33.445938, 31.722563, 42.010464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564552, 31.899666, 42.120762>,  <33.762241, 32.194836, 42.304592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564552, 31.899666, 42.120762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134763, -0.457224, 0.879082,
		-0.858826, 0.496396, 0.126525,
		-0.494223, -0.737928, -0.459572,
		33.416286, 31.678288, 41.982891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142612, 32.048363, 42.693691>,  <33.762241, 32.194836, 42.304592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142612, 32.048363, 42.693691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154613, 31.717201, 42.469666>,  <33.161816, 31.518503, 42.335251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154613, 31.717201, 42.469666>,  <33.142612, 32.048363, 42.693691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154613, 31.717201, 42.469666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404791, -0.522378, 0.750509,
		-0.913917, 0.204192, -0.350802,
		0.030003, -0.827905, -0.560066,
		33.163616, 31.468830, 42.301647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436214, 31.733845, 42.715439>,  <33.142612, 32.048363, 42.693691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436214, 31.733845, 42.715439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682880, 31.441887, 42.597473>,  <32.830879, 31.266712, 42.526695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682880, 31.441887, 42.597473>,  <32.436214, 31.733845, 42.715439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682880, 31.441887, 42.597473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415432, -0.619938, 0.665652,
		-0.668687, -0.287967, -0.685517,
		0.616664, -0.729898, -0.294914,
		32.867882, 31.222918, 42.508999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018291, 31.127836, 42.787560>,  <32.436214, 31.733845, 42.715439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018291, 31.127836, 42.787560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393887, 30.991764, 42.767269>,  <32.619244, 30.910120, 42.755096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393887, 30.991764, 42.767269>,  <32.018291, 31.127836, 42.787560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393887, 30.991764, 42.767269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174059, -0.597202, 0.782977,
		-0.296647, -0.726379, -0.619979,
		0.938991, -0.340181, -0.050725,
		32.675583, 30.889709, 42.752052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955313, 30.404459, 42.937149>,  <32.018291, 31.127836, 42.787560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955313, 30.404459, 42.937149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339108, 30.486088, 43.014858>,  <32.569386, 30.535065, 43.061481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339108, 30.486088, 43.014858>,  <31.955313, 30.404459, 42.937149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339108, 30.486088, 43.014858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058307, -0.530759, 0.845515,
		0.275654, -0.822587, -0.497358,
		0.959487, 0.204070, 0.194269,
		32.626953, 30.547308, 43.073139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311378, 29.756697, 43.245197>,  <31.955313, 30.404459, 42.937149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311378, 29.756697, 43.245197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509789, 30.076405, 43.380917>,  <32.628834, 30.268229, 43.462349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509789, 30.076405, 43.380917>,  <32.311378, 29.756697, 43.245197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509789, 30.076405, 43.380917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187638, -0.480194, 0.856858,
		0.847790, -0.361360, -0.388164,
		0.496028, 0.799270, 0.339299,
		32.658596, 30.316185, 43.482708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788475, 29.398283, 43.566082>,  <32.311378, 29.756697, 43.245197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788475, 29.398283, 43.566082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781101, 29.769384, 43.715179>,  <32.776676, 29.992044, 43.804638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781101, 29.769384, 43.715179>,  <32.788475, 29.398283, 43.566082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781101, 29.769384, 43.715179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304329, -0.349910, 0.885972,
		0.952389, 0.129773, -0.275889,
		-0.018439, 0.927751, 0.372744,
		32.775570, 30.047710, 43.827003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454510, 29.561043, 43.911430>,  <32.788475, 29.398283, 43.566082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454510, 29.561043, 43.911430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173786, 29.803631, 44.060909>,  <33.005352, 29.949184, 44.150597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173786, 29.803631, 44.060909>,  <33.454510, 29.561043, 43.911430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173786, 29.803631, 44.060909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217659, -0.316948, 0.923130,
		0.678296, 0.729202, 0.090434,
		-0.701811, 0.606472, 0.373702,
		32.963242, 29.985573, 44.173019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170654, 29.443624, 44.199787>,  <33.454510, 29.561043, 43.911430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170654, 29.443624, 44.199787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512383, 29.238245, 44.167503>,  <34.717419, 29.115017, 44.148132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512383, 29.238245, 44.167503>,  <34.170654, 29.443624, 44.199787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512383, 29.238245, 44.167503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134530, -0.068445, -0.988543,
		0.502041, 0.855386, -0.127548,
		0.854316, -0.513448, -0.080713,
		34.768677, 29.084211, 44.143288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514839, 29.746849, 43.631004>,  <34.170654, 29.443624, 44.199787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514839, 29.746849, 43.631004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667732, 29.379652, 43.673309>,  <34.759468, 29.159334, 43.698692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667732, 29.379652, 43.673309>,  <34.514839, 29.746849, 43.631004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667732, 29.379652, 43.673309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016118, -0.121064, -0.992514,
		0.923925, 0.377667, -0.061071,
		0.382233, -0.917993, 0.105767,
		34.782402, 29.104254, 43.705040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186295, 29.799099, 43.339729>,  <34.514839, 29.746849, 43.631004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186295, 29.799099, 43.339729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083302, 29.412971, 43.356983>,  <35.021507, 29.181295, 43.367336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083302, 29.412971, 43.356983>,  <35.186295, 29.799099, 43.339729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083302, 29.412971, 43.356983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097339, -0.070323, -0.992764,
		0.961368, -0.251419, 0.112070,
		-0.257480, -0.965320, 0.043133,
		35.006058, 29.123375, 43.369923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741985, 29.475779, 43.034260>,  <35.186295, 29.799099, 43.339729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741985, 29.475779, 43.034260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427959, 29.228600, 43.017235>,  <35.239544, 29.080292, 43.007019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427959, 29.228600, 43.017235>,  <35.741985, 29.475779, 43.034260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427959, 29.228600, 43.017235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228435, -0.224976, -0.947208,
		0.575751, -0.753343, 0.317782,
		-0.785066, -0.617948, -0.042560,
		35.192440, 29.043215, 43.004467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031509, 28.860817, 42.763283>,  <35.741985, 29.475779, 43.034260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031509, 28.860817, 42.763283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637428, 28.843403, 42.696976>,  <35.400978, 28.832954, 42.657192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637428, 28.843403, 42.696976>,  <36.031509, 28.860817, 42.763283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637428, 28.843403, 42.696976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169734, -0.113619, -0.978918,
		0.023784, -0.992570, 0.119327,
		-0.985203, -0.043536, -0.165771,
		35.341866, 28.830341, 42.647243>
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
