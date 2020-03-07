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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.606317, 3.363813, 2.680388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.810390, 3.376041, 3.024197>,  <2.932835, 3.383379, 3.230482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.810390, 3.376041, 3.024197>,  <2.606317, 3.363813, 2.680388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.810390, 3.376041, 3.024197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534459, -0.771716, 0.344686,
		0.673844, -0.635232, -0.377378,
		0.510184, 0.030572, 0.859522,
		2.963446, 3.385213, 3.282053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.902619, 2.630787, 2.780275>,  <2.606317, 3.363813, 2.680388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.902619, 2.630787, 2.780275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.809921, 2.857829, 3.096280>,  <2.754303, 2.994054, 3.285883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.809921, 2.857829, 3.096280>,  <2.902619, 2.630787, 2.780275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.809921, 2.857829, 3.096280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601198, -0.722026, 0.342401,
		0.764758, -0.395605, 0.508568,
		-0.231744, 0.567605, 0.790013,
		2.740398, 3.028111, 3.333284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.046271, 2.333637, 3.410690>,  <2.902619, 2.630787, 2.780275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.046271, 2.333637, 3.410690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.721832, 2.567461, 3.402568>,  <2.527169, 2.707755, 3.397695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.721832, 2.567461, 3.402568>,  <3.046271, 2.333637, 3.410690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.721832, 2.567461, 3.402568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584912, -0.810663, 0.026514,
		-0.000961, 0.033382, 0.999442,
		-0.811096, 0.584560, -0.020304,
		2.478503, 2.742829, 3.396477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.582313, 1.999291, 3.873227>,  <3.046271, 2.333637, 3.410690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.582313, 1.999291, 3.873227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.361908, 2.209029, 3.613551>,  <2.229665, 2.334872, 3.457746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.361908, 2.209029, 3.613551>,  <2.582313, 1.999291, 3.873227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.361908, 2.209029, 3.613551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712652, -0.700424, 0.039152,
		-0.434179, 0.484220, 0.759618,
		-0.551013, 0.524345, -0.649190,
		2.196604, 2.366333, 3.418794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.914443, 2.106613, 4.230084>,  <2.582313, 1.999291, 3.873227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.914443, 2.106613, 4.230084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.865929, 2.149874, 3.835401>,  <1.836820, 2.175830, 3.598591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.865929, 2.149874, 3.835401>,  <1.914443, 2.106613, 4.230084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.865929, 2.149874, 3.835401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772153, -0.634932, 0.025320,
		-0.623754, 0.764961, 0.160518,
		-0.121287, 0.108151, -0.986708,
		1.829543, 2.182319, 3.539388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.217486, 2.203990, 4.154321>,  <1.914443, 2.106613, 4.230084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.217486, 2.203990, 4.154321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.315605, 2.103790, 3.779711>,  <1.374477, 2.043670, 3.554945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.315605, 2.103790, 3.779711>,  <1.217486, 2.203990, 4.154321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.315605, 2.103790, 3.779711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813973, -0.577938, -0.058614,
		-0.526570, 0.776683, -0.345669,
		0.245299, -0.250501, -0.936524,
		1.389195, 2.028640, 3.498754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.623187, 2.171184, 3.822607>,  <1.217486, 2.203990, 4.154321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.623187, 2.171184, 3.822607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.852173, 1.954381, 3.576513>,  <0.989564, 1.824299, 3.428857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.852173, 1.954381, 3.576513>,  <0.623187, 2.171184, 3.822607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.852173, 1.954381, 3.576513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745680, -0.656170, -0.115769,
		-0.340950, 0.525041, -0.779798,
		0.572463, -0.542008, -0.615233,
		1.023912, 1.791778, 3.391943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.239638, 2.064096, 3.216163>,  <0.623187, 2.171184, 3.822607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.239638, 2.064096, 3.216163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.516209, 1.790524, 3.309261>,  <0.682151, 1.626382, 3.365120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.516209, 1.790524, 3.309261>,  <0.239638, 2.064096, 3.216163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.516209, 1.790524, 3.309261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717922, -0.686463, 0.115571,
		0.080729, -0.247003, -0.965646,
		0.691427, -0.683928, 0.232746,
		0.723637, 1.585346, 3.379085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.210095, 0.826226, 3.835500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.030586, 0.570856, 3.585375>,  <0.077119, 0.417634, 3.435299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.030586, 0.570856, 3.585375>,  <-0.210095, 0.826226, 3.835500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.030586, 0.570856, 3.585375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890929, 0.374157, 0.257396,
		0.069638, -0.672623, 0.736702,
		0.448772, -0.638424, -0.625314,
		0.104045, 0.379329, 3.397780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.427849, 0.700781, 4.092575>,  <-0.210095, 0.826226, 3.835500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.427849, 0.700781, 4.092575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.484406, 0.625145, 3.703884>,  <0.518339, 0.579764, 3.470670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.484406, 0.625145, 3.703884>,  <0.427849, 0.700781, 4.092575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.484406, 0.625145, 3.703884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820834, 0.571107, 0.008303,
		0.553390, -0.798801, 0.235960,
		0.141391, -0.189089, -0.971727,
		0.526823, 0.568418, 3.412366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.184010, 0.761933, 4.059305>,  <0.427849, 0.700781, 4.092575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.184010, 0.761933, 4.059305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.996132, 0.822457, 3.711399>,  <0.883405, 0.858772, 3.502655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.996132, 0.822457, 3.711399>,  <1.184010, 0.761933, 4.059305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.996132, 0.822457, 3.711399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698918, 0.665627, -0.261636,
		0.539352, -0.730784, -0.418395,
		-0.469694, 0.151310, -0.869766,
		0.855224, 0.867850, 3.450469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.688746, 0.699771, 3.442863>,  <1.184010, 0.761933, 4.059305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.688746, 0.699771, 3.442863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.378502, 0.948562, 3.399830>,  <1.192356, 1.097836, 3.374010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.378502, 0.948562, 3.399830>,  <1.688746, 0.699771, 3.442863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.378502, 0.948562, 3.399830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626523, 0.737843, -0.251112,
		-0.076806, -0.262169, -0.961961,
		-0.775609, 0.621977, -0.107584,
		1.145819, 1.135155, 3.367555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.831240, 0.954587, 2.874265>,  <1.688746, 0.699771, 3.442863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.831240, 0.954587, 2.874265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.568390, 1.219687, 3.017902>,  <1.410680, 1.378748, 3.104085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.568390, 1.219687, 3.017902>,  <1.831240, 0.954587, 2.874265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.568390, 1.219687, 3.017902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609568, 0.747464, -0.264053,
		-0.443411, 0.045377, -0.895169,
		-0.657125, 0.662751, 0.359094,
		1.371253, 1.418513, 3.125631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.691813, 1.457694, 2.334783>,  <1.831240, 0.954587, 2.874265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.691813, 1.457694, 2.334783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.635727, 1.631363, 2.690723>,  <1.602075, 1.735564, 2.904287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.635727, 1.631363, 2.690723>,  <1.691813, 1.457694, 2.334783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.635727, 1.631363, 2.690723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543813, 0.784807, -0.297231,
		-0.827410, 0.442235, -0.346151,
		-0.140216, 0.434173, 0.889850,
		1.593662, 1.761615, 2.957679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.674172, 2.240478, 2.200819>,  <1.691813, 1.457694, 2.334783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.674172, 2.240478, 2.200819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.730171, 2.230189, 2.596746>,  <1.763770, 2.224016, 2.834303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.730171, 2.230189, 2.596746>,  <1.674172, 2.240478, 2.200819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.730171, 2.230189, 2.596746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551369, 0.832356, -0.056353,
		-0.822431, 0.553644, 0.130709,
		0.139997, -0.025722, 0.989818,
		1.772170, 2.222472, 2.893692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.547638, 2.886190, 2.403680>,  <1.674172, 2.240478, 2.200819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.547638, 2.886190, 2.403680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.778252, 2.721208, 2.685812>,  <1.916620, 2.622218, 2.855091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.778252, 2.721208, 2.685812>,  <1.547638, 2.886190, 2.403680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778252, 2.721208, 2.685812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570816, 0.820967, 0.013494,
		-0.584618, 0.394834, 0.708752,
		0.576534, -0.412455, 0.705329,
		1.951212, 2.597471, 2.897411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
